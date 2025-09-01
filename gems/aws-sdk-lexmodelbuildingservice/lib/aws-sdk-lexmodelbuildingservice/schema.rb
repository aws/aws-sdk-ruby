# frozen_string_literal: true

# This is generated code!

module Aws::LexModelBuildingService
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AliasName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#AliasName', name: 'AliasName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([A-Za-z]_?)+$"})
    AliasNameOrListAll = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#AliasNameOrListAll', name: 'AliasNameOrListAll', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^(-|^([A-Za-z]_?)+$)$"})
    AmazonResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    BadRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Blob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.lexmodelbuildingservice#Blob', name: 'Blob')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.lexmodelbuildingservice#Boolean', name: 'Boolean')
    BotAliasMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#BotAliasMetadata', name: 'BotAliasMetadata')
    BotAliasMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#BotAliasMetadataList', name: 'BotAliasMetadataList')
    BotChannelAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#BotChannelAssociation', name: 'BotChannelAssociation')
    BotChannelAssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#BotChannelAssociationList', name: 'BotChannelAssociationList')
    BotChannelName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#BotChannelName', name: 'BotChannelName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([A-Za-z]_?)+$"})
    BotMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#BotMetadata', name: 'BotMetadata')
    BotMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#BotMetadataList', name: 'BotMetadataList')
    BotName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#BotName', name: 'BotName', traits: {"smithy.api#length" => {"min" => 2, "max" => 50}, "smithy.api#pattern" => "^([A-Za-z]_?)+$"})
    BotVersions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#BotVersions', name: 'BotVersions', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    BuiltinIntentMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#BuiltinIntentMetadata', name: 'BuiltinIntentMetadata')
    BuiltinIntentMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#BuiltinIntentMetadataList', name: 'BuiltinIntentMetadataList')
    BuiltinIntentSignature = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#BuiltinIntentSignature', name: 'BuiltinIntentSignature')
    BuiltinIntentSlot = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#BuiltinIntentSlot', name: 'BuiltinIntentSlot')
    BuiltinIntentSlotList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#BuiltinIntentSlotList', name: 'BuiltinIntentSlotList')
    BuiltinSlotTypeMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#BuiltinSlotTypeMetadata', name: 'BuiltinSlotTypeMetadata')
    BuiltinSlotTypeMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#BuiltinSlotTypeMetadataList', name: 'BuiltinSlotTypeMetadataList')
    BuiltinSlotTypeSignature = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#BuiltinSlotTypeSignature', name: 'BuiltinSlotTypeSignature')
    ChannelConfigurationMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.lexmodelbuildingservice#ChannelConfigurationMap', name: 'ChannelConfigurationMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#sensitive" => {}})
    ChannelStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lexmodelbuildingservice#ChannelStatus', name: 'ChannelStatus')
    ChannelType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lexmodelbuildingservice#ChannelType', name: 'ChannelType')
    CodeHook = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#CodeHook', name: 'CodeHook')
    ConfidenceThreshold = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.lexmodelbuildingservice#ConfidenceThreshold', name: 'ConfidenceThreshold', traits: {"smithy.api#range" => {"min" => 0, "max" => 1}})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContentString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#ContentString', name: 'ContentString', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    ContentType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lexmodelbuildingservice#ContentType', name: 'ContentType')
    ContextTimeToLiveInSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lexmodelbuildingservice#ContextTimeToLiveInSeconds', name: 'ContextTimeToLiveInSeconds', traits: {"smithy.api#range" => {"min" => 5, "max" => 86400}})
    ContextTurnsToLive = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lexmodelbuildingservice#ContextTurnsToLive', name: 'ContextTurnsToLive', traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    ConversationLogsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#ConversationLogsRequest', name: 'ConversationLogsRequest')
    ConversationLogsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#ConversationLogsResponse', name: 'ConversationLogsResponse')
    Count = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lexmodelbuildingservice#Count', name: 'Count')
    CreateBotVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#CreateBotVersionRequest', name: 'CreateBotVersionRequest')
    CreateBotVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#CreateBotVersionResponse', name: 'CreateBotVersionResponse')
    CreateIntentVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#CreateIntentVersionRequest', name: 'CreateIntentVersionRequest')
    CreateIntentVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#CreateIntentVersionResponse', name: 'CreateIntentVersionResponse')
    CreateSlotTypeVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#CreateSlotTypeVersionRequest', name: 'CreateSlotTypeVersionRequest')
    CreateSlotTypeVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#CreateSlotTypeVersionResponse', name: 'CreateSlotTypeVersionResponse')
    CustomOrBuiltinSlotTypeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#CustomOrBuiltinSlotTypeName', name: 'CustomOrBuiltinSlotTypeName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^((AMAZON\\.)_?|[A-Za-z]_?)+$"})
    DeleteBotAliasRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#DeleteBotAliasRequest', name: 'DeleteBotAliasRequest')
    DeleteBotChannelAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#DeleteBotChannelAssociationRequest', name: 'DeleteBotChannelAssociationRequest')
    DeleteBotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#DeleteBotRequest', name: 'DeleteBotRequest')
    DeleteBotVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#DeleteBotVersionRequest', name: 'DeleteBotVersionRequest')
    DeleteIntentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#DeleteIntentRequest', name: 'DeleteIntentRequest')
    DeleteIntentVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#DeleteIntentVersionRequest', name: 'DeleteIntentVersionRequest')
    DeleteSlotTypeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#DeleteSlotTypeRequest', name: 'DeleteSlotTypeRequest')
    DeleteSlotTypeVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#DeleteSlotTypeVersionRequest', name: 'DeleteSlotTypeVersionRequest')
    DeleteUtterancesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#DeleteUtterancesRequest', name: 'DeleteUtterancesRequest')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    Destination = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lexmodelbuildingservice#Destination', name: 'Destination')
    EnumerationValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#EnumerationValue', name: 'EnumerationValue')
    EnumerationValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#EnumerationValues', name: 'EnumerationValues', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}})
    ExportStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lexmodelbuildingservice#ExportStatus', name: 'ExportStatus')
    ExportType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lexmodelbuildingservice#ExportType', name: 'ExportType')
    FollowUpPrompt = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#FollowUpPrompt', name: 'FollowUpPrompt')
    FulfillmentActivity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#FulfillmentActivity', name: 'FulfillmentActivity')
    FulfillmentActivityType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lexmodelbuildingservice#FulfillmentActivityType', name: 'FulfillmentActivityType')
    GetBotAliasRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetBotAliasRequest', name: 'GetBotAliasRequest')
    GetBotAliasResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetBotAliasResponse', name: 'GetBotAliasResponse')
    GetBotAliasesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetBotAliasesRequest', name: 'GetBotAliasesRequest')
    GetBotAliasesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetBotAliasesResponse', name: 'GetBotAliasesResponse')
    GetBotChannelAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetBotChannelAssociationRequest', name: 'GetBotChannelAssociationRequest')
    GetBotChannelAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetBotChannelAssociationResponse', name: 'GetBotChannelAssociationResponse')
    GetBotChannelAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetBotChannelAssociationsRequest', name: 'GetBotChannelAssociationsRequest')
    GetBotChannelAssociationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetBotChannelAssociationsResponse', name: 'GetBotChannelAssociationsResponse')
    GetBotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetBotRequest', name: 'GetBotRequest')
    GetBotResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetBotResponse', name: 'GetBotResponse')
    GetBotVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetBotVersionsRequest', name: 'GetBotVersionsRequest')
    GetBotVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetBotVersionsResponse', name: 'GetBotVersionsResponse')
    GetBotsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetBotsRequest', name: 'GetBotsRequest')
    GetBotsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetBotsResponse', name: 'GetBotsResponse')
    GetBuiltinIntentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetBuiltinIntentRequest', name: 'GetBuiltinIntentRequest')
    GetBuiltinIntentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetBuiltinIntentResponse', name: 'GetBuiltinIntentResponse')
    GetBuiltinIntentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetBuiltinIntentsRequest', name: 'GetBuiltinIntentsRequest')
    GetBuiltinIntentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetBuiltinIntentsResponse', name: 'GetBuiltinIntentsResponse')
    GetBuiltinSlotTypesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetBuiltinSlotTypesRequest', name: 'GetBuiltinSlotTypesRequest')
    GetBuiltinSlotTypesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetBuiltinSlotTypesResponse', name: 'GetBuiltinSlotTypesResponse')
    GetExportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetExportRequest', name: 'GetExportRequest')
    GetExportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetExportResponse', name: 'GetExportResponse')
    GetImportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetImportRequest', name: 'GetImportRequest')
    GetImportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetImportResponse', name: 'GetImportResponse')
    GetIntentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetIntentRequest', name: 'GetIntentRequest')
    GetIntentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetIntentResponse', name: 'GetIntentResponse')
    GetIntentVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetIntentVersionsRequest', name: 'GetIntentVersionsRequest')
    GetIntentVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetIntentVersionsResponse', name: 'GetIntentVersionsResponse')
    GetIntentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetIntentsRequest', name: 'GetIntentsRequest')
    GetIntentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetIntentsResponse', name: 'GetIntentsResponse')
    GetMigrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetMigrationRequest', name: 'GetMigrationRequest')
    GetMigrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetMigrationResponse', name: 'GetMigrationResponse')
    GetMigrationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetMigrationsRequest', name: 'GetMigrationsRequest')
    GetMigrationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetMigrationsResponse', name: 'GetMigrationsResponse')
    GetSlotTypeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetSlotTypeRequest', name: 'GetSlotTypeRequest')
    GetSlotTypeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetSlotTypeResponse', name: 'GetSlotTypeResponse')
    GetSlotTypeVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetSlotTypeVersionsRequest', name: 'GetSlotTypeVersionsRequest')
    GetSlotTypeVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetSlotTypeVersionsResponse', name: 'GetSlotTypeVersionsResponse')
    GetSlotTypesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetSlotTypesRequest', name: 'GetSlotTypesRequest')
    GetSlotTypesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetSlotTypesResponse', name: 'GetSlotTypesResponse')
    GetUtterancesViewRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetUtterancesViewRequest', name: 'GetUtterancesViewRequest')
    GetUtterancesViewResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GetUtterancesViewResponse', name: 'GetUtterancesViewResponse')
    GroupNumber = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lexmodelbuildingservice#GroupNumber', name: 'GroupNumber', traits: {"smithy.api#range" => {"min" => 1, "max" => 5}})
    IamRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#IamRoleArn', name: 'IamRoleArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w\\-]+:iam::[\\d]{12}:role/.+$"})
    ImportStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lexmodelbuildingservice#ImportStatus', name: 'ImportStatus')
    InputContext = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#InputContext', name: 'InputContext')
    InputContextList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#InputContextList', name: 'InputContextList', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    InputContextName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#InputContextName', name: 'InputContextName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([A-Za-z]_?)+$"})
    Intent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#Intent', name: 'Intent')
    IntentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#IntentList', name: 'IntentList')
    IntentMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#IntentMetadata', name: 'IntentMetadata')
    IntentMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#IntentMetadataList', name: 'IntentMetadataList')
    IntentName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#IntentName', name: 'IntentName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([A-Za-z]_?)+$"})
    IntentUtteranceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#IntentUtteranceList', name: 'IntentUtteranceList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1500}})
    InternalFailureException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#InternalFailureException', name: 'InternalFailureException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KendraConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#KendraConfiguration', name: 'KendraConfiguration')
    KendraIndexArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#KendraIndexArn', name: 'KendraIndexArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:kendra:[a-z]+-[a-z]+-[0-9]:[0-9]{12}:index\\/[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    KmsKeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#KmsKeyArn', name: 'KmsKeyArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w\\-]+:kms:[\\w\\-]+:[\\d]{12}:(?:key\\/[\\w\\-]+|alias\\/[a-zA-Z0-9:\\/_\\-]{1,256})$"})
    LambdaARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#LambdaARN', name: 'LambdaARN', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-zA-Z-]*:lambda:[a-z]+-[a-z]+(-[a-z]+)*-[0-9]:[0-9]{12}:function:[a-zA-Z0-9-_]+(\\/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})?(:[a-zA-Z0-9-_]+)?$"})
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ListOfUtterance = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#ListOfUtterance', name: 'ListOfUtterance')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListsOfUtterances = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#ListsOfUtterances', name: 'ListsOfUtterances')
    Locale = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lexmodelbuildingservice#Locale', name: 'Locale')
    LocaleList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#LocaleList', name: 'LocaleList')
    LogSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#LogSettingsRequest', name: 'LogSettingsRequest')
    LogSettingsRequestList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#LogSettingsRequestList', name: 'LogSettingsRequestList')
    LogSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#LogSettingsResponse', name: 'LogSettingsResponse')
    LogSettingsResponseList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#LogSettingsResponseList', name: 'LogSettingsResponseList')
    LogType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lexmodelbuildingservice#LogType', name: 'LogType')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lexmodelbuildingservice#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MergeStrategy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lexmodelbuildingservice#MergeStrategy', name: 'MergeStrategy')
    Message = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#Message', name: 'Message')
    MessageList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#MessageList', name: 'MessageList', traits: {"smithy.api#length" => {"min" => 1, "max" => 15}})
    MessageVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#MessageVersion', name: 'MessageVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    MigrationAlert = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#MigrationAlert', name: 'MigrationAlert')
    MigrationAlertDetail = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#MigrationAlertDetail', name: 'MigrationAlertDetail')
    MigrationAlertDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#MigrationAlertDetails', name: 'MigrationAlertDetails')
    MigrationAlertMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#MigrationAlertMessage', name: 'MigrationAlertMessage')
    MigrationAlertReferenceURL = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#MigrationAlertReferenceURL', name: 'MigrationAlertReferenceURL')
    MigrationAlertReferenceURLs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#MigrationAlertReferenceURLs', name: 'MigrationAlertReferenceURLs')
    MigrationAlertType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lexmodelbuildingservice#MigrationAlertType', name: 'MigrationAlertType')
    MigrationAlerts = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#MigrationAlerts', name: 'MigrationAlerts')
    MigrationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#MigrationId', name: 'MigrationId', traits: {"smithy.api#length" => {"min" => 10, "max" => 10}, "smithy.api#pattern" => "^[0-9a-zA-Z]+$"})
    MigrationSortAttribute = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lexmodelbuildingservice#MigrationSortAttribute', name: 'MigrationSortAttribute')
    MigrationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lexmodelbuildingservice#MigrationStatus', name: 'MigrationStatus')
    MigrationStrategy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lexmodelbuildingservice#MigrationStrategy', name: 'MigrationStrategy')
    MigrationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#MigrationSummary', name: 'MigrationSummary')
    MigrationSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#MigrationSummaryList', name: 'MigrationSummaryList')
    Name = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#Name', name: 'Name', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z_]+$"})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#NextToken', name: 'NextToken')
    NotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NumericalVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#NumericalVersion', name: 'NumericalVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9]+$"})
    ObfuscationSetting = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lexmodelbuildingservice#ObfuscationSetting', name: 'ObfuscationSetting')
    OutputContext = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#OutputContext', name: 'OutputContext')
    OutputContextList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#OutputContextList', name: 'OutputContextList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    OutputContextName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#OutputContextName', name: 'OutputContextName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([A-Za-z]_?)+$"})
    PreconditionFailedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#PreconditionFailedException', name: 'PreconditionFailedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 412})
    Priority = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lexmodelbuildingservice#Priority', name: 'Priority', traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    ProcessBehavior = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lexmodelbuildingservice#ProcessBehavior', name: 'ProcessBehavior')
    Prompt = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#Prompt', name: 'Prompt')
    PromptMaxAttempts = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lexmodelbuildingservice#PromptMaxAttempts', name: 'PromptMaxAttempts', traits: {"smithy.api#range" => {"min" => 1, "max" => 5}})
    PutBotAliasRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#PutBotAliasRequest', name: 'PutBotAliasRequest')
    PutBotAliasResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#PutBotAliasResponse', name: 'PutBotAliasResponse')
    PutBotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#PutBotRequest', name: 'PutBotRequest')
    PutBotResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#PutBotResponse', name: 'PutBotResponse')
    PutIntentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#PutIntentRequest', name: 'PutIntentRequest')
    PutIntentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#PutIntentResponse', name: 'PutIntentResponse')
    PutSlotTypeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#PutSlotTypeRequest', name: 'PutSlotTypeRequest')
    PutSlotTypeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#PutSlotTypeResponse', name: 'PutSlotTypeResponse')
    QueryFilterString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#QueryFilterString', name: 'QueryFilterString', traits: {"smithy.api#length" => {"min" => 0}})
    ReferenceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lexmodelbuildingservice#ReferenceType', name: 'ReferenceType')
    RegexPattern = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#RegexPattern', name: 'RegexPattern', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w\\-]+:(?:logs:[\\w\\-]+:[\\d]{12}:log-group:[\\.\\-_/#A-Za-z0-9]{1,512}(?::\\*)?|s3:::[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9])$"})
    ResourceInUseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#ResourceInUseException', name: 'ResourceInUseException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourcePrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#ResourcePrefix', name: 'ResourcePrefix', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    ResourceReference = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#ResourceReference', name: 'ResourceReference')
    ResourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lexmodelbuildingservice#ResourceType', name: 'ResourceType')
    ResponseCard = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#ResponseCard', name: 'ResponseCard', traits: {"smithy.api#length" => {"min" => 1, "max" => 50000}})
    SessionTTL = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lexmodelbuildingservice#SessionTTL', name: 'SessionTTL', traits: {"smithy.api#range" => {"min" => 60, "max" => 86400}})
    Slot = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#Slot', name: 'Slot')
    SlotConstraint = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lexmodelbuildingservice#SlotConstraint', name: 'SlotConstraint')
    SlotDefaultValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#SlotDefaultValue', name: 'SlotDefaultValue')
    SlotDefaultValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#SlotDefaultValueList', name: 'SlotDefaultValueList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    SlotDefaultValueSpec = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#SlotDefaultValueSpec', name: 'SlotDefaultValueSpec')
    SlotDefaultValueString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#SlotDefaultValueString', name: 'SlotDefaultValueString', traits: {"smithy.api#length" => {"min" => 1, "max" => 202}})
    SlotList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#SlotList', name: 'SlotList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    SlotName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#SlotName', name: 'SlotName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([A-Za-z](-|_|.)?)+$"})
    SlotTypeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#SlotTypeConfiguration', name: 'SlotTypeConfiguration')
    SlotTypeConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#SlotTypeConfigurations', name: 'SlotTypeConfigurations', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    SlotTypeMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#SlotTypeMetadata', name: 'SlotTypeMetadata')
    SlotTypeMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#SlotTypeMetadataList', name: 'SlotTypeMetadataList')
    SlotTypeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#SlotTypeName', name: 'SlotTypeName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([A-Za-z]_?)+$"})
    SlotTypeRegexConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#SlotTypeRegexConfiguration', name: 'SlotTypeRegexConfiguration')
    SlotUtteranceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#SlotUtteranceList', name: 'SlotUtteranceList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    SlotValueSelectionStrategy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lexmodelbuildingservice#SlotValueSelectionStrategy', name: 'SlotValueSelectionStrategy')
    SortOrder = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lexmodelbuildingservice#SortOrder', name: 'SortOrder')
    StartImportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#StartImportRequest', name: 'StartImportRequest')
    StartImportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#StartImportResponse', name: 'StartImportResponse')
    StartMigrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#StartMigrationRequest', name: 'StartMigrationRequest')
    StartMigrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#StartMigrationResponse', name: 'StartMigrationResponse')
    Statement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#Statement', name: 'Statement')
    Status = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lexmodelbuildingservice#Status', name: 'Status')
    StatusType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lexmodelbuildingservice#StatusType', name: 'StatusType')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#String', name: 'String')
    StringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#StringList', name: 'StringList')
    SynonymList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#SynonymList', name: 'SynonymList')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexmodelbuildingservice#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.lexmodelbuildingservice#Timestamp', name: 'Timestamp')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#UntagResourceResponse', name: 'UntagResourceResponse')
    UserId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#UserId', name: 'UserId', traits: {"smithy.api#length" => {"min" => 2, "max" => 100}})
    Utterance = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#Utterance', name: 'Utterance', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    UtteranceData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#UtteranceData', name: 'UtteranceData')
    UtteranceList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexmodelbuildingservice#UtteranceList', name: 'UtteranceList')
    UtteranceString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#UtteranceString', name: 'UtteranceString', traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    V2BotId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#V2BotId', name: 'V2BotId', traits: {"smithy.api#length" => {"min" => 10, "max" => 10}, "smithy.api#pattern" => "^[0-9a-zA-Z]+$"})
    V2BotName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#V2BotName', name: 'V2BotName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([0-9a-zA-Z][_-]?)+$"})
    Value = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#Value', name: 'Value', traits: {"smithy.api#length" => {"min" => 1, "max" => 140}})
    Version = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#Version', name: 'Version', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^\\$LATEST|[0-9]+$"})
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexmodelbuildingservice#roleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:iam::[0-9]{12}:role/"})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    BadRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    BadRequestException.type = Types::BadRequestException
    BotAliasMetadata.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the bot alias.</p>"}))
    BotAliasMetadata.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the bot alias.</p>"}))
    BotAliasMetadata.add_member(:bot_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'botVersion', traits: {"smithy.api#documentation" => "<p>The version of the Amazon Lex bot to which the alias points.</p>"}))
    BotAliasMetadata.add_member(:bot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'botName', traits: {"smithy.api#documentation" => "<p>The name of the bot to which the alias points.</p>"}))
    BotAliasMetadata.add_member(:last_updated_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedDate', traits: {"smithy.api#documentation" => "<p>The date that the bot alias was updated. When you create a\n      resource, the creation date and last updated date are the same.</p>"}))
    BotAliasMetadata.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The date that the bot alias was created.</p>"}))
    BotAliasMetadata.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checksum', traits: {"smithy.api#documentation" => "<p>Checksum of the bot alias.</p>"}))
    BotAliasMetadata.add_member(:conversation_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationLogsResponse, location_name: 'conversationLogs', traits: {"smithy.api#documentation" => "<p>Settings that determine how Amazon Lex uses conversation logs for the\n      alias.</p>"}))
    BotAliasMetadata.type = Types::BotAliasMetadata
    BotAliasMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BotAliasMetadata)
    BotChannelAssociation.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotChannelName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the association between the bot and the channel.\n    </p>"}))
    BotChannelAssociation.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A text description of the association you are creating. </p>"}))
    BotChannelAssociation.add_member(:bot_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: 'botAlias', traits: {"smithy.api#documentation" => "<p>An alias pointing to the specific version of the Amazon Lex bot to which\n      this association is being made. </p>"}))
    BotChannelAssociation.add_member(:bot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'botName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Lex bot to which this association is being made. </p>\n         <note>\n            <p>Currently, Amazon Lex supports associations with Facebook and Slack,\n        and Twilio.</p>\n         </note>"}))
    BotChannelAssociation.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The date that the association between the Amazon Lex bot and the channel\n      was created. </p>"}))
    BotChannelAssociation.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Specifies the type of association by indicating the type of channel\n      being established between the Amazon Lex bot and the external messaging\n      platform.</p>"}))
    BotChannelAssociation.add_member(:bot_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelConfigurationMap, location_name: 'botConfiguration', traits: {"smithy.api#documentation" => "<p>Provides information necessary to communicate with the messaging\n      platform. </p>"}))
    BotChannelAssociation.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the bot channel. </p>\n         <ul>\n            <li>\n               <p>\n                  <code>CREATED</code> - The channel has been created and is\n          ready for use.</p>\n            </li>\n            <li>\n               <p>\n                  <code>IN_PROGRESS</code> - Channel creation is in\n          progress.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> - There was an error creating the channel.\n          For information about the reason for the failure, see the\n            <code>failureReason</code> field.</p>\n            </li>\n         </ul>"}))
    BotChannelAssociation.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>If <code>status</code> is <code>FAILED</code>, Amazon Lex provides the\n      reason that it failed to create the association.</p>"}))
    BotChannelAssociation.type = Types::BotChannelAssociation
    BotChannelAssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BotChannelAssociation)
    BotMetadata.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the bot. </p>"}))
    BotMetadata.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the bot.</p>"}))
    BotMetadata.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the bot.</p>"}))
    BotMetadata.add_member(:last_updated_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedDate', traits: {"smithy.api#documentation" => "<p>The date that the bot was updated. When you create a bot, the\n      creation date and last updated date are the same. </p>"}))
    BotMetadata.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The date that the bot was created.</p>"}))
    BotMetadata.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the bot. For a new bot, the version is always\n        <code>$LATEST</code>.</p>"}))
    BotMetadata.type = Types::BotMetadata
    BotMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BotMetadata)
    BotVersions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Version)
    BuiltinIntentMetadata.add_member(:signature, Smithy::Schema::Shapes::ShapeRef.new(shape: BuiltinIntentSignature, location_name: 'signature', traits: {"smithy.api#documentation" => "<p>A unique identifier for the built-in intent. To find the signature\n      for an intent, see <a href=\"https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents\">Standard Built-in Intents</a> in the <i>Alexa Skills\n        Kit</i>.</p>"}))
    BuiltinIntentMetadata.add_member(:supported_locales, Smithy::Schema::Shapes::ShapeRef.new(shape: LocaleList, location_name: 'supportedLocales', traits: {"smithy.api#documentation" => "<p>A list of identifiers for the locales that the intent\n      supports.</p>"}))
    BuiltinIntentMetadata.type = Types::BuiltinIntentMetadata
    BuiltinIntentMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BuiltinIntentMetadata)
    BuiltinIntentSlot.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A list of the slots defined for the intent.</p>"}))
    BuiltinIntentSlot.type = Types::BuiltinIntentSlot
    BuiltinIntentSlotList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BuiltinIntentSlot)
    BuiltinSlotTypeMetadata.add_member(:signature, Smithy::Schema::Shapes::ShapeRef.new(shape: BuiltinSlotTypeSignature, location_name: 'signature', traits: {"smithy.api#documentation" => "<p>A unique identifier for the built-in slot type. To find the\n      signature for a slot type, see <a href=\"https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference\">Slot Type Reference</a> in the <i>Alexa Skills\n        Kit</i>.</p>"}))
    BuiltinSlotTypeMetadata.add_member(:supported_locales, Smithy::Schema::Shapes::ShapeRef.new(shape: LocaleList, location_name: 'supportedLocales', traits: {"smithy.api#documentation" => "<p>A list of target locales for the slot. </p>"}))
    BuiltinSlotTypeMetadata.type = Types::BuiltinSlotTypeMetadata
    BuiltinSlotTypeMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BuiltinSlotTypeMetadata)
    ChannelConfigurationMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ChannelConfigurationMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ChannelStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ChannelStatus.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    ChannelStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ChannelType.add_member(:facebook, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FACEBOOK', traits: {"smithy.api#enumValue" => "Facebook"}))
    ChannelType.add_member(:slack, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SLACK', traits: {"smithy.api#enumValue" => "Slack"}))
    ChannelType.add_member(:twilio_sms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TWILIO_SMS', traits: {"smithy.api#enumValue" => "Twilio-Sms"}))
    ChannelType.add_member(:kik, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KIK', traits: {"smithy.api#enumValue" => "Kik"}))
    CodeHook.add_member(:uri, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaARN, location_name: 'uri', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Lambda function.</p>", "smithy.api#required" => {}}))
    CodeHook.add_member(:message_version, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageVersion, location_name: 'messageVersion', traits: {"smithy.api#documentation" => "<p>The version of the request-response that you want Amazon Lex to use to\n      invoke your Lambda function. For more information, see <a>using-lambda</a>.</p>", "smithy.api#required" => {}}))
    CodeHook.type = Types::CodeHook
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    ContentType.add_member(:plain_text, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PLAIN_TEXT', traits: {"smithy.api#enumValue" => "PlainText"}))
    ContentType.add_member(:ssml, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSML', traits: {"smithy.api#enumValue" => "SSML"}))
    ContentType.add_member(:custom_payload, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM_PAYLOAD', traits: {"smithy.api#enumValue" => "CustomPayload"}))
    ConversationLogsRequest.add_member(:log_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: LogSettingsRequestList, location_name: 'logSettings', traits: {"smithy.api#documentation" => "<p>The settings for your conversation logs. You can log the conversation\n      text, conversation audio, or both.</p>", "smithy.api#required" => {}}))
    ConversationLogsRequest.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'iamRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM role with permission to write\n      to your CloudWatch Logs for text logs and your S3 bucket for audio logs.\n      If audio encryption is enabled, this role also provides access permission\n      for the AWS KMS key used for encrypting audio logs. For more information,\n      see <a href=\"https://docs.aws.amazon.com/lex/latest/dg/conversation-logs-role-and-policy.html\">Creating an\n        IAM Role and Policy for Conversation Logs</a>.</p>", "smithy.api#required" => {}}))
    ConversationLogsRequest.type = Types::ConversationLogsRequest
    ConversationLogsResponse.add_member(:log_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: LogSettingsResponseList, location_name: 'logSettings', traits: {"smithy.api#documentation" => "<p>The settings for your conversation logs. You can log text, audio, or\n      both.</p>"}))
    ConversationLogsResponse.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'iamRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role used to write your logs\n      to CloudWatch Logs or an S3 bucket.</p>"}))
    ConversationLogsResponse.type = Types::ConversationLogsResponse
    CreateBotVersionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the bot that you want to create a new version of. The\n      name is case sensitive. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBotVersionRequest.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checksum', traits: {"smithy.api#documentation" => "<p>Identifies a specific revision of the <code>$LATEST</code> version\n      of the bot. If you specify a checksum and the <code>$LATEST</code> version\n      of the bot has a different checksum, a\n        <code>PreconditionFailedException</code> exception is returned and Amazon Lex\n      doesn't publish a new version. If you don't specify a checksum, Amazon Lex\n      publishes the <code>$LATEST</code> version.</p>"}))
    CreateBotVersionRequest.type = Types::CreateBotVersionRequest
    CreateBotVersionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the bot.</p>"}))
    CreateBotVersionResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the bot.</p>"}))
    CreateBotVersionResponse.add_member(:intents, Smithy::Schema::Shapes::ShapeRef.new(shape: IntentList, location_name: 'intents', traits: {"smithy.api#documentation" => "<p>An array of <code>Intent</code> objects. For more information, see\n        <a>PutBot</a>.</p>"}))
    CreateBotVersionResponse.add_member(:clarification_prompt, Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: 'clarificationPrompt', traits: {"smithy.api#documentation" => "<p>The message that Amazon Lex uses when it doesn't understand the user's\n      request. For more information, see <a>PutBot</a>. </p>"}))
    CreateBotVersionResponse.add_member(:abort_statement, Smithy::Schema::Shapes::ShapeRef.new(shape: Statement, location_name: 'abortStatement', traits: {"smithy.api#documentation" => "<p>The message that Amazon Lex uses to cancel a conversation. For more\n      information, see <a>PutBot</a>.</p>"}))
    CreateBotVersionResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p> When you send a request to create or update a bot, Amazon Lex sets the\n        <code>status</code> response element to <code>BUILDING</code>. After\n      Amazon Lex builds the bot, it sets <code>status</code> to <code>READY</code>.\n      If Amazon Lex can't build the bot, it sets <code>status</code> to\n        <code>FAILED</code>. Amazon Lex returns the reason for the failure in the\n        <code>failureReason</code> response element. </p>"}))
    CreateBotVersionResponse.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>If <code>status</code> is <code>FAILED</code>, Amazon Lex provides the\n      reason that it failed to build the bot.</p>"}))
    CreateBotVersionResponse.add_member(:last_updated_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedDate', traits: {"smithy.api#documentation" => "<p>The date when the <code>$LATEST</code> version of this bot was\n      updated. </p>"}))
    CreateBotVersionResponse.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The date when the bot version was created.</p>"}))
    CreateBotVersionResponse.add_member(:idle_session_ttl_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionTTL, location_name: 'idleSessionTTLInSeconds', traits: {"smithy.api#documentation" => "<p>The maximum time in seconds that Amazon Lex retains the data gathered in\n      a conversation. For more information, see <a>PutBot</a>.</p>"}))
    CreateBotVersionResponse.add_member(:voice_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'voiceId', traits: {"smithy.api#documentation" => "<p>The Amazon Polly voice ID that Amazon Lex uses for voice interactions\n      with the user.</p>"}))
    CreateBotVersionResponse.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checksum', traits: {"smithy.api#documentation" => "<p>Checksum identifying the version of the bot that was\n      created.</p>"}))
    CreateBotVersionResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the bot. </p>"}))
    CreateBotVersionResponse.add_member(:locale, Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: 'locale', traits: {"smithy.api#documentation" => "<p> Specifies the target locale for the bot. </p>"}))
    CreateBotVersionResponse.add_member(:child_directed, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'childDirected', traits: {"smithy.api#documentation" => "<p>For each Amazon Lex bot created with the Amazon Lex Model Building Service,\n      you must specify whether your use of Amazon Lex is related to a website,\n      program, or other application that is directed or targeted, in whole or in\n      part, to children under age 13 and subject to the Children's Online\n      Privacy Protection Act (COPPA) by specifying <code>true</code> or\n        <code>false</code> in the <code>childDirected</code> field. By\n      specifying <code>true</code> in the <code>childDirected</code> field, you\n      confirm that your use of Amazon Lex <b>is</b> related\n      to a website, program, or other application that is directed or targeted,\n      in whole or in part, to children under age 13 and subject to COPPA. By\n      specifying <code>false</code> in the <code>childDirected</code> field, you\n      confirm that your use of Amazon Lex <b>is not</b>\n      related to a website, program, or other application that is directed or\n      targeted, in whole or in part, to children under age 13 and subject to\n      COPPA. You may not specify a default value for the\n        <code>childDirected</code> field that does not accurately reflect\n      whether your use of Amazon Lex is related to a website, program, or other\n      application that is directed or targeted, in whole or in part, to children\n      under age 13 and subject to COPPA.</p>\n         <p>If your use of Amazon Lex relates to a website, program, or other\n      application that is directed in whole or in part, to children under age\n      13, you must obtain any required verifiable parental consent under COPPA.\n      For information regarding the use of Amazon Lex in connection with websites,\n      programs, or other applications that are directed or targeted, in whole or\n      in part, to children under age 13, see the <a href=\"https://aws.amazon.com/lex/faqs#data-security\">Amazon Lex FAQ.</a>\n         </p>"}))
    CreateBotVersionResponse.add_member(:enable_model_improvements, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enableModelImprovements', traits: {"smithy.api#documentation" => "<p>Indicates whether the bot uses accuracy improvements.\n        <code>true</code> indicates that the bot is using the improvements,\n      otherwise, <code>false</code>.</p>"}))
    CreateBotVersionResponse.add_member(:detect_sentiment, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'detectSentiment', traits: {"smithy.api#documentation" => "<p>Indicates whether utterances entered by the user should be sent to\n      Amazon Comprehend for sentiment analysis.</p>"}))
    CreateBotVersionResponse.type = Types::CreateBotVersionResponse
    CreateIntentVersionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: IntentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the intent that you want to create a new version of.\n      The name is case sensitive. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateIntentVersionRequest.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checksum', traits: {"smithy.api#documentation" => "<p>Checksum of the <code>$LATEST</code> version of the intent that\n      should be used to create the new version. If you specify a checksum and\n      the <code>$LATEST</code> version of the intent has a different checksum,\n      Amazon Lex returns a <code>PreconditionFailedException</code> exception and\n      doesn't publish a new version. If you don't specify a checksum, Amazon Lex\n      publishes the <code>$LATEST</code> version.</p>"}))
    CreateIntentVersionRequest.type = Types::CreateIntentVersionRequest
    CreateIntentVersionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: IntentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the intent.</p>"}))
    CreateIntentVersionResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the intent.</p>"}))
    CreateIntentVersionResponse.add_member(:slots, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotList, location_name: 'slots', traits: {"smithy.api#documentation" => "<p>An array of slot types that defines the information required to\n      fulfill the intent.</p>"}))
    CreateIntentVersionResponse.add_member(:sample_utterances, Smithy::Schema::Shapes::ShapeRef.new(shape: IntentUtteranceList, location_name: 'sampleUtterances', traits: {"smithy.api#documentation" => "<p>An array of sample utterances configured for the intent. </p>"}))
    CreateIntentVersionResponse.add_member(:confirmation_prompt, Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: 'confirmationPrompt', traits: {"smithy.api#documentation" => "<p>If defined, the prompt that Amazon Lex uses to confirm the user's\n      intent before fulfilling it. </p>"}))
    CreateIntentVersionResponse.add_member(:rejection_statement, Smithy::Schema::Shapes::ShapeRef.new(shape: Statement, location_name: 'rejectionStatement', traits: {"smithy.api#documentation" => "<p>If the user answers \"no\" to the question defined in\n        <code>confirmationPrompt</code>, Amazon Lex responds with this statement to\n      acknowledge that the intent was canceled. </p>"}))
    CreateIntentVersionResponse.add_member(:follow_up_prompt, Smithy::Schema::Shapes::ShapeRef.new(shape: FollowUpPrompt, location_name: 'followUpPrompt', traits: {"smithy.api#documentation" => "<p>If defined, Amazon Lex uses this prompt to solicit additional user\n      activity after the intent is fulfilled. </p>"}))
    CreateIntentVersionResponse.add_member(:conclusion_statement, Smithy::Schema::Shapes::ShapeRef.new(shape: Statement, location_name: 'conclusionStatement', traits: {"smithy.api#documentation" => "<p>After the Lambda function specified in the\n        <code>fulfillmentActivity</code> field fulfills the intent, Amazon Lex\n      conveys this statement to the user. </p>"}))
    CreateIntentVersionResponse.add_member(:dialog_code_hook, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeHook, location_name: 'dialogCodeHook', traits: {"smithy.api#documentation" => "<p>If defined, Amazon Lex invokes this Lambda function for each user\n      input.</p>"}))
    CreateIntentVersionResponse.add_member(:fulfillment_activity, Smithy::Schema::Shapes::ShapeRef.new(shape: FulfillmentActivity, location_name: 'fulfillmentActivity', traits: {"smithy.api#documentation" => "<p> Describes how the intent is fulfilled. </p>"}))
    CreateIntentVersionResponse.add_member(:parent_intent_signature, Smithy::Schema::Shapes::ShapeRef.new(shape: BuiltinIntentSignature, location_name: 'parentIntentSignature', traits: {"smithy.api#documentation" => "<p>A unique identifier for a built-in intent.</p>"}))
    CreateIntentVersionResponse.add_member(:last_updated_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedDate', traits: {"smithy.api#documentation" => "<p>The date that the intent was updated. </p>"}))
    CreateIntentVersionResponse.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The date that the intent was created.</p>"}))
    CreateIntentVersionResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version number assigned to the new version of the\n      intent.</p>"}))
    CreateIntentVersionResponse.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checksum', traits: {"smithy.api#documentation" => "<p>Checksum of the intent version created.</p>"}))
    CreateIntentVersionResponse.add_member(:kendra_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: KendraConfiguration, location_name: 'kendraConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration information, if any, for connecting an Amazon Kendra\n      index with the <code>AMAZON.KendraSearchIntent</code> intent.</p>"}))
    CreateIntentVersionResponse.add_member(:input_contexts, Smithy::Schema::Shapes::ShapeRef.new(shape: InputContextList, location_name: 'inputContexts', traits: {"smithy.api#documentation" => "<p>An array of <code>InputContext</code> objects that lists the contexts\n      that must be active for Amazon Lex to choose the intent in a conversation with\n      the user.</p>"}))
    CreateIntentVersionResponse.add_member(:output_contexts, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputContextList, location_name: 'outputContexts', traits: {"smithy.api#documentation" => "<p>An array of <code>OutputContext</code> objects that lists the contexts\n      that the intent activates when the intent is fulfilled.</p>"}))
    CreateIntentVersionResponse.type = Types::CreateIntentVersionResponse
    CreateSlotTypeVersionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the slot type that you want to create a new version\n      for. The name is case sensitive. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSlotTypeVersionRequest.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checksum', traits: {"smithy.api#documentation" => "<p>Checksum for the <code>$LATEST</code> version of the slot type that\n      you want to publish. If you specify a checksum and the\n        <code>$LATEST</code> version of the slot type has a different checksum,\n      Amazon Lex returns a <code>PreconditionFailedException</code> exception and\n      doesn't publish the new version. If you don't specify a checksum, Amazon Lex\n      publishes the <code>$LATEST</code> version.</p>"}))
    CreateSlotTypeVersionRequest.type = Types::CreateSlotTypeVersionRequest
    CreateSlotTypeVersionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the slot type.</p>"}))
    CreateSlotTypeVersionResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the slot type.</p>"}))
    CreateSlotTypeVersionResponse.add_member(:enumeration_values, Smithy::Schema::Shapes::ShapeRef.new(shape: EnumerationValues, location_name: 'enumerationValues', traits: {"smithy.api#documentation" => "<p>A list of <code>EnumerationValue</code> objects that defines the\n      values that the slot type can take.</p>"}))
    CreateSlotTypeVersionResponse.add_member(:last_updated_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedDate', traits: {"smithy.api#documentation" => "<p>The date that the slot type was updated. When you create a\n      resource, the creation date and last update date are the same.</p>"}))
    CreateSlotTypeVersionResponse.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The date that the slot type was created.</p>"}))
    CreateSlotTypeVersionResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version assigned to the new slot type version. </p>"}))
    CreateSlotTypeVersionResponse.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checksum', traits: {"smithy.api#documentation" => "<p>Checksum of the <code>$LATEST</code> version of the slot\n      type.</p>"}))
    CreateSlotTypeVersionResponse.add_member(:value_selection_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotValueSelectionStrategy, location_name: 'valueSelectionStrategy', traits: {"smithy.api#documentation" => "<p>The strategy that Amazon Lex uses to determine the value of the slot.\n      For more information, see <a>PutSlotType</a>.</p>"}))
    CreateSlotTypeVersionResponse.add_member(:parent_slot_type_signature, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomOrBuiltinSlotTypeName, location_name: 'parentSlotTypeSignature', traits: {"smithy.api#documentation" => "<p>The built-in slot type used a the parent of the slot type.</p>"}))
    CreateSlotTypeVersionResponse.add_member(:slot_type_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeConfigurations, location_name: 'slotTypeConfigurations', traits: {"smithy.api#documentation" => "<p>Configuration information that extends the parent built-in slot\n      type.</p>"}))
    CreateSlotTypeVersionResponse.type = Types::CreateSlotTypeVersionResponse
    DeleteBotAliasRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the alias to delete. The name is case sensitive.\n    </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBotAliasRequest.add_member(:bot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'botName', traits: {"smithy.api#documentation" => "<p>The name of the bot that the alias points to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBotAliasRequest.type = Types::DeleteBotAliasRequest
    DeleteBotChannelAssociationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotChannelName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the association. The name is case sensitive. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBotChannelAssociationRequest.add_member(:bot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'botName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Lex bot.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBotChannelAssociationRequest.add_member(:bot_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: 'botAlias', traits: {"smithy.api#documentation" => "<p>An alias that points to the specific version of the Amazon Lex bot to\n      which this association is being made.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBotChannelAssociationRequest.type = Types::DeleteBotChannelAssociationRequest
    DeleteBotRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the bot. The name is case sensitive. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBotRequest.type = Types::DeleteBotRequest
    DeleteBotVersionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the bot.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBotVersionRequest.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: NumericalVersion, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the bot to delete. You cannot delete the\n        <code>$LATEST</code> version of the bot. To delete the\n        <code>$LATEST</code> version, use the <a>DeleteBot</a>\n      operation.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBotVersionRequest.type = Types::DeleteBotVersionRequest
    DeleteIntentRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: IntentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the intent. The name is case sensitive. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIntentRequest.type = Types::DeleteIntentRequest
    DeleteIntentVersionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: IntentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the intent.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIntentVersionRequest.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: NumericalVersion, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the intent to delete. You cannot delete the\n        <code>$LATEST</code> version of the intent. To delete the\n        <code>$LATEST</code> version, use the <a>DeleteIntent</a>\n      operation.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIntentVersionRequest.type = Types::DeleteIntentVersionRequest
    DeleteSlotTypeRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the slot type. The name is case sensitive. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSlotTypeRequest.type = Types::DeleteSlotTypeRequest
    DeleteSlotTypeVersionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the slot type.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSlotTypeVersionRequest.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: NumericalVersion, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the slot type to delete. You cannot delete the\n        <code>$LATEST</code> version of the slot type. To delete the\n        <code>$LATEST</code> version, use the <a>DeleteSlotType</a>\n      operation.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSlotTypeVersionRequest.type = Types::DeleteSlotTypeVersionRequest
    DeleteUtterancesRequest.add_member(:bot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'botName', traits: {"smithy.api#documentation" => "<p>The name of the bot that stored the utterances.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteUtterancesRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the user that made the utterances. This\n      is the user ID that was sent in the <a href=\"http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html\">PostContent</a> or <a href=\"http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html\">PostText</a> operation request that contained the\n      utterance.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteUtterancesRequest.type = Types::DeleteUtterancesRequest
    Destination.add_member(:cloudwatch_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOUDWATCH_LOGS', traits: {"smithy.api#enumValue" => "CLOUDWATCH_LOGS"}))
    Destination.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3', traits: {"smithy.api#enumValue" => "S3"}))
    EnumerationValue.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Value, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of the slot type.</p>", "smithy.api#required" => {}}))
    EnumerationValue.add_member(:synonyms, Smithy::Schema::Shapes::ShapeRef.new(shape: SynonymList, location_name: 'synonyms', traits: {"smithy.api#documentation" => "<p>Additional values related to the slot type value.</p>"}))
    EnumerationValue.type = Types::EnumerationValue
    EnumerationValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EnumerationValue)
    ExportStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ExportStatus.add_member(:ready, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    ExportStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ExportType.add_member(:alexa_skills_kit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALEXA_SKILLS_KIT', traits: {"smithy.api#enumValue" => "ALEXA_SKILLS_KIT"}))
    ExportType.add_member(:lex, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LEX', traits: {"smithy.api#enumValue" => "LEX"}))
    FollowUpPrompt.add_member(:prompt, Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: 'prompt', traits: {"smithy.api#documentation" => "<p>Prompts for information from the user. </p>", "smithy.api#required" => {}}))
    FollowUpPrompt.add_member(:rejection_statement, Smithy::Schema::Shapes::ShapeRef.new(shape: Statement, location_name: 'rejectionStatement', traits: {"smithy.api#documentation" => "<p>If the user answers \"no\" to the question defined in the\n        <code>prompt</code> field, Amazon Lex responds with this statement to\n      acknowledge that the intent was canceled. </p>", "smithy.api#required" => {}}))
    FollowUpPrompt.type = Types::FollowUpPrompt
    FulfillmentActivity.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: FulfillmentActivityType, location_name: 'type', traits: {"smithy.api#documentation" => "<p> How the intent should be fulfilled, either by running a Lambda\n      function or by returning the slot data to the client application.\n    </p>", "smithy.api#required" => {}}))
    FulfillmentActivity.add_member(:code_hook, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeHook, location_name: 'codeHook', traits: {"smithy.api#documentation" => "<p> A description of the Lambda function that is run to fulfill the\n      intent. </p>"}))
    FulfillmentActivity.type = Types::FulfillmentActivity
    FulfillmentActivityType.add_member(:return_intent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RETURN_INTENT', traits: {"smithy.api#enumValue" => "ReturnIntent"}))
    FulfillmentActivityType.add_member(:code_hook, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CODE_HOOK', traits: {"smithy.api#enumValue" => "CodeHook"}))
    GetBotAliasRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the bot alias. The name is case sensitive.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBotAliasRequest.add_member(:bot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'botName', traits: {"smithy.api#documentation" => "<p>The name of the bot.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBotAliasRequest.type = Types::GetBotAliasRequest
    GetBotAliasResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the bot alias.</p>"}))
    GetBotAliasResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the bot alias.</p>"}))
    GetBotAliasResponse.add_member(:bot_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'botVersion', traits: {"smithy.api#documentation" => "<p>The version of the bot that the alias points to.</p>"}))
    GetBotAliasResponse.add_member(:bot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'botName', traits: {"smithy.api#documentation" => "<p>The name of the bot that the alias points to.</p>"}))
    GetBotAliasResponse.add_member(:last_updated_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedDate', traits: {"smithy.api#documentation" => "<p>The date that the bot alias was updated. When you create a\n      resource, the creation date and the last updated date are the\n      same.</p>"}))
    GetBotAliasResponse.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The date that the bot alias was created.</p>"}))
    GetBotAliasResponse.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checksum', traits: {"smithy.api#documentation" => "<p>Checksum of the bot alias.</p>"}))
    GetBotAliasResponse.add_member(:conversation_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationLogsResponse, location_name: 'conversationLogs', traits: {"smithy.api#documentation" => "<p>The settings that determine how Amazon Lex uses conversation logs for the\n      alias.</p>"}))
    GetBotAliasResponse.type = Types::GetBotAliasResponse
    GetBotAliasesRequest.add_member(:bot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'botName', traits: {"smithy.api#documentation" => "<p>The name of the bot.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBotAliasesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for fetching the next page of aliases. If the\n      response to this call is truncated, Amazon Lex returns a pagination token in\n      the response. To fetch the next page of aliases, specify the pagination\n      token in the next request. </p>", "smithy.api#httpQuery" => "nextToken"}))
    GetBotAliasesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of aliases to return in the response. The\n      default is 50. . </p>", "smithy.api#httpQuery" => "maxResults"}))
    GetBotAliasesRequest.add_member(:name_contains, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: 'nameContains', traits: {"smithy.api#documentation" => "<p>Substring to match in bot alias names. An alias will be returned if\n      any part of its name matches the substring. For example, \"xyz\" matches\n      both \"xyzabc\" and \"abcxyz.\"</p>", "smithy.api#httpQuery" => "nameContains"}))
    GetBotAliasesRequest.type = Types::GetBotAliasesRequest
    GetBotAliasesResponse.add_member(:bot_aliases, Smithy::Schema::Shapes::ShapeRef.new(shape: BotAliasMetadataList, location_name: 'BotAliases', traits: {"smithy.api#documentation" => "<p>An array of <code>BotAliasMetadata</code> objects, each describing\n      a bot alias.</p>"}))
    GetBotAliasesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for fetching next page of aliases. If the\n      response to this call is truncated, Amazon Lex returns a pagination token in\n      the response. To fetch the next page of aliases, specify the pagination\n      token in the next request. </p>"}))
    GetBotAliasesResponse.type = Types::GetBotAliasesResponse
    GetBotChannelAssociationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotChannelName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the association between the bot and the channel. The\n      name is case sensitive. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBotChannelAssociationRequest.add_member(:bot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'botName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Lex bot.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBotChannelAssociationRequest.add_member(:bot_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: 'botAlias', traits: {"smithy.api#documentation" => "<p>An alias pointing to the specific version of the Amazon Lex bot to which\n      this association is being made.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBotChannelAssociationRequest.type = Types::GetBotChannelAssociationRequest
    GetBotChannelAssociationResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotChannelName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the association between the bot and the\n      channel.</p>"}))
    GetBotChannelAssociationResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the association between the bot and the\n      channel.</p>"}))
    GetBotChannelAssociationResponse.add_member(:bot_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: 'botAlias', traits: {"smithy.api#documentation" => "<p>An alias pointing to the specific version of the Amazon Lex bot to which\n      this association is being made.</p>"}))
    GetBotChannelAssociationResponse.add_member(:bot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'botName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Lex bot.</p>"}))
    GetBotChannelAssociationResponse.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The date that the association between the bot and the channel was\n      created.</p>"}))
    GetBotChannelAssociationResponse.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the messaging platform.</p>"}))
    GetBotChannelAssociationResponse.add_member(:bot_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelConfigurationMap, location_name: 'botConfiguration', traits: {"smithy.api#documentation" => "<p>Provides information that the messaging platform needs to\n      communicate with the Amazon Lex bot.</p>"}))
    GetBotChannelAssociationResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the bot channel. </p>\n         <ul>\n            <li>\n               <p>\n                  <code>CREATED</code> - The channel has been created and is\n          ready for use.</p>\n            </li>\n            <li>\n               <p>\n                  <code>IN_PROGRESS</code> - Channel creation is in\n          progress.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> - There was an error creating the channel.\n          For information about the reason for the failure, see the\n            <code>failureReason</code> field.</p>\n            </li>\n         </ul>"}))
    GetBotChannelAssociationResponse.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>If <code>status</code> is <code>FAILED</code>, Amazon Lex provides the\n      reason that it failed to create the association.</p>"}))
    GetBotChannelAssociationResponse.type = Types::GetBotChannelAssociationResponse
    GetBotChannelAssociationsRequest.add_member(:bot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'botName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Lex bot in the association.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBotChannelAssociationsRequest.add_member(:bot_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasNameOrListAll, location_name: 'botAlias', traits: {"smithy.api#documentation" => "<p>An alias pointing to the specific version of the Amazon Lex bot to which\n      this association is being made.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBotChannelAssociationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for fetching the next page of associations. If\n      the response to this call is truncated, Amazon Lex returns a pagination token\n      in the response. To fetch the next page of associations, specify the\n      pagination token in the next request. </p>", "smithy.api#httpQuery" => "nextToken"}))
    GetBotChannelAssociationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of associations to return in the response. The\n      default is 50. </p>", "smithy.api#httpQuery" => "maxResults"}))
    GetBotChannelAssociationsRequest.add_member(:name_contains, Smithy::Schema::Shapes::ShapeRef.new(shape: BotChannelName, location_name: 'nameContains', traits: {"smithy.api#documentation" => "<p>Substring to match in channel association names. An association\n      will be returned if any part of its name matches the substring. For\n      example, \"xyz\" matches both \"xyzabc\" and \"abcxyz.\" To return all bot\n      channel associations, use a hyphen (\"-\") as the <code>nameContains</code>\n      parameter.</p>", "smithy.api#httpQuery" => "nameContains"}))
    GetBotChannelAssociationsRequest.type = Types::GetBotChannelAssociationsRequest
    GetBotChannelAssociationsResponse.add_member(:bot_channel_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: BotChannelAssociationList, location_name: 'botChannelAssociations', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each association, that provides\n      information about the Amazon Lex bot and its association with the channel.\n    </p>"}))
    GetBotChannelAssociationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that fetches the next page of associations. If\n      the response to this call is truncated, Amazon Lex returns a pagination token\n      in the response. To fetch the next page of associations, specify the\n      pagination token in the next request. </p>"}))
    GetBotChannelAssociationsResponse.type = Types::GetBotChannelAssociationsResponse
    GetBotRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the bot. The name is case sensitive. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBotRequest.add_member(:version_or_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'versionOrAlias', traits: {"smithy.api#documentation" => "<p>The version or alias of the bot.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBotRequest.type = Types::GetBotRequest
    GetBotResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the bot.</p>"}))
    GetBotResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the bot.</p>"}))
    GetBotResponse.add_member(:intents, Smithy::Schema::Shapes::ShapeRef.new(shape: IntentList, location_name: 'intents', traits: {"smithy.api#documentation" => "<p>An array of <code>intent</code> objects. For more information, see\n        <a>PutBot</a>.</p>"}))
    GetBotResponse.add_member(:enable_model_improvements, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enableModelImprovements', traits: {"smithy.api#documentation" => "<p>Indicates whether the bot uses accuracy improvements.\n        <code>true</code> indicates that the bot is using the improvements,\n      otherwise, <code>false</code>.</p>"}))
    GetBotResponse.add_member(:nlu_intent_confidence_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfidenceThreshold, location_name: 'nluIntentConfidenceThreshold', traits: {"smithy.api#documentation" => "<p>The score that determines where Amazon Lex inserts the\n        <code>AMAZON.FallbackIntent</code>,\n        <code>AMAZON.KendraSearchIntent</code>, or both when returning\n      alternative intents in a <a href=\"https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html\">PostContent</a> or\n        <a href=\"https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html\">PostText</a> response.\n        <code>AMAZON.FallbackIntent</code> is inserted if the confidence score\n      for all intents is below this value.\n        <code>AMAZON.KendraSearchIntent</code> is only inserted if it is\n      configured for the bot.</p>"}))
    GetBotResponse.add_member(:clarification_prompt, Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: 'clarificationPrompt', traits: {"smithy.api#documentation" => "<p>The message Amazon Lex uses when it doesn't understand the user's\n      request. For more information, see <a>PutBot</a>. </p>"}))
    GetBotResponse.add_member(:abort_statement, Smithy::Schema::Shapes::ShapeRef.new(shape: Statement, location_name: 'abortStatement', traits: {"smithy.api#documentation" => "<p>The message that Amazon Lex returns when the user elects to end the\n      conversation without completing it. For more information, see <a>PutBot</a>.</p>"}))
    GetBotResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the bot. </p>\n         <p>When the status is <code>BUILDING</code> Amazon Lex is building the bot\n      for testing and use.</p>\n         <p>If the status of the bot is <code>READY_BASIC_TESTING</code>, you\n      can test the bot using the exact utterances specified in the bot's\n      intents. When the bot is ready for full testing or to run, the status is\n        <code>READY</code>.</p>\n         <p>If there was a problem with building the bot, the status is\n        <code>FAILED</code> and the <code>failureReason</code> field explains\n      why the bot did not build.</p>\n         <p>If the bot was saved but not built, the status is\n        <code>NOT_BUILT</code>.</p>"}))
    GetBotResponse.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>If <code>status</code> is <code>FAILED</code>, Amazon Lex explains why\n      it failed to build the bot.</p>"}))
    GetBotResponse.add_member(:last_updated_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedDate', traits: {"smithy.api#documentation" => "<p>The date that the bot was updated. When you create a resource, the\n      creation date and last updated date are the same. </p>"}))
    GetBotResponse.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The date that the bot was created.</p>"}))
    GetBotResponse.add_member(:idle_session_ttl_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionTTL, location_name: 'idleSessionTTLInSeconds', traits: {"smithy.api#documentation" => "<p>The maximum time in seconds that Amazon Lex retains the data gathered in\n      a conversation. For more information, see <a>PutBot</a>.</p>"}))
    GetBotResponse.add_member(:voice_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'voiceId', traits: {"smithy.api#documentation" => "<p>The Amazon Polly voice ID that Amazon Lex uses for voice interaction\n      with the user. For more information, see <a>PutBot</a>.</p>"}))
    GetBotResponse.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checksum', traits: {"smithy.api#documentation" => "<p>Checksum of the bot used to identify a specific revision of the\n      bot's <code>$LATEST</code> version.</p>"}))
    GetBotResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the bot. For a new bot, the version is always\n        <code>$LATEST</code>.</p>"}))
    GetBotResponse.add_member(:locale, Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: 'locale', traits: {"smithy.api#documentation" => "<p> The target locale for the bot. </p>"}))
    GetBotResponse.add_member(:child_directed, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'childDirected', traits: {"smithy.api#documentation" => "<p>For each Amazon Lex bot created with the Amazon Lex Model Building Service,\n      you must specify whether your use of Amazon Lex is related to a website,\n      program, or other application that is directed or targeted, in whole or in\n      part, to children under age 13 and subject to the Children's Online\n      Privacy Protection Act (COPPA) by specifying <code>true</code> or\n        <code>false</code> in the <code>childDirected</code> field. By\n      specifying <code>true</code> in the <code>childDirected</code> field, you\n      confirm that your use of Amazon Lex <b>is</b> related\n      to a website, program, or other application that is directed or targeted,\n      in whole or in part, to children under age 13 and subject to COPPA. By\n      specifying <code>false</code> in the <code>childDirected</code> field, you\n      confirm that your use of Amazon Lex <b>is not</b>\n      related to a website, program, or other application that is directed or\n      targeted, in whole or in part, to children under age 13 and subject to\n      COPPA. You may not specify a default value for the\n        <code>childDirected</code> field that does not accurately reflect\n      whether your use of Amazon Lex is related to a website, program, or other\n      application that is directed or targeted, in whole or in part, to children\n      under age 13 and subject to COPPA.</p>\n         <p>If your use of Amazon Lex relates to a website, program, or other\n      application that is directed in whole or in part, to children under age\n      13, you must obtain any required verifiable parental consent under COPPA.\n      For information regarding the use of Amazon Lex in connection with websites,\n      programs, or other applications that are directed or targeted, in whole or\n      in part, to children under age 13, see the <a href=\"https://aws.amazon.com/lex/faqs#data-security\">Amazon Lex FAQ.</a>\n         </p>"}))
    GetBotResponse.add_member(:detect_sentiment, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'detectSentiment', traits: {"smithy.api#documentation" => "<p>Indicates whether user utterances should be sent to Amazon Comprehend\n      for sentiment analysis.</p>"}))
    GetBotResponse.type = Types::GetBotResponse
    GetBotVersionsRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the bot for which versions should be\n      returned.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBotVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for fetching the next page of bot versions. If\n      the response to this call is truncated, Amazon Lex returns a pagination token\n      in the response. To fetch the next page of versions, specify the\n      pagination token in the next request. </p>", "smithy.api#httpQuery" => "nextToken"}))
    GetBotVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of bot versions to return in the response. The\n      default is 10.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetBotVersionsRequest.type = Types::GetBotVersionsRequest
    GetBotVersionsResponse.add_member(:bots, Smithy::Schema::Shapes::ShapeRef.new(shape: BotMetadataList, location_name: 'bots', traits: {"smithy.api#documentation" => "<p>An array of <code>BotMetadata</code> objects, one for each numbered\n      version of the bot plus one for the <code>$LATEST</code>\n      version.</p>"}))
    GetBotVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for fetching the next page of bot versions. If\n      the response to this call is truncated, Amazon Lex returns a pagination token\n      in the response. To fetch the next page of versions, specify the\n      pagination token in the next request. </p>"}))
    GetBotVersionsResponse.type = Types::GetBotVersionsResponse
    GetBotsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that fetches the next page of bots. If the\n      response to this call is truncated, Amazon Lex returns a pagination token in\n      the response. To fetch the next page of bots, specify the pagination token\n      in the next request. </p>", "smithy.api#httpQuery" => "nextToken"}))
    GetBotsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of bots to return in the response that the\n      request will return. The default is 10.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetBotsRequest.add_member(:name_contains, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'nameContains', traits: {"smithy.api#documentation" => "<p>Substring to match in bot names. A bot will be returned if any part\n      of its name matches the substring. For example, \"xyz\" matches both\n      \"xyzabc\" and \"abcxyz.\"</p>", "smithy.api#httpQuery" => "nameContains"}))
    GetBotsRequest.type = Types::GetBotsRequest
    GetBotsResponse.add_member(:bots, Smithy::Schema::Shapes::ShapeRef.new(shape: BotMetadataList, location_name: 'bots', traits: {"smithy.api#documentation" => "<p>An array of <code>botMetadata</code> objects, with one entry for\n      each bot. </p>"}))
    GetBotsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, it includes a pagination token that\n      you can specify in your next request to fetch the next page of bots.\n    </p>"}))
    GetBotsResponse.type = Types::GetBotsResponse
    GetBuiltinIntentRequest.add_member(:signature, Smithy::Schema::Shapes::ShapeRef.new(shape: BuiltinIntentSignature, location_name: 'signature', traits: {"smithy.api#documentation" => "<p>The unique identifier for a built-in intent. To find the signature\n      for an intent, see <a href=\"https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents\">Standard Built-in Intents</a> in the <i>Alexa Skills\n        Kit</i>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBuiltinIntentRequest.type = Types::GetBuiltinIntentRequest
    GetBuiltinIntentResponse.add_member(:signature, Smithy::Schema::Shapes::ShapeRef.new(shape: BuiltinIntentSignature, location_name: 'signature', traits: {"smithy.api#documentation" => "<p>The unique identifier for a built-in intent.</p>"}))
    GetBuiltinIntentResponse.add_member(:supported_locales, Smithy::Schema::Shapes::ShapeRef.new(shape: LocaleList, location_name: 'supportedLocales', traits: {"smithy.api#documentation" => "<p>A list of locales that the intent supports.</p>"}))
    GetBuiltinIntentResponse.add_member(:slots, Smithy::Schema::Shapes::ShapeRef.new(shape: BuiltinIntentSlotList, location_name: 'slots', traits: {"smithy.api#documentation" => "<p>An array of <code>BuiltinIntentSlot</code> objects, one entry for\n      each slot type in the intent.</p>"}))
    GetBuiltinIntentResponse.type = Types::GetBuiltinIntentResponse
    GetBuiltinIntentsRequest.add_member(:locale, Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: 'locale', traits: {"smithy.api#documentation" => "<p>A list of locales that the intent supports.</p>", "smithy.api#httpQuery" => "locale"}))
    GetBuiltinIntentsRequest.add_member(:signature_contains, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'signatureContains', traits: {"smithy.api#documentation" => "<p>Substring to match in built-in intent signatures. An intent will be\n      returned if any part of its signature matches the substring. For example,\n      \"xyz\" matches both \"xyzabc\" and \"abcxyz.\" To find the signature for an\n      intent, see <a href=\"https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents\">Standard Built-in Intents</a> in the <i>Alexa Skills\n        Kit</i>.</p>", "smithy.api#httpQuery" => "signatureContains"}))
    GetBuiltinIntentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that fetches the next page of intents. If this\n      API call is truncated, Amazon Lex returns a pagination token in the response.\n      To fetch the next page of intents, use the pagination token in the next\n      request.</p>", "smithy.api#httpQuery" => "nextToken"}))
    GetBuiltinIntentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of intents to return in the response. The\n      default is 10.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetBuiltinIntentsRequest.type = Types::GetBuiltinIntentsRequest
    GetBuiltinIntentsResponse.add_member(:intents, Smithy::Schema::Shapes::ShapeRef.new(shape: BuiltinIntentMetadataList, location_name: 'intents', traits: {"smithy.api#documentation" => "<p>An array of <code>builtinIntentMetadata</code> objects, one for\n      each intent in the response.</p>"}))
    GetBuiltinIntentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that fetches the next page of intents. If the\n      response to this API call is truncated, Amazon Lex returns a pagination token\n      in the response. To fetch the next page of intents, specify the pagination\n      token in the next request.</p>"}))
    GetBuiltinIntentsResponse.type = Types::GetBuiltinIntentsResponse
    GetBuiltinSlotTypesRequest.add_member(:locale, Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: 'locale', traits: {"smithy.api#documentation" => "<p>A list of locales that the slot type supports.</p>", "smithy.api#httpQuery" => "locale"}))
    GetBuiltinSlotTypesRequest.add_member(:signature_contains, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'signatureContains', traits: {"smithy.api#documentation" => "<p>Substring to match in built-in slot type signatures. A slot type\n      will be returned if any part of its signature matches the substring. For\n      example, \"xyz\" matches both \"xyzabc\" and \"abcxyz.\"</p>", "smithy.api#httpQuery" => "signatureContains"}))
    GetBuiltinSlotTypesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that fetches the next page of slot types. If the\n      response to this API call is truncated, Amazon Lex returns a pagination token\n      in the response. To fetch the next page of slot types, specify the\n      pagination token in the next request.</p>", "smithy.api#httpQuery" => "nextToken"}))
    GetBuiltinSlotTypesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of slot types to return in the response. The\n      default is 10.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetBuiltinSlotTypesRequest.type = Types::GetBuiltinSlotTypesRequest
    GetBuiltinSlotTypesResponse.add_member(:slot_types, Smithy::Schema::Shapes::ShapeRef.new(shape: BuiltinSlotTypeMetadataList, location_name: 'slotTypes', traits: {"smithy.api#documentation" => "<p>An array of <code>BuiltInSlotTypeMetadata</code> objects, one entry\n      for each slot type returned.</p>"}))
    GetBuiltinSlotTypesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, the response includes a pagination\n      token that you can use in your next request to fetch the next page of slot\n      types.</p>"}))
    GetBuiltinSlotTypesResponse.type = Types::GetBuiltinSlotTypesResponse
    GetExportRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the bot to export.</p>", "smithy.api#httpQuery" => "name", "smithy.api#required" => {}}))
    GetExportRequest.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: NumericalVersion, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the bot to export.</p>", "smithy.api#httpQuery" => "version", "smithy.api#required" => {}}))
    GetExportRequest.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of resource to export. </p>", "smithy.api#httpQuery" => "resourceType", "smithy.api#required" => {}}))
    GetExportRequest.add_member(:export_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportType, location_name: 'exportType', traits: {"smithy.api#documentation" => "<p>The format of the exported data.</p>", "smithy.api#httpQuery" => "exportType", "smithy.api#required" => {}}))
    GetExportRequest.type = Types::GetExportRequest
    GetExportResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the bot being exported.</p>"}))
    GetExportResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: NumericalVersion, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the bot being exported.</p>"}))
    GetExportResponse.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the exported resource.</p>"}))
    GetExportResponse.add_member(:export_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportType, location_name: 'exportType', traits: {"smithy.api#documentation" => "<p>The format of the exported data.</p>"}))
    GetExportResponse.add_member(:export_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportStatus, location_name: 'exportStatus', traits: {"smithy.api#documentation" => "<p>The status of the export. </p>\n         <ul>\n            <li>\n               <p>\n                  <code>IN_PROGRESS</code> - The export is in progress.</p>\n            </li>\n            <li>\n               <p>\n                  <code>READY</code> - The export is complete.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> - The export could not be\n          completed.</p>\n            </li>\n         </ul>"}))
    GetExportResponse.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>If <code>status</code> is <code>FAILED</code>, Amazon Lex provides the\n      reason that it failed to export the resource.</p>"}))
    GetExportResponse.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'url', traits: {"smithy.api#documentation" => "<p>An S3 pre-signed URL that provides the location of the exported\n      resource. The exported resource is a ZIP archive that contains the\n      exported resource in JSON format. The structure of the archive may change.\n      Your code should not rely on the archive structure.</p>"}))
    GetExportResponse.type = Types::GetExportResponse
    GetImportRequest.add_member(:import_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'importId', traits: {"smithy.api#documentation" => "<p>The identifier of the import job information to return.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImportRequest.type = Types::GetImportRequest
    GetImportResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name given to the import job.</p>"}))
    GetImportResponse.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of resource imported.</p>"}))
    GetImportResponse.add_member(:merge_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: MergeStrategy, location_name: 'mergeStrategy', traits: {"smithy.api#documentation" => "<p>The action taken when there was a conflict between an existing\n      resource and a resource in the import file.</p>"}))
    GetImportResponse.add_member(:import_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'importId', traits: {"smithy.api#documentation" => "<p>The identifier for the specific import job.</p>"}))
    GetImportResponse.add_member(:import_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportStatus, location_name: 'importStatus', traits: {"smithy.api#documentation" => "<p>The status of the import job. If the status is <code>FAILED</code>,\n      you can get the reason for the failure from the <code>failureReason</code>\n      field.</p>"}))
    GetImportResponse.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>A string that describes why an import job failed to\n      complete.</p>"}))
    GetImportResponse.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>A timestamp for the date and time that the import job was\n      created.</p>"}))
    GetImportResponse.type = Types::GetImportResponse
    GetIntentRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: IntentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the intent. The name is case sensitive. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntentRequest.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the intent.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntentRequest.type = Types::GetIntentRequest
    GetIntentResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: IntentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the intent.</p>"}))
    GetIntentResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the intent.</p>"}))
    GetIntentResponse.add_member(:slots, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotList, location_name: 'slots', traits: {"smithy.api#documentation" => "<p>An array of intent slots configured for the intent.</p>"}))
    GetIntentResponse.add_member(:sample_utterances, Smithy::Schema::Shapes::ShapeRef.new(shape: IntentUtteranceList, location_name: 'sampleUtterances', traits: {"smithy.api#documentation" => "<p>An array of sample utterances configured for the intent.</p>"}))
    GetIntentResponse.add_member(:confirmation_prompt, Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: 'confirmationPrompt', traits: {"smithy.api#documentation" => "<p>If defined in the bot, Amazon Lex uses prompt to confirm the intent\n      before fulfilling the user's request. For more information, see <a>PutIntent</a>. </p>"}))
    GetIntentResponse.add_member(:rejection_statement, Smithy::Schema::Shapes::ShapeRef.new(shape: Statement, location_name: 'rejectionStatement', traits: {"smithy.api#documentation" => "<p>If the user answers \"no\" to the question defined in\n        <code>confirmationPrompt</code>, Amazon Lex responds with this statement to\n      acknowledge that the intent was canceled. </p>"}))
    GetIntentResponse.add_member(:follow_up_prompt, Smithy::Schema::Shapes::ShapeRef.new(shape: FollowUpPrompt, location_name: 'followUpPrompt', traits: {"smithy.api#documentation" => "<p>If defined in the bot, Amazon Lex uses this prompt to solicit additional\n      user activity after the intent is fulfilled. For more information, see\n        <a>PutIntent</a>.</p>"}))
    GetIntentResponse.add_member(:conclusion_statement, Smithy::Schema::Shapes::ShapeRef.new(shape: Statement, location_name: 'conclusionStatement', traits: {"smithy.api#documentation" => "<p>After the Lambda function specified in the\n        <code>fulfillmentActivity</code> element fulfills the intent, Amazon Lex\n      conveys this statement to the user.</p>"}))
    GetIntentResponse.add_member(:dialog_code_hook, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeHook, location_name: 'dialogCodeHook', traits: {"smithy.api#documentation" => "<p>If defined in the bot, Amazon Amazon Lex invokes this Lambda function\n      for each user input. For more information, see <a>PutIntent</a>. </p>"}))
    GetIntentResponse.add_member(:fulfillment_activity, Smithy::Schema::Shapes::ShapeRef.new(shape: FulfillmentActivity, location_name: 'fulfillmentActivity', traits: {"smithy.api#documentation" => "<p>Describes how the intent is fulfilled. For more information, see\n        <a>PutIntent</a>. </p>"}))
    GetIntentResponse.add_member(:parent_intent_signature, Smithy::Schema::Shapes::ShapeRef.new(shape: BuiltinIntentSignature, location_name: 'parentIntentSignature', traits: {"smithy.api#documentation" => "<p>A unique identifier for a built-in intent.</p>"}))
    GetIntentResponse.add_member(:last_updated_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedDate', traits: {"smithy.api#documentation" => "<p>The date that the intent was updated. When you create a resource,\n      the creation date and the last updated date are the same. </p>"}))
    GetIntentResponse.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The date that the intent was created.</p>"}))
    GetIntentResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the intent.</p>"}))
    GetIntentResponse.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checksum', traits: {"smithy.api#documentation" => "<p>Checksum of the intent.</p>"}))
    GetIntentResponse.add_member(:kendra_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: KendraConfiguration, location_name: 'kendraConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration information, if any, to connect to an Amazon Kendra\n      index with the <code>AMAZON.KendraSearchIntent</code> intent.</p>"}))
    GetIntentResponse.add_member(:input_contexts, Smithy::Schema::Shapes::ShapeRef.new(shape: InputContextList, location_name: 'inputContexts', traits: {"smithy.api#documentation" => "<p>An array of <code>InputContext</code> objects that lists the contexts\n      that must be active for Amazon Lex to choose the intent in a conversation with\n      the user.</p>"}))
    GetIntentResponse.add_member(:output_contexts, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputContextList, location_name: 'outputContexts', traits: {"smithy.api#documentation" => "<p>An array of <code>OutputContext</code> objects that lists the contexts\n      that the intent activates when the intent is fulfilled.</p>"}))
    GetIntentResponse.type = Types::GetIntentResponse
    GetIntentVersionsRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: IntentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the intent for which versions should be\n      returned.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntentVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for fetching the next page of intent versions.\n      If the response to this call is truncated, Amazon Lex returns a pagination\n      token in the response. To fetch the next page of versions, specify the\n      pagination token in the next request. </p>", "smithy.api#httpQuery" => "nextToken"}))
    GetIntentVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of intent versions to return in the response.\n      The default is 10.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetIntentVersionsRequest.type = Types::GetIntentVersionsRequest
    GetIntentVersionsResponse.add_member(:intents, Smithy::Schema::Shapes::ShapeRef.new(shape: IntentMetadataList, location_name: 'intents', traits: {"smithy.api#documentation" => "<p>An array of <code>IntentMetadata</code> objects, one for each\n      numbered version of the intent plus one for the <code>$LATEST</code>\n      version.</p>"}))
    GetIntentVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for fetching the next page of intent versions.\n      If the response to this call is truncated, Amazon Lex returns a pagination\n      token in the response. To fetch the next page of versions, specify the\n      pagination token in the next request. </p>"}))
    GetIntentVersionsResponse.type = Types::GetIntentVersionsResponse
    GetIntentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that fetches the next page of intents. If the\n      response to this API call is truncated, Amazon Lex returns a pagination token\n      in the response. To fetch the next page of intents, specify the pagination\n      token in the next request. </p>", "smithy.api#httpQuery" => "nextToken"}))
    GetIntentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of intents to return in the response. The\n      default is 10.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetIntentsRequest.add_member(:name_contains, Smithy::Schema::Shapes::ShapeRef.new(shape: IntentName, location_name: 'nameContains', traits: {"smithy.api#documentation" => "<p>Substring to match in intent names. An intent will be returned if\n      any part of its name matches the substring. For example, \"xyz\" matches\n      both \"xyzabc\" and \"abcxyz.\"</p>", "smithy.api#httpQuery" => "nameContains"}))
    GetIntentsRequest.type = Types::GetIntentsRequest
    GetIntentsResponse.add_member(:intents, Smithy::Schema::Shapes::ShapeRef.new(shape: IntentMetadataList, location_name: 'intents', traits: {"smithy.api#documentation" => "<p>An array of <code>Intent</code> objects. For more information, see\n        <a>PutBot</a>.</p>"}))
    GetIntentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, the response includes a pagination\n      token that you can specify in your next request to fetch the next page of\n      intents. </p>"}))
    GetIntentsResponse.type = Types::GetIntentsResponse
    GetMigrationRequest.add_member(:migration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationId, location_name: 'migrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the migration to view. The\n        <code>migrationID</code> is returned by the  operation.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMigrationRequest.type = Types::GetMigrationRequest
    GetMigrationResponse.add_member(:migration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationId, location_name: 'migrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the migration. This is the same as the\n      identifier used when calling the <code>GetMigration</code>\n      operation.</p>"}))
    GetMigrationResponse.add_member(:v1_bot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'v1BotName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Lex V1 bot migrated to Amazon Lex V2.</p>"}))
    GetMigrationResponse.add_member(:v1_bot_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'v1BotVersion', traits: {"smithy.api#documentation" => "<p>The version of the Amazon Lex V1 bot migrated to Amazon Lex V2.</p>"}))
    GetMigrationResponse.add_member(:v1_bot_locale, Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: 'v1BotLocale', traits: {"smithy.api#documentation" => "<p>The locale of the Amazon Lex V1 bot migrated to Amazon Lex V2.</p>"}))
    GetMigrationResponse.add_member(:v2_bot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: V2BotId, location_name: 'v2BotId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Amazon Lex V2 bot that the Amazon Lex V1 is being\n      migrated to.</p>"}))
    GetMigrationResponse.add_member(:v2_bot_role, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'v2BotRole', traits: {"smithy.api#documentation" => "<p>The IAM role that Amazon Lex uses to run the Amazon Lex V2 bot.</p>"}))
    GetMigrationResponse.add_member(:migration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationStatus, location_name: 'migrationStatus', traits: {"smithy.api#documentation" => "<p>Indicates the status of the migration. When the status is\n        <code>COMPLETE</code> the migration is finished and the bot is available\n      in Amazon Lex V2. There may be alerts and warnings that need to be resolved to\n      complete the migration.</p>"}))
    GetMigrationResponse.add_member(:migration_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationStrategy, location_name: 'migrationStrategy', traits: {"smithy.api#documentation" => "<p>The strategy used to conduct the migration.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CREATE_NEW</code> - Creates a new Amazon Lex V2 bot and migrates\n          the Amazon Lex V1 bot to the new bot.</p>\n            </li>\n            <li>\n               <p>\n                  <code>UPDATE_EXISTING</code> - Overwrites the existing Amazon Lex V2 bot\n        metadata and the locale being migrated. It doesn't change any other\n        locales in the Amazon Lex V2 bot. If the locale doesn't exist, a new locale\n        is created in the Amazon Lex V2 bot.</p>\n            </li>\n         </ul>"}))
    GetMigrationResponse.add_member(:migration_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'migrationTimestamp', traits: {"smithy.api#documentation" => "<p>The date and time that the migration started.</p>"}))
    GetMigrationResponse.add_member(:alerts, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationAlerts, location_name: 'alerts', traits: {"smithy.api#documentation" => "<p>A list of alerts and warnings that indicate issues with the migration\n      for the Amazon Lex V1 bot to Amazon Lex V2. You receive a warning when an Amazon Lex V1\n      feature has a different implementation if Amazon Lex V2.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/lexv2/latest/dg/migrate.html\">Migrating a bot</a> in the <i>Amazon Lex V2\n        developer guide</i>.</p>"}))
    GetMigrationResponse.type = Types::GetMigrationResponse
    GetMigrationsRequest.add_member(:sort_by_attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationSortAttribute, location_name: 'sortByAttribute', traits: {"smithy.api#documentation" => "<p>The field to sort the list of migrations by. You can sort by the\n      Amazon Lex V1 bot name or the date and time that the migration was\n      started.</p>", "smithy.api#httpQuery" => "sortByAttribute"}))
    GetMigrationsRequest.add_member(:sort_by_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'sortByOrder', traits: {"smithy.api#documentation" => "<p>The order so sort the list.</p>", "smithy.api#httpQuery" => "sortByOrder"}))
    GetMigrationsRequest.add_member(:v1_bot_name_contains, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'v1BotNameContains', traits: {"smithy.api#documentation" => "<p>Filters the list to contain only bots whose name contains the\n      specified string. The string is matched anywhere in bot name.</p>", "smithy.api#httpQuery" => "v1BotNameContains"}))
    GetMigrationsRequest.add_member(:migration_status_equals, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationStatus, location_name: 'migrationStatusEquals', traits: {"smithy.api#documentation" => "<p>Filters the list to contain only migrations in the specified state.</p>", "smithy.api#httpQuery" => "migrationStatusEquals"}))
    GetMigrationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of migrations to return in the response. The\n      default is 10.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetMigrationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that fetches the next page of migrations. If the\n      response to this operation is truncated, Amazon Lex returns a pagination token\n      in the response. To fetch the next page of migrations, specify the\n      pagination token in the request.</p>", "smithy.api#httpQuery" => "nextToken"}))
    GetMigrationsRequest.type = Types::GetMigrationsRequest
    GetMigrationsResponse.add_member(:migration_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationSummaryList, location_name: 'migrationSummaries', traits: {"smithy.api#documentation" => "<p>An array of summaries for migrations from Amazon Lex V1 to Amazon Lex V2. To see\n      details of the migration, use the <code>migrationId</code> from the\n      summary in a call to the \n      operation.</p>"}))
    GetMigrationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, it includes a pagination token that you\n      can specify in your next request to fetch the next page of\n      migrations.</p>"}))
    GetMigrationsResponse.type = Types::GetMigrationsResponse
    GetSlotTypeRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the slot type. The name is case sensitive. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSlotTypeRequest.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the slot type. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSlotTypeRequest.type = Types::GetSlotTypeRequest
    GetSlotTypeResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the slot type.</p>"}))
    GetSlotTypeResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the slot type.</p>"}))
    GetSlotTypeResponse.add_member(:enumeration_values, Smithy::Schema::Shapes::ShapeRef.new(shape: EnumerationValues, location_name: 'enumerationValues', traits: {"smithy.api#documentation" => "<p>A list of <code>EnumerationValue</code> objects that defines the\n      values that the slot type can take.</p>"}))
    GetSlotTypeResponse.add_member(:last_updated_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedDate', traits: {"smithy.api#documentation" => "<p>The date that the slot type was updated. When you create a\n      resource, the creation date and last update date are the same.</p>"}))
    GetSlotTypeResponse.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The date that the slot type was created.</p>"}))
    GetSlotTypeResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the slot type.</p>"}))
    GetSlotTypeResponse.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checksum', traits: {"smithy.api#documentation" => "<p>Checksum of the <code>$LATEST</code> version of the slot\n      type.</p>"}))
    GetSlotTypeResponse.add_member(:value_selection_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotValueSelectionStrategy, location_name: 'valueSelectionStrategy', traits: {"smithy.api#documentation" => "<p>The strategy that Amazon Lex uses to determine the value of the slot.\n      For more information, see <a>PutSlotType</a>.</p>"}))
    GetSlotTypeResponse.add_member(:parent_slot_type_signature, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomOrBuiltinSlotTypeName, location_name: 'parentSlotTypeSignature', traits: {"smithy.api#documentation" => "<p>The built-in slot type used as a parent for the slot type.</p>"}))
    GetSlotTypeResponse.add_member(:slot_type_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeConfigurations, location_name: 'slotTypeConfigurations', traits: {"smithy.api#documentation" => "<p>Configuration information that extends the parent built-in slot\n      type.</p>"}))
    GetSlotTypeResponse.type = Types::GetSlotTypeResponse
    GetSlotTypeVersionsRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the slot type for which versions should be\n      returned.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSlotTypeVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for fetching the next page of slot type\n      versions. If the response to this call is truncated, Amazon Lex returns a\n      pagination token in the response. To fetch the next page of versions,\n      specify the pagination token in the next request. </p>", "smithy.api#httpQuery" => "nextToken"}))
    GetSlotTypeVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of slot type versions to return in the response.\n      The default is 10.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetSlotTypeVersionsRequest.type = Types::GetSlotTypeVersionsRequest
    GetSlotTypeVersionsResponse.add_member(:slot_types, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeMetadataList, location_name: 'slotTypes', traits: {"smithy.api#documentation" => "<p>An array of <code>SlotTypeMetadata</code> objects, one for each\n      numbered version of the slot type plus one for the <code>$LATEST</code>\n      version.</p>"}))
    GetSlotTypeVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for fetching the next page of slot type\n      versions. If the response to this call is truncated, Amazon Lex returns a\n      pagination token in the response. To fetch the next page of versions,\n      specify the pagination token in the next request. </p>"}))
    GetSlotTypeVersionsResponse.type = Types::GetSlotTypeVersionsResponse
    GetSlotTypesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that fetches the next page of slot types. If the\n      response to this API call is truncated, Amazon Lex returns a pagination token\n      in the response. To fetch next page of slot types, specify the pagination\n      token in the next request.</p>", "smithy.api#httpQuery" => "nextToken"}))
    GetSlotTypesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of slot types to return in the response. The\n      default is 10.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetSlotTypesRequest.add_member(:name_contains, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeName, location_name: 'nameContains', traits: {"smithy.api#documentation" => "<p>Substring to match in slot type names. A slot type will be returned\n      if any part of its name matches the substring. For example, \"xyz\" matches\n      both \"xyzabc\" and \"abcxyz.\"</p>", "smithy.api#httpQuery" => "nameContains"}))
    GetSlotTypesRequest.type = Types::GetSlotTypesRequest
    GetSlotTypesResponse.add_member(:slot_types, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeMetadataList, location_name: 'slotTypes', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each slot type, that provides\n      information such as the name of the slot type, the version, and a\n      description.</p>"}))
    GetSlotTypesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, it includes a pagination token that\n      you can specify in your next request to fetch the next page of slot\n      types.</p>"}))
    GetSlotTypesResponse.type = Types::GetSlotTypesResponse
    GetUtterancesViewRequest.add_member(:bot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'botName', traits: {"smithy.api#documentation" => "<p>The name of the bot for which utterance information should be\n      returned.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUtterancesViewRequest.add_member(:bot_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: BotVersions, location_name: 'botVersions', traits: {"smithy.api#documentation" => "<p>An array of bot versions for which utterance information should be\n      returned. The limit is 5 versions per request.</p>", "smithy.api#httpQuery" => "bot_versions", "smithy.api#required" => {}}))
    GetUtterancesViewRequest.add_member(:status_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusType, location_name: 'statusType', traits: {"smithy.api#documentation" => "<p>To return utterances that were recognized and handled, use\n        <code>Detected</code>. To return utterances that were not recognized,\n      use <code>Missed</code>.</p>", "smithy.api#httpQuery" => "status_type", "smithy.api#required" => {}}))
    GetUtterancesViewRequest.type = Types::GetUtterancesViewRequest
    GetUtterancesViewResponse.add_member(:bot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'botName', traits: {"smithy.api#documentation" => "<p>The name of the bot for which utterance information was\n      returned.</p>"}))
    GetUtterancesViewResponse.add_member(:utterances, Smithy::Schema::Shapes::ShapeRef.new(shape: ListsOfUtterances, location_name: 'utterances', traits: {"smithy.api#documentation" => "<p>An array of <a>UtteranceList</a> objects, each\n      containing a list of <a>UtteranceData</a> objects describing\n      the utterances that were processed by your bot. The response contains a\n      maximum of 100 <code>UtteranceData</code> objects for each version. Amazon Lex\n      returns the most frequent utterances received by the bot in the last 15\n      days.</p>"}))
    GetUtterancesViewResponse.type = Types::GetUtterancesViewResponse
    ImportStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ImportStatus.add_member(:complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "COMPLETE"}))
    ImportStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    InputContext.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: InputContextName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the context.</p>", "smithy.api#required" => {}}))
    InputContext.type = Types::InputContext
    InputContextList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InputContext)
    Intent.add_member(:intent_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IntentName, location_name: 'intentName', traits: {"smithy.api#documentation" => "<p>The name of the intent.</p>", "smithy.api#required" => {}}))
    Intent.add_member(:intent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'intentVersion', traits: {"smithy.api#documentation" => "<p>The version of the intent.</p>", "smithy.api#required" => {}}))
    Intent.type = Types::Intent
    IntentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Intent)
    IntentMetadata.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: IntentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the intent.</p>"}))
    IntentMetadata.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the intent.</p>"}))
    IntentMetadata.add_member(:last_updated_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedDate', traits: {"smithy.api#documentation" => "<p>The date that the intent was updated. When you create an intent,\n      the creation date and last updated date are the same.</p>"}))
    IntentMetadata.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The date that the intent was created.</p>"}))
    IntentMetadata.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the intent.</p>"}))
    IntentMetadata.type = Types::IntentMetadata
    IntentMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IntentMetadata)
    IntentUtteranceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Utterance)
    InternalFailureException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InternalFailureException.type = Types::InternalFailureException
    KendraConfiguration.add_member(:kendra_index, Smithy::Schema::Shapes::ShapeRef.new(shape: KendraIndexArn, location_name: 'kendraIndex', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Kendra index that you\n      want the AMAZON.KendraSearchIntent intent to search. The index must be in\n      the same account and Region as the Amazon Lex bot. If the Amazon Kendra index\n      does not exist, you get an exception when you call the\n        <code>PutIntent</code> operation.</p>", "smithy.api#required" => {}}))
    KendraConfiguration.add_member(:query_filter_string, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryFilterString, location_name: 'queryFilterString', traits: {"smithy.api#documentation" => "<p>A query filter that Amazon Lex sends to Amazon Kendra to filter the\n      response from the query. The filter is in the format defined by Amazon\n      Kendra. For more information, see <a href=\"http://docs.aws.amazon.com/kendra/latest/dg/filtering.html\">Filtering\n        queries</a>.</p>\n         <p>You can override this filter string with a new filter string at\n      runtime.</p>"}))
    KendraConfiguration.add_member(:role, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'role', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM role that has permission to\n      search the Amazon Kendra index. The role must be in the same account and\n      Region as the Amazon Lex bot. If the role does not exist, you get an exception\n      when you call the <code>PutIntent</code> operation.</p>", "smithy.api#required" => {}}))
    KendraConfiguration.type = Types::KendraConfiguration
    LimitExceededException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'retryAfterSeconds', traits: {"smithy.api#httpHeader" => "Retry-After"}))
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    ListOfUtterance.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UtteranceData)
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to get a list of tags\n      for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags associated with a resource.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListsOfUtterances.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UtteranceList)
    Locale.add_member(:de_de, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DE_DE', traits: {"smithy.api#enumValue" => "de-DE"}))
    Locale.add_member(:en_au, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN_AU', traits: {"smithy.api#enumValue" => "en-AU"}))
    Locale.add_member(:en_gb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN_GB', traits: {"smithy.api#enumValue" => "en-GB"}))
    Locale.add_member(:en_in, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN_IN', traits: {"smithy.api#enumValue" => "en-IN"}))
    Locale.add_member(:en_us, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN_US', traits: {"smithy.api#enumValue" => "en-US"}))
    Locale.add_member(:es_419, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ES_419', traits: {"smithy.api#enumValue" => "es-419"}))
    Locale.add_member(:es_es, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ES_ES', traits: {"smithy.api#enumValue" => "es-ES"}))
    Locale.add_member(:es_us, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ES_US', traits: {"smithy.api#enumValue" => "es-US"}))
    Locale.add_member(:fr_fr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FR_FR', traits: {"smithy.api#enumValue" => "fr-FR"}))
    Locale.add_member(:fr_ca, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FR_CA', traits: {"smithy.api#enumValue" => "fr-CA"}))
    Locale.add_member(:it_it, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IT_IT', traits: {"smithy.api#enumValue" => "it-IT"}))
    Locale.add_member(:ja_jp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JA_JP', traits: {"smithy.api#enumValue" => "ja-JP"}))
    Locale.add_member(:ko_kr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KO_KR', traits: {"smithy.api#enumValue" => "ko-KR"}))
    LocaleList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Locale)
    LogSettingsRequest.add_member(:log_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LogType, location_name: 'logType', traits: {"smithy.api#documentation" => "<p>The type of logging to enable. Text logs are delivered to a CloudWatch\n      Logs log group. Audio logs are delivered to an S3 bucket.</p>", "smithy.api#required" => {}}))
    LogSettingsRequest.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 'destination', traits: {"smithy.api#documentation" => "<p>Where the logs will be delivered. Text logs are delivered to a\n      CloudWatch Logs log group. Audio logs are delivered to an S3\n      bucket.</p>", "smithy.api#required" => {}}))
    LogSettingsRequest.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AWS KMS customer managed key for\n      encrypting audio logs delivered to an S3 bucket. The key does not apply to\n      CloudWatch Logs and is optional for S3 buckets.</p>"}))
    LogSettingsRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the CloudWatch Logs log group or S3\n      bucket where the logs should be delivered.</p>", "smithy.api#required" => {}}))
    LogSettingsRequest.type = Types::LogSettingsRequest
    LogSettingsRequestList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LogSettingsRequest)
    LogSettingsResponse.add_member(:log_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LogType, location_name: 'logType', traits: {"smithy.api#documentation" => "<p>The type of logging that is enabled.</p>"}))
    LogSettingsResponse.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 'destination', traits: {"smithy.api#documentation" => "<p>The destination where logs are delivered.</p>"}))
    LogSettingsResponse.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the key used to encrypt audio logs\n      in an S3 bucket.</p>"}))
    LogSettingsResponse.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the CloudWatch Logs log group or S3\n      bucket where the logs are delivered.</p>"}))
    LogSettingsResponse.add_member(:resource_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePrefix, location_name: 'resourcePrefix', traits: {"smithy.api#documentation" => "<p>The resource prefix is the first part of the S3 object key within the\n      S3 bucket that you specified to contain audio logs. For CloudWatch Logs it\n      is the prefix of the log stream name within the log group that you\n      specified. </p>"}))
    LogSettingsResponse.type = Types::LogSettingsResponse
    LogSettingsResponseList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LogSettingsResponse)
    LogType.add_member(:audio, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUDIO', traits: {"smithy.api#enumValue" => "AUDIO"}))
    LogType.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEXT', traits: {"smithy.api#enumValue" => "TEXT"}))
    MergeStrategy.add_member(:overwrite_latest, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OVERWRITE_LATEST', traits: {"smithy.api#enumValue" => "OVERWRITE_LATEST"}))
    MergeStrategy.add_member(:fail_on_conflict, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAIL_ON_CONFLICT', traits: {"smithy.api#enumValue" => "FAIL_ON_CONFLICT"}))
    Message.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The content type of the message string.</p>", "smithy.api#required" => {}}))
    Message.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentString, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The text of the message.</p>", "smithy.api#required" => {}}))
    Message.add_member(:group_number, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupNumber, location_name: 'groupNumber', traits: {"smithy.api#documentation" => "<p>Identifies the message group that the message belongs to. When a group\n      is assigned to a message, Amazon Lex returns one message from each group in the\n      response.</p>"}))
    Message.type = Types::Message
    MessageList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Message)
    MigrationAlert.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationAlertType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of alert. There are two kinds of alerts:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ERROR</code> - There was an issue with the migration that\n          can't be resolved. The migration stops.</p>\n            </li>\n            <li>\n               <p>\n                  <code>WARN</code> - There was an issue with the migration that\n          requires manual changes to the new Amazon Lex V2 bot. The migration\n          continues.</p>\n            </li>\n         </ul>"}))
    MigrationAlert.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationAlertMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message that describes why the alert was issued.</p>"}))
    MigrationAlert.add_member(:details, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationAlertDetails, location_name: 'details', traits: {"smithy.api#documentation" => "<p>Additional details about the alert.</p>"}))
    MigrationAlert.add_member(:reference_ur_ls, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationAlertReferenceURLs, location_name: 'referenceURLs', traits: {"smithy.api#documentation" => "<p>A link to the Amazon Lex documentation that describes how to resolve\n    the alert.</p>"}))
    MigrationAlert.type = Types::MigrationAlert
    MigrationAlertDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationAlertDetail)
    MigrationAlertReferenceURLs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationAlertReferenceURL)
    MigrationAlertType.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    MigrationAlertType.add_member(:warn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WARN', traits: {"smithy.api#enumValue" => "WARN"}))
    MigrationAlerts.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationAlert)
    MigrationSortAttribute.add_member(:v1_bot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'V1_BOT_NAME', traits: {"smithy.api#enumValue" => "V1_BOT_NAME"}))
    MigrationSortAttribute.add_member(:migration_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MIGRATION_DATE_TIME', traits: {"smithy.api#enumValue" => "MIGRATION_DATE_TIME"}))
    MigrationStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    MigrationStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    MigrationStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    MigrationStrategy.add_member(:create_new, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_NEW', traits: {"smithy.api#enumValue" => "CREATE_NEW"}))
    MigrationStrategy.add_member(:update_existing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_EXISTING', traits: {"smithy.api#enumValue" => "UPDATE_EXISTING"}))
    MigrationSummary.add_member(:migration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationId, location_name: 'migrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier that Amazon Lex assigned to the migration.</p>"}))
    MigrationSummary.add_member(:v1_bot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'v1BotName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Lex V1 bot that is the source of the migration.</p>"}))
    MigrationSummary.add_member(:v1_bot_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'v1BotVersion', traits: {"smithy.api#documentation" => "<p>The version of the Amazon Lex V1 bot that is the source of the migration.</p>"}))
    MigrationSummary.add_member(:v1_bot_locale, Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: 'v1BotLocale', traits: {"smithy.api#documentation" => "<p>The locale of the Amazon Lex V1 bot that is the source of the migration.</p>"}))
    MigrationSummary.add_member(:v2_bot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: V2BotId, location_name: 'v2BotId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Amazon Lex V2 that is the destination of the migration.</p>"}))
    MigrationSummary.add_member(:v2_bot_role, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'v2BotRole', traits: {"smithy.api#documentation" => "<p>The IAM role that Amazon Lex uses to run the Amazon Lex V2 bot.</p>"}))
    MigrationSummary.add_member(:migration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationStatus, location_name: 'migrationStatus', traits: {"smithy.api#documentation" => "<p>The status of the operation. When the status is <code>COMPLETE</code>\n    the bot is available in Amazon Lex V2. There may be alerts and warnings that\n    need to be resolved to complete the migration.</p>"}))
    MigrationSummary.add_member(:migration_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationStrategy, location_name: 'migrationStrategy', traits: {"smithy.api#documentation" => "<p>The strategy used to conduct the migration.</p>"}))
    MigrationSummary.add_member(:migration_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'migrationTimestamp', traits: {"smithy.api#documentation" => "<p>The date and time that the migration started.</p>"}))
    MigrationSummary.type = Types::MigrationSummary
    MigrationSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationSummary)
    NotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    NotFoundException.type = Types::NotFoundException
    ObfuscationSetting.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    ObfuscationSetting.add_member(:default_obfuscation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT_OBFUSCATION', traits: {"smithy.api#enumValue" => "DEFAULT_OBFUSCATION"}))
    OutputContext.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputContextName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the context.</p>", "smithy.api#required" => {}}))
    OutputContext.add_member(:time_to_live_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: ContextTimeToLiveInSeconds, location_name: 'timeToLiveInSeconds', traits: {"smithy.api#documentation" => "<p>The number of seconds that the context should be active after it is\n      first sent in a <code>PostContent</code> or <code>PostText</code>\n      response. You can set the value between 5 and 86,400 seconds (24\n      hours).</p>", "smithy.api#required" => {}}))
    OutputContext.add_member(:turns_to_live, Smithy::Schema::Shapes::ShapeRef.new(shape: ContextTurnsToLive, location_name: 'turnsToLive', traits: {"smithy.api#documentation" => "<p>The number of conversation turns that the context should be active. A\n      conversation turn is one <code>PostContent</code> or <code>PostText</code>\n      request and the corresponding response from Amazon Lex.</p>", "smithy.api#required" => {}}))
    OutputContext.type = Types::OutputContext
    OutputContextList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OutputContext)
    PreconditionFailedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    PreconditionFailedException.type = Types::PreconditionFailedException
    ProcessBehavior.add_member(:save, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAVE', traits: {"smithy.api#enumValue" => "SAVE"}))
    ProcessBehavior.add_member(:build, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUILD', traits: {"smithy.api#enumValue" => "BUILD"}))
    Prompt.add_member(:messages, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageList, location_name: 'messages', traits: {"smithy.api#documentation" => "<p>An array of objects, each of which provides a message string and\n      its type. You can specify the message string in plain text or in Speech\n      Synthesis Markup Language (SSML).</p>", "smithy.api#required" => {}}))
    Prompt.add_member(:max_attempts, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptMaxAttempts, location_name: 'maxAttempts', traits: {"smithy.api#documentation" => "<p>The number of times to prompt the user for information.</p>", "smithy.api#required" => {}}))
    Prompt.add_member(:response_card, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseCard, location_name: 'responseCard', traits: {"smithy.api#documentation" => "<p>A response card. Amazon Lex uses this prompt at runtime, in the\n        <code>PostText</code> API response. It substitutes session attributes\n      and slot values for placeholders in the response card. For more\n      information, see <a>ex-resp-card</a>. </p>"}))
    Prompt.type = Types::Prompt
    PutBotAliasRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the alias. The name is <i>not</i> case\n      sensitive.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutBotAliasRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the alias.</p>"}))
    PutBotAliasRequest.add_member(:bot_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'botVersion', traits: {"smithy.api#documentation" => "<p>The version of the bot.</p>", "smithy.api#required" => {}}))
    PutBotAliasRequest.add_member(:bot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'botName', traits: {"smithy.api#documentation" => "<p>The name of the bot.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutBotAliasRequest.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checksum', traits: {"smithy.api#documentation" => "<p>Identifies a specific revision of the <code>$LATEST</code>\n      version.</p>\n         <p>When you create a new bot alias, leave the <code>checksum</code>\n      field blank. If you specify a checksum you get a\n        <code>BadRequestException</code> exception.</p>\n         <p>When you want to update a bot alias, set the <code>checksum</code>\n      field to the checksum of the most recent revision of the\n        <code>$LATEST</code> version. If you don't specify the <code>\n        checksum</code> field, or if the checksum does not match the\n        <code>$LATEST</code> version, you get a\n        <code>PreconditionFailedException</code> exception.</p>"}))
    PutBotAliasRequest.add_member(:conversation_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationLogsRequest, location_name: 'conversationLogs', traits: {"smithy.api#documentation" => "<p>Settings for conversation logs for the alias.</p>"}))
    PutBotAliasRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of tags to add to the bot alias. You can only add tags when you\n      create an alias, you can't use the <code>PutBotAlias</code> operation to\n      update the tags on a bot alias. To update tags, use the\n        <code>TagResource</code> operation.</p>"}))
    PutBotAliasRequest.type = Types::PutBotAliasRequest
    PutBotAliasResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the alias.</p>"}))
    PutBotAliasResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the alias.</p>"}))
    PutBotAliasResponse.add_member(:bot_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'botVersion', traits: {"smithy.api#documentation" => "<p>The version of the bot that the alias points to.</p>"}))
    PutBotAliasResponse.add_member(:bot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'botName', traits: {"smithy.api#documentation" => "<p>The name of the bot that the alias points to.</p>"}))
    PutBotAliasResponse.add_member(:last_updated_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedDate', traits: {"smithy.api#documentation" => "<p>The date that the bot alias was updated. When you create a\n      resource, the creation date and the last updated date are the\n      same.</p>"}))
    PutBotAliasResponse.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The date that the bot alias was created.</p>"}))
    PutBotAliasResponse.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checksum', traits: {"smithy.api#documentation" => "<p>The checksum for the current version of the alias.</p>"}))
    PutBotAliasResponse.add_member(:conversation_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationLogsResponse, location_name: 'conversationLogs', traits: {"smithy.api#documentation" => "<p>The settings that determine how Amazon Lex uses conversation logs for the\n      alias.</p>"}))
    PutBotAliasResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of tags associated with a bot.</p>"}))
    PutBotAliasResponse.type = Types::PutBotAliasResponse
    PutBotRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the bot. The name is <i>not</i> case\n      sensitive. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutBotRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the bot.</p>"}))
    PutBotRequest.add_member(:intents, Smithy::Schema::Shapes::ShapeRef.new(shape: IntentList, location_name: 'intents', traits: {"smithy.api#documentation" => "<p>An array of <code>Intent</code> objects. Each intent represents a\n      command that a user can express. For example, a pizza ordering bot might\n      support an OrderPizza intent. For more information, see <a>how-it-works</a>.</p>"}))
    PutBotRequest.add_member(:enable_model_improvements, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enableModelImprovements', traits: {"smithy.api#documentation" => "<p>Set to <code>true</code> to enable access to natural language\n      understanding improvements. </p>\n         <p>When you set the <code>enableModelImprovements</code> parameter to\n        <code>true</code> you can use the\n        <code>nluIntentConfidenceThreshold</code> parameter to configure\n      confidence scores. For more information, see <a href=\"https://docs.aws.amazon.com/lex/latest/dg/confidence-scores.html\">Confidence Scores</a>.</p>\n         <p>You can only set the <code>enableModelImprovements</code> parameter in\n      certain Regions. If you set the parameter to <code>true</code>, your bot\n      has access to accuracy improvements.</p>\n         <p>The Regions where you can set the <code>enableModelImprovements</code>\n      parameter to <code>true</code> are:</p>\n         <ul>\n            <li>\n               <p>US East (N. Virginia) (us-east-1)</p>\n            </li>\n            <li>\n               <p>US West (Oregon) (us-west-2)</p>\n            </li>\n            <li>\n               <p>Asia Pacific (Sydney) (ap-southeast-2)</p>\n            </li>\n            <li>\n               <p>EU (Ireland) (eu-west-1)</p>\n            </li>\n         </ul>\n         <p>In other Regions, the <code>enableModelImprovements</code> parameter\n      is set to <code>true</code> by default. In these Regions setting the\n      parameter to <code>false</code> throws a <code>ValidationException</code>\n      exception.</p>"}))
    PutBotRequest.add_member(:nlu_intent_confidence_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfidenceThreshold, location_name: 'nluIntentConfidenceThreshold', traits: {"smithy.api#documentation" => "<p>Determines the threshold where Amazon Lex will insert the\n        <code>AMAZON.FallbackIntent</code>,\n        <code>AMAZON.KendraSearchIntent</code>, or both when returning\n      alternative intents in a <a href=\"https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html\">PostContent</a> or\n        <a href=\"https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html\">PostText</a> response.\n        <code>AMAZON.FallbackIntent</code> and\n        <code>AMAZON.KendraSearchIntent</code> are only inserted if they are\n      configured for the bot.</p>\n         <p>You must set the <code>enableModelImprovements</code> parameter to\n        <code>true</code> to use confidence scores in the following\n      regions.</p>\n         <ul>\n            <li>\n               <p>US East (N. Virginia) (us-east-1)</p>\n            </li>\n            <li>\n               <p>US West (Oregon) (us-west-2)</p>\n            </li>\n            <li>\n               <p>Asia Pacific (Sydney) (ap-southeast-2)</p>\n            </li>\n            <li>\n               <p>EU (Ireland) (eu-west-1)</p>\n            </li>\n         </ul>\n         <p>In other Regions, the <code>enableModelImprovements</code> parameter\n      is set to <code>true</code> by default.</p>\n         <p>For example, suppose a bot is configured with the confidence threshold\n      of 0.80 and the <code>AMAZON.FallbackIntent</code>. Amazon Lex returns three\n      alternative intents with the following confidence scores: IntentA (0.70),\n      IntentB (0.60), IntentC (0.50). The response from the\n        <code>PostText</code> operation would be:</p>\n         <ul>\n            <li>\n               <p>AMAZON.FallbackIntent</p>\n            </li>\n            <li>\n               <p>IntentA</p>\n            </li>\n            <li>\n               <p>IntentB</p>\n            </li>\n            <li>\n               <p>IntentC</p>\n            </li>\n         </ul>"}))
    PutBotRequest.add_member(:clarification_prompt, Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: 'clarificationPrompt', traits: {"smithy.api#documentation" => "<p>When Amazon Lex doesn't understand the user's intent, it uses this\n      message to get clarification. To specify how many times Amazon Lex should\n      repeat the clarification prompt, use the <code>maxAttempts</code> field.\n      If Amazon Lex still doesn't understand, it sends the message in the\n        <code>abortStatement</code> field. </p>\n         <p>When you create a clarification prompt, make sure that it suggests\n      the correct response from the user. for example, for a bot that orders\n      pizza and drinks, you might create this clarification prompt: \"What would\n      you like to do? You can say 'Order a pizza' or 'Order a drink.'\"</p>\n         <p>If you have defined a fallback intent, it will be invoked if the\n      clarification prompt is repeated the number of times defined in the\n        <code>maxAttempts</code> field. For more information, see <a href=\"https://docs.aws.amazon.com/lex/latest/dg/built-in-intent-fallback.html\">\n        AMAZON.FallbackIntent</a>.</p>\n         <p>If you don't define a clarification prompt, at runtime Amazon Lex will\n      return a 400 Bad Request exception in three cases: </p>\n         <ul>\n            <li>\n               <p>Follow-up prompt - When the user responds to a follow-up prompt\n          but does not provide an intent. For example, in response to a\n          follow-up prompt that says \"Would you like anything else today?\" the\n          user says \"Yes.\" Amazon Lex will return a 400 Bad Request exception because\n          it does not have a clarification prompt to send to the user to get an\n          intent.</p>\n            </li>\n            <li>\n               <p>Lambda function - When using a Lambda function, you return an\n            <code>ElicitIntent</code> dialog type. Since Amazon Lex does not have a\n          clarification prompt to get an intent from the user, it returns a 400\n          Bad Request exception.</p>\n            </li>\n            <li>\n               <p>PutSession operation - When using the <code>PutSession</code>\n          operation, you send an <code>ElicitIntent</code> dialog type. Since\n          Amazon Lex does not have a clarification prompt to get an intent from the\n          user, it returns a 400 Bad Request exception.</p>\n            </li>\n         </ul>"}))
    PutBotRequest.add_member(:abort_statement, Smithy::Schema::Shapes::ShapeRef.new(shape: Statement, location_name: 'abortStatement', traits: {"smithy.api#documentation" => "<p>When Amazon Lex can't understand the user's input in context, it tries\n      to elicit the information a few times. After that, Amazon Lex sends the message\n      defined in <code>abortStatement</code> to the user, and then cancels the\n      conversation. To set the number of retries, use the\n        <code>valueElicitationPrompt</code> field for the slot type. </p>\n         <p>For example, in a pizza ordering bot, Amazon Lex might ask a user \"What\n      type of crust would you like?\" If the user's response is not one of the\n      expected responses (for example, \"thin crust, \"deep dish,\" etc.), Amazon Lex\n      tries to elicit a correct response a few more times. </p>\n         <p>For example, in a pizza ordering application,\n        <code>OrderPizza</code> might be one of the intents. This intent might\n      require the <code>CrustType</code> slot. You specify the\n        <code>valueElicitationPrompt</code> field when you create the\n        <code>CrustType</code> slot.</p>\n         <p>If you have defined a fallback intent the cancel statement will not be\n      sent to the user, the fallback intent is used instead. For more\n      information, see <a href=\"https://docs.aws.amazon.com/lex/latest/dg/built-in-intent-fallback.html\">\n        AMAZON.FallbackIntent</a>.</p>"}))
    PutBotRequest.add_member(:idle_session_ttl_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionTTL, location_name: 'idleSessionTTLInSeconds', traits: {"smithy.api#documentation" => "<p>The maximum time in seconds that Amazon Lex retains the data gathered in\n      a conversation.</p>\n         <p>A user interaction session remains active for the amount of time\n      specified. If no conversation occurs during this time, the session expires\n      and Amazon Lex deletes any data provided before the timeout.</p>\n         <p>For example, suppose that a user chooses the OrderPizza intent, but\n      gets sidetracked halfway through placing an order. If the user doesn't\n      complete the order within the specified time, Amazon Lex discards the slot\n      information that it gathered, and the user must start over.</p>\n         <p>If you don't include the <code>idleSessionTTLInSeconds</code>\n      element in a <code>PutBot</code> operation request, Amazon Lex uses the default\n      value. This is also true if the request replaces an existing\n      bot.</p>\n         <p>The default is 300 seconds (5 minutes).</p>"}))
    PutBotRequest.add_member(:voice_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'voiceId', traits: {"smithy.api#documentation" => "<p>The Amazon Polly voice ID that you want Amazon Lex to use for voice\n      interactions with the user. The locale configured for the voice must match\n      the locale of the bot. For more information, see <a href=\"https://docs.aws.amazon.com/polly/latest/dg/voicelist.html\">Voices\n        in Amazon Polly</a> in the <i>Amazon Polly Developer\n        Guide</i>.</p>"}))
    PutBotRequest.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checksum', traits: {"smithy.api#documentation" => "<p>Identifies a specific revision of the <code>$LATEST</code>\n      version.</p>\n         <p>When you create a new bot, leave the <code>checksum</code> field\n      blank. If you specify a checksum you get a\n        <code>BadRequestException</code> exception.</p>\n         <p>When you want to update a bot, set the <code>checksum</code> field\n      to the checksum of the most recent revision of the <code>$LATEST</code>\n      version. If you don't specify the <code> checksum</code> field, or if the\n      checksum does not match the <code>$LATEST</code> version, you get a\n        <code>PreconditionFailedException</code> exception.</p>"}))
    PutBotRequest.add_member(:process_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessBehavior, location_name: 'processBehavior', traits: {"smithy.api#documentation" => "<p>If you set the <code>processBehavior</code> element to\n        <code>BUILD</code>, Amazon Lex builds the bot so that it can be run. If you\n      set the element to <code>SAVE</code> Amazon Lex saves the bot, but doesn't\n      build it. </p>\n         <p>If you don't specify this value, the default value is\n        <code>BUILD</code>.</p>"}))
    PutBotRequest.add_member(:locale, Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: 'locale', traits: {"smithy.api#documentation" => "<p> Specifies the target locale for the bot. Any intent used in the\n      bot must be compatible with the locale of the bot. </p>\n         <p>The default is <code>en-US</code>.</p>", "smithy.api#required" => {}}))
    PutBotRequest.add_member(:child_directed, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'childDirected', traits: {"smithy.api#documentation" => "<p>For each Amazon Lex bot created with the Amazon Lex Model Building Service,\n      you must specify whether your use of Amazon Lex is related to a website,\n      program, or other application that is directed or targeted, in whole or in\n      part, to children under age 13 and subject to the Children's Online\n      Privacy Protection Act (COPPA) by specifying <code>true</code> or\n        <code>false</code> in the <code>childDirected</code> field. By\n      specifying <code>true</code> in the <code>childDirected</code> field, you\n      confirm that your use of Amazon Lex <b>is</b> related\n      to a website, program, or other application that is directed or targeted,\n      in whole or in part, to children under age 13 and subject to COPPA. By\n      specifying <code>false</code> in the <code>childDirected</code> field, you\n      confirm that your use of Amazon Lex <b>is not</b>\n      related to a website, program, or other application that is directed or\n      targeted, in whole or in part, to children under age 13 and subject to\n      COPPA. You may not specify a default value for the\n        <code>childDirected</code> field that does not accurately reflect\n      whether your use of Amazon Lex is related to a website, program, or other\n      application that is directed or targeted, in whole or in part, to children\n      under age 13 and subject to COPPA.</p>\n         <p>If your use of Amazon Lex relates to a website, program, or other\n      application that is directed in whole or in part, to children under age\n      13, you must obtain any required verifiable parental consent under COPPA.\n      For information regarding the use of Amazon Lex in connection with websites,\n      programs, or other applications that are directed or targeted, in whole or\n      in part, to children under age 13, see the <a href=\"https://aws.amazon.com/lex/faqs#data-security\">Amazon Lex FAQ.</a>\n         </p>", "smithy.api#required" => {}}))
    PutBotRequest.add_member(:detect_sentiment, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'detectSentiment', traits: {"smithy.api#documentation" => "<p>When set to <code>true</code> user utterances are sent to Amazon\n      Comprehend for sentiment analysis. If you don't specify\n        <code>detectSentiment</code>, the default is <code>false</code>.</p>"}))
    PutBotRequest.add_member(:create_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'createVersion', traits: {"smithy.api#documentation" => "<p>When set to <code>true</code> a new numbered version of the bot is\n      created. This is the same as calling the <code>CreateBotVersion</code>\n      operation. If you don't specify <code>createVersion</code>, the default is\n        <code>false</code>.</p>"}))
    PutBotRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of tags to add to the bot. You can only add tags when you\n      create a bot, you can't use the <code>PutBot</code> operation to update\n      the tags on a bot. To update tags, use the <code>TagResource</code>\n      operation.</p>"}))
    PutBotRequest.type = Types::PutBotRequest
    PutBotResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the bot.</p>"}))
    PutBotResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the bot.</p>"}))
    PutBotResponse.add_member(:intents, Smithy::Schema::Shapes::ShapeRef.new(shape: IntentList, location_name: 'intents', traits: {"smithy.api#documentation" => "<p>An array of <code>Intent</code> objects. For more information, see\n        <a>PutBot</a>.</p>"}))
    PutBotResponse.add_member(:enable_model_improvements, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enableModelImprovements', traits: {"smithy.api#documentation" => "<p>Indicates whether the bot uses accuracy improvements.\n        <code>true</code> indicates that the bot is using the improvements,\n      otherwise, <code>false</code>.</p>"}))
    PutBotResponse.add_member(:nlu_intent_confidence_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfidenceThreshold, location_name: 'nluIntentConfidenceThreshold', traits: {"smithy.api#documentation" => "<p>The score that determines where Amazon Lex inserts the\n        <code>AMAZON.FallbackIntent</code>,\n        <code>AMAZON.KendraSearchIntent</code>, or both when returning\n      alternative intents in a <a href=\"https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html\">PostContent</a> or\n        <a href=\"https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html\">PostText</a> response.\n        <code>AMAZON.FallbackIntent</code> is inserted if the confidence score\n      for all intents is below this value.\n        <code>AMAZON.KendraSearchIntent</code> is only inserted if it is\n      configured for the bot.</p>"}))
    PutBotResponse.add_member(:clarification_prompt, Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: 'clarificationPrompt', traits: {"smithy.api#documentation" => "<p> The prompts that Amazon Lex uses when it doesn't understand the user's\n      intent. For more information, see <a>PutBot</a>. </p>"}))
    PutBotResponse.add_member(:abort_statement, Smithy::Schema::Shapes::ShapeRef.new(shape: Statement, location_name: 'abortStatement', traits: {"smithy.api#documentation" => "<p>The message that Amazon Lex uses to cancel a conversation. For more\n      information, see <a>PutBot</a>.</p>"}))
    PutBotResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p> When you send a request to create a bot with\n        <code>processBehavior</code> set to <code>BUILD</code>, Amazon Lex sets the\n        <code>status</code> response element to <code>BUILDING</code>.</p>\n         <p>In the <code>READY_BASIC_TESTING</code> state you can test the bot\n      with user inputs that exactly match the utterances configured for the\n      bot's intents and values in the slot types.</p>\n         <p>If Amazon Lex can't build the bot, Amazon Lex sets <code>status</code> to\n        <code>FAILED</code>. Amazon Lex returns the reason for the failure in the\n        <code>failureReason</code> response element. </p>\n         <p>When you set <code>processBehavior</code> to <code>SAVE</code>,\n      Amazon Lex sets the status code to <code>NOT BUILT</code>.</p>\n         <p>When the bot is in the <code>READY</code> state you can test and\n      publish the bot.</p>"}))
    PutBotResponse.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>If <code>status</code> is <code>FAILED</code>, Amazon Lex provides the\n      reason that it failed to build the bot.</p>"}))
    PutBotResponse.add_member(:last_updated_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedDate', traits: {"smithy.api#documentation" => "<p>The date that the bot was updated. When you create a resource, the\n      creation date and last updated date are the same.</p>"}))
    PutBotResponse.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The date that the bot was created.</p>"}))
    PutBotResponse.add_member(:idle_session_ttl_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionTTL, location_name: 'idleSessionTTLInSeconds', traits: {"smithy.api#documentation" => "<p>The maximum length of time that Amazon Lex retains the data gathered in\n      a conversation. For more information, see <a>PutBot</a>.</p>"}))
    PutBotResponse.add_member(:voice_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'voiceId', traits: {"smithy.api#documentation" => "<p>The Amazon Polly voice ID that Amazon Lex uses for voice interaction\n      with the user. For more information, see <a>PutBot</a>.</p>"}))
    PutBotResponse.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checksum', traits: {"smithy.api#documentation" => "<p>Checksum of the bot that you created.</p>"}))
    PutBotResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the bot. For a new bot, the version is always\n        <code>$LATEST</code>.</p>"}))
    PutBotResponse.add_member(:locale, Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: 'locale', traits: {"smithy.api#documentation" => "<p> The target locale for the bot. </p>"}))
    PutBotResponse.add_member(:child_directed, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'childDirected', traits: {"smithy.api#documentation" => "<p>For each Amazon Lex bot created with the Amazon Lex Model Building Service,\n      you must specify whether your use of Amazon Lex is related to a website,\n      program, or other application that is directed or targeted, in whole or in\n      part, to children under age 13 and subject to the Children's Online\n      Privacy Protection Act (COPPA) by specifying <code>true</code> or\n        <code>false</code> in the <code>childDirected</code> field. By\n      specifying <code>true</code> in the <code>childDirected</code> field, you\n      confirm that your use of Amazon Lex <b>is</b> related\n      to a website, program, or other application that is directed or targeted,\n      in whole or in part, to children under age 13 and subject to COPPA. By\n      specifying <code>false</code> in the <code>childDirected</code> field, you\n      confirm that your use of Amazon Lex <b>is not</b>\n      related to a website, program, or other application that is directed or\n      targeted, in whole or in part, to children under age 13 and subject to\n      COPPA. You may not specify a default value for the\n        <code>childDirected</code> field that does not accurately reflect\n      whether your use of Amazon Lex is related to a website, program, or other\n      application that is directed or targeted, in whole or in part, to children\n      under age 13 and subject to COPPA.</p>\n         <p>If your use of Amazon Lex relates to a website, program, or other\n      application that is directed in whole or in part, to children under age\n      13, you must obtain any required verifiable parental consent under COPPA.\n      For information regarding the use of Amazon Lex in connection with websites,\n      programs, or other applications that are directed or targeted, in whole or\n      in part, to children under age 13, see the <a href=\"https://aws.amazon.com/lex/faqs#data-security\">Amazon Lex FAQ.</a>\n         </p>"}))
    PutBotResponse.add_member(:create_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'createVersion', traits: {"smithy.api#documentation" => "<p>\n            <code>True</code> if a new version of the bot was created. If the\n        <code>createVersion</code> field was not specified in the request, the\n        <code>createVersion</code> field is set to false in the\n      response.</p>"}))
    PutBotResponse.add_member(:detect_sentiment, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'detectSentiment', traits: {"smithy.api#documentation" => "<p>\n            <code>true</code> if the bot is configured to send user utterances to\n      Amazon Comprehend for sentiment analysis. If the\n        <code>detectSentiment</code> field was not specified in the request, the\n        <code>detectSentiment</code> field is <code>false</code> in the\n      response.</p>"}))
    PutBotResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of tags associated with the bot.</p>"}))
    PutBotResponse.type = Types::PutBotResponse
    PutIntentRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: IntentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the intent. The name is <i>not</i> case\n      sensitive. </p>\n         <p>The name can't match a built-in intent name, or a built-in intent\n      name with \"AMAZON.\" removed. For example, because there is a built-in\n      intent called <code>AMAZON.HelpIntent</code>, you can't create a custom\n      intent called <code>HelpIntent</code>.</p>\n         <p>For a list of built-in intents, see <a href=\"https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents\">Standard Built-in Intents</a> in the <i>Alexa Skills\n        Kit</i>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutIntentRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the intent.</p>"}))
    PutIntentRequest.add_member(:slots, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotList, location_name: 'slots', traits: {"smithy.api#documentation" => "<p>An array of intent slots. At runtime, Amazon Lex elicits required slot\n      values from the user using prompts defined in the slots. For more\n      information, see <a>how-it-works</a>. </p>"}))
    PutIntentRequest.add_member(:sample_utterances, Smithy::Schema::Shapes::ShapeRef.new(shape: IntentUtteranceList, location_name: 'sampleUtterances', traits: {"smithy.api#documentation" => "<p>An array of utterances (strings) that a user might say to signal\n      the intent. For example, \"I want {PizzaSize} pizza\", \"Order {Quantity}\n      {PizzaSize} pizzas\". </p>\n         <p>In each utterance, a slot name is enclosed in curly braces.\n    </p>"}))
    PutIntentRequest.add_member(:confirmation_prompt, Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: 'confirmationPrompt', traits: {"smithy.api#documentation" => "<p>Prompts the user to confirm the intent. This question should have a\n      yes or no answer.</p>\n         <p>Amazon Lex uses this prompt to ensure that the user acknowledges that\n      the intent is ready for fulfillment. For example, with the\n        <code>OrderPizza</code> intent, you might want to confirm that the order\n      is correct before placing it. For other intents, such as intents that\n      simply respond to user questions, you might not need to ask the user for\n      confirmation before providing the information. </p>\n         <note>\n            <p>You you must provide both the <code>rejectionStatement</code> and\n        the <code>confirmationPrompt</code>, or neither.</p>\n         </note>"}))
    PutIntentRequest.add_member(:rejection_statement, Smithy::Schema::Shapes::ShapeRef.new(shape: Statement, location_name: 'rejectionStatement', traits: {"smithy.api#documentation" => "<p>When the user answers \"no\" to the question defined in\n        <code>confirmationPrompt</code>, Amazon Lex responds with this statement to\n      acknowledge that the intent was canceled. </p>\n         <note>\n            <p>You must provide both the <code>rejectionStatement</code> and the\n          <code>confirmationPrompt</code>, or neither.</p>\n         </note>"}))
    PutIntentRequest.add_member(:follow_up_prompt, Smithy::Schema::Shapes::ShapeRef.new(shape: FollowUpPrompt, location_name: 'followUpPrompt', traits: {"smithy.api#documentation" => "<p>Amazon Lex uses this prompt to solicit additional activity after\n      fulfilling an intent. For example, after the <code>OrderPizza</code>\n      intent is fulfilled, you might prompt the user to order a drink.</p>\n         <p>The action that Amazon Lex takes depends on the user's response, as\n      follows:</p>\n         <ul>\n            <li>\n               <p>If the user says \"Yes\" it responds with the clarification\n          prompt that is configured for the bot.</p>\n            </li>\n            <li>\n               <p>if the user says \"Yes\" and continues with an utterance that\n          triggers an intent it starts a conversation for the intent.</p>\n            </li>\n            <li>\n               <p>If the user says \"No\" it responds with the rejection statement\n          configured for the the follow-up prompt.</p>\n            </li>\n            <li>\n               <p>If it doesn't recognize the utterance it repeats the follow-up\n          prompt again.</p>\n            </li>\n         </ul>\n         <p>The <code>followUpPrompt</code> field and the\n        <code>conclusionStatement</code> field are mutually exclusive. You can\n      specify only one. </p>"}))
    PutIntentRequest.add_member(:conclusion_statement, Smithy::Schema::Shapes::ShapeRef.new(shape: Statement, location_name: 'conclusionStatement', traits: {"smithy.api#documentation" => "<p> The statement that you want Amazon Lex to convey to the user after the\n      intent is successfully fulfilled by the Lambda function. </p>\n         <p>This element is relevant only if you provide a Lambda function in\n      the <code>fulfillmentActivity</code>. If you return the intent to the\n      client application, you can't specify this element.</p>\n         <note>\n            <p>The <code>followUpPrompt</code> and\n          <code>conclusionStatement</code> are mutually exclusive. You can\n        specify only one.</p>\n         </note>"}))
    PutIntentRequest.add_member(:dialog_code_hook, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeHook, location_name: 'dialogCodeHook', traits: {"smithy.api#documentation" => "<p> Specifies a Lambda function to invoke for each user input. You can\n      invoke this Lambda function to personalize user interaction. </p>\n         <p>For example, suppose your bot determines that the user is John.\n      Your Lambda function might retrieve John's information from a backend\n      database and prepopulate some of the values. For example, if you find that\n      John is gluten intolerant, you might set the corresponding intent slot,\n        <code>GlutenIntolerant</code>, to true. You might find John's phone\n      number and set the corresponding session attribute. </p>"}))
    PutIntentRequest.add_member(:fulfillment_activity, Smithy::Schema::Shapes::ShapeRef.new(shape: FulfillmentActivity, location_name: 'fulfillmentActivity', traits: {"smithy.api#documentation" => "<p>Required. Describes how the intent is fulfilled. For example, after\n      a user provides all of the information for a pizza order,\n        <code>fulfillmentActivity</code> defines how the bot places an order\n      with a local pizza store. </p>\n         <p> You might configure Amazon Lex to return all of the intent information\n      to the client application, or direct it to invoke a Lambda function that\n      can process the intent (for example, place an order with a pizzeria).\n    </p>"}))
    PutIntentRequest.add_member(:parent_intent_signature, Smithy::Schema::Shapes::ShapeRef.new(shape: BuiltinIntentSignature, location_name: 'parentIntentSignature', traits: {"smithy.api#documentation" => "<p>A unique identifier for the built-in intent to base this intent on.\n      To find the signature for an intent, see <a href=\"https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents\">Standard Built-in Intents</a> in the <i>Alexa Skills\n        Kit</i>.</p>"}))
    PutIntentRequest.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checksum', traits: {"smithy.api#documentation" => "<p>Identifies a specific revision of the <code>$LATEST</code>\n      version.</p>\n         <p>When you create a new intent, leave the <code>checksum</code> field\n      blank. If you specify a checksum you get a\n        <code>BadRequestException</code> exception.</p>\n         <p>When you want to update a intent, set the <code>checksum</code>\n      field to the checksum of the most recent revision of the\n        <code>$LATEST</code> version. If you don't specify the <code>\n        checksum</code> field, or if the checksum does not match the\n        <code>$LATEST</code> version, you get a\n        <code>PreconditionFailedException</code> exception.</p>"}))
    PutIntentRequest.add_member(:create_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'createVersion', traits: {"smithy.api#documentation" => "<p>When set to <code>true</code> a new numbered version of the intent\n      is created. This is the same as calling the\n        <code>CreateIntentVersion</code> operation. If you do not specify\n        <code>createVersion</code>, the default is <code>false</code>.</p>"}))
    PutIntentRequest.add_member(:kendra_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: KendraConfiguration, location_name: 'kendraConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration information required to use the\n        <code>AMAZON.KendraSearchIntent</code> intent to connect to an Amazon\n      Kendra index. For more information, see <a href=\"http://docs.aws.amazon.com/lex/latest/dg/built-in-intent-kendra-search.html\">\n        AMAZON.KendraSearchIntent</a>.</p>"}))
    PutIntentRequest.add_member(:input_contexts, Smithy::Schema::Shapes::ShapeRef.new(shape: InputContextList, location_name: 'inputContexts', traits: {"smithy.api#documentation" => "<p>An array of <code>InputContext</code> objects that lists the contexts\n      that must be active for Amazon Lex to choose the intent in a conversation with\n      the user.</p>"}))
    PutIntentRequest.add_member(:output_contexts, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputContextList, location_name: 'outputContexts', traits: {"smithy.api#documentation" => "<p>An array of <code>OutputContext</code> objects that lists the contexts\n      that the intent activates when the intent is fulfilled.</p>"}))
    PutIntentRequest.type = Types::PutIntentRequest
    PutIntentResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: IntentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the intent.</p>"}))
    PutIntentResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the intent.</p>"}))
    PutIntentResponse.add_member(:slots, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotList, location_name: 'slots', traits: {"smithy.api#documentation" => "<p>An array of intent slots that are configured for the\n      intent.</p>"}))
    PutIntentResponse.add_member(:sample_utterances, Smithy::Schema::Shapes::ShapeRef.new(shape: IntentUtteranceList, location_name: 'sampleUtterances', traits: {"smithy.api#documentation" => "<p> An array of sample utterances that are configured for the intent.\n    </p>"}))
    PutIntentResponse.add_member(:confirmation_prompt, Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: 'confirmationPrompt', traits: {"smithy.api#documentation" => "<p>If defined in the intent, Amazon Lex prompts the user to confirm the\n      intent before fulfilling it.</p>"}))
    PutIntentResponse.add_member(:rejection_statement, Smithy::Schema::Shapes::ShapeRef.new(shape: Statement, location_name: 'rejectionStatement', traits: {"smithy.api#documentation" => "<p>If the user answers \"no\" to the question defined in\n        <code>confirmationPrompt</code> Amazon Lex responds with this statement to\n      acknowledge that the intent was canceled. </p>"}))
    PutIntentResponse.add_member(:follow_up_prompt, Smithy::Schema::Shapes::ShapeRef.new(shape: FollowUpPrompt, location_name: 'followUpPrompt', traits: {"smithy.api#documentation" => "<p>If defined in the intent, Amazon Lex uses this prompt to solicit\n      additional user activity after the intent is fulfilled.</p>"}))
    PutIntentResponse.add_member(:conclusion_statement, Smithy::Schema::Shapes::ShapeRef.new(shape: Statement, location_name: 'conclusionStatement', traits: {"smithy.api#documentation" => "<p>After the Lambda function specified in\n        the<code>fulfillmentActivity</code>intent fulfills the intent, Amazon Lex\n      conveys this statement to the user.</p>"}))
    PutIntentResponse.add_member(:dialog_code_hook, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeHook, location_name: 'dialogCodeHook', traits: {"smithy.api#documentation" => "<p>If defined in the intent, Amazon Lex invokes this Lambda function for\n      each user input.</p>"}))
    PutIntentResponse.add_member(:fulfillment_activity, Smithy::Schema::Shapes::ShapeRef.new(shape: FulfillmentActivity, location_name: 'fulfillmentActivity', traits: {"smithy.api#documentation" => "<p>If defined in the intent, Amazon Lex invokes this Lambda function to\n      fulfill the intent after the user provides all of the information required\n      by the intent.</p>"}))
    PutIntentResponse.add_member(:parent_intent_signature, Smithy::Schema::Shapes::ShapeRef.new(shape: BuiltinIntentSignature, location_name: 'parentIntentSignature', traits: {"smithy.api#documentation" => "<p>A unique identifier for the built-in intent that this intent is\n      based on.</p>"}))
    PutIntentResponse.add_member(:last_updated_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedDate', traits: {"smithy.api#documentation" => "<p>The date that the intent was updated. When you create a resource,\n      the creation date and last update dates are the same.</p>"}))
    PutIntentResponse.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The date that the intent was created.</p>"}))
    PutIntentResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the intent. For a new intent, the version is always\n        <code>$LATEST</code>.</p>"}))
    PutIntentResponse.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checksum', traits: {"smithy.api#documentation" => "<p>Checksum of the <code>$LATEST</code>version of the intent created\n      or updated.</p>"}))
    PutIntentResponse.add_member(:create_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'createVersion', traits: {"smithy.api#documentation" => "<p>\n            <code>True</code> if a new version of the intent was created. If\n      the <code>createVersion</code> field was not specified in the request, the\n        <code>createVersion</code> field is set to false in the\n      response.</p>"}))
    PutIntentResponse.add_member(:kendra_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: KendraConfiguration, location_name: 'kendraConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration information, if any, required to connect to an Amazon\n      Kendra index and use the <code>AMAZON.KendraSearchIntent</code>\n      intent.</p>"}))
    PutIntentResponse.add_member(:input_contexts, Smithy::Schema::Shapes::ShapeRef.new(shape: InputContextList, location_name: 'inputContexts', traits: {"smithy.api#documentation" => "<p>An array of <code>InputContext</code> objects that lists the contexts\n      that must be active for Amazon Lex to choose the intent in a conversation with\n      the user.</p>"}))
    PutIntentResponse.add_member(:output_contexts, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputContextList, location_name: 'outputContexts', traits: {"smithy.api#documentation" => "<p>An array of <code>OutputContext</code> objects that lists the contexts\n      that the intent activates when the intent is fulfilled.</p>"}))
    PutIntentResponse.type = Types::PutIntentResponse
    PutSlotTypeRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the slot type. The name is <i>not</i>\n      case sensitive. </p>\n         <p>The name can't match a built-in slot type name, or a built-in slot\n      type name with \"AMAZON.\" removed. For example, because there is a built-in\n      slot type called <code>AMAZON.DATE</code>, you can't create a custom slot\n      type called <code>DATE</code>.</p>\n         <p>For a list of built-in slot types, see <a href=\"https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference\">Slot Type Reference</a> in the <i>Alexa Skills\n        Kit</i>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutSlotTypeRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the slot type.</p>"}))
    PutSlotTypeRequest.add_member(:enumeration_values, Smithy::Schema::Shapes::ShapeRef.new(shape: EnumerationValues, location_name: 'enumerationValues', traits: {"smithy.api#documentation" => "<p>A list of <code>EnumerationValue</code> objects that defines the\n      values that the slot type can take. Each value can have a list of\n        <code>synonyms</code>, which are additional values that help train the\n      machine learning model about the values that it resolves for a slot. </p>\n         <p>A regular expression slot type doesn't require enumeration values.\n      All other slot types require a list of enumeration values.</p>\n         <p>When Amazon Lex resolves a slot value, it generates a resolution list\n      that contains up to five possible values for the slot. If you are using a\n      Lambda function, this resolution list is passed to the function. If you\n      are not using a Lambda function you can choose to return the value that\n      the user entered or the first value in the resolution list as the slot\n      value. The <code>valueSelectionStrategy</code> field indicates the option\n      to use. </p>"}))
    PutSlotTypeRequest.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checksum', traits: {"smithy.api#documentation" => "<p>Identifies a specific revision of the <code>$LATEST</code>\n      version.</p>\n         <p>When you create a new slot type, leave the <code>checksum</code>\n      field blank. If you specify a checksum you get a\n        <code>BadRequestException</code> exception.</p>\n         <p>When you want to update a slot type, set the <code>checksum</code>\n      field to the checksum of the most recent revision of the\n        <code>$LATEST</code> version. If you don't specify the <code>\n        checksum</code> field, or if the checksum does not match the\n        <code>$LATEST</code> version, you get a\n        <code>PreconditionFailedException</code> exception.</p>"}))
    PutSlotTypeRequest.add_member(:value_selection_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotValueSelectionStrategy, location_name: 'valueSelectionStrategy', traits: {"smithy.api#documentation" => "<p>Determines the slot resolution strategy that Amazon Lex uses to return\n      slot type values. The field can be set to one of the following\n      values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ORIGINAL_VALUE</code> - Returns the value entered by the\n          user, if the user value is similar to the slot value.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TOP_RESOLUTION</code> - If there is a resolution list for\n          the slot, return the first value in the resolution list as the slot\n          type value. If there is no resolution list, null is\n          returned.</p>\n            </li>\n         </ul>\n         <p>If you don't specify the <code>valueSelectionStrategy</code>, the\n      default is <code>ORIGINAL_VALUE</code>.</p>"}))
    PutSlotTypeRequest.add_member(:create_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'createVersion', traits: {"smithy.api#documentation" => "<p>When set to <code>true</code> a new numbered version of the slot\n      type is created. This is the same as calling the\n        <code>CreateSlotTypeVersion</code> operation. If you do not specify\n        <code>createVersion</code>, the default is <code>false</code>.</p>"}))
    PutSlotTypeRequest.add_member(:parent_slot_type_signature, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomOrBuiltinSlotTypeName, location_name: 'parentSlotTypeSignature', traits: {"smithy.api#documentation" => "<p>The built-in slot type used as the parent of the slot type. When you\n      define a parent slot type, the new slot type has all of the same\n      configuration as the parent.</p>\n         <p>Only <code>AMAZON.AlphaNumeric</code> is supported.</p>"}))
    PutSlotTypeRequest.add_member(:slot_type_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeConfigurations, location_name: 'slotTypeConfigurations', traits: {"smithy.api#documentation" => "<p>Configuration information that extends the parent built-in slot type.\n      The configuration is added to the settings for the parent slot\n      type.</p>"}))
    PutSlotTypeRequest.type = Types::PutSlotTypeRequest
    PutSlotTypeResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the slot type.</p>"}))
    PutSlotTypeResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the slot type.</p>"}))
    PutSlotTypeResponse.add_member(:enumeration_values, Smithy::Schema::Shapes::ShapeRef.new(shape: EnumerationValues, location_name: 'enumerationValues', traits: {"smithy.api#documentation" => "<p>A list of <code>EnumerationValue</code> objects that defines the\n      values that the slot type can take.</p>"}))
    PutSlotTypeResponse.add_member(:last_updated_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedDate', traits: {"smithy.api#documentation" => "<p>The date that the slot type was updated. When you create a slot\n      type, the creation date and last update date are the same.</p>"}))
    PutSlotTypeResponse.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The date that the slot type was created.</p>"}))
    PutSlotTypeResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the slot type. For a new slot type, the version is\n      always <code>$LATEST</code>. </p>"}))
    PutSlotTypeResponse.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checksum', traits: {"smithy.api#documentation" => "<p>Checksum of the <code>$LATEST</code> version of the slot\n      type.</p>"}))
    PutSlotTypeResponse.add_member(:value_selection_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotValueSelectionStrategy, location_name: 'valueSelectionStrategy', traits: {"smithy.api#documentation" => "<p>The slot resolution strategy that Amazon Lex uses to determine the value\n      of the slot. For more information, see <a>PutSlotType</a>.</p>"}))
    PutSlotTypeResponse.add_member(:create_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'createVersion', traits: {"smithy.api#documentation" => "<p>\n            <code>True</code> if a new version of the slot type was created. If\n      the <code>createVersion</code> field was not specified in the request, the\n        <code>createVersion</code> field is set to false in the\n      response.</p>"}))
    PutSlotTypeResponse.add_member(:parent_slot_type_signature, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomOrBuiltinSlotTypeName, location_name: 'parentSlotTypeSignature', traits: {"smithy.api#documentation" => "<p>The built-in slot type used as the parent of the slot type.</p>"}))
    PutSlotTypeResponse.add_member(:slot_type_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeConfigurations, location_name: 'slotTypeConfigurations', traits: {"smithy.api#documentation" => "<p>Configuration information that extends the parent built-in slot\n      type.</p>"}))
    PutSlotTypeResponse.type = Types::PutSlotTypeResponse
    ReferenceType.add_member(:intent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTENT', traits: {"smithy.api#enumValue" => "Intent"}))
    ReferenceType.add_member(:bot, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOT', traits: {"smithy.api#enumValue" => "Bot"}))
    ReferenceType.add_member(:botalias, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOTALIAS', traits: {"smithy.api#enumValue" => "BotAlias"}))
    ReferenceType.add_member(:botchannel, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOTCHANNEL', traits: {"smithy.api#enumValue" => "BotChannel"}))
    ResourceInUseException.add_member(:reference_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceType, location_name: 'referenceType'))
    ResourceInUseException.add_member(:example_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceReference, location_name: 'exampleReference'))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceReference.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the resource that is using the resource that you are\n      trying to delete.</p>"}))
    ResourceReference.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the resource that is using the resource that you are\n      trying to delete.</p>"}))
    ResourceReference.type = Types::ResourceReference
    ResourceType.add_member(:bot, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOT', traits: {"smithy.api#enumValue" => "BOT"}))
    ResourceType.add_member(:intent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTENT', traits: {"smithy.api#enumValue" => "INTENT"}))
    ResourceType.add_member(:slot_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SLOT_TYPE', traits: {"smithy.api#enumValue" => "SLOT_TYPE"}))
    Slot.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the slot.</p>", "smithy.api#required" => {}}))
    Slot.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the slot.</p>"}))
    Slot.add_member(:slot_constraint, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotConstraint, location_name: 'slotConstraint', traits: {"smithy.api#documentation" => "<p>Specifies whether the slot is required or optional. </p>", "smithy.api#required" => {}}))
    Slot.add_member(:slot_type, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomOrBuiltinSlotTypeName, location_name: 'slotType', traits: {"smithy.api#documentation" => "<p>The type of the slot, either a custom slot type that you defined or\n      one of the built-in slot types.</p>"}))
    Slot.add_member(:slot_type_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'slotTypeVersion', traits: {"smithy.api#documentation" => "<p>The version of the slot type.</p>"}))
    Slot.add_member(:value_elicitation_prompt, Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: 'valueElicitationPrompt', traits: {"smithy.api#documentation" => "<p>The prompt that Amazon Lex uses to elicit the slot value from the\n      user.</p>"}))
    Slot.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: 'priority', traits: {"smithy.api#documentation" => "<p> Directs Amazon Lex the order in which to elicit this slot value from\n      the user. For example, if the intent has two slots with priorities 1 and\n      2, AWS Amazon Lex first elicits a value for the slot with priority 1.</p>\n         <p>If multiple slots share the same priority, the order in which Amazon Lex\n      elicits values is arbitrary.</p>"}))
    Slot.add_member(:sample_utterances, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotUtteranceList, location_name: 'sampleUtterances', traits: {"smithy.api#documentation" => "<p> If you know a specific pattern with which users might respond to\n      an Amazon Lex request for a slot value, you can provide those utterances to\n      improve accuracy. This is optional. In most cases, Amazon Lex is capable of\n      understanding user utterances. </p>"}))
    Slot.add_member(:response_card, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseCard, location_name: 'responseCard', traits: {"smithy.api#documentation" => "<p> A set of possible responses for the slot type used by text-based\n      clients. A user chooses an option from the response card, instead of using\n      text to reply. </p>"}))
    Slot.add_member(:obfuscation_setting, Smithy::Schema::Shapes::ShapeRef.new(shape: ObfuscationSetting, location_name: 'obfuscationSetting', traits: {"smithy.api#documentation" => "<p>Determines whether a slot is obfuscated in conversation logs and\n      stored utterances. When you obfuscate a slot, the value is replaced by the\n      slot name in curly braces ({}). For example, if the slot name is\n      \"full_name\", obfuscated values are replaced with \"{full_name}\". For more\n      information, see <a href=\"https://docs.aws.amazon.com/lex/latest/dg/how-obfuscate.html\"> Slot Obfuscation </a>.\n    </p>"}))
    Slot.add_member(:default_value_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotDefaultValueSpec, location_name: 'defaultValueSpec', traits: {"smithy.api#documentation" => "<p>A list of default values for the slot. Default values are used when\n      Amazon Lex hasn't determined a value for a slot. You can specify default values\n      from context variables, session attributes, and defined values.</p>"}))
    Slot.type = Types::Slot
    SlotConstraint.add_member(:required, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUIRED', traits: {"smithy.api#enumValue" => "Required"}))
    SlotConstraint.add_member(:optional, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPTIONAL', traits: {"smithy.api#enumValue" => "Optional"}))
    SlotDefaultValue.add_member(:default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotDefaultValueString, location_name: 'defaultValue', traits: {"smithy.api#documentation" => "<p>The default value for the slot. You can specify one of the\n      following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>#context-name.slot-name</code> - The slot value \"slot-name\"\n          in the context \"context-name.\"</p>\n            </li>\n            <li>\n               <p>\n                  <code>{attribute}</code> - The slot value of the session attribute\n          \"attribute.\"</p>\n            </li>\n            <li>\n               <p>\n                  <code>'value'</code> - The discrete value \"value.\"</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    SlotDefaultValue.type = Types::SlotDefaultValue
    SlotDefaultValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SlotDefaultValue)
    SlotDefaultValueSpec.add_member(:default_value_list, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotDefaultValueList, location_name: 'defaultValueList', traits: {"smithy.api#documentation" => "<p>The default values for a slot. You can specify more than one default.\n      For example, you can specify a default value to use from a matching\n      context variable, a session attribute, or a fixed value.</p>\n         <p>The default value chosen is selected based on the order that you\n      specify them in the list. For example, if you specify a context variable\n      and a fixed value in that order, Amazon Lex uses the context variable if it is\n      available, else it uses the fixed value.</p>", "smithy.api#required" => {}}))
    SlotDefaultValueSpec.type = Types::SlotDefaultValueSpec
    SlotList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Slot)
    SlotTypeConfiguration.add_member(:regex_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeRegexConfiguration, location_name: 'regexConfiguration', traits: {"smithy.api#documentation" => "<p>A regular expression used to validate the value of a slot.</p>"}))
    SlotTypeConfiguration.type = Types::SlotTypeConfiguration
    SlotTypeConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeConfiguration)
    SlotTypeMetadata.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the slot type.</p>"}))
    SlotTypeMetadata.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the slot type.</p>"}))
    SlotTypeMetadata.add_member(:last_updated_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedDate', traits: {"smithy.api#documentation" => "<p>The date that the slot type was updated. When you create a\n      resource, the creation date and last updated date are the same. </p>"}))
    SlotTypeMetadata.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The date that the slot type was created.</p>"}))
    SlotTypeMetadata.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the slot type.</p>"}))
    SlotTypeMetadata.type = Types::SlotTypeMetadata
    SlotTypeMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SlotTypeMetadata)
    SlotTypeRegexConfiguration.add_member(:pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: RegexPattern, location_name: 'pattern', traits: {"smithy.api#documentation" => "<p>A regular expression used to validate the value of a slot. </p>\n         <p>Use a standard regular expression. Amazon Lex supports the following\n      characters in the regular expression:</p>\n         <ul>\n            <li>\n               <p>A-Z, a-z</p>\n            </li>\n            <li>\n               <p>0-9</p>\n            </li>\n            <li>\n               <p>Unicode characters (\"\\ u<Unicode>\")</p>\n            </li>\n         </ul>\n         <p>Represent Unicode characters with four digits, for example\n      \"\\u0041\" or \"\\u005A\".</p>\n         <p>The following regular expression operators are not supported:</p>\n         <ul>\n            <li>\n               <p>Infinite repeaters: *, +, or {x,} with no upper bound.</p>\n            </li>\n            <li>\n               <p>Wild card (.)</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    SlotTypeRegexConfiguration.type = Types::SlotTypeRegexConfiguration
    SlotUtteranceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Utterance)
    SlotValueSelectionStrategy.add_member(:original_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORIGINAL_VALUE', traits: {"smithy.api#enumValue" => "ORIGINAL_VALUE"}))
    SlotValueSelectionStrategy.add_member(:top_resolution, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TOP_RESOLUTION', traits: {"smithy.api#enumValue" => "TOP_RESOLUTION"}))
    SortOrder.add_member(:ascending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASCENDING', traits: {"smithy.api#enumValue" => "ASCENDING"}))
    SortOrder.add_member(:descending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESCENDING', traits: {"smithy.api#enumValue" => "DESCENDING"}))
    StartImportRequest.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: 'payload', traits: {"smithy.api#documentation" => "<p>A zip archive in binary format. The archive should contain one file, a\n      JSON file containing the resource to import. The resource should match the\n      type specified in the <code>resourceType</code> field.</p>", "smithy.api#required" => {}}))
    StartImportRequest.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>Specifies the type of resource to export. Each resource also\n      exports any resources that it depends on. </p>\n         <ul>\n            <li>\n               <p>A bot exports dependent intents.</p>\n            </li>\n            <li>\n               <p>An intent exports dependent slot types.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    StartImportRequest.add_member(:merge_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: MergeStrategy, location_name: 'mergeStrategy', traits: {"smithy.api#documentation" => "<p>Specifies the action that the <code>StartImport</code> operation\n      should take when there is an existing resource with the same\n      name.</p>\n         <ul>\n            <li>\n               <p>FAIL_ON_CONFLICT - The import operation is stopped on the first\n          conflict between a resource in the import file and an existing\n          resource. The name of the resource causing the conflict is in the\n            <code>failureReason</code> field of the response to the\n            <code>GetImport</code> operation.</p>\n               <p>OVERWRITE_LATEST - The import operation proceeds even if there\n          is a conflict with an existing resource. The $LASTEST version of the\n          existing resource is overwritten with the data from the import\n          file.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    StartImportRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of tags to add to the imported bot. You can only add tags when\n      you import a bot, you can't add tags to an intent or slot type.</p>"}))
    StartImportRequest.type = Types::StartImportRequest
    StartImportResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name given to the import job.</p>"}))
    StartImportResponse.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of resource to import.</p>"}))
    StartImportResponse.add_member(:merge_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: MergeStrategy, location_name: 'mergeStrategy', traits: {"smithy.api#documentation" => "<p>The action to take when there is a merge conflict.</p>"}))
    StartImportResponse.add_member(:import_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'importId', traits: {"smithy.api#documentation" => "<p>The identifier for the specific import job.</p>"}))
    StartImportResponse.add_member(:import_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportStatus, location_name: 'importStatus', traits: {"smithy.api#documentation" => "<p>The status of the import job. If the status is <code>FAILED</code>,\n      you can get the reason for the failure using the <code>GetImport</code>\n      operation.</p>"}))
    StartImportResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of tags added to the imported bot.</p>"}))
    StartImportResponse.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>A timestamp for the date and time that the import job was\n      requested.</p>"}))
    StartImportResponse.type = Types::StartImportResponse
    StartMigrationRequest.add_member(:v1_bot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'v1BotName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Lex V1 bot that you are migrating to Amazon Lex V2.</p>", "smithy.api#required" => {}}))
    StartMigrationRequest.add_member(:v1_bot_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'v1BotVersion', traits: {"smithy.api#documentation" => "<p>The version of the bot to migrate to Amazon Lex V2. You can migrate the\n        <code>$LATEST</code> version as well as any numbered version.</p>", "smithy.api#required" => {}}))
    StartMigrationRequest.add_member(:v2_bot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: V2BotName, location_name: 'v2BotName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Lex V2 bot that you are migrating the Amazon Lex V1 bot to. </p>\n         <ul>\n            <li>\n               <p>If the Amazon Lex V2 bot doesn't exist, you must use the\n            <code>CREATE_NEW</code> migration strategy.</p>\n            </li>\n            <li>\n               <p>If the Amazon Lex V2 bot exists, you must use the\n            <code>UPDATE_EXISTING</code> migration strategy to change the\n          contents of the Amazon Lex V2 bot.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    StartMigrationRequest.add_member(:v2_bot_role, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'v2BotRole', traits: {"smithy.api#documentation" => "<p>The IAM role that Amazon Lex uses to run the Amazon Lex V2 bot.</p>", "smithy.api#required" => {}}))
    StartMigrationRequest.add_member(:migration_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationStrategy, location_name: 'migrationStrategy', traits: {"smithy.api#documentation" => "<p>The strategy used to conduct the migration.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CREATE_NEW</code> - Creates a new Amazon Lex V2 bot and migrates\n          the Amazon Lex V1 bot to the new bot.</p>\n            </li>\n            <li>\n               <p>\n                  <code>UPDATE_EXISTING</code> - Overwrites the existing Amazon Lex V2 bot\n          metadata and the locale being migrated. It doesn't change any other\n          locales in the Amazon Lex V2 bot. If the locale doesn't exist, a new locale\n          is created in the Amazon Lex V2 bot.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    StartMigrationRequest.type = Types::StartMigrationRequest
    StartMigrationResponse.add_member(:v1_bot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'v1BotName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Lex V1 bot that you are migrating to Amazon Lex V2.</p>"}))
    StartMigrationResponse.add_member(:v1_bot_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'v1BotVersion', traits: {"smithy.api#documentation" => "<p>The version of the bot to migrate to Amazon Lex V2. </p>"}))
    StartMigrationResponse.add_member(:v1_bot_locale, Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: 'v1BotLocale', traits: {"smithy.api#documentation" => "<p>The locale used for the Amazon Lex V1 bot. </p>"}))
    StartMigrationResponse.add_member(:v2_bot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: V2BotId, location_name: 'v2BotId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Lex V2 bot. </p>"}))
    StartMigrationResponse.add_member(:v2_bot_role, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'v2BotRole', traits: {"smithy.api#documentation" => "<p>The IAM role that Amazon Lex uses to run the Amazon Lex V2 bot.</p>"}))
    StartMigrationResponse.add_member(:migration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationId, location_name: 'migrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier that Amazon Lex assigned to the migration.</p>"}))
    StartMigrationResponse.add_member(:migration_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationStrategy, location_name: 'migrationStrategy', traits: {"smithy.api#documentation" => "<p>The strategy used to conduct the migration.</p>"}))
    StartMigrationResponse.add_member(:migration_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'migrationTimestamp', traits: {"smithy.api#documentation" => "<p>The date and time that the migration started.</p>"}))
    StartMigrationResponse.type = Types::StartMigrationResponse
    Statement.add_member(:messages, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageList, location_name: 'messages', traits: {"smithy.api#documentation" => "<p>A collection of message objects.</p>", "smithy.api#required" => {}}))
    Statement.add_member(:response_card, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseCard, location_name: 'responseCard', traits: {"smithy.api#documentation" => "<p> At runtime, if the client is using the <a href=\"http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html\">PostText</a> API, Amazon Lex includes the response card in the response.\n      It substitutes all of the session attributes and slot values for\n      placeholders in the response card. </p>"}))
    Statement.type = Types::Statement
    Status.add_member(:building, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUILDING', traits: {"smithy.api#enumValue" => "BUILDING"}))
    Status.add_member(:ready, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    Status.add_member(:ready_basic_testing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY_BASIC_TESTING', traits: {"smithy.api#enumValue" => "READY_BASIC_TESTING"}))
    Status.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    Status.add_member(:not_built, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_BUILT', traits: {"smithy.api#enumValue" => "NOT_BUILT"}))
    StatusType.add_member(:detected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DETECTED', traits: {"smithy.api#enumValue" => "Detected"}))
    StatusType.add_member(:missed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISSED', traits: {"smithy.api#enumValue" => "Missed"}))
    StringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    SynonymList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Value)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The key for the tag. Keys are not case-sensitive and must be\n      unique.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value associated with a key. The value may be an empty string but\n      it can't be null.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the bot, bot alias, or bot channel\n      to tag.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of tag keys to add to the resource. If a tag key already\n      exists, the existing value is replaced with the new value.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to remove the tags\n      from.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>A list of tag keys to remove from the resource. If a tag key does not\n      exist on the resource, it is ignored.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UtteranceData.add_member(:utterance_string, Smithy::Schema::Shapes::ShapeRef.new(shape: UtteranceString, location_name: 'utteranceString', traits: {"smithy.api#documentation" => "<p>The text that was entered by the user or the text representation of\n      an audio clip.</p>"}))
    UtteranceData.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: 'count', traits: {"smithy.api#documentation" => "<p>The number of times that the utterance was processed.</p>"}))
    UtteranceData.add_member(:distinct_users, Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: 'distinctUsers', traits: {"smithy.api#documentation" => "<p>The total number of individuals that used the utterance.</p>"}))
    UtteranceData.add_member(:first_uttered_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'firstUtteredDate', traits: {"smithy.api#documentation" => "<p>The date that the utterance was first recorded.</p>"}))
    UtteranceData.add_member(:last_uttered_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUtteredDate', traits: {"smithy.api#documentation" => "<p>The date that the utterance was last recorded.</p>"}))
    UtteranceData.type = Types::UtteranceData
    UtteranceList.add_member(:bot_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'botVersion', traits: {"smithy.api#documentation" => "<p>The version of the bot that processed the list.</p>"}))
    UtteranceList.add_member(:utterances, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfUtterance, location_name: 'utterances', traits: {"smithy.api#documentation" => "<p>One or more <a>UtteranceData</a> objects that contain\n      information about the utterances that have been made to a bot. The maximum\n      number of object is 100.</p>"}))
    UtteranceList.type = Types::UtteranceList

    AWSDeepSenseModelBuildingService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.lexmodelbuildingservice#AWSDeepSenseModelBuildingService"
      service.name = "AWSDeepSenseModelBuildingService"
      service.version = "2017-04-19"
      service.traits = {"aws.api#service" => {"sdkId" => "Lex Model Building Service", "arnNamespace" => "lex", "cloudFormationName" => "LexModelBuildingService", "cloudTrailEventSource" => "lexmodelbuildingservice.amazonaws.com", "docId" => "lex-models-2017-04-19", "endpointPrefix" => "models.lex"}, "aws.auth#sigv4" => {"name" => "lex"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Lex Model Building Service"}
      service.add_operation(:create_bot_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#CreateBotVersion"
        operation.name = "CreateBotVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBotVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBotVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots/{name}/versions", "code" => 201}}
      end)
      service.add_operation(:create_intent_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#CreateIntentVersion"
        operation.name = "CreateIntentVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIntentVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIntentVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/intents/{name}/versions", "code" => 201}}
      end)
      service.add_operation(:create_slot_type_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#CreateSlotTypeVersion"
        operation.name = "CreateSlotTypeVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSlotTypeVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSlotTypeVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/slottypes/{name}/versions", "code" => 201}}
      end)
      service.add_operation(:delete_bot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#DeleteBot"
        operation.name = "DeleteBot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/bots/{name}", "code" => 204}}
      end)
      service.add_operation(:delete_bot_alias, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#DeleteBotAlias"
        operation.name = "DeleteBotAlias"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBotAliasRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/bots/{botName}/aliases/{name}", "code" => 204}}
      end)
      service.add_operation(:delete_bot_channel_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#DeleteBotChannelAssociation"
        operation.name = "DeleteBotChannelAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBotChannelAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/bots/{botName}/aliases/{botAlias}/channels/{name}", "code" => 204}}
      end)
      service.add_operation(:delete_bot_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#DeleteBotVersion"
        operation.name = "DeleteBotVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBotVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/bots/{name}/versions/{version}", "code" => 204}}
      end)
      service.add_operation(:delete_intent, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#DeleteIntent"
        operation.name = "DeleteIntent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIntentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/intents/{name}", "code" => 204}}
      end)
      service.add_operation(:delete_intent_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#DeleteIntentVersion"
        operation.name = "DeleteIntentVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIntentVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/intents/{name}/versions/{version}", "code" => 204}}
      end)
      service.add_operation(:delete_slot_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#DeleteSlotType"
        operation.name = "DeleteSlotType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSlotTypeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/slottypes/{name}", "code" => 204}}
      end)
      service.add_operation(:delete_slot_type_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#DeleteSlotTypeVersion"
        operation.name = "DeleteSlotTypeVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSlotTypeVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/slottypes/{name}/version/{version}", "code" => 204}}
      end)
      service.add_operation(:delete_utterances, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#DeleteUtterances"
        operation.name = "DeleteUtterances"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUtterancesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/bots/{botName}/utterances/{userId}", "code" => 204}}
      end)
      service.add_operation(:get_bot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetBot"
        operation.name = "GetBot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBotResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/bots/{name}/versions/{versionOrAlias}", "code" => 200}}
      end)
      service.add_operation(:get_bot_alias, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetBotAlias"
        operation.name = "GetBotAlias"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBotAliasRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBotAliasResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/bots/{botName}/aliases/{name}", "code" => 200}}
      end)
      service.add_operation(:get_bot_aliases, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetBotAliases"
        operation.name = "GetBotAliases"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBotAliasesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBotAliasesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/bots/{botName}/aliases", "code" => 200}}
        operation[:paginator] = Paginators::GetBotAliases.new
      end)
      service.add_operation(:get_bot_channel_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetBotChannelAssociation"
        operation.name = "GetBotChannelAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBotChannelAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBotChannelAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/bots/{botName}/aliases/{botAlias}/channels/{name}", "code" => 200}}
      end)
      service.add_operation(:get_bot_channel_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetBotChannelAssociations"
        operation.name = "GetBotChannelAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBotChannelAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBotChannelAssociationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/bots/{botName}/aliases/{botAlias}/channels", "code" => 200}}
        operation[:paginator] = Paginators::GetBotChannelAssociations.new
      end)
      service.add_operation(:get_bot_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetBotVersions"
        operation.name = "GetBotVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBotVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBotVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/bots/{name}/versions", "code" => 200}}
        operation[:paginator] = Paginators::GetBotVersions.new
      end)
      service.add_operation(:get_bots, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetBots"
        operation.name = "GetBots"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBotsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBotsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/bots", "code" => 200}}
        operation[:paginator] = Paginators::GetBots.new
      end)
      service.add_operation(:get_builtin_intent, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetBuiltinIntent"
        operation.name = "GetBuiltinIntent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBuiltinIntentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBuiltinIntentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/builtins/intents/{signature}", "code" => 200}}
      end)
      service.add_operation(:get_builtin_intents, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetBuiltinIntents"
        operation.name = "GetBuiltinIntents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBuiltinIntentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBuiltinIntentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/builtins/intents", "code" => 200}}
        operation[:paginator] = Paginators::GetBuiltinIntents.new
      end)
      service.add_operation(:get_builtin_slot_types, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetBuiltinSlotTypes"
        operation.name = "GetBuiltinSlotTypes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBuiltinSlotTypesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBuiltinSlotTypesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/builtins/slottypes", "code" => 200}}
        operation[:paginator] = Paginators::GetBuiltinSlotTypes.new
      end)
      service.add_operation(:get_export, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetExport"
        operation.name = "GetExport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/exports", "code" => 200}}
      end)
      service.add_operation(:get_import, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetImport"
        operation.name = "GetImport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetImportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetImportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/imports/{importId}", "code" => 200}}
      end)
      service.add_operation(:get_intent, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetIntent"
        operation.name = "GetIntent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIntentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIntentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/intents/{name}/versions/{version}", "code" => 200}}
      end)
      service.add_operation(:get_intent_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetIntentVersions"
        operation.name = "GetIntentVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIntentVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIntentVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/intents/{name}/versions", "code" => 200}}
        operation[:paginator] = Paginators::GetIntentVersions.new
      end)
      service.add_operation(:get_intents, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetIntents"
        operation.name = "GetIntents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIntentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIntentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/intents", "code" => 200}}
        operation[:paginator] = Paginators::GetIntents.new
      end)
      service.add_operation(:get_migration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetMigration"
        operation.name = "GetMigration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMigrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMigrationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/migrations/{migrationId}", "code" => 200}}
      end)
      service.add_operation(:get_migrations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetMigrations"
        operation.name = "GetMigrations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMigrationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMigrationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/migrations", "code" => 200}}
        operation[:paginator] = Paginators::GetMigrations.new
      end)
      service.add_operation(:get_slot_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetSlotType"
        operation.name = "GetSlotType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSlotTypeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSlotTypeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/slottypes/{name}/versions/{version}", "code" => 200}}
      end)
      service.add_operation(:get_slot_type_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetSlotTypeVersions"
        operation.name = "GetSlotTypeVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSlotTypeVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSlotTypeVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/slottypes/{name}/versions", "code" => 200}}
        operation[:paginator] = Paginators::GetSlotTypeVersions.new
      end)
      service.add_operation(:get_slot_types, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetSlotTypes"
        operation.name = "GetSlotTypes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSlotTypesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSlotTypesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/slottypes", "code" => 200}}
        operation[:paginator] = Paginators::GetSlotTypes.new
      end)
      service.add_operation(:get_utterances_view, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#GetUtterancesView"
        operation.name = "GetUtterancesView"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUtterancesViewRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUtterancesViewResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/bots/{botName}/utterances?view=aggregation", "code" => 200}}
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:put_bot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#PutBot"
        operation.name = "PutBot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutBotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutBotResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/bots/{name}/versions/$LATEST", "code" => 200}}
      end)
      service.add_operation(:put_bot_alias, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#PutBotAlias"
        operation.name = "PutBotAlias"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutBotAliasRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutBotAliasResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/bots/{botName}/aliases/{name}", "code" => 200}}
      end)
      service.add_operation(:put_intent, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#PutIntent"
        operation.name = "PutIntent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutIntentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutIntentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/intents/{name}/versions/$LATEST", "code" => 200}}
      end)
      service.add_operation(:put_slot_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#PutSlotType"
        operation.name = "PutSlotType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutSlotTypeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutSlotTypeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/slottypes/{name}/versions/$LATEST", "code" => 200}}
      end)
      service.add_operation(:start_import, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#StartImport"
        operation.name = "StartImport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartImportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartImportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/imports", "code" => 201}}
      end)
      service.add_operation(:start_migration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#StartMigration"
        operation.name = "StartMigration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartMigrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartMigrationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/migrations", "code" => 202}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelbuildingservice#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 204}}
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
