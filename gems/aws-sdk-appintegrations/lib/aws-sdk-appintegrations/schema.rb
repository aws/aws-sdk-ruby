# frozen_string_literal: true

# This is generated code!

module Aws::AppIntegrations
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ApplicationApprovedOrigins = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appintegrations#ApplicationApprovedOrigins', name: 'ApplicationApprovedOrigins', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ApplicationAssociationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#ApplicationAssociationSummary', name: 'ApplicationAssociationSummary')
    ApplicationAssociationsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appintegrations#ApplicationAssociationsList', name: 'ApplicationAssociationsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ApplicationConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#ApplicationConfig', name: 'ApplicationConfig')
    ApplicationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appintegrations#ApplicationName', name: 'ApplicationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\/\\._ \\-]+$"})
    ApplicationNamespace = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appintegrations#ApplicationNamespace', name: 'ApplicationNamespace', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[a-zA-Z0-9\\/\\._\\-]+$"})
    ApplicationSourceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#ApplicationSourceConfig', name: 'ApplicationSourceConfig')
    ApplicationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#ApplicationSummary', name: 'ApplicationSummary')
    ApplicationTrustedSource = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appintegrations#ApplicationTrustedSource', name: 'ApplicationTrustedSource', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^\\w+\\:\\/\\/.*$"})
    ApplicationsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appintegrations#ApplicationsList', name: 'ApplicationsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appintegrations#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"})
    ArnOrUUID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appintegrations#ArnOrUUID', name: 'ArnOrUUID', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}|[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})(:[\\w\\$]+)?$"})
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.appintegrations#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    ClientAssociationMetadata = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.appintegrations#ClientAssociationMetadata', name: 'ClientAssociationMetadata')
    ClientId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appintegrations#ClientId', name: 'ClientId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => ".*"})
    ContactHandling = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#ContactHandling', name: 'ContactHandling')
    ContactHandlingScope = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appintegrations#ContactHandlingScope', name: 'ContactHandlingScope')
    CreateApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#CreateApplicationRequest', name: 'CreateApplicationRequest')
    CreateApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#CreateApplicationResponse', name: 'CreateApplicationResponse')
    CreateDataIntegrationAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#CreateDataIntegrationAssociationRequest', name: 'CreateDataIntegrationAssociationRequest')
    CreateDataIntegrationAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#CreateDataIntegrationAssociationResponse', name: 'CreateDataIntegrationAssociationResponse')
    CreateDataIntegrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#CreateDataIntegrationRequest', name: 'CreateDataIntegrationRequest')
    CreateDataIntegrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#CreateDataIntegrationResponse', name: 'CreateDataIntegrationResponse')
    CreateEventIntegrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#CreateEventIntegrationRequest', name: 'CreateEventIntegrationRequest')
    CreateEventIntegrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#CreateEventIntegrationResponse', name: 'CreateEventIntegrationResponse')
    DataIntegrationAssociationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#DataIntegrationAssociationSummary', name: 'DataIntegrationAssociationSummary')
    DataIntegrationAssociationsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appintegrations#DataIntegrationAssociationsList', name: 'DataIntegrationAssociationsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    DataIntegrationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#DataIntegrationSummary', name: 'DataIntegrationSummary')
    DataIntegrationsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appintegrations#DataIntegrationsList', name: 'DataIntegrationsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    DeleteApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#DeleteApplicationRequest', name: 'DeleteApplicationRequest')
    DeleteApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#DeleteApplicationResponse', name: 'DeleteApplicationResponse')
    DeleteDataIntegrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#DeleteDataIntegrationRequest', name: 'DeleteDataIntegrationRequest')
    DeleteDataIntegrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#DeleteDataIntegrationResponse', name: 'DeleteDataIntegrationResponse')
    DeleteEventIntegrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#DeleteEventIntegrationRequest', name: 'DeleteEventIntegrationRequest')
    DeleteEventIntegrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#DeleteEventIntegrationResponse', name: 'DeleteEventIntegrationResponse')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appintegrations#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => ".*"})
    DestinationURI = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appintegrations#DestinationURI', name: 'DestinationURI', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^(\\w+\\:\\/\\/[\\w.-]+[\\w/!@#+=.-]+$)|(\\w+\\:\\/\\/[\\w.-]+[\\w/!@#+=.-]+[\\w/!@#+=.-]+[\\w/!@#+=.,-]+$)$"})
    DuplicateResourceException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#DuplicateResourceException', name: 'DuplicateResourceException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    EventBridgeBus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appintegrations#EventBridgeBus', name: 'EventBridgeBus', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\/\\._\\-]+$"})
    EventBridgeRuleName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appintegrations#EventBridgeRuleName', name: 'EventBridgeRuleName', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9\\/\\._\\-]+$"})
    EventDefinitionSchema = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appintegrations#EventDefinitionSchema', name: 'EventDefinitionSchema', traits: {"smithy.api#length" => {"min" => 1, "max" => 10240}, "smithy.api#pattern" => "^.*$"})
    EventFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#EventFilter', name: 'EventFilter')
    EventIntegration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#EventIntegration', name: 'EventIntegration')
    EventIntegrationAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#EventIntegrationAssociation', name: 'EventIntegrationAssociation')
    EventIntegrationAssociationsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appintegrations#EventIntegrationAssociationsList', name: 'EventIntegrationAssociationsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    EventIntegrationsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appintegrations#EventIntegrationsList', name: 'EventIntegrationsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    EventName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appintegrations#EventName', name: 'EventName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\/\\._\\-]+::[a-zA-Z0-9\\/\\._\\-]+(?:\\*)?$"})
    ExecutionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#ExecutionConfiguration', name: 'ExecutionConfiguration')
    ExecutionMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appintegrations#ExecutionMode', name: 'ExecutionMode')
    ExecutionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appintegrations#ExecutionStatus', name: 'ExecutionStatus')
    ExternalUrlConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#ExternalUrlConfig', name: 'ExternalUrlConfig')
    Fields = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appintegrations#Fields', name: 'Fields', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\/\\._\\-]+$"})
    FieldsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appintegrations#FieldsList', name: 'FieldsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    FieldsMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.appintegrations#FieldsMap', name: 'FieldsMap')
    FileConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#FileConfiguration', name: 'FileConfiguration')
    FolderList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appintegrations#FolderList', name: 'FolderList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    GetApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#GetApplicationRequest', name: 'GetApplicationRequest')
    GetApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#GetApplicationResponse', name: 'GetApplicationResponse')
    GetDataIntegrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#GetDataIntegrationRequest', name: 'GetDataIntegrationRequest')
    GetDataIntegrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#GetDataIntegrationResponse', name: 'GetDataIntegrationResponse')
    GetEventIntegrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#GetEventIntegrationRequest', name: 'GetEventIntegrationRequest')
    GetEventIntegrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#GetEventIntegrationResponse', name: 'GetEventIntegrationResponse')
    IdempotencyToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appintegrations#IdempotencyToken', name: 'IdempotencyToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => ".*"})
    Identifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appintegrations#Identifier', name: 'Identifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "\\S"})
    IframeConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#IframeConfig', name: 'IframeConfig')
    IframePermission = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appintegrations#IframePermission', name: 'IframePermission', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-z-]+$"})
    IframePermissionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appintegrations#IframePermissionList', name: 'IframePermissionList', traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    InitializationTimeout = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.appintegrations#InitializationTimeout', name: 'InitializationTimeout', traits: {"smithy.api#range" => {"min" => 1, "max" => 600000}})
    InternalServiceError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#InternalServiceError', name: 'InternalServiceError', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LastExecutionStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#LastExecutionStatus', name: 'LastExecutionStatus')
    ListApplicationAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#ListApplicationAssociationsRequest', name: 'ListApplicationAssociationsRequest')
    ListApplicationAssociationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#ListApplicationAssociationsResponse', name: 'ListApplicationAssociationsResponse')
    ListApplicationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#ListApplicationsRequest', name: 'ListApplicationsRequest')
    ListApplicationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#ListApplicationsResponse', name: 'ListApplicationsResponse')
    ListDataIntegrationAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#ListDataIntegrationAssociationsRequest', name: 'ListDataIntegrationAssociationsRequest')
    ListDataIntegrationAssociationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#ListDataIntegrationAssociationsResponse', name: 'ListDataIntegrationAssociationsResponse')
    ListDataIntegrationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#ListDataIntegrationsRequest', name: 'ListDataIntegrationsRequest')
    ListDataIntegrationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#ListDataIntegrationsResponse', name: 'ListDataIntegrationsResponse')
    ListEventIntegrationAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#ListEventIntegrationAssociationsRequest', name: 'ListEventIntegrationAssociationsRequest')
    ListEventIntegrationAssociationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#ListEventIntegrationAssociationsResponse', name: 'ListEventIntegrationAssociationsResponse')
    ListEventIntegrationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#ListEventIntegrationsRequest', name: 'ListEventIntegrationsRequest')
    ListEventIntegrationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#ListEventIntegrationsResponse', name: 'ListEventIntegrationsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.appintegrations#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    Message = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appintegrations#Message', name: 'Message')
    Name = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appintegrations#Name', name: 'Name', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\/\\._\\-]+$"})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appintegrations#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => ".*"})
    NonBlankLongString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appintegrations#NonBlankLongString', name: 'NonBlankLongString', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "\\S"})
    NonBlankString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appintegrations#NonBlankString', name: 'NonBlankString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "\\S"})
    Object = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appintegrations#Object', name: 'Object', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\/\\._\\-]+$"})
    ObjectConfiguration = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.appintegrations#ObjectConfiguration', name: 'ObjectConfiguration')
    OnDemandConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#OnDemandConfiguration', name: 'OnDemandConfiguration')
    Permission = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appintegrations#Permission', name: 'Permission', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\/\\._\\-\\*]+$"})
    PermissionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appintegrations#PermissionList', name: 'PermissionList', traits: {"smithy.api#length" => {"min" => 0, "max" => 150}})
    Publication = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#Publication', name: 'Publication')
    PublicationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appintegrations#PublicationList', name: 'PublicationList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#ResourceQuotaExceededException', name: 'ResourceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ScheduleConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#ScheduleConfiguration', name: 'ScheduleConfiguration')
    Source = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appintegrations#Source', name: 'Source', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^aws\\.partner\\/.*$"})
    SourceURI = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appintegrations#SourceURI', name: 'SourceURI', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^(\\w+\\:\\/\\/[\\w.-]+[\\w/!@#+=.-]+$)|(\\w+\\:\\/\\/[\\w.-]+[\\w/!@#+=.-]+[\\w/!@#+=.-]+[\\w/!@#+=.,-]+$)$"})
    Subscription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#Subscription', name: 'Subscription')
    SubscriptionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appintegrations#SubscriptionList', name: 'SubscriptionList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appintegrations#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appintegrations#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.appintegrations#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appintegrations#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.appintegrations#Timestamp', name: 'Timestamp')
    URL = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appintegrations#URL', name: 'URL', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^\\w+\\:\\/\\/.*$"})
    UUID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appintegrations#UUID', name: 'UUID', traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    UnsupportedOperationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#UnsupportedOperationException', name: 'UnsupportedOperationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#UpdateApplicationRequest', name: 'UpdateApplicationRequest')
    UpdateApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#UpdateApplicationResponse', name: 'UpdateApplicationResponse')
    UpdateDataIntegrationAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#UpdateDataIntegrationAssociationRequest', name: 'UpdateDataIntegrationAssociationRequest')
    UpdateDataIntegrationAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#UpdateDataIntegrationAssociationResponse', name: 'UpdateDataIntegrationAssociationResponse')
    UpdateDataIntegrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#UpdateDataIntegrationRequest', name: 'UpdateDataIntegrationRequest')
    UpdateDataIntegrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#UpdateDataIntegrationResponse', name: 'UpdateDataIntegrationResponse')
    UpdateEventIntegrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#UpdateEventIntegrationRequest', name: 'UpdateEventIntegrationRequest')
    UpdateEventIntegrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appintegrations#UpdateEventIntegrationResponse', name: 'UpdateEventIntegrationResponse')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    ApplicationApprovedOrigins.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationTrustedSource)
    ApplicationAssociationSummary.add_member(:application_association_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ApplicationAssociationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Application Association.</p>"}))
    ApplicationAssociationSummary.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Application.</p>"}))
    ApplicationAssociationSummary.add_member(:client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientId, location_name: 'ClientId', traits: {"smithy.api#documentation" => "<p>The identifier for the client that is associated with the Application Association.</p>"}))
    ApplicationAssociationSummary.type = Types::ApplicationAssociationSummary
    ApplicationAssociationsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationAssociationSummary)
    ApplicationConfig.add_member(:contact_handling, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactHandling, location_name: 'ContactHandling', traits: {"smithy.api#documentation" => "<p>The contact handling configuration for the application.</p>"}))
    ApplicationConfig.type = Types::ApplicationConfig
    ApplicationSourceConfig.add_member(:external_url_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalUrlConfig, location_name: 'ExternalUrlConfig', traits: {"smithy.api#documentation" => "<p>The external URL source for the application.</p>"}))
    ApplicationSourceConfig.type = Types::ApplicationSourceConfig
    ApplicationSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Application.</p>"}))
    ApplicationSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>A unique identifier for the Application.</p>"}))
    ApplicationSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the application.</p>"}))
    ApplicationSummary.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationNamespace, location_name: 'Namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the application.</p>"}))
    ApplicationSummary.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The time when the application was created.</p>"}))
    ApplicationSummary.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The time when the application was last modified.</p>"}))
    ApplicationSummary.add_member(:is_service, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsService', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether the application is a service.</p>"}))
    ApplicationSummary.type = Types::ApplicationSummary
    ApplicationsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSummary)
    ClientAssociationMetadata.key = Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString)
    ClientAssociationMetadata.value = Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString)
    ContactHandling.add_member(:scope, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactHandlingScope, location_name: 'Scope', traits: {"smithy.api#documentation" => "<p>Indicates whether the application refreshes for each contact or refreshes only with each new browser session.</p>"}))
    ContactHandling.type = Types::ContactHandling
    ContactHandlingScope.add_member(:cross_contacts, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CROSS_CONTACTS', traits: {"smithy.api#enumValue" => "CROSS_CONTACTS"}))
    ContactHandlingScope.add_member(:per_contact, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PER_CONTACT', traits: {"smithy.api#enumValue" => "PER_CONTACT"}))
    CreateApplicationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the application.</p>", "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationNamespace, location_name: 'Namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the application.</p>", "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the application.</p>"}))
    CreateApplicationRequest.add_member(:application_source_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSourceConfig, location_name: 'ApplicationSourceConfig', traits: {"smithy.api#documentation" => "<p>The configuration for where the application should be loaded from.</p>", "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:subscriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionList, location_name: 'Subscriptions', traits: {"smithy.api#deprecated" => {"message" => "Subscriptions has been replaced with Permissions"}, "smithy.api#documentation" => "<p>The events that the application subscribes.</p>"}))
    CreateApplicationRequest.add_member(:publications, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicationList, location_name: 'Publications', traits: {"smithy.api#deprecated" => {"message" => "Publications has been replaced with Permissions"}, "smithy.api#documentation" => "<p>The events that the application publishes.</p>"}))
    CreateApplicationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n            request. If not provided, the Amazon Web Services\n            SDK populates this field. For more information about idempotency, see\n            <a href=\"https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateApplicationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource. For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.</p>"}))
    CreateApplicationRequest.add_member(:permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionList, location_name: 'Permissions', traits: {"smithy.api#documentation" => "<p>The configuration of events or requests that the application has access to.</p>"}))
    CreateApplicationRequest.add_member(:is_service, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsService', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether the application is a service.</p>"}))
    CreateApplicationRequest.add_member(:initialization_timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: InitializationTimeout, location_name: 'InitializationTimeout', traits: {"smithy.api#documentation" => "<p>The maximum time in milliseconds allowed to establish a connection with the workspace.</p>"}))
    CreateApplicationRequest.add_member(:application_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationConfig, location_name: 'ApplicationConfig', traits: {"smithy.api#documentation" => "<p>The configuration settings for the application.</p>"}))
    CreateApplicationRequest.add_member(:iframe_config, Smithy::Schema::Shapes::ShapeRef.new(shape: IframeConfig, location_name: 'IframeConfig', traits: {"smithy.api#documentation" => "<p>The iframe configuration for the application.</p>"}))
    CreateApplicationRequest.type = Types::CreateApplicationRequest
    CreateApplicationResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Application.</p>"}))
    CreateApplicationResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>A unique identifier for the Application.</p>"}))
    CreateApplicationResponse.type = Types::CreateApplicationResponse
    CreateDataIntegrationAssociationRequest.add_member(:data_integration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'DataIntegrationIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the DataIntegration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataIntegrationAssociationRequest.add_member(:client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientId, location_name: 'ClientId', traits: {"smithy.api#documentation" => "<p>The identifier for the client that is associated with the DataIntegration\n      association.</p>"}))
    CreateDataIntegrationAssociationRequest.add_member(:object_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectConfiguration, location_name: 'ObjectConfiguration'))
    CreateDataIntegrationAssociationRequest.add_member(:destination_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationURI, location_name: 'DestinationURI', traits: {"smithy.api#documentation" => "<p>The URI of the data destination.</p>"}))
    CreateDataIntegrationAssociationRequest.add_member(:client_association_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientAssociationMetadata, location_name: 'ClientAssociationMetadata', traits: {"smithy.api#documentation" => "<p>The mapping of metadata to be extracted from the data.</p>"}))
    CreateDataIntegrationAssociationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n            request. If not provided, the Amazon Web Services\n            SDK populates this field. For more information about idempotency, see\n            <a href=\"https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateDataIntegrationAssociationRequest.add_member(:execution_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionConfiguration, location_name: 'ExecutionConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for how the files should be pulled from the source.</p>"}))
    CreateDataIntegrationAssociationRequest.type = Types::CreateDataIntegrationAssociationRequest
    CreateDataIntegrationAssociationResponse.add_member(:data_integration_association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'DataIntegrationAssociationId', traits: {"smithy.api#documentation" => "<p>A unique identifier. for the DataIntegrationAssociation.</p>"}))
    CreateDataIntegrationAssociationResponse.add_member(:data_integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DataIntegrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the DataIntegration.</p>"}))
    CreateDataIntegrationAssociationResponse.type = Types::CreateDataIntegrationAssociationResponse
    CreateDataIntegrationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the DataIntegration.</p>", "smithy.api#required" => {}}))
    CreateDataIntegrationRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the DataIntegration.</p>"}))
    CreateDataIntegrationRequest.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'KmsKey', traits: {"smithy.api#documentation" => "<p>The KMS key ARN for the DataIntegration.</p>", "smithy.api#required" => {}}))
    CreateDataIntegrationRequest.add_member(:source_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceURI, location_name: 'SourceURI', traits: {"smithy.api#documentation" => "<p>The URI of the data source.</p>"}))
    CreateDataIntegrationRequest.add_member(:schedule_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleConfiguration, location_name: 'ScheduleConfig', traits: {"smithy.api#documentation" => "<p>The name of the data and how often it should be pulled from the source.</p>"}))
    CreateDataIntegrationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource. For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.</p>"}))
    CreateDataIntegrationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n            request. If not provided, the Amazon Web Services\n            SDK populates this field. For more information about idempotency, see\n            <a href=\"https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateDataIntegrationRequest.add_member(:file_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FileConfiguration, location_name: 'FileConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for what files should be pulled from the source.</p>"}))
    CreateDataIntegrationRequest.add_member(:object_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectConfiguration, location_name: 'ObjectConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for what data should be pulled from the source.</p>"}))
    CreateDataIntegrationRequest.type = Types::CreateDataIntegrationRequest
    CreateDataIntegrationResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN)</p>"}))
    CreateDataIntegrationResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>A unique identifier.</p>"}))
    CreateDataIntegrationResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the DataIntegration.</p>"}))
    CreateDataIntegrationResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the DataIntegration.</p>"}))
    CreateDataIntegrationResponse.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'KmsKey', traits: {"smithy.api#documentation" => "<p>The KMS key ARN for the DataIntegration.</p>"}))
    CreateDataIntegrationResponse.add_member(:source_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceURI, location_name: 'SourceURI', traits: {"smithy.api#documentation" => "<p>The URI of the data source.</p>"}))
    CreateDataIntegrationResponse.add_member(:schedule_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleConfiguration, location_name: 'ScheduleConfiguration', traits: {"smithy.api#documentation" => "<p>The name of the data and how often it should be pulled from the source.</p>"}))
    CreateDataIntegrationResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource. For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.</p>"}))
    CreateDataIntegrationResponse.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n            request. If not provided, the Amazon Web Services\n            SDK populates this field. For more information about idempotency, see\n            <a href=\"https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>.</p>"}))
    CreateDataIntegrationResponse.add_member(:file_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FileConfiguration, location_name: 'FileConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for what files should be pulled from the source.</p>"}))
    CreateDataIntegrationResponse.add_member(:object_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectConfiguration, location_name: 'ObjectConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for what data should be pulled from the source.</p>"}))
    CreateDataIntegrationResponse.type = Types::CreateDataIntegrationResponse
    CreateEventIntegrationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the event integration.</p>", "smithy.api#required" => {}}))
    CreateEventIntegrationRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the event integration.</p>"}))
    CreateEventIntegrationRequest.add_member(:event_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: EventFilter, location_name: 'EventFilter', traits: {"smithy.api#documentation" => "<p>The event filter.</p>", "smithy.api#required" => {}}))
    CreateEventIntegrationRequest.add_member(:event_bridge_bus, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBridgeBus, location_name: 'EventBridgeBus', traits: {"smithy.api#documentation" => "<p>The EventBridge bus.</p>", "smithy.api#required" => {}}))
    CreateEventIntegrationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n            request. If not provided, the Amazon Web Services\n            SDK populates this field. For more information about idempotency, see\n            <a href=\"https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateEventIntegrationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource. For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.</p>"}))
    CreateEventIntegrationRequest.type = Types::CreateEventIntegrationRequest
    CreateEventIntegrationResponse.add_member(:event_integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'EventIntegrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the event integration. </p>"}))
    CreateEventIntegrationResponse.type = Types::CreateEventIntegrationResponse
    DataIntegrationAssociationSummary.add_member(:data_integration_association_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DataIntegrationAssociationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the DataIntegration association.</p>"}))
    DataIntegrationAssociationSummary.add_member(:data_integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DataIntegrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the DataIntegration.</p>"}))
    DataIntegrationAssociationSummary.add_member(:client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientId, location_name: 'ClientId', traits: {"smithy.api#documentation" => "<p>The identifier for the client that is associated with the DataIntegration\n      association.</p>"}))
    DataIntegrationAssociationSummary.add_member(:destination_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationURI, location_name: 'DestinationURI', traits: {"smithy.api#documentation" => "<p>The URI of the data destination.</p>"}))
    DataIntegrationAssociationSummary.add_member(:last_execution_status, Smithy::Schema::Shapes::ShapeRef.new(shape: LastExecutionStatus, location_name: 'LastExecutionStatus', traits: {"smithy.api#documentation" => "<p>The execution status of the last job.</p>"}))
    DataIntegrationAssociationSummary.add_member(:execution_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionConfiguration, location_name: 'ExecutionConfiguration'))
    DataIntegrationAssociationSummary.type = Types::DataIntegrationAssociationSummary
    DataIntegrationAssociationsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationAssociationSummary)
    DataIntegrationSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the DataIntegration.</p>"}))
    DataIntegrationSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the DataIntegration.</p>"}))
    DataIntegrationSummary.add_member(:source_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceURI, location_name: 'SourceURI', traits: {"smithy.api#documentation" => "<p>The URI of the data source.</p>"}))
    DataIntegrationSummary.type = Types::DataIntegrationSummary
    DataIntegrationsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationSummary)
    DeleteApplicationRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnOrUUID, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApplicationRequest.type = Types::DeleteApplicationRequest
    DeleteApplicationResponse.type = Types::DeleteApplicationResponse
    DeleteDataIntegrationRequest.add_member(:data_integration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'DataIntegrationIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the DataIntegration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataIntegrationRequest.type = Types::DeleteDataIntegrationRequest
    DeleteDataIntegrationResponse.type = Types::DeleteDataIntegrationResponse
    DeleteEventIntegrationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the event integration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEventIntegrationRequest.type = Types::DeleteEventIntegrationRequest
    DeleteEventIntegrationResponse.type = Types::DeleteEventIntegrationResponse
    DuplicateResourceException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    DuplicateResourceException.type = Types::DuplicateResourceException
    EventFilter.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'Source', traits: {"smithy.api#documentation" => "<p>The source of the events.</p>", "smithy.api#required" => {}}))
    EventFilter.type = Types::EventFilter
    EventIntegration.add_member(:event_integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'EventIntegrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the event integration.</p>"}))
    EventIntegration.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the event integration.</p>"}))
    EventIntegration.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The event integration description.</p>"}))
    EventIntegration.add_member(:event_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: EventFilter, location_name: 'EventFilter', traits: {"smithy.api#documentation" => "<p>The event integration filter.</p>"}))
    EventIntegration.add_member(:event_bridge_bus, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBridgeBus, location_name: 'EventBridgeBus', traits: {"smithy.api#documentation" => "<p>The Amazon EventBridge bus for the event integration.</p>"}))
    EventIntegration.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource. For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.</p>"}))
    EventIntegration.type = Types::EventIntegration
    EventIntegrationAssociation.add_member(:event_integration_association_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'EventIntegrationAssociationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the event integration association.</p>"}))
    EventIntegrationAssociation.add_member(:event_integration_association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'EventIntegrationAssociationId', traits: {"smithy.api#documentation" => "<p>The identifier for the event integration association.</p>"}))
    EventIntegrationAssociation.add_member(:event_integration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'EventIntegrationName', traits: {"smithy.api#documentation" => "<p>The name of the event integration.</p>"}))
    EventIntegrationAssociation.add_member(:client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientId, location_name: 'ClientId', traits: {"smithy.api#documentation" => "<p>The identifier for the client that is associated with the event integration.</p>"}))
    EventIntegrationAssociation.add_member(:event_bridge_rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBridgeRuleName, location_name: 'EventBridgeRuleName', traits: {"smithy.api#documentation" => "<p>The name of the EventBridge rule.</p>"}))
    EventIntegrationAssociation.add_member(:client_association_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientAssociationMetadata, location_name: 'ClientAssociationMetadata', traits: {"smithy.api#documentation" => "<p>The metadata associated with the client.</p>"}))
    EventIntegrationAssociation.type = Types::EventIntegrationAssociation
    EventIntegrationAssociationsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventIntegrationAssociation)
    EventIntegrationsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventIntegration)
    ExecutionConfiguration.add_member(:execution_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionMode, location_name: 'ExecutionMode', traits: {"smithy.api#documentation" => "<p>The mode for data import/export execution.</p>", "smithy.api#required" => {}}))
    ExecutionConfiguration.add_member(:on_demand_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: OnDemandConfiguration, location_name: 'OnDemandConfiguration'))
    ExecutionConfiguration.add_member(:schedule_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleConfiguration, location_name: 'ScheduleConfiguration'))
    ExecutionConfiguration.type = Types::ExecutionConfiguration
    ExecutionMode.add_member(:on_demand, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ON_DEMAND', traits: {"smithy.api#enumValue" => "ON_DEMAND"}))
    ExecutionMode.add_member(:scheduled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCHEDULED', traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    ExecutionStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ExecutionStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ExecutionStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ExternalUrlConfig.add_member(:access_url, Smithy::Schema::Shapes::ShapeRef.new(shape: URL, location_name: 'AccessUrl', traits: {"smithy.api#documentation" => "<p>The URL to access the application.</p>", "smithy.api#required" => {}}))
    ExternalUrlConfig.add_member(:approved_origins, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationApprovedOrigins, location_name: 'ApprovedOrigins', traits: {"smithy.api#documentation" => "<p>Additional URLs to allow list if different than the access URL.</p>"}))
    ExternalUrlConfig.type = Types::ExternalUrlConfig
    FieldsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Fields)
    FieldsMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString)
    FieldsMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: FieldsList)
    FileConfiguration.add_member(:folders, Smithy::Schema::Shapes::ShapeRef.new(shape: FolderList, location_name: 'Folders', traits: {"smithy.api#documentation" => "<p>Identifiers for the source folders to pull all files from recursively.</p>", "smithy.api#required" => {}}))
    FileConfiguration.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldsMap, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>Restrictions for what files should be pulled from the source.</p>"}))
    FileConfiguration.type = Types::FileConfiguration
    FolderList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankLongString)
    GetApplicationRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnOrUUID, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApplicationRequest.type = Types::GetApplicationRequest
    GetApplicationResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Application.</p>"}))
    GetApplicationResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>A unique identifier for the Application.</p>"}))
    GetApplicationResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the application.</p>"}))
    GetApplicationResponse.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationNamespace, location_name: 'Namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the application.</p>"}))
    GetApplicationResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the application.</p>"}))
    GetApplicationResponse.add_member(:application_source_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSourceConfig, location_name: 'ApplicationSourceConfig', traits: {"smithy.api#documentation" => "<p>The configuration for where the application should be loaded from.</p>"}))
    GetApplicationResponse.add_member(:subscriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionList, location_name: 'Subscriptions', traits: {"smithy.api#deprecated" => {"message" => "Subscriptions has been replaced with Permissions"}, "smithy.api#documentation" => "<p>The events that the application subscribes.</p>"}))
    GetApplicationResponse.add_member(:publications, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicationList, location_name: 'Publications', traits: {"smithy.api#deprecated" => {"message" => "Publications has been replaced with Permissions"}, "smithy.api#documentation" => "<p>The events that the application publishes.</p>"}))
    GetApplicationResponse.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The created time of the Application.</p>"}))
    GetApplicationResponse.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The last modified time of the Application.</p>"}))
    GetApplicationResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource. For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.</p>"}))
    GetApplicationResponse.add_member(:permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionList, location_name: 'Permissions', traits: {"smithy.api#documentation" => "<p>The configuration of events or requests that the application has access to.</p>"}))
    GetApplicationResponse.add_member(:is_service, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsService', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether the application is a service.</p>"}))
    GetApplicationResponse.add_member(:initialization_timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: InitializationTimeout, location_name: 'InitializationTimeout', traits: {"smithy.api#documentation" => "<p>The maximum time in milliseconds allowed to establish a connection with the workspace.</p>"}))
    GetApplicationResponse.add_member(:application_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationConfig, location_name: 'ApplicationConfig', traits: {"smithy.api#documentation" => "<p>The configuration settings for the application.</p>"}))
    GetApplicationResponse.add_member(:iframe_config, Smithy::Schema::Shapes::ShapeRef.new(shape: IframeConfig, location_name: 'IframeConfig', traits: {"smithy.api#documentation" => "<p>The iframe configuration for the application.</p>"}))
    GetApplicationResponse.type = Types::GetApplicationResponse
    GetDataIntegrationRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>A unique identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataIntegrationRequest.type = Types::GetDataIntegrationRequest
    GetDataIntegrationResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the DataIntegration.</p>"}))
    GetDataIntegrationResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>A unique identifier.</p>"}))
    GetDataIntegrationResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the DataIntegration.</p>"}))
    GetDataIntegrationResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The KMS key ARN for the DataIntegration.</p>"}))
    GetDataIntegrationResponse.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'KmsKey', traits: {"smithy.api#documentation" => "<p>The KMS key ARN for the DataIntegration.</p>"}))
    GetDataIntegrationResponse.add_member(:source_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceURI, location_name: 'SourceURI', traits: {"smithy.api#documentation" => "<p>The URI of the data source.</p>"}))
    GetDataIntegrationResponse.add_member(:schedule_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleConfiguration, location_name: 'ScheduleConfiguration', traits: {"smithy.api#documentation" => "<p>The name of the data and how often it should be pulled from the source.</p>"}))
    GetDataIntegrationResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource. For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.</p>"}))
    GetDataIntegrationResponse.add_member(:file_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FileConfiguration, location_name: 'FileConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for what files should be pulled from the source.</p>"}))
    GetDataIntegrationResponse.add_member(:object_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectConfiguration, location_name: 'ObjectConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for what data should be pulled from the source.</p>"}))
    GetDataIntegrationResponse.type = Types::GetDataIntegrationResponse
    GetEventIntegrationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the event integration. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEventIntegrationRequest.type = Types::GetEventIntegrationRequest
    GetEventIntegrationResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the event integration. </p>"}))
    GetEventIntegrationResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the event integration.</p>"}))
    GetEventIntegrationResponse.add_member(:event_integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'EventIntegrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the event integration.</p>"}))
    GetEventIntegrationResponse.add_member(:event_bridge_bus, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBridgeBus, location_name: 'EventBridgeBus', traits: {"smithy.api#documentation" => "<p>The EventBridge bus.</p>"}))
    GetEventIntegrationResponse.add_member(:event_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: EventFilter, location_name: 'EventFilter', traits: {"smithy.api#documentation" => "<p>The event filter.</p>"}))
    GetEventIntegrationResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource. For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.</p>"}))
    GetEventIntegrationResponse.type = Types::GetEventIntegrationResponse
    IframeConfig.add_member(:allow, Smithy::Schema::Shapes::ShapeRef.new(shape: IframePermissionList, location_name: 'Allow', traits: {"smithy.api#documentation" => "<p>The list of features that are allowed in the iframe.</p>"}))
    IframeConfig.add_member(:sandbox, Smithy::Schema::Shapes::ShapeRef.new(shape: IframePermissionList, location_name: 'Sandbox', traits: {"smithy.api#documentation" => "<p>The list of sandbox attributes for the iframe.</p>"}))
    IframeConfig.type = Types::IframeConfig
    IframePermissionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IframePermission)
    InternalServiceError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    InternalServiceError.type = Types::InternalServiceError
    InvalidRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    InvalidRequestException.type = Types::InvalidRequestException
    LastExecutionStatus.add_member(:execution_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: 'ExecutionStatus', traits: {"smithy.api#documentation" => "<p>The job status enum string.</p>"}))
    LastExecutionStatus.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The status message of a job.</p>"}))
    LastExecutionStatus.type = Types::LastExecutionStatus
    ListApplicationAssociationsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnOrUUID, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the Application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListApplicationAssociationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous \nresponse in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListApplicationAssociationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListApplicationAssociationsRequest.type = Types::ListApplicationAssociationsRequest
    ListApplicationAssociationsResponse.add_member(:application_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationAssociationsList, location_name: 'ApplicationAssociations', traits: {"smithy.api#documentation" => "<p>List of Application Associations for the Application.</p>"}))
    ListApplicationAssociationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the token for the next set of results.</p>"}))
    ListApplicationAssociationsResponse.type = Types::ListApplicationAssociationsResponse
    ListApplicationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous \nresponse in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListApplicationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListApplicationsRequest.type = Types::ListApplicationsRequest
    ListApplicationsResponse.add_member(:applications, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationsList, location_name: 'Applications', traits: {"smithy.api#documentation" => "<p>The Applications associated with this account.</p>"}))
    ListApplicationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the token for the next set of results.</p>"}))
    ListApplicationsResponse.type = Types::ListApplicationsResponse
    ListDataIntegrationAssociationsRequest.add_member(:data_integration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'DataIntegrationIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the DataIntegration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataIntegrationAssociationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous \nresponse in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDataIntegrationAssociationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDataIntegrationAssociationsRequest.type = Types::ListDataIntegrationAssociationsRequest
    ListDataIntegrationAssociationsResponse.add_member(:data_integration_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationAssociationsList, location_name: 'DataIntegrationAssociations', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) and unique ID of the DataIntegration association.</p>"}))
    ListDataIntegrationAssociationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the token for the next set of results.</p>"}))
    ListDataIntegrationAssociationsResponse.type = Types::ListDataIntegrationAssociationsResponse
    ListDataIntegrationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous \nresponse in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDataIntegrationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDataIntegrationsRequest.type = Types::ListDataIntegrationsRequest
    ListDataIntegrationsResponse.add_member(:data_integrations, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationsList, location_name: 'DataIntegrations', traits: {"smithy.api#documentation" => "<p>The DataIntegrations associated with this account.</p>"}))
    ListDataIntegrationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the token for the next set of results.</p>"}))
    ListDataIntegrationsResponse.type = Types::ListDataIntegrationsResponse
    ListEventIntegrationAssociationsRequest.add_member(:event_integration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'EventIntegrationName', traits: {"smithy.api#documentation" => "<p>The name of the event integration. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListEventIntegrationAssociationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous \nresponse in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListEventIntegrationAssociationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListEventIntegrationAssociationsRequest.type = Types::ListEventIntegrationAssociationsRequest
    ListEventIntegrationAssociationsResponse.add_member(:event_integration_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: EventIntegrationAssociationsList, location_name: 'EventIntegrationAssociations', traits: {"smithy.api#documentation" => "<p>The event integration associations.</p>"}))
    ListEventIntegrationAssociationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the token for the next set of results.</p>"}))
    ListEventIntegrationAssociationsResponse.type = Types::ListEventIntegrationAssociationsResponse
    ListEventIntegrationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous \nresponse in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListEventIntegrationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListEventIntegrationsRequest.type = Types::ListEventIntegrationsRequest
    ListEventIntegrationsResponse.add_member(:event_integrations, Smithy::Schema::Shapes::ShapeRef.new(shape: EventIntegrationsList, location_name: 'EventIntegrations', traits: {"smithy.api#documentation" => "<p>The event integrations.</p>"}))
    ListEventIntegrationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the token for the next set of results.</p>"}))
    ListEventIntegrationsResponse.type = Types::ListEventIntegrationsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Information about the tags.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ObjectConfiguration.key = Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString)
    ObjectConfiguration.value = Smithy::Schema::Shapes::ShapeRef.new(shape: FieldsMap)
    OnDemandConfiguration.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The start time for data pull from the source as an Unix/epoch string in\n      milliseconds</p>", "smithy.api#required" => {}}))
    OnDemandConfiguration.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The end time for data pull from the source as an Unix/epoch string in\n      milliseconds</p>"}))
    OnDemandConfiguration.type = Types::OnDemandConfiguration
    PermissionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Permission)
    Publication.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: EventName, location_name: 'Event', traits: {"smithy.api#documentation" => "<p>The name of the publication.</p>", "smithy.api#required" => {}}))
    Publication.add_member(:schema, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDefinitionSchema, location_name: 'Schema', traits: {"smithy.api#documentation" => "<p>The JSON schema of the publication event.</p>", "smithy.api#required" => {}}))
    Publication.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the publication.</p>"}))
    Publication.type = Types::Publication
    PublicationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Publication)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    ResourceQuotaExceededException.type = Types::ResourceQuotaExceededException
    ScheduleConfiguration.add_member(:first_execution_from, Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'FirstExecutionFrom', traits: {"smithy.api#documentation" => "<p>The start date for objects to import in the first flow run as an Unix/epoch timestamp in\n      milliseconds or in ISO-8601 format.</p>"}))
    ScheduleConfiguration.add_member(:object, Smithy::Schema::Shapes::ShapeRef.new(shape: Object, location_name: 'Object', traits: {"smithy.api#documentation" => "<p>The name of the object to pull from the data source.</p>"}))
    ScheduleConfiguration.add_member(:schedule_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'ScheduleExpression', traits: {"smithy.api#documentation" => "<p>How often the data should be pulled from data source.</p>", "smithy.api#required" => {}}))
    ScheduleConfiguration.type = Types::ScheduleConfiguration
    Subscription.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: EventName, location_name: 'Event', traits: {"smithy.api#documentation" => "<p>The name of the subscription.</p>", "smithy.api#required" => {}}))
    Subscription.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the subscription.</p>"}))
    Subscription.type = Types::Subscription
    SubscriptionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Subscription)
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource. For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    ThrottlingException.type = Types::ThrottlingException
    UnsupportedOperationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    UnsupportedOperationException.type = Types::UnsupportedOperationException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The tag keys.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateApplicationRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnOrUUID, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApplicationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the application.</p>"}))
    UpdateApplicationRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the application.</p>"}))
    UpdateApplicationRequest.add_member(:application_source_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSourceConfig, location_name: 'ApplicationSourceConfig', traits: {"smithy.api#documentation" => "<p>The configuration for where the application should be loaded from.</p>"}))
    UpdateApplicationRequest.add_member(:subscriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionList, location_name: 'Subscriptions', traits: {"smithy.api#deprecated" => {"message" => "Subscriptions has been replaced with Permissions"}, "smithy.api#documentation" => "<p>The events that the application subscribes.</p>"}))
    UpdateApplicationRequest.add_member(:publications, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicationList, location_name: 'Publications', traits: {"smithy.api#deprecated" => {"message" => "Publications has been replaced with Permissions"}, "smithy.api#documentation" => "<p>The events that the application publishes.</p>"}))
    UpdateApplicationRequest.add_member(:permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionList, location_name: 'Permissions', traits: {"smithy.api#documentation" => "<p>The configuration of events or requests that the application has access to.</p>"}))
    UpdateApplicationRequest.add_member(:is_service, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsService', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Indicates whether the application is a service.</p>"}))
    UpdateApplicationRequest.add_member(:initialization_timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: InitializationTimeout, location_name: 'InitializationTimeout', traits: {"smithy.api#documentation" => "<p>The maximum time in milliseconds allowed to establish a connection with the workspace.</p>"}))
    UpdateApplicationRequest.add_member(:application_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationConfig, location_name: 'ApplicationConfig', traits: {"smithy.api#documentation" => "<p>The configuration settings for the application.</p>"}))
    UpdateApplicationRequest.add_member(:iframe_config, Smithy::Schema::Shapes::ShapeRef.new(shape: IframeConfig, location_name: 'IframeConfig', traits: {"smithy.api#documentation" => "<p>The iframe configuration for the application.</p>"}))
    UpdateApplicationRequest.type = Types::UpdateApplicationRequest
    UpdateApplicationResponse.type = Types::UpdateApplicationResponse
    UpdateDataIntegrationAssociationRequest.add_member(:data_integration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'DataIntegrationIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the DataIntegration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataIntegrationAssociationRequest.add_member(:data_integration_association_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'DataIntegrationAssociationIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier. of the DataIntegrationAssociation resource</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataIntegrationAssociationRequest.add_member(:execution_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionConfiguration, location_name: 'ExecutionConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for how the files should be pulled from the source.</p>", "smithy.api#required" => {}}))
    UpdateDataIntegrationAssociationRequest.type = Types::UpdateDataIntegrationAssociationRequest
    UpdateDataIntegrationAssociationResponse.type = Types::UpdateDataIntegrationAssociationResponse
    UpdateDataIntegrationRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the DataIntegration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataIntegrationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the DataIntegration.</p>"}))
    UpdateDataIntegrationRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the DataIntegration.</p>"}))
    UpdateDataIntegrationRequest.type = Types::UpdateDataIntegrationRequest
    UpdateDataIntegrationResponse.type = Types::UpdateDataIntegrationResponse
    UpdateEventIntegrationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the event integration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEventIntegrationRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the event integration.</p>"}))
    UpdateEventIntegrationRequest.type = Types::UpdateEventIntegrationRequest
    UpdateEventIntegrationResponse.type = Types::UpdateEventIntegrationResponse

    AmazonAppIntegrationService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.appintegrations#AmazonAppIntegrationService"
      service.name = "AmazonAppIntegrationService"
      service.version = "2020-07-29"
      service.traits = {"aws.api#service" => {"sdkId" => "AppIntegrations", "arnNamespace" => "app-integrations", "cloudFormationName" => "AppIntegrations", "cloudTrailEventSource" => "app-integrations.amazonaws.com", "endpointPrefix" => "app-integrations"}, "aws.auth#sigv4" => {"name" => "app-integrations"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon AppIntegrations Service"}
      service.add_operation(:create_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications", "code" => 200}}
      end)
      service.add_operation(:create_data_integration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#CreateDataIntegration"
        operation.name = "CreateDataIntegration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataIntegrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataIntegrationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/dataIntegrations", "code" => 200}}
      end)
      service.add_operation(:create_data_integration_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#CreateDataIntegrationAssociation"
        operation.name = "CreateDataIntegrationAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataIntegrationAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataIntegrationAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/dataIntegrations/{DataIntegrationIdentifier}/associations", "code" => 200}}
      end)
      service.add_operation(:create_event_integration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#CreateEventIntegration"
        operation.name = "CreateEventIntegration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEventIntegrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEventIntegrationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/eventIntegrations", "code" => 200}}
      end)
      service.add_operation(:delete_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{Arn}", "code" => 200}}
      end)
      service.add_operation(:delete_data_integration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#DeleteDataIntegration"
        operation.name = "DeleteDataIntegration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataIntegrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataIntegrationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/dataIntegrations/{DataIntegrationIdentifier}", "code" => 200}}
      end)
      service.add_operation(:delete_event_integration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#DeleteEventIntegration"
        operation.name = "DeleteEventIntegration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventIntegrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventIntegrationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/eventIntegrations/{Name}", "code" => 200}}
      end)
      service.add_operation(:get_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#GetApplication"
        operation.name = "GetApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{Arn}", "code" => 200}}
      end)
      service.add_operation(:get_data_integration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#GetDataIntegration"
        operation.name = "GetDataIntegration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataIntegrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataIntegrationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/dataIntegrations/{Identifier}", "code" => 200}}
      end)
      service.add_operation(:get_event_integration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#GetEventIntegration"
        operation.name = "GetEventIntegration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEventIntegrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEventIntegrationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/eventIntegrations/{Name}", "code" => 200}}
      end)
      service.add_operation(:list_application_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#ListApplicationAssociations"
        operation.name = "ListApplicationAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationAssociationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{ApplicationId}/associations", "code" => 200}}
        operation[:paginator] = Paginators::ListApplicationAssociations.new
      end)
      service.add_operation(:list_applications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#ListApplications"
        operation.name = "ListApplications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications", "code" => 200}}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_data_integration_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#ListDataIntegrationAssociations"
        operation.name = "ListDataIntegrationAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataIntegrationAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataIntegrationAssociationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/dataIntegrations/{DataIntegrationIdentifier}/associations", "code" => 200}}
        operation[:paginator] = Paginators::ListDataIntegrationAssociations.new
      end)
      service.add_operation(:list_data_integrations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#ListDataIntegrations"
        operation.name = "ListDataIntegrations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataIntegrationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataIntegrationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/dataIntegrations", "code" => 200}}
        operation[:paginator] = Paginators::ListDataIntegrations.new
      end)
      service.add_operation(:list_event_integration_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#ListEventIntegrationAssociations"
        operation.name = "ListEventIntegrationAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventIntegrationAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventIntegrationAssociationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/eventIntegrations/{EventIntegrationName}/associations", "code" => 200}}
        operation[:paginator] = Paginators::ListEventIntegrationAssociations.new
      end)
      service.add_operation(:list_event_integrations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#ListEventIntegrations"
        operation.name = "ListEventIntegrations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventIntegrationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventIntegrationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/eventIntegrations", "code" => 200}}
        operation[:paginator] = Paginators::ListEventIntegrations.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/applications/{Arn}", "code" => 200}}
      end)
      service.add_operation(:update_data_integration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#UpdateDataIntegration"
        operation.name = "UpdateDataIntegration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataIntegrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataIntegrationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/dataIntegrations/{Identifier}", "code" => 200}}
      end)
      service.add_operation(:update_data_integration_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#UpdateDataIntegrationAssociation"
        operation.name = "UpdateDataIntegrationAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataIntegrationAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataIntegrationAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/dataIntegrations/{DataIntegrationIdentifier}/associations/{DataIntegrationAssociationIdentifier}", "code" => 200}}
      end)
      service.add_operation(:update_event_integration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#UpdateEventIntegration"
        operation.name = "UpdateEventIntegration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEventIntegrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEventIntegrationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/eventIntegrations/{Name}", "code" => 200}}
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
