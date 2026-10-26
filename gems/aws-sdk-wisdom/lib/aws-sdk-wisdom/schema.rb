# frozen_string_literal: true

# This is generated code!

module Aws::Wisdom
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AppIntegrationsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#AppIntegrationsConfiguration", name: "AppIntegrationsConfiguration")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#Arn", name: "Arn", traits: {"smithy.api#pattern" => "^arn:[a-z-]*?:wisdom:[a-z0-9-]*?:[0-9]{12}:[a-z-]*?/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(?:/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})?$"})
    AssistantAssociationData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#AssistantAssociationData", name: "AssistantAssociationData", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.wisdom#AssistantAssociation"}]})
    AssistantAssociationInputData = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.wisdom#AssistantAssociationInputData", name: "AssistantAssociationInputData")
    AssistantAssociationOutputData = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.wisdom#AssistantAssociationOutputData", name: "AssistantAssociationOutputData")
    AssistantAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#AssistantAssociationSummary", name: "AssistantAssociationSummary", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.wisdom#AssistantAssociation"}]})
    AssistantAssociationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wisdom#AssistantAssociationSummaryList", name: "AssistantAssociationSummaryList")
    AssistantData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#AssistantData", name: "AssistantData")
    AssistantIntegrationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#AssistantIntegrationConfiguration", name: "AssistantIntegrationConfiguration")
    AssistantList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wisdom#AssistantList", name: "AssistantList")
    AssistantStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#AssistantStatus", name: "AssistantStatus", traits: {"smithy.api#enum" => [{"value" => "CREATE_IN_PROGRESS", "name" => "CREATE_IN_PROGRESS"}, {"value" => "CREATE_FAILED", "name" => "CREATE_FAILED"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETE_IN_PROGRESS", "name" => "DELETE_IN_PROGRESS"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}]})
    AssistantSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#AssistantSummary", name: "AssistantSummary")
    AssistantType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#AssistantType", name: "AssistantType", traits: {"smithy.api#enum" => [{"value" => "AGENT", "name" => "AGENT"}]})
    AssociationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#AssociationType", name: "AssociationType", traits: {"smithy.api#enum" => [{"value" => "KNOWLEDGE_BASE", "name" => "KNOWLEDGE_BASE"}]})
    Channel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#Channel", name: "Channel", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#sensitive" => {}})
    Channels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wisdom#Channels", name: "Channels", traits: {"smithy.api#uniqueItems" => {}})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    Configuration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.wisdom#Configuration", name: "Configuration")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#ConnectConfiguration", name: "ConnectConfiguration")
    ContactAttributeKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#ContactAttributeKey", name: "ContactAttributeKey")
    ContactAttributeKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wisdom#ContactAttributeKeys", name: "ContactAttributeKeys", traits: {"smithy.api#sensitive" => {}, "smithy.api#uniqueItems" => {}})
    ContactAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#ContactAttributeValue", name: "ContactAttributeValue")
    ContactAttributes = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.wisdom#ContactAttributes", name: "ContactAttributes", traits: {"smithy.api#sensitive" => {}})
    ContentData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#ContentData", name: "ContentData", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.wisdom#Content"}, {"resource" => "com.amazonaws.wisdom#KnowledgeBase"}]})
    ContentMetadata = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.wisdom#ContentMetadata", name: "ContentMetadata", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ContentReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#ContentReference", name: "ContentReference")
    ContentStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#ContentStatus", name: "ContentStatus", traits: {"smithy.api#enum" => [{"value" => "CREATE_IN_PROGRESS", "name" => "CREATE_IN_PROGRESS"}, {"value" => "CREATE_FAILED", "name" => "CREATE_FAILED"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETE_IN_PROGRESS", "name" => "DELETE_IN_PROGRESS"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}, {"value" => "UPDATE_FAILED", "name" => "UPDATE_FAILED"}]})
    ContentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#ContentSummary", name: "ContentSummary", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.wisdom#Content"}, {"resource" => "com.amazonaws.wisdom#KnowledgeBase"}]})
    ContentSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wisdom#ContentSummaryList", name: "ContentSummaryList")
    ContentTitle = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#ContentTitle", name: "ContentTitle", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ContentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#ContentType", name: "ContentType", traits: {"smithy.api#pattern" => "^(text/(plain|html|csv))|(application/(pdf|vnd\\.openxmlformats-officedocument\\.wordprocessingml\\.document))|(application/x\\.wisdom-json;source=(salesforce|servicenow|zendesk))$"})
    CreateAssistantAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#CreateAssistantAssociationInput", name: "CreateAssistantAssociationInput")
    CreateAssistantAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#CreateAssistantAssociationOutput", name: "CreateAssistantAssociationOutput")
    CreateAssistantInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#CreateAssistantInput", name: "CreateAssistantInput")
    CreateAssistantOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#CreateAssistantOutput", name: "CreateAssistantOutput")
    CreateContentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#CreateContentInput", name: "CreateContentInput")
    CreateContentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#CreateContentOutput", name: "CreateContentOutput")
    CreateKnowledgeBaseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#CreateKnowledgeBaseInput", name: "CreateKnowledgeBaseInput")
    CreateKnowledgeBaseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#CreateKnowledgeBaseOutput", name: "CreateKnowledgeBaseOutput")
    CreateQuickResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#CreateQuickResponseRequest", name: "CreateQuickResponseRequest")
    CreateQuickResponseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#CreateQuickResponseResponse", name: "CreateQuickResponseResponse")
    CreateSessionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#CreateSessionInput", name: "CreateSessionInput")
    CreateSessionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#CreateSessionOutput", name: "CreateSessionOutput")
    DeleteAssistantAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#DeleteAssistantAssociationInput", name: "DeleteAssistantAssociationInput")
    DeleteAssistantAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#DeleteAssistantAssociationOutput", name: "DeleteAssistantAssociationOutput")
    DeleteAssistantInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#DeleteAssistantInput", name: "DeleteAssistantInput")
    DeleteAssistantOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#DeleteAssistantOutput", name: "DeleteAssistantOutput")
    DeleteContentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#DeleteContentInput", name: "DeleteContentInput")
    DeleteContentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#DeleteContentOutput", name: "DeleteContentOutput")
    DeleteImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#DeleteImportJobRequest", name: "DeleteImportJobRequest")
    DeleteImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#DeleteImportJobResponse", name: "DeleteImportJobResponse")
    DeleteKnowledgeBaseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#DeleteKnowledgeBaseInput", name: "DeleteKnowledgeBaseInput")
    DeleteKnowledgeBaseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#DeleteKnowledgeBaseOutput", name: "DeleteKnowledgeBaseOutput")
    DeleteQuickResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#DeleteQuickResponseRequest", name: "DeleteQuickResponseRequest")
    DeleteQuickResponseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#DeleteQuickResponseResponse", name: "DeleteQuickResponseResponse")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s_.,-]+"})
    Document = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#Document", name: "Document")
    DocumentText = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#DocumentText", name: "DocumentText")
    ExternalSource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#ExternalSource", name: "ExternalSource", traits: {"smithy.api#enum" => [{"value" => "AMAZON_CONNECT", "name" => "AMAZON_CONNECT"}]})
    ExternalSourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#ExternalSourceConfiguration", name: "ExternalSourceConfiguration")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#Filter", name: "Filter")
    FilterField = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#FilterField", name: "FilterField", traits: {"smithy.api#enum" => [{"value" => "NAME", "name" => "NAME"}]})
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wisdom#FilterList", name: "FilterList")
    FilterOperator = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#FilterOperator", name: "FilterOperator", traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS"}]})
    GenericArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#GenericArn", name: "GenericArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z-]+?:[a-z-]+?:[a-z0-9-]*?:([0-9]{12})?:[a-zA-Z0-9-:/]+$"})
    GetAssistantAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#GetAssistantAssociationInput", name: "GetAssistantAssociationInput")
    GetAssistantAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#GetAssistantAssociationOutput", name: "GetAssistantAssociationOutput")
    GetAssistantInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#GetAssistantInput", name: "GetAssistantInput")
    GetAssistantOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#GetAssistantOutput", name: "GetAssistantOutput")
    GetContentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#GetContentInput", name: "GetContentInput")
    GetContentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#GetContentOutput", name: "GetContentOutput")
    GetContentSummaryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#GetContentSummaryInput", name: "GetContentSummaryInput")
    GetContentSummaryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#GetContentSummaryOutput", name: "GetContentSummaryOutput")
    GetImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#GetImportJobRequest", name: "GetImportJobRequest")
    GetImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#GetImportJobResponse", name: "GetImportJobResponse")
    GetKnowledgeBaseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#GetKnowledgeBaseInput", name: "GetKnowledgeBaseInput")
    GetKnowledgeBaseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#GetKnowledgeBaseOutput", name: "GetKnowledgeBaseOutput")
    GetQuickResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#GetQuickResponseRequest", name: "GetQuickResponseRequest")
    GetQuickResponseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#GetQuickResponseResponse", name: "GetQuickResponseResponse")
    GetRecommendationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#GetRecommendationsInput", name: "GetRecommendationsInput")
    GetRecommendationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#GetRecommendationsOutput", name: "GetRecommendationsOutput")
    GetSessionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#GetSessionInput", name: "GetSessionInput")
    GetSessionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#GetSessionOutput", name: "GetSessionOutput")
    GroupingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#GroupingConfiguration", name: "GroupingConfiguration")
    GroupingCriteria = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#GroupingCriteria", name: "GroupingCriteria", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#sensitive" => {}})
    GroupingValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#GroupingValue", name: "GroupingValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    GroupingValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wisdom#GroupingValues", name: "GroupingValues", traits: {"smithy.api#uniqueItems" => {}})
    Headers = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.wisdom#Headers", name: "Headers")
    Highlight = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#Highlight", name: "Highlight")
    HighlightOffset = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wisdom#HighlightOffset", name: "HighlightOffset", traits: {"smithy.api#default" => 0})
    Highlights = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wisdom#Highlights", name: "Highlights")
    ImportJobData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#ImportJobData", name: "ImportJobData")
    ImportJobList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wisdom#ImportJobList", name: "ImportJobList")
    ImportJobStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#ImportJobStatus", name: "ImportJobStatus", traits: {"smithy.api#enum" => [{"value" => "START_IN_PROGRESS", "name" => "START_IN_PROGRESS"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "COMPLETE", "name" => "COMPLETE"}, {"value" => "DELETE_IN_PROGRESS", "name" => "DELETE_IN_PROGRESS"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}]})
    ImportJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#ImportJobSummary", name: "ImportJobSummary")
    ImportJobType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#ImportJobType", name: "ImportJobType", traits: {"smithy.api#enum" => [{"value" => "QUICK_RESPONSES", "name" => "QUICK_RESPONSES"}]})
    KnowledgeBaseAssociationData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#KnowledgeBaseAssociationData", name: "KnowledgeBaseAssociationData")
    KnowledgeBaseData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#KnowledgeBaseData", name: "KnowledgeBaseData", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.wisdom#KnowledgeBase"}]})
    KnowledgeBaseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wisdom#KnowledgeBaseList", name: "KnowledgeBaseList")
    KnowledgeBaseStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#KnowledgeBaseStatus", name: "KnowledgeBaseStatus", traits: {"smithy.api#enum" => [{"value" => "CREATE_IN_PROGRESS", "name" => "CREATE_IN_PROGRESS"}, {"value" => "CREATE_FAILED", "name" => "CREATE_FAILED"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETE_IN_PROGRESS", "name" => "DELETE_IN_PROGRESS"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}]})
    KnowledgeBaseSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#KnowledgeBaseSummary", name: "KnowledgeBaseSummary", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.wisdom#KnowledgeBase"}]})
    KnowledgeBaseType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#KnowledgeBaseType", name: "KnowledgeBaseType", traits: {"smithy.api#enum" => [{"value" => "EXTERNAL", "name" => "EXTERNAL"}, {"value" => "CUSTOM", "name" => "CUSTOM"}, {"value" => "QUICK_RESPONSES", "name" => "QUICK_RESPONSES"}]})
    LanguageCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#LanguageCode", name: "LanguageCode", traits: {"smithy.api#length" => {"min" => 2, "max" => 5}})
    ListAssistantAssociationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#ListAssistantAssociationsInput", name: "ListAssistantAssociationsInput")
    ListAssistantAssociationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#ListAssistantAssociationsOutput", name: "ListAssistantAssociationsOutput")
    ListAssistantsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#ListAssistantsInput", name: "ListAssistantsInput")
    ListAssistantsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#ListAssistantsOutput", name: "ListAssistantsOutput")
    ListContentsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#ListContentsInput", name: "ListContentsInput")
    ListContentsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#ListContentsOutput", name: "ListContentsOutput")
    ListImportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#ListImportJobsRequest", name: "ListImportJobsRequest")
    ListImportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#ListImportJobsResponse", name: "ListImportJobsResponse")
    ListKnowledgeBasesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#ListKnowledgeBasesInput", name: "ListKnowledgeBasesInput")
    ListKnowledgeBasesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#ListKnowledgeBasesOutput", name: "ListKnowledgeBasesOutput")
    ListQuickResponsesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#ListQuickResponsesRequest", name: "ListQuickResponsesRequest")
    ListQuickResponsesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#ListQuickResponsesResponse", name: "ListQuickResponsesResponse")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wisdom#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#Name", name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s_.,-]+"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#NonEmptyString", name: "NonEmptyString", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    NotifyRecommendationsReceivedError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#NotifyRecommendationsReceivedError", name: "NotifyRecommendationsReceivedError")
    NotifyRecommendationsReceivedErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wisdom#NotifyRecommendationsReceivedErrorList", name: "NotifyRecommendationsReceivedErrorList")
    NotifyRecommendationsReceivedErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#NotifyRecommendationsReceivedErrorMessage", name: "NotifyRecommendationsReceivedErrorMessage")
    NotifyRecommendationsReceivedInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#NotifyRecommendationsReceivedInput", name: "NotifyRecommendationsReceivedInput")
    NotifyRecommendationsReceivedOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#NotifyRecommendationsReceivedOutput", name: "NotifyRecommendationsReceivedOutput")
    ObjectFieldsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wisdom#ObjectFieldsList", name: "ObjectFieldsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Order = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#Order", name: "Order", traits: {"smithy.api#enum" => [{"value" => "ASC", "name" => "ASC"}, {"value" => "DESC", "name" => "DESC"}]})
    PreconditionFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#PreconditionFailedException", name: "PreconditionFailedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 412})
    Priority = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#Priority", name: "Priority", traits: {"smithy.api#enum" => [{"value" => "HIGH", "name" => "HIGH"}, {"value" => "MEDIUM", "name" => "MEDIUM"}, {"value" => "LOW", "name" => "LOW"}]})
    QueryAssistantInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#QueryAssistantInput", name: "QueryAssistantInput")
    QueryAssistantOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#QueryAssistantOutput", name: "QueryAssistantOutput")
    QueryRecommendationTriggerData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#QueryRecommendationTriggerData", name: "QueryRecommendationTriggerData")
    QueryResultsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wisdom#QueryResultsList", name: "QueryResultsList")
    QueryText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#QueryText", name: "QueryText", traits: {"smithy.api#sensitive" => {}})
    QuickResponseContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#QuickResponseContent", name: "QuickResponseContent", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#sensitive" => {}})
    QuickResponseContentProvider = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.wisdom#QuickResponseContentProvider", name: "QuickResponseContentProvider")
    QuickResponseContents = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#QuickResponseContents", name: "QuickResponseContents")
    QuickResponseData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#QuickResponseData", name: "QuickResponseData", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.wisdom#QuickResponse"}, {"resource" => "com.amazonaws.wisdom#KnowledgeBase"}]})
    QuickResponseDataProvider = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.wisdom#QuickResponseDataProvider", name: "QuickResponseDataProvider")
    QuickResponseDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#QuickResponseDescription", name: "QuickResponseDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    QuickResponseFilterField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#QuickResponseFilterField", name: "QuickResponseFilterField")
    QuickResponseFilterFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wisdom#QuickResponseFilterFieldList", name: "QuickResponseFilterFieldList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    QuickResponseFilterOperator = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#QuickResponseFilterOperator", name: "QuickResponseFilterOperator", traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS"}, {"value" => "PREFIX", "name" => "PREFIX"}]})
    QuickResponseFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#QuickResponseFilterValue", name: "QuickResponseFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    QuickResponseFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wisdom#QuickResponseFilterValueList", name: "QuickResponseFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#uniqueItems" => {}})
    QuickResponseName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#QuickResponseName", name: "QuickResponseName", traits: {"smithy.api#length" => {"min" => 1, "max" => 40}})
    QuickResponseOrderField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#QuickResponseOrderField", name: "QuickResponseOrderField")
    QuickResponseQueryField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#QuickResponseQueryField", name: "QuickResponseQueryField")
    QuickResponseQueryFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wisdom#QuickResponseQueryFieldList", name: "QuickResponseQueryFieldList", traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    QuickResponseQueryOperator = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#QuickResponseQueryOperator", name: "QuickResponseQueryOperator", traits: {"smithy.api#enum" => [{"value" => "CONTAINS", "name" => "CONTAINS"}, {"value" => "CONTAINS_AND_PREFIX", "name" => "CONTAINS_AND_PREFIX"}]})
    QuickResponseQueryValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#QuickResponseQueryValue", name: "QuickResponseQueryValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    QuickResponseQueryValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wisdom#QuickResponseQueryValueList", name: "QuickResponseQueryValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#uniqueItems" => {}})
    QuickResponseSearchExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#QuickResponseSearchExpression", name: "QuickResponseSearchExpression")
    QuickResponseSearchResultData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#QuickResponseSearchResultData", name: "QuickResponseSearchResultData", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.wisdom#QuickResponse"}, {"resource" => "com.amazonaws.wisdom#KnowledgeBase"}]})
    QuickResponseSearchResultsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wisdom#QuickResponseSearchResultsList", name: "QuickResponseSearchResultsList")
    QuickResponseStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#QuickResponseStatus", name: "QuickResponseStatus", traits: {"smithy.api#enum" => [{"value" => "CREATE_IN_PROGRESS", "name" => "CREATE_IN_PROGRESS"}, {"value" => "CREATE_FAILED", "name" => "CREATE_FAILED"}, {"value" => "CREATED", "name" => "CREATED"}, {"value" => "DELETE_IN_PROGRESS", "name" => "DELETE_IN_PROGRESS"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}, {"value" => "UPDATE_IN_PROGRESS", "name" => "UPDATE_IN_PROGRESS"}, {"value" => "UPDATE_FAILED", "name" => "UPDATE_FAILED"}]})
    QuickResponseSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#QuickResponseSummary", name: "QuickResponseSummary", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.wisdom#QuickResponse"}, {"resource" => "com.amazonaws.wisdom#KnowledgeBase"}]})
    QuickResponseSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wisdom#QuickResponseSummaryList", name: "QuickResponseSummaryList")
    QuickResponseType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#QuickResponseType", name: "QuickResponseType", traits: {"smithy.api#pattern" => "^(application/x\\.quickresponse;format=(plain|markdown))$"})
    RecommendationData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#RecommendationData", name: "RecommendationData")
    RecommendationIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wisdom#RecommendationIdList", name: "RecommendationIdList", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    RecommendationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wisdom#RecommendationList", name: "RecommendationList")
    RecommendationSourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#RecommendationSourceType", name: "RecommendationSourceType", traits: {"smithy.api#enum" => [{"value" => "ISSUE_DETECTION", "name" => "ISSUE_DETECTION"}, {"value" => "RULE_EVALUATION", "name" => "RULE_EVALUATION"}, {"value" => "OTHER", "name" => "OTHER"}]})
    RecommendationTrigger = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#RecommendationTrigger", name: "RecommendationTrigger")
    RecommendationTriggerData = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.wisdom#RecommendationTriggerData", name: "RecommendationTriggerData")
    RecommendationTriggerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wisdom#RecommendationTriggerList", name: "RecommendationTriggerList")
    RecommendationTriggerType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#RecommendationTriggerType", name: "RecommendationTriggerType", traits: {"smithy.api#enum" => [{"value" => "QUERY", "name" => "QUERY"}]})
    RecommendationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#RecommendationType", name: "RecommendationType", traits: {"smithy.api#enum" => [{"value" => "KNOWLEDGE_CONTENT", "name" => "KNOWLEDGE_CONTENT"}]})
    RelevanceLevel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#RelevanceLevel", name: "RelevanceLevel", traits: {"smithy.api#enum" => [{"value" => "HIGH", "name" => "HIGH"}, {"value" => "MEDIUM", "name" => "MEDIUM"}, {"value" => "LOW", "name" => "LOW"}]})
    RelevanceScore = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.wisdom#RelevanceScore", name: "RelevanceScore", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0.0}})
    RemoveKnowledgeBaseTemplateUriInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#RemoveKnowledgeBaseTemplateUriInput", name: "RemoveKnowledgeBaseTemplateUriInput")
    RemoveKnowledgeBaseTemplateUriOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#RemoveKnowledgeBaseTemplateUriOutput", name: "RemoveKnowledgeBaseTemplateUriOutput")
    RenderingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#RenderingConfiguration", name: "RenderingConfiguration")
    RequestTimeoutException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#RequestTimeoutException", name: "RequestTimeoutException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 408, "smithy.api#retryable" => {}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResultData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#ResultData", name: "ResultData")
    SearchContentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#SearchContentInput", name: "SearchContentInput")
    SearchContentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#SearchContentOutput", name: "SearchContentOutput")
    SearchExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#SearchExpression", name: "SearchExpression")
    SearchQuickResponsesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#SearchQuickResponsesRequest", name: "SearchQuickResponsesRequest")
    SearchQuickResponsesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#SearchQuickResponsesResponse", name: "SearchQuickResponsesResponse")
    SearchSessionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#SearchSessionsInput", name: "SearchSessionsInput")
    SearchSessionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#SearchSessionsOutput", name: "SearchSessionsOutput")
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#SensitiveString", name: "SensitiveString", traits: {"smithy.api#sensitive" => {}})
    ServerSideEncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#ServerSideEncryptionConfiguration", name: "ServerSideEncryptionConfiguration")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SessionData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#SessionData", name: "SessionData")
    SessionIntegrationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#SessionIntegrationConfiguration", name: "SessionIntegrationConfiguration")
    SessionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wisdom#SessionSummaries", name: "SessionSummaries")
    SessionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#SessionSummary", name: "SessionSummary")
    ShortCutKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#ShortCutKey", name: "ShortCutKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SourceConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.wisdom#SourceConfiguration", name: "SourceConfiguration")
    StartContentUploadInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#StartContentUploadInput", name: "StartContentUploadInput")
    StartContentUploadOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#StartContentUploadOutput", name: "StartContentUploadOutput")
    StartImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#StartImportJobRequest", name: "StartImportJobRequest")
    StartImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#StartImportJobResponse", name: "StartImportJobResponse")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wisdom#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.wisdom#Tags", name: "Tags")
    TimeToLive = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wisdom#TimeToLive", name: "TimeToLive", traits: {"smithy.api#range" => {"min" => 1, "max" => 60}})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateContentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#UpdateContentInput", name: "UpdateContentInput")
    UpdateContentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#UpdateContentOutput", name: "UpdateContentOutput")
    UpdateKnowledgeBaseTemplateUriInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#UpdateKnowledgeBaseTemplateUriInput", name: "UpdateKnowledgeBaseTemplateUriInput")
    UpdateKnowledgeBaseTemplateUriOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#UpdateKnowledgeBaseTemplateUriOutput", name: "UpdateKnowledgeBaseTemplateUriOutput")
    UpdateQuickResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#UpdateQuickResponseRequest", name: "UpdateQuickResponseRequest")
    UpdateQuickResponseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#UpdateQuickResponseResponse", name: "UpdateQuickResponseResponse")
    UploadId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#UploadId", name: "UploadId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1200}})
    Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#Uri", name: "Uri", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#Url", name: "Url", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#sensitive" => {}})
    Uuid = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#Uuid", name: "Uuid", traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    UuidOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wisdom#UuidOrArn", name: "UuidOrArn", traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$|^arn:[a-z-]*?:wisdom:[a-z0-9-]*?:[0-9]{12}:[a-z-]*?/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(?:/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})?$"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wisdom#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WaitTimeSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wisdom#WaitTimeSeconds", name: "WaitTimeSeconds", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 20}})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AppIntegrationsConfiguration.add_member(:app_integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericArn, name: "appIntegrationArn", traits: {"smithy.api#required" => {}}))
    AppIntegrationsConfiguration.add_member(:object_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectFieldsList, name: "objectFields"))
    AppIntegrationsConfiguration.type = Types::AppIntegrationsConfiguration
    AssistantAssociationData.add_member(:assistant_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assistantAssociationId", traits: {"smithy.api#required" => {}}))
    AssistantAssociationData.add_member(:assistant_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assistantAssociationArn", traits: {"smithy.api#required" => {}}))
    AssistantAssociationData.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assistantId", traits: {"smithy.api#required" => {}}))
    AssistantAssociationData.add_member(:assistant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assistantArn", traits: {"smithy.api#required" => {}}))
    AssistantAssociationData.add_member(:association_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationType, name: "associationType", traits: {"smithy.api#required" => {}}))
    AssistantAssociationData.add_member(:association_data, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantAssociationOutputData, name: "associationData", traits: {"smithy.api#required" => {}}))
    AssistantAssociationData.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    AssistantAssociationData.type = Types::AssistantAssociationData
    AssistantAssociationInputData.add_member(:knowledge_base_id, Types::AssistantAssociationInputData::KnowledgeBaseId, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId"))
    AssistantAssociationInputData.add_member(:unknown, Types::AssistantAssociationInputData::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AssistantAssociationInputData.type = Types::AssistantAssociationInputData
    AssistantAssociationOutputData.add_member(:knowledge_base_association, Types::AssistantAssociationOutputData::KnowledgeBaseAssociation, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseAssociationData, name: "knowledgeBaseAssociation"))
    AssistantAssociationOutputData.add_member(:unknown, Types::AssistantAssociationOutputData::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AssistantAssociationOutputData.type = Types::AssistantAssociationOutputData
    AssistantAssociationSummary.add_member(:assistant_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assistantAssociationId", traits: {"smithy.api#required" => {}}))
    AssistantAssociationSummary.add_member(:assistant_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assistantAssociationArn", traits: {"smithy.api#required" => {}}))
    AssistantAssociationSummary.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assistantId", traits: {"smithy.api#required" => {}}))
    AssistantAssociationSummary.add_member(:assistant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assistantArn", traits: {"smithy.api#required" => {}}))
    AssistantAssociationSummary.add_member(:association_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationType, name: "associationType", traits: {"smithy.api#required" => {}}))
    AssistantAssociationSummary.add_member(:association_data, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantAssociationOutputData, name: "associationData", traits: {"smithy.api#required" => {}}))
    AssistantAssociationSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    AssistantAssociationSummary.type = Types::AssistantAssociationSummary
    AssistantAssociationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantAssociationSummary, name: "member"))
    AssistantData.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assistantId", traits: {"smithy.api#required" => {}}))
    AssistantData.add_member(:assistant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assistantArn", traits: {"smithy.api#required" => {}}))
    AssistantData.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    AssistantData.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantType, name: "type", traits: {"smithy.api#required" => {}}))
    AssistantData.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantStatus, name: "status", traits: {"smithy.api#required" => {}}))
    AssistantData.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    AssistantData.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    AssistantData.add_member(:server_side_encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryptionConfiguration, name: "serverSideEncryptionConfiguration"))
    AssistantData.add_member(:integration_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantIntegrationConfiguration, name: "integrationConfiguration"))
    AssistantData.type = Types::AssistantData
    AssistantIntegrationConfiguration.add_member(:topic_integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericArn, name: "topicIntegrationArn"))
    AssistantIntegrationConfiguration.type = Types::AssistantIntegrationConfiguration
    AssistantList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantSummary, name: "member"))
    AssistantSummary.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assistantId", traits: {"smithy.api#required" => {}}))
    AssistantSummary.add_member(:assistant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assistantArn", traits: {"smithy.api#required" => {}}))
    AssistantSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    AssistantSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantType, name: "type", traits: {"smithy.api#required" => {}}))
    AssistantSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantStatus, name: "status", traits: {"smithy.api#required" => {}}))
    AssistantSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    AssistantSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    AssistantSummary.add_member(:server_side_encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryptionConfiguration, name: "serverSideEncryptionConfiguration"))
    AssistantSummary.add_member(:integration_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantIntegrationConfiguration, name: "integrationConfiguration"))
    AssistantSummary.type = Types::AssistantSummary
    Channels.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Channel, name: "member"))
    Configuration.add_member(:connect_configuration, Types::Configuration::ConnectConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectConfiguration, name: "connectConfiguration"))
    Configuration.add_member(:unknown, Types::Configuration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Configuration.type = Types::Configuration
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ConflictException.type = Types::ConflictException
    ConnectConfiguration.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "instanceId"))
    ConnectConfiguration.type = Types::ConnectConfiguration
    ContactAttributeKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactAttributeKey, name: "member"))
    ContactAttributes.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactAttributeKey, name: "key"))
    ContactAttributes.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactAttributeValue, name: "value"))
    ContentData.add_member(:content_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "contentArn", traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:content_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "contentId", traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "knowledgeBaseArn", traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "revisionId", traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentTitle, name: "title", traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, name: "contentType", traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMetadata, name: "metadata", traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    ContentData.add_member(:link_out_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "linkOutUri"))
    ContentData.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "url", traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:url_expiry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "urlExpiry", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ContentData.type = Types::ContentData
    ContentMetadata.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "key"))
    ContentMetadata.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "value"))
    ContentReference.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "knowledgeBaseArn"))
    ContentReference.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId"))
    ContentReference.add_member(:content_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "contentArn"))
    ContentReference.add_member(:content_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "contentId"))
    ContentReference.type = Types::ContentReference
    ContentSummary.add_member(:content_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "contentArn", traits: {"smithy.api#required" => {}}))
    ContentSummary.add_member(:content_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "contentId", traits: {"smithy.api#required" => {}}))
    ContentSummary.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "knowledgeBaseArn", traits: {"smithy.api#required" => {}}))
    ContentSummary.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    ContentSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    ContentSummary.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "revisionId", traits: {"smithy.api#required" => {}}))
    ContentSummary.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentTitle, name: "title", traits: {"smithy.api#required" => {}}))
    ContentSummary.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, name: "contentType", traits: {"smithy.api#required" => {}}))
    ContentSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ContentSummary.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMetadata, name: "metadata", traits: {"smithy.api#required" => {}}))
    ContentSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    ContentSummary.type = Types::ContentSummary
    ContentSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentSummary, name: "member"))
    CreateAssistantAssociationInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAssistantAssociationInput.add_member(:association_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationType, name: "associationType", traits: {"smithy.api#required" => {}}))
    CreateAssistantAssociationInput.add_member(:association, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantAssociationInputData, name: "association", traits: {"smithy.api#required" => {}}))
    CreateAssistantAssociationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAssistantAssociationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateAssistantAssociationInput.type = Types::CreateAssistantAssociationInput
    CreateAssistantAssociationOutput.add_member(:assistant_association, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantAssociationData, name: "assistantAssociation"))
    CreateAssistantAssociationOutput.type = Types::CreateAssistantAssociationOutput
    CreateAssistantInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAssistantInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    CreateAssistantInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantType, name: "type", traits: {"smithy.api#required" => {}}))
    CreateAssistantInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateAssistantInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateAssistantInput.add_member(:server_side_encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryptionConfiguration, name: "serverSideEncryptionConfiguration"))
    CreateAssistantInput.type = Types::CreateAssistantInput
    CreateAssistantOutput.add_member(:assistant, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantData, name: "assistant"))
    CreateAssistantOutput.type = Types::CreateAssistantOutput
    CreateContentInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateContentInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    CreateContentInput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentTitle, name: "title"))
    CreateContentInput.add_member(:override_link_out_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "overrideLinkOutUri"))
    CreateContentInput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMetadata, name: "metadata"))
    CreateContentInput.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, name: "uploadId", traits: {"smithy.api#required" => {}}))
    CreateContentInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateContentInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateContentInput.type = Types::CreateContentInput
    CreateContentOutput.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentData, name: "content"))
    CreateContentOutput.type = Types::CreateContentOutput
    CreateKnowledgeBaseInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateKnowledgeBaseInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    CreateKnowledgeBaseInput.add_member(:knowledge_base_type, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseType, name: "knowledgeBaseType", traits: {"smithy.api#required" => {}}))
    CreateKnowledgeBaseInput.add_member(:source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConfiguration, name: "sourceConfiguration"))
    CreateKnowledgeBaseInput.add_member(:rendering_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RenderingConfiguration, name: "renderingConfiguration"))
    CreateKnowledgeBaseInput.add_member(:server_side_encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryptionConfiguration, name: "serverSideEncryptionConfiguration"))
    CreateKnowledgeBaseInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateKnowledgeBaseInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateKnowledgeBaseInput.type = Types::CreateKnowledgeBaseInput
    CreateKnowledgeBaseOutput.add_member(:knowledge_base, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseData, name: "knowledgeBase"))
    CreateKnowledgeBaseOutput.type = Types::CreateKnowledgeBaseOutput
    CreateQuickResponseRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateQuickResponseRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateQuickResponseRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseDataProvider, name: "content", traits: {"smithy.api#required" => {}}))
    CreateQuickResponseRequest.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseType, name: "contentType"))
    CreateQuickResponseRequest.add_member(:grouping_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingConfiguration, name: "groupingConfiguration"))
    CreateQuickResponseRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseDescription, name: "description"))
    CreateQuickResponseRequest.add_member(:shortcut_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ShortCutKey, name: "shortcutKey"))
    CreateQuickResponseRequest.add_member(:is_active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isActive"))
    CreateQuickResponseRequest.add_member(:channels, ::Smithy::Schema::Shapes::MemberShape.new(target: Channels, name: "channels"))
    CreateQuickResponseRequest.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "language"))
    CreateQuickResponseRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateQuickResponseRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateQuickResponseRequest.type = Types::CreateQuickResponseRequest
    CreateQuickResponseResponse.add_member(:quick_response, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseData, name: "quickResponse"))
    CreateQuickResponseResponse.type = Types::CreateQuickResponseResponse
    CreateSessionInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateSessionInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSessionInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    CreateSessionInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateSessionInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateSessionInput.type = Types::CreateSessionInput
    CreateSessionOutput.add_member(:session, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionData, name: "session"))
    CreateSessionOutput.type = Types::CreateSessionOutput
    DeleteAssistantAssociationInput.add_member(:assistant_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantAssociationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssistantAssociationInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssistantAssociationInput.type = Types::DeleteAssistantAssociationInput
    DeleteAssistantAssociationOutput.type = Types::DeleteAssistantAssociationOutput
    DeleteAssistantInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssistantInput.type = Types::DeleteAssistantInput
    DeleteAssistantOutput.type = Types::DeleteAssistantOutput
    DeleteContentInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContentInput.add_member(:content_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "contentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContentInput.type = Types::DeleteContentInput
    DeleteContentOutput.type = Types::DeleteContentOutput
    DeleteImportJobRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteImportJobRequest.add_member(:import_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "importJobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteImportJobRequest.type = Types::DeleteImportJobRequest
    DeleteImportJobResponse.type = Types::DeleteImportJobResponse
    DeleteKnowledgeBaseInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteKnowledgeBaseInput.type = Types::DeleteKnowledgeBaseInput
    DeleteKnowledgeBaseOutput.type = Types::DeleteKnowledgeBaseOutput
    DeleteQuickResponseRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQuickResponseRequest.add_member(:quick_response_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "quickResponseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQuickResponseRequest.type = Types::DeleteQuickResponseRequest
    DeleteQuickResponseResponse.type = Types::DeleteQuickResponseResponse
    Document.add_member(:content_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentReference, name: "contentReference", traits: {"smithy.api#required" => {}}))
    Document.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentText, name: "title"))
    Document.add_member(:excerpt, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentText, name: "excerpt"))
    Document.type = Types::Document
    DocumentText.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "text"))
    DocumentText.add_member(:highlights, ::Smithy::Schema::Shapes::MemberShape.new(target: Highlights, name: "highlights"))
    DocumentText.type = Types::DocumentText
    ExternalSourceConfiguration.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalSource, name: "source", traits: {"smithy.api#required" => {}}))
    ExternalSourceConfiguration.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: Configuration, name: "configuration", traits: {"smithy.api#required" => {}}))
    ExternalSourceConfiguration.type = Types::ExternalSourceConfiguration
    Filter.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterField, name: "field", traits: {"smithy.api#required" => {}}))
    Filter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    Filter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "value", traits: {"smithy.api#required" => {}}))
    Filter.type = Types::Filter
    FilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member"))
    GetAssistantAssociationInput.add_member(:assistant_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantAssociationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssistantAssociationInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssistantAssociationInput.type = Types::GetAssistantAssociationInput
    GetAssistantAssociationOutput.add_member(:assistant_association, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantAssociationData, name: "assistantAssociation"))
    GetAssistantAssociationOutput.type = Types::GetAssistantAssociationOutput
    GetAssistantInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssistantInput.type = Types::GetAssistantInput
    GetAssistantOutput.add_member(:assistant, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantData, name: "assistant"))
    GetAssistantOutput.type = Types::GetAssistantOutput
    GetContentInput.add_member(:content_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "contentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContentInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContentInput.type = Types::GetContentInput
    GetContentOutput.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentData, name: "content"))
    GetContentOutput.type = Types::GetContentOutput
    GetContentSummaryInput.add_member(:content_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "contentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContentSummaryInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContentSummaryInput.type = Types::GetContentSummaryInput
    GetContentSummaryOutput.add_member(:content_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentSummary, name: "contentSummary"))
    GetContentSummaryOutput.type = Types::GetContentSummaryOutput
    GetImportJobRequest.add_member(:import_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "importJobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImportJobRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImportJobRequest.type = Types::GetImportJobRequest
    GetImportJobResponse.add_member(:import_job, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobData, name: "importJob"))
    GetImportJobResponse.type = Types::GetImportJobResponse
    GetKnowledgeBaseInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetKnowledgeBaseInput.type = Types::GetKnowledgeBaseInput
    GetKnowledgeBaseOutput.add_member(:knowledge_base, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseData, name: "knowledgeBase"))
    GetKnowledgeBaseOutput.type = Types::GetKnowledgeBaseOutput
    GetQuickResponseRequest.add_member(:quick_response_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "quickResponseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQuickResponseRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQuickResponseRequest.type = Types::GetQuickResponseRequest
    GetQuickResponseResponse.add_member(:quick_response, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseData, name: "quickResponse"))
    GetQuickResponseResponse.type = Types::GetQuickResponseResponse
    GetRecommendationsInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecommendationsInput.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecommendationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetRecommendationsInput.add_member(:wait_time_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: WaitTimeSeconds, name: "waitTimeSeconds", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "waitTimeSeconds"}))
    GetRecommendationsInput.type = Types::GetRecommendationsInput
    GetRecommendationsOutput.add_member(:recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationList, name: "recommendations", traits: {"smithy.api#required" => {}}))
    GetRecommendationsOutput.add_member(:triggers, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationTriggerList, name: "triggers"))
    GetRecommendationsOutput.type = Types::GetRecommendationsOutput
    GetSessionInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionInput.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionInput.type = Types::GetSessionInput
    GetSessionOutput.add_member(:session, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionData, name: "session"))
    GetSessionOutput.type = Types::GetSessionOutput
    GroupingConfiguration.add_member(:criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingCriteria, name: "criteria"))
    GroupingConfiguration.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingValues, name: "values"))
    GroupingConfiguration.type = Types::GroupingConfiguration
    GroupingValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingValue, name: "member"))
    Headers.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "key"))
    Headers.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "value"))
    Highlight.add_member(:begin_offset_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: HighlightOffset, name: "beginOffsetInclusive", traits: {"smithy.api#default" => 0}))
    Highlight.add_member(:end_offset_exclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: HighlightOffset, name: "endOffsetExclusive", traits: {"smithy.api#default" => 0}))
    Highlight.type = Types::Highlight
    Highlights.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Highlight, name: "member"))
    ImportJobData.add_member(:import_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "importJobId", traits: {"smithy.api#required" => {}}))
    ImportJobData.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    ImportJobData.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, name: "uploadId", traits: {"smithy.api#required" => {}}))
    ImportJobData.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "knowledgeBaseArn", traits: {"smithy.api#required" => {}}))
    ImportJobData.add_member(:import_job_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobType, name: "importJobType", traits: {"smithy.api#required" => {}}))
    ImportJobData.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ImportJobData.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "url", traits: {"smithy.api#required" => {}}))
    ImportJobData.add_member(:failed_record_report, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "failedRecordReport"))
    ImportJobData.add_member(:url_expiry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "urlExpiry", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ImportJobData.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ImportJobData.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModifiedTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ImportJobData.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMetadata, name: "metadata"))
    ImportJobData.add_member(:external_source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalSourceConfiguration, name: "externalSourceConfiguration"))
    ImportJobData.type = Types::ImportJobData
    ImportJobList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobSummary, name: "member"))
    ImportJobSummary.add_member(:import_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "importJobId", traits: {"smithy.api#required" => {}}))
    ImportJobSummary.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    ImportJobSummary.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, name: "uploadId", traits: {"smithy.api#required" => {}}))
    ImportJobSummary.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "knowledgeBaseArn", traits: {"smithy.api#required" => {}}))
    ImportJobSummary.add_member(:import_job_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobType, name: "importJobType", traits: {"smithy.api#required" => {}}))
    ImportJobSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ImportJobSummary.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ImportJobSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModifiedTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ImportJobSummary.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMetadata, name: "metadata"))
    ImportJobSummary.add_member(:external_source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalSourceConfiguration, name: "externalSourceConfiguration"))
    ImportJobSummary.type = Types::ImportJobSummary
    KnowledgeBaseAssociationData.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId"))
    KnowledgeBaseAssociationData.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "knowledgeBaseArn"))
    KnowledgeBaseAssociationData.type = Types::KnowledgeBaseAssociationData
    KnowledgeBaseData.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    KnowledgeBaseData.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "knowledgeBaseArn", traits: {"smithy.api#required" => {}}))
    KnowledgeBaseData.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    KnowledgeBaseData.add_member(:knowledge_base_type, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseType, name: "knowledgeBaseType", traits: {"smithy.api#required" => {}}))
    KnowledgeBaseData.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseStatus, name: "status", traits: {"smithy.api#required" => {}}))
    KnowledgeBaseData.add_member(:last_content_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastContentModificationTime", traits: {"smithy.api#timestampFormat" => "epoch-seconds"}))
    KnowledgeBaseData.add_member(:source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConfiguration, name: "sourceConfiguration"))
    KnowledgeBaseData.add_member(:rendering_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RenderingConfiguration, name: "renderingConfiguration"))
    KnowledgeBaseData.add_member(:server_side_encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryptionConfiguration, name: "serverSideEncryptionConfiguration"))
    KnowledgeBaseData.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    KnowledgeBaseData.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    KnowledgeBaseData.type = Types::KnowledgeBaseData
    KnowledgeBaseList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseSummary, name: "member"))
    KnowledgeBaseSummary.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    KnowledgeBaseSummary.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "knowledgeBaseArn", traits: {"smithy.api#required" => {}}))
    KnowledgeBaseSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    KnowledgeBaseSummary.add_member(:knowledge_base_type, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseType, name: "knowledgeBaseType", traits: {"smithy.api#required" => {}}))
    KnowledgeBaseSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseStatus, name: "status", traits: {"smithy.api#required" => {}}))
    KnowledgeBaseSummary.add_member(:source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConfiguration, name: "sourceConfiguration"))
    KnowledgeBaseSummary.add_member(:rendering_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RenderingConfiguration, name: "renderingConfiguration"))
    KnowledgeBaseSummary.add_member(:server_side_encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryptionConfiguration, name: "serverSideEncryptionConfiguration"))
    KnowledgeBaseSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    KnowledgeBaseSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    KnowledgeBaseSummary.type = Types::KnowledgeBaseSummary
    ListAssistantAssociationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssistantAssociationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAssistantAssociationsInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssistantAssociationsInput.type = Types::ListAssistantAssociationsInput
    ListAssistantAssociationsOutput.add_member(:assistant_association_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantAssociationSummaryList, name: "assistantAssociationSummaries", traits: {"smithy.api#required" => {}}))
    ListAssistantAssociationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAssistantAssociationsOutput.type = Types::ListAssistantAssociationsOutput
    ListAssistantsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssistantsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAssistantsInput.type = Types::ListAssistantsInput
    ListAssistantsOutput.add_member(:assistant_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantList, name: "assistantSummaries", traits: {"smithy.api#required" => {}}))
    ListAssistantsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAssistantsOutput.type = Types::ListAssistantsOutput
    ListContentsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListContentsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListContentsInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListContentsInput.type = Types::ListContentsInput
    ListContentsOutput.add_member(:content_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentSummaryList, name: "contentSummaries", traits: {"smithy.api#required" => {}}))
    ListContentsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListContentsOutput.type = Types::ListContentsOutput
    ListImportJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListImportJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListImportJobsRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListImportJobsRequest.type = Types::ListImportJobsRequest
    ListImportJobsResponse.add_member(:import_job_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobList, name: "importJobSummaries", traits: {"smithy.api#required" => {}}))
    ListImportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "nextToken"))
    ListImportJobsResponse.type = Types::ListImportJobsResponse
    ListKnowledgeBasesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListKnowledgeBasesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListKnowledgeBasesInput.type = Types::ListKnowledgeBasesInput
    ListKnowledgeBasesOutput.add_member(:knowledge_base_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseList, name: "knowledgeBaseSummaries", traits: {"smithy.api#required" => {}}))
    ListKnowledgeBasesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "nextToken"))
    ListKnowledgeBasesOutput.type = Types::ListKnowledgeBasesOutput
    ListQuickResponsesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListQuickResponsesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListQuickResponsesRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListQuickResponsesRequest.type = Types::ListQuickResponsesRequest
    ListQuickResponsesResponse.add_member(:quick_response_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseSummaryList, name: "quickResponseSummaries", traits: {"smithy.api#required" => {}}))
    ListQuickResponsesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "nextToken"))
    ListQuickResponsesResponse.type = Types::ListQuickResponsesResponse
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    NotifyRecommendationsReceivedError.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recommendationId"))
    NotifyRecommendationsReceivedError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyRecommendationsReceivedErrorMessage, name: "message"))
    NotifyRecommendationsReceivedError.type = Types::NotifyRecommendationsReceivedError
    NotifyRecommendationsReceivedErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyRecommendationsReceivedError, name: "member"))
    NotifyRecommendationsReceivedInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    NotifyRecommendationsReceivedInput.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    NotifyRecommendationsReceivedInput.add_member(:recommendation_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationIdList, name: "recommendationIds", traits: {"smithy.api#required" => {}}))
    NotifyRecommendationsReceivedInput.type = Types::NotifyRecommendationsReceivedInput
    NotifyRecommendationsReceivedOutput.add_member(:recommendation_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationIdList, name: "recommendationIds"))
    NotifyRecommendationsReceivedOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyRecommendationsReceivedErrorList, name: "errors"))
    NotifyRecommendationsReceivedOutput.type = Types::NotifyRecommendationsReceivedOutput
    ObjectFieldsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member"))
    PreconditionFailedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    PreconditionFailedException.type = Types::PreconditionFailedException
    QueryAssistantInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    QueryAssistantInput.add_member(:query_text, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryText, name: "queryText", traits: {"smithy.api#required" => {}}))
    QueryAssistantInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    QueryAssistantInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    QueryAssistantInput.type = Types::QueryAssistantInput
    QueryAssistantOutput.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryResultsList, name: "results", traits: {"smithy.api#required" => {}}))
    QueryAssistantOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    QueryAssistantOutput.type = Types::QueryAssistantOutput
    QueryRecommendationTriggerData.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryText, name: "text"))
    QueryRecommendationTriggerData.type = Types::QueryRecommendationTriggerData
    QueryResultsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultData, name: "member"))
    QuickResponseContentProvider.add_member(:content, Types::QuickResponseContentProvider::Content, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseContent, name: "content"))
    QuickResponseContentProvider.add_member(:unknown, Types::QuickResponseContentProvider::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    QuickResponseContentProvider.type = Types::QuickResponseContentProvider
    QuickResponseContents.add_member(:plain_text, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseContentProvider, name: "plainText"))
    QuickResponseContents.add_member(:markdown, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseContentProvider, name: "markdown"))
    QuickResponseContents.type = Types::QuickResponseContents
    QuickResponseData.add_member(:quick_response_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "quickResponseArn", traits: {"smithy.api#required" => {}}))
    QuickResponseData.add_member(:quick_response_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "quickResponseId", traits: {"smithy.api#required" => {}}))
    QuickResponseData.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "knowledgeBaseArn", traits: {"smithy.api#required" => {}}))
    QuickResponseData.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    QuickResponseData.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseName, name: "name", traits: {"smithy.api#required" => {}}))
    QuickResponseData.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseType, name: "contentType", traits: {"smithy.api#required" => {}}))
    QuickResponseData.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseStatus, name: "status", traits: {"smithy.api#required" => {}}))
    QuickResponseData.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    QuickResponseData.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModifiedTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    QuickResponseData.add_member(:contents, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseContents, name: "contents"))
    QuickResponseData.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseDescription, name: "description"))
    QuickResponseData.add_member(:grouping_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingConfiguration, name: "groupingConfiguration"))
    QuickResponseData.add_member(:shortcut_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ShortCutKey, name: "shortcutKey"))
    QuickResponseData.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericArn, name: "lastModifiedBy"))
    QuickResponseData.add_member(:is_active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isActive"))
    QuickResponseData.add_member(:channels, ::Smithy::Schema::Shapes::MemberShape.new(target: Channels, name: "channels"))
    QuickResponseData.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "language"))
    QuickResponseData.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    QuickResponseData.type = Types::QuickResponseData
    QuickResponseDataProvider.add_member(:content, Types::QuickResponseDataProvider::Content, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseContent, name: "content"))
    QuickResponseDataProvider.add_member(:unknown, Types::QuickResponseDataProvider::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    QuickResponseDataProvider.type = Types::QuickResponseDataProvider
    QuickResponseFilterField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "name", traits: {"smithy.api#required" => {}}))
    QuickResponseFilterField.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseFilterValueList, name: "values"))
    QuickResponseFilterField.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseFilterOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    QuickResponseFilterField.add_member(:include_no_existence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "includeNoExistence"))
    QuickResponseFilterField.type = Types::QuickResponseFilterField
    QuickResponseFilterFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseFilterField, name: "member"))
    QuickResponseFilterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseFilterValue, name: "member"))
    QuickResponseOrderField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "name", traits: {"smithy.api#required" => {}}))
    QuickResponseOrderField.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: Order, name: "order"))
    QuickResponseOrderField.type = Types::QuickResponseOrderField
    QuickResponseQueryField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "name", traits: {"smithy.api#required" => {}}))
    QuickResponseQueryField.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseQueryValueList, name: "values", traits: {"smithy.api#required" => {}}))
    QuickResponseQueryField.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseQueryOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    QuickResponseQueryField.add_member(:allow_fuzziness, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "allowFuzziness"))
    QuickResponseQueryField.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "priority"))
    QuickResponseQueryField.type = Types::QuickResponseQueryField
    QuickResponseQueryFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseQueryField, name: "member"))
    QuickResponseQueryValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseQueryValue, name: "member"))
    QuickResponseSearchExpression.add_member(:queries, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseQueryFieldList, name: "queries"))
    QuickResponseSearchExpression.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseFilterFieldList, name: "filters"))
    QuickResponseSearchExpression.add_member(:order_on_field, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseOrderField, name: "orderOnField"))
    QuickResponseSearchExpression.type = Types::QuickResponseSearchExpression
    QuickResponseSearchResultData.add_member(:quick_response_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "quickResponseArn", traits: {"smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:quick_response_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "quickResponseId", traits: {"smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "knowledgeBaseArn", traits: {"smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseName, name: "name", traits: {"smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseType, name: "contentType", traits: {"smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseStatus, name: "status", traits: {"smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:contents, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseContents, name: "contents", traits: {"smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    QuickResponseSearchResultData.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModifiedTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    QuickResponseSearchResultData.add_member(:is_active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isActive", traits: {"smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseDescription, name: "description"))
    QuickResponseSearchResultData.add_member(:grouping_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingConfiguration, name: "groupingConfiguration"))
    QuickResponseSearchResultData.add_member(:shortcut_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ShortCutKey, name: "shortcutKey"))
    QuickResponseSearchResultData.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericArn, name: "lastModifiedBy"))
    QuickResponseSearchResultData.add_member(:channels, ::Smithy::Schema::Shapes::MemberShape.new(target: Channels, name: "channels"))
    QuickResponseSearchResultData.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "language"))
    QuickResponseSearchResultData.add_member(:attributes_not_interpolated, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactAttributeKeys, name: "attributesNotInterpolated"))
    QuickResponseSearchResultData.add_member(:attributes_interpolated, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactAttributeKeys, name: "attributesInterpolated"))
    QuickResponseSearchResultData.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    QuickResponseSearchResultData.type = Types::QuickResponseSearchResultData
    QuickResponseSearchResultsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseSearchResultData, name: "member"))
    QuickResponseSummary.add_member(:quick_response_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "quickResponseArn", traits: {"smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:quick_response_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "quickResponseId", traits: {"smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "knowledgeBaseArn", traits: {"smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseName, name: "name", traits: {"smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseType, name: "contentType", traits: {"smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseStatus, name: "status", traits: {"smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    QuickResponseSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModifiedTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    QuickResponseSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseDescription, name: "description"))
    QuickResponseSummary.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericArn, name: "lastModifiedBy"))
    QuickResponseSummary.add_member(:is_active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isActive"))
    QuickResponseSummary.add_member(:channels, ::Smithy::Schema::Shapes::MemberShape.new(target: Channels, name: "channels"))
    QuickResponseSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    QuickResponseSummary.type = Types::QuickResponseSummary
    QuickResponseSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseSummary, name: "member"))
    RecommendationData.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recommendationId", traits: {"smithy.api#required" => {}}))
    RecommendationData.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: Document, name: "document", traits: {"smithy.api#required" => {}}))
    RecommendationData.add_member(:relevance_score, ::Smithy::Schema::Shapes::MemberShape.new(target: RelevanceScore, name: "relevanceScore", traits: {"smithy.api#default" => 0}))
    RecommendationData.add_member(:relevance_level, ::Smithy::Schema::Shapes::MemberShape.new(target: RelevanceLevel, name: "relevanceLevel"))
    RecommendationData.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationType, name: "type"))
    RecommendationData.type = Types::RecommendationData
    RecommendationIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    RecommendationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationData, name: "member"))
    RecommendationTrigger.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "id", traits: {"smithy.api#required" => {}}))
    RecommendationTrigger.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationTriggerType, name: "type", traits: {"smithy.api#required" => {}}))
    RecommendationTrigger.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSourceType, name: "source", traits: {"smithy.api#required" => {}}))
    RecommendationTrigger.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationTriggerData, name: "data", traits: {"smithy.api#required" => {}}))
    RecommendationTrigger.add_member(:recommendation_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationIdList, name: "recommendationIds", traits: {"smithy.api#required" => {}}))
    RecommendationTrigger.type = Types::RecommendationTrigger
    RecommendationTriggerData.add_member(:query, Types::RecommendationTriggerData::Query, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryRecommendationTriggerData, name: "query"))
    RecommendationTriggerData.add_member(:unknown, Types::RecommendationTriggerData::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RecommendationTriggerData.type = Types::RecommendationTriggerData
    RecommendationTriggerList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationTrigger, name: "member"))
    RemoveKnowledgeBaseTemplateUriInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveKnowledgeBaseTemplateUriInput.type = Types::RemoveKnowledgeBaseTemplateUriInput
    RemoveKnowledgeBaseTemplateUriOutput.type = Types::RemoveKnowledgeBaseTemplateUriOutput
    RenderingConfiguration.add_member(:template_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "templateUri"))
    RenderingConfiguration.type = Types::RenderingConfiguration
    RequestTimeoutException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    RequestTimeoutException.type = Types::RequestTimeoutException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ResourceNotFoundException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceName"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResultData.add_member(:result_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "resultId", traits: {"smithy.api#required" => {}}))
    ResultData.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: Document, name: "document", traits: {"smithy.api#required" => {}}))
    ResultData.add_member(:relevance_score, ::Smithy::Schema::Shapes::MemberShape.new(target: RelevanceScore, name: "relevanceScore", traits: {"smithy.api#default" => 0}))
    ResultData.type = Types::ResultData
    SearchContentInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    SearchContentInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    SearchContentInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchContentInput.add_member(:search_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchExpression, name: "searchExpression", traits: {"smithy.api#required" => {}}))
    SearchContentInput.type = Types::SearchContentInput
    SearchContentOutput.add_member(:content_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentSummaryList, name: "contentSummaries", traits: {"smithy.api#required" => {}}))
    SearchContentOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    SearchContentOutput.type = Types::SearchContentOutput
    SearchExpression.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "filters", traits: {"smithy.api#required" => {}}))
    SearchExpression.type = Types::SearchExpression
    SearchQuickResponsesRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchQuickResponsesRequest.add_member(:search_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseSearchExpression, name: "searchExpression", traits: {"smithy.api#required" => {}}))
    SearchQuickResponsesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    SearchQuickResponsesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    SearchQuickResponsesRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactAttributes, name: "attributes"))
    SearchQuickResponsesRequest.type = Types::SearchQuickResponsesRequest
    SearchQuickResponsesResponse.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseSearchResultsList, name: "results", traits: {"smithy.api#required" => {}}))
    SearchQuickResponsesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "nextToken"))
    SearchQuickResponsesResponse.type = Types::SearchQuickResponsesResponse
    SearchSessionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    SearchSessionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    SearchSessionsInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchSessionsInput.add_member(:search_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchExpression, name: "searchExpression", traits: {"smithy.api#required" => {}}))
    SearchSessionsInput.type = Types::SearchSessionsInput
    SearchSessionsOutput.add_member(:session_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionSummaries, name: "sessionSummaries", traits: {"smithy.api#required" => {}}))
    SearchSessionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    SearchSessionsOutput.type = Types::SearchSessionsOutput
    ServerSideEncryptionConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "kmsKeyId"))
    ServerSideEncryptionConfiguration.type = Types::ServerSideEncryptionConfiguration
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SessionData.add_member(:session_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "sessionArn", traits: {"smithy.api#required" => {}}))
    SessionData.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "sessionId", traits: {"smithy.api#required" => {}}))
    SessionData.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    SessionData.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    SessionData.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    SessionData.add_member(:integration_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionIntegrationConfiguration, name: "integrationConfiguration"))
    SessionData.type = Types::SessionData
    SessionIntegrationConfiguration.add_member(:topic_integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericArn, name: "topicIntegrationArn"))
    SessionIntegrationConfiguration.type = Types::SessionIntegrationConfiguration
    SessionSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionSummary, name: "member"))
    SessionSummary.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "sessionId", traits: {"smithy.api#required" => {}}))
    SessionSummary.add_member(:session_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "sessionArn", traits: {"smithy.api#required" => {}}))
    SessionSummary.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assistantId", traits: {"smithy.api#required" => {}}))
    SessionSummary.add_member(:assistant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assistantArn", traits: {"smithy.api#required" => {}}))
    SessionSummary.type = Types::SessionSummary
    SourceConfiguration.add_member(:app_integrations, Types::SourceConfiguration::AppIntegrations, ::Smithy::Schema::Shapes::MemberShape.new(target: AppIntegrationsConfiguration, name: "appIntegrations"))
    SourceConfiguration.add_member(:unknown, Types::SourceConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SourceConfiguration.type = Types::SourceConfiguration
    StartContentUploadInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartContentUploadInput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, name: "contentType", traits: {"smithy.api#required" => {}}))
    StartContentUploadInput.add_member(:presigned_url_time_to_live, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeToLive, name: "presignedUrlTimeToLive"))
    StartContentUploadInput.type = Types::StartContentUploadInput
    StartContentUploadOutput.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, name: "uploadId", traits: {"smithy.api#required" => {}}))
    StartContentUploadOutput.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "url", traits: {"smithy.api#required" => {}}))
    StartContentUploadOutput.add_member(:url_expiry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "urlExpiry", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    StartContentUploadOutput.add_member(:headers_to_include, ::Smithy::Schema::Shapes::MemberShape.new(target: Headers, name: "headersToInclude", traits: {"smithy.api#required" => {}}))
    StartContentUploadOutput.type = Types::StartContentUploadOutput
    StartImportJobRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartImportJobRequest.add_member(:import_job_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobType, name: "importJobType", traits: {"smithy.api#required" => {}}))
    StartImportJobRequest.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, name: "uploadId", traits: {"smithy.api#required" => {}}))
    StartImportJobRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartImportJobRequest.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMetadata, name: "metadata"))
    StartImportJobRequest.add_member(:external_source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalSourceConfiguration, name: "externalSourceConfiguration"))
    StartImportJobRequest.type = Types::StartImportJobRequest
    StartImportJobResponse.add_member(:import_job, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobData, name: "importJob"))
    StartImportJobResponse.type = Types::StartImportJobResponse
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    Tags.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    Tags.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    TooManyTagsException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceName"))
    TooManyTagsException.type = Types::TooManyTagsException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateContentInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateContentInput.add_member(:content_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "contentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateContentInput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "revisionId"))
    UpdateContentInput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentTitle, name: "title"))
    UpdateContentInput.add_member(:override_link_out_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "overrideLinkOutUri"))
    UpdateContentInput.add_member(:remove_override_link_out_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "removeOverrideLinkOutUri"))
    UpdateContentInput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMetadata, name: "metadata"))
    UpdateContentInput.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, name: "uploadId"))
    UpdateContentInput.type = Types::UpdateContentInput
    UpdateContentOutput.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentData, name: "content"))
    UpdateContentOutput.type = Types::UpdateContentOutput
    UpdateKnowledgeBaseTemplateUriInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateKnowledgeBaseTemplateUriInput.add_member(:template_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "templateUri", traits: {"smithy.api#required" => {}}))
    UpdateKnowledgeBaseTemplateUriInput.type = Types::UpdateKnowledgeBaseTemplateUriInput
    UpdateKnowledgeBaseTemplateUriOutput.add_member(:knowledge_base, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseData, name: "knowledgeBase"))
    UpdateKnowledgeBaseTemplateUriOutput.type = Types::UpdateKnowledgeBaseTemplateUriOutput
    UpdateQuickResponseRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQuickResponseRequest.add_member(:quick_response_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "quickResponseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQuickResponseRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseName, name: "name"))
    UpdateQuickResponseRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseDataProvider, name: "content"))
    UpdateQuickResponseRequest.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseType, name: "contentType"))
    UpdateQuickResponseRequest.add_member(:grouping_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingConfiguration, name: "groupingConfiguration"))
    UpdateQuickResponseRequest.add_member(:remove_grouping_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "removeGroupingConfiguration"))
    UpdateQuickResponseRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseDescription, name: "description"))
    UpdateQuickResponseRequest.add_member(:remove_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "removeDescription"))
    UpdateQuickResponseRequest.add_member(:shortcut_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ShortCutKey, name: "shortcutKey"))
    UpdateQuickResponseRequest.add_member(:remove_shortcut_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "removeShortcutKey"))
    UpdateQuickResponseRequest.add_member(:is_active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isActive"))
    UpdateQuickResponseRequest.add_member(:channels, ::Smithy::Schema::Shapes::MemberShape.new(target: Channels, name: "channels"))
    UpdateQuickResponseRequest.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "language"))
    UpdateQuickResponseRequest.type = Types::UpdateQuickResponseRequest
    UpdateQuickResponseResponse.add_member(:quick_response, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseData, name: "quickResponse"))
    UpdateQuickResponseResponse.type = Types::UpdateQuickResponseResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ValidationException.type = Types::ValidationException

    WisdomService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.wisdom#WisdomService"
      service.name = "WisdomService"
      service.version = "2020-10-19"
      service.traits = {"aws.api#service" => {"sdkId" => "Wisdom", "arnNamespace" => "wisdom", "cloudFormationName" => "Wisdom"}, "aws.auth#sigv4" => {"name" => "wisdom"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "Amazon Connect Wisdom Service", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://wisdom-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://wisdom-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://wisdom.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://wisdom.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:create_assistant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#CreateAssistant"
        operation.name = "CreateAssistant"
        operation.input = CreateAssistantInput
        operation.output = CreateAssistantOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_assistant_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#CreateAssistantAssociation"
        operation.name = "CreateAssistantAssociation"
        operation.input = CreateAssistantAssociationInput
        operation.output = CreateAssistantAssociationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/associations", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#CreateContent"
        operation.name = "CreateContent"
        operation.input = CreateContentInput
        operation.output = CreateContentOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_knowledge_base, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#CreateKnowledgeBase"
        operation.name = "CreateKnowledgeBase"
        operation.input = CreateKnowledgeBaseInput
        operation.output = CreateKnowledgeBaseOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_quick_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#CreateQuickResponse"
        operation.name = "CreateQuickResponse"
        operation.input = CreateQuickResponseRequest
        operation.output = CreateQuickResponseResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/quickResponses", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#CreateSession"
        operation.name = "CreateSession"
        operation.input = CreateSessionInput
        operation.output = CreateSessionOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_assistant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#DeleteAssistant"
        operation.name = "DeleteAssistant"
        operation.input = DeleteAssistantInput
        operation.output = DeleteAssistantOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_assistant_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#DeleteAssistantAssociation"
        operation.name = "DeleteAssistantAssociation"
        operation.input = DeleteAssistantAssociationInput
        operation.output = DeleteAssistantAssociationOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/associations/{assistantAssociationId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#DeleteContent"
        operation.name = "DeleteContent"
        operation.input = DeleteContentInput
        operation.output = DeleteContentOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#DeleteImportJob"
        operation.name = "DeleteImportJob"
        operation.input = DeleteImportJobRequest
        operation.output = DeleteImportJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/importJobs/{importJobId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_knowledge_base, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#DeleteKnowledgeBase"
        operation.name = "DeleteKnowledgeBase"
        operation.input = DeleteKnowledgeBaseInput
        operation.output = DeleteKnowledgeBaseOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_quick_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#DeleteQuickResponse"
        operation.name = "DeleteQuickResponse"
        operation.input = DeleteQuickResponseRequest
        operation.output = DeleteQuickResponseResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_assistant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#GetAssistant"
        operation.name = "GetAssistant"
        operation.input = GetAssistantInput
        operation.output = GetAssistantOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_assistant_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#GetAssistantAssociation"
        operation.name = "GetAssistantAssociation"
        operation.input = GetAssistantAssociationInput
        operation.output = GetAssistantAssociationOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/associations/{assistantAssociationId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#GetContent"
        operation.name = "GetContent"
        operation.input = GetContentInput
        operation.output = GetContentOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_content_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#GetContentSummary"
        operation.name = "GetContentSummary"
        operation.input = GetContentSummaryInput
        operation.output = GetContentSummaryOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/summary", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#GetImportJob"
        operation.name = "GetImportJob"
        operation.input = GetImportJobRequest
        operation.output = GetImportJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/importJobs/{importJobId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_knowledge_base, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#GetKnowledgeBase"
        operation.name = "GetKnowledgeBase"
        operation.input = GetKnowledgeBaseInput
        operation.output = GetKnowledgeBaseOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_quick_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#GetQuickResponse"
        operation.name = "GetQuickResponse"
        operation.input = GetQuickResponseRequest
        operation.output = GetQuickResponseResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#GetRecommendations"
        operation.name = "GetRecommendations"
        operation.input = GetRecommendationsInput
        operation.output = GetRecommendationsOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "GetRecommendations API will be discontinued starting June 1, 2024. To receive generative responses after March 1, 2024 you will need to create a new Assistant in the Connect console and integrate the Amazon Q in Connect JavaScript library (amazon-q-connectjs) into your applications."}, "smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions/{sessionId}/recommendations", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#GetSession"
        operation.name = "GetSession"
        operation.input = GetSessionInput
        operation.output = GetSessionOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions/{sessionId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_assistant_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#ListAssistantAssociations"
        operation.name = "ListAssistantAssociations"
        operation.input = ListAssistantAssociationsInput
        operation.output = ListAssistantAssociationsOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/associations", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAssistantAssociations.new
      end)
      service.add_operation(:list_assistants, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#ListAssistants"
        operation.name = "ListAssistants"
        operation.input = ListAssistantsInput
        operation.output = ListAssistantsOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAssistants.new
      end)
      service.add_operation(:list_contents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#ListContents"
        operation.name = "ListContents"
        operation.input = ListContentsInput
        operation.output = ListContentsOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListContents.new
      end)
      service.add_operation(:list_import_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#ListImportJobs"
        operation.name = "ListImportJobs"
        operation.input = ListImportJobsRequest
        operation.output = ListImportJobsResponse
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/importJobs", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListImportJobs.new
      end)
      service.add_operation(:list_knowledge_bases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#ListKnowledgeBases"
        operation.name = "ListKnowledgeBases"
        operation.input = ListKnowledgeBasesInput
        operation.output = ListKnowledgeBasesOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListKnowledgeBases.new
      end)
      service.add_operation(:list_quick_responses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#ListQuickResponses"
        operation.name = "ListQuickResponses"
        operation.input = ListQuickResponsesRequest
        operation.output = ListQuickResponsesResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/quickResponses", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListQuickResponses.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:notify_recommendations_received, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#NotifyRecommendationsReceived"
        operation.name = "NotifyRecommendationsReceived"
        operation.input = NotifyRecommendationsReceivedInput
        operation.output = NotifyRecommendationsReceivedOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions/{sessionId}/recommendations/notify", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:query_assistant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#QueryAssistant"
        operation.name = "QueryAssistant"
        operation.input = QueryAssistantInput
        operation.output = QueryAssistantOutput
        operation.errors << AccessDeniedException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "QueryAssistant API will be discontinued starting June 1, 2024. To receive generative responses after March 1, 2024 you will need to create a new Assistant in the Connect console and integrate the Amazon Q in Connect JavaScript library (amazon-q-connectjs) into your applications."}, "smithy.api#http" => {"uri" => "/assistants/{assistantId}/query", "method" => "POST"}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
        operation[:paginator] = Paginators::QueryAssistant.new
      end)
      service.add_operation(:remove_knowledge_base_template_uri, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#RemoveKnowledgeBaseTemplateUri"
        operation.name = "RemoveKnowledgeBaseTemplateUri"
        operation.input = RemoveKnowledgeBaseTemplateUriInput
        operation.output = RemoveKnowledgeBaseTemplateUriOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/templateUri", "method" => "DELETE", "code" => 204}}
      end)
      service.add_operation(:search_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#SearchContent"
        operation.name = "SearchContent"
        operation.input = SearchContentInput
        operation.output = SearchContentOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/search", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::SearchContent.new
      end)
      service.add_operation(:search_quick_responses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#SearchQuickResponses"
        operation.name = "SearchQuickResponses"
        operation.input = SearchQuickResponsesRequest
        operation.output = SearchQuickResponsesResponse
        operation.errors << AccessDeniedException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/search/quickResponses", "method" => "POST"}}
        operation[:paginator] = Paginators::SearchQuickResponses.new
      end)
      service.add_operation(:search_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#SearchSessions"
        operation.name = "SearchSessions"
        operation.input = SearchSessionsInput
        operation.output = SearchSessionsOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/searchSessions", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::SearchSessions.new
      end)
      service.add_operation(:start_content_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#StartContentUpload"
        operation.name = "StartContentUpload"
        operation.input = StartContentUploadInput
        operation.output = StartContentUploadOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/upload", "method" => "POST"}}
      end)
      service.add_operation(:start_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#StartImportJob"
        operation.name = "StartImportJob"
        operation.input = StartImportJobRequest
        operation.output = StartImportJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/importJobs", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyTagsException
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#UpdateContent"
        operation.name = "UpdateContent"
        operation.input = UpdateContentInput
        operation.output = UpdateContentOutput
        operation.errors << AccessDeniedException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}", "method" => "POST"}}
      end)
      service.add_operation(:update_knowledge_base_template_uri, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#UpdateKnowledgeBaseTemplateUri"
        operation.name = "UpdateKnowledgeBaseTemplateUri"
        operation.input = UpdateKnowledgeBaseTemplateUriInput
        operation.output = UpdateKnowledgeBaseTemplateUriOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/templateUri", "method" => "POST"}}
      end)
      service.add_operation(:update_quick_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#UpdateQuickResponse"
        operation.name = "UpdateQuickResponse"
        operation.input = UpdateQuickResponseRequest
        operation.output = UpdateQuickResponseResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}", "method" => "POST"}}
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
