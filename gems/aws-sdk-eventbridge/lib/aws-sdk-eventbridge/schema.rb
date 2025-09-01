# frozen_string_literal: true

# This is generated code!

module Aws::EventBridge
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client"})
    AccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    Action = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#Action', name: 'Action', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^events:[a-zA-Z]+$"})
    ActivateEventSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ActivateEventSourceRequest', name: 'ActivateEventSourceRequest')
    ApiDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ApiDestination', name: 'ApiDestination')
    ApiDestinationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#ApiDestinationArn', name: 'ApiDestinationArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:aws([a-z]|\\-)*:events:([a-z]|\\d|\\-)*:([0-9]{12})?:api-destination\\/[\\.\\-_A-Za-z0-9]+\\/[\\-A-Za-z0-9]+$"})
    ApiDestinationDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#ApiDestinationDescription', name: 'ApiDestinationDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => ".*"})
    ApiDestinationHttpMethod = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eventbridge#ApiDestinationHttpMethod', name: 'ApiDestinationHttpMethod')
    ApiDestinationInvocationRateLimitPerSecond = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.eventbridge#ApiDestinationInvocationRateLimitPerSecond', name: 'ApiDestinationInvocationRateLimitPerSecond', traits: {"smithy.api#range" => {"min" => 1}})
    ApiDestinationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#ApiDestinationName', name: 'ApiDestinationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\.\\-_A-Za-z0-9]+$"})
    ApiDestinationResponseList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#ApiDestinationResponseList', name: 'ApiDestinationResponseList')
    ApiDestinationState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eventbridge#ApiDestinationState', name: 'ApiDestinationState')
    AppSyncParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#AppSyncParameters', name: 'AppSyncParameters')
    Archive = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#Archive', name: 'Archive')
    ArchiveArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#ArchiveArn', name: 'ArchiveArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:aws([a-z]|\\-)*:events:([a-z]|\\d|\\-)*:([0-9]{12})?:.+\\/.+$"})
    ArchiveDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#ArchiveDescription', name: 'ArchiveDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => ".*"})
    ArchiveName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#ArchiveName', name: 'ArchiveName', traits: {"smithy.api#length" => {"min" => 1, "max" => 48}, "smithy.api#pattern" => "^[\\.\\-_A-Za-z0-9]+$"})
    ArchiveResponseList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#ArchiveResponseList', name: 'ArchiveResponseList')
    ArchiveState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eventbridge#ArchiveState', name: 'ArchiveState')
    ArchiveStateReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#ArchiveStateReason', name: 'ArchiveStateReason', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => ".*"})
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}})
    AssignPublicIp = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eventbridge#AssignPublicIp', name: 'AssignPublicIp')
    AuthHeaderParameters = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#AuthHeaderParameters', name: 'AuthHeaderParameters', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[ \\t]*[^\\x00-\\x1F:\\x7F]+([ \\t]+[^\\x00-\\x1F:\\x7F]+)*[ \\t]*$"})
    AuthHeaderParametersSensitive = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#AuthHeaderParametersSensitive', name: 'AuthHeaderParametersSensitive', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[ \\t]*[^\\x00-\\x1F:\\x7F]+([ \\t]+[^\\x00-\\x1F:\\x7F]+)*[ \\t]*$", "smithy.api#sensitive" => {}})
    AwsVpcConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#AwsVpcConfiguration', name: 'AwsVpcConfiguration')
    BatchArrayProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#BatchArrayProperties', name: 'BatchArrayProperties')
    BatchParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#BatchParameters', name: 'BatchParameters')
    BatchRetryStrategy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#BatchRetryStrategy', name: 'BatchRetryStrategy')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.eventbridge#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    CancelReplayRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#CancelReplayRequest', name: 'CancelReplayRequest')
    CancelReplayResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#CancelReplayResponse', name: 'CancelReplayResponse')
    CapacityProvider = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#CapacityProvider', name: 'CapacityProvider', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    CapacityProviderStrategy = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#CapacityProviderStrategy', name: 'CapacityProviderStrategy', traits: {"smithy.api#length" => {"min" => 0, "max" => 6}})
    CapacityProviderStrategyItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#CapacityProviderStrategyItem', name: 'CapacityProviderStrategyItem')
    CapacityProviderStrategyItemBase = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.eventbridge#CapacityProviderStrategyItemBase', name: 'CapacityProviderStrategyItemBase', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100000}})
    CapacityProviderStrategyItemWeight = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.eventbridge#CapacityProviderStrategyItemWeight', name: 'CapacityProviderStrategyItemWeight', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1000}})
    ConcurrentModificationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ConcurrentModificationException', name: 'ConcurrentModificationException', traits: {"smithy.api#error" => "client"})
    Condition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#Condition', name: 'Condition')
    Connection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#Connection', name: 'Connection')
    ConnectionApiKeyAuthResponseParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ConnectionApiKeyAuthResponseParameters', name: 'ConnectionApiKeyAuthResponseParameters')
    ConnectionArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#ConnectionArn', name: 'ConnectionArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:aws([a-z]|\\-)*:events:([a-z]|\\d|\\-)*:([0-9]{12})?:connection\\/[\\.\\-_A-Za-z0-9]+\\/[\\-A-Za-z0-9]+$"})
    ConnectionAuthResponseParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ConnectionAuthResponseParameters', name: 'ConnectionAuthResponseParameters')
    ConnectionAuthorizationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eventbridge#ConnectionAuthorizationType', name: 'ConnectionAuthorizationType')
    ConnectionBasicAuthResponseParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ConnectionBasicAuthResponseParameters', name: 'ConnectionBasicAuthResponseParameters')
    ConnectionBodyParameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ConnectionBodyParameter', name: 'ConnectionBodyParameter')
    ConnectionBodyParametersList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#ConnectionBodyParametersList', name: 'ConnectionBodyParametersList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ConnectionDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#ConnectionDescription', name: 'ConnectionDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => ".*"})
    ConnectionHeaderParameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ConnectionHeaderParameter', name: 'ConnectionHeaderParameter')
    ConnectionHeaderParametersList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#ConnectionHeaderParametersList', name: 'ConnectionHeaderParametersList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ConnectionHttpParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ConnectionHttpParameters', name: 'ConnectionHttpParameters')
    ConnectionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#ConnectionName', name: 'ConnectionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\.\\-_A-Za-z0-9]+$"})
    ConnectionOAuthClientResponseParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ConnectionOAuthClientResponseParameters', name: 'ConnectionOAuthClientResponseParameters')
    ConnectionOAuthHttpMethod = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eventbridge#ConnectionOAuthHttpMethod', name: 'ConnectionOAuthHttpMethod')
    ConnectionOAuthResponseParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ConnectionOAuthResponseParameters', name: 'ConnectionOAuthResponseParameters')
    ConnectionQueryStringParameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ConnectionQueryStringParameter', name: 'ConnectionQueryStringParameter')
    ConnectionQueryStringParametersList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#ConnectionQueryStringParametersList', name: 'ConnectionQueryStringParametersList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ConnectionResponseList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#ConnectionResponseList', name: 'ConnectionResponseList')
    ConnectionState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eventbridge#ConnectionState', name: 'ConnectionState')
    ConnectionStateReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#ConnectionStateReason', name: 'ConnectionStateReason', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => ".*"})
    ConnectivityResourceConfigurationArn = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ConnectivityResourceConfigurationArn', name: 'ConnectivityResourceConfigurationArn')
    ConnectivityResourceParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ConnectivityResourceParameters', name: 'ConnectivityResourceParameters')
    CreateApiDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#CreateApiDestinationRequest', name: 'CreateApiDestinationRequest')
    CreateApiDestinationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#CreateApiDestinationResponse', name: 'CreateApiDestinationResponse')
    CreateArchiveRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#CreateArchiveRequest', name: 'CreateArchiveRequest')
    CreateArchiveResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#CreateArchiveResponse', name: 'CreateArchiveResponse')
    CreateConnectionApiKeyAuthRequestParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#CreateConnectionApiKeyAuthRequestParameters', name: 'CreateConnectionApiKeyAuthRequestParameters')
    CreateConnectionAuthRequestParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#CreateConnectionAuthRequestParameters', name: 'CreateConnectionAuthRequestParameters')
    CreateConnectionBasicAuthRequestParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#CreateConnectionBasicAuthRequestParameters', name: 'CreateConnectionBasicAuthRequestParameters')
    CreateConnectionOAuthClientRequestParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#CreateConnectionOAuthClientRequestParameters', name: 'CreateConnectionOAuthClientRequestParameters')
    CreateConnectionOAuthRequestParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#CreateConnectionOAuthRequestParameters', name: 'CreateConnectionOAuthRequestParameters')
    CreateConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#CreateConnectionRequest', name: 'CreateConnectionRequest')
    CreateConnectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#CreateConnectionResponse', name: 'CreateConnectionResponse')
    CreateEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#CreateEndpointRequest', name: 'CreateEndpointRequest')
    CreateEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#CreateEndpointResponse', name: 'CreateEndpointResponse')
    CreateEventBusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#CreateEventBusRequest', name: 'CreateEventBusRequest')
    CreateEventBusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#CreateEventBusResponse', name: 'CreateEventBusResponse')
    CreatePartnerEventSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#CreatePartnerEventSourceRequest', name: 'CreatePartnerEventSourceRequest')
    CreatePartnerEventSourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#CreatePartnerEventSourceResponse', name: 'CreatePartnerEventSourceResponse')
    CreatedBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#CreatedBy', name: 'CreatedBy', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    Database = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#Database', name: 'Database', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    DbUser = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#DbUser', name: 'DbUser', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    DeactivateEventSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DeactivateEventSourceRequest', name: 'DeactivateEventSourceRequest')
    DeadLetterConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DeadLetterConfig', name: 'DeadLetterConfig')
    DeauthorizeConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DeauthorizeConnectionRequest', name: 'DeauthorizeConnectionRequest')
    DeauthorizeConnectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DeauthorizeConnectionResponse', name: 'DeauthorizeConnectionResponse')
    DeleteApiDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DeleteApiDestinationRequest', name: 'DeleteApiDestinationRequest')
    DeleteApiDestinationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DeleteApiDestinationResponse', name: 'DeleteApiDestinationResponse')
    DeleteArchiveRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DeleteArchiveRequest', name: 'DeleteArchiveRequest')
    DeleteArchiveResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DeleteArchiveResponse', name: 'DeleteArchiveResponse')
    DeleteConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DeleteConnectionRequest', name: 'DeleteConnectionRequest')
    DeleteConnectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DeleteConnectionResponse', name: 'DeleteConnectionResponse')
    DeleteEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DeleteEndpointRequest', name: 'DeleteEndpointRequest')
    DeleteEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DeleteEndpointResponse', name: 'DeleteEndpointResponse')
    DeleteEventBusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DeleteEventBusRequest', name: 'DeleteEventBusRequest')
    DeletePartnerEventSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DeletePartnerEventSourceRequest', name: 'DeletePartnerEventSourceRequest')
    DeleteRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DeleteRuleRequest', name: 'DeleteRuleRequest')
    DescribeApiDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DescribeApiDestinationRequest', name: 'DescribeApiDestinationRequest')
    DescribeApiDestinationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DescribeApiDestinationResponse', name: 'DescribeApiDestinationResponse')
    DescribeArchiveRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DescribeArchiveRequest', name: 'DescribeArchiveRequest')
    DescribeArchiveResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DescribeArchiveResponse', name: 'DescribeArchiveResponse')
    DescribeConnectionConnectivityParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DescribeConnectionConnectivityParameters', name: 'DescribeConnectionConnectivityParameters')
    DescribeConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DescribeConnectionRequest', name: 'DescribeConnectionRequest')
    DescribeConnectionResourceParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DescribeConnectionResourceParameters', name: 'DescribeConnectionResourceParameters')
    DescribeConnectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DescribeConnectionResponse', name: 'DescribeConnectionResponse')
    DescribeEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DescribeEndpointRequest', name: 'DescribeEndpointRequest')
    DescribeEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DescribeEndpointResponse', name: 'DescribeEndpointResponse')
    DescribeEventBusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DescribeEventBusRequest', name: 'DescribeEventBusRequest')
    DescribeEventBusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DescribeEventBusResponse', name: 'DescribeEventBusResponse')
    DescribeEventSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DescribeEventSourceRequest', name: 'DescribeEventSourceRequest')
    DescribeEventSourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DescribeEventSourceResponse', name: 'DescribeEventSourceResponse')
    DescribePartnerEventSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DescribePartnerEventSourceRequest', name: 'DescribePartnerEventSourceRequest')
    DescribePartnerEventSourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DescribePartnerEventSourceResponse', name: 'DescribePartnerEventSourceResponse')
    DescribeReplayRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DescribeReplayRequest', name: 'DescribeReplayRequest')
    DescribeReplayResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DescribeReplayResponse', name: 'DescribeReplayResponse')
    DescribeRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DescribeRuleRequest', name: 'DescribeRuleRequest')
    DescribeRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DescribeRuleResponse', name: 'DescribeRuleResponse')
    DisableRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#DisableRuleRequest', name: 'DisableRuleRequest')
    EcsParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#EcsParameters', name: 'EcsParameters')
    EnableRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#EnableRuleRequest', name: 'EnableRuleRequest')
    Endpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#Endpoint', name: 'Endpoint')
    EndpointArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#EndpointArn', name: 'EndpointArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:aws([a-z]|\\-)*:events:([a-z]|\\d|\\-)*:([0-9]{12})?:endpoint\\/[/\\.\\-_A-Za-z0-9]+$"})
    EndpointDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#EndpointDescription', name: 'EndpointDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => ".*"})
    EndpointEventBus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#EndpointEventBus', name: 'EndpointEventBus')
    EndpointEventBusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#EndpointEventBusList', name: 'EndpointEventBusList', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    EndpointId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#EndpointId', name: 'EndpointId', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[A-Za-z0-9\\-]+[\\.][A-Za-z0-9\\-]+$"})
    EndpointList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#EndpointList', name: 'EndpointList')
    EndpointName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#EndpointName', name: 'EndpointName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\.\\-_A-Za-z0-9]+$"})
    EndpointState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eventbridge#EndpointState', name: 'EndpointState')
    EndpointStateReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#EndpointStateReason', name: 'EndpointStateReason', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => ".*"})
    EndpointUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#EndpointUrl', name: 'EndpointUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^(https://)?[\\.\\-a-z0-9]+$"})
    ErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#ErrorCode', name: 'ErrorCode')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#ErrorMessage', name: 'ErrorMessage')
    EventBus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#EventBus', name: 'EventBus')
    EventBusArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#EventBusArn', name: 'EventBusArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:aws([a-z]|\\-)*:events:([a-z]|\\d|\\-)*:([0-9]{12})?:.+\\/.+$"})
    EventBusDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#EventBusDescription', name: 'EventBusDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}})
    EventBusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#EventBusList', name: 'EventBusList')
    EventBusName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#EventBusName', name: 'EventBusName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[/\\.\\-_A-Za-z0-9]+$"})
    EventBusNameOrArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#EventBusNameOrArn', name: 'EventBusNameOrArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^(arn:aws[\\w-]*:events:[a-z]+-[a-z]+-[\\w-]+:[0-9]{12}:event-bus\\/)?[/\\.\\-_A-Za-z0-9]+$"})
    EventId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#EventId', name: 'EventId', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    EventPattern = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#EventPattern', name: 'EventPattern', traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}})
    EventResource = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#EventResource', name: 'EventResource', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    EventResourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#EventResourceList', name: 'EventResourceList')
    EventSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#EventSource', name: 'EventSource')
    EventSourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#EventSourceList', name: 'EventSourceList')
    EventSourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#EventSourceName', name: 'EventSourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^aws\\.partner(/[\\.\\-_A-Za-z0-9]+){2,}$"})
    EventSourceNamePrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#EventSourceNamePrefix', name: 'EventSourceNamePrefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[/\\.\\-_A-Za-z0-9]+$"})
    EventSourceState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eventbridge#EventSourceState', name: 'EventSourceState')
    EventTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.eventbridge#EventTime', name: 'EventTime')
    FailoverConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#FailoverConfig', name: 'FailoverConfig')
    GraphQLOperation = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#GraphQLOperation', name: 'GraphQLOperation', traits: {"smithy.api#length" => {"min" => 1, "max" => 1048576}, "smithy.api#sensitive" => {}})
    HeaderKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#HeaderKey', name: 'HeaderKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[!\#$%&'*+-.^_`|~0-9a-zA-Z]+$"})
    HeaderParametersMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.eventbridge#HeaderParametersMap', name: 'HeaderParametersMap')
    HeaderValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#HeaderValue', name: 'HeaderValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[ \\t]*[\\x20-\\x7E]+([ \\t]+[\\x20-\\x7E]+)*[ \\t]*$"})
    HeaderValueSensitive = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#HeaderValueSensitive', name: 'HeaderValueSensitive', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[ \\t]*[\\x20-\\x7E]+([ \\t]+[\\x20-\\x7E]+)*[ \\t]*$", "smithy.api#sensitive" => {}})
    HealthCheck = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#HealthCheck', name: 'HealthCheck', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:aws([a-z]|\\-)*:route53:::healthcheck/[\\-a-z0-9]+$"})
    HomeRegion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#HomeRegion', name: 'HomeRegion', traits: {"smithy.api#length" => {"min" => 9, "max" => 20}, "smithy.api#pattern" => "^[\\-a-z0-9]+$"})
    HttpParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#HttpParameters', name: 'HttpParameters')
    HttpsEndpoint = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#HttpsEndpoint', name: 'HttpsEndpoint', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^((%[0-9A-Fa-f]{2}|[-()_.!~*';/?:@\\x26=+$,A-Za-z0-9])+)([).!';/?:,])?$"})
    IamRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#IamRoleArn', name: 'IamRoleArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^arn:aws[a-z-]*:iam::\\d{12}:role\\/[\\w+=,.@/-]+$"})
    IllegalStatusException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#IllegalStatusException', name: 'IllegalStatusException', traits: {"smithy.api#error" => "client"})
    IncludeDetail = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eventbridge#IncludeDetail', name: 'IncludeDetail')
    InputTransformer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#InputTransformer', name: 'InputTransformer')
    InputTransformerPathKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#InputTransformerPathKey', name: 'InputTransformerPathKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9\\_\\-]+$"})
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.eventbridge#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    InternalException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#InternalException', name: 'InternalException', traits: {"smithy.api#error" => "server"})
    InvalidEventPatternException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#InvalidEventPatternException', name: 'InvalidEventPatternException', traits: {"smithy.api#error" => "client"})
    InvalidStateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#InvalidStateException', name: 'InvalidStateException', traits: {"smithy.api#error" => "client"})
    KinesisParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#KinesisParameters', name: 'KinesisParameters')
    KmsKeyIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#KmsKeyIdentifier', name: 'KmsKeyIdentifier', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-/:]*$"})
    LaunchType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eventbridge#LaunchType', name: 'LaunchType')
    Level = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eventbridge#Level', name: 'Level')
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client"})
    LimitMax100 = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.eventbridge#LimitMax100', name: 'LimitMax100', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    LimitMin1 = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.eventbridge#LimitMin1', name: 'LimitMin1', traits: {"smithy.api#range" => {"min" => 1}})
    ListApiDestinationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ListApiDestinationsRequest', name: 'ListApiDestinationsRequest')
    ListApiDestinationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ListApiDestinationsResponse', name: 'ListApiDestinationsResponse')
    ListArchivesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ListArchivesRequest', name: 'ListArchivesRequest')
    ListArchivesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ListArchivesResponse', name: 'ListArchivesResponse')
    ListConnectionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ListConnectionsRequest', name: 'ListConnectionsRequest')
    ListConnectionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ListConnectionsResponse', name: 'ListConnectionsResponse')
    ListEndpointsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ListEndpointsRequest', name: 'ListEndpointsRequest')
    ListEndpointsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ListEndpointsResponse', name: 'ListEndpointsResponse')
    ListEventBusesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ListEventBusesRequest', name: 'ListEventBusesRequest')
    ListEventBusesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ListEventBusesResponse', name: 'ListEventBusesResponse')
    ListEventSourcesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ListEventSourcesRequest', name: 'ListEventSourcesRequest')
    ListEventSourcesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ListEventSourcesResponse', name: 'ListEventSourcesResponse')
    ListPartnerEventSourceAccountsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ListPartnerEventSourceAccountsRequest', name: 'ListPartnerEventSourceAccountsRequest')
    ListPartnerEventSourceAccountsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ListPartnerEventSourceAccountsResponse', name: 'ListPartnerEventSourceAccountsResponse')
    ListPartnerEventSourcesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ListPartnerEventSourcesRequest', name: 'ListPartnerEventSourcesRequest')
    ListPartnerEventSourcesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ListPartnerEventSourcesResponse', name: 'ListPartnerEventSourcesResponse')
    ListReplaysRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ListReplaysRequest', name: 'ListReplaysRequest')
    ListReplaysResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ListReplaysResponse', name: 'ListReplaysResponse')
    ListRuleNamesByTargetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ListRuleNamesByTargetRequest', name: 'ListRuleNamesByTargetRequest')
    ListRuleNamesByTargetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ListRuleNamesByTargetResponse', name: 'ListRuleNamesByTargetResponse')
    ListRulesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ListRulesRequest', name: 'ListRulesRequest')
    ListRulesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ListRulesResponse', name: 'ListRulesResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTargetsByRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ListTargetsByRuleRequest', name: 'ListTargetsByRuleRequest')
    ListTargetsByRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ListTargetsByRuleResponse', name: 'ListTargetsByRuleResponse')
    LogConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#LogConfig', name: 'LogConfig')
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.eventbridge#Long', name: 'Long', traits: {"smithy.api#default" => 0})
    ManagedBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#ManagedBy', name: 'ManagedBy', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ManagedRuleException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ManagedRuleException', name: 'ManagedRuleException', traits: {"smithy.api#error" => "client"})
    MaximumEventAgeInSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.eventbridge#MaximumEventAgeInSeconds', name: 'MaximumEventAgeInSeconds', traits: {"smithy.api#range" => {"min" => 60, "max" => 86400}})
    MaximumRetryAttempts = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.eventbridge#MaximumRetryAttempts', name: 'MaximumRetryAttempts', traits: {"smithy.api#range" => {"min" => 0, "max" => 185}})
    MessageGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#MessageGroupId', name: 'MessageGroupId', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    NetworkConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#NetworkConfiguration', name: 'NetworkConfiguration')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    NonPartnerEventBusArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#NonPartnerEventBusArn', name: 'NonPartnerEventBusArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^arn:aws[a-z-]*:events:[a-z]+-[a-z-]+-\\d+:\\d{12}:event-bus/[\\w.-]+$"})
    NonPartnerEventBusName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#NonPartnerEventBusName', name: 'NonPartnerEventBusName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\.\\-_A-Za-z0-9]+$"})
    NonPartnerEventBusNameOrArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#NonPartnerEventBusNameOrArn', name: 'NonPartnerEventBusNameOrArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^(arn:aws[\\w-]*:events:[a-z]+-[a-z]+-[\\w-]+:[0-9]{12}:event-bus\\/)?[\\.\\-_A-Za-z0-9]+$"})
    OperationDisabledException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#OperationDisabledException', name: 'OperationDisabledException', traits: {"smithy.api#error" => "client"})
    PartnerEventSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#PartnerEventSource', name: 'PartnerEventSource')
    PartnerEventSourceAccount = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#PartnerEventSourceAccount', name: 'PartnerEventSourceAccount')
    PartnerEventSourceAccountList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#PartnerEventSourceAccountList', name: 'PartnerEventSourceAccountList')
    PartnerEventSourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#PartnerEventSourceList', name: 'PartnerEventSourceList')
    PartnerEventSourceNamePrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#PartnerEventSourceNamePrefix', name: 'PartnerEventSourceNamePrefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^aws\\.partner/[\\.\\-_A-Za-z0-9]+/[/\\.\\-_A-Za-z0-9]*$"})
    PathParameter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#PathParameter', name: 'PathParameter', traits: {"smithy.api#pattern" => "^(?!\\s*$).+$"})
    PathParameterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#PathParameterList', name: 'PathParameterList')
    PlacementConstraint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#PlacementConstraint', name: 'PlacementConstraint')
    PlacementConstraintExpression = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#PlacementConstraintExpression', name: 'PlacementConstraintExpression', traits: {"smithy.api#length" => {"min" => 0, "max" => 2000}})
    PlacementConstraintType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eventbridge#PlacementConstraintType', name: 'PlacementConstraintType')
    PlacementConstraints = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#PlacementConstraints', name: 'PlacementConstraints', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    PlacementStrategies = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#PlacementStrategies', name: 'PlacementStrategies', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    PlacementStrategy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#PlacementStrategy', name: 'PlacementStrategy')
    PlacementStrategyField = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#PlacementStrategyField', name: 'PlacementStrategyField', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    PlacementStrategyType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eventbridge#PlacementStrategyType', name: 'PlacementStrategyType')
    PolicyLengthExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#PolicyLengthExceededException', name: 'PolicyLengthExceededException', traits: {"smithy.api#error" => "client"})
    Primary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#Primary', name: 'Primary')
    Principal = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#Principal', name: 'Principal', traits: {"smithy.api#length" => {"min" => 1, "max" => 12}, "smithy.api#pattern" => "^(\\d{12}|\\*)$"})
    PropagateTags = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eventbridge#PropagateTags', name: 'PropagateTags')
    PutEventsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#PutEventsRequest', name: 'PutEventsRequest')
    PutEventsRequestEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#PutEventsRequestEntry', name: 'PutEventsRequestEntry')
    PutEventsRequestEntryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#PutEventsRequestEntryList', name: 'PutEventsRequestEntryList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    PutEventsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#PutEventsResponse', name: 'PutEventsResponse')
    PutEventsResultEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#PutEventsResultEntry', name: 'PutEventsResultEntry')
    PutEventsResultEntryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#PutEventsResultEntryList', name: 'PutEventsResultEntryList')
    PutPartnerEventsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#PutPartnerEventsRequest', name: 'PutPartnerEventsRequest')
    PutPartnerEventsRequestEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#PutPartnerEventsRequestEntry', name: 'PutPartnerEventsRequestEntry')
    PutPartnerEventsRequestEntryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#PutPartnerEventsRequestEntryList', name: 'PutPartnerEventsRequestEntryList', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    PutPartnerEventsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#PutPartnerEventsResponse', name: 'PutPartnerEventsResponse')
    PutPartnerEventsResultEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#PutPartnerEventsResultEntry', name: 'PutPartnerEventsResultEntry')
    PutPartnerEventsResultEntryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#PutPartnerEventsResultEntryList', name: 'PutPartnerEventsResultEntryList')
    PutPermissionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#PutPermissionRequest', name: 'PutPermissionRequest')
    PutRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#PutRuleRequest', name: 'PutRuleRequest')
    PutRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#PutRuleResponse', name: 'PutRuleResponse')
    PutTargetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#PutTargetsRequest', name: 'PutTargetsRequest')
    PutTargetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#PutTargetsResponse', name: 'PutTargetsResponse')
    PutTargetsResultEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#PutTargetsResultEntry', name: 'PutTargetsResultEntry')
    PutTargetsResultEntryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#PutTargetsResultEntryList', name: 'PutTargetsResultEntryList')
    QueryStringKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#QueryStringKey', name: 'QueryStringKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[^\\x00-\\x1F\\x7F]+$"})
    QueryStringParametersMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.eventbridge#QueryStringParametersMap', name: 'QueryStringParametersMap')
    QueryStringValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#QueryStringValue', name: 'QueryStringValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[^\\x00-\\x09\\x0B\\x0C\\x0E-\\x1F\\x7F]+$"})
    QueryStringValueSensitive = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#QueryStringValueSensitive', name: 'QueryStringValueSensitive', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[^\\x00-\\x09\\x0B\\x0C\\x0E-\\x1F\\x7F]+$", "smithy.api#sensitive" => {}})
    RedshiftDataParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#RedshiftDataParameters', name: 'RedshiftDataParameters')
    RedshiftSecretManagerArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#RedshiftSecretManagerArn', name: 'RedshiftSecretManagerArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^(^arn:aws([a-z]|\\-)*:secretsmanager:[a-z0-9-.]+:.*)|(\\$(\\.[\\w_-]+(\\[(\\d+|\\*)\\])*)*)$"})
    ReferenceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#ReferenceId', name: 'ReferenceId', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    RemovePermissionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#RemovePermissionRequest', name: 'RemovePermissionRequest')
    RemoveTargetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#RemoveTargetsRequest', name: 'RemoveTargetsRequest')
    RemoveTargetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#RemoveTargetsResponse', name: 'RemoveTargetsResponse')
    RemoveTargetsResultEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#RemoveTargetsResultEntry', name: 'RemoveTargetsResultEntry')
    RemoveTargetsResultEntryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#RemoveTargetsResultEntryList', name: 'RemoveTargetsResultEntryList')
    Replay = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#Replay', name: 'Replay')
    ReplayArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#ReplayArn', name: 'ReplayArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:aws([a-z]|\\-)*:events:([a-z]|\\d|\\-)*:([0-9]{12})?:.+\\/[\\.\\-_A-Za-z0-9]+$"})
    ReplayDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#ReplayDescription', name: 'ReplayDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => ".*"})
    ReplayDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ReplayDestination', name: 'ReplayDestination')
    ReplayDestinationFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#ReplayDestinationFilters', name: 'ReplayDestinationFilters')
    ReplayList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#ReplayList', name: 'ReplayList')
    ReplayName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#ReplayName', name: 'ReplayName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\.\\-_A-Za-z0-9]+$"})
    ReplayState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eventbridge#ReplayState', name: 'ReplayState')
    ReplayStateReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#ReplayStateReason', name: 'ReplayStateReason', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => ".*"})
    ReplicationConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ReplicationConfig', name: 'ReplicationConfig')
    ReplicationState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eventbridge#ReplicationState', name: 'ReplicationState')
    ResourceAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ResourceAlreadyExistsException', name: 'ResourceAlreadyExistsException', traits: {"smithy.api#error" => "client"})
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}})
    ResourceAssociationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#ResourceAssociationArn', name: 'ResourceAssociationArn', traits: {"smithy.api#length" => {"min" => 17, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9\\\\-]+:vpc-lattice:[a-zA-Z0-9\\\\-]+:\\\\d{12}:servicenetworkresourceassociation/snra-[0-9a-z]{17}$"})
    ResourceConfigurationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#ResourceConfigurationArn', name: 'ResourceConfigurationArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^(?:^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:resourceconfiguration/rcfg-[0-9a-z]{17}$|^$)$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client"})
    RetentionDays = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.eventbridge#RetentionDays', name: 'RetentionDays', traits: {"smithy.api#range" => {"min" => 0}})
    RetryPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#RetryPolicy', name: 'RetryPolicy')
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}})
    Route = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#Route', name: 'Route', traits: {"smithy.api#length" => {"min" => 9, "max" => 20}, "smithy.api#pattern" => "^[\\-a-z0-9]+$"})
    RoutingConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#RoutingConfig', name: 'RoutingConfig')
    Rule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#Rule', name: 'Rule')
    RuleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#RuleArn', name: 'RuleArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}})
    RuleDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#RuleDescription', name: 'RuleDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}})
    RuleName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#RuleName', name: 'RuleName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\.\\-_A-Za-z0-9]+$"})
    RuleNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#RuleNameList', name: 'RuleNameList')
    RuleResponseList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#RuleResponseList', name: 'RuleResponseList')
    RuleState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eventbridge#RuleState', name: 'RuleState')
    RunCommandParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#RunCommandParameters', name: 'RunCommandParameters')
    RunCommandTarget = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#RunCommandTarget', name: 'RunCommandTarget')
    RunCommandTargetKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#RunCommandTargetKey', name: 'RunCommandTargetKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$"})
    RunCommandTargetValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#RunCommandTargetValue', name: 'RunCommandTargetValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    RunCommandTargetValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#RunCommandTargetValues', name: 'RunCommandTargetValues', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    RunCommandTargets = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#RunCommandTargets', name: 'RunCommandTargets', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    SageMakerPipelineParameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#SageMakerPipelineParameter', name: 'SageMakerPipelineParameter')
    SageMakerPipelineParameterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#SageMakerPipelineParameterList', name: 'SageMakerPipelineParameterList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    SageMakerPipelineParameterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#SageMakerPipelineParameterName', name: 'SageMakerPipelineParameterName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    SageMakerPipelineParameterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#SageMakerPipelineParameterValue', name: 'SageMakerPipelineParameterValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    SageMakerPipelineParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#SageMakerPipelineParameters', name: 'SageMakerPipelineParameters')
    ScheduleExpression = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#ScheduleExpression', name: 'ScheduleExpression', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Secondary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#Secondary', name: 'Secondary')
    SecretsManagerSecretArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#SecretsManagerSecretArn', name: 'SecretsManagerSecretArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws([a-z]|\\-)*:secretsmanager:([a-z]|\\d|\\-)*:([0-9]{12})?:secret:[\\/_+=\\.@\\-A-Za-z0-9]+$"})
    SensitiveString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#SensitiveString', name: 'SensitiveString', traits: {"smithy.api#sensitive" => {}})
    Sql = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#Sql', name: 'Sql', traits: {"smithy.api#length" => {"min" => 1, "max" => 100000}, "smithy.api#sensitive" => {}})
    Sqls = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#Sqls', name: 'Sqls', traits: {"smithy.api#length" => {"min" => 0, "max" => 40}, "smithy.api#sensitive" => {}})
    SqsParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#SqsParameters', name: 'SqsParameters')
    StartReplayRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#StartReplayRequest', name: 'StartReplayRequest')
    StartReplayResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#StartReplayResponse', name: 'StartReplayResponse')
    StatementId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#StatementId', name: 'StatementId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    StatementName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#StatementName', name: 'StatementName', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#String', name: 'String')
    StringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#StringList', name: 'StringList')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#TagKeyList', name: 'TagKeyList')
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#TagList', name: 'TagList')
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Target = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#Target', name: 'Target')
    TargetArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#TargetArn', name: 'TargetArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}})
    TargetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#TargetId', name: 'TargetId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\.\\-_A-Za-z0-9]+$"})
    TargetIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#TargetIdList', name: 'TargetIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    TargetInput = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#TargetInput', name: 'TargetInput', traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}})
    TargetInputPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#TargetInputPath', name: 'TargetInputPath', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eventbridge#TargetList', name: 'TargetList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    TargetPartitionKeyPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#TargetPartitionKeyPath', name: 'TargetPartitionKeyPath', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TestEventPatternRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#TestEventPatternRequest', name: 'TestEventPatternRequest')
    TestEventPatternResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#TestEventPatternResponse', name: 'TestEventPatternResponse')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client"})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.eventbridge#Timestamp', name: 'Timestamp')
    TraceHeader = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#TraceHeader', name: 'TraceHeader', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    TransformerInput = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eventbridge#TransformerInput', name: 'TransformerInput', traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}})
    TransformerPaths = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.eventbridge#TransformerPaths', name: 'TransformerPaths', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateApiDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#UpdateApiDestinationRequest', name: 'UpdateApiDestinationRequest')
    UpdateApiDestinationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#UpdateApiDestinationResponse', name: 'UpdateApiDestinationResponse')
    UpdateArchiveRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#UpdateArchiveRequest', name: 'UpdateArchiveRequest')
    UpdateArchiveResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#UpdateArchiveResponse', name: 'UpdateArchiveResponse')
    UpdateConnectionApiKeyAuthRequestParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#UpdateConnectionApiKeyAuthRequestParameters', name: 'UpdateConnectionApiKeyAuthRequestParameters')
    UpdateConnectionAuthRequestParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#UpdateConnectionAuthRequestParameters', name: 'UpdateConnectionAuthRequestParameters')
    UpdateConnectionBasicAuthRequestParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#UpdateConnectionBasicAuthRequestParameters', name: 'UpdateConnectionBasicAuthRequestParameters')
    UpdateConnectionOAuthClientRequestParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#UpdateConnectionOAuthClientRequestParameters', name: 'UpdateConnectionOAuthClientRequestParameters')
    UpdateConnectionOAuthRequestParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#UpdateConnectionOAuthRequestParameters', name: 'UpdateConnectionOAuthRequestParameters')
    UpdateConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#UpdateConnectionRequest', name: 'UpdateConnectionRequest')
    UpdateConnectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#UpdateConnectionResponse', name: 'UpdateConnectionResponse')
    UpdateEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#UpdateEndpointRequest', name: 'UpdateEndpointRequest')
    UpdateEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#UpdateEndpointResponse', name: 'UpdateEndpointResponse')
    UpdateEventBusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#UpdateEventBusRequest', name: 'UpdateEventBusRequest')
    UpdateEventBusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eventbridge#UpdateEventBusResponse', name: 'UpdateEventBusResponse')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    ActivateEventSourceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the partner event source to activate.</p>", "smithy.api#required" => {}}))
    ActivateEventSourceRequest.type = Types::ActivateEventSourceRequest
    ApiDestination.add_member(:api_destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDestinationArn, location_name: 'ApiDestinationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the API destination.</p>"}))
    ApiDestination.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDestinationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the API destination.</p>"}))
    ApiDestination.add_member(:api_destination_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDestinationState, location_name: 'ApiDestinationState', traits: {"smithy.api#documentation" => "<p>The state of the API destination.</p>"}))
    ApiDestination.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: 'ConnectionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the connection specified for the API destination.</p>"}))
    ApiDestination.add_member(:invocation_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpsEndpoint, location_name: 'InvocationEndpoint', traits: {"smithy.api#documentation" => "<p>The URL to the endpoint for the API destination.</p>"}))
    ApiDestination.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDestinationHttpMethod, location_name: 'HttpMethod', traits: {"smithy.api#documentation" => "<p>The method to use to connect to the HTTP endpoint.</p>"}))
    ApiDestination.add_member(:invocation_rate_limit_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDestinationInvocationRateLimitPerSecond, location_name: 'InvocationRateLimitPerSecond', traits: {"smithy.api#documentation" => "<p>The maximum number of invocations per second to send to the HTTP endpoint.</p>"}))
    ApiDestination.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the API destination was created.</p>"}))
    ApiDestination.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the API destination was last modified.</p>"}))
    ApiDestination.type = Types::ApiDestination
    ApiDestinationHttpMethod.add_member(:post, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POST', traits: {"smithy.api#enumValue" => "POST"}))
    ApiDestinationHttpMethod.add_member(:get, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GET', traits: {"smithy.api#enumValue" => "GET"}))
    ApiDestinationHttpMethod.add_member(:head, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HEAD', traits: {"smithy.api#enumValue" => "HEAD"}))
    ApiDestinationHttpMethod.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPTIONS', traits: {"smithy.api#enumValue" => "OPTIONS"}))
    ApiDestinationHttpMethod.add_member(:put, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUT', traits: {"smithy.api#enumValue" => "PUT"}))
    ApiDestinationHttpMethod.add_member(:patch, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PATCH', traits: {"smithy.api#enumValue" => "PATCH"}))
    ApiDestinationHttpMethod.add_member(:delete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE', traits: {"smithy.api#enumValue" => "DELETE"}))
    ApiDestinationResponseList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDestination)
    ApiDestinationState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ApiDestinationState.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    AppSyncParameters.add_member(:graph_ql_operation, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphQLOperation, location_name: 'GraphQLOperation', traits: {"smithy.api#documentation" => "<p>The GraphQL operation; that is, the query, mutation, or subscription to be parsed and\n      executed by the GraphQL service.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/appsync/latest/devguide/graphql-architecture.html#graphql-operations\">Operations</a> in the <i>AppSync User Guide</i>.</p>"}))
    AppSyncParameters.type = Types::AppSyncParameters
    Archive.add_member(:archive_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveName, location_name: 'ArchiveName', traits: {"smithy.api#documentation" => "<p>The name of the archive.</p>"}))
    Archive.add_member(:event_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusArn, location_name: 'EventSourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the event bus associated with the archive. Only events from this event bus are\n      sent to the archive.</p>"}))
    Archive.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the archive.</p>"}))
    Archive.add_member(:state_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveStateReason, location_name: 'StateReason', traits: {"smithy.api#documentation" => "<p>A description for the reason that the archive is in the current state.</p>"}))
    Archive.add_member(:retention_days, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionDays, location_name: 'RetentionDays', traits: {"smithy.api#documentation" => "<p>The number of days to retain events in the archive before they are deleted.</p>"}))
    Archive.add_member(:size_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'SizeBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The size of the archive, in bytes.</p>"}))
    Archive.add_member(:event_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'EventCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of events in the archive.</p>"}))
    Archive.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time stamp for the time that the archive was created.</p>"}))
    Archive.type = Types::Archive
    ArchiveResponseList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Archive)
    ArchiveState.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    ArchiveState.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    ArchiveState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ArchiveState.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    ArchiveState.add_member(:create_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    ArchiveState.add_member(:update_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED', traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    AssignPublicIp.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    AssignPublicIp.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    AwsVpcConfiguration.add_member(:subnets, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'Subnets', traits: {"smithy.api#documentation" => "<p>Specifies the subnets associated with the task. These subnets must all be in the same VPC.\n      You can specify as many as 16 subnets.</p>", "smithy.api#required" => {}}))
    AwsVpcConfiguration.add_member(:security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'SecurityGroups', traits: {"smithy.api#documentation" => "<p>Specifies the security groups associated with the task. These security groups must all be\n      in the same VPC. You can specify as many as five security groups. If you do not specify a\n      security group, the default security group for the VPC is used.</p>"}))
    AwsVpcConfiguration.add_member(:assign_public_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: AssignPublicIp, location_name: 'AssignPublicIp', traits: {"smithy.api#documentation" => "<p>Specifies whether the task's elastic network interface receives a public IP address. You\n      can specify <code>ENABLED</code> only when <code>LaunchType</code> in\n        <code>EcsParameters</code> is set to <code>FARGATE</code>.</p>"}))
    AwsVpcConfiguration.type = Types::AwsVpcConfiguration
    BatchArrayProperties.add_member(:size, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Size', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The size of the array, if this is an array batch job. Valid values are integers between 2\n      and 10,000.</p>"}))
    BatchArrayProperties.type = Types::BatchArrayProperties
    BatchParameters.add_member(:job_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobDefinition', traits: {"smithy.api#documentation" => "<p>The ARN or name of the job definition to use if the event target is an Batch job. This job definition must already exist.</p>", "smithy.api#required" => {}}))
    BatchParameters.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The name to use for this execution of the job, if the target is an Batch\n      job.</p>", "smithy.api#required" => {}}))
    BatchParameters.add_member(:array_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchArrayProperties, location_name: 'ArrayProperties', traits: {"smithy.api#documentation" => "<p>The array properties for the submitted job, such as the size of the array. The array size\n      can be between 2 and 10,000. If you specify array properties for a job, it becomes an array\n      job. This parameter is used only if the target is an Batch job.</p>"}))
    BatchParameters.add_member(:retry_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchRetryStrategy, location_name: 'RetryStrategy', traits: {"smithy.api#documentation" => "<p>The retry strategy to use for failed jobs, if the target is an Batch job.\n      The retry strategy is the number of times to retry the failed job execution. Valid values are\n      1–10. When you specify a retry strategy here, it overrides the retry strategy defined in the\n      job definition.</p>"}))
    BatchParameters.type = Types::BatchParameters
    BatchRetryStrategy.add_member(:attempts, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Attempts', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of times to attempt to retry, if the job fails. Valid values are 1–10.</p>"}))
    BatchRetryStrategy.type = Types::BatchRetryStrategy
    CancelReplayRequest.add_member(:replay_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplayName, location_name: 'ReplayName', traits: {"smithy.api#documentation" => "<p>The name of the replay to cancel.</p>", "smithy.api#required" => {}}))
    CancelReplayRequest.type = Types::CancelReplayRequest
    CancelReplayResponse.add_member(:replay_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplayArn, location_name: 'ReplayArn', traits: {"smithy.api#documentation" => "<p>The ARN of the replay to cancel.</p>"}))
    CancelReplayResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplayState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the replay.</p>"}))
    CancelReplayResponse.add_member(:state_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplayStateReason, location_name: 'StateReason', traits: {"smithy.api#documentation" => "<p>The reason that the replay is in the current state.</p>"}))
    CancelReplayResponse.type = Types::CancelReplayResponse
    CapacityProviderStrategy.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityProviderStrategyItem)
    CapacityProviderStrategyItem.add_member(:capacity_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityProvider, location_name: 'capacityProvider', traits: {"smithy.api#documentation" => "<p>The short name of the capacity provider.</p>", "smithy.api#required" => {}}))
    CapacityProviderStrategyItem.add_member(:weight, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityProviderStrategyItemWeight, location_name: 'weight', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The weight value designates the relative percentage of the total number of tasks launched\n      that should use the specified capacity provider. The weight value is taken into consideration\n      after the base value, if defined, is satisfied.</p>"}))
    CapacityProviderStrategyItem.add_member(:base, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityProviderStrategyItemBase, location_name: 'base', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The base value designates how many tasks, at a minimum, to run on the specified capacity\n      provider. Only one capacity provider in a capacity provider strategy can have a base defined.\n      If no value is specified, the default value of 0 is used. </p>"}))
    CapacityProviderStrategyItem.type = Types::CapacityProviderStrategyItem
    ConcurrentModificationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    Condition.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Specifies the type of condition. Currently the only supported value is\n        <code>StringEquals</code>.</p>", "smithy.api#required" => {}}))
    Condition.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>Specifies the key for the condition. Currently the only supported key is\n        <code>aws:PrincipalOrgID</code>.</p>", "smithy.api#required" => {}}))
    Condition.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>Specifies the value for the key. Currently, this must be the ID of the\n      organization.</p>", "smithy.api#required" => {}}))
    Condition.type = Types::Condition
    Connection.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: 'ConnectionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the connection.</p>"}))
    Connection.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the connection.</p>"}))
    Connection.add_member(:connection_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionState, location_name: 'ConnectionState', traits: {"smithy.api#documentation" => "<p>The state of the connection.</p>"}))
    Connection.add_member(:state_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionStateReason, location_name: 'StateReason', traits: {"smithy.api#documentation" => "<p>The reason that the connection is in the connection state.</p>"}))
    Connection.add_member(:authorization_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAuthorizationType, location_name: 'AuthorizationType', traits: {"smithy.api#documentation" => "<p>The authorization type specified for the connection.</p>\n         <note>\n            <p>OAUTH tokens are refreshed when a 401 or 407 response is returned.</p>\n         </note>"}))
    Connection.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the connection was created.</p>"}))
    Connection.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the connection was last modified.</p>"}))
    Connection.add_member(:last_authorized_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastAuthorizedTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the connection was last authorized.</p>"}))
    Connection.type = Types::Connection
    ConnectionApiKeyAuthResponseParameters.add_member(:api_key_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthHeaderParameters, location_name: 'ApiKeyName', traits: {"smithy.api#documentation" => "<p>The name of the header to use for the <code>APIKeyValue</code> used for\n      authorization.</p>"}))
    ConnectionApiKeyAuthResponseParameters.type = Types::ConnectionApiKeyAuthResponseParameters
    ConnectionAuthResponseParameters.add_member(:basic_auth_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionBasicAuthResponseParameters, location_name: 'BasicAuthParameters', traits: {"smithy.api#documentation" => "<p>The authorization parameters for Basic authorization.</p>"}))
    ConnectionAuthResponseParameters.add_member(:o_auth_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionOAuthResponseParameters, location_name: 'OAuthParameters', traits: {"smithy.api#documentation" => "<p>The OAuth parameters to use for authorization.</p>"}))
    ConnectionAuthResponseParameters.add_member(:api_key_auth_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionApiKeyAuthResponseParameters, location_name: 'ApiKeyAuthParameters', traits: {"smithy.api#documentation" => "<p>The API Key parameters to use for authorization.</p>"}))
    ConnectionAuthResponseParameters.add_member(:invocation_http_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionHttpParameters, location_name: 'InvocationHttpParameters', traits: {"smithy.api#documentation" => "<p>Additional parameters for the connection that are passed through with every invocation to\n      the HTTP endpoint.</p>"}))
    ConnectionAuthResponseParameters.add_member(:connectivity_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConnectionConnectivityParameters, location_name: 'ConnectivityParameters', traits: {"smithy.api#documentation" => "<p>For private OAuth authentication endpoints. The parameters EventBridge uses to authenticate against the endpoint.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-target-connection-auth.html\">Authorization methods for connections</a> in the <i>\n               <i>Amazon EventBridge User Guide</i>\n            </i>.</p>"}))
    ConnectionAuthResponseParameters.type = Types::ConnectionAuthResponseParameters
    ConnectionAuthorizationType.add_member(:basic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BASIC', traits: {"smithy.api#enumValue" => "BASIC"}))
    ConnectionAuthorizationType.add_member(:oauth_client_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OAUTH_CLIENT_CREDENTIALS', traits: {"smithy.api#enumValue" => "OAUTH_CLIENT_CREDENTIALS"}))
    ConnectionAuthorizationType.add_member(:api_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'API_KEY', traits: {"smithy.api#enumValue" => "API_KEY"}))
    ConnectionBasicAuthResponseParameters.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthHeaderParameters, location_name: 'Username', traits: {"smithy.api#documentation" => "<p>The user name to use for Basic authorization.</p>"}))
    ConnectionBasicAuthResponseParameters.type = Types::ConnectionBasicAuthResponseParameters
    ConnectionBodyParameter.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key for the parameter.</p>"}))
    ConnectionBodyParameter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value associated with the key.</p>"}))
    ConnectionBodyParameter.add_member(:is_value_secret, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsValueSecret', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether the value is secret.</p>"}))
    ConnectionBodyParameter.type = Types::ConnectionBodyParameter
    ConnectionBodyParametersList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionBodyParameter)
    ConnectionHeaderParameter.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key for the parameter.</p>"}))
    ConnectionHeaderParameter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderValueSensitive, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value associated with the key.</p>"}))
    ConnectionHeaderParameter.add_member(:is_value_secret, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsValueSecret', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether the value is a secret.</p>"}))
    ConnectionHeaderParameter.type = Types::ConnectionHeaderParameter
    ConnectionHeaderParametersList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionHeaderParameter)
    ConnectionHttpParameters.add_member(:header_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionHeaderParametersList, location_name: 'HeaderParameters', traits: {"smithy.api#documentation" => "<p>Any additional header parameters for the connection.</p>"}))
    ConnectionHttpParameters.add_member(:query_string_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionQueryStringParametersList, location_name: 'QueryStringParameters', traits: {"smithy.api#documentation" => "<p>Any additional query string parameters for the connection.</p>"}))
    ConnectionHttpParameters.add_member(:body_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionBodyParametersList, location_name: 'BodyParameters', traits: {"smithy.api#documentation" => "<p>Any additional body string parameters for the connection.</p>"}))
    ConnectionHttpParameters.type = Types::ConnectionHttpParameters
    ConnectionOAuthClientResponseParameters.add_member(:client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthHeaderParameters, location_name: 'ClientID', traits: {"smithy.api#documentation" => "<p>The client ID associated with the response to the connection request.</p>"}))
    ConnectionOAuthClientResponseParameters.type = Types::ConnectionOAuthClientResponseParameters
    ConnectionOAuthHttpMethod.add_member(:get, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GET', traits: {"smithy.api#enumValue" => "GET"}))
    ConnectionOAuthHttpMethod.add_member(:post, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POST', traits: {"smithy.api#enumValue" => "POST"}))
    ConnectionOAuthHttpMethod.add_member(:put, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUT', traits: {"smithy.api#enumValue" => "PUT"}))
    ConnectionOAuthResponseParameters.add_member(:client_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionOAuthClientResponseParameters, location_name: 'ClientParameters', traits: {"smithy.api#documentation" => "<p>Details about the client parameters returned when OAuth is specified as the authorization type.</p>"}))
    ConnectionOAuthResponseParameters.add_member(:authorization_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpsEndpoint, location_name: 'AuthorizationEndpoint', traits: {"smithy.api#documentation" => "<p>The URL to the HTTP endpoint that authorized the request.</p>"}))
    ConnectionOAuthResponseParameters.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionOAuthHttpMethod, location_name: 'HttpMethod', traits: {"smithy.api#documentation" => "<p>The method used to connect to the HTTP endpoint.</p>"}))
    ConnectionOAuthResponseParameters.add_member(:o_auth_http_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionHttpParameters, location_name: 'OAuthHttpParameters', traits: {"smithy.api#documentation" => "<p>The additional HTTP parameters used for the OAuth authorization request.</p>"}))
    ConnectionOAuthResponseParameters.type = Types::ConnectionOAuthResponseParameters
    ConnectionQueryStringParameter.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStringKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key for a query string parameter.</p>"}))
    ConnectionQueryStringParameter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStringValueSensitive, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value associated with the key for the query string parameter.</p>"}))
    ConnectionQueryStringParameter.add_member(:is_value_secret, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsValueSecret', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether the value is secret.</p>"}))
    ConnectionQueryStringParameter.type = Types::ConnectionQueryStringParameter
    ConnectionQueryStringParametersList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionQueryStringParameter)
    ConnectionResponseList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Connection)
    ConnectionState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ConnectionState.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    ConnectionState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ConnectionState.add_member(:authorized, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTHORIZED', traits: {"smithy.api#enumValue" => "AUTHORIZED"}))
    ConnectionState.add_member(:deauthorized, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEAUTHORIZED', traits: {"smithy.api#enumValue" => "DEAUTHORIZED"}))
    ConnectionState.add_member(:authorizing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTHORIZING', traits: {"smithy.api#enumValue" => "AUTHORIZING"}))
    ConnectionState.add_member(:deauthorizing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEAUTHORIZING', traits: {"smithy.api#enumValue" => "DEAUTHORIZING"}))
    ConnectionState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ConnectionState.add_member(:failed_connectivity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_CONNECTIVITY', traits: {"smithy.api#enumValue" => "FAILED_CONNECTIVITY"}))
    ConnectivityResourceConfigurationArn.add_member(:resource_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationArn, location_name: 'ResourceConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon VPC Lattice resource configuration for the resource endpoint.</p>", "smithy.api#required" => {}}))
    ConnectivityResourceConfigurationArn.type = Types::ConnectivityResourceConfigurationArn
    ConnectivityResourceParameters.add_member(:resource_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectivityResourceConfigurationArn, location_name: 'ResourceParameters', traits: {"smithy.api#documentation" => "<p>The parameters for EventBridge to use when invoking the resource endpoint.</p>", "smithy.api#required" => {}}))
    ConnectivityResourceParameters.type = Types::ConnectivityResourceParameters
    CreateApiDestinationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDestinationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name for the API destination to create.</p>", "smithy.api#required" => {}}))
    CreateApiDestinationRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDestinationDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description for the API destination to create.</p>"}))
    CreateApiDestinationRequest.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: 'ConnectionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the connection to use for the API destination. The destination endpoint must\n      support the authorization type specified for the connection.</p>", "smithy.api#required" => {}}))
    CreateApiDestinationRequest.add_member(:invocation_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpsEndpoint, location_name: 'InvocationEndpoint', traits: {"smithy.api#documentation" => "<p>The URL to the HTTP invocation endpoint for the API destination.</p>", "smithy.api#required" => {}}))
    CreateApiDestinationRequest.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDestinationHttpMethod, location_name: 'HttpMethod', traits: {"smithy.api#documentation" => "<p>The method to use for the request to the HTTP invocation endpoint.</p>", "smithy.api#required" => {}}))
    CreateApiDestinationRequest.add_member(:invocation_rate_limit_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDestinationInvocationRateLimitPerSecond, location_name: 'InvocationRateLimitPerSecond', traits: {"smithy.api#documentation" => "<p>The maximum number of requests per second to send to the HTTP invocation endpoint.</p>"}))
    CreateApiDestinationRequest.type = Types::CreateApiDestinationRequest
    CreateApiDestinationResponse.add_member(:api_destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDestinationArn, location_name: 'ApiDestinationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the API destination that was created by the request.</p>"}))
    CreateApiDestinationResponse.add_member(:api_destination_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDestinationState, location_name: 'ApiDestinationState', traits: {"smithy.api#documentation" => "<p>The state of the API destination that was created by the request.</p>"}))
    CreateApiDestinationResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>A time stamp indicating the time that the API destination was created.</p>"}))
    CreateApiDestinationResponse.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>A time stamp indicating the time that the API destination was last modified.</p>"}))
    CreateApiDestinationResponse.type = Types::CreateApiDestinationResponse
    CreateArchiveRequest.add_member(:archive_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveName, location_name: 'ArchiveName', traits: {"smithy.api#documentation" => "<p>The name for the archive to create.</p>", "smithy.api#required" => {}}))
    CreateArchiveRequest.add_member(:event_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusArn, location_name: 'EventSourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the event bus that sends events to the archive.</p>", "smithy.api#required" => {}}))
    CreateArchiveRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description for the archive.</p>"}))
    CreateArchiveRequest.add_member(:event_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: EventPattern, location_name: 'EventPattern', traits: {"smithy.api#documentation" => "<p>An event pattern to use to filter events sent to the archive.</p>"}))
    CreateArchiveRequest.add_member(:retention_days, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionDays, location_name: 'RetentionDays', traits: {"smithy.api#documentation" => "<p>The number of days to retain events for. Default value is 0. If set to 0, events are\n      retained indefinitely</p>"}))
    CreateArchiveRequest.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyIdentifier, location_name: 'KmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the KMS\n      customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt this archive. The identifier can be the key \n      Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.</p>\n         <p>If you do not specify a customer managed key identifier, EventBridge uses an\n        Amazon Web Services owned key to encrypt the archive.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/viewing-keys.html\">Identify and view keys</a> in the <i>Key Management Service\n                                Developer Guide</i>. </p>\n         <important>\n            <p>If you have specified that EventBridge use a customer managed key for encrypting the source event bus, we strongly recommend you also specify a \n        customer managed key for any archives for the event bus as well. </p>\n            <p>For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/encryption-archives.html\">Encrypting archives</a> in the <i>Amazon EventBridge User Guide</i>.</p>\n         </important>"}))
    CreateArchiveRequest.type = Types::CreateArchiveRequest
    CreateArchiveResponse.add_member(:archive_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveArn, location_name: 'ArchiveArn', traits: {"smithy.api#documentation" => "<p>The ARN of the archive that was created.</p>"}))
    CreateArchiveResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the archive that was created.</p>"}))
    CreateArchiveResponse.add_member(:state_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveStateReason, location_name: 'StateReason', traits: {"smithy.api#documentation" => "<p>The reason that the archive is in the state.</p>"}))
    CreateArchiveResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time at which the archive was created.</p>"}))
    CreateArchiveResponse.type = Types::CreateArchiveResponse
    CreateConnectionApiKeyAuthRequestParameters.add_member(:api_key_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthHeaderParameters, location_name: 'ApiKeyName', traits: {"smithy.api#documentation" => "<p>The name of the API key to use for authorization.</p>", "smithy.api#required" => {}}))
    CreateConnectionApiKeyAuthRequestParameters.add_member(:api_key_value, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthHeaderParametersSensitive, location_name: 'ApiKeyValue', traits: {"smithy.api#documentation" => "<p>The value for the API key to use for authorization.</p>", "smithy.api#required" => {}}))
    CreateConnectionApiKeyAuthRequestParameters.type = Types::CreateConnectionApiKeyAuthRequestParameters
    CreateConnectionAuthRequestParameters.add_member(:basic_auth_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectionBasicAuthRequestParameters, location_name: 'BasicAuthParameters', traits: {"smithy.api#documentation" => "<p>The Basic\n      authorization parameters to use for the connection.</p>"}))
    CreateConnectionAuthRequestParameters.add_member(:o_auth_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectionOAuthRequestParameters, location_name: 'OAuthParameters', traits: {"smithy.api#documentation" => "<p>The OAuth\n      authorization parameters to use for the connection.</p>"}))
    CreateConnectionAuthRequestParameters.add_member(:api_key_auth_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectionApiKeyAuthRequestParameters, location_name: 'ApiKeyAuthParameters', traits: {"smithy.api#documentation" => "<p>The API\n      key authorization parameters to use for the connection.</p>"}))
    CreateConnectionAuthRequestParameters.add_member(:invocation_http_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionHttpParameters, location_name: 'InvocationHttpParameters', traits: {"smithy.api#documentation" => "<p>The API key authorization\n      parameters to use for the connection. Note that if you include additional parameters for the\n      target of a rule via <code>HttpParameters</code>, including query strings, the parameters\n      added for the connection take precedence.</p>"}))
    CreateConnectionAuthRequestParameters.add_member(:connectivity_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectivityResourceParameters, location_name: 'ConnectivityParameters', traits: {"smithy.api#documentation" => "<p>If you specify a private OAuth endpoint, the parameters for EventBridge to use when authenticating against the endpoint.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-target-connection-auth.html\">Authorization methods for connections</a> in the <i>\n               <i>Amazon EventBridge User Guide</i>\n            </i>.</p>"}))
    CreateConnectionAuthRequestParameters.type = Types::CreateConnectionAuthRequestParameters
    CreateConnectionBasicAuthRequestParameters.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthHeaderParameters, location_name: 'Username', traits: {"smithy.api#documentation" => "<p>The user name to use for Basic authorization.</p>", "smithy.api#required" => {}}))
    CreateConnectionBasicAuthRequestParameters.add_member(:password, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthHeaderParametersSensitive, location_name: 'Password', traits: {"smithy.api#documentation" => "<p>The password associated with the user name to use for Basic authorization.</p>", "smithy.api#required" => {}}))
    CreateConnectionBasicAuthRequestParameters.type = Types::CreateConnectionBasicAuthRequestParameters
    CreateConnectionOAuthClientRequestParameters.add_member(:client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthHeaderParameters, location_name: 'ClientID', traits: {"smithy.api#documentation" => "<p>The client ID to use for OAuth authorization for the connection.</p>", "smithy.api#required" => {}}))
    CreateConnectionOAuthClientRequestParameters.add_member(:client_secret, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthHeaderParametersSensitive, location_name: 'ClientSecret', traits: {"smithy.api#documentation" => "<p>The client secret associated with the client ID to use for OAuth authorization for the\n      connection.</p>", "smithy.api#required" => {}}))
    CreateConnectionOAuthClientRequestParameters.type = Types::CreateConnectionOAuthClientRequestParameters
    CreateConnectionOAuthRequestParameters.add_member(:client_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectionOAuthClientRequestParameters, location_name: 'ClientParameters', traits: {"smithy.api#documentation" => "<p>The client parameters for OAuth authorization.</p>", "smithy.api#required" => {}}))
    CreateConnectionOAuthRequestParameters.add_member(:authorization_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpsEndpoint, location_name: 'AuthorizationEndpoint', traits: {"smithy.api#documentation" => "<p>The URL to the authorization endpoint when OAuth is specified as the authorization\n      type.</p>", "smithy.api#required" => {}}))
    CreateConnectionOAuthRequestParameters.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionOAuthHttpMethod, location_name: 'HttpMethod', traits: {"smithy.api#documentation" => "<p>The method to use for the authorization request.</p>", "smithy.api#required" => {}}))
    CreateConnectionOAuthRequestParameters.add_member(:o_auth_http_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionHttpParameters, location_name: 'OAuthHttpParameters', traits: {"smithy.api#documentation" => "<p>Details about the additional\n      parameters to use for the connection.</p>"}))
    CreateConnectionOAuthRequestParameters.type = Types::CreateConnectionOAuthRequestParameters
    CreateConnectionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name for the connection to create.</p>", "smithy.api#required" => {}}))
    CreateConnectionRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description for the connection to create.</p>"}))
    CreateConnectionRequest.add_member(:authorization_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAuthorizationType, location_name: 'AuthorizationType', traits: {"smithy.api#documentation" => "<p>The type of authorization to use for the connection.</p>\n         <note>\n            <p>OAUTH tokens are refreshed when a 401 or 407 response is returned.</p>\n         </note>", "smithy.api#required" => {}}))
    CreateConnectionRequest.add_member(:auth_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectionAuthRequestParameters, location_name: 'AuthParameters', traits: {"smithy.api#documentation" => "<p>The\n      authorization parameters to use to authorize with the endpoint. </p>\n         <p>You must include only authorization parameters for the <code>AuthorizationType</code> you specify.</p>", "smithy.api#required" => {}}))
    CreateConnectionRequest.add_member(:invocation_connectivity_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectivityResourceParameters, location_name: 'InvocationConnectivityParameters', traits: {"smithy.api#documentation" => "<p>For connections to private APIs, the parameters to use for invoking the API.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/connection-private.html\">Connecting to private APIs</a> in the <i>\n               <i>Amazon EventBridge User Guide</i>\n            </i>.</p>"}))
    CreateConnectionRequest.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyIdentifier, location_name: 'KmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the KMS\n      customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt this connection. The identifier can be the key \n      Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.</p>\n         <p>If you do not specify a customer managed key identifier, EventBridge uses an\n        Amazon Web Services owned key to encrypt the connection.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/viewing-keys.html\">Identify and view keys</a> in the <i>Key Management Service\n                                Developer Guide</i>. </p>"}))
    CreateConnectionRequest.type = Types::CreateConnectionRequest
    CreateConnectionResponse.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: 'ConnectionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the connection that was created by the request.</p>"}))
    CreateConnectionResponse.add_member(:connection_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionState, location_name: 'ConnectionState', traits: {"smithy.api#documentation" => "<p>The state of the connection that was created by the request.</p>"}))
    CreateConnectionResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the connection was created.</p>"}))
    CreateConnectionResponse.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the connection was last updated.</p>"}))
    CreateConnectionResponse.type = Types::CreateConnectionResponse
    CreateEndpointRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the global endpoint. For example,\n        <code>\"Name\":\"us-east-2-custom_bus_A-endpoint\"</code>.</p>", "smithy.api#required" => {}}))
    CreateEndpointRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the global endpoint.</p>"}))
    CreateEndpointRequest.add_member(:routing_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingConfig, location_name: 'RoutingConfig', traits: {"smithy.api#documentation" => "<p>Configure the routing policy, including the health check and secondary Region..</p>", "smithy.api#required" => {}}))
    CreateEndpointRequest.add_member(:replication_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfig, location_name: 'ReplicationConfig', traits: {"smithy.api#documentation" => "<p>Enable or disable event replication. The default state is <code>ENABLED</code> which means\n      you must supply a <code>RoleArn</code>. If you don't have a <code>RoleArn</code> or you don't\n      want event replication enabled, set the state to <code>DISABLED</code>.</p>"}))
    CreateEndpointRequest.add_member(:event_buses, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointEventBusList, location_name: 'EventBuses', traits: {"smithy.api#documentation" => "<p>Define the event buses used. </p>\n         <important>\n            <p>The names of the event buses must be identical in each Region.</p>\n         </important>", "smithy.api#required" => {}}))
    CreateEndpointRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the role used for replication.</p>"}))
    CreateEndpointRequest.type = Types::CreateEndpointRequest
    CreateEndpointResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the endpoint that was created by this request.</p>"}))
    CreateEndpointResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the endpoint that was created by this request.</p>"}))
    CreateEndpointResponse.add_member(:routing_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingConfig, location_name: 'RoutingConfig', traits: {"smithy.api#documentation" => "<p>The routing configuration defined by this request.</p>"}))
    CreateEndpointResponse.add_member(:replication_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfig, location_name: 'ReplicationConfig', traits: {"smithy.api#documentation" => "<p>Whether event replication was enabled or disabled by this request.</p>"}))
    CreateEndpointResponse.add_member(:event_buses, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointEventBusList, location_name: 'EventBuses', traits: {"smithy.api#documentation" => "<p>The event buses used by this request.</p>"}))
    CreateEndpointResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the role used by event replication for this request.</p>"}))
    CreateEndpointResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the endpoint that was created by this request.</p>"}))
    CreateEndpointResponse.type = Types::CreateEndpointResponse
    CreateEventBusRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the new event bus. </p>\n         <p>Custom event bus names can't contain the <code>/</code> character, but you can use the\n        <code>/</code> character in partner event bus names. In addition, for partner event buses,\n      the name must exactly match the name of the partner event source that this event bus is\n      matched to.</p>\n         <p>You can't use the name <code>default</code> for a custom event bus, as this name is\n      already used for your account's default event bus.</p>", "smithy.api#required" => {}}))
    CreateEventBusRequest.add_member(:event_source_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSourceName, location_name: 'EventSourceName', traits: {"smithy.api#documentation" => "<p>If you are creating a partner event bus, this specifies the partner event source that the\n      new event bus will be matched with.</p>"}))
    CreateEventBusRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The event bus description.</p>"}))
    CreateEventBusRequest.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyIdentifier, location_name: 'KmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the KMS\n      customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt events on this event bus. The identifier can be the key \n      Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.</p>\n         <p>If you do not specify a customer managed key identifier, EventBridge uses an\n        Amazon Web Services owned key to encrypt events on the event bus.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/viewing-keys.html\">Identify and view keys</a> in the <i>Key Management Service\n                                Developer Guide</i>. </p>\n         <note>\n            <p>Schema discovery is not supported for event buses encrypted using a\n        customer managed key. EventBridge returns an error if: </p>\n            <ul>\n               <li>\n                  <p>You call <code>\n                        <a href=\"https://docs.aws.amazon.com/eventbridge/latest/schema-reference/v1-discoverers.html#CreateDiscoverer\">CreateDiscoverer</a>\n                     </code> on an event bus set to use a customer managed key for encryption.</p>\n               </li>\n               <li>\n                  <p>You call <code>\n                        <a href=\"https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_UpdatedEventBus.html\">UpdatedEventBus</a>\n                     </code> to set a customer managed key on an event bus with schema discovery enabled.</p>\n               </li>\n            </ul>\n            <p>To enable schema discovery on an event bus, choose to\n        use an Amazon Web Services owned key. For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-encryption-event-bus-cmkey.html\">Encrypting events</a> in the <i>Amazon EventBridge User Guide</i>.</p>\n         </note>\n         <important>\n            <p>If you have specified that EventBridge use a customer managed key for encrypting the source event bus, we strongly recommend you also specify a \n        customer managed key for any archives for the event bus as well. </p>\n            <p>For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/encryption-archives.html\">Encrypting archives</a> in the <i>Amazon EventBridge User Guide</i>.</p>\n         </important>"}))
    CreateEventBusRequest.add_member(:dead_letter_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DeadLetterConfig, location_name: 'DeadLetterConfig'))
    CreateEventBusRequest.add_member(:log_config, Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfig, location_name: 'LogConfig', traits: {"smithy.api#documentation" => "<p>The logging configuration settings for the event bus.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/eb-event-bus-logs.html\">Configuring logs for event buses</a> in the <i>EventBridge User Guide</i>.</p>"}))
    CreateEventBusRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags to associate with the event bus.</p>"}))
    CreateEventBusRequest.type = Types::CreateEventBusRequest
    CreateEventBusResponse.add_member(:event_bus_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EventBusArn', traits: {"smithy.api#documentation" => "<p>The ARN of the new event bus.</p>"}))
    CreateEventBusResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The event bus description.</p>"}))
    CreateEventBusResponse.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyIdentifier, location_name: 'KmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the KMS\n      customer managed key for EventBridge to use to encrypt events on this event bus, if one has been specified.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-encryption.html\">Data encryption in EventBridge</a> in the <i>Amazon EventBridge User Guide</i>.</p>"}))
    CreateEventBusResponse.add_member(:dead_letter_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DeadLetterConfig, location_name: 'DeadLetterConfig'))
    CreateEventBusResponse.add_member(:log_config, Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfig, location_name: 'LogConfig', traits: {"smithy.api#documentation" => "<p>The logging configuration settings for the event bus.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/eb-event-bus-logs.html\">Configuring logs for event buses</a> in the <i>EventBridge User Guide</i>.</p>"}))
    CreateEventBusResponse.type = Types::CreateEventBusResponse
    CreatePartnerEventSourceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the partner event source. This name must be unique and must be in the format\n          <code>\n               <i>partner_name</i>/<i>event_namespace</i>/<i>event_name</i>\n            </code>.\n      The Amazon Web Services account that wants to use this partner event source must create a\n      partner event bus with a name that matches the name of the partner event source.</p>", "smithy.api#required" => {}}))
    CreatePartnerEventSourceRequest.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'Account', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID that is permitted to create a matching partner event bus\n      for this partner event source.</p>", "smithy.api#required" => {}}))
    CreatePartnerEventSourceRequest.type = Types::CreatePartnerEventSourceRequest
    CreatePartnerEventSourceResponse.add_member(:event_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EventSourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the partner event source.</p>"}))
    CreatePartnerEventSourceResponse.type = Types::CreatePartnerEventSourceResponse
    DeactivateEventSourceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the partner event source to deactivate.</p>", "smithy.api#required" => {}}))
    DeactivateEventSourceRequest.type = Types::DeactivateEventSourceRequest
    DeadLetterConfig.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the SQS queue specified as the target for the dead-letter queue.</p>"}))
    DeadLetterConfig.type = Types::DeadLetterConfig
    DeauthorizeConnectionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the connection to remove authorization from.</p>", "smithy.api#required" => {}}))
    DeauthorizeConnectionRequest.type = Types::DeauthorizeConnectionRequest
    DeauthorizeConnectionResponse.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: 'ConnectionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the connection that authorization was removed from.</p>"}))
    DeauthorizeConnectionResponse.add_member(:connection_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionState, location_name: 'ConnectionState', traits: {"smithy.api#documentation" => "<p>The state of the connection.</p>"}))
    DeauthorizeConnectionResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the connection was created.</p>"}))
    DeauthorizeConnectionResponse.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the connection was last updated.</p>"}))
    DeauthorizeConnectionResponse.add_member(:last_authorized_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastAuthorizedTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the connection was last authorized.</p>"}))
    DeauthorizeConnectionResponse.type = Types::DeauthorizeConnectionResponse
    DeleteApiDestinationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDestinationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the destination to delete.</p>", "smithy.api#required" => {}}))
    DeleteApiDestinationRequest.type = Types::DeleteApiDestinationRequest
    DeleteApiDestinationResponse.type = Types::DeleteApiDestinationResponse
    DeleteArchiveRequest.add_member(:archive_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveName, location_name: 'ArchiveName', traits: {"smithy.api#documentation" => "<p>The name of the archive to delete.</p>", "smithy.api#required" => {}}))
    DeleteArchiveRequest.type = Types::DeleteArchiveRequest
    DeleteArchiveResponse.type = Types::DeleteArchiveResponse
    DeleteConnectionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the connection to delete.</p>", "smithy.api#required" => {}}))
    DeleteConnectionRequest.type = Types::DeleteConnectionRequest
    DeleteConnectionResponse.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: 'ConnectionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the connection that was deleted.</p>"}))
    DeleteConnectionResponse.add_member(:connection_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionState, location_name: 'ConnectionState', traits: {"smithy.api#documentation" => "<p>The state of the connection before it was deleted.</p>"}))
    DeleteConnectionResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the connection was created.</p>"}))
    DeleteConnectionResponse.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the connection was last modified before it was\n      deleted.</p>"}))
    DeleteConnectionResponse.add_member(:last_authorized_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastAuthorizedTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the connection was last authorized before it wa\n      deleted.</p>"}))
    DeleteConnectionResponse.type = Types::DeleteConnectionResponse
    DeleteEndpointRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the endpoint you want to delete. For example,\n        <code>\"Name\":\"us-east-2-custom_bus_A-endpoint\"</code>..</p>", "smithy.api#required" => {}}))
    DeleteEndpointRequest.type = Types::DeleteEndpointRequest
    DeleteEndpointResponse.type = Types::DeleteEndpointResponse
    DeleteEventBusRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the event bus to delete.</p>", "smithy.api#required" => {}}))
    DeleteEventBusRequest.type = Types::DeleteEventBusRequest
    DeletePartnerEventSourceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the event source to delete.</p>", "smithy.api#required" => {}}))
    DeletePartnerEventSourceRequest.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'Account', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the Amazon Web Services customer that the event source\n      was created for.</p>", "smithy.api#required" => {}}))
    DeletePartnerEventSourceRequest.type = Types::DeletePartnerEventSourceRequest
    DeleteRuleRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the rule.</p>", "smithy.api#required" => {}}))
    DeleteRuleRequest.add_member(:event_bus_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusNameOrArn, location_name: 'EventBusName', traits: {"smithy.api#documentation" => "<p>The name or ARN of the event bus associated with the rule. If you omit this, the default\n      event bus is used.</p>"}))
    DeleteRuleRequest.add_member(:force, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Force', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If this is a managed rule, created by an Amazon Web Services service on your behalf, you\n      must specify <code>Force</code> as <code>True</code> to delete the rule. This parameter is\n      ignored for rules that are not managed rules. You can check whether a rule is a managed rule\n      by using <code>DescribeRule</code> or <code>ListRules</code> and checking the\n        <code>ManagedBy</code> field of the response.</p>"}))
    DeleteRuleRequest.type = Types::DeleteRuleRequest
    DescribeApiDestinationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDestinationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the API destination to retrieve.</p>", "smithy.api#required" => {}}))
    DescribeApiDestinationRequest.type = Types::DescribeApiDestinationRequest
    DescribeApiDestinationResponse.add_member(:api_destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDestinationArn, location_name: 'ApiDestinationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the API destination retrieved.</p>"}))
    DescribeApiDestinationResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDestinationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the API destination retrieved.</p>"}))
    DescribeApiDestinationResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDestinationDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description for the API destination retrieved.</p>"}))
    DescribeApiDestinationResponse.add_member(:api_destination_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDestinationState, location_name: 'ApiDestinationState', traits: {"smithy.api#documentation" => "<p>The state of the API destination retrieved.</p>"}))
    DescribeApiDestinationResponse.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: 'ConnectionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the connection specified for the API destination retrieved.</p>"}))
    DescribeApiDestinationResponse.add_member(:invocation_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpsEndpoint, location_name: 'InvocationEndpoint', traits: {"smithy.api#documentation" => "<p>The URL to use to connect to the HTTP endpoint.</p>"}))
    DescribeApiDestinationResponse.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDestinationHttpMethod, location_name: 'HttpMethod', traits: {"smithy.api#documentation" => "<p>The method to use to connect to the HTTP endpoint.</p>"}))
    DescribeApiDestinationResponse.add_member(:invocation_rate_limit_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDestinationInvocationRateLimitPerSecond, location_name: 'InvocationRateLimitPerSecond', traits: {"smithy.api#documentation" => "<p>The maximum number of invocations per second to specified for the API destination. Note\n      that if you set the invocation rate maximum to a value lower the rate necessary to send all\n      events received on to the destination HTTP endpoint, some events may not be delivered within\n      the 24-hour retry window. If you plan to set the rate lower than the rate necessary to deliver\n      all events, consider using a dead-letter queue to catch events that are not delivered within\n      24 hours.</p>"}))
    DescribeApiDestinationResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the API destination was created.</p>"}))
    DescribeApiDestinationResponse.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the API destination was last modified.</p>"}))
    DescribeApiDestinationResponse.type = Types::DescribeApiDestinationResponse
    DescribeArchiveRequest.add_member(:archive_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveName, location_name: 'ArchiveName', traits: {"smithy.api#documentation" => "<p>The name of the archive to retrieve.</p>", "smithy.api#required" => {}}))
    DescribeArchiveRequest.type = Types::DescribeArchiveRequest
    DescribeArchiveResponse.add_member(:archive_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveArn, location_name: 'ArchiveArn', traits: {"smithy.api#documentation" => "<p>The ARN of the archive.</p>"}))
    DescribeArchiveResponse.add_member(:archive_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveName, location_name: 'ArchiveName', traits: {"smithy.api#documentation" => "<p>The name of the archive.</p>"}))
    DescribeArchiveResponse.add_member(:event_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusArn, location_name: 'EventSourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the event source associated with the archive.</p>"}))
    DescribeArchiveResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the archive.</p>"}))
    DescribeArchiveResponse.add_member(:event_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: EventPattern, location_name: 'EventPattern', traits: {"smithy.api#documentation" => "<p>The event pattern used to filter events sent to the archive.</p>"}))
    DescribeArchiveResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the archive.</p>"}))
    DescribeArchiveResponse.add_member(:state_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveStateReason, location_name: 'StateReason', traits: {"smithy.api#documentation" => "<p>The reason that the archive is in the state.</p>"}))
    DescribeArchiveResponse.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyIdentifier, location_name: 'KmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the KMS\n      customer managed key for EventBridge to use to encrypt this archive, if one has been specified.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/encryption-archives.html\">Encrypting archives</a> in the <i>Amazon EventBridge User Guide</i>.</p>"}))
    DescribeArchiveResponse.add_member(:retention_days, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionDays, location_name: 'RetentionDays', traits: {"smithy.api#documentation" => "<p>The number of days to retain events for in the archive.</p>"}))
    DescribeArchiveResponse.add_member(:size_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'SizeBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The size of the archive in bytes.</p>"}))
    DescribeArchiveResponse.add_member(:event_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'EventCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of events in the archive.</p>"}))
    DescribeArchiveResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time at which the archive was created.</p>"}))
    DescribeArchiveResponse.type = Types::DescribeArchiveResponse
    DescribeConnectionConnectivityParameters.add_member(:resource_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConnectionResourceParameters, location_name: 'ResourceParameters', traits: {"smithy.api#documentation" => "<p>The parameters for EventBridge to use when invoking the resource endpoint.</p>", "smithy.api#required" => {}}))
    DescribeConnectionConnectivityParameters.type = Types::DescribeConnectionConnectivityParameters
    DescribeConnectionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the connection to retrieve.</p>", "smithy.api#required" => {}}))
    DescribeConnectionRequest.type = Types::DescribeConnectionRequest
    DescribeConnectionResourceParameters.add_member(:resource_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationArn, location_name: 'ResourceConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource configuration for the private API.</p>", "smithy.api#required" => {}}))
    DescribeConnectionResourceParameters.add_member(:resource_association_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAssociationArn, location_name: 'ResourceAssociationArn', traits: {"smithy.api#documentation" => "<p>For connections to private APIs, the Amazon Resource Name (ARN) of the resource association EventBridge created between the connection and the private API's resource configuration.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/connection-private.html#connection-private-snra\">\n      Managing service network resource associations for connections</a> in the <i>\n               <i>Amazon EventBridge User Guide</i>\n            </i>.</p>", "smithy.api#required" => {}}))
    DescribeConnectionResourceParameters.type = Types::DescribeConnectionResourceParameters
    DescribeConnectionResponse.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: 'ConnectionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the connection retrieved.</p>"}))
    DescribeConnectionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the connection retrieved.</p>"}))
    DescribeConnectionResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description for the connection retrieved.</p>"}))
    DescribeConnectionResponse.add_member(:invocation_connectivity_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConnectionConnectivityParameters, location_name: 'InvocationConnectivityParameters', traits: {"smithy.api#documentation" => "<p>For connections to private APIs The parameters EventBridge uses to invoke the resource\n      endpoint.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/connection-private.html\">Connecting to private APIs</a> in the <i>\n               <i>Amazon EventBridge User Guide</i>\n            </i>.</p>"}))
    DescribeConnectionResponse.add_member(:connection_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionState, location_name: 'ConnectionState', traits: {"smithy.api#documentation" => "<p>The state of the connection retrieved.</p>"}))
    DescribeConnectionResponse.add_member(:state_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionStateReason, location_name: 'StateReason', traits: {"smithy.api#documentation" => "<p>The reason that the connection is in the current connection state.</p>"}))
    DescribeConnectionResponse.add_member(:authorization_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAuthorizationType, location_name: 'AuthorizationType', traits: {"smithy.api#documentation" => "<p>The type of authorization specified for the connection.</p>"}))
    DescribeConnectionResponse.add_member(:secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretsManagerSecretArn, location_name: 'SecretArn', traits: {"smithy.api#documentation" => "<p>The ARN of the secret created from the authorization parameters specified for the\n      connection.</p>"}))
    DescribeConnectionResponse.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyIdentifier, location_name: 'KmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the KMS\n      customer managed key for EventBridge to use to encrypt the connection, if one has been specified.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/encryption-connections.html\">Encrypting connections</a> in the <i>Amazon EventBridge User Guide</i>.</p>"}))
    DescribeConnectionResponse.add_member(:auth_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAuthResponseParameters, location_name: 'AuthParameters', traits: {"smithy.api#documentation" => "<p>The parameters to use for authorization for the connection.</p>"}))
    DescribeConnectionResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the connection was created.</p>"}))
    DescribeConnectionResponse.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the connection was last modified.</p>"}))
    DescribeConnectionResponse.add_member(:last_authorized_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastAuthorizedTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the connection was last authorized.</p>"}))
    DescribeConnectionResponse.type = Types::DescribeConnectionResponse
    DescribeEndpointRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the endpoint you want to get information about. For example,\n        <code>\"Name\":\"us-east-2-custom_bus_A-endpoint\"</code>.</p>", "smithy.api#required" => {}}))
    DescribeEndpointRequest.add_member(:home_region, Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegion, location_name: 'HomeRegion', traits: {"smithy.api#documentation" => "<p>The primary Region of the endpoint you want to get information about. For example\n        <code>\"HomeRegion\": \"us-east-1\"</code>.</p>"}))
    DescribeEndpointRequest.type = Types::DescribeEndpointRequest
    DescribeEndpointResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the endpoint you asked for information about.</p>"}))
    DescribeEndpointResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the endpoint you asked for information about.</p>"}))
    DescribeEndpointResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the endpoint you asked for information about.</p>"}))
    DescribeEndpointResponse.add_member(:routing_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingConfig, location_name: 'RoutingConfig', traits: {"smithy.api#documentation" => "<p>The routing configuration of the endpoint you asked for information about.</p>"}))
    DescribeEndpointResponse.add_member(:replication_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfig, location_name: 'ReplicationConfig', traits: {"smithy.api#documentation" => "<p>Whether replication is enabled or disabled for the endpoint you asked for information\n      about.</p>"}))
    DescribeEndpointResponse.add_member(:event_buses, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointEventBusList, location_name: 'EventBuses', traits: {"smithy.api#documentation" => "<p>The event buses being used by the endpoint you asked for information about.</p>"}))
    DescribeEndpointResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the role used by the endpoint you asked for information about.</p>"}))
    DescribeEndpointResponse.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointId, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>The ID of the endpoint you asked for information about.</p>"}))
    DescribeEndpointResponse.add_member(:endpoint_url, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointUrl, location_name: 'EndpointUrl', traits: {"smithy.api#documentation" => "<p>The URL of the endpoint you asked for information about.</p>"}))
    DescribeEndpointResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the endpoint you asked for information about.</p>"}))
    DescribeEndpointResponse.add_member(:state_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointStateReason, location_name: 'StateReason', traits: {"smithy.api#documentation" => "<p>The reason the endpoint you asked for information about is in its current state.</p>"}))
    DescribeEndpointResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time the endpoint you asked for information about was created.</p>"}))
    DescribeEndpointResponse.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The last time the endpoint you asked for information about was modified.</p>"}))
    DescribeEndpointResponse.type = Types::DescribeEndpointResponse
    DescribeEventBusRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusNameOrArn, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name or ARN of the event bus to show details for. If you omit this, the default event\n      bus is displayed.</p>"}))
    DescribeEventBusRequest.type = Types::DescribeEventBusRequest
    DescribeEventBusResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the event bus. Currently, this is always <code>default</code>.</p>"}))
    DescribeEventBusResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the account permitted to write events to the current account.</p>"}))
    DescribeEventBusResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The event bus description.</p>"}))
    DescribeEventBusResponse.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyIdentifier, location_name: 'KmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the KMS\n      customer managed key for EventBridge to use to encrypt events on this event bus, if one has been specified.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-encryption.html\">Data encryption in EventBridge</a> in the <i>Amazon EventBridge User Guide</i>.</p>"}))
    DescribeEventBusResponse.add_member(:dead_letter_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DeadLetterConfig, location_name: 'DeadLetterConfig'))
    DescribeEventBusResponse.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The policy that enables the external account to send events to your account.</p>"}))
    DescribeEventBusResponse.add_member(:log_config, Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfig, location_name: 'LogConfig', traits: {"smithy.api#documentation" => "<p>The logging configuration settings for the event bus.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/eb-event-bus-logs.html\">Configuring logs for event buses</a> in the <i>EventBridge User Guide</i>.</p>"}))
    DescribeEventBusResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time the event bus was created.</p>"}))
    DescribeEventBusResponse.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The time the event bus was last modified.</p>"}))
    DescribeEventBusResponse.type = Types::DescribeEventBusResponse
    DescribeEventSourceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the partner event source to display the details of.</p>", "smithy.api#required" => {}}))
    DescribeEventSourceRequest.type = Types::DescribeEventSourceRequest
    DescribeEventSourceResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the partner event source.</p>"}))
    DescribeEventSourceResponse.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatedBy', traits: {"smithy.api#documentation" => "<p>The name of the SaaS partner that created the event source.</p>"}))
    DescribeEventSourceResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The date and time that the event source was created.</p>"}))
    DescribeEventSourceResponse.add_member(:expiration_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExpirationTime', traits: {"smithy.api#documentation" => "<p>The date and time that the event source will expire if you do not create a matching event\n      bus.</p>"}))
    DescribeEventSourceResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the partner event source.</p>"}))
    DescribeEventSourceResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSourceState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the event source. If it is ACTIVE, you have already created a matching event\n      bus for this event source, and that event bus is active. If it is PENDING, either you haven't\n      yet created a matching event bus, or that event bus is deactivated. If it is DELETED, you have\n      created a matching event bus, but the event source has since been deleted.</p>"}))
    DescribeEventSourceResponse.type = Types::DescribeEventSourceResponse
    DescribePartnerEventSourceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the event source to display.</p>", "smithy.api#required" => {}}))
    DescribePartnerEventSourceRequest.type = Types::DescribePartnerEventSourceRequest
    DescribePartnerEventSourceResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the event source.</p>"}))
    DescribePartnerEventSourceResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the event source.</p>"}))
    DescribePartnerEventSourceResponse.type = Types::DescribePartnerEventSourceResponse
    DescribeReplayRequest.add_member(:replay_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplayName, location_name: 'ReplayName', traits: {"smithy.api#documentation" => "<p>The name of the replay to retrieve.</p>", "smithy.api#required" => {}}))
    DescribeReplayRequest.type = Types::DescribeReplayRequest
    DescribeReplayResponse.add_member(:replay_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplayName, location_name: 'ReplayName', traits: {"smithy.api#documentation" => "<p>The name of the replay.</p>"}))
    DescribeReplayResponse.add_member(:replay_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplayArn, location_name: 'ReplayArn', traits: {"smithy.api#documentation" => "<p>The ARN of the replay.</p>"}))
    DescribeReplayResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplayDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the replay.</p>"}))
    DescribeReplayResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplayState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the replay.</p>"}))
    DescribeReplayResponse.add_member(:state_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplayStateReason, location_name: 'StateReason', traits: {"smithy.api#documentation" => "<p>The reason that the replay is in the current state.</p>"}))
    DescribeReplayResponse.add_member(:event_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveArn, location_name: 'EventSourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the archive events were replayed from.</p>"}))
    DescribeReplayResponse.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplayDestination, location_name: 'Destination', traits: {"smithy.api#documentation" => "<p>A <code>ReplayDestination</code> object that contains details about the replay.</p>"}))
    DescribeReplayResponse.add_member(:event_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EventStartTime', traits: {"smithy.api#documentation" => "<p>The time stamp of the first event that was last replayed from the archive.</p>"}))
    DescribeReplayResponse.add_member(:event_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EventEndTime', traits: {"smithy.api#documentation" => "<p>The time stamp for the last event that was replayed from the archive.</p>"}))
    DescribeReplayResponse.add_member(:event_last_replayed_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EventLastReplayedTime', traits: {"smithy.api#documentation" => "<p>The time that the event was last replayed.</p>"}))
    DescribeReplayResponse.add_member(:replay_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ReplayStartTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the replay started.</p>"}))
    DescribeReplayResponse.add_member(:replay_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ReplayEndTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the replay stopped.</p>"}))
    DescribeReplayResponse.type = Types::DescribeReplayResponse
    DescribeRuleRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the rule.</p>", "smithy.api#required" => {}}))
    DescribeRuleRequest.add_member(:event_bus_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusNameOrArn, location_name: 'EventBusName', traits: {"smithy.api#documentation" => "<p>The name or ARN of the event bus associated with the rule. If you omit this, the default\n      event bus is used.</p>"}))
    DescribeRuleRequest.type = Types::DescribeRuleRequest
    DescribeRuleResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the rule.</p>"}))
    DescribeRuleResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the rule.</p>"}))
    DescribeRuleResponse.add_member(:event_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: EventPattern, location_name: 'EventPattern', traits: {"smithy.api#documentation" => "<p>The event pattern. For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html\">Events and Event\n        Patterns</a> in the <i>\n               <i>Amazon EventBridge User Guide</i>\n            </i>.</p>"}))
    DescribeRuleResponse.add_member(:schedule_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: 'ScheduleExpression', traits: {"smithy.api#documentation" => "<p>The scheduling expression. For example, \"cron(0 20 * * ? *)\", \"rate(5 minutes)\".</p>"}))
    DescribeRuleResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>Specifies whether the rule is enabled or disabled.</p>"}))
    DescribeRuleResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the rule.</p>"}))
    DescribeRuleResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role associated with the rule.</p>"}))
    DescribeRuleResponse.add_member(:managed_by, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedBy, location_name: 'ManagedBy', traits: {"smithy.api#documentation" => "<p>If this is a managed rule, created by an Amazon Web Services service on your behalf, this\n      field displays the principal name of the Amazon Web Services service that created the\n      rule.</p>"}))
    DescribeRuleResponse.add_member(:event_bus_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusName, location_name: 'EventBusName', traits: {"smithy.api#documentation" => "<p>The name of the event bus associated with the rule.</p>"}))
    DescribeRuleResponse.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'CreatedBy', traits: {"smithy.api#documentation" => "<p>The account ID of the user that created the rule. If you use <code>PutRule</code> to put a\n      rule on an event bus in another account, the other account is the owner of the rule, and the\n      rule ARN includes the account ID for that account. However, the value for\n        <code>CreatedBy</code> is the account ID as the account that created the rule in the other\n      account.</p>"}))
    DescribeRuleResponse.type = Types::DescribeRuleResponse
    DisableRuleRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the rule.</p>", "smithy.api#required" => {}}))
    DisableRuleRequest.add_member(:event_bus_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusNameOrArn, location_name: 'EventBusName', traits: {"smithy.api#documentation" => "<p>The name or ARN of the event bus associated with the rule. If you omit this, the default\n      event bus is used.</p>"}))
    DisableRuleRequest.type = Types::DisableRuleRequest
    EcsParameters.add_member(:task_definition_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'TaskDefinitionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the task definition to use if the event target is an Amazon ECS task. </p>", "smithy.api#required" => {}}))
    EcsParameters.add_member(:task_count, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitMin1, location_name: 'TaskCount', traits: {"smithy.api#documentation" => "<p>The number of tasks to create based on <code>TaskDefinition</code>. The default is\n      1.</p>"}))
    EcsParameters.add_member(:launch_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchType, location_name: 'LaunchType', traits: {"smithy.api#documentation" => "<p>Specifies the launch type on which your task is running. The launch type that you specify\n      here must match one of the launch type (compatibilities) of the target task. The\n        <code>FARGATE</code> value is supported only in the Regions where Fargate\n      with Amazon ECS is supported. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/AWS-Fargate.html\">Fargate on Amazon ECS</a> in the <i>Amazon Elastic Container Service Developer\n      Guide</i>.</p>"}))
    EcsParameters.add_member(:network_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: 'NetworkConfiguration', traits: {"smithy.api#documentation" => "<p>Use this structure if the Amazon ECS task uses the <code>awsvpc</code> network\n      mode. This structure specifies the VPC subnets and security groups associated with the task,\n      and whether a public IP address is to be used. This structure is required if\n        <code>LaunchType</code> is <code>FARGATE</code> because the <code>awsvpc</code> mode is\n      required for Fargate tasks.</p>\n         <p>If you specify <code>NetworkConfiguration</code> when the target ECS task does not use the\n        <code>awsvpc</code> network mode, the task fails.</p>"}))
    EcsParameters.add_member(:platform_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PlatformVersion', traits: {"smithy.api#documentation" => "<p>Specifies the platform version for the task. Specify only the numeric portion of the\n      platform version, such as <code>1.1.0</code>.</p>\n         <p>This structure is used only if <code>LaunchType</code> is <code>FARGATE</code>. For more\n      information about valid platform versions, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html\">Fargate\n        Platform Versions</a> in the <i>Amazon Elastic Container Service Developer\n      Guide</i>.</p>"}))
    EcsParameters.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Group', traits: {"smithy.api#documentation" => "<p>Specifies an ECS task group for the task. The maximum length is 255 characters.</p>"}))
    EcsParameters.add_member(:capacity_provider_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityProviderStrategy, location_name: 'CapacityProviderStrategy', traits: {"smithy.api#documentation" => "<p>The capacity provider strategy to use for the task.</p>\n         <p>If a <code>capacityProviderStrategy</code> is specified, the <code>launchType</code>\n      parameter must be omitted. If no <code>capacityProviderStrategy</code> or launchType is\n      specified, the <code>defaultCapacityProviderStrategy</code> for the cluster is used. </p>"}))
    EcsParameters.add_member(:enable_ecs_managed_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnableECSManagedTags', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether to enable Amazon ECS managed tags for the task. For more\n      information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html\">Tagging Your Amazon ECS\n        Resources</a> in the Amazon Elastic Container Service Developer Guide. </p>"}))
    EcsParameters.add_member(:enable_execute_command, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnableExecuteCommand', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether or not to enable the execute command functionality for the containers in this\n      task. If true, this enables execute command functionality on all containers in the\n      task.</p>"}))
    EcsParameters.add_member(:placement_constraints, Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementConstraints, location_name: 'PlacementConstraints', traits: {"smithy.api#documentation" => "<p>An array of placement constraint objects to use for the task. You can specify up to 10\n      constraints per task (including constraints in the task definition and those specified at\n      runtime).</p>"}))
    EcsParameters.add_member(:placement_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementStrategies, location_name: 'PlacementStrategy', traits: {"smithy.api#documentation" => "<p>The placement strategy objects to use for the task. You can specify a maximum of five\n      strategy rules per task. </p>"}))
    EcsParameters.add_member(:propagate_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: PropagateTags, location_name: 'PropagateTags', traits: {"smithy.api#documentation" => "<p>Specifies whether to propagate the tags from the task definition to the task. If no value\n      is specified, the tags are not propagated. Tags can only be propagated to the task during task\n      creation. To add tags to a task after task creation, use the TagResource API action. </p>"}))
    EcsParameters.add_member(:reference_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceId, location_name: 'ReferenceId', traits: {"smithy.api#documentation" => "<p>The reference ID to use for the task.</p>"}))
    EcsParameters.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The metadata that you apply to the task to help you categorize and organize them. Each tag\n      consists of a key and an optional value, both of which you define. To learn more, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html#ECS-RunTask-request-tags\">RunTask</a> in the Amazon ECS API Reference.</p>"}))
    EcsParameters.type = Types::EcsParameters
    EnableRuleRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the rule.</p>", "smithy.api#required" => {}}))
    EnableRuleRequest.add_member(:event_bus_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusNameOrArn, location_name: 'EventBusName', traits: {"smithy.api#documentation" => "<p>The name or ARN of the event bus associated with the rule. If you omit this, the default\n      event bus is used.</p>"}))
    EnableRuleRequest.type = Types::EnableRuleRequest
    Endpoint.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the endpoint.</p>"}))
    Endpoint.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description for the endpoint.</p>"}))
    Endpoint.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the endpoint.</p>"}))
    Endpoint.add_member(:routing_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingConfig, location_name: 'RoutingConfig', traits: {"smithy.api#documentation" => "<p>The routing configuration of the endpoint.</p>"}))
    Endpoint.add_member(:replication_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfig, location_name: 'ReplicationConfig', traits: {"smithy.api#documentation" => "<p>Whether event replication was enabled or disabled for this endpoint. The default state is\n        <code>ENABLED</code> which means you must supply a <code>RoleArn</code>. If you don't have a\n        <code>RoleArn</code> or you don't want event replication enabled, set the state to\n        <code>DISABLED</code>.</p>"}))
    Endpoint.add_member(:event_buses, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointEventBusList, location_name: 'EventBuses', traits: {"smithy.api#documentation" => "<p>The event buses being used by the endpoint.</p>"}))
    Endpoint.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the role used by event replication for the endpoint.</p>"}))
    Endpoint.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointId, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>The URL subdomain of the endpoint. For example, if the URL for Endpoint is\n      https://abcde.veo.endpoints.event.amazonaws.com, then the EndpointId is\n      <code>abcde.veo</code>.</p>"}))
    Endpoint.add_member(:endpoint_url, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointUrl, location_name: 'EndpointUrl', traits: {"smithy.api#documentation" => "<p>The URL of the endpoint.</p>"}))
    Endpoint.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the endpoint.</p>"}))
    Endpoint.add_member(:state_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointStateReason, location_name: 'StateReason', traits: {"smithy.api#documentation" => "<p>The reason the endpoint is in its current state.</p>"}))
    Endpoint.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time the endpoint was created.</p>"}))
    Endpoint.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The last time the endpoint was modified.</p>"}))
    Endpoint.type = Types::Endpoint
    EndpointEventBus.add_member(:event_bus_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NonPartnerEventBusArn, location_name: 'EventBusArn', traits: {"smithy.api#documentation" => "<p>The ARN of the event bus the endpoint is associated with.</p>", "smithy.api#required" => {}}))
    EndpointEventBus.type = Types::EndpointEventBus
    EndpointEventBusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointEventBus)
    EndpointList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint)
    EndpointState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    EndpointState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    EndpointState.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    EndpointState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    EndpointState.add_member(:create_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    EndpointState.add_member(:update_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED', traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    EndpointState.add_member(:delete_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    EventBus.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the event bus.</p>"}))
    EventBus.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the event bus.</p>"}))
    EventBus.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The event bus description.</p>"}))
    EventBus.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The permissions policy of the event bus, describing which other Amazon Web Services\n      accounts can write events to this event bus.</p>"}))
    EventBus.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time the event bus was created.</p>"}))
    EventBus.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The time the event bus was last modified.</p>"}))
    EventBus.type = Types::EventBus
    EventBusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventBus)
    EventResourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventResource)
    EventSource.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the event source.</p>"}))
    EventSource.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatedBy', traits: {"smithy.api#documentation" => "<p>The name of the partner that created the event source.</p>"}))
    EventSource.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The date and time the event source was created.</p>"}))
    EventSource.add_member(:expiration_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExpirationTime', traits: {"smithy.api#documentation" => "<p>The date and time that the event source will expire, if the Amazon Web Services account\n      doesn't create a matching event bus for it.</p>"}))
    EventSource.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the event source.</p>"}))
    EventSource.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSourceState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the event source. If it is ACTIVE, you have already created a matching event\n      bus for this event source, and that event bus is active. If it is PENDING, either you haven't\n      yet created a matching event bus, or that event bus is deactivated. If it is DELETED, you have\n      created a matching event bus, but the event source has since been deleted.</p>"}))
    EventSource.type = Types::EventSource
    EventSourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventSource)
    EventSourceState.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    EventSourceState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    EventSourceState.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    FailoverConfig.add_member(:primary, Smithy::Schema::Shapes::ShapeRef.new(shape: Primary, location_name: 'Primary', traits: {"smithy.api#documentation" => "<p>The main Region of the endpoint.</p>", "smithy.api#required" => {}}))
    FailoverConfig.add_member(:secondary, Smithy::Schema::Shapes::ShapeRef.new(shape: Secondary, location_name: 'Secondary', traits: {"smithy.api#documentation" => "<p>The Region that events are routed to when failover is triggered or event replication is\n      enabled.</p>", "smithy.api#required" => {}}))
    FailoverConfig.type = Types::FailoverConfig
    HeaderParametersMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderKey)
    HeaderParametersMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderValue)
    HttpParameters.add_member(:path_parameter_values, Smithy::Schema::Shapes::ShapeRef.new(shape: PathParameterList, location_name: 'PathParameterValues', traits: {"smithy.api#documentation" => "<p>The path parameter values to be used to populate API Gateway API or EventBridge ApiDestination path wildcards (\"*\").</p>"}))
    HttpParameters.add_member(:header_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderParametersMap, location_name: 'HeaderParameters', traits: {"smithy.api#documentation" => "<p>The headers that need to be sent as part of request invoking the API Gateway API or\n        EventBridge ApiDestination.</p>"}))
    HttpParameters.add_member(:query_string_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStringParametersMap, location_name: 'QueryStringParameters', traits: {"smithy.api#documentation" => "<p>The query string keys/values that need to be sent as part of request invoking the API Gateway API or EventBridge ApiDestination.</p>"}))
    HttpParameters.type = Types::HttpParameters
    IllegalStatusException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    IllegalStatusException.type = Types::IllegalStatusException
    IncludeDetail.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    IncludeDetail.add_member(:full, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULL', traits: {"smithy.api#enumValue" => "FULL"}))
    InputTransformer.add_member(:input_paths_map, Smithy::Schema::Shapes::ShapeRef.new(shape: TransformerPaths, location_name: 'InputPathsMap', traits: {"smithy.api#documentation" => "<p>Map of JSON paths to be extracted from the event. You can then insert these in the\n      template in <code>InputTemplate</code> to produce the output you want to be sent to the\n      target.</p>\n         <p>\n            <code>InputPathsMap</code> is an array key-value pairs, where each value is a valid JSON\n      path. You can have as many as 100 key-value pairs. You must use JSON dot notation, not bracket\n      notation.</p>\n         <p>The keys cannot start with \"Amazon Web Services.\" </p>"}))
    InputTransformer.add_member(:input_template, Smithy::Schema::Shapes::ShapeRef.new(shape: TransformerInput, location_name: 'InputTemplate', traits: {"smithy.api#documentation" => "<p>Input template where you specify placeholders that will be filled with the values of the\n      keys from <code>InputPathsMap</code> to customize the data sent to the target. Enclose each\n        <code>InputPathsMaps</code> value in brackets: <<i>value</i>> </p>\n         <p>If <code>InputTemplate</code> is a JSON object (surrounded by curly braces), the following\n      restrictions apply:</p>\n         <ul>\n            <li>\n               <p>The placeholder cannot be used as an object key.</p>\n            </li>\n         </ul>\n         <p>The following example shows the syntax for using <code>InputPathsMap</code> and\n        <code>InputTemplate</code>.</p>\n         <p>\n            <code> \"InputTransformer\":</code>\n         </p>\n         <p>\n            <code>{</code>\n         </p>\n         <p>\n            <code>\"InputPathsMap\": {\"instance\": \"$.detail.instance\",\"status\":\n        \"$.detail.status\"},</code>\n         </p>\n         <p>\n            <code>\"InputTemplate\": \"<instance> is in state <status>\"</code>\n         </p>\n         <p>\n            <code>}</code>\n         </p>\n         <p>To have the <code>InputTemplate</code> include quote marks within a JSON string, escape\n      each quote marks with a slash, as in the following example:</p>\n         <p>\n            <code> \"InputTransformer\":</code>\n         </p>\n         <p>\n            <code>{</code>\n         </p>\n         <p>\n            <code>\"InputPathsMap\": {\"instance\": \"$.detail.instance\",\"status\":\n        \"$.detail.status\"},</code>\n         </p>\n         <p>\n            <code>\"InputTemplate\": \"<instance> is in state \\\"<status>\\\"\"</code>\n         </p>\n         <p>\n            <code>}</code>\n         </p>\n         <p>The <code>InputTemplate</code> can also be valid JSON with varibles in quotes or out, as\n      in the following example:</p>\n         <p>\n            <code> \"InputTransformer\":</code>\n         </p>\n         <p>\n            <code>{</code>\n         </p>\n         <p>\n            <code>\"InputPathsMap\": {\"instance\": \"$.detail.instance\",\"status\":\n        \"$.detail.status\"},</code>\n         </p>\n         <p>\n            <code>\"InputTemplate\": '{\"myInstance\": <instance>,\"myStatus\": \"<instance> is\n        in state \\\"<status>\\\"\"}'</code>\n         </p>\n         <p>\n            <code>}</code>\n         </p>", "smithy.api#required" => {}}))
    InputTransformer.type = Types::InputTransformer
    InternalException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InternalException.type = Types::InternalException
    InvalidEventPatternException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidEventPatternException.type = Types::InvalidEventPatternException
    InvalidStateException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidStateException.type = Types::InvalidStateException
    KinesisParameters.add_member(:partition_key_path, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetPartitionKeyPath, location_name: 'PartitionKeyPath', traits: {"smithy.api#documentation" => "<p>The JSON path to be extracted from the event and used as the partition key. For more\n      information, see <a href=\"https://docs.aws.amazon.com/streams/latest/dev/key-concepts.html#partition-key\">Amazon Kinesis Streams Key\n        Concepts</a> in the <i>Amazon Kinesis Streams Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    KinesisParameters.type = Types::KinesisParameters
    LaunchType.add_member(:ec2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2', traits: {"smithy.api#enumValue" => "EC2"}))
    LaunchType.add_member(:fargate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FARGATE', traits: {"smithy.api#enumValue" => "FARGATE"}))
    LaunchType.add_member(:external, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXTERNAL', traits: {"smithy.api#enumValue" => "EXTERNAL"}))
    Level.add_member(:off, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OFF', traits: {"smithy.api#enumValue" => "OFF"}))
    Level.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    Level.add_member(:info, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFO', traits: {"smithy.api#enumValue" => "INFO"}))
    Level.add_member(:trace, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRACE', traits: {"smithy.api#enumValue" => "TRACE"}))
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    ListApiDestinationsRequest.add_member(:name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDestinationName, location_name: 'NamePrefix', traits: {"smithy.api#documentation" => "<p>A name prefix to filter results returned. Only API destinations with a name that starts\n      with the prefix are returned.</p>"}))
    ListApiDestinationsRequest.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: 'ConnectionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the connection specified for the API destination.</p>"}))
    ListApiDestinationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call, which you can use to retrieve the next set of results.</p>\n         <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using\n      the returned token. Keep all other arguments unchanged.</p>\n         <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>"}))
    ListApiDestinationsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitMax100, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of API destinations to include in the response.</p>"}))
    ListApiDestinationsRequest.type = Types::ListApiDestinationsRequest
    ListApiDestinationsResponse.add_member(:api_destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDestinationResponseList, location_name: 'ApiDestinations', traits: {"smithy.api#documentation" => "<p>An array that includes information about each API\n      destination.</p>"}))
    ListApiDestinationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token indicating there are more results available. If there are no more results, no token is included in the response.</p>\n         <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using\n      the returned token. Keep all other arguments unchanged.</p>\n         <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>"}))
    ListApiDestinationsResponse.type = Types::ListApiDestinationsResponse
    ListArchivesRequest.add_member(:name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveName, location_name: 'NamePrefix', traits: {"smithy.api#documentation" => "<p>A name prefix to filter the archives returned. Only archives with name that match the\n      prefix are returned.</p>"}))
    ListArchivesRequest.add_member(:event_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusArn, location_name: 'EventSourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the event source associated with the archive.</p>"}))
    ListArchivesRequest.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the archive.</p>"}))
    ListArchivesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call, which you can use to retrieve the next set of results.</p>\n         <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using\n      the returned token. Keep all other arguments unchanged.</p>\n         <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>"}))
    ListArchivesRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitMax100, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>"}))
    ListArchivesRequest.type = Types::ListArchivesRequest
    ListArchivesResponse.add_member(:archives, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveResponseList, location_name: 'Archives', traits: {"smithy.api#documentation" => "<p>An array of <code>Archive</code> objects that include details about an archive.</p>"}))
    ListArchivesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token indicating there are more results available. If there are no more results, no token is included in the response.</p>\n         <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using\n      the returned token. Keep all other arguments unchanged.</p>\n         <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>"}))
    ListArchivesResponse.type = Types::ListArchivesResponse
    ListConnectionsRequest.add_member(:name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'NamePrefix', traits: {"smithy.api#documentation" => "<p>A name prefix to filter results returned. Only connections with a name that starts with\n      the prefix are returned.</p>"}))
    ListConnectionsRequest.add_member(:connection_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionState, location_name: 'ConnectionState', traits: {"smithy.api#documentation" => "<p>The state of the connection.</p>"}))
    ListConnectionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call, which you can use to retrieve the next set of results.</p>\n         <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using\n      the returned token. Keep all other arguments unchanged.</p>\n         <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>"}))
    ListConnectionsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitMax100, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of connections to return.</p>"}))
    ListConnectionsRequest.type = Types::ListConnectionsRequest
    ListConnectionsResponse.add_member(:connections, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionResponseList, location_name: 'Connections', traits: {"smithy.api#documentation" => "<p>An array of connections objects that include details about the connections.</p>"}))
    ListConnectionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token indicating there are more results available. If there are no more results, no token is included in the response.</p>\n         <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using\n      the returned token. Keep all other arguments unchanged.</p>\n         <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>"}))
    ListConnectionsResponse.type = Types::ListConnectionsResponse
    ListEndpointsRequest.add_member(:name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointName, location_name: 'NamePrefix', traits: {"smithy.api#documentation" => "<p>A value that will return a subset of the endpoints associated with this account. For\n      example, <code>\"NamePrefix\": \"ABC\"</code> will return all endpoints with \"ABC\" in the\n      name.</p>"}))
    ListEndpointsRequest.add_member(:home_region, Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegion, location_name: 'HomeRegion', traits: {"smithy.api#documentation" => "<p>The primary Region of the endpoints associated with this account. For example\n        <code>\"HomeRegion\": \"us-east-1\"</code>.</p>"}))
    ListEndpointsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call, which you can use to retrieve the next set of results.</p>\n         <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using\n      the returned token. Keep all other arguments unchanged.</p>\n         <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>"}))
    ListEndpointsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitMax100, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results returned by the call.</p>"}))
    ListEndpointsRequest.type = Types::ListEndpointsRequest
    ListEndpointsResponse.add_member(:endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointList, location_name: 'Endpoints', traits: {"smithy.api#documentation" => "<p>The endpoints returned by the call.</p>"}))
    ListEndpointsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token indicating there are more results available. If there are no more results, no token is included in the response.</p>\n         <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using\n      the returned token. Keep all other arguments unchanged.</p>\n         <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>"}))
    ListEndpointsResponse.type = Types::ListEndpointsResponse
    ListEventBusesRequest.add_member(:name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusName, location_name: 'NamePrefix', traits: {"smithy.api#documentation" => "<p>Specifying this limits the results to only those event buses with names that start with\n      the specified prefix.</p>"}))
    ListEventBusesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call, which you can use to retrieve the next set of results.</p>\n         <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using\n      the returned token. Keep all other arguments unchanged.</p>\n         <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>"}))
    ListEventBusesRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitMax100, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>Specifying this limits the number of results returned by this operation. The operation\n      also returns a NextToken which you can use in a subsequent operation to retrieve the next set\n      of results.</p>"}))
    ListEventBusesRequest.type = Types::ListEventBusesRequest
    ListEventBusesResponse.add_member(:event_buses, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusList, location_name: 'EventBuses', traits: {"smithy.api#documentation" => "<p>This list of event buses.</p>"}))
    ListEventBusesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token indicating there are more results available. If there are no more results, no token is included in the response.</p>\n         <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using\n      the returned token. Keep all other arguments unchanged.</p>\n         <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>"}))
    ListEventBusesResponse.type = Types::ListEventBusesResponse
    ListEventSourcesRequest.add_member(:name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSourceNamePrefix, location_name: 'NamePrefix', traits: {"smithy.api#documentation" => "<p>Specifying this limits the results to only those partner event sources with names that\n      start with the specified prefix.</p>"}))
    ListEventSourcesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call, which you can use to retrieve the next set of results.</p>\n         <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using\n      the returned token. Keep all other arguments unchanged.</p>\n         <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>"}))
    ListEventSourcesRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitMax100, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>Specifying this limits the number of results returned by this operation. The operation\n      also returns a NextToken which you can use in a subsequent operation to retrieve the next set\n      of results.</p>"}))
    ListEventSourcesRequest.type = Types::ListEventSourcesRequest
    ListEventSourcesResponse.add_member(:event_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSourceList, location_name: 'EventSources', traits: {"smithy.api#documentation" => "<p>The list of event sources.</p>"}))
    ListEventSourcesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token indicating there are more results available. If there are no more results, no token is included in the response.</p>\n         <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using\n      the returned token. Keep all other arguments unchanged.</p>\n         <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>"}))
    ListEventSourcesResponse.type = Types::ListEventSourcesResponse
    ListPartnerEventSourceAccountsRequest.add_member(:event_source_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSourceName, location_name: 'EventSourceName', traits: {"smithy.api#documentation" => "<p>The name of the partner event source to display account information about.</p>", "smithy.api#required" => {}}))
    ListPartnerEventSourceAccountsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call, which you can use to retrieve the next set of results.</p>\n         <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using\n      the returned token. Keep all other arguments unchanged.</p>\n         <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>"}))
    ListPartnerEventSourceAccountsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitMax100, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>Specifying this limits the number of results returned by this operation. The operation\n      also returns a NextToken which you can use in a subsequent operation to retrieve the next set\n      of results.</p>"}))
    ListPartnerEventSourceAccountsRequest.type = Types::ListPartnerEventSourceAccountsRequest
    ListPartnerEventSourceAccountsResponse.add_member(:partner_event_source_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerEventSourceAccountList, location_name: 'PartnerEventSourceAccounts', traits: {"smithy.api#documentation" => "<p>The list of partner event sources returned by the operation.</p>"}))
    ListPartnerEventSourceAccountsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token indicating there are more results available. If there are no more results, no token is included in the response.</p>\n         <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using\n      the returned token. Keep all other arguments unchanged.</p>\n         <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>"}))
    ListPartnerEventSourceAccountsResponse.type = Types::ListPartnerEventSourceAccountsResponse
    ListPartnerEventSourcesRequest.add_member(:name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerEventSourceNamePrefix, location_name: 'NamePrefix', traits: {"smithy.api#documentation" => "<p>If you specify this, the results are limited to only those partner event sources that\n      start with the string you specify.</p>", "smithy.api#required" => {}}))
    ListPartnerEventSourcesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call, which you can use to retrieve the next set of results.</p>\n         <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using\n      the returned token. Keep all other arguments unchanged.</p>\n         <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>"}))
    ListPartnerEventSourcesRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitMax100, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>pecifying this limits the number of results returned by this operation. The operation also\n      returns a NextToken which you can use in a subsequent operation to retrieve the next set of\n      results.</p>"}))
    ListPartnerEventSourcesRequest.type = Types::ListPartnerEventSourcesRequest
    ListPartnerEventSourcesResponse.add_member(:partner_event_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerEventSourceList, location_name: 'PartnerEventSources', traits: {"smithy.api#documentation" => "<p>The list of partner event sources returned by the operation.</p>"}))
    ListPartnerEventSourcesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token indicating there are more results available. If there are no more results, no token is included in the response.</p>\n         <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using\n      the returned token. Keep all other arguments unchanged.</p>\n         <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>"}))
    ListPartnerEventSourcesResponse.type = Types::ListPartnerEventSourcesResponse
    ListReplaysRequest.add_member(:name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplayName, location_name: 'NamePrefix', traits: {"smithy.api#documentation" => "<p>A name prefix to filter the replays returned. Only replays with name that match the prefix\n      are returned.</p>"}))
    ListReplaysRequest.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplayState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the replay.</p>"}))
    ListReplaysRequest.add_member(:event_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveArn, location_name: 'EventSourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the archive from which the events are replayed.</p>"}))
    ListReplaysRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call, which you can use to retrieve the next set of results.</p>\n         <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using\n      the returned token. Keep all other arguments unchanged.</p>\n         <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>"}))
    ListReplaysRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitMax100, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of replays to retrieve.</p>"}))
    ListReplaysRequest.type = Types::ListReplaysRequest
    ListReplaysResponse.add_member(:replays, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplayList, location_name: 'Replays', traits: {"smithy.api#documentation" => "<p>An array of <code>Replay</code> objects that contain information about the replay.</p>"}))
    ListReplaysResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token indicating there are more results available. If there are no more results, no token is included in the response.</p>\n         <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using\n      the returned token. Keep all other arguments unchanged.</p>\n         <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>"}))
    ListReplaysResponse.type = Types::ListReplaysResponse
    ListRuleNamesByTargetRequest.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetArn, location_name: 'TargetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the target resource.</p>", "smithy.api#required" => {}}))
    ListRuleNamesByTargetRequest.add_member(:event_bus_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusNameOrArn, location_name: 'EventBusName', traits: {"smithy.api#documentation" => "<p>The name or ARN of the event bus to list rules for. If you omit this, the default event\n      bus is used.</p>"}))
    ListRuleNamesByTargetRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call, which you can use to retrieve the next set of results.</p>\n         <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using\n      the returned token. Keep all other arguments unchanged.</p>\n         <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>"}))
    ListRuleNamesByTargetRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitMax100, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>"}))
    ListRuleNamesByTargetRequest.type = Types::ListRuleNamesByTargetRequest
    ListRuleNamesByTargetResponse.add_member(:rule_names, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleNameList, location_name: 'RuleNames', traits: {"smithy.api#documentation" => "<p>The names of the rules that can invoke the given target.</p>"}))
    ListRuleNamesByTargetResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token indicating there are more results available. If there are no more results, no token is included in the response.</p>\n         <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using\n      the returned token. Keep all other arguments unchanged.</p>\n         <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>"}))
    ListRuleNamesByTargetResponse.type = Types::ListRuleNamesByTargetResponse
    ListRulesRequest.add_member(:name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'NamePrefix', traits: {"smithy.api#documentation" => "<p>The prefix matching the rule name.</p>"}))
    ListRulesRequest.add_member(:event_bus_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusNameOrArn, location_name: 'EventBusName', traits: {"smithy.api#documentation" => "<p>The name or ARN of the event bus to list the rules for. If you omit this, the default\n      event bus is used.</p>"}))
    ListRulesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call, which you can use to retrieve the next set of results.</p>\n         <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using\n      the returned token. Keep all other arguments unchanged.</p>\n         <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>"}))
    ListRulesRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitMax100, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>"}))
    ListRulesRequest.type = Types::ListRulesRequest
    ListRulesResponse.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleResponseList, location_name: 'Rules', traits: {"smithy.api#documentation" => "<p>The rules that match the specified criteria.</p>"}))
    ListRulesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token indicating there are more results available. If there are no more results, no token is included in the response.</p>\n         <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using\n      the returned token. Keep all other arguments unchanged.</p>\n         <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>"}))
    ListRulesResponse.type = Types::ListRulesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the EventBridge resource for which you want to view tags.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of tag keys and values associated with the resource you specified</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTargetsByRuleRequest.add_member(:rule, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'Rule', traits: {"smithy.api#documentation" => "<p>The name of the rule.</p>", "smithy.api#required" => {}}))
    ListTargetsByRuleRequest.add_member(:event_bus_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusNameOrArn, location_name: 'EventBusName', traits: {"smithy.api#documentation" => "<p>The name or ARN of the event bus associated with the rule. If you omit this, the default\n      event bus is used.</p>"}))
    ListTargetsByRuleRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call, which you can use to retrieve the next set of results.</p>\n         <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using\n      the returned token. Keep all other arguments unchanged.</p>\n         <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>"}))
    ListTargetsByRuleRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitMax100, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>"}))
    ListTargetsByRuleRequest.type = Types::ListTargetsByRuleRequest
    ListTargetsByRuleResponse.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetList, location_name: 'Targets', traits: {"smithy.api#documentation" => "<p>The targets assigned to the rule.</p>"}))
    ListTargetsByRuleResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token indicating there are more results available. If there are no more results, no token is included in the response.</p>\n         <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using\n      the returned token. Keep all other arguments unchanged.</p>\n         <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>"}))
    ListTargetsByRuleResponse.type = Types::ListTargetsByRuleResponse
    LogConfig.add_member(:include_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeDetail, location_name: 'IncludeDetail', traits: {"smithy.api#documentation" => "<p>Whether EventBridge include detailed event information in the records it generates. \n      Detailed data can be useful for troubleshooting and debugging. This information includes details of the event itself, as well as target details.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-bus-logs.html#eb-event-logs-data\">Including detail data in event bus logs</a> in the <i>EventBridge User Guide</i>.</p>"}))
    LogConfig.add_member(:level, Smithy::Schema::Shapes::ShapeRef.new(shape: Level, location_name: 'Level', traits: {"smithy.api#documentation" => "<p>The level of logging detail to include. This applies to all log destinations for the event bus.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-bus-logs.html#eb-event-bus-logs-level\">Specifying event bus log level</a> in the <i>EventBridge User Guide</i>.</p>"}))
    LogConfig.type = Types::LogConfig
    ManagedRuleException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ManagedRuleException.type = Types::ManagedRuleException
    NetworkConfiguration.add_member(:awsvpc_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsVpcConfiguration, location_name: 'awsvpcConfiguration', traits: {"smithy.api#documentation" => "<p>Use this structure to specify the VPC subnets and security groups for the task, and\n      whether a public IP address is to be used. This structure is relevant only for ECS tasks that\n      use the <code>awsvpc</code> network mode.</p>"}))
    NetworkConfiguration.type = Types::NetworkConfiguration
    OperationDisabledException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    OperationDisabledException.type = Types::OperationDisabledException
    PartnerEventSource.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the partner event source.</p>"}))
    PartnerEventSource.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the partner event source.</p>"}))
    PartnerEventSource.type = Types::PartnerEventSource
    PartnerEventSourceAccount.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'Account', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID that the partner event source was offered to.</p>"}))
    PartnerEventSourceAccount.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The date and time the event source was created.</p>"}))
    PartnerEventSourceAccount.add_member(:expiration_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExpirationTime', traits: {"smithy.api#documentation" => "<p>The date and time that the event source will expire, if the Amazon Web Services account\n      doesn't create a matching event bus for it.</p>"}))
    PartnerEventSourceAccount.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSourceState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the event source. If it is ACTIVE, you have already created a matching event\n      bus for this event source, and that event bus is active. If it is PENDING, either you haven't\n      yet created a matching event bus, or that event bus is deactivated. If it is DELETED, you have\n      created a matching event bus, but the event source has since been deleted.</p>"}))
    PartnerEventSourceAccount.type = Types::PartnerEventSourceAccount
    PartnerEventSourceAccountList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerEventSourceAccount)
    PartnerEventSourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerEventSource)
    PathParameterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PathParameter)
    PlacementConstraint.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementConstraintType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of constraint. Use distinctInstance to ensure that each task in a particular\n      group is running on a different container instance. Use memberOf to restrict the selection to\n      a group of valid candidates. </p>"}))
    PlacementConstraint.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementConstraintExpression, location_name: 'expression', traits: {"smithy.api#documentation" => "<p>A cluster query language expression to apply to the constraint. You cannot specify an\n      expression if the constraint type is <code>distinctInstance</code>. To learn more, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html\">Cluster Query Language</a> in the Amazon Elastic Container Service Developer Guide. </p>"}))
    PlacementConstraint.type = Types::PlacementConstraint
    PlacementConstraintType.add_member(:distinct_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISTINCT_INSTANCE', traits: {"smithy.api#enumValue" => "distinctInstance"}))
    PlacementConstraintType.add_member(:member_of, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEMBER_OF', traits: {"smithy.api#enumValue" => "memberOf"}))
    PlacementConstraints.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementConstraint)
    PlacementStrategies.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementStrategy)
    PlacementStrategy.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementStrategyType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of placement strategy. The random placement strategy randomly places tasks on\n      available candidates. The spread placement strategy spreads placement across available\n      candidates evenly based on the field parameter. The binpack strategy places tasks on available\n      candidates that have the least available amount of the resource that is specified with the\n      field parameter. For example, if you binpack on memory, a task is placed on the instance with\n      the least amount of remaining memory (but still enough to run the task). </p>"}))
    PlacementStrategy.add_member(:field, Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementStrategyField, location_name: 'field', traits: {"smithy.api#documentation" => "<p>The field to apply the placement strategy against. For the spread placement strategy,\n      valid values are instanceId (or host, which has the same effect), or any platform or custom\n      attribute that is applied to a container instance, such as attribute:ecs.availability-zone.\n      For the binpack placement strategy, valid values are cpu and memory. For the random placement\n      strategy, this field is not used. </p>"}))
    PlacementStrategy.type = Types::PlacementStrategy
    PlacementStrategyType.add_member(:random, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RANDOM', traits: {"smithy.api#enumValue" => "random"}))
    PlacementStrategyType.add_member(:spread, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SPREAD', traits: {"smithy.api#enumValue" => "spread"}))
    PlacementStrategyType.add_member(:binpack, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BINPACK', traits: {"smithy.api#enumValue" => "binpack"}))
    PolicyLengthExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    PolicyLengthExceededException.type = Types::PolicyLengthExceededException
    Primary.add_member(:health_check, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheck, location_name: 'HealthCheck', traits: {"smithy.api#documentation" => "<p>The ARN of the health check used by the endpoint to determine whether failover is\n      triggered.</p>", "smithy.api#required" => {}}))
    Primary.type = Types::Primary
    PropagateTags.add_member(:task_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TASK_DEFINITION', traits: {"smithy.api#enumValue" => "TASK_DEFINITION"}))
    PutEventsRequest.add_member(:entries, Smithy::Schema::Shapes::ShapeRef.new(shape: PutEventsRequestEntryList, location_name: 'Entries', traits: {"smithy.api#documentation" => "<p>The entry that defines an event in your system. You can specify several parameters for the\n      entry such as the source and type of the event, resources associated with the event, and so\n      on.</p>", "smithy.api#required" => {}}))
    PutEventsRequest.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointId, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>The URL subdomain of the endpoint. For example, if the URL for Endpoint is\n      https://abcde.veo.endpoints.event.amazonaws.com, then the EndpointId is\n      <code>abcde.veo</code>.</p>\n         <important>\n            <p>When using Java, you must include <code>auth-crt</code> on the class path.</p>\n         </important>", "smithy.rules#contextParam" => {"name" => "EndpointId"}}))
    PutEventsRequest.type = Types::PutEventsRequest
    PutEventsRequestEntry.add_member(:time, Smithy::Schema::Shapes::ShapeRef.new(shape: EventTime, location_name: 'Time', traits: {"smithy.api#documentation" => "<p>The time stamp of the event, per <a href=\"https://www.rfc-editor.org/rfc/rfc3339.txt\">RFC3339</a>. If no time stamp is provided, the time stamp of the <a href=\"https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutEvents.html\">PutEvents</a> call is used.</p>"}))
    PutEventsRequestEntry.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Source', traits: {"smithy.api#documentation" => "<p>The source of the event.</p>\n         <note>\n            <p>\n               <code>Detail</code>, <code>DetailType</code>, and <code>Source</code> are required for EventBridge to successfully send an event to an event bus. \n    If you include event entries in a request that do not include each of those properties, EventBridge fails that entry. \n    If you submit a request in which <i>none</i> of the entries have each of these properties, EventBridge fails the entire request.\n    </p>\n         </note>"}))
    PutEventsRequestEntry.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: EventResourceList, location_name: 'Resources', traits: {"smithy.api#documentation" => "<p>Amazon Web Services resources, identified by Amazon Resource Name (ARN), which the event primarily concerns.\n      Any number, including zero, may be present.</p>"}))
    PutEventsRequestEntry.add_member(:detail_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DetailType', traits: {"smithy.api#documentation" => "<p>Free-form string, with a maximum of 128 characters, used to decide what fields to expect\n      in the event detail.</p>\n         <note>\n            <p>\n               <code>Detail</code>, <code>DetailType</code>, and <code>Source</code> are required for EventBridge to successfully send an event to an event bus. \n    If you include event entries in a request that do not include each of those properties, EventBridge fails that entry. \n    If you submit a request in which <i>none</i> of the entries have each of these properties, EventBridge fails the entire request.\n    </p>\n         </note>"}))
    PutEventsRequestEntry.add_member(:detail, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Detail', traits: {"smithy.api#documentation" => "<p>A valid JSON object. There is no other schema imposed. The JSON object may contain fields\n      and nested sub-objects.</p>\n         <note>\n            <p>\n               <code>Detail</code>, <code>DetailType</code>, and <code>Source</code> are required for EventBridge to successfully send an event to an event bus. \n    If you include event entries in a request that do not include each of those properties, EventBridge fails that entry. \n    If you submit a request in which <i>none</i> of the entries have each of these properties, EventBridge fails the entire request.\n    </p>\n         </note>"}))
    PutEventsRequestEntry.add_member(:event_bus_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonPartnerEventBusNameOrArn, location_name: 'EventBusName', traits: {"smithy.api#documentation" => "<p>The name or ARN of the event bus to receive the event. Only the rules that are associated\n      with this event bus are used to match the event. If you omit this, the default event bus is\n      used.</p>\n         <note>\n            <p>If you're using a global endpoint with a custom bus, you can enter either the name or\n        Amazon Resource Name (ARN) of the event bus in either the primary or secondary Region here. EventBridge then\n        determines the corresponding event bus in the other Region based on the endpoint referenced\n        by the <code>EndpointId</code>. Specifying the event bus ARN is preferred.</p>\n         </note>"}))
    PutEventsRequestEntry.add_member(:trace_header, Smithy::Schema::Shapes::ShapeRef.new(shape: TraceHeader, location_name: 'TraceHeader', traits: {"smithy.api#documentation" => "<p>An X-Ray trace header, which is an http header (X-Amzn-Trace-Id) that\n      contains the trace-id associated with the event.</p>\n         <p>To learn more about X-Ray trace headers, see <a href=\"https://docs.aws.amazon.com/xray/latest/devguide/xray-concepts.html#xray-concepts-tracingheader\">Tracing\n        header</a> in the X-Ray Developer Guide.</p>"}))
    PutEventsRequestEntry.type = Types::PutEventsRequestEntry
    PutEventsRequestEntryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEventsRequestEntry)
    PutEventsResponse.add_member(:failed_entry_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'FailedEntryCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of failed entries.</p>"}))
    PutEventsResponse.add_member(:entries, Smithy::Schema::Shapes::ShapeRef.new(shape: PutEventsResultEntryList, location_name: 'Entries', traits: {"smithy.api#documentation" => "<p>The successfully and unsuccessfully ingested events results. If the ingestion was\n      successful, the entry has the event ID in it. Otherwise, you can use the error code and error\n      message to identify the problem with the entry.</p>\n         <p>For each record, the index of the response element is the same as the index in the request\n      array.</p>"}))
    PutEventsResponse.type = Types::PutEventsResponse
    PutEventsResultEntry.add_member(:event_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EventId, location_name: 'EventId', traits: {"smithy.api#documentation" => "<p>The ID of the event.</p>"}))
    PutEventsResultEntry.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code that indicates why the event submission failed.</p>\n         <p>Retryable errors include:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>\n                     <a href=\"https://docs.aws.amazon.com/eventbridge/latest/APIReference/CommonErrors.html\">InternalFailure</a>\n                  </code>\n               </p>\n               <p>The request processing has failed because of an unknown error, exception or\n          failure.</p>\n            </li>\n            <li>\n               <p>\n                  <code>\n                     <a href=\"https://docs.aws.amazon.com/eventbridge/latest/APIReference/CommonErrors.html\">ThrottlingException</a>\n                  </code>\n               </p>\n               <p>The request was denied due to request throttling.</p>\n            </li>\n         </ul>\n         <p>Non-retryable errors include:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>\n                     <a href=\"https://docs.aws.amazon.com/eventbridge/latest/APIReference/CommonErrors.html\">AccessDeniedException</a>\n                  </code>\n               </p>\n               <p>You do not have sufficient access to perform this action.</p>\n            </li>\n            <li>\n               <p>\n                  <code>InvalidAccountIdException</code>\n               </p>\n               <p>The account ID provided is not valid.</p>\n            </li>\n            <li>\n               <p>\n                  <code>InvalidArgument</code>\n               </p>\n               <p>A specified parameter is not valid.</p>\n            </li>\n            <li>\n               <p>\n                  <code>MalformedDetail</code>\n               </p>\n               <p>The JSON provided is not valid.</p>\n            </li>\n            <li>\n               <p>\n                  <code>RedactionFailure</code>\n               </p>\n               <p>Redacting the CloudTrail event failed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NotAuthorizedForSourceException</code>\n               </p>\n               <p>You do not have permissions to publish events with this source onto this event\n          bus.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NotAuthorizedForDetailTypeException</code>\n               </p>\n               <p>You do not have permissions to publish events with this detail type onto this event\n          bus.</p>\n            </li>\n         </ul>"}))
    PutEventsResultEntry.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message that explains why the event submission failed.</p>"}))
    PutEventsResultEntry.type = Types::PutEventsResultEntry
    PutEventsResultEntryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEventsResultEntry)
    PutPartnerEventsRequest.add_member(:entries, Smithy::Schema::Shapes::ShapeRef.new(shape: PutPartnerEventsRequestEntryList, location_name: 'Entries', traits: {"smithy.api#documentation" => "<p>The list of events to write to the event bus.</p>", "smithy.api#required" => {}}))
    PutPartnerEventsRequest.type = Types::PutPartnerEventsRequest
    PutPartnerEventsRequestEntry.add_member(:time, Smithy::Schema::Shapes::ShapeRef.new(shape: EventTime, location_name: 'Time', traits: {"smithy.api#documentation" => "<p>The date and time of the event.</p>"}))
    PutPartnerEventsRequestEntry.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSourceName, location_name: 'Source', traits: {"smithy.api#documentation" => "<p>The event source that is generating the entry.</p>\n         <note>\n            <p>\n               <code>Detail</code>, <code>DetailType</code>, and <code>Source</code> are required for EventBridge to successfully send an event to an event bus. \n    If you include event entries in a request that do not include each of those properties, EventBridge fails that entry. \n    If you submit a request in which <i>none</i> of the entries have each of these properties, EventBridge fails the entire request.\n    </p>\n         </note>"}))
    PutPartnerEventsRequestEntry.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: EventResourceList, location_name: 'Resources', traits: {"smithy.api#documentation" => "<p>Amazon Web Services resources, identified by Amazon Resource Name (ARN), which the event primarily concerns.\n      Any number, including zero, may be present.</p>"}))
    PutPartnerEventsRequestEntry.add_member(:detail_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DetailType', traits: {"smithy.api#documentation" => "<p>A free-form string, with a maximum of 128 characters, used to decide what fields to expect\n      in the event detail.</p>\n         <note>\n            <p>\n               <code>Detail</code>, <code>DetailType</code>, and <code>Source</code> are required for EventBridge to successfully send an event to an event bus. \n    If you include event entries in a request that do not include each of those properties, EventBridge fails that entry. \n    If you submit a request in which <i>none</i> of the entries have each of these properties, EventBridge fails the entire request.\n    </p>\n         </note>"}))
    PutPartnerEventsRequestEntry.add_member(:detail, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Detail', traits: {"smithy.api#documentation" => "<p>A valid JSON string. There is no other schema imposed. The JSON string may contain fields\n      and nested sub-objects.</p>\n         <note>\n            <p>\n               <code>Detail</code>, <code>DetailType</code>, and <code>Source</code> are required for EventBridge to successfully send an event to an event bus. \n    If you include event entries in a request that do not include each of those properties, EventBridge fails that entry. \n    If you submit a request in which <i>none</i> of the entries have each of these properties, EventBridge fails the entire request.\n    </p>\n         </note>"}))
    PutPartnerEventsRequestEntry.type = Types::PutPartnerEventsRequestEntry
    PutPartnerEventsRequestEntryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PutPartnerEventsRequestEntry)
    PutPartnerEventsResponse.add_member(:failed_entry_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'FailedEntryCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of events from this operation that could not be written to the partner event\n      bus.</p>"}))
    PutPartnerEventsResponse.add_member(:entries, Smithy::Schema::Shapes::ShapeRef.new(shape: PutPartnerEventsResultEntryList, location_name: 'Entries', traits: {"smithy.api#documentation" => "<p>The results for each event entry the partner submitted in this request. If the event was\n      successfully submitted, the entry has the event ID in it. Otherwise, you can use the error\n      code and error message to identify the problem with the entry.</p>\n         <p>For each record, the index of the response element is the same as the index in the request\n      array.</p>"}))
    PutPartnerEventsResponse.type = Types::PutPartnerEventsResponse
    PutPartnerEventsResultEntry.add_member(:event_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EventId, location_name: 'EventId', traits: {"smithy.api#documentation" => "<p>The ID of the event.</p>"}))
    PutPartnerEventsResultEntry.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code that indicates why the event submission failed.</p>"}))
    PutPartnerEventsResultEntry.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message that explains why the event submission failed.</p>"}))
    PutPartnerEventsResultEntry.type = Types::PutPartnerEventsResultEntry
    PutPartnerEventsResultEntryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PutPartnerEventsResultEntry)
    PutPermissionRequest.add_member(:event_bus_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonPartnerEventBusName, location_name: 'EventBusName', traits: {"smithy.api#documentation" => "<p>The name of the event bus associated with the rule. If you omit this, the default event\n      bus is used.</p>"}))
    PutPermissionRequest.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The action that you are enabling the other account to perform.</p>"}))
    PutPermissionRequest.add_member(:principal, Smithy::Schema::Shapes::ShapeRef.new(shape: Principal, location_name: 'Principal', traits: {"smithy.api#documentation" => "<p>The 12-digit Amazon Web Services account ID that you are permitting to put events to your\n      default event bus. Specify \"*\" to permit any account to put events to your default event\n      bus.</p>\n         <p>If you specify \"*\" without specifying <code>Condition</code>, avoid creating rules that\n      may match undesirable events. To create more secure rules, make sure that the event pattern\n      for each rule contains an <code>account</code> field with a specific account ID from which to\n      receive events. Rules with an account field do not match any events sent from other\n      accounts.</p>"}))
    PutPermissionRequest.add_member(:statement_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StatementId, location_name: 'StatementId', traits: {"smithy.api#documentation" => "<p>An identifier string for the external account that you are granting permissions to. If you\n      later want to revoke the permission for this external account, specify this\n        <code>StatementId</code> when you run <a href=\"https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_RemovePermission.html\">RemovePermission</a>.</p>\n         <note>\n            <p>Each <code>StatementId</code> must be unique.</p>\n         </note>"}))
    PutPermissionRequest.add_member(:condition, Smithy::Schema::Shapes::ShapeRef.new(shape: Condition, location_name: 'Condition', traits: {"smithy.api#documentation" => "<p>This parameter enables you to limit the permission to accounts that fulfill a certain\n      condition, such as being a member of a certain Amazon Web Services organization. For more\n      information about Amazon Web Services Organizations, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html\">What Is Amazon Web Services\n        Organizations</a> in the <i>Amazon Web Services Organizations User\n        Guide</i>.</p>\n         <p>If you specify <code>Condition</code> with an Amazon Web Services organization ID, and\n      specify \"*\" as the value for <code>Principal</code>, you grant permission to all the accounts\n      in the named organization.</p>\n         <p>The <code>Condition</code> is a JSON string which must contain <code>Type</code>,\n        <code>Key</code>, and <code>Value</code> fields.</p>"}))
    PutPermissionRequest.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>A JSON string that describes the permission policy statement. You can include a\n        <code>Policy</code> parameter in the request instead of using the <code>StatementId</code>,\n        <code>Action</code>, <code>Principal</code>, or <code>Condition</code> parameters.</p>"}))
    PutPermissionRequest.type = Types::PutPermissionRequest
    PutRuleRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the rule that you are creating or updating.</p>", "smithy.api#required" => {}}))
    PutRuleRequest.add_member(:schedule_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: 'ScheduleExpression', traits: {"smithy.api#documentation" => "<p>The scheduling expression. For example, \"cron(0 20 * * ? *)\" or \"rate(5 minutes)\".</p>"}))
    PutRuleRequest.add_member(:event_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: EventPattern, location_name: 'EventPattern', traits: {"smithy.api#documentation" => "<p>The event pattern. For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html\">Amazon EventBridge event\n        patterns</a> in the <i>\n               <i>Amazon EventBridge User Guide</i>\n            </i>.</p>"}))
    PutRuleRequest.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the rule.</p>\n         <p>Valid values include:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>DISABLED</code>: The rule is disabled. EventBridge does not match any events against the rule.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ENABLED</code>: The rule is enabled. \n          EventBridge matches events against the rule, <i>except</i> for Amazon Web Services management events delivered through CloudTrail.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS</code>: The rule is enabled for all\n        events, including Amazon Web Services management events delivered through CloudTrail.</p>\n               <p>Management events provide visibility into management operations that are performed on\n          resources in your Amazon Web Services account. These are also known as control plane\n          operations. For more information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-events-with-cloudtrail.html#logging-management-events\">Logging management events</a> in the <i>CloudTrail User\n            Guide</i>, and <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-cloudtrail\">Filtering management events from Amazon Web Services services</a> in the\n            <i>\n                     <i>Amazon EventBridge User Guide</i>\n                  </i>.</p>\n               <p>This value is only valid for rules on the <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-what-is-how-it-works-concepts.html#eb-bus-concepts-buses\">default</a> event bus \n          or <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-create-event-bus.html\">custom event buses</a>. \n          It does not apply to <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-saas.html\">partner event buses</a>.</p>\n            </li>\n         </ul>"}))
    PutRuleRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the rule.</p>"}))
    PutRuleRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role associated with the rule.</p>\n         <p>If you're setting an event bus in another account as the target and that account granted\n      permission to your account through an organization instead of directly by the account ID, you\n      must specify a <code>RoleArn</code> with proper permissions in the <code>Target</code>\n      structure, instead of here in this parameter.</p>"}))
    PutRuleRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of key-value pairs to associate with the rule.</p>"}))
    PutRuleRequest.add_member(:event_bus_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusNameOrArn, location_name: 'EventBusName', traits: {"smithy.api#documentation" => "<p>The name or ARN of the event bus to associate with this rule. If you omit this, the\n      default event bus is used.</p>"}))
    PutRuleRequest.type = Types::PutRuleRequest
    PutRuleResponse.add_member(:rule_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'RuleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the rule.</p>"}))
    PutRuleResponse.type = Types::PutRuleResponse
    PutTargetsRequest.add_member(:rule, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'Rule', traits: {"smithy.api#documentation" => "<p>The name of the rule.</p>", "smithy.api#required" => {}}))
    PutTargetsRequest.add_member(:event_bus_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusNameOrArn, location_name: 'EventBusName', traits: {"smithy.api#documentation" => "<p>The name or ARN of the event bus associated with the rule. If you omit this, the default\n      event bus is used.</p>"}))
    PutTargetsRequest.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetList, location_name: 'Targets', traits: {"smithy.api#documentation" => "<p>The targets to update or add to the rule.</p>", "smithy.api#required" => {}}))
    PutTargetsRequest.type = Types::PutTargetsRequest
    PutTargetsResponse.add_member(:failed_entry_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'FailedEntryCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of failed entries.</p>"}))
    PutTargetsResponse.add_member(:failed_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: PutTargetsResultEntryList, location_name: 'FailedEntries', traits: {"smithy.api#documentation" => "<p>The failed target entries.</p>"}))
    PutTargetsResponse.type = Types::PutTargetsResponse
    PutTargetsResultEntry.add_member(:target_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId, location_name: 'TargetId', traits: {"smithy.api#documentation" => "<p>The ID of the target.</p>"}))
    PutTargetsResultEntry.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code that indicates why the target addition failed. If the value is\n        <code>ConcurrentModificationException</code>, too many requests were made at the same\n      time.</p>"}))
    PutTargetsResultEntry.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message that explains why the target addition failed.</p>"}))
    PutTargetsResultEntry.type = Types::PutTargetsResultEntry
    PutTargetsResultEntryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PutTargetsResultEntry)
    QueryStringParametersMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStringKey)
    QueryStringParametersMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStringValue)
    RedshiftDataParameters.add_member(:secret_manager_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftSecretManagerArn, location_name: 'SecretManagerArn', traits: {"smithy.api#documentation" => "<p>The name or ARN of the secret that enables access to the database. Required when\n      authenticating using Amazon Web Services Secrets Manager.</p>"}))
    RedshiftDataParameters.add_member(:database, Smithy::Schema::Shapes::ShapeRef.new(shape: Database, location_name: 'Database', traits: {"smithy.api#documentation" => "<p>The name of the database. Required when authenticating using temporary credentials.</p>", "smithy.api#required" => {}}))
    RedshiftDataParameters.add_member(:db_user, Smithy::Schema::Shapes::ShapeRef.new(shape: DbUser, location_name: 'DbUser', traits: {"smithy.api#documentation" => "<p>The database user name. Required when authenticating using temporary credentials.</p>"}))
    RedshiftDataParameters.add_member(:sql, Smithy::Schema::Shapes::ShapeRef.new(shape: Sql, location_name: 'Sql', traits: {"smithy.api#documentation" => "<p>The SQL statement text to run.</p>"}))
    RedshiftDataParameters.add_member(:statement_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StatementName, location_name: 'StatementName', traits: {"smithy.api#documentation" => "<p>The name of the SQL statement. You can name the SQL statement when you create it to\n      identify the query.</p>"}))
    RedshiftDataParameters.add_member(:with_event, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'WithEvent', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether to send an event back to EventBridge after the SQL statement\n      runs.</p>"}))
    RedshiftDataParameters.add_member(:sqls, Smithy::Schema::Shapes::ShapeRef.new(shape: Sqls, location_name: 'Sqls', traits: {"smithy.api#documentation" => "<p>One or more SQL statements to run. The SQL statements are run as a single transaction.\n      They run serially in the order of the array. Subsequent SQL statements don't start until the\n      previous statement in the array completes. If any SQL statement fails, then because they are\n      run as one transaction, all work is rolled back.</p>"}))
    RedshiftDataParameters.type = Types::RedshiftDataParameters
    RemovePermissionRequest.add_member(:statement_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StatementId, location_name: 'StatementId', traits: {"smithy.api#documentation" => "<p>The statement ID corresponding to the account that is no longer allowed to put events to\n      the default event bus.</p>"}))
    RemovePermissionRequest.add_member(:remove_all_permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RemoveAllPermissions', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether to remove all permissions.</p>"}))
    RemovePermissionRequest.add_member(:event_bus_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonPartnerEventBusName, location_name: 'EventBusName', traits: {"smithy.api#documentation" => "<p>The name of the event bus to revoke permissions for. If you omit this, the default event\n      bus is used.</p>"}))
    RemovePermissionRequest.type = Types::RemovePermissionRequest
    RemoveTargetsRequest.add_member(:rule, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'Rule', traits: {"smithy.api#documentation" => "<p>The name of the rule.</p>", "smithy.api#required" => {}}))
    RemoveTargetsRequest.add_member(:event_bus_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusNameOrArn, location_name: 'EventBusName', traits: {"smithy.api#documentation" => "<p>The name or ARN of the event bus associated with the rule. If you omit this, the default\n      event bus is used.</p>"}))
    RemoveTargetsRequest.add_member(:ids, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetIdList, location_name: 'Ids', traits: {"smithy.api#documentation" => "<p>The IDs of the targets to remove from the rule.</p>", "smithy.api#required" => {}}))
    RemoveTargetsRequest.add_member(:force, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Force', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If this is a managed rule, created by an Amazon Web Services service on your behalf, you\n      must specify <code>Force</code> as <code>True</code> to remove targets. This parameter is\n      ignored for rules that are not managed rules. You can check whether a rule is a managed rule\n      by using <code>DescribeRule</code> or <code>ListRules</code> and checking the\n        <code>ManagedBy</code> field of the response.</p>"}))
    RemoveTargetsRequest.type = Types::RemoveTargetsRequest
    RemoveTargetsResponse.add_member(:failed_entry_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'FailedEntryCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of failed entries.</p>"}))
    RemoveTargetsResponse.add_member(:failed_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTargetsResultEntryList, location_name: 'FailedEntries', traits: {"smithy.api#documentation" => "<p>The failed target entries.</p>"}))
    RemoveTargetsResponse.type = Types::RemoveTargetsResponse
    RemoveTargetsResultEntry.add_member(:target_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId, location_name: 'TargetId', traits: {"smithy.api#documentation" => "<p>The ID of the target.</p>"}))
    RemoveTargetsResultEntry.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code that indicates why the target removal failed. If the value is\n        <code>ConcurrentModificationException</code>, too many requests were made at the same\n      time.</p>"}))
    RemoveTargetsResultEntry.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message that explains why the target removal failed.</p>"}))
    RemoveTargetsResultEntry.type = Types::RemoveTargetsResultEntry
    RemoveTargetsResultEntryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTargetsResultEntry)
    Replay.add_member(:replay_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplayName, location_name: 'ReplayName', traits: {"smithy.api#documentation" => "<p>The name of the replay.</p>"}))
    Replay.add_member(:event_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveArn, location_name: 'EventSourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the archive to replay event from.</p>"}))
    Replay.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplayState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the replay.</p>"}))
    Replay.add_member(:state_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplayStateReason, location_name: 'StateReason', traits: {"smithy.api#documentation" => "<p>A description of why the replay is in the current state.</p>"}))
    Replay.add_member(:event_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EventStartTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time to start replaying events. This is determined by the time in the\n      event as described in <a href=\"https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutEventsRequestEntry.html#eventbridge-Type-PutEventsRequestEntry-Time\">Time</a>.</p>"}))
    Replay.add_member(:event_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EventEndTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time to start replaying events. Any event with a creation time prior\n      to the <code>EventEndTime</code> specified is replayed.</p>"}))
    Replay.add_member(:event_last_replayed_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EventLastReplayedTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the last event was replayed.</p>"}))
    Replay.add_member(:replay_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ReplayStartTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the replay started.</p>"}))
    Replay.add_member(:replay_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ReplayEndTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the replay completed.</p>"}))
    Replay.type = Types::Replay
    ReplayDestination.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the event bus to replay event to. You can replay events only to the event bus\n      specified to create the archive.</p>", "smithy.api#required" => {}}))
    ReplayDestination.add_member(:filter_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplayDestinationFilters, location_name: 'FilterArns', traits: {"smithy.api#documentation" => "<p>A list of ARNs for rules to replay events to.</p>"}))
    ReplayDestination.type = Types::ReplayDestination
    ReplayDestinationFilters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    ReplayList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Replay)
    ReplayState.add_member(:starting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING', traits: {"smithy.api#enumValue" => "STARTING"}))
    ReplayState.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    ReplayState.add_member(:cancelling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLING', traits: {"smithy.api#enumValue" => "CANCELLING"}))
    ReplayState.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ReplayState.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    ReplayState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ReplicationConfig.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of event replication.</p>"}))
    ReplicationConfig.type = Types::ReplicationConfig
    ReplicationState.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    ReplicationState.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    ResourceAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RetryPolicy.add_member(:maximum_retry_attempts, Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumRetryAttempts, location_name: 'MaximumRetryAttempts', traits: {"smithy.api#documentation" => "<p>The maximum number of retry attempts to make before the request fails. Retry attempts\n      continue until either the maximum number of attempts is made or until the duration of the\n        <code>MaximumEventAgeInSeconds</code> is met.</p>"}))
    RetryPolicy.add_member(:maximum_event_age_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumEventAgeInSeconds, location_name: 'MaximumEventAgeInSeconds', traits: {"smithy.api#documentation" => "<p>The maximum amount of time, in seconds, to continue to make retry attempts.</p>"}))
    RetryPolicy.type = Types::RetryPolicy
    RoutingConfig.add_member(:failover_config, Smithy::Schema::Shapes::ShapeRef.new(shape: FailoverConfig, location_name: 'FailoverConfig', traits: {"smithy.api#documentation" => "<p>The failover configuration for an endpoint. This includes what triggers failover and what\n      happens when it's triggered.</p>", "smithy.api#required" => {}}))
    RoutingConfig.type = Types::RoutingConfig
    Rule.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the rule.</p>"}))
    Rule.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the rule.</p>"}))
    Rule.add_member(:event_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: EventPattern, location_name: 'EventPattern', traits: {"smithy.api#documentation" => "<p>The event pattern of the rule. For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html\">Events and Event\n        Patterns</a> in the <i>\n               <i>Amazon EventBridge User Guide</i>\n            </i>.</p>"}))
    Rule.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the rule.</p>\n         <p>Valid values include:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>DISABLED</code>: The rule is disabled. EventBridge does not match any events against the rule.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ENABLED</code>: The rule is enabled. \n          EventBridge matches events against the rule, <i>except</i> for Amazon Web Services management events delivered through CloudTrail.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS</code>: The rule is enabled for all\n        events, including Amazon Web Services management events delivered through CloudTrail.</p>\n               <p>Management events provide visibility into management operations that are performed on\n          resources in your Amazon Web Services account. These are also known as control plane\n          operations. For more information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-events-with-cloudtrail.html#logging-management-events\">Logging management events</a> in the <i>CloudTrail User\n            Guide</i>, and <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-cloudtrail\">Filtering management events from Amazon Web Services services</a> in the\n            <i>\n                     <i>Amazon EventBridge User Guide</i>\n                  </i>.</p>\n               <p>This value is only valid for rules on the <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-what-is-how-it-works-concepts.html#eb-bus-concepts-buses\">default</a> event bus \n          or <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-create-event-bus.html\">custom event buses</a>. \n          It does not apply to <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-saas.html\">partner event buses</a>.</p>\n            </li>\n         </ul>"}))
    Rule.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the rule.</p>"}))
    Rule.add_member(:schedule_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: 'ScheduleExpression', traits: {"smithy.api#documentation" => "<p>The scheduling expression. For example, \"cron(0 20 * * ? *)\", \"rate(5 minutes)\". For more\n      information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-create-rule-schedule.html\">Creating an Amazon EventBridge rule\n        that runs on a schedule</a>.</p>"}))
    Rule.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the role that is used for target invocation.</p>\n         <p>If you're setting an event bus in another account as the target and that account granted\n      permission to your account through an organization instead of directly by the account ID, you\n      must specify a <code>RoleArn</code> with proper permissions in the <code>Target</code>\n      structure, instead of here in this parameter.</p>"}))
    Rule.add_member(:managed_by, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedBy, location_name: 'ManagedBy', traits: {"smithy.api#documentation" => "<p>If the rule was created on behalf of your account by an Amazon Web Services service, this\n      field displays the principal name of the service that created the rule.</p>"}))
    Rule.add_member(:event_bus_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusName, location_name: 'EventBusName', traits: {"smithy.api#documentation" => "<p>The name or ARN of the event bus associated with the rule. If you omit this, the default\n      event bus is used.</p>"}))
    Rule.type = Types::Rule
    RuleNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName)
    RuleResponseList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Rule)
    RuleState.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    RuleState.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    RuleState.add_member(:enabled_with_all_cloudtrail_management_events, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS', traits: {"smithy.api#enumValue" => "ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS"}))
    RunCommandParameters.add_member(:run_command_targets, Smithy::Schema::Shapes::ShapeRef.new(shape: RunCommandTargets, location_name: 'RunCommandTargets', traits: {"smithy.api#documentation" => "<p>Currently, we support including only one RunCommandTarget block, which specifies either an\n      array of InstanceIds or a tag.</p>", "smithy.api#required" => {}}))
    RunCommandParameters.type = Types::RunCommandParameters
    RunCommandTarget.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: RunCommandTargetKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>Can be either <code>tag:</code>\n            <i>tag-key</i> or\n      <code>InstanceIds</code>.</p>", "smithy.api#required" => {}}))
    RunCommandTarget.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: RunCommandTargetValues, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>If <code>Key</code> is <code>tag:</code>\n            <i>tag-key</i>, <code>Values</code>\n      is a list of tag values. If <code>Key</code> is <code>InstanceIds</code>, <code>Values</code>\n      is a list of Amazon EC2 instance IDs.</p>", "smithy.api#required" => {}}))
    RunCommandTarget.type = Types::RunCommandTarget
    RunCommandTargetValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RunCommandTargetValue)
    RunCommandTargets.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RunCommandTarget)
    SageMakerPipelineParameter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SageMakerPipelineParameterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of parameter to start execution of a SageMaker AI Model Building\n      Pipeline.</p>", "smithy.api#required" => {}}))
    SageMakerPipelineParameter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: SageMakerPipelineParameterValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>Value of parameter to start execution of a SageMaker AI Model Building\n      Pipeline.</p>", "smithy.api#required" => {}}))
    SageMakerPipelineParameter.type = Types::SageMakerPipelineParameter
    SageMakerPipelineParameterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SageMakerPipelineParameter)
    SageMakerPipelineParameters.add_member(:pipeline_parameter_list, Smithy::Schema::Shapes::ShapeRef.new(shape: SageMakerPipelineParameterList, location_name: 'PipelineParameterList', traits: {"smithy.api#documentation" => "<p>List of Parameter names and values for SageMaker AI Model Building Pipeline\n      execution.</p>"}))
    SageMakerPipelineParameters.type = Types::SageMakerPipelineParameters
    Secondary.add_member(:route, Smithy::Schema::Shapes::ShapeRef.new(shape: Route, location_name: 'Route', traits: {"smithy.api#documentation" => "<p>Defines the secondary Region.</p>", "smithy.api#required" => {}}))
    Secondary.type = Types::Secondary
    Sqls.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Sql)
    SqsParameters.add_member(:message_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageGroupId, location_name: 'MessageGroupId', traits: {"smithy.api#documentation" => "<p>The FIFO message group ID to use as the target.</p>"}))
    SqsParameters.type = Types::SqsParameters
    StartReplayRequest.add_member(:replay_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplayName, location_name: 'ReplayName', traits: {"smithy.api#documentation" => "<p>The name of the replay to start.</p>", "smithy.api#required" => {}}))
    StartReplayRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplayDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description for the replay to start.</p>"}))
    StartReplayRequest.add_member(:event_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveArn, location_name: 'EventSourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the archive to replay events from.</p>", "smithy.api#required" => {}}))
    StartReplayRequest.add_member(:event_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EventStartTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time to start replaying events. Only events that occurred between the\n        <code>EventStartTime</code> and <code>EventEndTime</code> are replayed.</p>", "smithy.api#required" => {}}))
    StartReplayRequest.add_member(:event_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EventEndTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time to stop replaying events. Only events that occurred between the\n        <code>EventStartTime</code> and <code>EventEndTime</code> are replayed.</p>", "smithy.api#required" => {}}))
    StartReplayRequest.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplayDestination, location_name: 'Destination', traits: {"smithy.api#documentation" => "<p>A <code>ReplayDestination</code> object that includes details about the destination for\n      the replay.</p>", "smithy.api#required" => {}}))
    StartReplayRequest.type = Types::StartReplayRequest
    StartReplayResponse.add_member(:replay_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplayArn, location_name: 'ReplayArn', traits: {"smithy.api#documentation" => "<p>The ARN of the replay.</p>"}))
    StartReplayResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplayState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the replay.</p>"}))
    StartReplayResponse.add_member(:state_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplayStateReason, location_name: 'StateReason', traits: {"smithy.api#documentation" => "<p>The reason that the replay is in the state.</p>"}))
    StartReplayResponse.add_member(:replay_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ReplayStartTime', traits: {"smithy.api#documentation" => "<p>The time at which the replay started.</p>"}))
    StartReplayResponse.type = Types::StartReplayResponse
    StringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>A string you can use to assign a value. The combination of tag keys and values can help\n      you organize and categorize your resources.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value for the specified tag key.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the EventBridge resource that you're adding tags to.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of key-value pairs to associate with the resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Target.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the target within the specified rule. Use this ID to reference the target when\n      updating the rule. We recommend using a memorable and unique string.</p>", "smithy.api#required" => {}}))
    Target.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the target.</p>", "smithy.api#required" => {}}))
    Target.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role to be used for this target when the rule is triggered. If\n      one rule triggers multiple targets, you can use a different IAM role for each target.</p>"}))
    Target.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetInput, location_name: 'Input', traits: {"smithy.api#documentation" => "<p>Valid JSON text passed to the target. In this case, nothing from the event itself is\n      passed to the target. For more information, see <a href=\"http://www.rfc-editor.org/rfc/rfc7159.txt\">The JavaScript Object Notation (JSON) Data\n        Interchange Format</a>.</p>"}))
    Target.add_member(:input_path, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetInputPath, location_name: 'InputPath', traits: {"smithy.api#documentation" => "<p>The value of the JSONPath that is used for extracting part of the matched event when\n      passing it to the target. You may use JSON dot notation or bracket notation. For more\n      information about JSON paths, see <a href=\"http://goessner.net/articles/JsonPath/\">JSONPath</a>.</p>"}))
    Target.add_member(:input_transformer, Smithy::Schema::Shapes::ShapeRef.new(shape: InputTransformer, location_name: 'InputTransformer', traits: {"smithy.api#documentation" => "<p>Settings to enable you to provide custom input to a target based on certain event data.\n      You can extract one or more key-value pairs from the event and then use that data to send\n      customized input to the target.</p>"}))
    Target.add_member(:kinesis_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisParameters, location_name: 'KinesisParameters', traits: {"smithy.api#documentation" => "<p>The custom parameter you can use to control the shard assignment, when the target is a\n      Kinesis data stream. If you do not include this parameter, the default is to use the\n        <code>eventId</code> as the partition key.</p>"}))
    Target.add_member(:run_command_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: RunCommandParameters, location_name: 'RunCommandParameters', traits: {"smithy.api#documentation" => "<p>Parameters used when you are using the rule to invoke Amazon EC2 Run Command.</p>"}))
    Target.add_member(:ecs_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: EcsParameters, location_name: 'EcsParameters', traits: {"smithy.api#documentation" => "<p>Contains the Amazon ECS task definition and task count to be used, if the event target is\n      an Amazon ECS task. For more information about Amazon ECS tasks, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html\">Task\n        Definitions </a> in the <i>Amazon EC2 Container Service Developer\n        Guide</i>.</p>"}))
    Target.add_member(:batch_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchParameters, location_name: 'BatchParameters', traits: {"smithy.api#documentation" => "<p>If the event target is an Batch job, this contains the job definition, job\n      name, and other parameters. For more information, see <a href=\"https://docs.aws.amazon.com/batch/latest/userguide/jobs.html\">Jobs</a> in the <i>Batch\n        User Guide</i>.</p>"}))
    Target.add_member(:sqs_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SqsParameters, location_name: 'SqsParameters', traits: {"smithy.api#documentation" => "<p>Contains the message group ID to use when the target is a FIFO queue.</p>\n         <p>If you specify an SQS FIFO queue as a target, the queue must have content-based\n      deduplication enabled.</p>"}))
    Target.add_member(:http_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpParameters, location_name: 'HttpParameters', traits: {"smithy.api#documentation" => "<p>Contains the HTTP parameters to use when the target is a API Gateway endpoint or\n        EventBridge ApiDestination.</p>\n         <p>If you specify an API Gateway API or EventBridge ApiDestination as a target,\n      you can use this parameter to specify headers, path parameters, and query string keys/values\n      as part of your target invoking request. If you're using ApiDestinations, the corresponding\n      Connection can also have these values configured. In case of any conflicting keys, values from\n      the Connection take precedence.</p>"}))
    Target.add_member(:redshift_data_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftDataParameters, location_name: 'RedshiftDataParameters', traits: {"smithy.api#documentation" => "<p>Contains the Amazon Redshift Data API parameters to use when the target is a Amazon Redshift cluster.</p>\n         <p>If you specify a Amazon Redshift Cluster as a Target, you can use this to specify\n      parameters to invoke the Amazon Redshift Data API ExecuteStatement based on EventBridge events.</p>"}))
    Target.add_member(:sage_maker_pipeline_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SageMakerPipelineParameters, location_name: 'SageMakerPipelineParameters', traits: {"smithy.api#documentation" => "<p>Contains the SageMaker AI Model Building Pipeline parameters to start execution of a\n        SageMaker AI Model Building Pipeline.</p>\n         <p>If you specify a SageMaker AI Model Building Pipeline as a target, you can use this\n      to specify parameters to start a pipeline execution based on EventBridge events.</p>"}))
    Target.add_member(:dead_letter_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DeadLetterConfig, location_name: 'DeadLetterConfig', traits: {"smithy.api#documentation" => "<p>The <code>DeadLetterConfig</code> that defines the target queue to send dead-letter queue\n      events to.</p>"}))
    Target.add_member(:retry_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryPolicy, location_name: 'RetryPolicy', traits: {"smithy.api#documentation" => "<p>The retry policy configuration to use\n      for the dead-letter queue.</p>"}))
    Target.add_member(:app_sync_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: AppSyncParameters, location_name: 'AppSyncParameters', traits: {"smithy.api#documentation" => "<p>Contains the GraphQL operation to be parsed and executed, if the event target is an\n        AppSync API.</p>"}))
    Target.type = Types::Target
    TargetIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId)
    TargetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Target)
    TestEventPatternRequest.add_member(:event_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: EventPattern, location_name: 'EventPattern', traits: {"smithy.api#documentation" => "<p>The event pattern. For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html\">Events and Event\n        Patterns</a> in the <i>\n               <i>Amazon EventBridge User Guide</i>\n            </i>.</p>", "smithy.api#required" => {}}))
    TestEventPatternRequest.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Event', traits: {"smithy.api#documentation" => "<p>The event, in JSON format, to test against the event pattern. The JSON must follow the\n      format specified in <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/aws-events.html\">Amazon Web Services Events</a>, and\n      the following fields are mandatory:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>id</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>account</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>source</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>time</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>region</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>resources</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>detail-type</code>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    TestEventPatternRequest.type = Types::TestEventPatternRequest
    TestEventPatternResponse.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Result', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether the event matches the event pattern.</p>"}))
    TestEventPatternResponse.type = Types::TestEventPatternResponse
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    TransformerPaths.key = Smithy::Schema::Shapes::ShapeRef.new(shape: InputTransformerPathKey)
    TransformerPaths.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetInputPath)
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the EventBridge resource from which you are removing tags.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The list of tag keys to remove from the resource.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateApiDestinationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDestinationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the API destination to update.</p>", "smithy.api#required" => {}}))
    UpdateApiDestinationRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDestinationDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The name of the API destination to update.</p>"}))
    UpdateApiDestinationRequest.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: 'ConnectionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the connection to use for the API destination.</p>"}))
    UpdateApiDestinationRequest.add_member(:invocation_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpsEndpoint, location_name: 'InvocationEndpoint', traits: {"smithy.api#documentation" => "<p>The URL to the endpoint to use for the API destination.</p>"}))
    UpdateApiDestinationRequest.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDestinationHttpMethod, location_name: 'HttpMethod', traits: {"smithy.api#documentation" => "<p>The method to use for the API destination.</p>"}))
    UpdateApiDestinationRequest.add_member(:invocation_rate_limit_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDestinationInvocationRateLimitPerSecond, location_name: 'InvocationRateLimitPerSecond', traits: {"smithy.api#documentation" => "<p>The maximum number of invocations per second to send to the API destination.</p>"}))
    UpdateApiDestinationRequest.type = Types::UpdateApiDestinationRequest
    UpdateApiDestinationResponse.add_member(:api_destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDestinationArn, location_name: 'ApiDestinationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the API destination that was updated.</p>"}))
    UpdateApiDestinationResponse.add_member(:api_destination_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDestinationState, location_name: 'ApiDestinationState', traits: {"smithy.api#documentation" => "<p>The state of the API destination that was updated.</p>"}))
    UpdateApiDestinationResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the API destination was created.</p>"}))
    UpdateApiDestinationResponse.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the API destination was last modified.</p>"}))
    UpdateApiDestinationResponse.type = Types::UpdateApiDestinationResponse
    UpdateArchiveRequest.add_member(:archive_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveName, location_name: 'ArchiveName', traits: {"smithy.api#documentation" => "<p>The name of the archive to update.</p>", "smithy.api#required" => {}}))
    UpdateArchiveRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description for the archive.</p>"}))
    UpdateArchiveRequest.add_member(:event_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: EventPattern, location_name: 'EventPattern', traits: {"smithy.api#documentation" => "<p>The event pattern to use to filter events sent to the archive.</p>"}))
    UpdateArchiveRequest.add_member(:retention_days, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionDays, location_name: 'RetentionDays', traits: {"smithy.api#documentation" => "<p>The number of days to retain events in the archive.</p>"}))
    UpdateArchiveRequest.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyIdentifier, location_name: 'KmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the KMS\n      customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt this archive. The identifier can be the key \n      Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.</p>\n         <p>If you do not specify a customer managed key identifier, EventBridge uses an\n        Amazon Web Services owned key to encrypt the archive.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/viewing-keys.html\">Identify and view keys</a> in the <i>Key Management Service\n                                Developer Guide</i>. </p>\n         <important>\n            <p>If you have specified that EventBridge use a customer managed key for encrypting the source event bus, we strongly recommend you also specify a \n        customer managed key for any archives for the event bus as well. </p>\n            <p>For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/encryption-archives.html\">Encrypting archives</a> in the <i>Amazon EventBridge User Guide</i>.</p>\n         </important>"}))
    UpdateArchiveRequest.type = Types::UpdateArchiveRequest
    UpdateArchiveResponse.add_member(:archive_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveArn, location_name: 'ArchiveArn', traits: {"smithy.api#documentation" => "<p>The ARN of the archive.</p>"}))
    UpdateArchiveResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the archive.</p>"}))
    UpdateArchiveResponse.add_member(:state_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveStateReason, location_name: 'StateReason', traits: {"smithy.api#documentation" => "<p>The reason that the archive is in the current state.</p>"}))
    UpdateArchiveResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time at which the archive was updated.</p>"}))
    UpdateArchiveResponse.type = Types::UpdateArchiveResponse
    UpdateConnectionApiKeyAuthRequestParameters.add_member(:api_key_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthHeaderParameters, location_name: 'ApiKeyName', traits: {"smithy.api#documentation" => "<p>The name of the API key to use for authorization.</p>"}))
    UpdateConnectionApiKeyAuthRequestParameters.add_member(:api_key_value, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthHeaderParametersSensitive, location_name: 'ApiKeyValue', traits: {"smithy.api#documentation" => "<p>The value associated with the API key to use for authorization.</p>"}))
    UpdateConnectionApiKeyAuthRequestParameters.type = Types::UpdateConnectionApiKeyAuthRequestParameters
    UpdateConnectionAuthRequestParameters.add_member(:basic_auth_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectionBasicAuthRequestParameters, location_name: 'BasicAuthParameters', traits: {"smithy.api#documentation" => "<p>The\n      authorization parameters for Basic authorization.</p>"}))
    UpdateConnectionAuthRequestParameters.add_member(:o_auth_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectionOAuthRequestParameters, location_name: 'OAuthParameters', traits: {"smithy.api#documentation" => "<p>The\n      authorization parameters for OAuth authorization.</p>"}))
    UpdateConnectionAuthRequestParameters.add_member(:api_key_auth_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectionApiKeyAuthRequestParameters, location_name: 'ApiKeyAuthParameters', traits: {"smithy.api#documentation" => "<p>The\n      authorization parameters for API key authorization.</p>"}))
    UpdateConnectionAuthRequestParameters.add_member(:invocation_http_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionHttpParameters, location_name: 'InvocationHttpParameters', traits: {"smithy.api#documentation" => "<p>The additional parameters to\n      use for the connection.</p>"}))
    UpdateConnectionAuthRequestParameters.add_member(:connectivity_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectivityResourceParameters, location_name: 'ConnectivityParameters', traits: {"smithy.api#documentation" => "<p>If you specify a private OAuth endpoint, the parameters for EventBridge to use when authenticating against the endpoint.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-target-connection-auth.html\">Authorization methods for connections</a> in the <i>\n               <i>Amazon EventBridge User Guide</i>\n            </i>.</p>"}))
    UpdateConnectionAuthRequestParameters.type = Types::UpdateConnectionAuthRequestParameters
    UpdateConnectionBasicAuthRequestParameters.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthHeaderParameters, location_name: 'Username', traits: {"smithy.api#documentation" => "<p>The user name to use for Basic authorization.</p>"}))
    UpdateConnectionBasicAuthRequestParameters.add_member(:password, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthHeaderParametersSensitive, location_name: 'Password', traits: {"smithy.api#documentation" => "<p>The password associated with the user name to use for Basic authorization.</p>"}))
    UpdateConnectionBasicAuthRequestParameters.type = Types::UpdateConnectionBasicAuthRequestParameters
    UpdateConnectionOAuthClientRequestParameters.add_member(:client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthHeaderParameters, location_name: 'ClientID', traits: {"smithy.api#documentation" => "<p>The client ID to use for OAuth authorization.</p>"}))
    UpdateConnectionOAuthClientRequestParameters.add_member(:client_secret, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthHeaderParametersSensitive, location_name: 'ClientSecret', traits: {"smithy.api#documentation" => "<p>The client secret assciated with the client ID to use for OAuth authorization.</p>"}))
    UpdateConnectionOAuthClientRequestParameters.type = Types::UpdateConnectionOAuthClientRequestParameters
    UpdateConnectionOAuthRequestParameters.add_member(:client_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectionOAuthClientRequestParameters, location_name: 'ClientParameters', traits: {"smithy.api#documentation" => "<p>The\n      client parameters to use for the connection when OAuth is specified as the authorization\n      type.</p>"}))
    UpdateConnectionOAuthRequestParameters.add_member(:authorization_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpsEndpoint, location_name: 'AuthorizationEndpoint', traits: {"smithy.api#documentation" => "<p>The URL to the authorization endpoint when OAuth is specified as the authorization\n      type.</p>"}))
    UpdateConnectionOAuthRequestParameters.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionOAuthHttpMethod, location_name: 'HttpMethod', traits: {"smithy.api#documentation" => "<p>The method used to connect to the HTTP endpoint.</p>"}))
    UpdateConnectionOAuthRequestParameters.add_member(:o_auth_http_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionHttpParameters, location_name: 'OAuthHttpParameters', traits: {"smithy.api#documentation" => "<p>The additional HTTP parameters used for the OAuth authorization request.</p>"}))
    UpdateConnectionOAuthRequestParameters.type = Types::UpdateConnectionOAuthRequestParameters
    UpdateConnectionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the connection to update.</p>", "smithy.api#required" => {}}))
    UpdateConnectionRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description for the connection.</p>"}))
    UpdateConnectionRequest.add_member(:authorization_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAuthorizationType, location_name: 'AuthorizationType', traits: {"smithy.api#documentation" => "<p>The type of authorization to use for the connection.</p>"}))
    UpdateConnectionRequest.add_member(:auth_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectionAuthRequestParameters, location_name: 'AuthParameters', traits: {"smithy.api#documentation" => "<p>The authorization parameters to use for the connection.</p>"}))
    UpdateConnectionRequest.add_member(:invocation_connectivity_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectivityResourceParameters, location_name: 'InvocationConnectivityParameters', traits: {"smithy.api#documentation" => "<p>For connections to private APIs, the parameters to use for invoking the API.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/connection-private.html\">Connecting to private APIs</a> in the <i>\n               <i>Amazon EventBridge User Guide</i>\n            </i>.</p>"}))
    UpdateConnectionRequest.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyIdentifier, location_name: 'KmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the KMS\n      customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt this connection. The identifier can be the key \n      Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.</p>\n         <p>If you do not specify a customer managed key identifier, EventBridge uses an\n        Amazon Web Services owned key to encrypt the connection.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/viewing-keys.html\">Identify and view keys</a> in the <i>Key Management Service\n                                Developer Guide</i>. </p>"}))
    UpdateConnectionRequest.type = Types::UpdateConnectionRequest
    UpdateConnectionResponse.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: 'ConnectionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the connection that was updated.</p>"}))
    UpdateConnectionResponse.add_member(:connection_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionState, location_name: 'ConnectionState', traits: {"smithy.api#documentation" => "<p>The state of the connection that was updated.</p>"}))
    UpdateConnectionResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the connection was created.</p>"}))
    UpdateConnectionResponse.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the connection was last modified.</p>"}))
    UpdateConnectionResponse.add_member(:last_authorized_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastAuthorizedTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the connection was last authorized.</p>"}))
    UpdateConnectionResponse.type = Types::UpdateConnectionResponse
    UpdateEndpointRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the endpoint you want to update.</p>", "smithy.api#required" => {}}))
    UpdateEndpointRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description for the endpoint.</p>"}))
    UpdateEndpointRequest.add_member(:routing_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingConfig, location_name: 'RoutingConfig', traits: {"smithy.api#documentation" => "<p>Configure the routing policy, including the health check and secondary Region.</p>"}))
    UpdateEndpointRequest.add_member(:replication_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfig, location_name: 'ReplicationConfig', traits: {"smithy.api#documentation" => "<p>Whether event replication was enabled or disabled by this request.</p>"}))
    UpdateEndpointRequest.add_member(:event_buses, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointEventBusList, location_name: 'EventBuses', traits: {"smithy.api#documentation" => "<p>Define event buses used for replication.</p>"}))
    UpdateEndpointRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the role used by event replication for this request.</p>"}))
    UpdateEndpointRequest.type = Types::UpdateEndpointRequest
    UpdateEndpointResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the endpoint you updated in this request.</p>"}))
    UpdateEndpointResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the endpoint you updated in this request.</p>"}))
    UpdateEndpointResponse.add_member(:routing_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingConfig, location_name: 'RoutingConfig', traits: {"smithy.api#documentation" => "<p>The routing configuration you updated in this request.</p>"}))
    UpdateEndpointResponse.add_member(:replication_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfig, location_name: 'ReplicationConfig', traits: {"smithy.api#documentation" => "<p>Whether event replication was enabled or disabled for the endpoint you updated in this\n      request.</p>"}))
    UpdateEndpointResponse.add_member(:event_buses, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointEventBusList, location_name: 'EventBuses', traits: {"smithy.api#documentation" => "<p>The event buses used for replication for the endpoint you updated in this request.</p>"}))
    UpdateEndpointResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the role used by event replication for the endpoint you updated in this\n      request.</p>"}))
    UpdateEndpointResponse.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointId, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>The ID of the endpoint you updated in this request.</p>"}))
    UpdateEndpointResponse.add_member(:endpoint_url, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointUrl, location_name: 'EndpointUrl', traits: {"smithy.api#documentation" => "<p>The URL of the endpoint you updated in this request.</p>"}))
    UpdateEndpointResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the endpoint you updated in this request.</p>"}))
    UpdateEndpointResponse.type = Types::UpdateEndpointResponse
    UpdateEventBusRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the event bus.</p>"}))
    UpdateEventBusRequest.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyIdentifier, location_name: 'KmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the KMS\n      customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt events on this event bus. The identifier can be the key \n      Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.</p>\n         <p>If you do not specify a customer managed key identifier, EventBridge uses an\n        Amazon Web Services owned key to encrypt events on the event bus.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/viewing-keys.html\">Identify and view keys</a> in the <i>Key Management Service\n                                Developer Guide</i>. </p>\n         <note>\n            <p>Schema discovery is not supported for event buses encrypted using a\n        customer managed key. EventBridge returns an error if: </p>\n            <ul>\n               <li>\n                  <p>You call <code>\n                        <a href=\"https://docs.aws.amazon.com/eventbridge/latest/schema-reference/v1-discoverers.html#CreateDiscoverer\">CreateDiscoverer</a>\n                     </code> on an event bus set to use a customer managed key for encryption.</p>\n               </li>\n               <li>\n                  <p>You call <code>\n                        <a href=\"https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_UpdatedEventBus.html\">UpdatedEventBus</a>\n                     </code> to set a customer managed key on an event bus with schema discovery enabled.</p>\n               </li>\n            </ul>\n            <p>To enable schema discovery on an event bus, choose to\n        use an Amazon Web Services owned key. For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-encryption-event-bus-cmkey.html\">Encrypting events</a> in the <i>Amazon EventBridge User Guide</i>.</p>\n         </note>\n         <important>\n            <p>If you have specified that EventBridge use a customer managed key for encrypting the source event bus, we strongly recommend you also specify a \n        customer managed key for any archives for the event bus as well. </p>\n            <p>For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/encryption-archives.html\">Encrypting archives</a> in the <i>Amazon EventBridge User Guide</i>.</p>\n         </important>"}))
    UpdateEventBusRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The event bus description.</p>"}))
    UpdateEventBusRequest.add_member(:dead_letter_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DeadLetterConfig, location_name: 'DeadLetterConfig'))
    UpdateEventBusRequest.add_member(:log_config, Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfig, location_name: 'LogConfig', traits: {"smithy.api#documentation" => "<p>The logging configuration settings for the event bus.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/eb-event-bus-logs.html\">Configuring logs for event buses</a> in the <i>EventBridge User Guide</i>.</p>"}))
    UpdateEventBusRequest.type = Types::UpdateEventBusRequest
    UpdateEventBusResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The event bus Amazon Resource Name (ARN).</p>"}))
    UpdateEventBusResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The event bus name.</p>"}))
    UpdateEventBusResponse.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyIdentifier, location_name: 'KmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the KMS\n      customer managed key for EventBridge to use to encrypt events on this event bus, if one has been specified.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-encryption.html\">Data encryption in EventBridge</a> in the <i>Amazon EventBridge User Guide</i>.</p>"}))
    UpdateEventBusResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The event bus description.</p>"}))
    UpdateEventBusResponse.add_member(:dead_letter_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DeadLetterConfig, location_name: 'DeadLetterConfig'))
    UpdateEventBusResponse.add_member(:log_config, Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfig, location_name: 'LogConfig', traits: {"smithy.api#documentation" => "<p>The logging configuration settings for the event bus.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/eb-event-bus-logs.html\">Configuring logs for event buses</a> in the <i>EventBridge User Guide</i>.</p>"}))
    UpdateEventBusResponse.type = Types::UpdateEventBusResponse

    AWSEvents = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.eventbridge#AWSEvents"
      service.name = "AWSEvents"
      service.version = "2015-10-07"
      service.traits = {"aws.api#service" => {"sdkId" => "EventBridge", "arnNamespace" => "events", "cloudFormationName" => "Events", "cloudTrailEventSource" => "events.amazonaws.com", "endpointPrefix" => "events"}, "aws.auth#sigv4" => {"name" => "events"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon EventBridge", "smithy.api#xmlNamespace" => {"uri" => "http://events.amazonaws.com/doc/2015-10-07"}}
      service.add_operation(:activate_event_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#ActivateEventSource"
        operation.name = "ActivateEventSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ActivateEventSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:cancel_replay, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#CancelReplay"
        operation.name = "CancelReplay"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelReplayRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelReplayResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_api_destination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#CreateApiDestination"
        operation.name = "CreateApiDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApiDestinationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApiDestinationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_archive, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#CreateArchive"
        operation.name = "CreateArchive"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateArchiveRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateArchiveResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEventPatternException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#CreateConnection"
        operation.name = "CreateConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:create_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#CreateEndpoint"
        operation.name = "CreateEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.traits = {}
      end)
      service.add_operation(:create_event_bus, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#CreateEventBus"
        operation.name = "CreateEventBus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEventBusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEventBusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_partner_event_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#CreatePartnerEventSource"
        operation.name = "CreatePartnerEventSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePartnerEventSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePartnerEventSourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.traits = {}
      end)
      service.add_operation(:deactivate_event_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#DeactivateEventSource"
        operation.name = "DeactivateEventSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeactivateEventSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:deauthorize_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#DeauthorizeConnection"
        operation.name = "DeauthorizeConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeauthorizeConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeauthorizeConnectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_api_destination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#DeleteApiDestination"
        operation.name = "DeleteApiDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApiDestinationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApiDestinationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_archive, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#DeleteArchive"
        operation.name = "DeleteArchive"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteArchiveRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteArchiveResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#DeleteConnection"
        operation.name = "DeleteConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#DeleteEndpoint"
        operation.name = "DeleteEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_event_bus, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#DeleteEventBus"
        operation.name = "DeleteEventBus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventBusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.traits = {}
      end)
      service.add_operation(:delete_partner_event_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#DeletePartnerEventSource"
        operation.name = "DeletePartnerEventSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePartnerEventSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationDisabledException)
        operation.traits = {}
      end)
      service.add_operation(:delete_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#DeleteRule"
        operation.name = "DeleteRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedRuleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_api_destination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#DescribeApiDestination"
        operation.name = "DescribeApiDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApiDestinationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApiDestinationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_archive, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#DescribeArchive"
        operation.name = "DescribeArchive"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeArchiveRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeArchiveResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#DescribeConnection"
        operation.name = "DescribeConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConnectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#DescribeEndpoint"
        operation.name = "DescribeEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_event_bus, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#DescribeEventBus"
        operation.name = "DescribeEventBus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventBusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventBusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_event_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#DescribeEventSource"
        operation.name = "DescribeEventSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventSourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_partner_event_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#DescribePartnerEventSource"
        operation.name = "DescribePartnerEventSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePartnerEventSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePartnerEventSourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_replay, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#DescribeReplay"
        operation.name = "DescribeReplay"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplayRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplayResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#DescribeRule"
        operation.name = "DescribeRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeRuleFailure", "params" => {"Name" => "fake-rule"}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"failure" => {}}}]}
      end)
      service.add_operation(:disable_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#DisableRule"
        operation.name = "DisableRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedRuleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:enable_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#EnableRule"
        operation.name = "EnableRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedRuleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_api_destinations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#ListApiDestinations"
        operation.name = "ListApiDestinations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApiDestinationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApiDestinationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.traits = {}
      end)
      service.add_operation(:list_archives, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#ListArchives"
        operation.name = "ListArchives"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListArchivesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListArchivesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_connections, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#ListConnections"
        operation.name = "ListConnections"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.traits = {}
      end)
      service.add_operation(:list_endpoints, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#ListEndpoints"
        operation.name = "ListEndpoints"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEndpointsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEndpointsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.traits = {}
      end)
      service.add_operation(:list_event_buses, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#ListEventBuses"
        operation.name = "ListEventBuses"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventBusesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventBusesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.traits = {}
      end)
      service.add_operation(:list_event_sources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#ListEventSources"
        operation.name = "ListEventSources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventSourcesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventSourcesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationDisabledException)
        operation.traits = {}
      end)
      service.add_operation(:list_partner_event_source_accounts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#ListPartnerEventSourceAccounts"
        operation.name = "ListPartnerEventSourceAccounts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPartnerEventSourceAccountsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPartnerEventSourceAccountsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_partner_event_sources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#ListPartnerEventSources"
        operation.name = "ListPartnerEventSources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPartnerEventSourcesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPartnerEventSourcesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationDisabledException)
        operation.traits = {}
      end)
      service.add_operation(:list_replays, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#ListReplays"
        operation.name = "ListReplays"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReplaysRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReplaysResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.traits = {}
      end)
      service.add_operation(:list_rule_names_by_target, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#ListRuleNamesByTarget"
        operation.name = "ListRuleNamesByTarget"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRuleNamesByTargetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRuleNamesByTargetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_rules, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#ListRules"
        operation.name = "ListRules"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRulesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRulesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListRulesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_targets_by_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#ListTargetsByRule"
        operation.name = "ListTargetsByRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTargetsByRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTargetsByRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:put_events, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#PutEvents"
        operation.name = "PutEvents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEventsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEventsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.traits = {}
      end)
      service.add_operation(:put_partner_events, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#PutPartnerEvents"
        operation.name = "PutPartnerEvents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutPartnerEventsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutPartnerEventsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationDisabledException)
        operation.traits = {}
      end)
      service.add_operation(:put_permission, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#PutPermission"
        operation.name = "PutPermission"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutPermissionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyLengthExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:put_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#PutRule"
        operation.name = "PutRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEventPatternException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedRuleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:put_targets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#PutTargets"
        operation.name = "PutTargets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutTargetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutTargetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedRuleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:remove_permission, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#RemovePermission"
        operation.name = "RemovePermission"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemovePermissionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:remove_targets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#RemoveTargets"
        operation.name = "RemoveTargets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTargetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTargetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedRuleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:start_replay, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#StartReplay"
        operation.name = "StartReplay"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartReplayRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartReplayResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEventPatternException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedRuleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:test_event_pattern, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#TestEventPattern"
        operation.name = "TestEventPattern"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TestEventPatternRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TestEventPatternResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEventPatternException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedRuleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_api_destination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#UpdateApiDestination"
        operation.name = "UpdateApiDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApiDestinationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApiDestinationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_archive, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#UpdateArchive"
        operation.name = "UpdateArchive"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateArchiveRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateArchiveResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEventPatternException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#UpdateConnection"
        operation.name = "UpdateConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#UpdateEndpoint"
        operation.name = "UpdateEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_event_bus, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridge#UpdateEventBus"
        operation.name = "UpdateEventBus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEventBusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEventBusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
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
