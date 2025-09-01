# frozen_string_literal: true

# This is generated code!

module Aws::CloudWatchEvents
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    Action = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#Action', name: 'Action', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^events:[a-zA-Z]+$"})
    ActivateEventSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ActivateEventSourceRequest', name: 'ActivateEventSourceRequest')
    ApiDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ApiDestination', name: 'ApiDestination')
    ApiDestinationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#ApiDestinationArn', name: 'ApiDestinationArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:aws([a-z]|\\-)*:events:([a-z]|\\d|\\-)*:([0-9]{12})?:api-destination\\/[\\.\\-_A-Za-z0-9]+\\/[\\-A-Za-z0-9]+$"})
    ApiDestinationDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#ApiDestinationDescription', name: 'ApiDestinationDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => ".*"})
    ApiDestinationHttpMethod = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchevents#ApiDestinationHttpMethod', name: 'ApiDestinationHttpMethod')
    ApiDestinationInvocationRateLimitPerSecond = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchevents#ApiDestinationInvocationRateLimitPerSecond', name: 'ApiDestinationInvocationRateLimitPerSecond', traits: {"smithy.api#range" => {"min" => 1}})
    ApiDestinationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#ApiDestinationName', name: 'ApiDestinationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\.\\-_A-Za-z0-9]+$"})
    ApiDestinationResponseList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#ApiDestinationResponseList', name: 'ApiDestinationResponseList')
    ApiDestinationState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchevents#ApiDestinationState', name: 'ApiDestinationState')
    Archive = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#Archive', name: 'Archive')
    ArchiveArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#ArchiveArn', name: 'ArchiveArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:aws([a-z]|\\-)*:events:([a-z]|\\d|\\-)*:([0-9]{12})?:.+\\/.+$"})
    ArchiveDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#ArchiveDescription', name: 'ArchiveDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => ".*"})
    ArchiveName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#ArchiveName', name: 'ArchiveName', traits: {"smithy.api#length" => {"min" => 1, "max" => 48}, "smithy.api#pattern" => "^[\\.\\-_A-Za-z0-9]+$"})
    ArchiveResponseList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#ArchiveResponseList', name: 'ArchiveResponseList')
    ArchiveState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchevents#ArchiveState', name: 'ArchiveState')
    ArchiveStateReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#ArchiveStateReason', name: 'ArchiveStateReason', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => ".*"})
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}})
    AssignPublicIp = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchevents#AssignPublicIp', name: 'AssignPublicIp')
    AuthHeaderParameters = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#AuthHeaderParameters', name: 'AuthHeaderParameters', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[ \\t]*[^\\x00-\\x1F:\\x7F]+([ \\t]+[^\\x00-\\x1F:\\x7F]+)*[ \\t]*$"})
    AuthHeaderParametersSensitive = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#AuthHeaderParametersSensitive', name: 'AuthHeaderParametersSensitive', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[ \\t]*[^\\x00-\\x1F:\\x7F]+([ \\t]+[^\\x00-\\x1F:\\x7F]+)*[ \\t]*$", "smithy.api#sensitive" => {}})
    AwsVpcConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#AwsVpcConfiguration', name: 'AwsVpcConfiguration')
    BatchArrayProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#BatchArrayProperties', name: 'BatchArrayProperties')
    BatchParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#BatchParameters', name: 'BatchParameters')
    BatchRetryStrategy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#BatchRetryStrategy', name: 'BatchRetryStrategy')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cloudwatchevents#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    CancelReplayRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#CancelReplayRequest', name: 'CancelReplayRequest')
    CancelReplayResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#CancelReplayResponse', name: 'CancelReplayResponse')
    CapacityProvider = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#CapacityProvider', name: 'CapacityProvider', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    CapacityProviderStrategy = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#CapacityProviderStrategy', name: 'CapacityProviderStrategy', traits: {"smithy.api#length" => {"min" => 0, "max" => 6}})
    CapacityProviderStrategyItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#CapacityProviderStrategyItem', name: 'CapacityProviderStrategyItem')
    CapacityProviderStrategyItemBase = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchevents#CapacityProviderStrategyItemBase', name: 'CapacityProviderStrategyItemBase', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100000}})
    CapacityProviderStrategyItemWeight = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchevents#CapacityProviderStrategyItemWeight', name: 'CapacityProviderStrategyItemWeight', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1000}})
    ConcurrentModificationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ConcurrentModificationException', name: 'ConcurrentModificationException', traits: {"smithy.api#error" => "client"})
    Condition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#Condition', name: 'Condition')
    Connection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#Connection', name: 'Connection')
    ConnectionApiKeyAuthResponseParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ConnectionApiKeyAuthResponseParameters', name: 'ConnectionApiKeyAuthResponseParameters')
    ConnectionArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#ConnectionArn', name: 'ConnectionArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:aws([a-z]|\\-)*:events:([a-z]|\\d|\\-)*:([0-9]{12})?:connection\\/[\\.\\-_A-Za-z0-9]+\\/[\\-A-Za-z0-9]+$"})
    ConnectionAuthResponseParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ConnectionAuthResponseParameters', name: 'ConnectionAuthResponseParameters')
    ConnectionAuthorizationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchevents#ConnectionAuthorizationType', name: 'ConnectionAuthorizationType')
    ConnectionBasicAuthResponseParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ConnectionBasicAuthResponseParameters', name: 'ConnectionBasicAuthResponseParameters')
    ConnectionBodyParameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ConnectionBodyParameter', name: 'ConnectionBodyParameter')
    ConnectionBodyParametersList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#ConnectionBodyParametersList', name: 'ConnectionBodyParametersList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ConnectionDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#ConnectionDescription', name: 'ConnectionDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => ".*"})
    ConnectionHeaderParameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ConnectionHeaderParameter', name: 'ConnectionHeaderParameter')
    ConnectionHeaderParametersList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#ConnectionHeaderParametersList', name: 'ConnectionHeaderParametersList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ConnectionHttpParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ConnectionHttpParameters', name: 'ConnectionHttpParameters')
    ConnectionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#ConnectionName', name: 'ConnectionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\.\\-_A-Za-z0-9]+$"})
    ConnectionOAuthClientResponseParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ConnectionOAuthClientResponseParameters', name: 'ConnectionOAuthClientResponseParameters')
    ConnectionOAuthHttpMethod = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchevents#ConnectionOAuthHttpMethod', name: 'ConnectionOAuthHttpMethod')
    ConnectionOAuthResponseParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ConnectionOAuthResponseParameters', name: 'ConnectionOAuthResponseParameters')
    ConnectionQueryStringParameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ConnectionQueryStringParameter', name: 'ConnectionQueryStringParameter')
    ConnectionQueryStringParametersList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#ConnectionQueryStringParametersList', name: 'ConnectionQueryStringParametersList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ConnectionResponseList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#ConnectionResponseList', name: 'ConnectionResponseList')
    ConnectionState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchevents#ConnectionState', name: 'ConnectionState')
    ConnectionStateReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#ConnectionStateReason', name: 'ConnectionStateReason', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => ".*"})
    CreateApiDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#CreateApiDestinationRequest', name: 'CreateApiDestinationRequest')
    CreateApiDestinationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#CreateApiDestinationResponse', name: 'CreateApiDestinationResponse')
    CreateArchiveRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#CreateArchiveRequest', name: 'CreateArchiveRequest')
    CreateArchiveResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#CreateArchiveResponse', name: 'CreateArchiveResponse')
    CreateConnectionApiKeyAuthRequestParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#CreateConnectionApiKeyAuthRequestParameters', name: 'CreateConnectionApiKeyAuthRequestParameters')
    CreateConnectionAuthRequestParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#CreateConnectionAuthRequestParameters', name: 'CreateConnectionAuthRequestParameters')
    CreateConnectionBasicAuthRequestParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#CreateConnectionBasicAuthRequestParameters', name: 'CreateConnectionBasicAuthRequestParameters')
    CreateConnectionOAuthClientRequestParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#CreateConnectionOAuthClientRequestParameters', name: 'CreateConnectionOAuthClientRequestParameters')
    CreateConnectionOAuthRequestParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#CreateConnectionOAuthRequestParameters', name: 'CreateConnectionOAuthRequestParameters')
    CreateConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#CreateConnectionRequest', name: 'CreateConnectionRequest')
    CreateConnectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#CreateConnectionResponse', name: 'CreateConnectionResponse')
    CreateEventBusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#CreateEventBusRequest', name: 'CreateEventBusRequest')
    CreateEventBusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#CreateEventBusResponse', name: 'CreateEventBusResponse')
    CreatePartnerEventSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#CreatePartnerEventSourceRequest', name: 'CreatePartnerEventSourceRequest')
    CreatePartnerEventSourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#CreatePartnerEventSourceResponse', name: 'CreatePartnerEventSourceResponse')
    CreatedBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#CreatedBy', name: 'CreatedBy', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    Database = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#Database', name: 'Database', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    DbUser = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#DbUser', name: 'DbUser', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    DeactivateEventSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#DeactivateEventSourceRequest', name: 'DeactivateEventSourceRequest')
    DeadLetterConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#DeadLetterConfig', name: 'DeadLetterConfig')
    DeauthorizeConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#DeauthorizeConnectionRequest', name: 'DeauthorizeConnectionRequest')
    DeauthorizeConnectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#DeauthorizeConnectionResponse', name: 'DeauthorizeConnectionResponse')
    DeleteApiDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#DeleteApiDestinationRequest', name: 'DeleteApiDestinationRequest')
    DeleteApiDestinationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#DeleteApiDestinationResponse', name: 'DeleteApiDestinationResponse')
    DeleteArchiveRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#DeleteArchiveRequest', name: 'DeleteArchiveRequest')
    DeleteArchiveResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#DeleteArchiveResponse', name: 'DeleteArchiveResponse')
    DeleteConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#DeleteConnectionRequest', name: 'DeleteConnectionRequest')
    DeleteConnectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#DeleteConnectionResponse', name: 'DeleteConnectionResponse')
    DeleteEventBusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#DeleteEventBusRequest', name: 'DeleteEventBusRequest')
    DeletePartnerEventSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#DeletePartnerEventSourceRequest', name: 'DeletePartnerEventSourceRequest')
    DeleteRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#DeleteRuleRequest', name: 'DeleteRuleRequest')
    DescribeApiDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#DescribeApiDestinationRequest', name: 'DescribeApiDestinationRequest')
    DescribeApiDestinationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#DescribeApiDestinationResponse', name: 'DescribeApiDestinationResponse')
    DescribeArchiveRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#DescribeArchiveRequest', name: 'DescribeArchiveRequest')
    DescribeArchiveResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#DescribeArchiveResponse', name: 'DescribeArchiveResponse')
    DescribeConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#DescribeConnectionRequest', name: 'DescribeConnectionRequest')
    DescribeConnectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#DescribeConnectionResponse', name: 'DescribeConnectionResponse')
    DescribeEventBusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#DescribeEventBusRequest', name: 'DescribeEventBusRequest')
    DescribeEventBusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#DescribeEventBusResponse', name: 'DescribeEventBusResponse')
    DescribeEventSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#DescribeEventSourceRequest', name: 'DescribeEventSourceRequest')
    DescribeEventSourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#DescribeEventSourceResponse', name: 'DescribeEventSourceResponse')
    DescribePartnerEventSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#DescribePartnerEventSourceRequest', name: 'DescribePartnerEventSourceRequest')
    DescribePartnerEventSourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#DescribePartnerEventSourceResponse', name: 'DescribePartnerEventSourceResponse')
    DescribeReplayRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#DescribeReplayRequest', name: 'DescribeReplayRequest')
    DescribeReplayResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#DescribeReplayResponse', name: 'DescribeReplayResponse')
    DescribeRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#DescribeRuleRequest', name: 'DescribeRuleRequest')
    DescribeRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#DescribeRuleResponse', name: 'DescribeRuleResponse')
    DisableRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#DisableRuleRequest', name: 'DisableRuleRequest')
    EcsParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#EcsParameters', name: 'EcsParameters')
    EnableRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#EnableRuleRequest', name: 'EnableRuleRequest')
    ErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#ErrorCode', name: 'ErrorCode')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#ErrorMessage', name: 'ErrorMessage')
    EventBus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#EventBus', name: 'EventBus')
    EventBusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#EventBusList', name: 'EventBusList')
    EventBusName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#EventBusName', name: 'EventBusName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[/\\.\\-_A-Za-z0-9]+$"})
    EventBusNameOrArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#EventBusNameOrArn', name: 'EventBusNameOrArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^(arn:aws[\\w-]*:events:[a-z]{2}-[a-z]+-[\\w-]+:[0-9]{12}:event-bus\\/)?[/\\.\\-_A-Za-z0-9]+$"})
    EventId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#EventId', name: 'EventId')
    EventPattern = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#EventPattern', name: 'EventPattern')
    EventResource = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#EventResource', name: 'EventResource')
    EventResourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#EventResourceList', name: 'EventResourceList')
    EventSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#EventSource', name: 'EventSource')
    EventSourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#EventSourceList', name: 'EventSourceList')
    EventSourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#EventSourceName', name: 'EventSourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^aws\\.partner(/[\\.\\-_A-Za-z0-9]+){2,}$"})
    EventSourceNamePrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#EventSourceNamePrefix', name: 'EventSourceNamePrefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[/\\.\\-_A-Za-z0-9]+$"})
    EventSourceState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchevents#EventSourceState', name: 'EventSourceState')
    EventTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.cloudwatchevents#EventTime', name: 'EventTime')
    HeaderKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#HeaderKey', name: 'HeaderKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[!\#$%&'*+-.^_`|~0-9a-zA-Z]+$"})
    HeaderParametersMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cloudwatchevents#HeaderParametersMap', name: 'HeaderParametersMap')
    HeaderValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#HeaderValue', name: 'HeaderValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[ \\t]*[\\x20-\\x7E]+([ \\t]+[\\x20-\\x7E]+)*[ \\t]*$"})
    HeaderValueSensitive = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#HeaderValueSensitive', name: 'HeaderValueSensitive', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[ \\t]*[\\x20-\\x7E]+([ \\t]+[\\x20-\\x7E]+)*[ \\t]*$", "smithy.api#sensitive" => {}})
    HttpParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#HttpParameters', name: 'HttpParameters')
    HttpsEndpoint = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#HttpsEndpoint', name: 'HttpsEndpoint', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^((%[0-9A-Fa-f]{2}|[-()_.!~*';/?:@\\x26=+$,A-Za-z0-9])+)([).!';/?:,])?$"})
    IllegalStatusException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#IllegalStatusException', name: 'IllegalStatusException', traits: {"smithy.api#error" => "client"})
    InputTransformer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#InputTransformer', name: 'InputTransformer')
    InputTransformerPathKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#InputTransformerPathKey', name: 'InputTransformerPathKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9\\_\\-]+$"})
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchevents#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    InternalException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#InternalException', name: 'InternalException', traits: {"smithy.api#error" => "server"})
    InvalidEventPatternException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#InvalidEventPatternException', name: 'InvalidEventPatternException', traits: {"smithy.api#error" => "client"})
    InvalidStateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#InvalidStateException', name: 'InvalidStateException', traits: {"smithy.api#error" => "client"})
    KinesisParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#KinesisParameters', name: 'KinesisParameters')
    LaunchType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchevents#LaunchType', name: 'LaunchType')
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client"})
    LimitMax100 = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchevents#LimitMax100', name: 'LimitMax100', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    LimitMin1 = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchevents#LimitMin1', name: 'LimitMin1', traits: {"smithy.api#range" => {"min" => 1}})
    ListApiDestinationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ListApiDestinationsRequest', name: 'ListApiDestinationsRequest')
    ListApiDestinationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ListApiDestinationsResponse', name: 'ListApiDestinationsResponse')
    ListArchivesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ListArchivesRequest', name: 'ListArchivesRequest')
    ListArchivesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ListArchivesResponse', name: 'ListArchivesResponse')
    ListConnectionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ListConnectionsRequest', name: 'ListConnectionsRequest')
    ListConnectionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ListConnectionsResponse', name: 'ListConnectionsResponse')
    ListEventBusesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ListEventBusesRequest', name: 'ListEventBusesRequest')
    ListEventBusesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ListEventBusesResponse', name: 'ListEventBusesResponse')
    ListEventSourcesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ListEventSourcesRequest', name: 'ListEventSourcesRequest')
    ListEventSourcesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ListEventSourcesResponse', name: 'ListEventSourcesResponse')
    ListPartnerEventSourceAccountsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ListPartnerEventSourceAccountsRequest', name: 'ListPartnerEventSourceAccountsRequest')
    ListPartnerEventSourceAccountsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ListPartnerEventSourceAccountsResponse', name: 'ListPartnerEventSourceAccountsResponse')
    ListPartnerEventSourcesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ListPartnerEventSourcesRequest', name: 'ListPartnerEventSourcesRequest')
    ListPartnerEventSourcesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ListPartnerEventSourcesResponse', name: 'ListPartnerEventSourcesResponse')
    ListReplaysRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ListReplaysRequest', name: 'ListReplaysRequest')
    ListReplaysResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ListReplaysResponse', name: 'ListReplaysResponse')
    ListRuleNamesByTargetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ListRuleNamesByTargetRequest', name: 'ListRuleNamesByTargetRequest')
    ListRuleNamesByTargetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ListRuleNamesByTargetResponse', name: 'ListRuleNamesByTargetResponse')
    ListRulesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ListRulesRequest', name: 'ListRulesRequest')
    ListRulesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ListRulesResponse', name: 'ListRulesResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTargetsByRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ListTargetsByRuleRequest', name: 'ListTargetsByRuleRequest')
    ListTargetsByRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ListTargetsByRuleResponse', name: 'ListTargetsByRuleResponse')
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchevents#Long', name: 'Long', traits: {"smithy.api#default" => 0})
    ManagedBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#ManagedBy', name: 'ManagedBy', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ManagedRuleException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ManagedRuleException', name: 'ManagedRuleException', traits: {"smithy.api#error" => "client"})
    MaximumEventAgeInSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchevents#MaximumEventAgeInSeconds', name: 'MaximumEventAgeInSeconds', traits: {"smithy.api#range" => {"min" => 60, "max" => 86400}})
    MaximumRetryAttempts = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchevents#MaximumRetryAttempts', name: 'MaximumRetryAttempts', traits: {"smithy.api#range" => {"min" => 0, "max" => 185}})
    MessageGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#MessageGroupId', name: 'MessageGroupId')
    NetworkConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#NetworkConfiguration', name: 'NetworkConfiguration')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    NonPartnerEventBusName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#NonPartnerEventBusName', name: 'NonPartnerEventBusName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\.\\-_A-Za-z0-9]+$"})
    NonPartnerEventBusNameOrArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#NonPartnerEventBusNameOrArn', name: 'NonPartnerEventBusNameOrArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^(arn:aws[\\w-]*:events:[a-z]{2}-[a-z]+-[\\w-]+:[0-9]{12}:event-bus\\/)?[\\.\\-_A-Za-z0-9]+$"})
    OperationDisabledException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#OperationDisabledException', name: 'OperationDisabledException', traits: {"smithy.api#error" => "client"})
    PartnerEventSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#PartnerEventSource', name: 'PartnerEventSource')
    PartnerEventSourceAccount = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#PartnerEventSourceAccount', name: 'PartnerEventSourceAccount')
    PartnerEventSourceAccountList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#PartnerEventSourceAccountList', name: 'PartnerEventSourceAccountList')
    PartnerEventSourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#PartnerEventSourceList', name: 'PartnerEventSourceList')
    PartnerEventSourceNamePrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#PartnerEventSourceNamePrefix', name: 'PartnerEventSourceNamePrefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^aws\\.partner/[\\.\\-_A-Za-z0-9]+/[/\\.\\-_A-Za-z0-9]*$"})
    PathParameter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#PathParameter', name: 'PathParameter', traits: {"smithy.api#pattern" => "^(?!\\s*$).+$"})
    PathParameterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#PathParameterList', name: 'PathParameterList')
    PlacementConstraint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#PlacementConstraint', name: 'PlacementConstraint')
    PlacementConstraintExpression = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#PlacementConstraintExpression', name: 'PlacementConstraintExpression', traits: {"smithy.api#length" => {"min" => 0, "max" => 2000}})
    PlacementConstraintType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchevents#PlacementConstraintType', name: 'PlacementConstraintType')
    PlacementConstraints = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#PlacementConstraints', name: 'PlacementConstraints', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    PlacementStrategies = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#PlacementStrategies', name: 'PlacementStrategies', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    PlacementStrategy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#PlacementStrategy', name: 'PlacementStrategy')
    PlacementStrategyField = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#PlacementStrategyField', name: 'PlacementStrategyField', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    PlacementStrategyType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchevents#PlacementStrategyType', name: 'PlacementStrategyType')
    PolicyLengthExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#PolicyLengthExceededException', name: 'PolicyLengthExceededException', traits: {"smithy.api#error" => "client"})
    Principal = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#Principal', name: 'Principal', traits: {"smithy.api#length" => {"min" => 1, "max" => 12}, "smithy.api#pattern" => "^(\\d{12}|\\*)$"})
    PropagateTags = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchevents#PropagateTags', name: 'PropagateTags')
    PutEventsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#PutEventsRequest', name: 'PutEventsRequest')
    PutEventsRequestEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#PutEventsRequestEntry', name: 'PutEventsRequestEntry')
    PutEventsRequestEntryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#PutEventsRequestEntryList', name: 'PutEventsRequestEntryList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    PutEventsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#PutEventsResponse', name: 'PutEventsResponse')
    PutEventsResultEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#PutEventsResultEntry', name: 'PutEventsResultEntry')
    PutEventsResultEntryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#PutEventsResultEntryList', name: 'PutEventsResultEntryList')
    PutPartnerEventsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#PutPartnerEventsRequest', name: 'PutPartnerEventsRequest')
    PutPartnerEventsRequestEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#PutPartnerEventsRequestEntry', name: 'PutPartnerEventsRequestEntry')
    PutPartnerEventsRequestEntryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#PutPartnerEventsRequestEntryList', name: 'PutPartnerEventsRequestEntryList', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    PutPartnerEventsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#PutPartnerEventsResponse', name: 'PutPartnerEventsResponse')
    PutPartnerEventsResultEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#PutPartnerEventsResultEntry', name: 'PutPartnerEventsResultEntry')
    PutPartnerEventsResultEntryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#PutPartnerEventsResultEntryList', name: 'PutPartnerEventsResultEntryList')
    PutPermissionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#PutPermissionRequest', name: 'PutPermissionRequest')
    PutRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#PutRuleRequest', name: 'PutRuleRequest')
    PutRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#PutRuleResponse', name: 'PutRuleResponse')
    PutTargetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#PutTargetsRequest', name: 'PutTargetsRequest')
    PutTargetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#PutTargetsResponse', name: 'PutTargetsResponse')
    PutTargetsResultEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#PutTargetsResultEntry', name: 'PutTargetsResultEntry')
    PutTargetsResultEntryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#PutTargetsResultEntryList', name: 'PutTargetsResultEntryList')
    QueryStringKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#QueryStringKey', name: 'QueryStringKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[^\\x00-\\x1F\\x7F]+$"})
    QueryStringParametersMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cloudwatchevents#QueryStringParametersMap', name: 'QueryStringParametersMap')
    QueryStringValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#QueryStringValue', name: 'QueryStringValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[^\\x00-\\x09\\x0B\\x0C\\x0E-\\x1F\\x7F]+$"})
    QueryStringValueSensitive = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#QueryStringValueSensitive', name: 'QueryStringValueSensitive', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[^\\x00-\\x09\\x0B\\x0C\\x0E-\\x1F\\x7F]+$", "smithy.api#sensitive" => {}})
    RedshiftDataParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#RedshiftDataParameters', name: 'RedshiftDataParameters')
    RedshiftSecretManagerArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#RedshiftSecretManagerArn', name: 'RedshiftSecretManagerArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^(^arn:aws([a-z]|\\-)*:secretsmanager:[a-z0-9-.]+:.*)|(\\$(\\.[\\w_-]+(\\[(\\d+|\\*)\\])*)*)$"})
    ReferenceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#ReferenceId', name: 'ReferenceId', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    RemovePermissionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#RemovePermissionRequest', name: 'RemovePermissionRequest')
    RemoveTargetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#RemoveTargetsRequest', name: 'RemoveTargetsRequest')
    RemoveTargetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#RemoveTargetsResponse', name: 'RemoveTargetsResponse')
    RemoveTargetsResultEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#RemoveTargetsResultEntry', name: 'RemoveTargetsResultEntry')
    RemoveTargetsResultEntryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#RemoveTargetsResultEntryList', name: 'RemoveTargetsResultEntryList')
    Replay = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#Replay', name: 'Replay')
    ReplayArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#ReplayArn', name: 'ReplayArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:aws([a-z]|\\-)*:events:([a-z]|\\d|\\-)*:([0-9]{12})?:.+\\/[\\.\\-_A-Za-z0-9]+$"})
    ReplayDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#ReplayDescription', name: 'ReplayDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => ".*"})
    ReplayDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ReplayDestination', name: 'ReplayDestination')
    ReplayDestinationFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#ReplayDestinationFilters', name: 'ReplayDestinationFilters')
    ReplayList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#ReplayList', name: 'ReplayList')
    ReplayName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#ReplayName', name: 'ReplayName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\.\\-_A-Za-z0-9]+$"})
    ReplayState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchevents#ReplayState', name: 'ReplayState')
    ReplayStateReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#ReplayStateReason', name: 'ReplayStateReason', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => ".*"})
    ResourceAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ResourceAlreadyExistsException', name: 'ResourceAlreadyExistsException', traits: {"smithy.api#error" => "client"})
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client"})
    RetentionDays = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchevents#RetentionDays', name: 'RetentionDays', traits: {"smithy.api#range" => {"min" => 0}})
    RetryPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#RetryPolicy', name: 'RetryPolicy')
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}})
    Rule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#Rule', name: 'Rule')
    RuleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#RuleArn', name: 'RuleArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}})
    RuleDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#RuleDescription', name: 'RuleDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}})
    RuleName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#RuleName', name: 'RuleName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\.\\-_A-Za-z0-9]+$"})
    RuleNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#RuleNameList', name: 'RuleNameList')
    RuleResponseList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#RuleResponseList', name: 'RuleResponseList')
    RuleState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchevents#RuleState', name: 'RuleState')
    RunCommandParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#RunCommandParameters', name: 'RunCommandParameters')
    RunCommandTarget = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#RunCommandTarget', name: 'RunCommandTarget')
    RunCommandTargetKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#RunCommandTargetKey', name: 'RunCommandTargetKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$"})
    RunCommandTargetValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#RunCommandTargetValue', name: 'RunCommandTargetValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    RunCommandTargetValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#RunCommandTargetValues', name: 'RunCommandTargetValues', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    RunCommandTargets = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#RunCommandTargets', name: 'RunCommandTargets', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    SageMakerPipelineParameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#SageMakerPipelineParameter', name: 'SageMakerPipelineParameter')
    SageMakerPipelineParameterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#SageMakerPipelineParameterList', name: 'SageMakerPipelineParameterList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    SageMakerPipelineParameterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#SageMakerPipelineParameterName', name: 'SageMakerPipelineParameterName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    SageMakerPipelineParameterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#SageMakerPipelineParameterValue', name: 'SageMakerPipelineParameterValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    SageMakerPipelineParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#SageMakerPipelineParameters', name: 'SageMakerPipelineParameters')
    ScheduleExpression = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#ScheduleExpression', name: 'ScheduleExpression', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    SecretsManagerSecretArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#SecretsManagerSecretArn', name: 'SecretsManagerSecretArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws([a-z]|\\-)*:secretsmanager:([a-z]|\\d|\\-)*:([0-9]{12})?:secret:[\\/_+=\\.@\\-A-Za-z0-9]+$"})
    SensitiveString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#SensitiveString', name: 'SensitiveString', traits: {"smithy.api#sensitive" => {}})
    Sql = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#Sql', name: 'Sql', traits: {"smithy.api#length" => {"min" => 1, "max" => 100000}})
    SqsParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#SqsParameters', name: 'SqsParameters')
    StartReplayRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#StartReplayRequest', name: 'StartReplayRequest')
    StartReplayResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#StartReplayResponse', name: 'StartReplayResponse')
    StatementId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#StatementId', name: 'StatementId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    StatementName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#StatementName', name: 'StatementName', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#String', name: 'String')
    StringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#StringList', name: 'StringList')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#TagKeyList', name: 'TagKeyList')
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#TagList', name: 'TagList')
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Target = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#Target', name: 'Target')
    TargetArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#TargetArn', name: 'TargetArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}})
    TargetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#TargetId', name: 'TargetId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\.\\-_A-Za-z0-9]+$"})
    TargetIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#TargetIdList', name: 'TargetIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    TargetInput = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#TargetInput', name: 'TargetInput', traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}})
    TargetInputPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#TargetInputPath', name: 'TargetInputPath', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchevents#TargetList', name: 'TargetList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    TargetPartitionKeyPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#TargetPartitionKeyPath', name: 'TargetPartitionKeyPath', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TestEventPatternRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#TestEventPatternRequest', name: 'TestEventPatternRequest')
    TestEventPatternResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#TestEventPatternResponse', name: 'TestEventPatternResponse')
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.cloudwatchevents#Timestamp', name: 'Timestamp')
    TraceHeader = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#TraceHeader', name: 'TraceHeader', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    TransformerInput = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchevents#TransformerInput', name: 'TransformerInput', traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}})
    TransformerPaths = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cloudwatchevents#TransformerPaths', name: 'TransformerPaths', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateApiDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#UpdateApiDestinationRequest', name: 'UpdateApiDestinationRequest')
    UpdateApiDestinationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#UpdateApiDestinationResponse', name: 'UpdateApiDestinationResponse')
    UpdateArchiveRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#UpdateArchiveRequest', name: 'UpdateArchiveRequest')
    UpdateArchiveResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#UpdateArchiveResponse', name: 'UpdateArchiveResponse')
    UpdateConnectionApiKeyAuthRequestParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#UpdateConnectionApiKeyAuthRequestParameters', name: 'UpdateConnectionApiKeyAuthRequestParameters')
    UpdateConnectionAuthRequestParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#UpdateConnectionAuthRequestParameters', name: 'UpdateConnectionAuthRequestParameters')
    UpdateConnectionBasicAuthRequestParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#UpdateConnectionBasicAuthRequestParameters', name: 'UpdateConnectionBasicAuthRequestParameters')
    UpdateConnectionOAuthClientRequestParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#UpdateConnectionOAuthClientRequestParameters', name: 'UpdateConnectionOAuthClientRequestParameters')
    UpdateConnectionOAuthRequestParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#UpdateConnectionOAuthRequestParameters', name: 'UpdateConnectionOAuthRequestParameters')
    UpdateConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#UpdateConnectionRequest', name: 'UpdateConnectionRequest')
    UpdateConnectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchevents#UpdateConnectionResponse', name: 'UpdateConnectionResponse')

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
    Archive.add_member(:archive_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveName, location_name: 'ArchiveName', traits: {"smithy.api#documentation" => "<p>The name of the archive.</p>"}))
    Archive.add_member(:event_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'EventSourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the event bus associated with the archive. Only events from this event bus are\n      sent to the archive.</p>"}))
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
    BatchParameters.add_member(:job_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobDefinition', traits: {"smithy.api#documentation" => "<p>The ARN or name of the job definition to use if the event target is an Batch job. This\n      job definition must already exist.</p>", "smithy.api#required" => {}}))
    BatchParameters.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The name to use for this execution of the job, if the target is an Batch job.</p>", "smithy.api#required" => {}}))
    BatchParameters.add_member(:array_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchArrayProperties, location_name: 'ArrayProperties', traits: {"smithy.api#documentation" => "<p>The array properties for the submitted job, such as the size of the array. The array size\n      can be between 2 and 10,000. If you specify array properties for a job, it becomes an array\n      job. This parameter is used only if the target is an Batch job.</p>"}))
    BatchParameters.add_member(:retry_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchRetryStrategy, location_name: 'RetryStrategy', traits: {"smithy.api#documentation" => "<p>The retry strategy to use for failed jobs, if the target is an Batch job. The retry\n      strategy is the number of times to retry the failed job execution. Valid values are 1–10. When\n      you specify a retry strategy here, it overrides the retry strategy defined in the job\n      definition.</p>"}))
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
    Connection.add_member(:authorization_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAuthorizationType, location_name: 'AuthorizationType', traits: {"smithy.api#documentation" => "<p>The authorization type specified for the connection.</p>"}))
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
    ConnectionAuthResponseParameters.type = Types::ConnectionAuthResponseParameters
    ConnectionAuthorizationType.add_member(:basic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BASIC', traits: {"smithy.api#enumValue" => "BASIC"}))
    ConnectionAuthorizationType.add_member(:oauth_client_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OAUTH_CLIENT_CREDENTIALS', traits: {"smithy.api#enumValue" => "OAUTH_CLIENT_CREDENTIALS"}))
    ConnectionAuthorizationType.add_member(:api_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'API_KEY', traits: {"smithy.api#enumValue" => "API_KEY"}))
    ConnectionBasicAuthResponseParameters.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthHeaderParameters, location_name: 'Username', traits: {"smithy.api#documentation" => "<p>The user name to use for Basic authorization.</p>"}))
    ConnectionBasicAuthResponseParameters.type = Types::ConnectionBasicAuthResponseParameters
    ConnectionBodyParameter.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key for the parameter.</p>"}))
    ConnectionBodyParameter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value associated with the key.</p>"}))
    ConnectionBodyParameter.add_member(:is_value_secret, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsValueSecret', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specified whether the value is secret.</p>"}))
    ConnectionBodyParameter.type = Types::ConnectionBodyParameter
    ConnectionBodyParametersList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionBodyParameter)
    ConnectionHeaderParameter.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key for the parameter.</p>"}))
    ConnectionHeaderParameter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderValueSensitive, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value associated with the key.</p>"}))
    ConnectionHeaderParameter.add_member(:is_value_secret, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsValueSecret', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specified whether the value is a secret.</p>"}))
    ConnectionHeaderParameter.type = Types::ConnectionHeaderParameter
    ConnectionHeaderParametersList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionHeaderParameter)
    ConnectionHttpParameters.add_member(:header_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionHeaderParametersList, location_name: 'HeaderParameters', traits: {"smithy.api#documentation" => "<p>Contains additional header parameters for the connection.</p>"}))
    ConnectionHttpParameters.add_member(:query_string_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionQueryStringParametersList, location_name: 'QueryStringParameters', traits: {"smithy.api#documentation" => "<p>Contains additional query string parameters for the connection.</p>"}))
    ConnectionHttpParameters.add_member(:body_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionBodyParametersList, location_name: 'BodyParameters', traits: {"smithy.api#documentation" => "<p>Contains additional body string parameters for the connection.</p>"}))
    ConnectionHttpParameters.type = Types::ConnectionHttpParameters
    ConnectionOAuthClientResponseParameters.add_member(:client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthHeaderParameters, location_name: 'ClientID', traits: {"smithy.api#documentation" => "<p>The client ID associated with the response to the connection request.</p>"}))
    ConnectionOAuthClientResponseParameters.type = Types::ConnectionOAuthClientResponseParameters
    ConnectionOAuthHttpMethod.add_member(:get, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GET', traits: {"smithy.api#enumValue" => "GET"}))
    ConnectionOAuthHttpMethod.add_member(:post, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POST', traits: {"smithy.api#enumValue" => "POST"}))
    ConnectionOAuthHttpMethod.add_member(:put, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUT', traits: {"smithy.api#enumValue" => "PUT"}))
    ConnectionOAuthResponseParameters.add_member(:client_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionOAuthClientResponseParameters, location_name: 'ClientParameters', traits: {"smithy.api#documentation" => "<p>A <code>ConnectionOAuthClientResponseParameters</code> object that contains details about\n      the client parameters returned when OAuth is specified as the authorization type.</p>"}))
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
    CreateArchiveRequest.add_member(:event_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'EventSourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the event bus that sends events to the archive.</p>", "smithy.api#required" => {}}))
    CreateArchiveRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description for the archive.</p>"}))
    CreateArchiveRequest.add_member(:event_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: EventPattern, location_name: 'EventPattern', traits: {"smithy.api#documentation" => "<p>An event pattern to use to filter events sent to the archive.</p>"}))
    CreateArchiveRequest.add_member(:retention_days, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionDays, location_name: 'RetentionDays', traits: {"smithy.api#documentation" => "<p>The number of days to retain events for. Default value is 0. If set to 0, events are\n      retained indefinitely</p>"}))
    CreateArchiveRequest.type = Types::CreateArchiveRequest
    CreateArchiveResponse.add_member(:archive_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveArn, location_name: 'ArchiveArn', traits: {"smithy.api#documentation" => "<p>The ARN of the archive that was created.</p>"}))
    CreateArchiveResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the archive that was created.</p>"}))
    CreateArchiveResponse.add_member(:state_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveStateReason, location_name: 'StateReason', traits: {"smithy.api#documentation" => "<p>The reason that the archive is in the state.</p>"}))
    CreateArchiveResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time at which the archive was created.</p>"}))
    CreateArchiveResponse.type = Types::CreateArchiveResponse
    CreateConnectionApiKeyAuthRequestParameters.add_member(:api_key_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthHeaderParameters, location_name: 'ApiKeyName', traits: {"smithy.api#documentation" => "<p>The name of the API key to use for authorization.</p>", "smithy.api#required" => {}}))
    CreateConnectionApiKeyAuthRequestParameters.add_member(:api_key_value, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthHeaderParametersSensitive, location_name: 'ApiKeyValue', traits: {"smithy.api#documentation" => "<p>The value for the API key to use for authorization.</p>", "smithy.api#required" => {}}))
    CreateConnectionApiKeyAuthRequestParameters.type = Types::CreateConnectionApiKeyAuthRequestParameters
    CreateConnectionAuthRequestParameters.add_member(:basic_auth_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectionBasicAuthRequestParameters, location_name: 'BasicAuthParameters', traits: {"smithy.api#documentation" => "<p>A <code>CreateConnectionBasicAuthRequestParameters</code> object that contains the Basic\n      authorization parameters to use for the connection.</p>"}))
    CreateConnectionAuthRequestParameters.add_member(:o_auth_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectionOAuthRequestParameters, location_name: 'OAuthParameters', traits: {"smithy.api#documentation" => "<p>A <code>CreateConnectionOAuthRequestParameters</code> object that contains the OAuth\n      authorization parameters to use for the connection.</p>"}))
    CreateConnectionAuthRequestParameters.add_member(:api_key_auth_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectionApiKeyAuthRequestParameters, location_name: 'ApiKeyAuthParameters', traits: {"smithy.api#documentation" => "<p>A <code>CreateConnectionApiKeyAuthRequestParameters</code> object that contains the API\n      key authorization parameters to use for the connection.</p>"}))
    CreateConnectionAuthRequestParameters.add_member(:invocation_http_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionHttpParameters, location_name: 'InvocationHttpParameters', traits: {"smithy.api#documentation" => "<p>A <code>ConnectionHttpParameters</code> object that contains the API key authorization\n      parameters to use for the connection. Note that if you include additional parameters for the\n      target of a rule via <code>HttpParameters</code>, including query strings, the parameters\n      added for the connection take precedence.</p>"}))
    CreateConnectionAuthRequestParameters.type = Types::CreateConnectionAuthRequestParameters
    CreateConnectionBasicAuthRequestParameters.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthHeaderParameters, location_name: 'Username', traits: {"smithy.api#documentation" => "<p>The user name to use for Basic authorization.</p>", "smithy.api#required" => {}}))
    CreateConnectionBasicAuthRequestParameters.add_member(:password, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthHeaderParametersSensitive, location_name: 'Password', traits: {"smithy.api#documentation" => "<p>The password associated with the user name to use for Basic authorization.</p>", "smithy.api#required" => {}}))
    CreateConnectionBasicAuthRequestParameters.type = Types::CreateConnectionBasicAuthRequestParameters
    CreateConnectionOAuthClientRequestParameters.add_member(:client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthHeaderParameters, location_name: 'ClientID', traits: {"smithy.api#documentation" => "<p>The client ID to use for OAuth authorization for the connection.</p>", "smithy.api#required" => {}}))
    CreateConnectionOAuthClientRequestParameters.add_member(:client_secret, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthHeaderParametersSensitive, location_name: 'ClientSecret', traits: {"smithy.api#documentation" => "<p>The client secret associated with the client ID to use for OAuth authorization for the\n      connection.</p>", "smithy.api#required" => {}}))
    CreateConnectionOAuthClientRequestParameters.type = Types::CreateConnectionOAuthClientRequestParameters
    CreateConnectionOAuthRequestParameters.add_member(:client_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectionOAuthClientRequestParameters, location_name: 'ClientParameters', traits: {"smithy.api#documentation" => "<p>A <code>CreateConnectionOAuthClientRequestParameters</code> object that contains the\n      client parameters for OAuth authorization.</p>", "smithy.api#required" => {}}))
    CreateConnectionOAuthRequestParameters.add_member(:authorization_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpsEndpoint, location_name: 'AuthorizationEndpoint', traits: {"smithy.api#documentation" => "<p>The URL to the authorization endpoint when OAuth is specified as the authorization\n      type.</p>", "smithy.api#required" => {}}))
    CreateConnectionOAuthRequestParameters.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionOAuthHttpMethod, location_name: 'HttpMethod', traits: {"smithy.api#documentation" => "<p>The method to use for the authorization request.</p>", "smithy.api#required" => {}}))
    CreateConnectionOAuthRequestParameters.add_member(:o_auth_http_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionHttpParameters, location_name: 'OAuthHttpParameters', traits: {"smithy.api#documentation" => "<p>A <code>ConnectionHttpParameters</code> object that contains details about the additional\n      parameters to use for the connection.</p>"}))
    CreateConnectionOAuthRequestParameters.type = Types::CreateConnectionOAuthRequestParameters
    CreateConnectionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name for the connection to create.</p>", "smithy.api#required" => {}}))
    CreateConnectionRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description for the connection to create.</p>"}))
    CreateConnectionRequest.add_member(:authorization_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAuthorizationType, location_name: 'AuthorizationType', traits: {"smithy.api#documentation" => "<p>The type of authorization to use for the connection.</p>", "smithy.api#required" => {}}))
    CreateConnectionRequest.add_member(:auth_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectionAuthRequestParameters, location_name: 'AuthParameters', traits: {"smithy.api#documentation" => "<p>A <code>CreateConnectionAuthRequestParameters</code> object that contains the\n      authorization parameters to use to authorize with the endpoint. </p>", "smithy.api#required" => {}}))
    CreateConnectionRequest.type = Types::CreateConnectionRequest
    CreateConnectionResponse.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: 'ConnectionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the connection that was created by the request.</p>"}))
    CreateConnectionResponse.add_member(:connection_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionState, location_name: 'ConnectionState', traits: {"smithy.api#documentation" => "<p>The state of the connection that was created by the request.</p>"}))
    CreateConnectionResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the connection was created.</p>"}))
    CreateConnectionResponse.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the connection was last updated.</p>"}))
    CreateConnectionResponse.type = Types::CreateConnectionResponse
    CreateEventBusRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the new event bus. </p>\n         <p>Event bus names cannot contain the / character. You can't use the name\n        <code>default</code> for a custom event bus, as this name is already used for your account's\n      default event bus.</p>\n         <p>If this is a partner event bus, the name must exactly match the name of the partner event\n      source that this event bus is matched to.</p>", "smithy.api#required" => {}}))
    CreateEventBusRequest.add_member(:event_source_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSourceName, location_name: 'EventSourceName', traits: {"smithy.api#documentation" => "<p>If you are creating a partner event bus, this specifies the partner event source that the\n      new event bus will be matched with.</p>"}))
    CreateEventBusRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags to associate with the event bus.</p>"}))
    CreateEventBusRequest.type = Types::CreateEventBusRequest
    CreateEventBusResponse.add_member(:event_bus_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EventBusArn', traits: {"smithy.api#documentation" => "<p>The ARN of the new event bus.</p>"}))
    CreateEventBusResponse.type = Types::CreateEventBusResponse
    CreatePartnerEventSourceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the partner event source. This name must be unique and must be in the format\n          <code>\n               <i>partner_name</i>/<i>event_namespace</i>/<i>event_name</i>\n            </code>.\n      The Amazon Web Services account that wants to use this partner event source must create a partner event bus\n      with a name that matches the name of the partner event source.</p>", "smithy.api#required" => {}}))
    CreatePartnerEventSourceRequest.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'Account', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID that is permitted to create a matching partner event bus for this\n      partner event source.</p>", "smithy.api#required" => {}}))
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
    DeleteEventBusRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the event bus to delete.</p>", "smithy.api#required" => {}}))
    DeleteEventBusRequest.type = Types::DeleteEventBusRequest
    DeletePartnerEventSourceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the event source to delete.</p>", "smithy.api#required" => {}}))
    DeletePartnerEventSourceRequest.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'Account', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the Amazon Web Services customer that the event source was created for.</p>", "smithy.api#required" => {}}))
    DeletePartnerEventSourceRequest.type = Types::DeletePartnerEventSourceRequest
    DeleteRuleRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the rule.</p>", "smithy.api#required" => {}}))
    DeleteRuleRequest.add_member(:event_bus_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusNameOrArn, location_name: 'EventBusName', traits: {"smithy.api#documentation" => "<p>The name or ARN of the event bus associated with the rule. If you omit this, the default\n      event bus is used.</p>"}))
    DeleteRuleRequest.add_member(:force, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Force', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If this is a managed rule, created by an Amazon Web Services service on your behalf, you must specify\n        <code>Force</code> as <code>True</code> to delete the rule. This parameter is ignored for\n      rules that are not managed rules. You can check whether a rule is a managed rule by using\n        <code>DescribeRule</code> or <code>ListRules</code> and checking the <code>ManagedBy</code>\n      field of the response.</p>"}))
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
    DescribeArchiveResponse.add_member(:event_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'EventSourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the event source associated with the archive.</p>"}))
    DescribeArchiveResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the archive.</p>"}))
    DescribeArchiveResponse.add_member(:event_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: EventPattern, location_name: 'EventPattern', traits: {"smithy.api#documentation" => "<p>The event pattern used to filter events sent to the archive.</p>"}))
    DescribeArchiveResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the archive.</p>"}))
    DescribeArchiveResponse.add_member(:state_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveStateReason, location_name: 'StateReason', traits: {"smithy.api#documentation" => "<p>The reason that the archive is in the state.</p>"}))
    DescribeArchiveResponse.add_member(:retention_days, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionDays, location_name: 'RetentionDays', traits: {"smithy.api#documentation" => "<p>The number of days to retain events for in the archive.</p>"}))
    DescribeArchiveResponse.add_member(:size_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'SizeBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The size of the archive in bytes.</p>"}))
    DescribeArchiveResponse.add_member(:event_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'EventCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of events in the archive.</p>"}))
    DescribeArchiveResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time at which the archive was created.</p>"}))
    DescribeArchiveResponse.type = Types::DescribeArchiveResponse
    DescribeConnectionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the connection to retrieve.</p>", "smithy.api#required" => {}}))
    DescribeConnectionRequest.type = Types::DescribeConnectionRequest
    DescribeConnectionResponse.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: 'ConnectionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the connection retrieved.</p>"}))
    DescribeConnectionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the connection retrieved.</p>"}))
    DescribeConnectionResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description for the connection retrieved.</p>"}))
    DescribeConnectionResponse.add_member(:connection_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionState, location_name: 'ConnectionState', traits: {"smithy.api#documentation" => "<p>The state of the connection retrieved.</p>"}))
    DescribeConnectionResponse.add_member(:state_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionStateReason, location_name: 'StateReason', traits: {"smithy.api#documentation" => "<p>The reason that the connection is in the current connection state.</p>"}))
    DescribeConnectionResponse.add_member(:authorization_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAuthorizationType, location_name: 'AuthorizationType', traits: {"smithy.api#documentation" => "<p>The type of authorization specified for the connection.</p>"}))
    DescribeConnectionResponse.add_member(:secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretsManagerSecretArn, location_name: 'SecretArn', traits: {"smithy.api#documentation" => "<p>The ARN of the secret created from the authorization parameters specified for the\n      connection.</p>"}))
    DescribeConnectionResponse.add_member(:auth_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAuthResponseParameters, location_name: 'AuthParameters', traits: {"smithy.api#documentation" => "<p>The parameters to use for authorization for the connection.</p>"}))
    DescribeConnectionResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the connection was created.</p>"}))
    DescribeConnectionResponse.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the connection was last modified.</p>"}))
    DescribeConnectionResponse.add_member(:last_authorized_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastAuthorizedTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the connection was last authorized.</p>"}))
    DescribeConnectionResponse.type = Types::DescribeConnectionResponse
    DescribeEventBusRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusNameOrArn, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name or ARN of the event bus to show details for. If you omit this, the default event\n      bus is displayed.</p>"}))
    DescribeEventBusRequest.type = Types::DescribeEventBusRequest
    DescribeEventBusResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the event bus. Currently, this is always <code>default</code>.</p>"}))
    DescribeEventBusResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the account permitted to write events to the current\n      account.</p>"}))
    DescribeEventBusResponse.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The policy that enables the external account to send events to your account.</p>"}))
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
    DescribeReplayResponse.add_member(:event_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'EventSourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the archive events were replayed from.</p>"}))
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
    DescribeRuleResponse.add_member(:event_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: EventPattern, location_name: 'EventPattern', traits: {"smithy.api#documentation" => "<p>The event pattern. For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html\">Events and Event\n        Patterns</a> in the <i>Amazon EventBridge User Guide</i>.</p>"}))
    DescribeRuleResponse.add_member(:schedule_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: 'ScheduleExpression', traits: {"smithy.api#documentation" => "<p>The scheduling expression. For example, \"cron(0 20 * * ? *)\", \"rate(5 minutes)\".</p>"}))
    DescribeRuleResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>Specifies whether the rule is enabled or disabled.</p>"}))
    DescribeRuleResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the rule.</p>"}))
    DescribeRuleResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role associated with the rule.</p>"}))
    DescribeRuleResponse.add_member(:managed_by, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedBy, location_name: 'ManagedBy', traits: {"smithy.api#documentation" => "<p>If this is a managed rule, created by an Amazon Web Services service on your behalf, this field displays\n      the principal name of the Amazon Web Services service that created the rule.</p>"}))
    DescribeRuleResponse.add_member(:event_bus_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusName, location_name: 'EventBusName', traits: {"smithy.api#documentation" => "<p>The name of the event bus associated with the rule.</p>"}))
    DescribeRuleResponse.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'CreatedBy', traits: {"smithy.api#documentation" => "<p>The account ID of the user that created the rule. If you use <code>PutRule</code> to put a\n      rule on an event bus in another account, the other account is the owner of the rule, and the\n      rule ARN includes the account ID for that account. However, the value for\n        <code>CreatedBy</code> is the account ID as the account that created the rule in the other\n      account.</p>"}))
    DescribeRuleResponse.type = Types::DescribeRuleResponse
    DisableRuleRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the rule.</p>", "smithy.api#required" => {}}))
    DisableRuleRequest.add_member(:event_bus_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusNameOrArn, location_name: 'EventBusName', traits: {"smithy.api#documentation" => "<p>The name or ARN of the event bus associated with the rule. If you omit this, the default\n      event bus is used.</p>"}))
    DisableRuleRequest.type = Types::DisableRuleRequest
    EcsParameters.add_member(:task_definition_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'TaskDefinitionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the task definition to use if the event target is an Amazon ECS task. </p>", "smithy.api#required" => {}}))
    EcsParameters.add_member(:task_count, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitMin1, location_name: 'TaskCount', traits: {"smithy.api#documentation" => "<p>The number of tasks to create based on <code>TaskDefinition</code>. The default is\n      1.</p>"}))
    EcsParameters.add_member(:launch_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchType, location_name: 'LaunchType', traits: {"smithy.api#documentation" => "<p>Specifies the launch type on which your task is running. The launch type that you specify\n      here must match one of the launch type (compatibilities) of the target task. The\n      <code>FARGATE</code> value is supported only in the Regions where Fargate witt Amazon ECS\n     is supported. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/AWS-Fargate.html\">Fargate on Amazon ECS</a> in\n      the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"}))
    EcsParameters.add_member(:network_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: 'NetworkConfiguration', traits: {"smithy.api#documentation" => "<p>Use this structure if the Amazon ECS task uses the <code>awsvpc</code> network mode. This\n      structure specifies the VPC subnets and security groups associated with the task, and whether\n      a public IP address is to be used. This structure is required if <code>LaunchType</code> is\n        <code>FARGATE</code> because the <code>awsvpc</code> mode is required for Fargate\n      tasks.</p>\n         <p>If you specify <code>NetworkConfiguration</code> when the target ECS task does not use the\n        <code>awsvpc</code> network mode, the task fails.</p>"}))
    EcsParameters.add_member(:platform_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PlatformVersion', traits: {"smithy.api#documentation" => "<p>Specifies the platform version for the task. Specify only the numeric portion of the\n      platform version, such as <code>1.1.0</code>.</p>\n         <p>This structure is used only if <code>LaunchType</code> is <code>FARGATE</code>. For more\n      information about valid platform versions, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html\">Fargate Platform\n        Versions</a> in the <i>Amazon Elastic Container Service Developer\n        Guide</i>.</p>"}))
    EcsParameters.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Group', traits: {"smithy.api#documentation" => "<p>Specifies an ECS task group for the task. The maximum length is 255 characters.</p>"}))
    EcsParameters.add_member(:capacity_provider_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityProviderStrategy, location_name: 'CapacityProviderStrategy', traits: {"smithy.api#documentation" => "<p>The capacity provider strategy to use for the task.</p>\n         <p>If a <code>capacityProviderStrategy</code> is specified, the <code>launchType</code>\n      parameter must be omitted. If no <code>capacityProviderStrategy</code> or launchType is\n      specified, the <code>defaultCapacityProviderStrategy</code> for the cluster is used. </p>"}))
    EcsParameters.add_member(:enable_ecs_managed_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnableECSManagedTags', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether to enable Amazon ECS managed tags for the task. For more information,\n      see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html\">Tagging Your Amazon ECS Resources</a> in the Amazon Elastic Container Service Developer\n      Guide. </p>"}))
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
    EventBus.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the event bus.</p>"}))
    EventBus.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the event bus.</p>"}))
    EventBus.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The permissions policy of the event bus, describing which other Amazon Web Services accounts can write\n      events to this event bus.</p>"}))
    EventBus.type = Types::EventBus
    EventBusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventBus)
    EventResourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventResource)
    EventSource.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the event source.</p>"}))
    EventSource.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatedBy', traits: {"smithy.api#documentation" => "<p>The name of the partner that created the event source.</p>"}))
    EventSource.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The date and time the event source was created.</p>"}))
    EventSource.add_member(:expiration_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExpirationTime', traits: {"smithy.api#documentation" => "<p>The date and time that the event source will expire, if the Amazon Web Services account doesn't create a\n      matching event bus for it.</p>"}))
    EventSource.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the event source.</p>"}))
    EventSource.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSourceState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the event source. If it is ACTIVE, you have already created a matching event\n      bus for this event source, and that event bus is active. If it is PENDING, either you haven't\n      yet created a matching event bus, or that event bus is deactivated. If it is DELETED, you have\n      created a matching event bus, but the event source has since been deleted.</p>"}))
    EventSource.type = Types::EventSource
    EventSourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventSource)
    EventSourceState.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    EventSourceState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    EventSourceState.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    HeaderParametersMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderKey)
    HeaderParametersMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderValue)
    HttpParameters.add_member(:path_parameter_values, Smithy::Schema::Shapes::ShapeRef.new(shape: PathParameterList, location_name: 'PathParameterValues', traits: {"smithy.api#documentation" => "<p>The path parameter values to be used to populate API Gateway REST API or EventBridge\n      ApiDestination path wildcards (\"*\").</p>"}))
    HttpParameters.add_member(:header_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderParametersMap, location_name: 'HeaderParameters', traits: {"smithy.api#documentation" => "<p>The headers that need to be sent as part of request invoking the API Gateway REST API or\n      EventBridge ApiDestination.</p>"}))
    HttpParameters.add_member(:query_string_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStringParametersMap, location_name: 'QueryStringParameters', traits: {"smithy.api#documentation" => "<p>The query string keys/values that need to be sent as part of request invoking the API Gateway \n      REST API or EventBridge ApiDestination.</p>"}))
    HttpParameters.type = Types::HttpParameters
    IllegalStatusException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    IllegalStatusException.type = Types::IllegalStatusException
    InputTransformer.add_member(:input_paths_map, Smithy::Schema::Shapes::ShapeRef.new(shape: TransformerPaths, location_name: 'InputPathsMap', traits: {"smithy.api#documentation" => "<p>Map of JSON paths to be extracted from the event. You can then insert these in the\n      template in <code>InputTemplate</code> to produce the output you want to be sent to the\n      target.</p>\n         <p>\n            <code>InputPathsMap</code> is an array key-value pairs, where each value is a valid JSON\n      path. You can have as many as 100 key-value pairs. You must use JSON dot notation, not bracket\n      notation.</p>\n         <p>The keys cannot start with \"Amazon Web Services.\" </p>"}))
    InputTransformer.add_member(:input_template, Smithy::Schema::Shapes::ShapeRef.new(shape: TransformerInput, location_name: 'InputTemplate', traits: {"smithy.api#documentation" => "<p>Input template where you specify placeholders that will be filled with the values of the\n      keys from <code>InputPathsMap</code> to customize the data sent to the target. Enclose each\n        <code>InputPathsMaps</code> value in brackets: <<i>value</i>> The\n      InputTemplate must be valid JSON.</p>\n         <p>If <code>InputTemplate</code> is a JSON object (surrounded by curly braces), the following\n      restrictions apply:</p>\n         <ul>\n            <li>\n               <p>The placeholder cannot be used as an object key.</p>\n            </li>\n         </ul>\n         <p>The following example shows the syntax for using <code>InputPathsMap</code> and\n        <code>InputTemplate</code>.</p>\n         <p>\n            <code> \"InputTransformer\":</code>\n         </p>\n         <p>\n            <code>{</code>\n         </p>\n         <p>\n            <code>\"InputPathsMap\": {\"instance\": \"$.detail.instance\",\"status\":\n        \"$.detail.status\"},</code>\n         </p>\n         <p>\n            <code>\"InputTemplate\": \"<instance> is in state <status>\"</code>\n         </p>\n         <p>\n            <code>}</code>\n         </p>\n         <p>To have the <code>InputTemplate</code> include quote marks within a JSON string, escape\n      each quote marks with a slash, as in the following example:</p>\n         <p>\n            <code> \"InputTransformer\":</code>\n         </p>\n         <p>\n            <code>{</code>\n         </p>\n         <p>\n            <code>\"InputPathsMap\": {\"instance\": \"$.detail.instance\",\"status\":\n        \"$.detail.status\"},</code>\n         </p>\n         <p>\n            <code>\"InputTemplate\": \"<instance> is in state \\\"<status>\\\"\"</code>\n         </p>\n         <p>\n            <code>}</code>\n         </p>\n         <p>The <code>InputTemplate</code> can also be valid JSON with varibles in quotes or out, as\n      in the following example:</p>\n         <p>\n            <code> \"InputTransformer\":</code>\n         </p>\n         <p>\n            <code>{</code>\n         </p>\n         <p>\n            <code>\"InputPathsMap\": {\"instance\": \"$.detail.instance\",\"status\":\n        \"$.detail.status\"},</code>\n         </p>\n         <p>\n            <code>\"InputTemplate\": '{\"myInstance\": <instance>,\"myStatus\": \"<instance> is\n        in state \\\"<status>\\\"\"}'</code>\n         </p>\n         <p>\n            <code>}</code>\n         </p>", "smithy.api#required" => {}}))
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
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    ListApiDestinationsRequest.add_member(:name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDestinationName, location_name: 'NamePrefix', traits: {"smithy.api#documentation" => "<p>A name prefix to filter results returned. Only API destinations with a name that starts\n      with the prefix are returned.</p>"}))
    ListApiDestinationsRequest.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: 'ConnectionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the connection specified for the API destination.</p>"}))
    ListApiDestinationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call to retrieve the next set of results.</p>"}))
    ListApiDestinationsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitMax100, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of API destinations to include in the response.</p>"}))
    ListApiDestinationsRequest.type = Types::ListApiDestinationsRequest
    ListApiDestinationsResponse.add_member(:api_destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDestinationResponseList, location_name: 'ApiDestinations', traits: {"smithy.api#documentation" => "<p>An array of <code>ApiDestination</code> objects that include information about an API\n      destination.</p>"}))
    ListApiDestinationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token you can use in a subsequent request to retrieve the next set of results.</p>"}))
    ListApiDestinationsResponse.type = Types::ListApiDestinationsResponse
    ListArchivesRequest.add_member(:name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveName, location_name: 'NamePrefix', traits: {"smithy.api#documentation" => "<p>A name prefix to filter the archives returned. Only archives with name that match the\n      prefix are returned.</p>"}))
    ListArchivesRequest.add_member(:event_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'EventSourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the event source associated with the archive.</p>"}))
    ListArchivesRequest.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the archive.</p>"}))
    ListArchivesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call to retrieve the next set of results.</p>"}))
    ListArchivesRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitMax100, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>"}))
    ListArchivesRequest.type = Types::ListArchivesRequest
    ListArchivesResponse.add_member(:archives, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveResponseList, location_name: 'Archives', traits: {"smithy.api#documentation" => "<p>An array of <code>Archive</code> objects that include details about an archive.</p>"}))
    ListArchivesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call to retrieve the next set of results.</p>"}))
    ListArchivesResponse.type = Types::ListArchivesResponse
    ListConnectionsRequest.add_member(:name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'NamePrefix', traits: {"smithy.api#documentation" => "<p>A name prefix to filter results returned. Only connections with a name that starts with\n      the prefix are returned.</p>"}))
    ListConnectionsRequest.add_member(:connection_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionState, location_name: 'ConnectionState', traits: {"smithy.api#documentation" => "<p>The state of the connection.</p>"}))
    ListConnectionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call to retrieve the next set of results.</p>"}))
    ListConnectionsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitMax100, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of connections to return.</p>"}))
    ListConnectionsRequest.type = Types::ListConnectionsRequest
    ListConnectionsResponse.add_member(:connections, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionResponseList, location_name: 'Connections', traits: {"smithy.api#documentation" => "<p>An array of connections objects that include details about the connections.</p>"}))
    ListConnectionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token you can use in a subsequent request to retrieve the next set of results.</p>"}))
    ListConnectionsResponse.type = Types::ListConnectionsResponse
    ListEventBusesRequest.add_member(:name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusName, location_name: 'NamePrefix', traits: {"smithy.api#documentation" => "<p>Specifying this limits the results to only those event buses with names that start with\n      the specified prefix.</p>"}))
    ListEventBusesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call to retrieve the next set of results.</p>"}))
    ListEventBusesRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitMax100, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>Specifying this limits the number of results returned by this operation. The operation\n      also returns a NextToken which you can use in a subsequent operation to retrieve the next set\n      of results.</p>"}))
    ListEventBusesRequest.type = Types::ListEventBusesRequest
    ListEventBusesResponse.add_member(:event_buses, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusList, location_name: 'EventBuses', traits: {"smithy.api#documentation" => "<p>This list of event buses.</p>"}))
    ListEventBusesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token you can use in a subsequent operation to retrieve the next set of results.</p>"}))
    ListEventBusesResponse.type = Types::ListEventBusesResponse
    ListEventSourcesRequest.add_member(:name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSourceNamePrefix, location_name: 'NamePrefix', traits: {"smithy.api#documentation" => "<p>Specifying this limits the results to only those partner event sources with names that\n      start with the specified prefix.</p>"}))
    ListEventSourcesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call to retrieve the next set of results.</p>"}))
    ListEventSourcesRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitMax100, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>Specifying this limits the number of results returned by this operation. The operation\n      also returns a NextToken which you can use in a subsequent operation to retrieve the next set\n      of results.</p>"}))
    ListEventSourcesRequest.type = Types::ListEventSourcesRequest
    ListEventSourcesResponse.add_member(:event_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSourceList, location_name: 'EventSources', traits: {"smithy.api#documentation" => "<p>The list of event sources.</p>"}))
    ListEventSourcesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token you can use in a subsequent operation to retrieve the next set of results.</p>"}))
    ListEventSourcesResponse.type = Types::ListEventSourcesResponse
    ListPartnerEventSourceAccountsRequest.add_member(:event_source_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSourceName, location_name: 'EventSourceName', traits: {"smithy.api#documentation" => "<p>The name of the partner event source to display account information about.</p>", "smithy.api#required" => {}}))
    ListPartnerEventSourceAccountsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call to this operation. Specifying this retrieves the\n      next set of results.</p>"}))
    ListPartnerEventSourceAccountsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitMax100, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>Specifying this limits the number of results returned by this operation. The operation\n      also returns a NextToken which you can use in a subsequent operation to retrieve the next set\n      of results.</p>"}))
    ListPartnerEventSourceAccountsRequest.type = Types::ListPartnerEventSourceAccountsRequest
    ListPartnerEventSourceAccountsResponse.add_member(:partner_event_source_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerEventSourceAccountList, location_name: 'PartnerEventSourceAccounts', traits: {"smithy.api#documentation" => "<p>The list of partner event sources returned by the operation.</p>"}))
    ListPartnerEventSourceAccountsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token you can use in a subsequent operation to retrieve the next set of results.</p>"}))
    ListPartnerEventSourceAccountsResponse.type = Types::ListPartnerEventSourceAccountsResponse
    ListPartnerEventSourcesRequest.add_member(:name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerEventSourceNamePrefix, location_name: 'NamePrefix', traits: {"smithy.api#documentation" => "<p>If you specify this, the results are limited to only those partner event sources that\n      start with the string you specify.</p>", "smithy.api#required" => {}}))
    ListPartnerEventSourcesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call to this operation. Specifying this retrieves the\n      next set of results.</p>"}))
    ListPartnerEventSourcesRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitMax100, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>pecifying this limits the number of results returned by this operation. The operation also\n      returns a NextToken which you can use in a subsequent operation to retrieve the next set of\n      results.</p>"}))
    ListPartnerEventSourcesRequest.type = Types::ListPartnerEventSourcesRequest
    ListPartnerEventSourcesResponse.add_member(:partner_event_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerEventSourceList, location_name: 'PartnerEventSources', traits: {"smithy.api#documentation" => "<p>The list of partner event sources returned by the operation.</p>"}))
    ListPartnerEventSourcesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token you can use in a subsequent operation to retrieve the next set of results.</p>"}))
    ListPartnerEventSourcesResponse.type = Types::ListPartnerEventSourcesResponse
    ListReplaysRequest.add_member(:name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplayName, location_name: 'NamePrefix', traits: {"smithy.api#documentation" => "<p>A name prefix to filter the replays returned. Only replays with name that match the prefix\n      are returned.</p>"}))
    ListReplaysRequest.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplayState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the replay.</p>"}))
    ListReplaysRequest.add_member(:event_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'EventSourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the archive from which the events are replayed.</p>"}))
    ListReplaysRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call to retrieve the next set of results.</p>"}))
    ListReplaysRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitMax100, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of replays to retrieve.</p>"}))
    ListReplaysRequest.type = Types::ListReplaysRequest
    ListReplaysResponse.add_member(:replays, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplayList, location_name: 'Replays', traits: {"smithy.api#documentation" => "<p>An array of <code>Replay</code> objects that contain information about the replay.</p>"}))
    ListReplaysResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call to retrieve the next set of results.</p>"}))
    ListReplaysResponse.type = Types::ListReplaysResponse
    ListRuleNamesByTargetRequest.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetArn, location_name: 'TargetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the target resource.</p>", "smithy.api#required" => {}}))
    ListRuleNamesByTargetRequest.add_member(:event_bus_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusNameOrArn, location_name: 'EventBusName', traits: {"smithy.api#documentation" => "<p>The name or ARN of the event bus to list rules for. If you omit this, the default event\n      bus is used.</p>"}))
    ListRuleNamesByTargetRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call to retrieve the next set of results.</p>"}))
    ListRuleNamesByTargetRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitMax100, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>"}))
    ListRuleNamesByTargetRequest.type = Types::ListRuleNamesByTargetRequest
    ListRuleNamesByTargetResponse.add_member(:rule_names, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleNameList, location_name: 'RuleNames', traits: {"smithy.api#documentation" => "<p>The names of the rules that can invoke the given target.</p>"}))
    ListRuleNamesByTargetResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Indicates whether there are additional results to retrieve. If there are no more results,\n      the value is null.</p>"}))
    ListRuleNamesByTargetResponse.type = Types::ListRuleNamesByTargetResponse
    ListRulesRequest.add_member(:name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'NamePrefix', traits: {"smithy.api#documentation" => "<p>The prefix matching the rule name.</p>"}))
    ListRulesRequest.add_member(:event_bus_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusNameOrArn, location_name: 'EventBusName', traits: {"smithy.api#documentation" => "<p>The name or ARN of the event bus to list the rules for. If you omit this, the default\n      event bus is used.</p>"}))
    ListRulesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call to retrieve the next set of results.</p>"}))
    ListRulesRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitMax100, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>"}))
    ListRulesRequest.type = Types::ListRulesRequest
    ListRulesResponse.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleResponseList, location_name: 'Rules', traits: {"smithy.api#documentation" => "<p>The rules that match the specified criteria.</p>"}))
    ListRulesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Indicates whether there are additional results to retrieve. If there are no more results,\n      the value is null.</p>"}))
    ListRulesResponse.type = Types::ListRulesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the EventBridge resource for which you want to view tags.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of tag keys and values associated with the resource you specified</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTargetsByRuleRequest.add_member(:rule, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'Rule', traits: {"smithy.api#documentation" => "<p>The name of the rule.</p>", "smithy.api#required" => {}}))
    ListTargetsByRuleRequest.add_member(:event_bus_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusNameOrArn, location_name: 'EventBusName', traits: {"smithy.api#documentation" => "<p>The name or ARN of the event bus associated with the rule. If you omit this, the default\n      event bus is used.</p>"}))
    ListTargetsByRuleRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call to retrieve the next set of results.</p>"}))
    ListTargetsByRuleRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitMax100, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>"}))
    ListTargetsByRuleRequest.type = Types::ListTargetsByRuleRequest
    ListTargetsByRuleResponse.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetList, location_name: 'Targets', traits: {"smithy.api#documentation" => "<p>The targets assigned to the rule.</p>"}))
    ListTargetsByRuleResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Indicates whether there are additional results to retrieve. If there are no more results,\n      the value is null.</p>"}))
    ListTargetsByRuleResponse.type = Types::ListTargetsByRuleResponse
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
    PartnerEventSourceAccount.add_member(:expiration_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExpirationTime', traits: {"smithy.api#documentation" => "<p>The date and time that the event source will expire, if the Amazon Web Services account doesn't create a\n      matching event bus for it.</p>"}))
    PartnerEventSourceAccount.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSourceState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the event source. If it is ACTIVE, you have already created a matching event\n      bus for this event source, and that event bus is active. If it is PENDING, either you haven't\n      yet created a matching event bus, or that event bus is deactivated. If it is DELETED, you have\n      created a matching event bus, but the event source has since been deleted.</p>"}))
    PartnerEventSourceAccount.type = Types::PartnerEventSourceAccount
    PartnerEventSourceAccountList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerEventSourceAccount)
    PartnerEventSourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerEventSource)
    PathParameterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PathParameter)
    PlacementConstraint.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementConstraintType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of constraint. Use distinctInstance to ensure that each task in a particular\n      group is running on a different container instance. Use memberOf to restrict the selection to\n      a group of valid candidates. </p>"}))
    PlacementConstraint.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementConstraintExpression, location_name: 'expression', traits: {"smithy.api#documentation" => "<p>A cluster query language expression to apply to the constraint. You cannot specify an\n      expression if the constraint type is <code>distinctInstance</code>. To learn more, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html\">Cluster Query Language</a> in the Amazon Elastic Container Service Developer Guide.\n    </p>"}))
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
    PropagateTags.add_member(:task_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TASK_DEFINITION', traits: {"smithy.api#enumValue" => "TASK_DEFINITION"}))
    PutEventsRequest.add_member(:entries, Smithy::Schema::Shapes::ShapeRef.new(shape: PutEventsRequestEntryList, location_name: 'Entries', traits: {"smithy.api#documentation" => "<p>The entry that defines an event in your system. You can specify several parameters for the\n      entry such as the source and type of the event, resources associated with the event, and so\n      on.</p>", "smithy.api#required" => {}}))
    PutEventsRequest.type = Types::PutEventsRequest
    PutEventsRequestEntry.add_member(:time, Smithy::Schema::Shapes::ShapeRef.new(shape: EventTime, location_name: 'Time', traits: {"smithy.api#documentation" => "<p>The time stamp of the event, per <a href=\"https://www.rfc-editor.org/rfc/rfc3339.txt\">RFC3339</a>. If no time stamp is provided, the time stamp of the <a href=\"https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutEvents.html\">PutEvents</a> call is used.</p>"}))
    PutEventsRequestEntry.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Source', traits: {"smithy.api#documentation" => "<p>The source of the event.</p>"}))
    PutEventsRequestEntry.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: EventResourceList, location_name: 'Resources', traits: {"smithy.api#documentation" => "<p>Amazon Web Services resources, identified by Amazon Resource Name (ARN), which the event primarily\n      concerns. Any number, including zero, may be present.</p>"}))
    PutEventsRequestEntry.add_member(:detail_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DetailType', traits: {"smithy.api#documentation" => "<p>Free-form string used to decide what fields to expect in the event detail.</p>"}))
    PutEventsRequestEntry.add_member(:detail, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Detail', traits: {"smithy.api#documentation" => "<p>A valid JSON string. There is no other schema imposed. The JSON string may contain fields\n      and nested subobjects.</p>"}))
    PutEventsRequestEntry.add_member(:event_bus_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonPartnerEventBusNameOrArn, location_name: 'EventBusName', traits: {"smithy.api#documentation" => "<p>The name or ARN of the event bus to receive the event. Only the rules that are associated\n      with this event bus are used to match the event. If you omit this, the default event bus is\n      used.</p>"}))
    PutEventsRequestEntry.add_member(:trace_header, Smithy::Schema::Shapes::ShapeRef.new(shape: TraceHeader, location_name: 'TraceHeader', traits: {"smithy.api#documentation" => "<p>An X-Ray trade header, which is an http header (X-Amzn-Trace-Id) that contains the\n      trace-id associated with the event.</p>\n         <p>To learn more about X-Ray trace headers, see <a href=\"https://docs.aws.amazon.com/xray/latest/devguide/xray-concepts.html#xray-concepts-tracingheader\">Tracing header</a> in the X-Ray Developer Guide.</p>"}))
    PutEventsRequestEntry.type = Types::PutEventsRequestEntry
    PutEventsRequestEntryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEventsRequestEntry)
    PutEventsResponse.add_member(:failed_entry_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'FailedEntryCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of failed entries.</p>"}))
    PutEventsResponse.add_member(:entries, Smithy::Schema::Shapes::ShapeRef.new(shape: PutEventsResultEntryList, location_name: 'Entries', traits: {"smithy.api#documentation" => "<p>The successfully and unsuccessfully ingested events results. If the ingestion was\n      successful, the entry has the event ID in it. Otherwise, you can use the error code and error\n      message to identify the problem with the entry.</p>"}))
    PutEventsResponse.type = Types::PutEventsResponse
    PutEventsResultEntry.add_member(:event_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EventId, location_name: 'EventId', traits: {"smithy.api#documentation" => "<p>The ID of the event.</p>"}))
    PutEventsResultEntry.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code that indicates why the event submission failed.</p>"}))
    PutEventsResultEntry.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message that explains why the event submission failed.</p>"}))
    PutEventsResultEntry.type = Types::PutEventsResultEntry
    PutEventsResultEntryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEventsResultEntry)
    PutPartnerEventsRequest.add_member(:entries, Smithy::Schema::Shapes::ShapeRef.new(shape: PutPartnerEventsRequestEntryList, location_name: 'Entries', traits: {"smithy.api#documentation" => "<p>The list of events to write to the event bus.</p>", "smithy.api#required" => {}}))
    PutPartnerEventsRequest.type = Types::PutPartnerEventsRequest
    PutPartnerEventsRequestEntry.add_member(:time, Smithy::Schema::Shapes::ShapeRef.new(shape: EventTime, location_name: 'Time', traits: {"smithy.api#documentation" => "<p>The date and time of the event.</p>"}))
    PutPartnerEventsRequestEntry.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSourceName, location_name: 'Source', traits: {"smithy.api#documentation" => "<p>The event source that is generating the entry.</p>"}))
    PutPartnerEventsRequestEntry.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: EventResourceList, location_name: 'Resources', traits: {"smithy.api#documentation" => "<p>Amazon Web Services resources, identified by Amazon Resource Name (ARN), which the event primarily\n      concerns. Any number, including zero, may be present.</p>"}))
    PutPartnerEventsRequestEntry.add_member(:detail_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DetailType', traits: {"smithy.api#documentation" => "<p>A free-form string used to decide what fields to expect in the event detail.</p>"}))
    PutPartnerEventsRequestEntry.add_member(:detail, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Detail', traits: {"smithy.api#documentation" => "<p>A valid JSON string. There is no other schema imposed. The JSON string may contain fields\n      and nested subobjects.</p>"}))
    PutPartnerEventsRequestEntry.type = Types::PutPartnerEventsRequestEntry
    PutPartnerEventsRequestEntryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PutPartnerEventsRequestEntry)
    PutPartnerEventsResponse.add_member(:failed_entry_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'FailedEntryCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of events from this operation that could not be written to the partner event\n      bus.</p>"}))
    PutPartnerEventsResponse.add_member(:entries, Smithy::Schema::Shapes::ShapeRef.new(shape: PutPartnerEventsResultEntryList, location_name: 'Entries', traits: {"smithy.api#documentation" => "<p>The list of events from this operation that were successfully written to the partner event\n      bus.</p>"}))
    PutPartnerEventsResponse.type = Types::PutPartnerEventsResponse
    PutPartnerEventsResultEntry.add_member(:event_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EventId, location_name: 'EventId', traits: {"smithy.api#documentation" => "<p>The ID of the event.</p>"}))
    PutPartnerEventsResultEntry.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code that indicates why the event submission failed.</p>"}))
    PutPartnerEventsResultEntry.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message that explains why the event submission failed.</p>"}))
    PutPartnerEventsResultEntry.type = Types::PutPartnerEventsResultEntry
    PutPartnerEventsResultEntryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PutPartnerEventsResultEntry)
    PutPermissionRequest.add_member(:event_bus_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonPartnerEventBusName, location_name: 'EventBusName', traits: {"smithy.api#documentation" => "<p>The name of the event bus associated with the rule. If you omit this, the default event\n      bus is used.</p>"}))
    PutPermissionRequest.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The action that you are enabling the other account to perform.</p>"}))
    PutPermissionRequest.add_member(:principal, Smithy::Schema::Shapes::ShapeRef.new(shape: Principal, location_name: 'Principal', traits: {"smithy.api#documentation" => "<p>The 12-digit Amazon Web Services account ID that you are permitting to put events to your default event\n      bus. Specify \"*\" to permit any account to put events to your default event bus.</p>\n         <p>If you specify \"*\" without specifying <code>Condition</code>, avoid creating rules that\n      may match undesirable events. To create more secure rules, make sure that the event pattern\n      for each rule contains an <code>account</code> field with a specific account ID from which to\n      receive events. Rules with an account field do not match any events sent from other\n      accounts.</p>"}))
    PutPermissionRequest.add_member(:statement_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StatementId, location_name: 'StatementId', traits: {"smithy.api#documentation" => "<p>An identifier string for the external account that you are granting permissions to. If you\n      later want to revoke the permission for this external account, specify this\n      <code>StatementId</code> when you run <a href=\"https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_RemovePermission.html\">RemovePermission</a>.</p>"}))
    PutPermissionRequest.add_member(:condition, Smithy::Schema::Shapes::ShapeRef.new(shape: Condition, location_name: 'Condition', traits: {"smithy.api#documentation" => "<p>This parameter enables you to limit the permission to accounts that fulfill a certain\n      condition, such as being a member of a certain Amazon Web Services organization. For more information about\n      Amazon Web Services Organizations, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html\">What Is Amazon Web Services \n        Organizations</a> in the <i>Amazon Web Services Organizations User Guide</i>.</p>\n         <p>If you specify <code>Condition</code> with an Amazon Web Services organization ID, and specify \"*\" as the\n      value for <code>Principal</code>, you grant permission to all the accounts in the named\n      organization.</p>\n         <p>The <code>Condition</code> is a JSON string which must contain <code>Type</code>,\n        <code>Key</code>, and <code>Value</code> fields.</p>"}))
    PutPermissionRequest.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>A JSON string that describes the permission policy statement. You can include a\n        <code>Policy</code> parameter in the request instead of using the <code>StatementId</code>,\n        <code>Action</code>, <code>Principal</code>, or <code>Condition</code> parameters.</p>"}))
    PutPermissionRequest.type = Types::PutPermissionRequest
    PutRuleRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the rule that you are creating or updating.</p>", "smithy.api#required" => {}}))
    PutRuleRequest.add_member(:schedule_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: 'ScheduleExpression', traits: {"smithy.api#documentation" => "<p>The scheduling expression. For example, \"cron(0 20 * * ? *)\" or \"rate(5 minutes)\".</p>"}))
    PutRuleRequest.add_member(:event_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: EventPattern, location_name: 'EventPattern', traits: {"smithy.api#documentation" => "<p>The event pattern. For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html\">Events and Event\n        Patterns</a> in the <i>Amazon EventBridge User Guide</i>.</p>"}))
    PutRuleRequest.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>Indicates whether the rule is enabled or disabled.</p>"}))
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
    RedshiftDataParameters.add_member(:sql, Smithy::Schema::Shapes::ShapeRef.new(shape: Sql, location_name: 'Sql', traits: {"smithy.api#documentation" => "<p>The SQL statement text to run.</p>", "smithy.api#required" => {}}))
    RedshiftDataParameters.add_member(:statement_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StatementName, location_name: 'StatementName', traits: {"smithy.api#documentation" => "<p>The name of the SQL statement. You can name the SQL statement when you create it to\n      identify the query.</p>"}))
    RedshiftDataParameters.add_member(:with_event, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'WithEvent', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether to send an event back to EventBridge after the SQL statement\n      runs.</p>"}))
    RedshiftDataParameters.type = Types::RedshiftDataParameters
    RemovePermissionRequest.add_member(:statement_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StatementId, location_name: 'StatementId', traits: {"smithy.api#documentation" => "<p>The statement ID corresponding to the account that is no longer allowed to put events to\n      the default event bus.</p>"}))
    RemovePermissionRequest.add_member(:remove_all_permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RemoveAllPermissions', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether to remove all permissions.</p>"}))
    RemovePermissionRequest.add_member(:event_bus_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonPartnerEventBusName, location_name: 'EventBusName', traits: {"smithy.api#documentation" => "<p>The name of the event bus to revoke permissions for. If you omit this, the default event\n      bus is used.</p>"}))
    RemovePermissionRequest.type = Types::RemovePermissionRequest
    RemoveTargetsRequest.add_member(:rule, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'Rule', traits: {"smithy.api#documentation" => "<p>The name of the rule.</p>", "smithy.api#required" => {}}))
    RemoveTargetsRequest.add_member(:event_bus_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusNameOrArn, location_name: 'EventBusName', traits: {"smithy.api#documentation" => "<p>The name or ARN of the event bus associated with the rule. If you omit this, the default\n      event bus is used.</p>"}))
    RemoveTargetsRequest.add_member(:ids, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetIdList, location_name: 'Ids', traits: {"smithy.api#documentation" => "<p>The IDs of the targets to remove from the rule.</p>", "smithy.api#required" => {}}))
    RemoveTargetsRequest.add_member(:force, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Force', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If this is a managed rule, created by an Amazon Web Services service on your behalf, you must specify\n        <code>Force</code> as <code>True</code> to remove targets. This parameter is ignored for\n      rules that are not managed rules. You can check whether a rule is a managed rule by using\n        <code>DescribeRule</code> or <code>ListRules</code> and checking the <code>ManagedBy</code>\n      field of the response.</p>"}))
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
    Replay.add_member(:event_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'EventSourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the archive to replay event from.</p>"}))
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
    ResourceAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RetryPolicy.add_member(:maximum_retry_attempts, Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumRetryAttempts, location_name: 'MaximumRetryAttempts', traits: {"smithy.api#documentation" => "<p>The maximum number of retry attempts to make before the request fails. Retry attempts\n      continue until either the maximum number of attempts is made or until the duration of the\n        <code>MaximumEventAgeInSeconds</code> is met.</p>"}))
    RetryPolicy.add_member(:maximum_event_age_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumEventAgeInSeconds, location_name: 'MaximumEventAgeInSeconds', traits: {"smithy.api#documentation" => "<p>The maximum amount of time, in seconds, to continue to make retry attempts.</p>"}))
    RetryPolicy.type = Types::RetryPolicy
    Rule.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the rule.</p>"}))
    Rule.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the rule.</p>"}))
    Rule.add_member(:event_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: EventPattern, location_name: 'EventPattern', traits: {"smithy.api#documentation" => "<p>The event pattern of the rule. For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html\">Events and Event\n        Patterns</a> in the <i>Amazon EventBridge User Guide</i>.</p>"}))
    Rule.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the rule.</p>"}))
    Rule.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the rule.</p>"}))
    Rule.add_member(:schedule_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: 'ScheduleExpression', traits: {"smithy.api#documentation" => "<p>The scheduling expression. For example, \"cron(0 20 * * ? *)\", \"rate(5 minutes)\". For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-create-rule-schedule.html\">Creating an Amazon EventBridge rule that runs on a schedule</a>.</p>"}))
    Rule.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the role that is used for target invocation.</p>\n         <p>If you're setting an event bus in another account as the target and that account granted\n      permission to your account through an organization instead of directly by the account ID, you\n      must specify a <code>RoleArn</code> with proper permissions in the <code>Target</code>\n      structure, instead of here in this parameter.</p>"}))
    Rule.add_member(:managed_by, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedBy, location_name: 'ManagedBy', traits: {"smithy.api#documentation" => "<p>If the rule was created on behalf of your account by an Amazon Web Services service, this field displays\n      the principal name of the service that created the rule.</p>"}))
    Rule.add_member(:event_bus_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBusName, location_name: 'EventBusName', traits: {"smithy.api#documentation" => "<p>The name or ARN of the event bus associated with the rule. If you omit this, the default\n      event bus is used.</p>"}))
    Rule.type = Types::Rule
    RuleNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName)
    RuleResponseList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Rule)
    RuleState.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    RuleState.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    RunCommandParameters.add_member(:run_command_targets, Smithy::Schema::Shapes::ShapeRef.new(shape: RunCommandTargets, location_name: 'RunCommandTargets', traits: {"smithy.api#documentation" => "<p>Currently, we support including only one RunCommandTarget block, which specifies either an\n      array of InstanceIds or a tag.</p>", "smithy.api#required" => {}}))
    RunCommandParameters.type = Types::RunCommandParameters
    RunCommandTarget.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: RunCommandTargetKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>Can be either <code>tag:</code>\n            <i>tag-key</i> or\n      <code>InstanceIds</code>.</p>", "smithy.api#required" => {}}))
    RunCommandTarget.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: RunCommandTargetValues, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>If <code>Key</code> is <code>tag:</code>\n            <i>tag-key</i>, <code>Values</code>\n      is a list of tag values. If <code>Key</code> is <code>InstanceIds</code>, <code>Values</code>\n      is a list of Amazon EC2 instance IDs.</p>", "smithy.api#required" => {}}))
    RunCommandTarget.type = Types::RunCommandTarget
    RunCommandTargetValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RunCommandTargetValue)
    RunCommandTargets.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RunCommandTarget)
    SageMakerPipelineParameter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SageMakerPipelineParameterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of parameter to start execution of a SageMaker Model Building Pipeline.</p>", "smithy.api#required" => {}}))
    SageMakerPipelineParameter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: SageMakerPipelineParameterValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>Value of parameter to start execution of a SageMaker Model Building Pipeline.</p>", "smithy.api#required" => {}}))
    SageMakerPipelineParameter.type = Types::SageMakerPipelineParameter
    SageMakerPipelineParameterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SageMakerPipelineParameter)
    SageMakerPipelineParameters.add_member(:pipeline_parameter_list, Smithy::Schema::Shapes::ShapeRef.new(shape: SageMakerPipelineParameterList, location_name: 'PipelineParameterList', traits: {"smithy.api#documentation" => "<p>List of Parameter names and values for SageMaker Model Building Pipeline execution.</p>"}))
    SageMakerPipelineParameters.type = Types::SageMakerPipelineParameters
    SqsParameters.add_member(:message_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageGroupId, location_name: 'MessageGroupId', traits: {"smithy.api#documentation" => "<p>The FIFO message group ID to use as the target.</p>"}))
    SqsParameters.type = Types::SqsParameters
    StartReplayRequest.add_member(:replay_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplayName, location_name: 'ReplayName', traits: {"smithy.api#documentation" => "<p>The name of the replay to start.</p>", "smithy.api#required" => {}}))
    StartReplayRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplayDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description for the replay to start.</p>"}))
    StartReplayRequest.add_member(:event_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'EventSourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the archive to replay events from.</p>", "smithy.api#required" => {}}))
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
    Target.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the target. We recommend using a memorable and unique string.</p>", "smithy.api#required" => {}}))
    Target.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the target.</p>", "smithy.api#required" => {}}))
    Target.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role to be used for this target when the rule is\n      triggered. If one rule triggers multiple targets, you can use a different IAM role for each\n      target.</p>"}))
    Target.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetInput, location_name: 'Input', traits: {"smithy.api#documentation" => "<p>Valid JSON text passed to the target. In this case, nothing from the event itself is\n      passed to the target. For more information, see <a href=\"http://www.rfc-editor.org/rfc/rfc7159.txt\">The JavaScript Object Notation (JSON) Data\n        Interchange Format</a>.</p>"}))
    Target.add_member(:input_path, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetInputPath, location_name: 'InputPath', traits: {"smithy.api#documentation" => "<p>The value of the JSONPath that is used for extracting part of the matched event when\n      passing it to the target. You must use JSON dot notation, not bracket notation. For more\n      information about JSON paths, see <a href=\"http://goessner.net/articles/JsonPath/\">JSONPath</a>.</p>"}))
    Target.add_member(:input_transformer, Smithy::Schema::Shapes::ShapeRef.new(shape: InputTransformer, location_name: 'InputTransformer', traits: {"smithy.api#documentation" => "<p>Settings to enable you to provide custom input to a target based on certain event data.\n      You can extract one or more key-value pairs from the event and then use that data to send\n      customized input to the target.</p>"}))
    Target.add_member(:kinesis_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisParameters, location_name: 'KinesisParameters', traits: {"smithy.api#documentation" => "<p>The custom parameter you can use to control the shard assignment, when the target is a\n      Kinesis data stream. If you do not include this parameter, the default is to use the\n        <code>eventId</code> as the partition key.</p>"}))
    Target.add_member(:run_command_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: RunCommandParameters, location_name: 'RunCommandParameters', traits: {"smithy.api#documentation" => "<p>Parameters used when you are using the rule to invoke Amazon EC2 Run Command.</p>"}))
    Target.add_member(:ecs_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: EcsParameters, location_name: 'EcsParameters', traits: {"smithy.api#documentation" => "<p>Contains the Amazon ECS task definition and task count to be used, if the event target is\n      an Amazon ECS task. For more information about Amazon ECS tasks, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html\">Task\n        Definitions </a> in the <i>Amazon EC2 Container Service Developer\n        Guide</i>.</p>"}))
    Target.add_member(:batch_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchParameters, location_name: 'BatchParameters', traits: {"smithy.api#documentation" => "<p>If the event target is an Batch job, this contains the job definition, job name, and\n      other parameters. For more information, see <a href=\"https://docs.aws.amazon.com/batch/latest/userguide/jobs.html\">Jobs</a> in the <i>Batch User\n        Guide</i>.</p>"}))
    Target.add_member(:sqs_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SqsParameters, location_name: 'SqsParameters', traits: {"smithy.api#documentation" => "<p>Contains the message group ID to use when the target is a FIFO queue.</p>\n         <p>If you specify an SQS FIFO queue as a target, the queue must have content-based\n      deduplication enabled.</p>"}))
    Target.add_member(:http_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpParameters, location_name: 'HttpParameters', traits: {"smithy.api#documentation" => "<p>Contains the HTTP parameters to use when the target is a API Gateway REST endpoint or\n      EventBridge ApiDestination.</p>\n         <p>If you specify an API Gateway REST API or EventBridge ApiDestination as a target, you can\n      use this parameter to specify headers, path parameters, and query string keys/values as part\n      of your target invoking request. If you're using ApiDestinations, the corresponding Connection\n      can also have these values configured. In case of any conflicting keys, values from the\n      Connection take precedence.</p>"}))
    Target.add_member(:redshift_data_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftDataParameters, location_name: 'RedshiftDataParameters', traits: {"smithy.api#documentation" => "<p>Contains the Amazon Redshift Data API parameters to use when the target is a Amazon Redshift\n      cluster.</p>\n         <p>If you specify a Amazon Redshift Cluster as a Target, you can use this to specify parameters to\n      invoke the Amazon Redshift Data API ExecuteStatement based on EventBridge events.</p>"}))
    Target.add_member(:sage_maker_pipeline_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SageMakerPipelineParameters, location_name: 'SageMakerPipelineParameters', traits: {"smithy.api#documentation" => "<p>Contains the SageMaker Model Building Pipeline parameters to start execution of a\n      SageMaker Model Building Pipeline.</p>\n         <p>If you specify a SageMaker Model Building Pipeline as a target, you can use this to\n      specify parameters to start a pipeline execution based on EventBridge events.</p>"}))
    Target.add_member(:dead_letter_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DeadLetterConfig, location_name: 'DeadLetterConfig', traits: {"smithy.api#documentation" => "<p>The <code>DeadLetterConfig</code> that defines the target queue to send dead-letter queue\n      events to.</p>"}))
    Target.add_member(:retry_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryPolicy, location_name: 'RetryPolicy', traits: {"smithy.api#documentation" => "<p>The <code>RetryPolicy</code> object that contains the retry policy configuration to use\n      for the dead-letter queue.</p>"}))
    Target.type = Types::Target
    TargetIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId)
    TargetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Target)
    TestEventPatternRequest.add_member(:event_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: EventPattern, location_name: 'EventPattern', traits: {"smithy.api#documentation" => "<p>The event pattern. For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html\">Events and Event\n        Patterns</a> in the <i>Amazon EventBridge User Guide</i>.</p>", "smithy.api#required" => {}}))
    TestEventPatternRequest.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Event', traits: {"smithy.api#documentation" => "<p>The event, in JSON format, to test against the event pattern. The JSON must follow the\n      format specified in <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/aws-events.html\">Amazon Web Services Events</a>, and the following\n      fields are mandatory:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>id</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>account</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>source</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>time</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>region</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>resources</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>detail-type</code>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    TestEventPatternRequest.type = Types::TestEventPatternRequest
    TestEventPatternResponse.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Result', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether the event matches the event pattern.</p>"}))
    TestEventPatternResponse.type = Types::TestEventPatternResponse
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
    UpdateArchiveRequest.type = Types::UpdateArchiveRequest
    UpdateArchiveResponse.add_member(:archive_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveArn, location_name: 'ArchiveArn', traits: {"smithy.api#documentation" => "<p>The ARN of the archive.</p>"}))
    UpdateArchiveResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the archive.</p>"}))
    UpdateArchiveResponse.add_member(:state_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveStateReason, location_name: 'StateReason', traits: {"smithy.api#documentation" => "<p>The reason that the archive is in the current state.</p>"}))
    UpdateArchiveResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time at which the archive was updated.</p>"}))
    UpdateArchiveResponse.type = Types::UpdateArchiveResponse
    UpdateConnectionApiKeyAuthRequestParameters.add_member(:api_key_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthHeaderParameters, location_name: 'ApiKeyName', traits: {"smithy.api#documentation" => "<p>The name of the API key to use for authorization.</p>"}))
    UpdateConnectionApiKeyAuthRequestParameters.add_member(:api_key_value, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthHeaderParametersSensitive, location_name: 'ApiKeyValue', traits: {"smithy.api#documentation" => "<p>The value associated with teh API key to use for authorization.</p>"}))
    UpdateConnectionApiKeyAuthRequestParameters.type = Types::UpdateConnectionApiKeyAuthRequestParameters
    UpdateConnectionAuthRequestParameters.add_member(:basic_auth_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectionBasicAuthRequestParameters, location_name: 'BasicAuthParameters', traits: {"smithy.api#documentation" => "<p>A <code>UpdateConnectionBasicAuthRequestParameters</code> object that contains the\n      authorization parameters for Basic authorization.</p>"}))
    UpdateConnectionAuthRequestParameters.add_member(:o_auth_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectionOAuthRequestParameters, location_name: 'OAuthParameters', traits: {"smithy.api#documentation" => "<p>A <code>UpdateConnectionOAuthRequestParameters</code> object that contains the\n      authorization parameters for OAuth authorization.</p>"}))
    UpdateConnectionAuthRequestParameters.add_member(:api_key_auth_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectionApiKeyAuthRequestParameters, location_name: 'ApiKeyAuthParameters', traits: {"smithy.api#documentation" => "<p>A <code>UpdateConnectionApiKeyAuthRequestParameters</code> object that contains the\n      authorization parameters for API key authorization.</p>"}))
    UpdateConnectionAuthRequestParameters.add_member(:invocation_http_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionHttpParameters, location_name: 'InvocationHttpParameters', traits: {"smithy.api#documentation" => "<p>A <code>ConnectionHttpParameters</code> object that contains the additional parameters to\n      use for the connection.</p>"}))
    UpdateConnectionAuthRequestParameters.type = Types::UpdateConnectionAuthRequestParameters
    UpdateConnectionBasicAuthRequestParameters.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthHeaderParameters, location_name: 'Username', traits: {"smithy.api#documentation" => "<p>The user name to use for Basic authorization.</p>"}))
    UpdateConnectionBasicAuthRequestParameters.add_member(:password, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthHeaderParametersSensitive, location_name: 'Password', traits: {"smithy.api#documentation" => "<p>The password associated with the user name to use for Basic authorization.</p>"}))
    UpdateConnectionBasicAuthRequestParameters.type = Types::UpdateConnectionBasicAuthRequestParameters
    UpdateConnectionOAuthClientRequestParameters.add_member(:client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthHeaderParameters, location_name: 'ClientID', traits: {"smithy.api#documentation" => "<p>The client ID to use for OAuth authorization.</p>"}))
    UpdateConnectionOAuthClientRequestParameters.add_member(:client_secret, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthHeaderParametersSensitive, location_name: 'ClientSecret', traits: {"smithy.api#documentation" => "<p>The client secret assciated with the client ID to use for OAuth authorization.</p>"}))
    UpdateConnectionOAuthClientRequestParameters.type = Types::UpdateConnectionOAuthClientRequestParameters
    UpdateConnectionOAuthRequestParameters.add_member(:client_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectionOAuthClientRequestParameters, location_name: 'ClientParameters', traits: {"smithy.api#documentation" => "<p>A <code>UpdateConnectionOAuthClientRequestParameters</code> object that contains the\n      client parameters to use for the connection when OAuth is specified as the authorization\n      type.</p>"}))
    UpdateConnectionOAuthRequestParameters.add_member(:authorization_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpsEndpoint, location_name: 'AuthorizationEndpoint', traits: {"smithy.api#documentation" => "<p>The URL to the authorization endpoint when OAuth is specified as the authorization\n      type.</p>"}))
    UpdateConnectionOAuthRequestParameters.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionOAuthHttpMethod, location_name: 'HttpMethod', traits: {"smithy.api#documentation" => "<p>The method used to connect to the HTTP endpoint.</p>"}))
    UpdateConnectionOAuthRequestParameters.add_member(:o_auth_http_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionHttpParameters, location_name: 'OAuthHttpParameters', traits: {"smithy.api#documentation" => "<p>The additional HTTP parameters used for the OAuth authorization request.</p>"}))
    UpdateConnectionOAuthRequestParameters.type = Types::UpdateConnectionOAuthRequestParameters
    UpdateConnectionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the connection to update.</p>", "smithy.api#required" => {}}))
    UpdateConnectionRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description for the connection.</p>"}))
    UpdateConnectionRequest.add_member(:authorization_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAuthorizationType, location_name: 'AuthorizationType', traits: {"smithy.api#documentation" => "<p>The type of authorization to use for the connection.</p>"}))
    UpdateConnectionRequest.add_member(:auth_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectionAuthRequestParameters, location_name: 'AuthParameters', traits: {"smithy.api#documentation" => "<p>The authorization parameters to use for the connection.</p>"}))
    UpdateConnectionRequest.type = Types::UpdateConnectionRequest
    UpdateConnectionResponse.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: 'ConnectionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the connection that was updated.</p>"}))
    UpdateConnectionResponse.add_member(:connection_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionState, location_name: 'ConnectionState', traits: {"smithy.api#documentation" => "<p>The state of the connection that was updated.</p>"}))
    UpdateConnectionResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the connection was created.</p>"}))
    UpdateConnectionResponse.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the connection was last modified.</p>"}))
    UpdateConnectionResponse.add_member(:last_authorized_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastAuthorizedTime', traits: {"smithy.api#documentation" => "<p>A time stamp for the time that the connection was last authorized.</p>"}))
    UpdateConnectionResponse.type = Types::UpdateConnectionResponse

    AWSEvents = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.cloudwatchevents#AWSEvents"
      service.name = "AWSEvents"
      service.version = "2015-10-07"
      service.traits = {"aws.api#service" => {"sdkId" => "CloudWatch Events", "arnNamespace" => "events", "cloudFormationName" => "Events", "cloudTrailEventSource" => "events.amazonaws.com", "docId" => "events-2015-10-07", "endpointPrefix" => "events"}, "aws.auth#sigv4" => {"name" => "events"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon CloudWatch Events", "smithy.api#xmlNamespace" => {"uri" => "http://events.amazonaws.com/doc/2015-10-07"}}
      service.add_operation(:activate_event_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#ActivateEventSource"
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
        operation.id = "com.amazonaws.cloudwatchevents#CancelReplay"
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
        operation.id = "com.amazonaws.cloudwatchevents#CreateApiDestination"
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
        operation.id = "com.amazonaws.cloudwatchevents#CreateArchive"
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
        operation.id = "com.amazonaws.cloudwatchevents#CreateConnection"
        operation.name = "CreateConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.traits = {}
      end)
      service.add_operation(:create_event_bus, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#CreateEventBus"
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
        operation.id = "com.amazonaws.cloudwatchevents#CreatePartnerEventSource"
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
        operation.id = "com.amazonaws.cloudwatchevents#DeactivateEventSource"
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
        operation.id = "com.amazonaws.cloudwatchevents#DeauthorizeConnection"
        operation.name = "DeauthorizeConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeauthorizeConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeauthorizeConnectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_api_destination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DeleteApiDestination"
        operation.name = "DeleteApiDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApiDestinationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApiDestinationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_archive, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DeleteArchive"
        operation.name = "DeleteArchive"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteArchiveRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteArchiveResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DeleteConnection"
        operation.name = "DeleteConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_event_bus, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DeleteEventBus"
        operation.name = "DeleteEventBus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventBusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.traits = {}
      end)
      service.add_operation(:delete_partner_event_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DeletePartnerEventSource"
        operation.name = "DeletePartnerEventSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePartnerEventSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationDisabledException)
        operation.traits = {}
      end)
      service.add_operation(:delete_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DeleteRule"
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
        operation.id = "com.amazonaws.cloudwatchevents#DescribeApiDestination"
        operation.name = "DescribeApiDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApiDestinationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApiDestinationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_archive, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DescribeArchive"
        operation.name = "DescribeArchive"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeArchiveRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeArchiveResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DescribeConnection"
        operation.name = "DescribeConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConnectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_event_bus, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DescribeEventBus"
        operation.name = "DescribeEventBus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventBusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventBusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_event_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DescribeEventSource"
        operation.name = "DescribeEventSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventSourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_partner_event_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DescribePartnerEventSource"
        operation.name = "DescribePartnerEventSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePartnerEventSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePartnerEventSourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_replay, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DescribeReplay"
        operation.name = "DescribeReplay"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplayRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplayResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DescribeRule"
        operation.name = "DescribeRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:disable_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DisableRule"
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
        operation.id = "com.amazonaws.cloudwatchevents#EnableRule"
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
        operation.id = "com.amazonaws.cloudwatchevents#ListApiDestinations"
        operation.name = "ListApiDestinations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApiDestinationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApiDestinationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.traits = {}
      end)
      service.add_operation(:list_archives, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#ListArchives"
        operation.name = "ListArchives"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListArchivesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListArchivesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_connections, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#ListConnections"
        operation.name = "ListConnections"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.traits = {}
      end)
      service.add_operation(:list_event_buses, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#ListEventBuses"
        operation.name = "ListEventBuses"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventBusesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventBusesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.traits = {}
      end)
      service.add_operation(:list_event_sources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#ListEventSources"
        operation.name = "ListEventSources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventSourcesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventSourcesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationDisabledException)
        operation.traits = {}
      end)
      service.add_operation(:list_partner_event_source_accounts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#ListPartnerEventSourceAccounts"
        operation.name = "ListPartnerEventSourceAccounts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPartnerEventSourceAccountsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPartnerEventSourceAccountsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_partner_event_sources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#ListPartnerEventSources"
        operation.name = "ListPartnerEventSources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPartnerEventSourcesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPartnerEventSourcesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationDisabledException)
        operation.traits = {}
      end)
      service.add_operation(:list_replays, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#ListReplays"
        operation.name = "ListReplays"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReplaysRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReplaysResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.traits = {}
      end)
      service.add_operation(:list_rule_names_by_target, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#ListRuleNamesByTarget"
        operation.name = "ListRuleNamesByTarget"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRuleNamesByTargetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRuleNamesByTargetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_rules, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#ListRules"
        operation.name = "ListRules"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRulesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRulesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_targets_by_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#ListTargetsByRule"
        operation.name = "ListTargetsByRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTargetsByRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTargetsByRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:put_events, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#PutEvents"
        operation.name = "PutEvents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEventsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEventsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.traits = {}
      end)
      service.add_operation(:put_partner_events, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#PutPartnerEvents"
        operation.name = "PutPartnerEvents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutPartnerEventsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutPartnerEventsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationDisabledException)
        operation.traits = {}
      end)
      service.add_operation(:put_permission, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#PutPermission"
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
        operation.id = "com.amazonaws.cloudwatchevents#PutRule"
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
        operation.id = "com.amazonaws.cloudwatchevents#PutTargets"
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
        operation.id = "com.amazonaws.cloudwatchevents#RemovePermission"
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
        operation.id = "com.amazonaws.cloudwatchevents#RemoveTargets"
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
        operation.id = "com.amazonaws.cloudwatchevents#StartReplay"
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
        operation.id = "com.amazonaws.cloudwatchevents#TagResource"
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
        operation.id = "com.amazonaws.cloudwatchevents#TestEventPattern"
        operation.name = "TestEventPattern"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TestEventPatternRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TestEventPatternResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEventPatternException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#UntagResource"
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
        operation.id = "com.amazonaws.cloudwatchevents#UpdateApiDestination"
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
        operation.id = "com.amazonaws.cloudwatchevents#UpdateArchive"
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
        operation.id = "com.amazonaws.cloudwatchevents#UpdateConnection"
        operation.name = "UpdateConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
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
