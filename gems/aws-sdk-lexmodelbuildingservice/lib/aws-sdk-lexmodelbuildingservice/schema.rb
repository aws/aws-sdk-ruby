# frozen_string_literal: true

# This is generated code!

module Aws::LexModelBuildingService
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AliasName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#AliasName", name: "AliasName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([A-Za-z]_?)+$"})
    AliasNameOrListAll = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#AliasNameOrListAll", name: "AliasNameOrListAll", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^(-|^([A-Za-z]_?)+$)$"})
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Blob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.lexmodelbuildingservice#Blob", name: "Blob")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lexmodelbuildingservice#Boolean", name: "Boolean")
    BotAliasMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#BotAliasMetadata", name: "BotAliasMetadata")
    BotAliasMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#BotAliasMetadataList", name: "BotAliasMetadataList")
    BotChannelAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#BotChannelAssociation", name: "BotChannelAssociation")
    BotChannelAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#BotChannelAssociationList", name: "BotChannelAssociationList")
    BotChannelName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#BotChannelName", name: "BotChannelName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([A-Za-z]_?)+$"})
    BotMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#BotMetadata", name: "BotMetadata")
    BotMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#BotMetadataList", name: "BotMetadataList")
    BotName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#BotName", name: "BotName", traits: {"smithy.api#length" => {"min" => 2, "max" => 50}, "smithy.api#pattern" => "^([A-Za-z]_?)+$"})
    BotVersions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#BotVersions", name: "BotVersions", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    BuiltinIntentMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#BuiltinIntentMetadata", name: "BuiltinIntentMetadata")
    BuiltinIntentMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#BuiltinIntentMetadataList", name: "BuiltinIntentMetadataList")
    BuiltinIntentSignature = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#BuiltinIntentSignature", name: "BuiltinIntentSignature")
    BuiltinIntentSlot = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#BuiltinIntentSlot", name: "BuiltinIntentSlot")
    BuiltinIntentSlotList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#BuiltinIntentSlotList", name: "BuiltinIntentSlotList")
    BuiltinSlotTypeMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#BuiltinSlotTypeMetadata", name: "BuiltinSlotTypeMetadata")
    BuiltinSlotTypeMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#BuiltinSlotTypeMetadataList", name: "BuiltinSlotTypeMetadataList")
    BuiltinSlotTypeSignature = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#BuiltinSlotTypeSignature", name: "BuiltinSlotTypeSignature")
    ChannelConfigurationMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lexmodelbuildingservice#ChannelConfigurationMap", name: "ChannelConfigurationMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#sensitive" => {}})
    ChannelStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelbuildingservice#ChannelStatus", name: "ChannelStatus")
    ChannelType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelbuildingservice#ChannelType", name: "ChannelType")
    CodeHook = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#CodeHook", name: "CodeHook")
    ConfidenceThreshold = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.lexmodelbuildingservice#ConfidenceThreshold", name: "ConfidenceThreshold", traits: {"smithy.api#range" => {"min" => 0, "max" => 1}})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContentString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#ContentString", name: "ContentString", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    ContentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelbuildingservice#ContentType", name: "ContentType")
    ContextTimeToLiveInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelbuildingservice#ContextTimeToLiveInSeconds", name: "ContextTimeToLiveInSeconds", traits: {"smithy.api#range" => {"min" => 5, "max" => 86400}})
    ContextTurnsToLive = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelbuildingservice#ContextTurnsToLive", name: "ContextTurnsToLive", traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    ConversationLogsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#ConversationLogsRequest", name: "ConversationLogsRequest")
    ConversationLogsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#ConversationLogsResponse", name: "ConversationLogsResponse")
    Count = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelbuildingservice#Count", name: "Count")
    CreateBotVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#CreateBotVersionRequest", name: "CreateBotVersionRequest")
    CreateBotVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#CreateBotVersionResponse", name: "CreateBotVersionResponse")
    CreateIntentVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#CreateIntentVersionRequest", name: "CreateIntentVersionRequest")
    CreateIntentVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#CreateIntentVersionResponse", name: "CreateIntentVersionResponse")
    CreateSlotTypeVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#CreateSlotTypeVersionRequest", name: "CreateSlotTypeVersionRequest")
    CreateSlotTypeVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#CreateSlotTypeVersionResponse", name: "CreateSlotTypeVersionResponse")
    CustomOrBuiltinSlotTypeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#CustomOrBuiltinSlotTypeName", name: "CustomOrBuiltinSlotTypeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^((AMAZON\\.)_?|[A-Za-z]_?)+$"})
    DeleteBotAliasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#DeleteBotAliasRequest", name: "DeleteBotAliasRequest")
    DeleteBotChannelAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#DeleteBotChannelAssociationRequest", name: "DeleteBotChannelAssociationRequest")
    DeleteBotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#DeleteBotRequest", name: "DeleteBotRequest")
    DeleteBotVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#DeleteBotVersionRequest", name: "DeleteBotVersionRequest")
    DeleteIntentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#DeleteIntentRequest", name: "DeleteIntentRequest")
    DeleteIntentVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#DeleteIntentVersionRequest", name: "DeleteIntentVersionRequest")
    DeleteSlotTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#DeleteSlotTypeRequest", name: "DeleteSlotTypeRequest")
    DeleteSlotTypeVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#DeleteSlotTypeVersionRequest", name: "DeleteSlotTypeVersionRequest")
    DeleteUtterancesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#DeleteUtterancesRequest", name: "DeleteUtterancesRequest")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    Destination = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelbuildingservice#Destination", name: "Destination")
    EnumerationValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#EnumerationValue", name: "EnumerationValue")
    EnumerationValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#EnumerationValues", name: "EnumerationValues", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}})
    ExportStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelbuildingservice#ExportStatus", name: "ExportStatus")
    ExportType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelbuildingservice#ExportType", name: "ExportType")
    FollowUpPrompt = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#FollowUpPrompt", name: "FollowUpPrompt")
    FulfillmentActivity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#FulfillmentActivity", name: "FulfillmentActivity")
    FulfillmentActivityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelbuildingservice#FulfillmentActivityType", name: "FulfillmentActivityType")
    GetBotAliasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetBotAliasRequest", name: "GetBotAliasRequest")
    GetBotAliasResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetBotAliasResponse", name: "GetBotAliasResponse")
    GetBotAliasesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetBotAliasesRequest", name: "GetBotAliasesRequest")
    GetBotAliasesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetBotAliasesResponse", name: "GetBotAliasesResponse")
    GetBotChannelAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetBotChannelAssociationRequest", name: "GetBotChannelAssociationRequest")
    GetBotChannelAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetBotChannelAssociationResponse", name: "GetBotChannelAssociationResponse")
    GetBotChannelAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetBotChannelAssociationsRequest", name: "GetBotChannelAssociationsRequest")
    GetBotChannelAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetBotChannelAssociationsResponse", name: "GetBotChannelAssociationsResponse")
    GetBotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetBotRequest", name: "GetBotRequest")
    GetBotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetBotResponse", name: "GetBotResponse")
    GetBotVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetBotVersionsRequest", name: "GetBotVersionsRequest")
    GetBotVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetBotVersionsResponse", name: "GetBotVersionsResponse")
    GetBotsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetBotsRequest", name: "GetBotsRequest")
    GetBotsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetBotsResponse", name: "GetBotsResponse")
    GetBuiltinIntentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetBuiltinIntentRequest", name: "GetBuiltinIntentRequest")
    GetBuiltinIntentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetBuiltinIntentResponse", name: "GetBuiltinIntentResponse")
    GetBuiltinIntentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetBuiltinIntentsRequest", name: "GetBuiltinIntentsRequest")
    GetBuiltinIntentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetBuiltinIntentsResponse", name: "GetBuiltinIntentsResponse")
    GetBuiltinSlotTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetBuiltinSlotTypesRequest", name: "GetBuiltinSlotTypesRequest")
    GetBuiltinSlotTypesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetBuiltinSlotTypesResponse", name: "GetBuiltinSlotTypesResponse")
    GetExportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetExportRequest", name: "GetExportRequest")
    GetExportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetExportResponse", name: "GetExportResponse")
    GetImportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetImportRequest", name: "GetImportRequest")
    GetImportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetImportResponse", name: "GetImportResponse")
    GetIntentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetIntentRequest", name: "GetIntentRequest")
    GetIntentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetIntentResponse", name: "GetIntentResponse")
    GetIntentVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetIntentVersionsRequest", name: "GetIntentVersionsRequest")
    GetIntentVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetIntentVersionsResponse", name: "GetIntentVersionsResponse")
    GetIntentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetIntentsRequest", name: "GetIntentsRequest")
    GetIntentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetIntentsResponse", name: "GetIntentsResponse")
    GetMigrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetMigrationRequest", name: "GetMigrationRequest")
    GetMigrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetMigrationResponse", name: "GetMigrationResponse")
    GetMigrationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetMigrationsRequest", name: "GetMigrationsRequest")
    GetMigrationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetMigrationsResponse", name: "GetMigrationsResponse")
    GetSlotTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetSlotTypeRequest", name: "GetSlotTypeRequest")
    GetSlotTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetSlotTypeResponse", name: "GetSlotTypeResponse")
    GetSlotTypeVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetSlotTypeVersionsRequest", name: "GetSlotTypeVersionsRequest")
    GetSlotTypeVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetSlotTypeVersionsResponse", name: "GetSlotTypeVersionsResponse")
    GetSlotTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetSlotTypesRequest", name: "GetSlotTypesRequest")
    GetSlotTypesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetSlotTypesResponse", name: "GetSlotTypesResponse")
    GetUtterancesViewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetUtterancesViewRequest", name: "GetUtterancesViewRequest")
    GetUtterancesViewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#GetUtterancesViewResponse", name: "GetUtterancesViewResponse")
    GroupNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelbuildingservice#GroupNumber", name: "GroupNumber", traits: {"smithy.api#range" => {"min" => 1, "max" => 5}})
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#IamRoleArn", name: "IamRoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w\\-]+:iam::[\\d]{12}:role/.+$"})
    ImportStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelbuildingservice#ImportStatus", name: "ImportStatus")
    InputContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#InputContext", name: "InputContext")
    InputContextList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#InputContextList", name: "InputContextList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    InputContextName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#InputContextName", name: "InputContextName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([A-Za-z]_?)+$"})
    Intent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#Intent", name: "Intent")
    IntentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#IntentList", name: "IntentList")
    IntentMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#IntentMetadata", name: "IntentMetadata")
    IntentMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#IntentMetadataList", name: "IntentMetadataList")
    IntentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#IntentName", name: "IntentName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([A-Za-z]_?)+$"})
    IntentUtteranceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#IntentUtteranceList", name: "IntentUtteranceList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1500}})
    InternalFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#InternalFailureException", name: "InternalFailureException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KendraConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#KendraConfiguration", name: "KendraConfiguration")
    KendraIndexArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#KendraIndexArn", name: "KendraIndexArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:kendra:[a-z]+-[a-z]+-[0-9]:[0-9]{12}:index\\/[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w\\-]+:kms:[\\w\\-]+:[\\d]{12}:(?:key\\/[\\w\\-]+|alias\\/[a-zA-Z0-9:\\/_\\-]{1,256})$"})
    LambdaARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#LambdaARN", name: "LambdaARN", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-zA-Z-]*:lambda:[a-z]+-[a-z]+(-[a-z]+)*-[0-9]:[0-9]{12}:function:[a-zA-Z0-9-_]+(\\/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})?(:[a-zA-Z0-9-_]+)?$"})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ListOfUtterance = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#ListOfUtterance", name: "ListOfUtterance")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListsOfUtterances = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#ListsOfUtterances", name: "ListsOfUtterances")
    Locale = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelbuildingservice#Locale", name: "Locale")
    LocaleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#LocaleList", name: "LocaleList")
    LogSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#LogSettingsRequest", name: "LogSettingsRequest")
    LogSettingsRequestList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#LogSettingsRequestList", name: "LogSettingsRequestList")
    LogSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#LogSettingsResponse", name: "LogSettingsResponse")
    LogSettingsResponseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#LogSettingsResponseList", name: "LogSettingsResponseList")
    LogType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelbuildingservice#LogType", name: "LogType")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelbuildingservice#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MergeStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelbuildingservice#MergeStrategy", name: "MergeStrategy")
    Message = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#Message", name: "Message")
    MessageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#MessageList", name: "MessageList", traits: {"smithy.api#length" => {"min" => 1, "max" => 15}})
    MessageVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#MessageVersion", name: "MessageVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    MigrationAlert = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#MigrationAlert", name: "MigrationAlert")
    MigrationAlertDetail = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#MigrationAlertDetail", name: "MigrationAlertDetail")
    MigrationAlertDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#MigrationAlertDetails", name: "MigrationAlertDetails")
    MigrationAlertMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#MigrationAlertMessage", name: "MigrationAlertMessage")
    MigrationAlertReferenceURL = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#MigrationAlertReferenceURL", name: "MigrationAlertReferenceURL")
    MigrationAlertReferenceURLs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#MigrationAlertReferenceURLs", name: "MigrationAlertReferenceURLs")
    MigrationAlertType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelbuildingservice#MigrationAlertType", name: "MigrationAlertType")
    MigrationAlerts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#MigrationAlerts", name: "MigrationAlerts")
    MigrationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#MigrationId", name: "MigrationId", traits: {"smithy.api#length" => {"min" => 10, "max" => 10}, "smithy.api#pattern" => "^[0-9a-zA-Z]+$"})
    MigrationSortAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelbuildingservice#MigrationSortAttribute", name: "MigrationSortAttribute")
    MigrationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelbuildingservice#MigrationStatus", name: "MigrationStatus")
    MigrationStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelbuildingservice#MigrationStrategy", name: "MigrationStrategy")
    MigrationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#MigrationSummary", name: "MigrationSummary")
    MigrationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#MigrationSummaryList", name: "MigrationSummaryList")
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#Name", name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z_]+$"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#NextToken", name: "NextToken")
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NumericalVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#NumericalVersion", name: "NumericalVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9]+$"})
    ObfuscationSetting = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelbuildingservice#ObfuscationSetting", name: "ObfuscationSetting")
    OutputContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#OutputContext", name: "OutputContext")
    OutputContextList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#OutputContextList", name: "OutputContextList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    OutputContextName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#OutputContextName", name: "OutputContextName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([A-Za-z]_?)+$"})
    PreconditionFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#PreconditionFailedException", name: "PreconditionFailedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 412})
    Priority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelbuildingservice#Priority", name: "Priority", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    ProcessBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelbuildingservice#ProcessBehavior", name: "ProcessBehavior")
    Prompt = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#Prompt", name: "Prompt")
    PromptMaxAttempts = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelbuildingservice#PromptMaxAttempts", name: "PromptMaxAttempts", traits: {"smithy.api#range" => {"min" => 1, "max" => 5}})
    PutBotAliasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#PutBotAliasRequest", name: "PutBotAliasRequest")
    PutBotAliasResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#PutBotAliasResponse", name: "PutBotAliasResponse")
    PutBotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#PutBotRequest", name: "PutBotRequest")
    PutBotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#PutBotResponse", name: "PutBotResponse")
    PutIntentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#PutIntentRequest", name: "PutIntentRequest")
    PutIntentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#PutIntentResponse", name: "PutIntentResponse")
    PutSlotTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#PutSlotTypeRequest", name: "PutSlotTypeRequest")
    PutSlotTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#PutSlotTypeResponse", name: "PutSlotTypeResponse")
    QueryFilterString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#QueryFilterString", name: "QueryFilterString", traits: {"smithy.api#length" => {"min" => 0}})
    ReferenceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelbuildingservice#ReferenceType", name: "ReferenceType")
    RegexPattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#RegexPattern", name: "RegexPattern", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w\\-]+:(?:logs:[\\w\\-]+:[\\d]{12}:log-group:[\\.\\-_/#A-Za-z0-9]{1,512}(?::\\*)?|s3:::[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9])$"})
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourcePrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#ResourcePrefix", name: "ResourcePrefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    ResourceReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#ResourceReference", name: "ResourceReference")
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelbuildingservice#ResourceType", name: "ResourceType")
    ResponseCard = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#ResponseCard", name: "ResponseCard", traits: {"smithy.api#length" => {"min" => 1, "max" => 50000}})
    SessionTTL = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelbuildingservice#SessionTTL", name: "SessionTTL", traits: {"smithy.api#range" => {"min" => 60, "max" => 86400}})
    Slot = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#Slot", name: "Slot")
    SlotConstraint = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelbuildingservice#SlotConstraint", name: "SlotConstraint")
    SlotDefaultValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#SlotDefaultValue", name: "SlotDefaultValue")
    SlotDefaultValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#SlotDefaultValueList", name: "SlotDefaultValueList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    SlotDefaultValueSpec = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#SlotDefaultValueSpec", name: "SlotDefaultValueSpec")
    SlotDefaultValueString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#SlotDefaultValueString", name: "SlotDefaultValueString", traits: {"smithy.api#length" => {"min" => 1, "max" => 202}})
    SlotList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#SlotList", name: "SlotList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    SlotName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#SlotName", name: "SlotName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([A-Za-z](-|_|.)?)+$"})
    SlotTypeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#SlotTypeConfiguration", name: "SlotTypeConfiguration")
    SlotTypeConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#SlotTypeConfigurations", name: "SlotTypeConfigurations", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    SlotTypeMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#SlotTypeMetadata", name: "SlotTypeMetadata")
    SlotTypeMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#SlotTypeMetadataList", name: "SlotTypeMetadataList")
    SlotTypeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#SlotTypeName", name: "SlotTypeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([A-Za-z]_?)+$"})
    SlotTypeRegexConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#SlotTypeRegexConfiguration", name: "SlotTypeRegexConfiguration")
    SlotUtteranceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#SlotUtteranceList", name: "SlotUtteranceList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    SlotValueSelectionStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelbuildingservice#SlotValueSelectionStrategy", name: "SlotValueSelectionStrategy")
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelbuildingservice#SortOrder", name: "SortOrder")
    StartImportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#StartImportRequest", name: "StartImportRequest")
    StartImportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#StartImportResponse", name: "StartImportResponse")
    StartMigrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#StartMigrationRequest", name: "StartMigrationRequest")
    StartMigrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#StartMigrationResponse", name: "StartMigrationResponse")
    Statement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#Statement", name: "Statement")
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelbuildingservice#Status", name: "Status")
    StatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelbuildingservice#StatusType", name: "StatusType")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#String", name: "String")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#StringList", name: "StringList")
    SynonymList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#SynonymList", name: "SynonymList")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelbuildingservice#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.lexmodelbuildingservice#Timestamp", name: "Timestamp")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#UntagResourceResponse", name: "UntagResourceResponse")
    UserId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#UserId", name: "UserId", traits: {"smithy.api#length" => {"min" => 2, "max" => 100}})
    Utterance = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#Utterance", name: "Utterance", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    UtteranceData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#UtteranceData", name: "UtteranceData")
    UtteranceList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelbuildingservice#UtteranceList", name: "UtteranceList")
    UtteranceString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#UtteranceString", name: "UtteranceString", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    V2BotId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#V2BotId", name: "V2BotId", traits: {"smithy.api#length" => {"min" => 10, "max" => 10}, "smithy.api#pattern" => "^[0-9a-zA-Z]+$"})
    V2BotName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#V2BotName", name: "V2BotName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([0-9a-zA-Z][_-]?)+$"})
    Value = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#Value", name: "Value", traits: {"smithy.api#length" => {"min" => 1, "max" => 140}})
    Version = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#Version", name: "Version", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^\\$LATEST|[0-9]+$"})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelbuildingservice#roleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:iam::[0-9]{12}:role/"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    BadRequestException.type = Types::BadRequestException
    BotAliasMetadata.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: "name"))
    BotAliasMetadata.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    BotAliasMetadata.add_member(:bot_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "botVersion"))
    BotAliasMetadata.add_member(:bot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "botName"))
    BotAliasMetadata.add_member(:last_updated_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDate"))
    BotAliasMetadata.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdDate"))
    BotAliasMetadata.add_member(:checksum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "checksum"))
    BotAliasMetadata.add_member(:conversation_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationLogsResponse, location_name: "conversationLogs"))
    BotAliasMetadata.type = Types::BotAliasMetadata
    BotAliasMetadataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotAliasMetadata)
    BotChannelAssociation.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotChannelName, location_name: "name"))
    BotChannelAssociation.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    BotChannelAssociation.add_member(:bot_alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: "botAlias"))
    BotChannelAssociation.add_member(:bot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "botName"))
    BotChannelAssociation.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdDate"))
    BotChannelAssociation.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelType, location_name: "type"))
    BotChannelAssociation.add_member(:bot_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelConfigurationMap, location_name: "botConfiguration"))
    BotChannelAssociation.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelStatus, location_name: "status"))
    BotChannelAssociation.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "failureReason"))
    BotChannelAssociation.type = Types::BotChannelAssociation
    BotChannelAssociationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotChannelAssociation)
    BotMetadata.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "name"))
    BotMetadata.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    BotMetadata.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    BotMetadata.add_member(:last_updated_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDate"))
    BotMetadata.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdDate"))
    BotMetadata.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    BotMetadata.type = Types::BotMetadata
    BotMetadataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotMetadata)
    BotVersions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version)
    BuiltinIntentMetadata.add_member(:signature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuiltinIntentSignature, location_name: "signature"))
    BuiltinIntentMetadata.add_member(:supported_locales, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocaleList, location_name: "supportedLocales"))
    BuiltinIntentMetadata.type = Types::BuiltinIntentMetadata
    BuiltinIntentMetadataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuiltinIntentMetadata)
    BuiltinIntentSlot.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "name"))
    BuiltinIntentSlot.type = Types::BuiltinIntentSlot
    BuiltinIntentSlotList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuiltinIntentSlot)
    BuiltinSlotTypeMetadata.add_member(:signature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuiltinSlotTypeSignature, location_name: "signature"))
    BuiltinSlotTypeMetadata.add_member(:supported_locales, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocaleList, location_name: "supportedLocales"))
    BuiltinSlotTypeMetadata.type = Types::BuiltinSlotTypeMetadata
    BuiltinSlotTypeMetadataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuiltinSlotTypeMetadata)
    ChannelConfigurationMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ChannelConfigurationMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ChannelStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ChannelStatus.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    ChannelStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ChannelType.add_member(:facebook, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FACEBOOK", traits: {"smithy.api#enumValue" => "Facebook"}))
    ChannelType.add_member(:slack, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SLACK", traits: {"smithy.api#enumValue" => "Slack"}))
    ChannelType.add_member(:twilio_sms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TWILIO_SMS", traits: {"smithy.api#enumValue" => "Twilio-Sms"}))
    ChannelType.add_member(:kik, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KIK", traits: {"smithy.api#enumValue" => "Kik"}))
    CodeHook.add_member(:uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaARN, location_name: "uri", traits: {"smithy.api#required" => {}}))
    CodeHook.add_member(:message_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageVersion, location_name: "messageVersion", traits: {"smithy.api#required" => {}}))
    CodeHook.type = Types::CodeHook
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.type = Types::ConflictException
    ContentType.add_member(:plain_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PLAIN_TEXT", traits: {"smithy.api#enumValue" => "PlainText"}))
    ContentType.add_member(:ssml, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SSML", traits: {"smithy.api#enumValue" => "SSML"}))
    ContentType.add_member(:custom_payload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOM_PAYLOAD", traits: {"smithy.api#enumValue" => "CustomPayload"}))
    ConversationLogsRequest.add_member(:log_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogSettingsRequestList, location_name: "logSettings", traits: {"smithy.api#required" => {}}))
    ConversationLogsRequest.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "iamRoleArn", traits: {"smithy.api#required" => {}}))
    ConversationLogsRequest.type = Types::ConversationLogsRequest
    ConversationLogsResponse.add_member(:log_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogSettingsResponseList, location_name: "logSettings"))
    ConversationLogsResponse.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "iamRoleArn"))
    ConversationLogsResponse.type = Types::ConversationLogsResponse
    CreateBotVersionRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBotVersionRequest.add_member(:checksum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "checksum"))
    CreateBotVersionRequest.type = Types::CreateBotVersionRequest
    CreateBotVersionResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "name"))
    CreateBotVersionResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateBotVersionResponse.add_member(:intents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentList, location_name: "intents"))
    CreateBotVersionResponse.add_member(:clarification_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: "clarificationPrompt"))
    CreateBotVersionResponse.add_member(:abort_statement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Statement, location_name: "abortStatement"))
    CreateBotVersionResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    CreateBotVersionResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "failureReason"))
    CreateBotVersionResponse.add_member(:last_updated_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDate"))
    CreateBotVersionResponse.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdDate"))
    CreateBotVersionResponse.add_member(:idle_session_ttl_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionTTL, location_name: "idleSessionTTLInSeconds"))
    CreateBotVersionResponse.add_member(:voice_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "voiceId"))
    CreateBotVersionResponse.add_member(:checksum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "checksum"))
    CreateBotVersionResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    CreateBotVersionResponse.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: "locale"))
    CreateBotVersionResponse.add_member(:child_directed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "childDirected"))
    CreateBotVersionResponse.add_member(:enable_model_improvements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "enableModelImprovements"))
    CreateBotVersionResponse.add_member(:detect_sentiment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "detectSentiment"))
    CreateBotVersionResponse.type = Types::CreateBotVersionResponse
    CreateIntentVersionRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateIntentVersionRequest.add_member(:checksum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "checksum"))
    CreateIntentVersionRequest.type = Types::CreateIntentVersionRequest
    CreateIntentVersionResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentName, location_name: "name"))
    CreateIntentVersionResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateIntentVersionResponse.add_member(:slots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotList, location_name: "slots"))
    CreateIntentVersionResponse.add_member(:sample_utterances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentUtteranceList, location_name: "sampleUtterances"))
    CreateIntentVersionResponse.add_member(:confirmation_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: "confirmationPrompt"))
    CreateIntentVersionResponse.add_member(:rejection_statement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Statement, location_name: "rejectionStatement"))
    CreateIntentVersionResponse.add_member(:follow_up_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FollowUpPrompt, location_name: "followUpPrompt"))
    CreateIntentVersionResponse.add_member(:conclusion_statement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Statement, location_name: "conclusionStatement"))
    CreateIntentVersionResponse.add_member(:dialog_code_hook, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeHook, location_name: "dialogCodeHook"))
    CreateIntentVersionResponse.add_member(:fulfillment_activity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FulfillmentActivity, location_name: "fulfillmentActivity"))
    CreateIntentVersionResponse.add_member(:parent_intent_signature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuiltinIntentSignature, location_name: "parentIntentSignature"))
    CreateIntentVersionResponse.add_member(:last_updated_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDate"))
    CreateIntentVersionResponse.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdDate"))
    CreateIntentVersionResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    CreateIntentVersionResponse.add_member(:checksum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "checksum"))
    CreateIntentVersionResponse.add_member(:kendra_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KendraConfiguration, location_name: "kendraConfiguration"))
    CreateIntentVersionResponse.add_member(:input_contexts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputContextList, location_name: "inputContexts"))
    CreateIntentVersionResponse.add_member(:output_contexts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputContextList, location_name: "outputContexts"))
    CreateIntentVersionResponse.type = Types::CreateIntentVersionResponse
    CreateSlotTypeVersionRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSlotTypeVersionRequest.add_member(:checksum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "checksum"))
    CreateSlotTypeVersionRequest.type = Types::CreateSlotTypeVersionRequest
    CreateSlotTypeVersionResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeName, location_name: "name"))
    CreateSlotTypeVersionResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateSlotTypeVersionResponse.add_member(:enumeration_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnumerationValues, location_name: "enumerationValues"))
    CreateSlotTypeVersionResponse.add_member(:last_updated_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDate"))
    CreateSlotTypeVersionResponse.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdDate"))
    CreateSlotTypeVersionResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    CreateSlotTypeVersionResponse.add_member(:checksum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "checksum"))
    CreateSlotTypeVersionResponse.add_member(:value_selection_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotValueSelectionStrategy, location_name: "valueSelectionStrategy"))
    CreateSlotTypeVersionResponse.add_member(:parent_slot_type_signature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomOrBuiltinSlotTypeName, location_name: "parentSlotTypeSignature"))
    CreateSlotTypeVersionResponse.add_member(:slot_type_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeConfigurations, location_name: "slotTypeConfigurations"))
    CreateSlotTypeVersionResponse.type = Types::CreateSlotTypeVersionResponse
    DeleteBotAliasRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBotAliasRequest.add_member(:bot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "botName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBotAliasRequest.type = Types::DeleteBotAliasRequest
    DeleteBotChannelAssociationRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotChannelName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBotChannelAssociationRequest.add_member(:bot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "botName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBotChannelAssociationRequest.add_member(:bot_alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: "botAlias", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBotChannelAssociationRequest.type = Types::DeleteBotChannelAssociationRequest
    DeleteBotRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBotRequest.type = Types::DeleteBotRequest
    DeleteBotVersionRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBotVersionRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumericalVersion, location_name: "version", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBotVersionRequest.type = Types::DeleteBotVersionRequest
    DeleteIntentRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIntentRequest.type = Types::DeleteIntentRequest
    DeleteIntentVersionRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIntentVersionRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumericalVersion, location_name: "version", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIntentVersionRequest.type = Types::DeleteIntentVersionRequest
    DeleteSlotTypeRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSlotTypeRequest.type = Types::DeleteSlotTypeRequest
    DeleteSlotTypeVersionRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSlotTypeVersionRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumericalVersion, location_name: "version", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSlotTypeVersionRequest.type = Types::DeleteSlotTypeVersionRequest
    DeleteUtterancesRequest.add_member(:bot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "botName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteUtterancesRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: "userId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteUtterancesRequest.type = Types::DeleteUtterancesRequest
    Destination.add_member(:cloudwatch_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CLOUDWATCH_LOGS", traits: {"smithy.api#enumValue" => "CLOUDWATCH_LOGS"}))
    Destination.add_member(:s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    EnumerationValue.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Value, location_name: "value", traits: {"smithy.api#required" => {}}))
    EnumerationValue.add_member(:synonyms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SynonymList, location_name: "synonyms"))
    EnumerationValue.type = Types::EnumerationValue
    EnumerationValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnumerationValue)
    ExportStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ExportStatus.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    ExportStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ExportType.add_member(:alexa_skills_kit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALEXA_SKILLS_KIT", traits: {"smithy.api#enumValue" => "ALEXA_SKILLS_KIT"}))
    ExportType.add_member(:lex, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LEX", traits: {"smithy.api#enumValue" => "LEX"}))
    FollowUpPrompt.add_member(:prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: "prompt", traits: {"smithy.api#required" => {}}))
    FollowUpPrompt.add_member(:rejection_statement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Statement, location_name: "rejectionStatement", traits: {"smithy.api#required" => {}}))
    FollowUpPrompt.type = Types::FollowUpPrompt
    FulfillmentActivity.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FulfillmentActivityType, location_name: "type", traits: {"smithy.api#required" => {}}))
    FulfillmentActivity.add_member(:code_hook, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeHook, location_name: "codeHook"))
    FulfillmentActivity.type = Types::FulfillmentActivity
    FulfillmentActivityType.add_member(:return_intent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RETURN_INTENT", traits: {"smithy.api#enumValue" => "ReturnIntent"}))
    FulfillmentActivityType.add_member(:code_hook, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CODE_HOOK", traits: {"smithy.api#enumValue" => "CodeHook"}))
    GetBotAliasRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBotAliasRequest.add_member(:bot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "botName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBotAliasRequest.type = Types::GetBotAliasRequest
    GetBotAliasResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: "name"))
    GetBotAliasResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetBotAliasResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "botVersion"))
    GetBotAliasResponse.add_member(:bot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "botName"))
    GetBotAliasResponse.add_member(:last_updated_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDate"))
    GetBotAliasResponse.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdDate"))
    GetBotAliasResponse.add_member(:checksum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "checksum"))
    GetBotAliasResponse.add_member(:conversation_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationLogsResponse, location_name: "conversationLogs"))
    GetBotAliasResponse.type = Types::GetBotAliasResponse
    GetBotAliasesRequest.add_member(:bot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "botName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBotAliasesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetBotAliasesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetBotAliasesRequest.add_member(:name_contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: "nameContains", traits: {"smithy.api#httpQuery" => "nameContains"}))
    GetBotAliasesRequest.type = Types::GetBotAliasesRequest
    GetBotAliasesResponse.add_member(:bot_aliases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotAliasMetadataList, location_name: "BotAliases"))
    GetBotAliasesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetBotAliasesResponse.type = Types::GetBotAliasesResponse
    GetBotChannelAssociationRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotChannelName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBotChannelAssociationRequest.add_member(:bot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "botName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBotChannelAssociationRequest.add_member(:bot_alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: "botAlias", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBotChannelAssociationRequest.type = Types::GetBotChannelAssociationRequest
    GetBotChannelAssociationResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotChannelName, location_name: "name"))
    GetBotChannelAssociationResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetBotChannelAssociationResponse.add_member(:bot_alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: "botAlias"))
    GetBotChannelAssociationResponse.add_member(:bot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "botName"))
    GetBotChannelAssociationResponse.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdDate"))
    GetBotChannelAssociationResponse.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelType, location_name: "type"))
    GetBotChannelAssociationResponse.add_member(:bot_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelConfigurationMap, location_name: "botConfiguration"))
    GetBotChannelAssociationResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelStatus, location_name: "status"))
    GetBotChannelAssociationResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "failureReason"))
    GetBotChannelAssociationResponse.type = Types::GetBotChannelAssociationResponse
    GetBotChannelAssociationsRequest.add_member(:bot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "botName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBotChannelAssociationsRequest.add_member(:bot_alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasNameOrListAll, location_name: "botAlias", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBotChannelAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetBotChannelAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetBotChannelAssociationsRequest.add_member(:name_contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotChannelName, location_name: "nameContains", traits: {"smithy.api#httpQuery" => "nameContains"}))
    GetBotChannelAssociationsRequest.type = Types::GetBotChannelAssociationsRequest
    GetBotChannelAssociationsResponse.add_member(:bot_channel_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotChannelAssociationList, location_name: "botChannelAssociations"))
    GetBotChannelAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetBotChannelAssociationsResponse.type = Types::GetBotChannelAssociationsResponse
    GetBotRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBotRequest.add_member(:version_or_alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "versionOrAlias", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBotRequest.type = Types::GetBotRequest
    GetBotResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "name"))
    GetBotResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetBotResponse.add_member(:intents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentList, location_name: "intents"))
    GetBotResponse.add_member(:enable_model_improvements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "enableModelImprovements"))
    GetBotResponse.add_member(:nlu_intent_confidence_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfidenceThreshold, location_name: "nluIntentConfidenceThreshold"))
    GetBotResponse.add_member(:clarification_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: "clarificationPrompt"))
    GetBotResponse.add_member(:abort_statement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Statement, location_name: "abortStatement"))
    GetBotResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    GetBotResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "failureReason"))
    GetBotResponse.add_member(:last_updated_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDate"))
    GetBotResponse.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdDate"))
    GetBotResponse.add_member(:idle_session_ttl_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionTTL, location_name: "idleSessionTTLInSeconds"))
    GetBotResponse.add_member(:voice_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "voiceId"))
    GetBotResponse.add_member(:checksum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "checksum"))
    GetBotResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    GetBotResponse.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: "locale"))
    GetBotResponse.add_member(:child_directed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "childDirected"))
    GetBotResponse.add_member(:detect_sentiment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "detectSentiment"))
    GetBotResponse.type = Types::GetBotResponse
    GetBotVersionsRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBotVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetBotVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetBotVersionsRequest.type = Types::GetBotVersionsRequest
    GetBotVersionsResponse.add_member(:bots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotMetadataList, location_name: "bots"))
    GetBotVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetBotVersionsResponse.type = Types::GetBotVersionsResponse
    GetBotsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetBotsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetBotsRequest.add_member(:name_contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "nameContains", traits: {"smithy.api#httpQuery" => "nameContains"}))
    GetBotsRequest.type = Types::GetBotsRequest
    GetBotsResponse.add_member(:bots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotMetadataList, location_name: "bots"))
    GetBotsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetBotsResponse.type = Types::GetBotsResponse
    GetBuiltinIntentRequest.add_member(:signature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuiltinIntentSignature, location_name: "signature", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBuiltinIntentRequest.type = Types::GetBuiltinIntentRequest
    GetBuiltinIntentResponse.add_member(:signature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuiltinIntentSignature, location_name: "signature"))
    GetBuiltinIntentResponse.add_member(:supported_locales, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocaleList, location_name: "supportedLocales"))
    GetBuiltinIntentResponse.add_member(:slots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuiltinIntentSlotList, location_name: "slots"))
    GetBuiltinIntentResponse.type = Types::GetBuiltinIntentResponse
    GetBuiltinIntentsRequest.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: "locale", traits: {"smithy.api#httpQuery" => "locale"}))
    GetBuiltinIntentsRequest.add_member(:signature_contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "signatureContains", traits: {"smithy.api#httpQuery" => "signatureContains"}))
    GetBuiltinIntentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetBuiltinIntentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetBuiltinIntentsRequest.type = Types::GetBuiltinIntentsRequest
    GetBuiltinIntentsResponse.add_member(:intents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuiltinIntentMetadataList, location_name: "intents"))
    GetBuiltinIntentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetBuiltinIntentsResponse.type = Types::GetBuiltinIntentsResponse
    GetBuiltinSlotTypesRequest.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: "locale", traits: {"smithy.api#httpQuery" => "locale"}))
    GetBuiltinSlotTypesRequest.add_member(:signature_contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "signatureContains", traits: {"smithy.api#httpQuery" => "signatureContains"}))
    GetBuiltinSlotTypesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetBuiltinSlotTypesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetBuiltinSlotTypesRequest.type = Types::GetBuiltinSlotTypesRequest
    GetBuiltinSlotTypesResponse.add_member(:slot_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuiltinSlotTypeMetadataList, location_name: "slotTypes"))
    GetBuiltinSlotTypesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetBuiltinSlotTypesResponse.type = Types::GetBuiltinSlotTypesResponse
    GetExportRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "name", traits: {"smithy.api#httpQuery" => "name", "smithy.api#required" => {}}))
    GetExportRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumericalVersion, location_name: "version", traits: {"smithy.api#httpQuery" => "version", "smithy.api#required" => {}}))
    GetExportRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType", traits: {"smithy.api#httpQuery" => "resourceType", "smithy.api#required" => {}}))
    GetExportRequest.add_member(:export_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportType, location_name: "exportType", traits: {"smithy.api#httpQuery" => "exportType", "smithy.api#required" => {}}))
    GetExportRequest.type = Types::GetExportRequest
    GetExportResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    GetExportResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumericalVersion, location_name: "version"))
    GetExportResponse.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    GetExportResponse.add_member(:export_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportType, location_name: "exportType"))
    GetExportResponse.add_member(:export_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportStatus, location_name: "exportStatus"))
    GetExportResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "failureReason"))
    GetExportResponse.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "url"))
    GetExportResponse.type = Types::GetExportResponse
    GetImportRequest.add_member(:import_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "importId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImportRequest.type = Types::GetImportRequest
    GetImportResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    GetImportResponse.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    GetImportResponse.add_member(:merge_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MergeStrategy, location_name: "mergeStrategy"))
    GetImportResponse.add_member(:import_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "importId"))
    GetImportResponse.add_member(:import_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportStatus, location_name: "importStatus"))
    GetImportResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "failureReason"))
    GetImportResponse.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdDate"))
    GetImportResponse.type = Types::GetImportResponse
    GetIntentRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntentRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "version", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntentRequest.type = Types::GetIntentRequest
    GetIntentResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentName, location_name: "name"))
    GetIntentResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetIntentResponse.add_member(:slots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotList, location_name: "slots"))
    GetIntentResponse.add_member(:sample_utterances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentUtteranceList, location_name: "sampleUtterances"))
    GetIntentResponse.add_member(:confirmation_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: "confirmationPrompt"))
    GetIntentResponse.add_member(:rejection_statement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Statement, location_name: "rejectionStatement"))
    GetIntentResponse.add_member(:follow_up_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FollowUpPrompt, location_name: "followUpPrompt"))
    GetIntentResponse.add_member(:conclusion_statement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Statement, location_name: "conclusionStatement"))
    GetIntentResponse.add_member(:dialog_code_hook, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeHook, location_name: "dialogCodeHook"))
    GetIntentResponse.add_member(:fulfillment_activity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FulfillmentActivity, location_name: "fulfillmentActivity"))
    GetIntentResponse.add_member(:parent_intent_signature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuiltinIntentSignature, location_name: "parentIntentSignature"))
    GetIntentResponse.add_member(:last_updated_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDate"))
    GetIntentResponse.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdDate"))
    GetIntentResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    GetIntentResponse.add_member(:checksum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "checksum"))
    GetIntentResponse.add_member(:kendra_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KendraConfiguration, location_name: "kendraConfiguration"))
    GetIntentResponse.add_member(:input_contexts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputContextList, location_name: "inputContexts"))
    GetIntentResponse.add_member(:output_contexts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputContextList, location_name: "outputContexts"))
    GetIntentResponse.type = Types::GetIntentResponse
    GetIntentVersionsRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntentVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetIntentVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetIntentVersionsRequest.type = Types::GetIntentVersionsRequest
    GetIntentVersionsResponse.add_member(:intents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentMetadataList, location_name: "intents"))
    GetIntentVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetIntentVersionsResponse.type = Types::GetIntentVersionsResponse
    GetIntentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetIntentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetIntentsRequest.add_member(:name_contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentName, location_name: "nameContains", traits: {"smithy.api#httpQuery" => "nameContains"}))
    GetIntentsRequest.type = Types::GetIntentsRequest
    GetIntentsResponse.add_member(:intents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentMetadataList, location_name: "intents"))
    GetIntentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetIntentsResponse.type = Types::GetIntentsResponse
    GetMigrationRequest.add_member(:migration_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationId, location_name: "migrationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMigrationRequest.type = Types::GetMigrationRequest
    GetMigrationResponse.add_member(:migration_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationId, location_name: "migrationId"))
    GetMigrationResponse.add_member(:v1_bot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "v1BotName"))
    GetMigrationResponse.add_member(:v1_bot_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "v1BotVersion"))
    GetMigrationResponse.add_member(:v1_bot_locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: "v1BotLocale"))
    GetMigrationResponse.add_member(:v2_bot_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: V2BotId, location_name: "v2BotId"))
    GetMigrationResponse.add_member(:v2_bot_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "v2BotRole"))
    GetMigrationResponse.add_member(:migration_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationStatus, location_name: "migrationStatus"))
    GetMigrationResponse.add_member(:migration_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationStrategy, location_name: "migrationStrategy"))
    GetMigrationResponse.add_member(:migration_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "migrationTimestamp"))
    GetMigrationResponse.add_member(:alerts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationAlerts, location_name: "alerts"))
    GetMigrationResponse.type = Types::GetMigrationResponse
    GetMigrationsRequest.add_member(:sort_by_attribute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationSortAttribute, location_name: "sortByAttribute", traits: {"smithy.api#httpQuery" => "sortByAttribute"}))
    GetMigrationsRequest.add_member(:sort_by_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortByOrder", traits: {"smithy.api#httpQuery" => "sortByOrder"}))
    GetMigrationsRequest.add_member(:v1_bot_name_contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "v1BotNameContains", traits: {"smithy.api#httpQuery" => "v1BotNameContains"}))
    GetMigrationsRequest.add_member(:migration_status_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationStatus, location_name: "migrationStatusEquals", traits: {"smithy.api#httpQuery" => "migrationStatusEquals"}))
    GetMigrationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetMigrationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetMigrationsRequest.type = Types::GetMigrationsRequest
    GetMigrationsResponse.add_member(:migration_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationSummaryList, location_name: "migrationSummaries"))
    GetMigrationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetMigrationsResponse.type = Types::GetMigrationsResponse
    GetSlotTypeRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSlotTypeRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "version", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSlotTypeRequest.type = Types::GetSlotTypeRequest
    GetSlotTypeResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeName, location_name: "name"))
    GetSlotTypeResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetSlotTypeResponse.add_member(:enumeration_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnumerationValues, location_name: "enumerationValues"))
    GetSlotTypeResponse.add_member(:last_updated_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDate"))
    GetSlotTypeResponse.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdDate"))
    GetSlotTypeResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    GetSlotTypeResponse.add_member(:checksum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "checksum"))
    GetSlotTypeResponse.add_member(:value_selection_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotValueSelectionStrategy, location_name: "valueSelectionStrategy"))
    GetSlotTypeResponse.add_member(:parent_slot_type_signature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomOrBuiltinSlotTypeName, location_name: "parentSlotTypeSignature"))
    GetSlotTypeResponse.add_member(:slot_type_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeConfigurations, location_name: "slotTypeConfigurations"))
    GetSlotTypeResponse.type = Types::GetSlotTypeResponse
    GetSlotTypeVersionsRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSlotTypeVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetSlotTypeVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetSlotTypeVersionsRequest.type = Types::GetSlotTypeVersionsRequest
    GetSlotTypeVersionsResponse.add_member(:slot_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeMetadataList, location_name: "slotTypes"))
    GetSlotTypeVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetSlotTypeVersionsResponse.type = Types::GetSlotTypeVersionsResponse
    GetSlotTypesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetSlotTypesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetSlotTypesRequest.add_member(:name_contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeName, location_name: "nameContains", traits: {"smithy.api#httpQuery" => "nameContains"}))
    GetSlotTypesRequest.type = Types::GetSlotTypesRequest
    GetSlotTypesResponse.add_member(:slot_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeMetadataList, location_name: "slotTypes"))
    GetSlotTypesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetSlotTypesResponse.type = Types::GetSlotTypesResponse
    GetUtterancesViewRequest.add_member(:bot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "botName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUtterancesViewRequest.add_member(:bot_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotVersions, location_name: "botVersions", traits: {"smithy.api#httpQuery" => "bot_versions", "smithy.api#required" => {}}))
    GetUtterancesViewRequest.add_member(:status_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusType, location_name: "statusType", traits: {"smithy.api#httpQuery" => "status_type", "smithy.api#required" => {}}))
    GetUtterancesViewRequest.type = Types::GetUtterancesViewRequest
    GetUtterancesViewResponse.add_member(:bot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "botName"))
    GetUtterancesViewResponse.add_member(:utterances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListsOfUtterances, location_name: "utterances"))
    GetUtterancesViewResponse.type = Types::GetUtterancesViewResponse
    ImportStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ImportStatus.add_member(:complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    ImportStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    InputContext.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputContextName, location_name: "name", traits: {"smithy.api#required" => {}}))
    InputContext.type = Types::InputContext
    InputContextList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputContext)
    Intent.add_member(:intent_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentName, location_name: "intentName", traits: {"smithy.api#required" => {}}))
    Intent.add_member(:intent_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "intentVersion", traits: {"smithy.api#required" => {}}))
    Intent.type = Types::Intent
    IntentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Intent)
    IntentMetadata.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentName, location_name: "name"))
    IntentMetadata.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    IntentMetadata.add_member(:last_updated_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDate"))
    IntentMetadata.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdDate"))
    IntentMetadata.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    IntentMetadata.type = Types::IntentMetadata
    IntentMetadataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentMetadata)
    IntentUtteranceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Utterance)
    InternalFailureException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalFailureException.type = Types::InternalFailureException
    KendraConfiguration.add_member(:kendra_index, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KendraIndexArn, location_name: "kendraIndex", traits: {"smithy.api#required" => {}}))
    KendraConfiguration.add_member(:query_filter_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryFilterString, location_name: "queryFilterString"))
    KendraConfiguration.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: "role", traits: {"smithy.api#required" => {}}))
    KendraConfiguration.type = Types::KendraConfiguration
    LimitExceededException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListOfUtterance.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UtteranceData)
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListsOfUtterances.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UtteranceList)
    Locale.add_member(:de_de, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DE_DE", traits: {"smithy.api#enumValue" => "de-DE"}))
    Locale.add_member(:en_au, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EN_AU", traits: {"smithy.api#enumValue" => "en-AU"}))
    Locale.add_member(:en_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EN_GB", traits: {"smithy.api#enumValue" => "en-GB"}))
    Locale.add_member(:en_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EN_IN", traits: {"smithy.api#enumValue" => "en-IN"}))
    Locale.add_member(:en_us, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EN_US", traits: {"smithy.api#enumValue" => "en-US"}))
    Locale.add_member(:es_419, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ES_419", traits: {"smithy.api#enumValue" => "es-419"}))
    Locale.add_member(:es_es, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ES_ES", traits: {"smithy.api#enumValue" => "es-ES"}))
    Locale.add_member(:es_us, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ES_US", traits: {"smithy.api#enumValue" => "es-US"}))
    Locale.add_member(:fr_fr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FR_FR", traits: {"smithy.api#enumValue" => "fr-FR"}))
    Locale.add_member(:fr_ca, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FR_CA", traits: {"smithy.api#enumValue" => "fr-CA"}))
    Locale.add_member(:it_it, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IT_IT", traits: {"smithy.api#enumValue" => "it-IT"}))
    Locale.add_member(:ja_jp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JA_JP", traits: {"smithy.api#enumValue" => "ja-JP"}))
    Locale.add_member(:ko_kr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KO_KR", traits: {"smithy.api#enumValue" => "ko-KR"}))
    LocaleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Locale)
    LogSettingsRequest.add_member(:log_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogType, location_name: "logType", traits: {"smithy.api#required" => {}}))
    LogSettingsRequest.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: "destination", traits: {"smithy.api#required" => {}}))
    LogSettingsRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    LogSettingsRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    LogSettingsRequest.type = Types::LogSettingsRequest
    LogSettingsRequestList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogSettingsRequest)
    LogSettingsResponse.add_member(:log_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogType, location_name: "logType"))
    LogSettingsResponse.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: "destination"))
    LogSettingsResponse.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    LogSettingsResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn"))
    LogSettingsResponse.add_member(:resource_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePrefix, location_name: "resourcePrefix"))
    LogSettingsResponse.type = Types::LogSettingsResponse
    LogSettingsResponseList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogSettingsResponse)
    LogType.add_member(:audio, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUDIO", traits: {"smithy.api#enumValue" => "AUDIO"}))
    LogType.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEXT", traits: {"smithy.api#enumValue" => "TEXT"}))
    MergeStrategy.add_member(:overwrite_latest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OVERWRITE_LATEST", traits: {"smithy.api#enumValue" => "OVERWRITE_LATEST"}))
    MergeStrategy.add_member(:fail_on_conflict, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAIL_ON_CONFLICT", traits: {"smithy.api#enumValue" => "FAIL_ON_CONFLICT"}))
    Message.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: "contentType", traits: {"smithy.api#required" => {}}))
    Message.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentString, location_name: "content", traits: {"smithy.api#required" => {}}))
    Message.add_member(:group_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupNumber, location_name: "groupNumber"))
    Message.type = Types::Message
    MessageList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message)
    MigrationAlert.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationAlertType, location_name: "type"))
    MigrationAlert.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationAlertMessage, location_name: "message"))
    MigrationAlert.add_member(:details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationAlertDetails, location_name: "details"))
    MigrationAlert.add_member(:reference_ur_ls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationAlertReferenceURLs, location_name: "referenceURLs"))
    MigrationAlert.type = Types::MigrationAlert
    MigrationAlertDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationAlertDetail)
    MigrationAlertReferenceURLs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationAlertReferenceURL)
    MigrationAlertType.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    MigrationAlertType.add_member(:warn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WARN", traits: {"smithy.api#enumValue" => "WARN"}))
    MigrationAlerts.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationAlert)
    MigrationSortAttribute.add_member(:v1_bot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "V1_BOT_NAME", traits: {"smithy.api#enumValue" => "V1_BOT_NAME"}))
    MigrationSortAttribute.add_member(:migration_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MIGRATION_DATE_TIME", traits: {"smithy.api#enumValue" => "MIGRATION_DATE_TIME"}))
    MigrationStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    MigrationStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    MigrationStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    MigrationStrategy.add_member(:create_new, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATE_NEW", traits: {"smithy.api#enumValue" => "CREATE_NEW"}))
    MigrationStrategy.add_member(:update_existing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE_EXISTING", traits: {"smithy.api#enumValue" => "UPDATE_EXISTING"}))
    MigrationSummary.add_member(:migration_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationId, location_name: "migrationId"))
    MigrationSummary.add_member(:v1_bot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "v1BotName"))
    MigrationSummary.add_member(:v1_bot_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "v1BotVersion"))
    MigrationSummary.add_member(:v1_bot_locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: "v1BotLocale"))
    MigrationSummary.add_member(:v2_bot_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: V2BotId, location_name: "v2BotId"))
    MigrationSummary.add_member(:v2_bot_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "v2BotRole"))
    MigrationSummary.add_member(:migration_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationStatus, location_name: "migrationStatus"))
    MigrationSummary.add_member(:migration_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationStrategy, location_name: "migrationStrategy"))
    MigrationSummary.add_member(:migration_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "migrationTimestamp"))
    MigrationSummary.type = Types::MigrationSummary
    MigrationSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationSummary)
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    NotFoundException.type = Types::NotFoundException
    ObfuscationSetting.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ObfuscationSetting.add_member(:default_obfuscation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEFAULT_OBFUSCATION", traits: {"smithy.api#enumValue" => "DEFAULT_OBFUSCATION"}))
    OutputContext.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputContextName, location_name: "name", traits: {"smithy.api#required" => {}}))
    OutputContext.add_member(:time_to_live_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContextTimeToLiveInSeconds, location_name: "timeToLiveInSeconds", traits: {"smithy.api#required" => {}}))
    OutputContext.add_member(:turns_to_live, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContextTurnsToLive, location_name: "turnsToLive", traits: {"smithy.api#required" => {}}))
    OutputContext.type = Types::OutputContext
    OutputContextList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputContext)
    PreconditionFailedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    PreconditionFailedException.type = Types::PreconditionFailedException
    ProcessBehavior.add_member(:save, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SAVE", traits: {"smithy.api#enumValue" => "SAVE"}))
    ProcessBehavior.add_member(:build, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BUILD", traits: {"smithy.api#enumValue" => "BUILD"}))
    Prompt.add_member(:messages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageList, location_name: "messages", traits: {"smithy.api#required" => {}}))
    Prompt.add_member(:max_attempts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromptMaxAttempts, location_name: "maxAttempts", traits: {"smithy.api#required" => {}}))
    Prompt.add_member(:response_card, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseCard, location_name: "responseCard"))
    Prompt.type = Types::Prompt
    PutBotAliasRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutBotAliasRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    PutBotAliasRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "botVersion", traits: {"smithy.api#required" => {}}))
    PutBotAliasRequest.add_member(:bot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "botName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutBotAliasRequest.add_member(:checksum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "checksum"))
    PutBotAliasRequest.add_member(:conversation_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationLogsRequest, location_name: "conversationLogs"))
    PutBotAliasRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    PutBotAliasRequest.type = Types::PutBotAliasRequest
    PutBotAliasResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: "name"))
    PutBotAliasResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    PutBotAliasResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "botVersion"))
    PutBotAliasResponse.add_member(:bot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "botName"))
    PutBotAliasResponse.add_member(:last_updated_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDate"))
    PutBotAliasResponse.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdDate"))
    PutBotAliasResponse.add_member(:checksum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "checksum"))
    PutBotAliasResponse.add_member(:conversation_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationLogsResponse, location_name: "conversationLogs"))
    PutBotAliasResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    PutBotAliasResponse.type = Types::PutBotAliasResponse
    PutBotRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutBotRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    PutBotRequest.add_member(:intents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentList, location_name: "intents"))
    PutBotRequest.add_member(:enable_model_improvements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "enableModelImprovements"))
    PutBotRequest.add_member(:nlu_intent_confidence_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfidenceThreshold, location_name: "nluIntentConfidenceThreshold"))
    PutBotRequest.add_member(:clarification_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: "clarificationPrompt"))
    PutBotRequest.add_member(:abort_statement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Statement, location_name: "abortStatement"))
    PutBotRequest.add_member(:idle_session_ttl_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionTTL, location_name: "idleSessionTTLInSeconds"))
    PutBotRequest.add_member(:voice_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "voiceId"))
    PutBotRequest.add_member(:checksum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "checksum"))
    PutBotRequest.add_member(:process_behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessBehavior, location_name: "processBehavior"))
    PutBotRequest.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: "locale", traits: {"smithy.api#required" => {}}))
    PutBotRequest.add_member(:child_directed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "childDirected", traits: {"smithy.api#required" => {}}))
    PutBotRequest.add_member(:detect_sentiment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "detectSentiment"))
    PutBotRequest.add_member(:create_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "createVersion"))
    PutBotRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    PutBotRequest.type = Types::PutBotRequest
    PutBotResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "name"))
    PutBotResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    PutBotResponse.add_member(:intents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentList, location_name: "intents"))
    PutBotResponse.add_member(:enable_model_improvements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "enableModelImprovements"))
    PutBotResponse.add_member(:nlu_intent_confidence_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfidenceThreshold, location_name: "nluIntentConfidenceThreshold"))
    PutBotResponse.add_member(:clarification_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: "clarificationPrompt"))
    PutBotResponse.add_member(:abort_statement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Statement, location_name: "abortStatement"))
    PutBotResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    PutBotResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "failureReason"))
    PutBotResponse.add_member(:last_updated_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDate"))
    PutBotResponse.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdDate"))
    PutBotResponse.add_member(:idle_session_ttl_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionTTL, location_name: "idleSessionTTLInSeconds"))
    PutBotResponse.add_member(:voice_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "voiceId"))
    PutBotResponse.add_member(:checksum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "checksum"))
    PutBotResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    PutBotResponse.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: "locale"))
    PutBotResponse.add_member(:child_directed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "childDirected"))
    PutBotResponse.add_member(:create_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "createVersion"))
    PutBotResponse.add_member(:detect_sentiment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "detectSentiment"))
    PutBotResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    PutBotResponse.type = Types::PutBotResponse
    PutIntentRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutIntentRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    PutIntentRequest.add_member(:slots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotList, location_name: "slots"))
    PutIntentRequest.add_member(:sample_utterances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentUtteranceList, location_name: "sampleUtterances"))
    PutIntentRequest.add_member(:confirmation_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: "confirmationPrompt"))
    PutIntentRequest.add_member(:rejection_statement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Statement, location_name: "rejectionStatement"))
    PutIntentRequest.add_member(:follow_up_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FollowUpPrompt, location_name: "followUpPrompt"))
    PutIntentRequest.add_member(:conclusion_statement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Statement, location_name: "conclusionStatement"))
    PutIntentRequest.add_member(:dialog_code_hook, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeHook, location_name: "dialogCodeHook"))
    PutIntentRequest.add_member(:fulfillment_activity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FulfillmentActivity, location_name: "fulfillmentActivity"))
    PutIntentRequest.add_member(:parent_intent_signature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuiltinIntentSignature, location_name: "parentIntentSignature"))
    PutIntentRequest.add_member(:checksum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "checksum"))
    PutIntentRequest.add_member(:create_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "createVersion"))
    PutIntentRequest.add_member(:kendra_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KendraConfiguration, location_name: "kendraConfiguration"))
    PutIntentRequest.add_member(:input_contexts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputContextList, location_name: "inputContexts"))
    PutIntentRequest.add_member(:output_contexts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputContextList, location_name: "outputContexts"))
    PutIntentRequest.type = Types::PutIntentRequest
    PutIntentResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentName, location_name: "name"))
    PutIntentResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    PutIntentResponse.add_member(:slots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotList, location_name: "slots"))
    PutIntentResponse.add_member(:sample_utterances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentUtteranceList, location_name: "sampleUtterances"))
    PutIntentResponse.add_member(:confirmation_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: "confirmationPrompt"))
    PutIntentResponse.add_member(:rejection_statement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Statement, location_name: "rejectionStatement"))
    PutIntentResponse.add_member(:follow_up_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FollowUpPrompt, location_name: "followUpPrompt"))
    PutIntentResponse.add_member(:conclusion_statement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Statement, location_name: "conclusionStatement"))
    PutIntentResponse.add_member(:dialog_code_hook, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeHook, location_name: "dialogCodeHook"))
    PutIntentResponse.add_member(:fulfillment_activity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FulfillmentActivity, location_name: "fulfillmentActivity"))
    PutIntentResponse.add_member(:parent_intent_signature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuiltinIntentSignature, location_name: "parentIntentSignature"))
    PutIntentResponse.add_member(:last_updated_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDate"))
    PutIntentResponse.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdDate"))
    PutIntentResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    PutIntentResponse.add_member(:checksum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "checksum"))
    PutIntentResponse.add_member(:create_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "createVersion"))
    PutIntentResponse.add_member(:kendra_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KendraConfiguration, location_name: "kendraConfiguration"))
    PutIntentResponse.add_member(:input_contexts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputContextList, location_name: "inputContexts"))
    PutIntentResponse.add_member(:output_contexts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputContextList, location_name: "outputContexts"))
    PutIntentResponse.type = Types::PutIntentResponse
    PutSlotTypeRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutSlotTypeRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    PutSlotTypeRequest.add_member(:enumeration_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnumerationValues, location_name: "enumerationValues"))
    PutSlotTypeRequest.add_member(:checksum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "checksum"))
    PutSlotTypeRequest.add_member(:value_selection_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotValueSelectionStrategy, location_name: "valueSelectionStrategy"))
    PutSlotTypeRequest.add_member(:create_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "createVersion"))
    PutSlotTypeRequest.add_member(:parent_slot_type_signature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomOrBuiltinSlotTypeName, location_name: "parentSlotTypeSignature"))
    PutSlotTypeRequest.add_member(:slot_type_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeConfigurations, location_name: "slotTypeConfigurations"))
    PutSlotTypeRequest.type = Types::PutSlotTypeRequest
    PutSlotTypeResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeName, location_name: "name"))
    PutSlotTypeResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    PutSlotTypeResponse.add_member(:enumeration_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnumerationValues, location_name: "enumerationValues"))
    PutSlotTypeResponse.add_member(:last_updated_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDate"))
    PutSlotTypeResponse.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdDate"))
    PutSlotTypeResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    PutSlotTypeResponse.add_member(:checksum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "checksum"))
    PutSlotTypeResponse.add_member(:value_selection_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotValueSelectionStrategy, location_name: "valueSelectionStrategy"))
    PutSlotTypeResponse.add_member(:create_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "createVersion"))
    PutSlotTypeResponse.add_member(:parent_slot_type_signature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomOrBuiltinSlotTypeName, location_name: "parentSlotTypeSignature"))
    PutSlotTypeResponse.add_member(:slot_type_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeConfigurations, location_name: "slotTypeConfigurations"))
    PutSlotTypeResponse.type = Types::PutSlotTypeResponse
    ReferenceType.add_member(:intent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTENT", traits: {"smithy.api#enumValue" => "Intent"}))
    ReferenceType.add_member(:bot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BOT", traits: {"smithy.api#enumValue" => "Bot"}))
    ReferenceType.add_member(:botalias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BOTALIAS", traits: {"smithy.api#enumValue" => "BotAlias"}))
    ReferenceType.add_member(:botchannel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BOTCHANNEL", traits: {"smithy.api#enumValue" => "BotChannel"}))
    ResourceInUseException.add_member(:reference_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceType, location_name: "referenceType"))
    ResourceInUseException.add_member(:example_reference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceReference, location_name: "exampleReference"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceReference.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    ResourceReference.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    ResourceReference.type = Types::ResourceReference
    ResourceType.add_member(:bot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BOT", traits: {"smithy.api#enumValue" => "BOT"}))
    ResourceType.add_member(:intent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTENT", traits: {"smithy.api#enumValue" => "INTENT"}))
    ResourceType.add_member(:slot_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SLOT_TYPE", traits: {"smithy.api#enumValue" => "SLOT_TYPE"}))
    Slot.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotName, location_name: "name", traits: {"smithy.api#required" => {}}))
    Slot.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    Slot.add_member(:slot_constraint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotConstraint, location_name: "slotConstraint", traits: {"smithy.api#required" => {}}))
    Slot.add_member(:slot_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomOrBuiltinSlotTypeName, location_name: "slotType"))
    Slot.add_member(:slot_type_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "slotTypeVersion"))
    Slot.add_member(:value_elicitation_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: "valueElicitationPrompt"))
    Slot.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: "priority"))
    Slot.add_member(:sample_utterances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotUtteranceList, location_name: "sampleUtterances"))
    Slot.add_member(:response_card, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseCard, location_name: "responseCard"))
    Slot.add_member(:obfuscation_setting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObfuscationSetting, location_name: "obfuscationSetting"))
    Slot.add_member(:default_value_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotDefaultValueSpec, location_name: "defaultValueSpec"))
    Slot.type = Types::Slot
    SlotConstraint.add_member(:required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REQUIRED", traits: {"smithy.api#enumValue" => "Required"}))
    SlotConstraint.add_member(:optional, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OPTIONAL", traits: {"smithy.api#enumValue" => "Optional"}))
    SlotDefaultValue.add_member(:default_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotDefaultValueString, location_name: "defaultValue", traits: {"smithy.api#required" => {}}))
    SlotDefaultValue.type = Types::SlotDefaultValue
    SlotDefaultValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotDefaultValue)
    SlotDefaultValueSpec.add_member(:default_value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotDefaultValueList, location_name: "defaultValueList", traits: {"smithy.api#required" => {}}))
    SlotDefaultValueSpec.type = Types::SlotDefaultValueSpec
    SlotList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Slot)
    SlotTypeConfiguration.add_member(:regex_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeRegexConfiguration, location_name: "regexConfiguration"))
    SlotTypeConfiguration.type = Types::SlotTypeConfiguration
    SlotTypeConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeConfiguration)
    SlotTypeMetadata.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeName, location_name: "name"))
    SlotTypeMetadata.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    SlotTypeMetadata.add_member(:last_updated_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDate"))
    SlotTypeMetadata.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdDate"))
    SlotTypeMetadata.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    SlotTypeMetadata.type = Types::SlotTypeMetadata
    SlotTypeMetadataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeMetadata)
    SlotTypeRegexConfiguration.add_member(:pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegexPattern, location_name: "pattern", traits: {"smithy.api#required" => {}}))
    SlotTypeRegexConfiguration.type = Types::SlotTypeRegexConfiguration
    SlotUtteranceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Utterance)
    SlotValueSelectionStrategy.add_member(:original_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ORIGINAL_VALUE", traits: {"smithy.api#enumValue" => "ORIGINAL_VALUE"}))
    SlotValueSelectionStrategy.add_member(:top_resolution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TOP_RESOLUTION", traits: {"smithy.api#enumValue" => "TOP_RESOLUTION"}))
    SortOrder.add_member(:ascending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASCENDING", traits: {"smithy.api#enumValue" => "ASCENDING"}))
    SortOrder.add_member(:descending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DESCENDING", traits: {"smithy.api#enumValue" => "DESCENDING"}))
    StartImportRequest.add_member(:payload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: "payload", traits: {"smithy.api#required" => {}}))
    StartImportRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    StartImportRequest.add_member(:merge_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MergeStrategy, location_name: "mergeStrategy", traits: {"smithy.api#required" => {}}))
    StartImportRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    StartImportRequest.type = Types::StartImportRequest
    StartImportResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    StartImportResponse.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    StartImportResponse.add_member(:merge_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MergeStrategy, location_name: "mergeStrategy"))
    StartImportResponse.add_member(:import_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "importId"))
    StartImportResponse.add_member(:import_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportStatus, location_name: "importStatus"))
    StartImportResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    StartImportResponse.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdDate"))
    StartImportResponse.type = Types::StartImportResponse
    StartMigrationRequest.add_member(:v1_bot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "v1BotName", traits: {"smithy.api#required" => {}}))
    StartMigrationRequest.add_member(:v1_bot_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "v1BotVersion", traits: {"smithy.api#required" => {}}))
    StartMigrationRequest.add_member(:v2_bot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: V2BotName, location_name: "v2BotName", traits: {"smithy.api#required" => {}}))
    StartMigrationRequest.add_member(:v2_bot_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "v2BotRole", traits: {"smithy.api#required" => {}}))
    StartMigrationRequest.add_member(:migration_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationStrategy, location_name: "migrationStrategy", traits: {"smithy.api#required" => {}}))
    StartMigrationRequest.type = Types::StartMigrationRequest
    StartMigrationResponse.add_member(:v1_bot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: "v1BotName"))
    StartMigrationResponse.add_member(:v1_bot_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "v1BotVersion"))
    StartMigrationResponse.add_member(:v1_bot_locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: "v1BotLocale"))
    StartMigrationResponse.add_member(:v2_bot_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: V2BotId, location_name: "v2BotId"))
    StartMigrationResponse.add_member(:v2_bot_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "v2BotRole"))
    StartMigrationResponse.add_member(:migration_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationId, location_name: "migrationId"))
    StartMigrationResponse.add_member(:migration_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationStrategy, location_name: "migrationStrategy"))
    StartMigrationResponse.add_member(:migration_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "migrationTimestamp"))
    StartMigrationResponse.type = Types::StartMigrationResponse
    Statement.add_member(:messages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageList, location_name: "messages", traits: {"smithy.api#required" => {}}))
    Statement.add_member(:response_card, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseCard, location_name: "responseCard"))
    Statement.type = Types::Statement
    Status.add_member(:building, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BUILDING", traits: {"smithy.api#enumValue" => "BUILDING"}))
    Status.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    Status.add_member(:ready_basic_testing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "READY_BASIC_TESTING", traits: {"smithy.api#enumValue" => "READY_BASIC_TESTING"}))
    Status.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    Status.add_member(:not_built, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_BUILT", traits: {"smithy.api#enumValue" => "NOT_BUILT"}))
    StatusType.add_member(:detected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DETECTED", traits: {"smithy.api#enumValue" => "Detected"}))
    StatusType.add_member(:missed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MISSED", traits: {"smithy.api#enumValue" => "Missed"}))
    StringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    SynonymList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Value)
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: "key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UtteranceData.add_member(:utterance_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UtteranceString, location_name: "utteranceString"))
    UtteranceData.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: "count"))
    UtteranceData.add_member(:distinct_users, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: "distinctUsers"))
    UtteranceData.add_member(:first_uttered_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "firstUtteredDate"))
    UtteranceData.add_member(:last_uttered_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUtteredDate"))
    UtteranceData.type = Types::UtteranceData
    UtteranceList.add_member(:bot_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "botVersion"))
    UtteranceList.add_member(:utterances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfUtterance, location_name: "utterances"))
    UtteranceList.type = Types::UtteranceList

    AWSDeepSenseModelBuildingService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.lexmodelbuildingservice#AWSDeepSenseModelBuildingService"
      service.name = "AWSDeepSenseModelBuildingService"
      service.version = "2017-04-19"
      service.traits = {"aws.api#service" => {"sdkId" => "Lex Model Building Service", "arnNamespace" => "lex", "cloudFormationName" => "LexModelBuildingService", "cloudTrailEventSource" => "lexmodelbuildingservice.amazonaws.com", "docId" => "lex-models-2017-04-19", "endpointPrefix" => "models.lex"}, "aws.auth#sigv4" => {"name" => "lex"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Lex Model Building Service"}
      service.add_operation(:create_bot_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#CreateBotVersion"
        operation.name = "CreateBotVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBotVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBotVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots/{name}/versions", "code" => 201}}
      end)
      service.add_operation(:create_intent_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#CreateIntentVersion"
        operation.name = "CreateIntentVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIntentVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIntentVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/intents/{name}/versions", "code" => 201}}
      end)
      service.add_operation(:create_slot_type_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#CreateSlotTypeVersion"
        operation.name = "CreateSlotTypeVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSlotTypeVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSlotTypeVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/slottypes/{name}/versions", "code" => 201}}
      end)
      service.add_operation(:delete_bot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#DeleteBot"
        operation.name = "DeleteBot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBotRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/bots/{name}", "code" => 204}}
      end)
      service.add_operation(:delete_bot_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#DeleteBotAlias"
        operation.name = "DeleteBotAlias"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBotAliasRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/bots/{botName}/aliases/{name}", "code" => 204}}
      end)
      service.add_operation(:delete_bot_channel_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#DeleteBotChannelAssociation"
        operation.name = "DeleteBotChannelAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBotChannelAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/bots/{botName}/aliases/{botAlias}/channels/{name}", "code" => 204}}
      end)
      service.add_operation(:delete_bot_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#DeleteBotVersion"
        operation.name = "DeleteBotVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBotVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/bots/{name}/versions/{version}", "code" => 204}}
      end)
      service.add_operation(:delete_intent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#DeleteIntent"
        operation.name = "DeleteIntent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIntentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/intents/{name}", "code" => 204}}
      end)
      service.add_operation(:delete_intent_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#DeleteIntentVersion"
        operation.name = "DeleteIntentVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIntentVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/intents/{name}/versions/{version}", "code" => 204}}
      end)
      service.add_operation(:delete_slot_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#DeleteSlotType"
        operation.name = "DeleteSlotType"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSlotTypeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/slottypes/{name}", "code" => 204}}
      end)
      service.add_operation(:delete_slot_type_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#DeleteSlotTypeVersion"
        operation.name = "DeleteSlotTypeVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSlotTypeVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/slottypes/{name}/version/{version}", "code" => 204}}
      end)
      service.add_operation(:delete_utterances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#DeleteUtterances"
        operation.name = "DeleteUtterances"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUtterancesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/bots/{botName}/utterances/{userId}", "code" => 204}}
      end)
      service.add_operation(:get_bot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetBot"
        operation.name = "GetBot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBotRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBotResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/bots/{name}/versions/{versionOrAlias}", "code" => 200}}
      end)
      service.add_operation(:get_bot_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetBotAlias"
        operation.name = "GetBotAlias"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBotAliasRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBotAliasResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/bots/{botName}/aliases/{name}", "code" => 200}}
      end)
      service.add_operation(:get_bot_aliases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetBotAliases"
        operation.name = "GetBotAliases"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBotAliasesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBotAliasesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/bots/{botName}/aliases", "code" => 200}}
        operation[:paginator] = Paginators::GetBotAliases.new
      end)
      service.add_operation(:get_bot_channel_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetBotChannelAssociation"
        operation.name = "GetBotChannelAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBotChannelAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBotChannelAssociationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/bots/{botName}/aliases/{botAlias}/channels/{name}", "code" => 200}}
      end)
      service.add_operation(:get_bot_channel_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetBotChannelAssociations"
        operation.name = "GetBotChannelAssociations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBotChannelAssociationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBotChannelAssociationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/bots/{botName}/aliases/{botAlias}/channels", "code" => 200}}
        operation[:paginator] = Paginators::GetBotChannelAssociations.new
      end)
      service.add_operation(:get_bot_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetBotVersions"
        operation.name = "GetBotVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBotVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBotVersionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/bots/{name}/versions", "code" => 200}}
        operation[:paginator] = Paginators::GetBotVersions.new
      end)
      service.add_operation(:get_bots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetBots"
        operation.name = "GetBots"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBotsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBotsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/bots", "code" => 200}}
        operation[:paginator] = Paginators::GetBots.new
      end)
      service.add_operation(:get_builtin_intent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetBuiltinIntent"
        operation.name = "GetBuiltinIntent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBuiltinIntentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBuiltinIntentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/builtins/intents/{signature}", "code" => 200}}
      end)
      service.add_operation(:get_builtin_intents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetBuiltinIntents"
        operation.name = "GetBuiltinIntents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBuiltinIntentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBuiltinIntentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/builtins/intents", "code" => 200}}
        operation[:paginator] = Paginators::GetBuiltinIntents.new
      end)
      service.add_operation(:get_builtin_slot_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetBuiltinSlotTypes"
        operation.name = "GetBuiltinSlotTypes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBuiltinSlotTypesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBuiltinSlotTypesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/builtins/slottypes", "code" => 200}}
        operation[:paginator] = Paginators::GetBuiltinSlotTypes.new
      end)
      service.add_operation(:get_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetExport"
        operation.name = "GetExport"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetExportRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetExportResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/exports", "code" => 200}}
      end)
      service.add_operation(:get_import, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetImport"
        operation.name = "GetImport"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetImportRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetImportResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/imports/{importId}", "code" => 200}}
      end)
      service.add_operation(:get_intent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetIntent"
        operation.name = "GetIntent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIntentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIntentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/intents/{name}/versions/{version}", "code" => 200}}
      end)
      service.add_operation(:get_intent_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetIntentVersions"
        operation.name = "GetIntentVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIntentVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIntentVersionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/intents/{name}/versions", "code" => 200}}
        operation[:paginator] = Paginators::GetIntentVersions.new
      end)
      service.add_operation(:get_intents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetIntents"
        operation.name = "GetIntents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIntentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIntentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/intents", "code" => 200}}
        operation[:paginator] = Paginators::GetIntents.new
      end)
      service.add_operation(:get_migration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetMigration"
        operation.name = "GetMigration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMigrationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMigrationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/migrations/{migrationId}", "code" => 200}}
      end)
      service.add_operation(:get_migrations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetMigrations"
        operation.name = "GetMigrations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMigrationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMigrationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/migrations", "code" => 200}}
        operation[:paginator] = Paginators::GetMigrations.new
      end)
      service.add_operation(:get_slot_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetSlotType"
        operation.name = "GetSlotType"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSlotTypeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSlotTypeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/slottypes/{name}/versions/{version}", "code" => 200}}
      end)
      service.add_operation(:get_slot_type_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetSlotTypeVersions"
        operation.name = "GetSlotTypeVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSlotTypeVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSlotTypeVersionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/slottypes/{name}/versions", "code" => 200}}
        operation[:paginator] = Paginators::GetSlotTypeVersions.new
      end)
      service.add_operation(:get_slot_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetSlotTypes"
        operation.name = "GetSlotTypes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSlotTypesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSlotTypesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/slottypes", "code" => 200}}
        operation[:paginator] = Paginators::GetSlotTypes.new
      end)
      service.add_operation(:get_utterances_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetUtterancesView"
        operation.name = "GetUtterancesView"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUtterancesViewRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUtterancesViewResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/bots/{botName}/utterances?view=aggregation", "code" => 200}}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:put_bot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#PutBot"
        operation.name = "PutBot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutBotRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutBotResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/bots/{name}/versions/$LATEST", "code" => 200}}
      end)
      service.add_operation(:put_bot_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#PutBotAlias"
        operation.name = "PutBotAlias"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutBotAliasRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutBotAliasResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/bots/{botName}/aliases/{name}", "code" => 200}}
      end)
      service.add_operation(:put_intent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#PutIntent"
        operation.name = "PutIntent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutIntentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutIntentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/intents/{name}/versions/$LATEST", "code" => 200}}
      end)
      service.add_operation(:put_slot_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#PutSlotType"
        operation.name = "PutSlotType"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutSlotTypeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutSlotTypeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/slottypes/{name}/versions/$LATEST", "code" => 200}}
      end)
      service.add_operation(:start_import, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#StartImport"
        operation.name = "StartImport"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartImportRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartImportResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/imports", "code" => 201}}
      end)
      service.add_operation(:start_migration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#StartMigration"
        operation.name = "StartMigration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMigrationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMigrationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/migrations", "code" => 202}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 204}}
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
