# frozen_string_literal: true

# This is generated code!

module Aws::AppIntegrations
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ApplicationApprovedOrigins = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appintegrations#ApplicationApprovedOrigins", name: "ApplicationApprovedOrigins", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ApplicationAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#ApplicationAssociationSummary", name: "ApplicationAssociationSummary")
    ApplicationAssociationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appintegrations#ApplicationAssociationsList", name: "ApplicationAssociationsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ApplicationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#ApplicationConfig", name: "ApplicationConfig")
    ApplicationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appintegrations#ApplicationName", name: "ApplicationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\/\\._ \\-]+$"})
    ApplicationNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appintegrations#ApplicationNamespace", name: "ApplicationNamespace", traits: {"smithy.api#length" => {"min" => 1, "max" => 211}, "smithy.api#pattern" => "^[a-zA-Z0-9\\/\\._\\-]+$"})
    ApplicationSourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#ApplicationSourceConfig", name: "ApplicationSourceConfig")
    ApplicationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#ApplicationSummary", name: "ApplicationSummary")
    ApplicationTrustedSource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appintegrations#ApplicationTrustedSource", name: "ApplicationTrustedSource", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^\\w+\\:\\/\\/.*$"})
    ApplicationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appintegrations#ApplicationType", name: "ApplicationType")
    ApplicationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appintegrations#ApplicationsList", name: "ApplicationsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appintegrations#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"})
    ArnOrUUID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appintegrations#ArnOrUUID", name: "ArnOrUUID", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}|[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})(:[\\w\\$]+)?$"})
    AuthConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#AuthConfig", name: "AuthConfig")
    AuthType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appintegrations#AuthType", name: "AuthType")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.appintegrations#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    ClientAssociationMetadata = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.appintegrations#ClientAssociationMetadata", name: "ClientAssociationMetadata")
    ClientId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appintegrations#ClientId", name: "ClientId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => ".*"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContactHandling = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#ContactHandling", name: "ContactHandling")
    ContactHandlingScope = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appintegrations#ContactHandlingScope", name: "ContactHandlingScope")
    CreateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#CreateApplicationRequest", name: "CreateApplicationRequest")
    CreateApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#CreateApplicationResponse", name: "CreateApplicationResponse")
    CreateDataIntegrationAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#CreateDataIntegrationAssociationRequest", name: "CreateDataIntegrationAssociationRequest")
    CreateDataIntegrationAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#CreateDataIntegrationAssociationResponse", name: "CreateDataIntegrationAssociationResponse")
    CreateDataIntegrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#CreateDataIntegrationRequest", name: "CreateDataIntegrationRequest")
    CreateDataIntegrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#CreateDataIntegrationResponse", name: "CreateDataIntegrationResponse")
    CreateEventIntegrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#CreateEventIntegrationRequest", name: "CreateEventIntegrationRequest")
    CreateEventIntegrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#CreateEventIntegrationResponse", name: "CreateEventIntegrationResponse")
    DataIntegrationAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#DataIntegrationAssociationSummary", name: "DataIntegrationAssociationSummary")
    DataIntegrationAssociationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appintegrations#DataIntegrationAssociationsList", name: "DataIntegrationAssociationsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    DataIntegrationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#DataIntegrationSummary", name: "DataIntegrationSummary")
    DataIntegrationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appintegrations#DataIntegrationsList", name: "DataIntegrationsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    DeleteApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#DeleteApplicationRequest", name: "DeleteApplicationRequest")
    DeleteApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#DeleteApplicationResponse", name: "DeleteApplicationResponse")
    DeleteDataIntegrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#DeleteDataIntegrationRequest", name: "DeleteDataIntegrationRequest")
    DeleteDataIntegrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#DeleteDataIntegrationResponse", name: "DeleteDataIntegrationResponse")
    DeleteEventIntegrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#DeleteEventIntegrationRequest", name: "DeleteEventIntegrationRequest")
    DeleteEventIntegrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#DeleteEventIntegrationResponse", name: "DeleteEventIntegrationResponse")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appintegrations#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => ".*"})
    DestinationURI = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appintegrations#DestinationURI", name: "DestinationURI", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^(\\w+\\:\\/\\/[\\w.-]+[\\w/!@#+=.-]+$)|(\\w+\\:\\/\\/[\\w.-]+[\\w/!@#+=.-]+[\\w/!@#+=.-]+[\\w/!@#+=.,-]+$)$"})
    DuplicateResourceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#DuplicateResourceException", name: "DuplicateResourceException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    EventBridgeBus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appintegrations#EventBridgeBus", name: "EventBridgeBus", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\/\\._\\-]+$"})
    EventBridgeRuleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appintegrations#EventBridgeRuleName", name: "EventBridgeRuleName", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9\\/\\._\\-]+$"})
    EventDefinitionSchema = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appintegrations#EventDefinitionSchema", name: "EventDefinitionSchema", traits: {"smithy.api#length" => {"min" => 1, "max" => 10240}, "smithy.api#pattern" => "^.*$"})
    EventFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#EventFilter", name: "EventFilter")
    EventIntegration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#EventIntegration", name: "EventIntegration")
    EventIntegrationAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#EventIntegrationAssociation", name: "EventIntegrationAssociation")
    EventIntegrationAssociationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appintegrations#EventIntegrationAssociationsList", name: "EventIntegrationAssociationsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    EventIntegrationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appintegrations#EventIntegrationsList", name: "EventIntegrationsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    EventName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appintegrations#EventName", name: "EventName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\/\\._\\-]+::[a-zA-Z0-9\\/\\._\\-]+(?:\\*)?$"})
    ExecutionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#ExecutionConfiguration", name: "ExecutionConfiguration")
    ExecutionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appintegrations#ExecutionMode", name: "ExecutionMode")
    ExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appintegrations#ExecutionStatus", name: "ExecutionStatus")
    ExternalUrlConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#ExternalUrlConfig", name: "ExternalUrlConfig")
    Fields = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appintegrations#Fields", name: "Fields", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\/\\._\\-]+$"})
    FieldsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appintegrations#FieldsList", name: "FieldsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    FieldsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.appintegrations#FieldsMap", name: "FieldsMap")
    FileConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#FileConfiguration", name: "FileConfiguration")
    FolderList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appintegrations#FolderList", name: "FolderList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    GetApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#GetApplicationRequest", name: "GetApplicationRequest")
    GetApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#GetApplicationResponse", name: "GetApplicationResponse")
    GetDataIntegrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#GetDataIntegrationRequest", name: "GetDataIntegrationRequest")
    GetDataIntegrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#GetDataIntegrationResponse", name: "GetDataIntegrationResponse")
    GetEventIntegrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#GetEventIntegrationRequest", name: "GetEventIntegrationRequest")
    GetEventIntegrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#GetEventIntegrationResponse", name: "GetEventIntegrationResponse")
    IdempotencyToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appintegrations#IdempotencyToken", name: "IdempotencyToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => ".*"})
    Identifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appintegrations#Identifier", name: "Identifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "\\S"})
    IframeConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#IframeConfig", name: "IframeConfig")
    IframePermission = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appintegrations#IframePermission", name: "IframePermission", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-z-]+$"})
    IframePermissionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appintegrations#IframePermissionList", name: "IframePermissionList", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    InitializationTimeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appintegrations#InitializationTimeout", name: "InitializationTimeout", traits: {"smithy.api#range" => {"min" => 1, "max" => 600000}})
    InternalServiceError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#InternalServiceError", name: "InternalServiceError", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LastExecutionStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#LastExecutionStatus", name: "LastExecutionStatus")
    ListApplicationAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#ListApplicationAssociationsRequest", name: "ListApplicationAssociationsRequest")
    ListApplicationAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#ListApplicationAssociationsResponse", name: "ListApplicationAssociationsResponse")
    ListApplicationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#ListApplicationsRequest", name: "ListApplicationsRequest")
    ListApplicationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#ListApplicationsResponse", name: "ListApplicationsResponse")
    ListDataIntegrationAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#ListDataIntegrationAssociationsRequest", name: "ListDataIntegrationAssociationsRequest")
    ListDataIntegrationAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#ListDataIntegrationAssociationsResponse", name: "ListDataIntegrationAssociationsResponse")
    ListDataIntegrationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#ListDataIntegrationsRequest", name: "ListDataIntegrationsRequest")
    ListDataIntegrationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#ListDataIntegrationsResponse", name: "ListDataIntegrationsResponse")
    ListEventIntegrationAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#ListEventIntegrationAssociationsRequest", name: "ListEventIntegrationAssociationsRequest")
    ListEventIntegrationAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#ListEventIntegrationAssociationsResponse", name: "ListEventIntegrationAssociationsResponse")
    ListEventIntegrationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#ListEventIntegrationsRequest", name: "ListEventIntegrationsRequest")
    ListEventIntegrationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#ListEventIntegrationsResponse", name: "ListEventIntegrationsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appintegrations#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appintegrations#Message", name: "Message")
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appintegrations#Name", name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\/\\._\\-]+$"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appintegrations#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => ".*"})
    NonBlankLongString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appintegrations#NonBlankLongString", name: "NonBlankLongString", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "\\S"})
    NonBlankString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appintegrations#NonBlankString", name: "NonBlankString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "\\S"})
    Object = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appintegrations#Object", name: "Object", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\/\\._\\-]+$"})
    ObjectConfiguration = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.appintegrations#ObjectConfiguration", name: "ObjectConfiguration")
    OnDemandConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#OnDemandConfiguration", name: "OnDemandConfiguration")
    Permission = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appintegrations#Permission", name: "Permission", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\/\\._\\-\\*]+$"})
    PermissionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appintegrations#PermissionList", name: "PermissionList", traits: {"smithy.api#length" => {"min" => 0, "max" => 150}})
    Publication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#Publication", name: "Publication")
    PublicationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appintegrations#PublicationList", name: "PublicationList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#ResourceQuotaExceededException", name: "ResourceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ScheduleConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#ScheduleConfiguration", name: "ScheduleConfiguration")
    Source = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appintegrations#Source", name: "Source", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^(aws\\.(partner\\/.*|cases|cases\\-test))|Pipe\\s.[a-zA-Z0-9\\/\\._\\-]+$|app\\-integrations\\.webhooks\\/[a-zA-Z0-9\\-_.\\/]+$"})
    SourceURI = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appintegrations#SourceURI", name: "SourceURI", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^(\\w+\\:\\/\\/[\\w.-]+[\\w/!@#+=.-]+$)|(\\w+\\:\\/\\/[\\w.-]+[\\w/!@#+=.-]+[\\w/!@#+=.-]+[\\w/!@#+=.,-]+$)$"})
    Subscription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#Subscription", name: "Subscription")
    SubscriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appintegrations#SubscriptionList", name: "SubscriptionList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appintegrations#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appintegrations#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.appintegrations#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appintegrations#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.appintegrations#Timestamp", name: "Timestamp")
    URL = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appintegrations#URL", name: "URL", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^\\w+\\:\\/\\/.*$"})
    UUID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appintegrations#UUID", name: "UUID", traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    UnsupportedOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#UnsupportedOperationException", name: "UnsupportedOperationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#UpdateApplicationRequest", name: "UpdateApplicationRequest")
    UpdateApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#UpdateApplicationResponse", name: "UpdateApplicationResponse")
    UpdateDataIntegrationAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#UpdateDataIntegrationAssociationRequest", name: "UpdateDataIntegrationAssociationRequest")
    UpdateDataIntegrationAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#UpdateDataIntegrationAssociationResponse", name: "UpdateDataIntegrationAssociationResponse")
    UpdateDataIntegrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#UpdateDataIntegrationRequest", name: "UpdateDataIntegrationRequest")
    UpdateDataIntegrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#UpdateDataIntegrationResponse", name: "UpdateDataIntegrationResponse")
    UpdateEventIntegrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#UpdateEventIntegrationRequest", name: "UpdateEventIntegrationRequest")
    UpdateEventIntegrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appintegrations#UpdateEventIntegrationResponse", name: "UpdateEventIntegrationResponse")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    ApplicationApprovedOrigins.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationTrustedSource, name: "member"))
    ApplicationAssociationSummary.add_member(:application_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ApplicationAssociationArn"))
    ApplicationAssociationSummary.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ApplicationArn"))
    ApplicationAssociationSummary.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientId, name: "ClientId"))
    ApplicationAssociationSummary.type = Types::ApplicationAssociationSummary
    ApplicationAssociationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationAssociationSummary, name: "member"))
    ApplicationConfig.add_member(:contact_handling, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactHandling, name: "ContactHandling"))
    ApplicationConfig.type = Types::ApplicationConfig
    ApplicationSourceConfig.add_member(:external_url_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalUrlConfig, name: "ExternalUrlConfig"))
    ApplicationSourceConfig.type = Types::ApplicationSourceConfig
    ApplicationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    ApplicationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "Id"))
    ApplicationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "Name"))
    ApplicationSummary.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationNamespace, name: "Namespace"))
    ApplicationSummary.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    ApplicationSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    ApplicationSummary.add_member(:is_service, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsService", traits: {"smithy.api#default" => false, "smithy.api#deprecated" => {"since" => "2025-12-01", "message" => "IsService has been deprecated in favor of ApplicationType"}}))
    ApplicationSummary.add_member(:application_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationType, name: "ApplicationType"))
    ApplicationSummary.type = Types::ApplicationSummary
    ApplicationType.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    ApplicationType.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE", traits: {"smithy.api#enumValue" => "SERVICE"}))
    ApplicationType.add_member(:mcp_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MCP_SERVER", traits: {"smithy.api#enumValue" => "MCP_SERVER"}))
    ApplicationType.add_member(:a2_a_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "A2A_SERVER", traits: {"smithy.api#enumValue" => "A2A_SERVER"}))
    ApplicationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSummary, name: "member"))
    AuthConfig.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthType, name: "AuthType"))
    AuthConfig.add_member(:credential_provider_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CredentialProviderIdentifier"))
    AuthConfig.add_member(:audience_override, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "AudienceOverride"))
    AuthConfig.type = Types::AuthConfig
    AuthType.add_member(:api_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "API_KEY", traits: {"smithy.api#enumValue" => "API_KEY"}))
    AuthType.add_member(:connect_jwt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONNECT_JWT", traits: {"smithy.api#enumValue" => "CONNECT_JWT"}))
    ClientAssociationMetadata.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "key"))
    ClientAssociationMetadata.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "value"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ConflictException.type = Types::ConflictException
    ContactHandling.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactHandlingScope, name: "Scope"))
    ContactHandling.type = Types::ContactHandling
    ContactHandlingScope.add_member(:cross_contacts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CROSS_CONTACTS", traits: {"smithy.api#enumValue" => "CROSS_CONTACTS"}))
    ContactHandlingScope.add_member(:per_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PER_CONTACT", traits: {"smithy.api#enumValue" => "PER_CONTACT"}))
    CreateApplicationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationNamespace, name: "Namespace", traits: {"smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateApplicationRequest.add_member(:application_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSourceConfig, name: "ApplicationSourceConfig", traits: {"smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:subscriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionList, name: "Subscriptions", traits: {"smithy.api#deprecated" => {"message" => "Subscriptions has been replaced with Permissions"}}))
    CreateApplicationRequest.add_member(:publications, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicationList, name: "Publications", traits: {"smithy.api#deprecated" => {"message" => "Publications has been replaced with Permissions"}}))
    CreateApplicationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateApplicationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateApplicationRequest.add_member(:permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionList, name: "Permissions"))
    CreateApplicationRequest.add_member(:is_service, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsService", traits: {"smithy.api#default" => false, "smithy.api#deprecated" => {"since" => "2025-12-01", "message" => "IsService has been deprecated in favor of ApplicationType"}}))
    CreateApplicationRequest.add_member(:initialization_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: InitializationTimeout, name: "InitializationTimeout"))
    CreateApplicationRequest.add_member(:application_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationConfig, name: "ApplicationConfig"))
    CreateApplicationRequest.add_member(:iframe_config, ::Smithy::Schema::Shapes::MemberShape.new(target: IframeConfig, name: "IframeConfig"))
    CreateApplicationRequest.add_member(:application_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationType, name: "ApplicationType"))
    CreateApplicationRequest.add_member(:auth_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthConfig, name: "AuthConfig"))
    CreateApplicationRequest.type = Types::CreateApplicationRequest
    CreateApplicationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    CreateApplicationResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "Id"))
    CreateApplicationResponse.type = Types::CreateApplicationResponse
    CreateDataIntegrationAssociationRequest.add_member(:data_integration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "DataIntegrationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataIntegrationAssociationRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientId, name: "ClientId"))
    CreateDataIntegrationAssociationRequest.add_member(:object_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectConfiguration, name: "ObjectConfiguration"))
    CreateDataIntegrationAssociationRequest.add_member(:destination_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationURI, name: "DestinationURI"))
    CreateDataIntegrationAssociationRequest.add_member(:client_association_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientAssociationMetadata, name: "ClientAssociationMetadata"))
    CreateDataIntegrationAssociationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDataIntegrationAssociationRequest.add_member(:execution_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionConfiguration, name: "ExecutionConfiguration"))
    CreateDataIntegrationAssociationRequest.type = Types::CreateDataIntegrationAssociationRequest
    CreateDataIntegrationAssociationResponse.add_member(:data_integration_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "DataIntegrationAssociationId"))
    CreateDataIntegrationAssociationResponse.add_member(:data_integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DataIntegrationArn"))
    CreateDataIntegrationAssociationResponse.type = Types::CreateDataIntegrationAssociationResponse
    CreateDataIntegrationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateDataIntegrationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateDataIntegrationRequest.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "KmsKey", traits: {"smithy.api#required" => {}}))
    CreateDataIntegrationRequest.add_member(:source_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceURI, name: "SourceURI"))
    CreateDataIntegrationRequest.add_member(:schedule_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleConfiguration, name: "ScheduleConfig"))
    CreateDataIntegrationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateDataIntegrationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDataIntegrationRequest.add_member(:file_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FileConfiguration, name: "FileConfiguration"))
    CreateDataIntegrationRequest.add_member(:object_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectConfiguration, name: "ObjectConfiguration"))
    CreateDataIntegrationRequest.type = Types::CreateDataIntegrationRequest
    CreateDataIntegrationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    CreateDataIntegrationResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "Id"))
    CreateDataIntegrationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    CreateDataIntegrationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateDataIntegrationResponse.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "KmsKey"))
    CreateDataIntegrationResponse.add_member(:source_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceURI, name: "SourceURI"))
    CreateDataIntegrationResponse.add_member(:schedule_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleConfiguration, name: "ScheduleConfiguration"))
    CreateDataIntegrationResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateDataIntegrationResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "ClientToken"))
    CreateDataIntegrationResponse.add_member(:file_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FileConfiguration, name: "FileConfiguration"))
    CreateDataIntegrationResponse.add_member(:object_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectConfiguration, name: "ObjectConfiguration"))
    CreateDataIntegrationResponse.type = Types::CreateDataIntegrationResponse
    CreateEventIntegrationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateEventIntegrationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateEventIntegrationRequest.add_member(:event_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: EventFilter, name: "EventFilter", traits: {"smithy.api#required" => {}}))
    CreateEventIntegrationRequest.add_member(:event_bridge_bus, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBridgeBus, name: "EventBridgeBus", traits: {"smithy.api#required" => {}}))
    CreateEventIntegrationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateEventIntegrationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateEventIntegrationRequest.type = Types::CreateEventIntegrationRequest
    CreateEventIntegrationResponse.add_member(:event_integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "EventIntegrationArn"))
    CreateEventIntegrationResponse.type = Types::CreateEventIntegrationResponse
    DataIntegrationAssociationSummary.add_member(:data_integration_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DataIntegrationAssociationArn"))
    DataIntegrationAssociationSummary.add_member(:data_integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DataIntegrationArn"))
    DataIntegrationAssociationSummary.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientId, name: "ClientId"))
    DataIntegrationAssociationSummary.add_member(:destination_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationURI, name: "DestinationURI"))
    DataIntegrationAssociationSummary.add_member(:last_execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LastExecutionStatus, name: "LastExecutionStatus"))
    DataIntegrationAssociationSummary.add_member(:execution_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionConfiguration, name: "ExecutionConfiguration"))
    DataIntegrationAssociationSummary.type = Types::DataIntegrationAssociationSummary
    DataIntegrationAssociationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationAssociationSummary, name: "member"))
    DataIntegrationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    DataIntegrationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    DataIntegrationSummary.add_member(:source_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceURI, name: "SourceURI"))
    DataIntegrationSummary.type = Types::DataIntegrationSummary
    DataIntegrationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationSummary, name: "member"))
    DeleteApplicationRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnOrUUID, name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApplicationRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Force", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "force"}))
    DeleteApplicationRequest.type = Types::DeleteApplicationRequest
    DeleteApplicationResponse.type = Types::DeleteApplicationResponse
    DeleteDataIntegrationRequest.add_member(:data_integration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "DataIntegrationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataIntegrationRequest.type = Types::DeleteDataIntegrationRequest
    DeleteDataIntegrationResponse.type = Types::DeleteDataIntegrationResponse
    DeleteEventIntegrationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEventIntegrationRequest.type = Types::DeleteEventIntegrationRequest
    DeleteEventIntegrationResponse.type = Types::DeleteEventIntegrationResponse
    DuplicateResourceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    DuplicateResourceException.type = Types::DuplicateResourceException
    EventFilter.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, name: "Source", traits: {"smithy.api#required" => {}}))
    EventFilter.type = Types::EventFilter
    EventIntegration.add_member(:event_integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "EventIntegrationArn"))
    EventIntegration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    EventIntegration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    EventIntegration.add_member(:event_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: EventFilter, name: "EventFilter"))
    EventIntegration.add_member(:event_bridge_bus, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBridgeBus, name: "EventBridgeBus"))
    EventIntegration.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    EventIntegration.type = Types::EventIntegration
    EventIntegrationAssociation.add_member(:event_integration_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "EventIntegrationAssociationArn"))
    EventIntegrationAssociation.add_member(:event_integration_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "EventIntegrationAssociationId"))
    EventIntegrationAssociation.add_member(:event_integration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "EventIntegrationName"))
    EventIntegrationAssociation.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientId, name: "ClientId"))
    EventIntegrationAssociation.add_member(:event_bridge_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBridgeRuleName, name: "EventBridgeRuleName"))
    EventIntegrationAssociation.add_member(:client_association_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientAssociationMetadata, name: "ClientAssociationMetadata"))
    EventIntegrationAssociation.type = Types::EventIntegrationAssociation
    EventIntegrationAssociationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventIntegrationAssociation, name: "member"))
    EventIntegrationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventIntegration, name: "member"))
    ExecutionConfiguration.add_member(:execution_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionMode, name: "ExecutionMode", traits: {"smithy.api#required" => {}}))
    ExecutionConfiguration.add_member(:on_demand_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandConfiguration, name: "OnDemandConfiguration"))
    ExecutionConfiguration.add_member(:schedule_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleConfiguration, name: "ScheduleConfiguration"))
    ExecutionConfiguration.type = Types::ExecutionConfiguration
    ExecutionMode.add_member(:on_demand, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_DEMAND", traits: {"smithy.api#enumValue" => "ON_DEMAND"}))
    ExecutionMode.add_member(:scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULED", traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    ExecutionStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ExecutionStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ExternalUrlConfig.add_member(:access_url, ::Smithy::Schema::Shapes::MemberShape.new(target: URL, name: "AccessUrl", traits: {"smithy.api#required" => {}}))
    ExternalUrlConfig.add_member(:approved_origins, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationApprovedOrigins, name: "ApprovedOrigins"))
    ExternalUrlConfig.type = Types::ExternalUrlConfig
    FieldsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Fields, name: "member"))
    FieldsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "key"))
    FieldsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldsList, name: "value"))
    FileConfiguration.add_member(:folders, ::Smithy::Schema::Shapes::MemberShape.new(target: FolderList, name: "Folders", traits: {"smithy.api#required" => {}}))
    FileConfiguration.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldsMap, name: "Filters"))
    FileConfiguration.type = Types::FileConfiguration
    FolderList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankLongString, name: "member"))
    GetApplicationRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnOrUUID, name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApplicationRequest.type = Types::GetApplicationRequest
    GetApplicationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    GetApplicationResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "Id"))
    GetApplicationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "Name"))
    GetApplicationResponse.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationNamespace, name: "Namespace"))
    GetApplicationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    GetApplicationResponse.add_member(:application_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSourceConfig, name: "ApplicationSourceConfig"))
    GetApplicationResponse.add_member(:subscriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionList, name: "Subscriptions", traits: {"smithy.api#deprecated" => {"message" => "Subscriptions has been replaced with Permissions"}}))
    GetApplicationResponse.add_member(:publications, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicationList, name: "Publications", traits: {"smithy.api#deprecated" => {"message" => "Publications has been replaced with Permissions"}}))
    GetApplicationResponse.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    GetApplicationResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    GetApplicationResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    GetApplicationResponse.add_member(:permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionList, name: "Permissions"))
    GetApplicationResponse.add_member(:is_service, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsService", traits: {"smithy.api#default" => false, "smithy.api#deprecated" => {"since" => "2025-12-01", "message" => "IsService has been deprecated in favor of ApplicationType"}}))
    GetApplicationResponse.add_member(:initialization_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: InitializationTimeout, name: "InitializationTimeout"))
    GetApplicationResponse.add_member(:application_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationConfig, name: "ApplicationConfig"))
    GetApplicationResponse.add_member(:iframe_config, ::Smithy::Schema::Shapes::MemberShape.new(target: IframeConfig, name: "IframeConfig"))
    GetApplicationResponse.add_member(:application_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationType, name: "ApplicationType"))
    GetApplicationResponse.add_member(:auth_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthConfig, name: "AuthConfig"))
    GetApplicationResponse.type = Types::GetApplicationResponse
    GetDataIntegrationRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataIntegrationRequest.type = Types::GetDataIntegrationRequest
    GetDataIntegrationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    GetDataIntegrationResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "Id"))
    GetDataIntegrationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    GetDataIntegrationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    GetDataIntegrationResponse.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "KmsKey"))
    GetDataIntegrationResponse.add_member(:source_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceURI, name: "SourceURI"))
    GetDataIntegrationResponse.add_member(:schedule_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleConfiguration, name: "ScheduleConfiguration"))
    GetDataIntegrationResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    GetDataIntegrationResponse.add_member(:file_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FileConfiguration, name: "FileConfiguration"))
    GetDataIntegrationResponse.add_member(:object_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectConfiguration, name: "ObjectConfiguration"))
    GetDataIntegrationResponse.type = Types::GetDataIntegrationResponse
    GetEventIntegrationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEventIntegrationRequest.type = Types::GetEventIntegrationRequest
    GetEventIntegrationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    GetEventIntegrationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    GetEventIntegrationResponse.add_member(:event_integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "EventIntegrationArn"))
    GetEventIntegrationResponse.add_member(:event_bridge_bus, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBridgeBus, name: "EventBridgeBus"))
    GetEventIntegrationResponse.add_member(:event_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: EventFilter, name: "EventFilter"))
    GetEventIntegrationResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    GetEventIntegrationResponse.type = Types::GetEventIntegrationResponse
    IframeConfig.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: IframePermissionList, name: "Allow"))
    IframeConfig.add_member(:sandbox, ::Smithy::Schema::Shapes::MemberShape.new(target: IframePermissionList, name: "Sandbox"))
    IframeConfig.type = Types::IframeConfig
    IframePermissionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IframePermission, name: "member"))
    InternalServiceError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    InternalServiceError.type = Types::InternalServiceError
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    InvalidRequestException.type = Types::InvalidRequestException
    LastExecutionStatus.add_member(:execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionStatus, name: "ExecutionStatus"))
    LastExecutionStatus.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "StatusMessage"))
    LastExecutionStatus.type = Types::LastExecutionStatus
    ListApplicationAssociationsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnOrUUID, name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListApplicationAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListApplicationAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListApplicationAssociationsRequest.type = Types::ListApplicationAssociationsRequest
    ListApplicationAssociationsResponse.add_member(:application_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationAssociationsList, name: "ApplicationAssociations"))
    ListApplicationAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListApplicationAssociationsResponse.type = Types::ListApplicationAssociationsResponse
    ListApplicationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListApplicationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListApplicationsRequest.add_member(:application_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationType, name: "ApplicationType", traits: {"smithy.api#httpQuery" => "applicationType"}))
    ListApplicationsRequest.type = Types::ListApplicationsRequest
    ListApplicationsResponse.add_member(:applications, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationsList, name: "Applications"))
    ListApplicationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListApplicationsResponse.type = Types::ListApplicationsResponse
    ListDataIntegrationAssociationsRequest.add_member(:data_integration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "DataIntegrationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataIntegrationAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDataIntegrationAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDataIntegrationAssociationsRequest.type = Types::ListDataIntegrationAssociationsRequest
    ListDataIntegrationAssociationsResponse.add_member(:data_integration_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationAssociationsList, name: "DataIntegrationAssociations"))
    ListDataIntegrationAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDataIntegrationAssociationsResponse.type = Types::ListDataIntegrationAssociationsResponse
    ListDataIntegrationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDataIntegrationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDataIntegrationsRequest.type = Types::ListDataIntegrationsRequest
    ListDataIntegrationsResponse.add_member(:data_integrations, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationsList, name: "DataIntegrations"))
    ListDataIntegrationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDataIntegrationsResponse.type = Types::ListDataIntegrationsResponse
    ListEventIntegrationAssociationsRequest.add_member(:event_integration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "EventIntegrationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListEventIntegrationAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListEventIntegrationAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListEventIntegrationAssociationsRequest.type = Types::ListEventIntegrationAssociationsRequest
    ListEventIntegrationAssociationsResponse.add_member(:event_integration_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: EventIntegrationAssociationsList, name: "EventIntegrationAssociations"))
    ListEventIntegrationAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEventIntegrationAssociationsResponse.type = Types::ListEventIntegrationAssociationsResponse
    ListEventIntegrationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListEventIntegrationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListEventIntegrationsRequest.type = Types::ListEventIntegrationsRequest
    ListEventIntegrationsResponse.add_member(:event_integrations, ::Smithy::Schema::Shapes::MemberShape.new(target: EventIntegrationsList, name: "EventIntegrations"))
    ListEventIntegrationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEventIntegrationsResponse.type = Types::ListEventIntegrationsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ObjectConfiguration.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "key"))
    ObjectConfiguration.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldsMap, name: "value"))
    OnDemandConfiguration.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "StartTime", traits: {"smithy.api#required" => {}}))
    OnDemandConfiguration.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "EndTime"))
    OnDemandConfiguration.type = Types::OnDemandConfiguration
    PermissionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Permission, name: "member"))
    Publication.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: EventName, name: "Event", traits: {"smithy.api#required" => {}}))
    Publication.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDefinitionSchema, name: "Schema", traits: {"smithy.api#required" => {}}))
    Publication.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    Publication.type = Types::Publication
    PublicationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Publication, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ResourceQuotaExceededException.type = Types::ResourceQuotaExceededException
    ScheduleConfiguration.add_member(:first_execution_from, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "FirstExecutionFrom"))
    ScheduleConfiguration.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, name: "Object"))
    ScheduleConfiguration.add_member(:schedule_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "ScheduleExpression", traits: {"smithy.api#required" => {}}))
    ScheduleConfiguration.type = Types::ScheduleConfiguration
    Subscription.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: EventName, name: "Event", traits: {"smithy.api#required" => {}}))
    Subscription.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    Subscription.type = Types::Subscription
    SubscriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Subscription, name: "member"))
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    UnsupportedOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    UnsupportedOperationException.type = Types::UnsupportedOperationException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateApplicationRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnOrUUID, name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApplicationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "Name"))
    UpdateApplicationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateApplicationRequest.add_member(:application_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSourceConfig, name: "ApplicationSourceConfig"))
    UpdateApplicationRequest.add_member(:subscriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionList, name: "Subscriptions", traits: {"smithy.api#deprecated" => {"message" => "Subscriptions has been replaced with Permissions"}}))
    UpdateApplicationRequest.add_member(:publications, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicationList, name: "Publications", traits: {"smithy.api#deprecated" => {"message" => "Publications has been replaced with Permissions"}}))
    UpdateApplicationRequest.add_member(:permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionList, name: "Permissions"))
    UpdateApplicationRequest.add_member(:is_service, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsService", traits: {"smithy.api#default" => nil, "smithy.api#deprecated" => {"since" => "2025-12-01", "message" => "IsService has been deprecated in favor of ApplicationType"}}))
    UpdateApplicationRequest.add_member(:initialization_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: InitializationTimeout, name: "InitializationTimeout"))
    UpdateApplicationRequest.add_member(:application_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationConfig, name: "ApplicationConfig"))
    UpdateApplicationRequest.add_member(:iframe_config, ::Smithy::Schema::Shapes::MemberShape.new(target: IframeConfig, name: "IframeConfig"))
    UpdateApplicationRequest.add_member(:application_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationType, name: "ApplicationType"))
    UpdateApplicationRequest.add_member(:auth_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthConfig, name: "AuthConfig"))
    UpdateApplicationRequest.type = Types::UpdateApplicationRequest
    UpdateApplicationResponse.type = Types::UpdateApplicationResponse
    UpdateDataIntegrationAssociationRequest.add_member(:data_integration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "DataIntegrationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataIntegrationAssociationRequest.add_member(:data_integration_association_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "DataIntegrationAssociationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataIntegrationAssociationRequest.add_member(:execution_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionConfiguration, name: "ExecutionConfiguration", traits: {"smithy.api#required" => {}}))
    UpdateDataIntegrationAssociationRequest.type = Types::UpdateDataIntegrationAssociationRequest
    UpdateDataIntegrationAssociationResponse.type = Types::UpdateDataIntegrationAssociationResponse
    UpdateDataIntegrationRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataIntegrationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    UpdateDataIntegrationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateDataIntegrationRequest.type = Types::UpdateDataIntegrationRequest
    UpdateDataIntegrationResponse.type = Types::UpdateDataIntegrationResponse
    UpdateEventIntegrationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEventIntegrationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateEventIntegrationRequest.type = Types::UpdateEventIntegrationRequest
    UpdateEventIntegrationResponse.type = Types::UpdateEventIntegrationResponse

    AmazonAppIntegrationService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.appintegrations#AmazonAppIntegrationService"
      service.name = "AmazonAppIntegrationService"
      service.version = "2020-07-29"
      service.traits = {"aws.api#service" => {"sdkId" => "AppIntegrations", "arnNamespace" => "app-integrations", "cloudFormationName" => "AppIntegrations", "cloudTrailEventSource" => "app-integrations.amazonaws.com", "endpointPrefix" => "app-integrations"}, "aws.auth#sigv4" => {"name" => "app-integrations"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon AppIntegrations Service", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://app-integrations-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://app-integrations-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://app-integrations.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://app-integrations.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:create_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = CreateApplicationRequest
        operation.output = CreateApplicationResponse
        operation.errors << AccessDeniedException
        operation.errors << DuplicateResourceException
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << ResourceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications", "code" => 200}}
      end)
      service.add_operation(:create_data_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#CreateDataIntegration"
        operation.name = "CreateDataIntegration"
        operation.input = CreateDataIntegrationRequest
        operation.output = CreateDataIntegrationResponse
        operation.errors << AccessDeniedException
        operation.errors << DuplicateResourceException
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << ResourceQuotaExceededException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/dataIntegrations", "code" => 200}}
      end)
      service.add_operation(:create_data_integration_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#CreateDataIntegrationAssociation"
        operation.name = "CreateDataIntegrationAssociation"
        operation.input = CreateDataIntegrationAssociationRequest
        operation.output = CreateDataIntegrationAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceQuotaExceededException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/dataIntegrations/{DataIntegrationIdentifier}/associations", "code" => 200}}
      end)
      service.add_operation(:create_event_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#CreateEventIntegration"
        operation.name = "CreateEventIntegration"
        operation.input = CreateEventIntegrationRequest
        operation.output = CreateEventIntegrationResponse
        operation.errors << AccessDeniedException
        operation.errors << DuplicateResourceException
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << ResourceQuotaExceededException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/eventIntegrations", "code" => 200}}
      end)
      service.add_operation(:delete_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = DeleteApplicationRequest
        operation.output = DeleteApplicationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{Arn}", "code" => 200}}
      end)
      service.add_operation(:delete_data_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#DeleteDataIntegration"
        operation.name = "DeleteDataIntegration"
        operation.input = DeleteDataIntegrationRequest
        operation.output = DeleteDataIntegrationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/dataIntegrations/{DataIntegrationIdentifier}", "code" => 200}}
      end)
      service.add_operation(:delete_event_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#DeleteEventIntegration"
        operation.name = "DeleteEventIntegration"
        operation.input = DeleteEventIntegrationRequest
        operation.output = DeleteEventIntegrationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/eventIntegrations/{Name}", "code" => 200}}
      end)
      service.add_operation(:get_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#GetApplication"
        operation.name = "GetApplication"
        operation.input = GetApplicationRequest
        operation.output = GetApplicationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{Arn}", "code" => 200}}
      end)
      service.add_operation(:get_data_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#GetDataIntegration"
        operation.name = "GetDataIntegration"
        operation.input = GetDataIntegrationRequest
        operation.output = GetDataIntegrationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/dataIntegrations/{Identifier}", "code" => 200}}
      end)
      service.add_operation(:get_event_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#GetEventIntegration"
        operation.name = "GetEventIntegration"
        operation.input = GetEventIntegrationRequest
        operation.output = GetEventIntegrationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/eventIntegrations/{Name}", "code" => 200}}
      end)
      service.add_operation(:list_application_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#ListApplicationAssociations"
        operation.name = "ListApplicationAssociations"
        operation.input = ListApplicationAssociationsRequest
        operation.output = ListApplicationAssociationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{ApplicationId}/associations", "code" => 200}}
        operation[:paginator] = Paginators::ListApplicationAssociations.new
      end)
      service.add_operation(:list_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#ListApplications"
        operation.name = "ListApplications"
        operation.input = ListApplicationsRequest
        operation.output = ListApplicationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications", "code" => 200}}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_data_integration_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#ListDataIntegrationAssociations"
        operation.name = "ListDataIntegrationAssociations"
        operation.input = ListDataIntegrationAssociationsRequest
        operation.output = ListDataIntegrationAssociationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/dataIntegrations/{DataIntegrationIdentifier}/associations", "code" => 200}}
        operation[:paginator] = Paginators::ListDataIntegrationAssociations.new
      end)
      service.add_operation(:list_data_integrations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#ListDataIntegrations"
        operation.name = "ListDataIntegrations"
        operation.input = ListDataIntegrationsRequest
        operation.output = ListDataIntegrationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/dataIntegrations", "code" => 200}}
        operation[:paginator] = Paginators::ListDataIntegrations.new
      end)
      service.add_operation(:list_event_integration_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#ListEventIntegrationAssociations"
        operation.name = "ListEventIntegrationAssociations"
        operation.input = ListEventIntegrationAssociationsRequest
        operation.output = ListEventIntegrationAssociationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/eventIntegrations/{EventIntegrationName}/associations", "code" => 200}}
        operation[:paginator] = Paginators::ListEventIntegrationAssociations.new
      end)
      service.add_operation(:list_event_integrations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#ListEventIntegrations"
        operation.name = "ListEventIntegrations"
        operation.input = ListEventIntegrationsRequest
        operation.output = ListEventIntegrationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/eventIntegrations", "code" => 200}}
        operation[:paginator] = Paginators::ListEventIntegrations.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = UpdateApplicationRequest
        operation.output = UpdateApplicationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/applications/{Arn}", "code" => 200}}
      end)
      service.add_operation(:update_data_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#UpdateDataIntegration"
        operation.name = "UpdateDataIntegration"
        operation.input = UpdateDataIntegrationRequest
        operation.output = UpdateDataIntegrationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/dataIntegrations/{Identifier}", "code" => 200}}
      end)
      service.add_operation(:update_data_integration_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#UpdateDataIntegrationAssociation"
        operation.name = "UpdateDataIntegrationAssociation"
        operation.input = UpdateDataIntegrationAssociationRequest
        operation.output = UpdateDataIntegrationAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/dataIntegrations/{DataIntegrationIdentifier}/associations/{DataIntegrationAssociationIdentifier}", "code" => 200}}
      end)
      service.add_operation(:update_event_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appintegrations#UpdateEventIntegration"
        operation.name = "UpdateEventIntegration"
        operation.input = UpdateEventIntegrationRequest
        operation.output = UpdateEventIntegrationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/eventIntegrations/{Name}", "code" => 200}}
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
