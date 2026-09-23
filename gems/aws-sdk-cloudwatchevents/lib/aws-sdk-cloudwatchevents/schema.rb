# frozen_string_literal: true

# This is generated code!

module Aws::CloudWatchEvents
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    Action = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#Action", name: "Action", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^events:[a-zA-Z]+$"})
    ActivateEventSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ActivateEventSourceRequest", name: "ActivateEventSourceRequest")
    ApiDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ApiDestination", name: "ApiDestination")
    ApiDestinationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#ApiDestinationArn", name: "ApiDestinationArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:aws([a-z]|\\-)*:events:([a-z]|\\d|\\-)*:([0-9]{12})?:api-destination\\/[\\.\\-_A-Za-z0-9]+\\/[\\-A-Za-z0-9]+$"})
    ApiDestinationDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#ApiDestinationDescription", name: "ApiDestinationDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => ".*"})
    ApiDestinationHttpMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchevents#ApiDestinationHttpMethod", name: "ApiDestinationHttpMethod")
    ApiDestinationInvocationRateLimitPerSecond = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchevents#ApiDestinationInvocationRateLimitPerSecond", name: "ApiDestinationInvocationRateLimitPerSecond", traits: {"smithy.api#range" => {"min" => 1}})
    ApiDestinationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#ApiDestinationName", name: "ApiDestinationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\.\\-_A-Za-z0-9]+$"})
    ApiDestinationResponseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#ApiDestinationResponseList", name: "ApiDestinationResponseList")
    ApiDestinationState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchevents#ApiDestinationState", name: "ApiDestinationState")
    Archive = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#Archive", name: "Archive")
    ArchiveArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#ArchiveArn", name: "ArchiveArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:aws([a-z]|\\-)*:events:([a-z]|\\d|\\-)*:([0-9]{12})?:.+\\/.+$"})
    ArchiveDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#ArchiveDescription", name: "ArchiveDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => ".*"})
    ArchiveName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#ArchiveName", name: "ArchiveName", traits: {"smithy.api#length" => {"min" => 1, "max" => 48}, "smithy.api#pattern" => "^[\\.\\-_A-Za-z0-9]+$"})
    ArchiveResponseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#ArchiveResponseList", name: "ArchiveResponseList")
    ArchiveState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchevents#ArchiveState", name: "ArchiveState")
    ArchiveStateReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#ArchiveStateReason", name: "ArchiveStateReason", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => ".*"})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}})
    AssignPublicIp = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchevents#AssignPublicIp", name: "AssignPublicIp")
    AuthHeaderParameters = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#AuthHeaderParameters", name: "AuthHeaderParameters", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[ \\t]*[^\\x00-\\x1F:\\x7F]+([ \\t]+[^\\x00-\\x1F:\\x7F]+)*[ \\t]*$"})
    AuthHeaderParametersSensitive = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#AuthHeaderParametersSensitive", name: "AuthHeaderParametersSensitive", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[ \\t]*[^\\x00-\\x1F:\\x7F]+([ \\t]+[^\\x00-\\x1F:\\x7F]+)*[ \\t]*$", "smithy.api#sensitive" => {}})
    AwsVpcConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#AwsVpcConfiguration", name: "AwsVpcConfiguration")
    BatchArrayProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#BatchArrayProperties", name: "BatchArrayProperties")
    BatchParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#BatchParameters", name: "BatchParameters")
    BatchRetryStrategy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#BatchRetryStrategy", name: "BatchRetryStrategy")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudwatchevents#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    CancelReplayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#CancelReplayRequest", name: "CancelReplayRequest")
    CancelReplayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#CancelReplayResponse", name: "CancelReplayResponse")
    CapacityProvider = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#CapacityProvider", name: "CapacityProvider", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    CapacityProviderStrategy = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#CapacityProviderStrategy", name: "CapacityProviderStrategy", traits: {"smithy.api#length" => {"min" => 0, "max" => 6}})
    CapacityProviderStrategyItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#CapacityProviderStrategyItem", name: "CapacityProviderStrategyItem")
    CapacityProviderStrategyItemBase = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchevents#CapacityProviderStrategyItemBase", name: "CapacityProviderStrategyItemBase", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100000}})
    CapacityProviderStrategyItemWeight = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchevents#CapacityProviderStrategyItemWeight", name: "CapacityProviderStrategyItemWeight", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1000}})
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ConcurrentModificationException", name: "ConcurrentModificationException", traits: {"smithy.api#error" => "client"})
    Condition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#Condition", name: "Condition")
    Connection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#Connection", name: "Connection")
    ConnectionApiKeyAuthResponseParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ConnectionApiKeyAuthResponseParameters", name: "ConnectionApiKeyAuthResponseParameters")
    ConnectionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#ConnectionArn", name: "ConnectionArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:aws([a-z]|\\-)*:events:([a-z]|\\d|\\-)*:([0-9]{12})?:connection\\/[\\.\\-_A-Za-z0-9]+\\/[\\-A-Za-z0-9]+$"})
    ConnectionAuthResponseParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ConnectionAuthResponseParameters", name: "ConnectionAuthResponseParameters")
    ConnectionAuthorizationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchevents#ConnectionAuthorizationType", name: "ConnectionAuthorizationType")
    ConnectionBasicAuthResponseParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ConnectionBasicAuthResponseParameters", name: "ConnectionBasicAuthResponseParameters")
    ConnectionBodyParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ConnectionBodyParameter", name: "ConnectionBodyParameter")
    ConnectionBodyParametersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#ConnectionBodyParametersList", name: "ConnectionBodyParametersList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ConnectionDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#ConnectionDescription", name: "ConnectionDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => ".*"})
    ConnectionHeaderParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ConnectionHeaderParameter", name: "ConnectionHeaderParameter")
    ConnectionHeaderParametersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#ConnectionHeaderParametersList", name: "ConnectionHeaderParametersList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ConnectionHttpParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ConnectionHttpParameters", name: "ConnectionHttpParameters")
    ConnectionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#ConnectionName", name: "ConnectionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\.\\-_A-Za-z0-9]+$"})
    ConnectionOAuthClientResponseParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ConnectionOAuthClientResponseParameters", name: "ConnectionOAuthClientResponseParameters")
    ConnectionOAuthHttpMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchevents#ConnectionOAuthHttpMethod", name: "ConnectionOAuthHttpMethod")
    ConnectionOAuthResponseParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ConnectionOAuthResponseParameters", name: "ConnectionOAuthResponseParameters")
    ConnectionQueryStringParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ConnectionQueryStringParameter", name: "ConnectionQueryStringParameter")
    ConnectionQueryStringParametersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#ConnectionQueryStringParametersList", name: "ConnectionQueryStringParametersList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ConnectionResponseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#ConnectionResponseList", name: "ConnectionResponseList")
    ConnectionState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchevents#ConnectionState", name: "ConnectionState")
    ConnectionStateReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#ConnectionStateReason", name: "ConnectionStateReason", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => ".*"})
    CreateApiDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#CreateApiDestinationRequest", name: "CreateApiDestinationRequest")
    CreateApiDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#CreateApiDestinationResponse", name: "CreateApiDestinationResponse")
    CreateArchiveRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#CreateArchiveRequest", name: "CreateArchiveRequest")
    CreateArchiveResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#CreateArchiveResponse", name: "CreateArchiveResponse")
    CreateConnectionApiKeyAuthRequestParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#CreateConnectionApiKeyAuthRequestParameters", name: "CreateConnectionApiKeyAuthRequestParameters")
    CreateConnectionAuthRequestParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#CreateConnectionAuthRequestParameters", name: "CreateConnectionAuthRequestParameters")
    CreateConnectionBasicAuthRequestParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#CreateConnectionBasicAuthRequestParameters", name: "CreateConnectionBasicAuthRequestParameters")
    CreateConnectionOAuthClientRequestParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#CreateConnectionOAuthClientRequestParameters", name: "CreateConnectionOAuthClientRequestParameters")
    CreateConnectionOAuthRequestParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#CreateConnectionOAuthRequestParameters", name: "CreateConnectionOAuthRequestParameters")
    CreateConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#CreateConnectionRequest", name: "CreateConnectionRequest")
    CreateConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#CreateConnectionResponse", name: "CreateConnectionResponse")
    CreateEventBusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#CreateEventBusRequest", name: "CreateEventBusRequest")
    CreateEventBusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#CreateEventBusResponse", name: "CreateEventBusResponse")
    CreatePartnerEventSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#CreatePartnerEventSourceRequest", name: "CreatePartnerEventSourceRequest")
    CreatePartnerEventSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#CreatePartnerEventSourceResponse", name: "CreatePartnerEventSourceResponse")
    CreatedBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#CreatedBy", name: "CreatedBy", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    Database = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#Database", name: "Database", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    DbUser = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#DbUser", name: "DbUser", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    DeactivateEventSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#DeactivateEventSourceRequest", name: "DeactivateEventSourceRequest")
    DeadLetterConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#DeadLetterConfig", name: "DeadLetterConfig")
    DeauthorizeConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#DeauthorizeConnectionRequest", name: "DeauthorizeConnectionRequest")
    DeauthorizeConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#DeauthorizeConnectionResponse", name: "DeauthorizeConnectionResponse")
    DeleteApiDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#DeleteApiDestinationRequest", name: "DeleteApiDestinationRequest")
    DeleteApiDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#DeleteApiDestinationResponse", name: "DeleteApiDestinationResponse")
    DeleteArchiveRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#DeleteArchiveRequest", name: "DeleteArchiveRequest")
    DeleteArchiveResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#DeleteArchiveResponse", name: "DeleteArchiveResponse")
    DeleteConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#DeleteConnectionRequest", name: "DeleteConnectionRequest")
    DeleteConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#DeleteConnectionResponse", name: "DeleteConnectionResponse")
    DeleteEventBusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#DeleteEventBusRequest", name: "DeleteEventBusRequest")
    DeletePartnerEventSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#DeletePartnerEventSourceRequest", name: "DeletePartnerEventSourceRequest")
    DeleteRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#DeleteRuleRequest", name: "DeleteRuleRequest")
    DescribeApiDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#DescribeApiDestinationRequest", name: "DescribeApiDestinationRequest")
    DescribeApiDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#DescribeApiDestinationResponse", name: "DescribeApiDestinationResponse")
    DescribeArchiveRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#DescribeArchiveRequest", name: "DescribeArchiveRequest")
    DescribeArchiveResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#DescribeArchiveResponse", name: "DescribeArchiveResponse")
    DescribeConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#DescribeConnectionRequest", name: "DescribeConnectionRequest")
    DescribeConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#DescribeConnectionResponse", name: "DescribeConnectionResponse")
    DescribeEventBusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#DescribeEventBusRequest", name: "DescribeEventBusRequest")
    DescribeEventBusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#DescribeEventBusResponse", name: "DescribeEventBusResponse")
    DescribeEventSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#DescribeEventSourceRequest", name: "DescribeEventSourceRequest")
    DescribeEventSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#DescribeEventSourceResponse", name: "DescribeEventSourceResponse")
    DescribePartnerEventSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#DescribePartnerEventSourceRequest", name: "DescribePartnerEventSourceRequest")
    DescribePartnerEventSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#DescribePartnerEventSourceResponse", name: "DescribePartnerEventSourceResponse")
    DescribeReplayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#DescribeReplayRequest", name: "DescribeReplayRequest")
    DescribeReplayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#DescribeReplayResponse", name: "DescribeReplayResponse")
    DescribeRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#DescribeRuleRequest", name: "DescribeRuleRequest")
    DescribeRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#DescribeRuleResponse", name: "DescribeRuleResponse")
    DisableRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#DisableRuleRequest", name: "DisableRuleRequest")
    EcsParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#EcsParameters", name: "EcsParameters")
    EnableRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#EnableRuleRequest", name: "EnableRuleRequest")
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#ErrorCode", name: "ErrorCode")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#ErrorMessage", name: "ErrorMessage")
    EventBus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#EventBus", name: "EventBus")
    EventBusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#EventBusList", name: "EventBusList")
    EventBusName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#EventBusName", name: "EventBusName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[/\\.\\-_A-Za-z0-9]+$"})
    EventBusNameOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#EventBusNameOrArn", name: "EventBusNameOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^(arn:aws[\\w-]*:events:[a-z]{2}-[a-z]+-[\\w-]+:[0-9]{12}:event-bus\\/)?[/\\.\\-_A-Za-z0-9]+$"})
    EventId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#EventId", name: "EventId")
    EventPattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#EventPattern", name: "EventPattern")
    EventResource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#EventResource", name: "EventResource")
    EventResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#EventResourceList", name: "EventResourceList")
    EventSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#EventSource", name: "EventSource")
    EventSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#EventSourceList", name: "EventSourceList")
    EventSourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#EventSourceName", name: "EventSourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^aws\\.partner(/[\\.\\-_A-Za-z0-9]+){2,}$"})
    EventSourceNamePrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#EventSourceNamePrefix", name: "EventSourceNamePrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[/\\.\\-_A-Za-z0-9]+$"})
    EventSourceState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchevents#EventSourceState", name: "EventSourceState")
    EventTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.cloudwatchevents#EventTime", name: "EventTime")
    HeaderKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#HeaderKey", name: "HeaderKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[!\#$%&'*+-.^_`|~0-9a-zA-Z]+$"})
    HeaderParametersMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudwatchevents#HeaderParametersMap", name: "HeaderParametersMap")
    HeaderValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#HeaderValue", name: "HeaderValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[ \\t]*[\\x20-\\x7E]+([ \\t]+[\\x20-\\x7E]+)*[ \\t]*$"})
    HeaderValueSensitive = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#HeaderValueSensitive", name: "HeaderValueSensitive", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[ \\t]*[\\x20-\\x7E]+([ \\t]+[\\x20-\\x7E]+)*[ \\t]*$", "smithy.api#sensitive" => {}})
    HttpParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#HttpParameters", name: "HttpParameters")
    HttpsEndpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#HttpsEndpoint", name: "HttpsEndpoint", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^((%[0-9A-Fa-f]{2}|[-()_.!~*';/?:@\\x26=+$,A-Za-z0-9])+)([).!';/?:,])?$"})
    IllegalStatusException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#IllegalStatusException", name: "IllegalStatusException", traits: {"smithy.api#error" => "client"})
    InputTransformer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#InputTransformer", name: "InputTransformer")
    InputTransformerPathKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#InputTransformerPathKey", name: "InputTransformerPathKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9\\_\\-]+$"})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchevents#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    InternalException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#InternalException", name: "InternalException", traits: {"smithy.api#error" => "server"})
    InvalidEventPatternException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#InvalidEventPatternException", name: "InvalidEventPatternException", traits: {"smithy.api#error" => "client"})
    InvalidStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#InvalidStateException", name: "InvalidStateException", traits: {"smithy.api#error" => "client"})
    KinesisParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#KinesisParameters", name: "KinesisParameters")
    LaunchType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchevents#LaunchType", name: "LaunchType")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client"})
    LimitMax100 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchevents#LimitMax100", name: "LimitMax100", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    LimitMin1 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchevents#LimitMin1", name: "LimitMin1", traits: {"smithy.api#range" => {"min" => 1}})
    ListApiDestinationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ListApiDestinationsRequest", name: "ListApiDestinationsRequest")
    ListApiDestinationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ListApiDestinationsResponse", name: "ListApiDestinationsResponse")
    ListArchivesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ListArchivesRequest", name: "ListArchivesRequest")
    ListArchivesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ListArchivesResponse", name: "ListArchivesResponse")
    ListConnectionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ListConnectionsRequest", name: "ListConnectionsRequest")
    ListConnectionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ListConnectionsResponse", name: "ListConnectionsResponse")
    ListEventBusesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ListEventBusesRequest", name: "ListEventBusesRequest")
    ListEventBusesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ListEventBusesResponse", name: "ListEventBusesResponse")
    ListEventSourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ListEventSourcesRequest", name: "ListEventSourcesRequest")
    ListEventSourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ListEventSourcesResponse", name: "ListEventSourcesResponse")
    ListPartnerEventSourceAccountsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ListPartnerEventSourceAccountsRequest", name: "ListPartnerEventSourceAccountsRequest")
    ListPartnerEventSourceAccountsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ListPartnerEventSourceAccountsResponse", name: "ListPartnerEventSourceAccountsResponse")
    ListPartnerEventSourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ListPartnerEventSourcesRequest", name: "ListPartnerEventSourcesRequest")
    ListPartnerEventSourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ListPartnerEventSourcesResponse", name: "ListPartnerEventSourcesResponse")
    ListReplaysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ListReplaysRequest", name: "ListReplaysRequest")
    ListReplaysResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ListReplaysResponse", name: "ListReplaysResponse")
    ListRuleNamesByTargetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ListRuleNamesByTargetRequest", name: "ListRuleNamesByTargetRequest")
    ListRuleNamesByTargetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ListRuleNamesByTargetResponse", name: "ListRuleNamesByTargetResponse")
    ListRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ListRulesRequest", name: "ListRulesRequest")
    ListRulesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ListRulesResponse", name: "ListRulesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListTargetsByRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ListTargetsByRuleRequest", name: "ListTargetsByRuleRequest")
    ListTargetsByRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ListTargetsByRuleResponse", name: "ListTargetsByRuleResponse")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchevents#Long", name: "Long", traits: {"smithy.api#default" => 0})
    ManagedBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#ManagedBy", name: "ManagedBy", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ManagedRuleException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ManagedRuleException", name: "ManagedRuleException", traits: {"smithy.api#error" => "client"})
    MaximumEventAgeInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchevents#MaximumEventAgeInSeconds", name: "MaximumEventAgeInSeconds", traits: {"smithy.api#range" => {"min" => 60, "max" => 86400}})
    MaximumRetryAttempts = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchevents#MaximumRetryAttempts", name: "MaximumRetryAttempts", traits: {"smithy.api#range" => {"min" => 0, "max" => 185}})
    MessageGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#MessageGroupId", name: "MessageGroupId")
    NetworkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#NetworkConfiguration", name: "NetworkConfiguration")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    NonPartnerEventBusName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#NonPartnerEventBusName", name: "NonPartnerEventBusName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\.\\-_A-Za-z0-9]+$"})
    NonPartnerEventBusNameOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#NonPartnerEventBusNameOrArn", name: "NonPartnerEventBusNameOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^(arn:aws[\\w-]*:events:[a-z]{2}-[a-z]+-[\\w-]+:[0-9]{12}:event-bus\\/)?[\\.\\-_A-Za-z0-9]+$"})
    OperationDisabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#OperationDisabledException", name: "OperationDisabledException", traits: {"smithy.api#error" => "client"})
    PartnerEventSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#PartnerEventSource", name: "PartnerEventSource")
    PartnerEventSourceAccount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#PartnerEventSourceAccount", name: "PartnerEventSourceAccount")
    PartnerEventSourceAccountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#PartnerEventSourceAccountList", name: "PartnerEventSourceAccountList")
    PartnerEventSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#PartnerEventSourceList", name: "PartnerEventSourceList")
    PartnerEventSourceNamePrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#PartnerEventSourceNamePrefix", name: "PartnerEventSourceNamePrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^aws\\.partner/[\\.\\-_A-Za-z0-9]+/[/\\.\\-_A-Za-z0-9]*$"})
    PathParameter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#PathParameter", name: "PathParameter", traits: {"smithy.api#pattern" => "^(?!\\s*$).+$"})
    PathParameterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#PathParameterList", name: "PathParameterList")
    PlacementConstraint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#PlacementConstraint", name: "PlacementConstraint")
    PlacementConstraintExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#PlacementConstraintExpression", name: "PlacementConstraintExpression", traits: {"smithy.api#length" => {"min" => 0, "max" => 2000}})
    PlacementConstraintType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchevents#PlacementConstraintType", name: "PlacementConstraintType")
    PlacementConstraints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#PlacementConstraints", name: "PlacementConstraints", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    PlacementStrategies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#PlacementStrategies", name: "PlacementStrategies", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    PlacementStrategy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#PlacementStrategy", name: "PlacementStrategy")
    PlacementStrategyField = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#PlacementStrategyField", name: "PlacementStrategyField", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    PlacementStrategyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchevents#PlacementStrategyType", name: "PlacementStrategyType")
    PolicyLengthExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#PolicyLengthExceededException", name: "PolicyLengthExceededException", traits: {"smithy.api#error" => "client"})
    Principal = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#Principal", name: "Principal", traits: {"smithy.api#length" => {"min" => 1, "max" => 12}, "smithy.api#pattern" => "^(\\d{12}|\\*)$"})
    PropagateTags = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchevents#PropagateTags", name: "PropagateTags")
    PutEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#PutEventsRequest", name: "PutEventsRequest")
    PutEventsRequestEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#PutEventsRequestEntry", name: "PutEventsRequestEntry")
    PutEventsRequestEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#PutEventsRequestEntryList", name: "PutEventsRequestEntryList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    PutEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#PutEventsResponse", name: "PutEventsResponse")
    PutEventsResultEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#PutEventsResultEntry", name: "PutEventsResultEntry")
    PutEventsResultEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#PutEventsResultEntryList", name: "PutEventsResultEntryList")
    PutPartnerEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#PutPartnerEventsRequest", name: "PutPartnerEventsRequest")
    PutPartnerEventsRequestEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#PutPartnerEventsRequestEntry", name: "PutPartnerEventsRequestEntry")
    PutPartnerEventsRequestEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#PutPartnerEventsRequestEntryList", name: "PutPartnerEventsRequestEntryList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    PutPartnerEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#PutPartnerEventsResponse", name: "PutPartnerEventsResponse")
    PutPartnerEventsResultEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#PutPartnerEventsResultEntry", name: "PutPartnerEventsResultEntry")
    PutPartnerEventsResultEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#PutPartnerEventsResultEntryList", name: "PutPartnerEventsResultEntryList")
    PutPermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#PutPermissionRequest", name: "PutPermissionRequest")
    PutRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#PutRuleRequest", name: "PutRuleRequest")
    PutRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#PutRuleResponse", name: "PutRuleResponse")
    PutTargetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#PutTargetsRequest", name: "PutTargetsRequest")
    PutTargetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#PutTargetsResponse", name: "PutTargetsResponse")
    PutTargetsResultEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#PutTargetsResultEntry", name: "PutTargetsResultEntry")
    PutTargetsResultEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#PutTargetsResultEntryList", name: "PutTargetsResultEntryList")
    QueryStringKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#QueryStringKey", name: "QueryStringKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[^\\x00-\\x1F\\x7F]+$"})
    QueryStringParametersMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudwatchevents#QueryStringParametersMap", name: "QueryStringParametersMap")
    QueryStringValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#QueryStringValue", name: "QueryStringValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[^\\x00-\\x09\\x0B\\x0C\\x0E-\\x1F\\x7F]+$"})
    QueryStringValueSensitive = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#QueryStringValueSensitive", name: "QueryStringValueSensitive", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[^\\x00-\\x09\\x0B\\x0C\\x0E-\\x1F\\x7F]+$", "smithy.api#sensitive" => {}})
    RedshiftDataParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#RedshiftDataParameters", name: "RedshiftDataParameters")
    RedshiftSecretManagerArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#RedshiftSecretManagerArn", name: "RedshiftSecretManagerArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^(^arn:aws([a-z]|\\-)*:secretsmanager:[a-z0-9-.]+:.*)|(\\$(\\.[\\w_-]+(\\[(\\d+|\\*)\\])*)*)$"})
    ReferenceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#ReferenceId", name: "ReferenceId", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    RemovePermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#RemovePermissionRequest", name: "RemovePermissionRequest")
    RemoveTargetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#RemoveTargetsRequest", name: "RemoveTargetsRequest")
    RemoveTargetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#RemoveTargetsResponse", name: "RemoveTargetsResponse")
    RemoveTargetsResultEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#RemoveTargetsResultEntry", name: "RemoveTargetsResultEntry")
    RemoveTargetsResultEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#RemoveTargetsResultEntryList", name: "RemoveTargetsResultEntryList")
    Replay = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#Replay", name: "Replay")
    ReplayArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#ReplayArn", name: "ReplayArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:aws([a-z]|\\-)*:events:([a-z]|\\d|\\-)*:([0-9]{12})?:.+\\/[\\.\\-_A-Za-z0-9]+$"})
    ReplayDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#ReplayDescription", name: "ReplayDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => ".*"})
    ReplayDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ReplayDestination", name: "ReplayDestination")
    ReplayDestinationFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#ReplayDestinationFilters", name: "ReplayDestinationFilters")
    ReplayList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#ReplayList", name: "ReplayList")
    ReplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#ReplayName", name: "ReplayName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\.\\-_A-Za-z0-9]+$"})
    ReplayState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchevents#ReplayState", name: "ReplayState")
    ReplayStateReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#ReplayStateReason", name: "ReplayStateReason", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => ".*"})
    ResourceAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ResourceAlreadyExistsException", name: "ResourceAlreadyExistsException", traits: {"smithy.api#error" => "client"})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    RetentionDays = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchevents#RetentionDays", name: "RetentionDays", traits: {"smithy.api#range" => {"min" => 0}})
    RetryPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#RetryPolicy", name: "RetryPolicy")
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}})
    Rule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#Rule", name: "Rule")
    RuleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#RuleArn", name: "RuleArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}})
    RuleDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#RuleDescription", name: "RuleDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}})
    RuleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#RuleName", name: "RuleName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\.\\-_A-Za-z0-9]+$"})
    RuleNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#RuleNameList", name: "RuleNameList")
    RuleResponseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#RuleResponseList", name: "RuleResponseList")
    RuleState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchevents#RuleState", name: "RuleState")
    RunCommandParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#RunCommandParameters", name: "RunCommandParameters")
    RunCommandTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#RunCommandTarget", name: "RunCommandTarget")
    RunCommandTargetKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#RunCommandTargetKey", name: "RunCommandTargetKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$"})
    RunCommandTargetValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#RunCommandTargetValue", name: "RunCommandTargetValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    RunCommandTargetValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#RunCommandTargetValues", name: "RunCommandTargetValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    RunCommandTargets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#RunCommandTargets", name: "RunCommandTargets", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    SageMakerPipelineParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#SageMakerPipelineParameter", name: "SageMakerPipelineParameter")
    SageMakerPipelineParameterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#SageMakerPipelineParameterList", name: "SageMakerPipelineParameterList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    SageMakerPipelineParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#SageMakerPipelineParameterName", name: "SageMakerPipelineParameterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    SageMakerPipelineParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#SageMakerPipelineParameterValue", name: "SageMakerPipelineParameterValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    SageMakerPipelineParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#SageMakerPipelineParameters", name: "SageMakerPipelineParameters")
    ScheduleExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#ScheduleExpression", name: "ScheduleExpression", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    SecretsManagerSecretArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#SecretsManagerSecretArn", name: "SecretsManagerSecretArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws([a-z]|\\-)*:secretsmanager:([a-z]|\\d|\\-)*:([0-9]{12})?:secret:[\\/_+=\\.@\\-A-Za-z0-9]+$"})
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#SensitiveString", name: "SensitiveString", traits: {"smithy.api#sensitive" => {}})
    Sql = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#Sql", name: "Sql", traits: {"smithy.api#length" => {"min" => 1, "max" => 100000}})
    SqsParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#SqsParameters", name: "SqsParameters")
    StartReplayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#StartReplayRequest", name: "StartReplayRequest")
    StartReplayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#StartReplayResponse", name: "StartReplayResponse")
    StatementId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#StatementId", name: "StatementId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    StatementName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#StatementName", name: "StatementName", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#String", name: "String")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#StringList", name: "StringList")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#TagKeyList", name: "TagKeyList")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#TagList", name: "TagList")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Target = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#Target", name: "Target")
    TargetArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#TargetArn", name: "TargetArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}})
    TargetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#TargetId", name: "TargetId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\.\\-_A-Za-z0-9]+$"})
    TargetIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#TargetIdList", name: "TargetIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    TargetInput = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#TargetInput", name: "TargetInput", traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}})
    TargetInputPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#TargetInputPath", name: "TargetInputPath", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchevents#TargetList", name: "TargetList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    TargetPartitionKeyPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#TargetPartitionKeyPath", name: "TargetPartitionKeyPath", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TestEventPatternRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#TestEventPatternRequest", name: "TestEventPatternRequest")
    TestEventPatternResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#TestEventPatternResponse", name: "TestEventPatternResponse")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.cloudwatchevents#Timestamp", name: "Timestamp")
    TraceHeader = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#TraceHeader", name: "TraceHeader", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    TransformerInput = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchevents#TransformerInput", name: "TransformerInput", traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}})
    TransformerPaths = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudwatchevents#TransformerPaths", name: "TransformerPaths", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateApiDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#UpdateApiDestinationRequest", name: "UpdateApiDestinationRequest")
    UpdateApiDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#UpdateApiDestinationResponse", name: "UpdateApiDestinationResponse")
    UpdateArchiveRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#UpdateArchiveRequest", name: "UpdateArchiveRequest")
    UpdateArchiveResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#UpdateArchiveResponse", name: "UpdateArchiveResponse")
    UpdateConnectionApiKeyAuthRequestParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#UpdateConnectionApiKeyAuthRequestParameters", name: "UpdateConnectionApiKeyAuthRequestParameters")
    UpdateConnectionAuthRequestParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#UpdateConnectionAuthRequestParameters", name: "UpdateConnectionAuthRequestParameters")
    UpdateConnectionBasicAuthRequestParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#UpdateConnectionBasicAuthRequestParameters", name: "UpdateConnectionBasicAuthRequestParameters")
    UpdateConnectionOAuthClientRequestParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#UpdateConnectionOAuthClientRequestParameters", name: "UpdateConnectionOAuthClientRequestParameters")
    UpdateConnectionOAuthRequestParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#UpdateConnectionOAuthRequestParameters", name: "UpdateConnectionOAuthRequestParameters")
    UpdateConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#UpdateConnectionRequest", name: "UpdateConnectionRequest")
    UpdateConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchevents#UpdateConnectionResponse", name: "UpdateConnectionResponse")

    ActivateEventSourceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    ActivateEventSourceRequest.type = Types::ActivateEventSourceRequest
    ApiDestination.add_member(:api_destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDestinationArn, name: "ApiDestinationArn"))
    ApiDestination.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDestinationName, name: "Name"))
    ApiDestination.add_member(:api_destination_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDestinationState, name: "ApiDestinationState"))
    ApiDestination.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionArn, name: "ConnectionArn"))
    ApiDestination.add_member(:invocation_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpsEndpoint, name: "InvocationEndpoint"))
    ApiDestination.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDestinationHttpMethod, name: "HttpMethod"))
    ApiDestination.add_member(:invocation_rate_limit_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDestinationInvocationRateLimitPerSecond, name: "InvocationRateLimitPerSecond"))
    ApiDestination.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    ApiDestination.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    ApiDestination.type = Types::ApiDestination
    ApiDestinationHttpMethod.add_member(:post, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POST", traits: {"smithy.api#enumValue" => "POST"}))
    ApiDestinationHttpMethod.add_member(:get, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GET", traits: {"smithy.api#enumValue" => "GET"}))
    ApiDestinationHttpMethod.add_member(:head, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEAD", traits: {"smithy.api#enumValue" => "HEAD"}))
    ApiDestinationHttpMethod.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIONS", traits: {"smithy.api#enumValue" => "OPTIONS"}))
    ApiDestinationHttpMethod.add_member(:put, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUT", traits: {"smithy.api#enumValue" => "PUT"}))
    ApiDestinationHttpMethod.add_member(:patch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PATCH", traits: {"smithy.api#enumValue" => "PATCH"}))
    ApiDestinationHttpMethod.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    ApiDestinationResponseList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDestination, name: "member"))
    ApiDestinationState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ApiDestinationState.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    Archive.add_member(:archive_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveName, name: "ArchiveName"))
    Archive.add_member(:event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "EventSourceArn"))
    Archive.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveState, name: "State"))
    Archive.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveStateReason, name: "StateReason"))
    Archive.add_member(:retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionDays, name: "RetentionDays"))
    Archive.add_member(:size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "SizeBytes", traits: {"smithy.api#default" => 0}))
    Archive.add_member(:event_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "EventCount", traits: {"smithy.api#default" => 0}))
    Archive.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    Archive.type = Types::Archive
    ArchiveResponseList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Archive, name: "member"))
    ArchiveState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ArchiveState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ArchiveState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ArchiveState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ArchiveState.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    ArchiveState.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    AssignPublicIp.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    AssignPublicIp.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    AwsVpcConfiguration.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "Subnets", traits: {"smithy.api#required" => {}}))
    AwsVpcConfiguration.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "SecurityGroups"))
    AwsVpcConfiguration.add_member(:assign_public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: AssignPublicIp, name: "AssignPublicIp"))
    AwsVpcConfiguration.type = Types::AwsVpcConfiguration
    BatchArrayProperties.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Size", traits: {"smithy.api#default" => 0}))
    BatchArrayProperties.type = Types::BatchArrayProperties
    BatchParameters.add_member(:job_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "JobDefinition", traits: {"smithy.api#required" => {}}))
    BatchParameters.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "JobName", traits: {"smithy.api#required" => {}}))
    BatchParameters.add_member(:array_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchArrayProperties, name: "ArrayProperties"))
    BatchParameters.add_member(:retry_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchRetryStrategy, name: "RetryStrategy"))
    BatchParameters.type = Types::BatchParameters
    BatchRetryStrategy.add_member(:attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Attempts", traits: {"smithy.api#default" => 0}))
    BatchRetryStrategy.type = Types::BatchRetryStrategy
    CancelReplayRequest.add_member(:replay_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplayName, name: "ReplayName", traits: {"smithy.api#required" => {}}))
    CancelReplayRequest.type = Types::CancelReplayRequest
    CancelReplayResponse.add_member(:replay_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplayArn, name: "ReplayArn"))
    CancelReplayResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplayState, name: "State"))
    CancelReplayResponse.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplayStateReason, name: "StateReason"))
    CancelReplayResponse.type = Types::CancelReplayResponse
    CapacityProviderStrategy.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategyItem, name: "member"))
    CapacityProviderStrategyItem.add_member(:capacity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProvider, name: "capacityProvider", traits: {"smithy.api#required" => {}}))
    CapacityProviderStrategyItem.add_member(:weight, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategyItemWeight, name: "weight", traits: {"smithy.api#default" => 0}))
    CapacityProviderStrategyItem.add_member(:base, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategyItemBase, name: "base", traits: {"smithy.api#default" => 0}))
    CapacityProviderStrategyItem.type = Types::CapacityProviderStrategyItem
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    Condition.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#required" => {}}))
    Condition.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Key", traits: {"smithy.api#required" => {}}))
    Condition.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value", traits: {"smithy.api#required" => {}}))
    Condition.type = Types::Condition
    Connection.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionArn, name: "ConnectionArn"))
    Connection.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionName, name: "Name"))
    Connection.add_member(:connection_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionState, name: "ConnectionState"))
    Connection.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionStateReason, name: "StateReason"))
    Connection.add_member(:authorization_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionAuthorizationType, name: "AuthorizationType"))
    Connection.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    Connection.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    Connection.add_member(:last_authorized_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastAuthorizedTime"))
    Connection.type = Types::Connection
    ConnectionApiKeyAuthResponseParameters.add_member(:api_key_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthHeaderParameters, name: "ApiKeyName"))
    ConnectionApiKeyAuthResponseParameters.type = Types::ConnectionApiKeyAuthResponseParameters
    ConnectionAuthResponseParameters.add_member(:basic_auth_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionBasicAuthResponseParameters, name: "BasicAuthParameters"))
    ConnectionAuthResponseParameters.add_member(:o_auth_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionOAuthResponseParameters, name: "OAuthParameters"))
    ConnectionAuthResponseParameters.add_member(:api_key_auth_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionApiKeyAuthResponseParameters, name: "ApiKeyAuthParameters"))
    ConnectionAuthResponseParameters.add_member(:invocation_http_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionHttpParameters, name: "InvocationHttpParameters"))
    ConnectionAuthResponseParameters.type = Types::ConnectionAuthResponseParameters
    ConnectionAuthorizationType.add_member(:basic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BASIC", traits: {"smithy.api#enumValue" => "BASIC"}))
    ConnectionAuthorizationType.add_member(:oauth_client_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OAUTH_CLIENT_CREDENTIALS", traits: {"smithy.api#enumValue" => "OAUTH_CLIENT_CREDENTIALS"}))
    ConnectionAuthorizationType.add_member(:api_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "API_KEY", traits: {"smithy.api#enumValue" => "API_KEY"}))
    ConnectionBasicAuthResponseParameters.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthHeaderParameters, name: "Username"))
    ConnectionBasicAuthResponseParameters.type = Types::ConnectionBasicAuthResponseParameters
    ConnectionBodyParameter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Key"))
    ConnectionBodyParameter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Value"))
    ConnectionBodyParameter.add_member(:is_value_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsValueSecret", traits: {"smithy.api#default" => false}))
    ConnectionBodyParameter.type = Types::ConnectionBodyParameter
    ConnectionBodyParametersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionBodyParameter, name: "member"))
    ConnectionHeaderParameter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderKey, name: "Key"))
    ConnectionHeaderParameter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderValueSensitive, name: "Value"))
    ConnectionHeaderParameter.add_member(:is_value_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsValueSecret", traits: {"smithy.api#default" => false}))
    ConnectionHeaderParameter.type = Types::ConnectionHeaderParameter
    ConnectionHeaderParametersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionHeaderParameter, name: "member"))
    ConnectionHttpParameters.add_member(:header_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionHeaderParametersList, name: "HeaderParameters"))
    ConnectionHttpParameters.add_member(:query_string_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionQueryStringParametersList, name: "QueryStringParameters"))
    ConnectionHttpParameters.add_member(:body_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionBodyParametersList, name: "BodyParameters"))
    ConnectionHttpParameters.type = Types::ConnectionHttpParameters
    ConnectionOAuthClientResponseParameters.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthHeaderParameters, name: "ClientID"))
    ConnectionOAuthClientResponseParameters.type = Types::ConnectionOAuthClientResponseParameters
    ConnectionOAuthHttpMethod.add_member(:get, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GET", traits: {"smithy.api#enumValue" => "GET"}))
    ConnectionOAuthHttpMethod.add_member(:post, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POST", traits: {"smithy.api#enumValue" => "POST"}))
    ConnectionOAuthHttpMethod.add_member(:put, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUT", traits: {"smithy.api#enumValue" => "PUT"}))
    ConnectionOAuthResponseParameters.add_member(:client_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionOAuthClientResponseParameters, name: "ClientParameters"))
    ConnectionOAuthResponseParameters.add_member(:authorization_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpsEndpoint, name: "AuthorizationEndpoint"))
    ConnectionOAuthResponseParameters.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionOAuthHttpMethod, name: "HttpMethod"))
    ConnectionOAuthResponseParameters.add_member(:o_auth_http_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionHttpParameters, name: "OAuthHttpParameters"))
    ConnectionOAuthResponseParameters.type = Types::ConnectionOAuthResponseParameters
    ConnectionQueryStringParameter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStringKey, name: "Key"))
    ConnectionQueryStringParameter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStringValueSensitive, name: "Value"))
    ConnectionQueryStringParameter.add_member(:is_value_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsValueSecret", traits: {"smithy.api#default" => false}))
    ConnectionQueryStringParameter.type = Types::ConnectionQueryStringParameter
    ConnectionQueryStringParametersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionQueryStringParameter, name: "member"))
    ConnectionResponseList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Connection, name: "member"))
    ConnectionState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ConnectionState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ConnectionState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ConnectionState.add_member(:authorized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTHORIZED", traits: {"smithy.api#enumValue" => "AUTHORIZED"}))
    ConnectionState.add_member(:deauthorized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEAUTHORIZED", traits: {"smithy.api#enumValue" => "DEAUTHORIZED"}))
    ConnectionState.add_member(:authorizing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTHORIZING", traits: {"smithy.api#enumValue" => "AUTHORIZING"}))
    ConnectionState.add_member(:deauthorizing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEAUTHORIZING", traits: {"smithy.api#enumValue" => "DEAUTHORIZING"}))
    CreateApiDestinationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDestinationName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateApiDestinationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDestinationDescription, name: "Description"))
    CreateApiDestinationRequest.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionArn, name: "ConnectionArn", traits: {"smithy.api#required" => {}}))
    CreateApiDestinationRequest.add_member(:invocation_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpsEndpoint, name: "InvocationEndpoint", traits: {"smithy.api#required" => {}}))
    CreateApiDestinationRequest.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDestinationHttpMethod, name: "HttpMethod", traits: {"smithy.api#required" => {}}))
    CreateApiDestinationRequest.add_member(:invocation_rate_limit_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDestinationInvocationRateLimitPerSecond, name: "InvocationRateLimitPerSecond"))
    CreateApiDestinationRequest.type = Types::CreateApiDestinationRequest
    CreateApiDestinationResponse.add_member(:api_destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDestinationArn, name: "ApiDestinationArn"))
    CreateApiDestinationResponse.add_member(:api_destination_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDestinationState, name: "ApiDestinationState"))
    CreateApiDestinationResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    CreateApiDestinationResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    CreateApiDestinationResponse.type = Types::CreateApiDestinationResponse
    CreateArchiveRequest.add_member(:archive_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveName, name: "ArchiveName", traits: {"smithy.api#required" => {}}))
    CreateArchiveRequest.add_member(:event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "EventSourceArn", traits: {"smithy.api#required" => {}}))
    CreateArchiveRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveDescription, name: "Description"))
    CreateArchiveRequest.add_member(:event_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: EventPattern, name: "EventPattern"))
    CreateArchiveRequest.add_member(:retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionDays, name: "RetentionDays"))
    CreateArchiveRequest.type = Types::CreateArchiveRequest
    CreateArchiveResponse.add_member(:archive_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveArn, name: "ArchiveArn"))
    CreateArchiveResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveState, name: "State"))
    CreateArchiveResponse.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveStateReason, name: "StateReason"))
    CreateArchiveResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    CreateArchiveResponse.type = Types::CreateArchiveResponse
    CreateConnectionApiKeyAuthRequestParameters.add_member(:api_key_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthHeaderParameters, name: "ApiKeyName", traits: {"smithy.api#required" => {}}))
    CreateConnectionApiKeyAuthRequestParameters.add_member(:api_key_value, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthHeaderParametersSensitive, name: "ApiKeyValue", traits: {"smithy.api#required" => {}}))
    CreateConnectionApiKeyAuthRequestParameters.type = Types::CreateConnectionApiKeyAuthRequestParameters
    CreateConnectionAuthRequestParameters.add_member(:basic_auth_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateConnectionBasicAuthRequestParameters, name: "BasicAuthParameters"))
    CreateConnectionAuthRequestParameters.add_member(:o_auth_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateConnectionOAuthRequestParameters, name: "OAuthParameters"))
    CreateConnectionAuthRequestParameters.add_member(:api_key_auth_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateConnectionApiKeyAuthRequestParameters, name: "ApiKeyAuthParameters"))
    CreateConnectionAuthRequestParameters.add_member(:invocation_http_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionHttpParameters, name: "InvocationHttpParameters"))
    CreateConnectionAuthRequestParameters.type = Types::CreateConnectionAuthRequestParameters
    CreateConnectionBasicAuthRequestParameters.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthHeaderParameters, name: "Username", traits: {"smithy.api#required" => {}}))
    CreateConnectionBasicAuthRequestParameters.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthHeaderParametersSensitive, name: "Password", traits: {"smithy.api#required" => {}}))
    CreateConnectionBasicAuthRequestParameters.type = Types::CreateConnectionBasicAuthRequestParameters
    CreateConnectionOAuthClientRequestParameters.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthHeaderParameters, name: "ClientID", traits: {"smithy.api#required" => {}}))
    CreateConnectionOAuthClientRequestParameters.add_member(:client_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthHeaderParametersSensitive, name: "ClientSecret", traits: {"smithy.api#required" => {}}))
    CreateConnectionOAuthClientRequestParameters.type = Types::CreateConnectionOAuthClientRequestParameters
    CreateConnectionOAuthRequestParameters.add_member(:client_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateConnectionOAuthClientRequestParameters, name: "ClientParameters", traits: {"smithy.api#required" => {}}))
    CreateConnectionOAuthRequestParameters.add_member(:authorization_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpsEndpoint, name: "AuthorizationEndpoint", traits: {"smithy.api#required" => {}}))
    CreateConnectionOAuthRequestParameters.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionOAuthHttpMethod, name: "HttpMethod", traits: {"smithy.api#required" => {}}))
    CreateConnectionOAuthRequestParameters.add_member(:o_auth_http_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionHttpParameters, name: "OAuthHttpParameters"))
    CreateConnectionOAuthRequestParameters.type = Types::CreateConnectionOAuthRequestParameters
    CreateConnectionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateConnectionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionDescription, name: "Description"))
    CreateConnectionRequest.add_member(:authorization_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionAuthorizationType, name: "AuthorizationType", traits: {"smithy.api#required" => {}}))
    CreateConnectionRequest.add_member(:auth_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateConnectionAuthRequestParameters, name: "AuthParameters", traits: {"smithy.api#required" => {}}))
    CreateConnectionRequest.type = Types::CreateConnectionRequest
    CreateConnectionResponse.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionArn, name: "ConnectionArn"))
    CreateConnectionResponse.add_member(:connection_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionState, name: "ConnectionState"))
    CreateConnectionResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    CreateConnectionResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    CreateConnectionResponse.type = Types::CreateConnectionResponse
    CreateEventBusRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateEventBusRequest.add_member(:event_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceName, name: "EventSourceName"))
    CreateEventBusRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateEventBusRequest.type = Types::CreateEventBusRequest
    CreateEventBusResponse.add_member(:event_bus_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EventBusArn"))
    CreateEventBusResponse.type = Types::CreateEventBusResponse
    CreatePartnerEventSourceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreatePartnerEventSourceRequest.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "Account", traits: {"smithy.api#required" => {}}))
    CreatePartnerEventSourceRequest.type = Types::CreatePartnerEventSourceRequest
    CreatePartnerEventSourceResponse.add_member(:event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EventSourceArn"))
    CreatePartnerEventSourceResponse.type = Types::CreatePartnerEventSourceResponse
    DeactivateEventSourceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    DeactivateEventSourceRequest.type = Types::DeactivateEventSourceRequest
    DeadLetterConfig.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    DeadLetterConfig.type = Types::DeadLetterConfig
    DeauthorizeConnectionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionName, name: "Name", traits: {"smithy.api#required" => {}}))
    DeauthorizeConnectionRequest.type = Types::DeauthorizeConnectionRequest
    DeauthorizeConnectionResponse.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionArn, name: "ConnectionArn"))
    DeauthorizeConnectionResponse.add_member(:connection_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionState, name: "ConnectionState"))
    DeauthorizeConnectionResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DeauthorizeConnectionResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    DeauthorizeConnectionResponse.add_member(:last_authorized_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastAuthorizedTime"))
    DeauthorizeConnectionResponse.type = Types::DeauthorizeConnectionResponse
    DeleteApiDestinationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDestinationName, name: "Name", traits: {"smithy.api#required" => {}}))
    DeleteApiDestinationRequest.type = Types::DeleteApiDestinationRequest
    DeleteApiDestinationResponse.type = Types::DeleteApiDestinationResponse
    DeleteArchiveRequest.add_member(:archive_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveName, name: "ArchiveName", traits: {"smithy.api#required" => {}}))
    DeleteArchiveRequest.type = Types::DeleteArchiveRequest
    DeleteArchiveResponse.type = Types::DeleteArchiveResponse
    DeleteConnectionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionName, name: "Name", traits: {"smithy.api#required" => {}}))
    DeleteConnectionRequest.type = Types::DeleteConnectionRequest
    DeleteConnectionResponse.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionArn, name: "ConnectionArn"))
    DeleteConnectionResponse.add_member(:connection_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionState, name: "ConnectionState"))
    DeleteConnectionResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DeleteConnectionResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    DeleteConnectionResponse.add_member(:last_authorized_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastAuthorizedTime"))
    DeleteConnectionResponse.type = Types::DeleteConnectionResponse
    DeleteEventBusRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusName, name: "Name", traits: {"smithy.api#required" => {}}))
    DeleteEventBusRequest.type = Types::DeleteEventBusRequest
    DeletePartnerEventSourceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    DeletePartnerEventSourceRequest.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "Account", traits: {"smithy.api#required" => {}}))
    DeletePartnerEventSourceRequest.type = Types::DeletePartnerEventSourceRequest
    DeleteRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "Name", traits: {"smithy.api#required" => {}}))
    DeleteRuleRequest.add_member(:event_bus_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusNameOrArn, name: "EventBusName"))
    DeleteRuleRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Force", traits: {"smithy.api#default" => false}))
    DeleteRuleRequest.type = Types::DeleteRuleRequest
    DescribeApiDestinationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDestinationName, name: "Name", traits: {"smithy.api#required" => {}}))
    DescribeApiDestinationRequest.type = Types::DescribeApiDestinationRequest
    DescribeApiDestinationResponse.add_member(:api_destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDestinationArn, name: "ApiDestinationArn"))
    DescribeApiDestinationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDestinationName, name: "Name"))
    DescribeApiDestinationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDestinationDescription, name: "Description"))
    DescribeApiDestinationResponse.add_member(:api_destination_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDestinationState, name: "ApiDestinationState"))
    DescribeApiDestinationResponse.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionArn, name: "ConnectionArn"))
    DescribeApiDestinationResponse.add_member(:invocation_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpsEndpoint, name: "InvocationEndpoint"))
    DescribeApiDestinationResponse.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDestinationHttpMethod, name: "HttpMethod"))
    DescribeApiDestinationResponse.add_member(:invocation_rate_limit_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDestinationInvocationRateLimitPerSecond, name: "InvocationRateLimitPerSecond"))
    DescribeApiDestinationResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DescribeApiDestinationResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    DescribeApiDestinationResponse.type = Types::DescribeApiDestinationResponse
    DescribeArchiveRequest.add_member(:archive_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveName, name: "ArchiveName", traits: {"smithy.api#required" => {}}))
    DescribeArchiveRequest.type = Types::DescribeArchiveRequest
    DescribeArchiveResponse.add_member(:archive_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveArn, name: "ArchiveArn"))
    DescribeArchiveResponse.add_member(:archive_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveName, name: "ArchiveName"))
    DescribeArchiveResponse.add_member(:event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "EventSourceArn"))
    DescribeArchiveResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveDescription, name: "Description"))
    DescribeArchiveResponse.add_member(:event_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: EventPattern, name: "EventPattern"))
    DescribeArchiveResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveState, name: "State"))
    DescribeArchiveResponse.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveStateReason, name: "StateReason"))
    DescribeArchiveResponse.add_member(:retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionDays, name: "RetentionDays"))
    DescribeArchiveResponse.add_member(:size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "SizeBytes", traits: {"smithy.api#default" => 0}))
    DescribeArchiveResponse.add_member(:event_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "EventCount", traits: {"smithy.api#default" => 0}))
    DescribeArchiveResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DescribeArchiveResponse.type = Types::DescribeArchiveResponse
    DescribeConnectionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionName, name: "Name", traits: {"smithy.api#required" => {}}))
    DescribeConnectionRequest.type = Types::DescribeConnectionRequest
    DescribeConnectionResponse.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionArn, name: "ConnectionArn"))
    DescribeConnectionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionName, name: "Name"))
    DescribeConnectionResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionDescription, name: "Description"))
    DescribeConnectionResponse.add_member(:connection_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionState, name: "ConnectionState"))
    DescribeConnectionResponse.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionStateReason, name: "StateReason"))
    DescribeConnectionResponse.add_member(:authorization_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionAuthorizationType, name: "AuthorizationType"))
    DescribeConnectionResponse.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerSecretArn, name: "SecretArn"))
    DescribeConnectionResponse.add_member(:auth_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionAuthResponseParameters, name: "AuthParameters"))
    DescribeConnectionResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DescribeConnectionResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    DescribeConnectionResponse.add_member(:last_authorized_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastAuthorizedTime"))
    DescribeConnectionResponse.type = Types::DescribeConnectionResponse
    DescribeEventBusRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusNameOrArn, name: "Name"))
    DescribeEventBusRequest.type = Types::DescribeEventBusRequest
    DescribeEventBusResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    DescribeEventBusResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    DescribeEventBusResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Policy"))
    DescribeEventBusResponse.type = Types::DescribeEventBusResponse
    DescribeEventSourceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    DescribeEventSourceRequest.type = Types::DescribeEventSourceRequest
    DescribeEventSourceResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    DescribeEventSourceResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatedBy"))
    DescribeEventSourceResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DescribeEventSourceResponse.add_member(:expiration_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ExpirationTime"))
    DescribeEventSourceResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    DescribeEventSourceResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceState, name: "State"))
    DescribeEventSourceResponse.type = Types::DescribeEventSourceResponse
    DescribePartnerEventSourceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    DescribePartnerEventSourceRequest.type = Types::DescribePartnerEventSourceRequest
    DescribePartnerEventSourceResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    DescribePartnerEventSourceResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    DescribePartnerEventSourceResponse.type = Types::DescribePartnerEventSourceResponse
    DescribeReplayRequest.add_member(:replay_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplayName, name: "ReplayName", traits: {"smithy.api#required" => {}}))
    DescribeReplayRequest.type = Types::DescribeReplayRequest
    DescribeReplayResponse.add_member(:replay_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplayName, name: "ReplayName"))
    DescribeReplayResponse.add_member(:replay_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplayArn, name: "ReplayArn"))
    DescribeReplayResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplayDescription, name: "Description"))
    DescribeReplayResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplayState, name: "State"))
    DescribeReplayResponse.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplayStateReason, name: "StateReason"))
    DescribeReplayResponse.add_member(:event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "EventSourceArn"))
    DescribeReplayResponse.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplayDestination, name: "Destination"))
    DescribeReplayResponse.add_member(:event_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EventStartTime"))
    DescribeReplayResponse.add_member(:event_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EventEndTime"))
    DescribeReplayResponse.add_member(:event_last_replayed_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EventLastReplayedTime"))
    DescribeReplayResponse.add_member(:replay_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ReplayStartTime"))
    DescribeReplayResponse.add_member(:replay_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ReplayEndTime"))
    DescribeReplayResponse.type = Types::DescribeReplayResponse
    DescribeRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "Name", traits: {"smithy.api#required" => {}}))
    DescribeRuleRequest.add_member(:event_bus_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusNameOrArn, name: "EventBusName"))
    DescribeRuleRequest.type = Types::DescribeRuleRequest
    DescribeRuleResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "Name"))
    DescribeRuleResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "Arn"))
    DescribeRuleResponse.add_member(:event_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: EventPattern, name: "EventPattern"))
    DescribeRuleResponse.add_member(:schedule_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleExpression, name: "ScheduleExpression"))
    DescribeRuleResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleState, name: "State"))
    DescribeRuleResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleDescription, name: "Description"))
    DescribeRuleResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    DescribeRuleResponse.add_member(:managed_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedBy, name: "ManagedBy"))
    DescribeRuleResponse.add_member(:event_bus_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusName, name: "EventBusName"))
    DescribeRuleResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "CreatedBy"))
    DescribeRuleResponse.type = Types::DescribeRuleResponse
    DisableRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "Name", traits: {"smithy.api#required" => {}}))
    DisableRuleRequest.add_member(:event_bus_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusNameOrArn, name: "EventBusName"))
    DisableRuleRequest.type = Types::DisableRuleRequest
    EcsParameters.add_member(:task_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "TaskDefinitionArn", traits: {"smithy.api#required" => {}}))
    EcsParameters.add_member(:task_count, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMin1, name: "TaskCount"))
    EcsParameters.add_member(:launch_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchType, name: "LaunchType"))
    EcsParameters.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, name: "NetworkConfiguration"))
    EcsParameters.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlatformVersion"))
    EcsParameters.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Group"))
    EcsParameters.add_member(:capacity_provider_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategy, name: "CapacityProviderStrategy"))
    EcsParameters.add_member(:enable_ecs_managed_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnableECSManagedTags", traits: {"smithy.api#default" => false}))
    EcsParameters.add_member(:enable_execute_command, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnableExecuteCommand", traits: {"smithy.api#default" => false}))
    EcsParameters.add_member(:placement_constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementConstraints, name: "PlacementConstraints"))
    EcsParameters.add_member(:placement_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementStrategies, name: "PlacementStrategy"))
    EcsParameters.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagateTags, name: "PropagateTags"))
    EcsParameters.add_member(:reference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceId, name: "ReferenceId"))
    EcsParameters.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    EcsParameters.type = Types::EcsParameters
    EnableRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "Name", traits: {"smithy.api#required" => {}}))
    EnableRuleRequest.add_member(:event_bus_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusNameOrArn, name: "EventBusName"))
    EnableRuleRequest.type = Types::EnableRuleRequest
    EventBus.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    EventBus.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    EventBus.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Policy"))
    EventBus.type = Types::EventBus
    EventBusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBus, name: "member"))
    EventResourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventResource, name: "member"))
    EventSource.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    EventSource.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatedBy"))
    EventSource.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    EventSource.add_member(:expiration_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ExpirationTime"))
    EventSource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    EventSource.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceState, name: "State"))
    EventSource.type = Types::EventSource
    EventSourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSource, name: "member"))
    EventSourceState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    EventSourceState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    EventSourceState.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    HeaderParametersMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderKey, name: "key"))
    HeaderParametersMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderValue, name: "value"))
    HttpParameters.add_member(:path_parameter_values, ::Smithy::Schema::Shapes::MemberShape.new(target: PathParameterList, name: "PathParameterValues"))
    HttpParameters.add_member(:header_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderParametersMap, name: "HeaderParameters"))
    HttpParameters.add_member(:query_string_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStringParametersMap, name: "QueryStringParameters"))
    HttpParameters.type = Types::HttpParameters
    IllegalStatusException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    IllegalStatusException.type = Types::IllegalStatusException
    InputTransformer.add_member(:input_paths_map, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformerPaths, name: "InputPathsMap"))
    InputTransformer.add_member(:input_template, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformerInput, name: "InputTemplate", traits: {"smithy.api#required" => {}}))
    InputTransformer.type = Types::InputTransformer
    InternalException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InternalException.type = Types::InternalException
    InvalidEventPatternException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidEventPatternException.type = Types::InvalidEventPatternException
    InvalidStateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidStateException.type = Types::InvalidStateException
    KinesisParameters.add_member(:partition_key_path, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetPartitionKeyPath, name: "PartitionKeyPath", traits: {"smithy.api#required" => {}}))
    KinesisParameters.type = Types::KinesisParameters
    LaunchType.add_member(:ec2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2", traits: {"smithy.api#enumValue" => "EC2"}))
    LaunchType.add_member(:fargate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FARGATE", traits: {"smithy.api#enumValue" => "FARGATE"}))
    LaunchType.add_member(:external, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXTERNAL", traits: {"smithy.api#enumValue" => "EXTERNAL"}))
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListApiDestinationsRequest.add_member(:name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDestinationName, name: "NamePrefix"))
    ListApiDestinationsRequest.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionArn, name: "ConnectionArn"))
    ListApiDestinationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListApiDestinationsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMax100, name: "Limit"))
    ListApiDestinationsRequest.type = Types::ListApiDestinationsRequest
    ListApiDestinationsResponse.add_member(:api_destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDestinationResponseList, name: "ApiDestinations"))
    ListApiDestinationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListApiDestinationsResponse.type = Types::ListApiDestinationsResponse
    ListArchivesRequest.add_member(:name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveName, name: "NamePrefix"))
    ListArchivesRequest.add_member(:event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "EventSourceArn"))
    ListArchivesRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveState, name: "State"))
    ListArchivesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListArchivesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMax100, name: "Limit"))
    ListArchivesRequest.type = Types::ListArchivesRequest
    ListArchivesResponse.add_member(:archives, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveResponseList, name: "Archives"))
    ListArchivesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListArchivesResponse.type = Types::ListArchivesResponse
    ListConnectionsRequest.add_member(:name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionName, name: "NamePrefix"))
    ListConnectionsRequest.add_member(:connection_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionState, name: "ConnectionState"))
    ListConnectionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListConnectionsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMax100, name: "Limit"))
    ListConnectionsRequest.type = Types::ListConnectionsRequest
    ListConnectionsResponse.add_member(:connections, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionResponseList, name: "Connections"))
    ListConnectionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListConnectionsResponse.type = Types::ListConnectionsResponse
    ListEventBusesRequest.add_member(:name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusName, name: "NamePrefix"))
    ListEventBusesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEventBusesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMax100, name: "Limit"))
    ListEventBusesRequest.type = Types::ListEventBusesRequest
    ListEventBusesResponse.add_member(:event_buses, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusList, name: "EventBuses"))
    ListEventBusesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEventBusesResponse.type = Types::ListEventBusesResponse
    ListEventSourcesRequest.add_member(:name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceNamePrefix, name: "NamePrefix"))
    ListEventSourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEventSourcesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMax100, name: "Limit"))
    ListEventSourcesRequest.type = Types::ListEventSourcesRequest
    ListEventSourcesResponse.add_member(:event_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceList, name: "EventSources"))
    ListEventSourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEventSourcesResponse.type = Types::ListEventSourcesResponse
    ListPartnerEventSourceAccountsRequest.add_member(:event_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceName, name: "EventSourceName", traits: {"smithy.api#required" => {}}))
    ListPartnerEventSourceAccountsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPartnerEventSourceAccountsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMax100, name: "Limit"))
    ListPartnerEventSourceAccountsRequest.type = Types::ListPartnerEventSourceAccountsRequest
    ListPartnerEventSourceAccountsResponse.add_member(:partner_event_source_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerEventSourceAccountList, name: "PartnerEventSourceAccounts"))
    ListPartnerEventSourceAccountsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPartnerEventSourceAccountsResponse.type = Types::ListPartnerEventSourceAccountsResponse
    ListPartnerEventSourcesRequest.add_member(:name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerEventSourceNamePrefix, name: "NamePrefix", traits: {"smithy.api#required" => {}}))
    ListPartnerEventSourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPartnerEventSourcesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMax100, name: "Limit"))
    ListPartnerEventSourcesRequest.type = Types::ListPartnerEventSourcesRequest
    ListPartnerEventSourcesResponse.add_member(:partner_event_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerEventSourceList, name: "PartnerEventSources"))
    ListPartnerEventSourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPartnerEventSourcesResponse.type = Types::ListPartnerEventSourcesResponse
    ListReplaysRequest.add_member(:name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplayName, name: "NamePrefix"))
    ListReplaysRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplayState, name: "State"))
    ListReplaysRequest.add_member(:event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "EventSourceArn"))
    ListReplaysRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListReplaysRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMax100, name: "Limit"))
    ListReplaysRequest.type = Types::ListReplaysRequest
    ListReplaysResponse.add_member(:replays, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplayList, name: "Replays"))
    ListReplaysResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListReplaysResponse.type = Types::ListReplaysResponse
    ListRuleNamesByTargetRequest.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetArn, name: "TargetArn", traits: {"smithy.api#required" => {}}))
    ListRuleNamesByTargetRequest.add_member(:event_bus_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusNameOrArn, name: "EventBusName"))
    ListRuleNamesByTargetRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListRuleNamesByTargetRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMax100, name: "Limit"))
    ListRuleNamesByTargetRequest.type = Types::ListRuleNamesByTargetRequest
    ListRuleNamesByTargetResponse.add_member(:rule_names, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleNameList, name: "RuleNames"))
    ListRuleNamesByTargetResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListRuleNamesByTargetResponse.type = Types::ListRuleNamesByTargetResponse
    ListRulesRequest.add_member(:name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "NamePrefix"))
    ListRulesRequest.add_member(:event_bus_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusNameOrArn, name: "EventBusName"))
    ListRulesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListRulesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMax100, name: "Limit"))
    ListRulesRequest.type = Types::ListRulesRequest
    ListRulesResponse.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleResponseList, name: "Rules"))
    ListRulesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListRulesResponse.type = Types::ListRulesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTargetsByRuleRequest.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "Rule", traits: {"smithy.api#required" => {}}))
    ListTargetsByRuleRequest.add_member(:event_bus_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusNameOrArn, name: "EventBusName"))
    ListTargetsByRuleRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTargetsByRuleRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMax100, name: "Limit"))
    ListTargetsByRuleRequest.type = Types::ListTargetsByRuleRequest
    ListTargetsByRuleResponse.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetList, name: "Targets"))
    ListTargetsByRuleResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTargetsByRuleResponse.type = Types::ListTargetsByRuleResponse
    ManagedRuleException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ManagedRuleException.type = Types::ManagedRuleException
    NetworkConfiguration.add_member(:awsvpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsVpcConfiguration, name: "awsvpcConfiguration"))
    NetworkConfiguration.type = Types::NetworkConfiguration
    OperationDisabledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    OperationDisabledException.type = Types::OperationDisabledException
    PartnerEventSource.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    PartnerEventSource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    PartnerEventSource.type = Types::PartnerEventSource
    PartnerEventSourceAccount.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "Account"))
    PartnerEventSourceAccount.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    PartnerEventSourceAccount.add_member(:expiration_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ExpirationTime"))
    PartnerEventSourceAccount.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceState, name: "State"))
    PartnerEventSourceAccount.type = Types::PartnerEventSourceAccount
    PartnerEventSourceAccountList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerEventSourceAccount, name: "member"))
    PartnerEventSourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerEventSource, name: "member"))
    PathParameterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PathParameter, name: "member"))
    PlacementConstraint.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementConstraintType, name: "type"))
    PlacementConstraint.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementConstraintExpression, name: "expression"))
    PlacementConstraint.type = Types::PlacementConstraint
    PlacementConstraintType.add_member(:distinct_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISTINCT_INSTANCE", traits: {"smithy.api#enumValue" => "distinctInstance"}))
    PlacementConstraintType.add_member(:member_of, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMBER_OF", traits: {"smithy.api#enumValue" => "memberOf"}))
    PlacementConstraints.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementConstraint, name: "member"))
    PlacementStrategies.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementStrategy, name: "member"))
    PlacementStrategy.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementStrategyType, name: "type"))
    PlacementStrategy.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementStrategyField, name: "field"))
    PlacementStrategy.type = Types::PlacementStrategy
    PlacementStrategyType.add_member(:random, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RANDOM", traits: {"smithy.api#enumValue" => "random"}))
    PlacementStrategyType.add_member(:spread, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPREAD", traits: {"smithy.api#enumValue" => "spread"}))
    PlacementStrategyType.add_member(:binpack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BINPACK", traits: {"smithy.api#enumValue" => "binpack"}))
    PolicyLengthExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    PolicyLengthExceededException.type = Types::PolicyLengthExceededException
    PropagateTags.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TASK_DEFINITION", traits: {"smithy.api#enumValue" => "TASK_DEFINITION"}))
    PutEventsRequest.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: PutEventsRequestEntryList, name: "Entries", traits: {"smithy.api#required" => {}}))
    PutEventsRequest.type = Types::PutEventsRequest
    PutEventsRequestEntry.add_member(:time, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTime, name: "Time"))
    PutEventsRequestEntry.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Source"))
    PutEventsRequestEntry.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: EventResourceList, name: "Resources"))
    PutEventsRequestEntry.add_member(:detail_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DetailType"))
    PutEventsRequestEntry.add_member(:detail, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Detail"))
    PutEventsRequestEntry.add_member(:event_bus_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonPartnerEventBusNameOrArn, name: "EventBusName"))
    PutEventsRequestEntry.add_member(:trace_header, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceHeader, name: "TraceHeader"))
    PutEventsRequestEntry.type = Types::PutEventsRequestEntry
    PutEventsRequestEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PutEventsRequestEntry, name: "member"))
    PutEventsResponse.add_member(:failed_entry_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "FailedEntryCount", traits: {"smithy.api#default" => 0}))
    PutEventsResponse.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: PutEventsResultEntryList, name: "Entries"))
    PutEventsResponse.type = Types::PutEventsResponse
    PutEventsResultEntry.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "EventId"))
    PutEventsResultEntry.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    PutEventsResultEntry.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    PutEventsResultEntry.type = Types::PutEventsResultEntry
    PutEventsResultEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PutEventsResultEntry, name: "member"))
    PutPartnerEventsRequest.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: PutPartnerEventsRequestEntryList, name: "Entries", traits: {"smithy.api#required" => {}}))
    PutPartnerEventsRequest.type = Types::PutPartnerEventsRequest
    PutPartnerEventsRequestEntry.add_member(:time, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTime, name: "Time"))
    PutPartnerEventsRequestEntry.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceName, name: "Source"))
    PutPartnerEventsRequestEntry.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: EventResourceList, name: "Resources"))
    PutPartnerEventsRequestEntry.add_member(:detail_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DetailType"))
    PutPartnerEventsRequestEntry.add_member(:detail, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Detail"))
    PutPartnerEventsRequestEntry.type = Types::PutPartnerEventsRequestEntry
    PutPartnerEventsRequestEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PutPartnerEventsRequestEntry, name: "member"))
    PutPartnerEventsResponse.add_member(:failed_entry_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "FailedEntryCount", traits: {"smithy.api#default" => 0}))
    PutPartnerEventsResponse.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: PutPartnerEventsResultEntryList, name: "Entries"))
    PutPartnerEventsResponse.type = Types::PutPartnerEventsResponse
    PutPartnerEventsResultEntry.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "EventId"))
    PutPartnerEventsResultEntry.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    PutPartnerEventsResultEntry.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    PutPartnerEventsResultEntry.type = Types::PutPartnerEventsResultEntry
    PutPartnerEventsResultEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PutPartnerEventsResultEntry, name: "member"))
    PutPermissionRequest.add_member(:event_bus_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonPartnerEventBusName, name: "EventBusName"))
    PutPermissionRequest.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "Action"))
    PutPermissionRequest.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: Principal, name: "Principal"))
    PutPermissionRequest.add_member(:statement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementId, name: "StatementId"))
    PutPermissionRequest.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: Condition, name: "Condition"))
    PutPermissionRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Policy"))
    PutPermissionRequest.type = Types::PutPermissionRequest
    PutRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "Name", traits: {"smithy.api#required" => {}}))
    PutRuleRequest.add_member(:schedule_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleExpression, name: "ScheduleExpression"))
    PutRuleRequest.add_member(:event_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: EventPattern, name: "EventPattern"))
    PutRuleRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleState, name: "State"))
    PutRuleRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleDescription, name: "Description"))
    PutRuleRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    PutRuleRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    PutRuleRequest.add_member(:event_bus_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusNameOrArn, name: "EventBusName"))
    PutRuleRequest.type = Types::PutRuleRequest
    PutRuleResponse.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "RuleArn"))
    PutRuleResponse.type = Types::PutRuleResponse
    PutTargetsRequest.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "Rule", traits: {"smithy.api#required" => {}}))
    PutTargetsRequest.add_member(:event_bus_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusNameOrArn, name: "EventBusName"))
    PutTargetsRequest.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetList, name: "Targets", traits: {"smithy.api#required" => {}}))
    PutTargetsRequest.type = Types::PutTargetsRequest
    PutTargetsResponse.add_member(:failed_entry_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "FailedEntryCount", traits: {"smithy.api#default" => 0}))
    PutTargetsResponse.add_member(:failed_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: PutTargetsResultEntryList, name: "FailedEntries"))
    PutTargetsResponse.type = Types::PutTargetsResponse
    PutTargetsResultEntry.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetId, name: "TargetId"))
    PutTargetsResultEntry.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    PutTargetsResultEntry.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    PutTargetsResultEntry.type = Types::PutTargetsResultEntry
    PutTargetsResultEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PutTargetsResultEntry, name: "member"))
    QueryStringParametersMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStringKey, name: "key"))
    QueryStringParametersMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStringValue, name: "value"))
    RedshiftDataParameters.add_member(:secret_manager_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftSecretManagerArn, name: "SecretManagerArn"))
    RedshiftDataParameters.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: Database, name: "Database", traits: {"smithy.api#required" => {}}))
    RedshiftDataParameters.add_member(:db_user, ::Smithy::Schema::Shapes::MemberShape.new(target: DbUser, name: "DbUser"))
    RedshiftDataParameters.add_member(:sql, ::Smithy::Schema::Shapes::MemberShape.new(target: Sql, name: "Sql", traits: {"smithy.api#required" => {}}))
    RedshiftDataParameters.add_member(:statement_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementName, name: "StatementName"))
    RedshiftDataParameters.add_member(:with_event, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "WithEvent", traits: {"smithy.api#default" => false}))
    RedshiftDataParameters.type = Types::RedshiftDataParameters
    RemovePermissionRequest.add_member(:statement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementId, name: "StatementId"))
    RemovePermissionRequest.add_member(:remove_all_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "RemoveAllPermissions", traits: {"smithy.api#default" => false}))
    RemovePermissionRequest.add_member(:event_bus_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonPartnerEventBusName, name: "EventBusName"))
    RemovePermissionRequest.type = Types::RemovePermissionRequest
    RemoveTargetsRequest.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "Rule", traits: {"smithy.api#required" => {}}))
    RemoveTargetsRequest.add_member(:event_bus_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusNameOrArn, name: "EventBusName"))
    RemoveTargetsRequest.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetIdList, name: "Ids", traits: {"smithy.api#required" => {}}))
    RemoveTargetsRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Force", traits: {"smithy.api#default" => false}))
    RemoveTargetsRequest.type = Types::RemoveTargetsRequest
    RemoveTargetsResponse.add_member(:failed_entry_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "FailedEntryCount", traits: {"smithy.api#default" => 0}))
    RemoveTargetsResponse.add_member(:failed_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoveTargetsResultEntryList, name: "FailedEntries"))
    RemoveTargetsResponse.type = Types::RemoveTargetsResponse
    RemoveTargetsResultEntry.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetId, name: "TargetId"))
    RemoveTargetsResultEntry.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    RemoveTargetsResultEntry.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    RemoveTargetsResultEntry.type = Types::RemoveTargetsResultEntry
    RemoveTargetsResultEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoveTargetsResultEntry, name: "member"))
    Replay.add_member(:replay_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplayName, name: "ReplayName"))
    Replay.add_member(:event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "EventSourceArn"))
    Replay.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplayState, name: "State"))
    Replay.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplayStateReason, name: "StateReason"))
    Replay.add_member(:event_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EventStartTime"))
    Replay.add_member(:event_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EventEndTime"))
    Replay.add_member(:event_last_replayed_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EventLastReplayedTime"))
    Replay.add_member(:replay_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ReplayStartTime"))
    Replay.add_member(:replay_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ReplayEndTime"))
    Replay.type = Types::Replay
    ReplayDestination.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn", traits: {"smithy.api#required" => {}}))
    ReplayDestination.add_member(:filter_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplayDestinationFilters, name: "FilterArns"))
    ReplayDestination.type = Types::ReplayDestination
    ReplayDestinationFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "member"))
    ReplayList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Replay, name: "member"))
    ReplayState.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    ReplayState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    ReplayState.add_member(:cancelling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLING", traits: {"smithy.api#enumValue" => "CANCELLING"}))
    ReplayState.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ReplayState.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    ReplayState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ResourceAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RetryPolicy.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttempts, name: "MaximumRetryAttempts"))
    RetryPolicy.add_member(:maximum_event_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumEventAgeInSeconds, name: "MaximumEventAgeInSeconds"))
    RetryPolicy.type = Types::RetryPolicy
    Rule.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "Name"))
    Rule.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "Arn"))
    Rule.add_member(:event_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: EventPattern, name: "EventPattern"))
    Rule.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleState, name: "State"))
    Rule.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleDescription, name: "Description"))
    Rule.add_member(:schedule_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleExpression, name: "ScheduleExpression"))
    Rule.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    Rule.add_member(:managed_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedBy, name: "ManagedBy"))
    Rule.add_member(:event_bus_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusName, name: "EventBusName"))
    Rule.type = Types::Rule
    RuleNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "member"))
    RuleResponseList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Rule, name: "member"))
    RuleState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    RuleState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    RunCommandParameters.add_member(:run_command_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: RunCommandTargets, name: "RunCommandTargets", traits: {"smithy.api#required" => {}}))
    RunCommandParameters.type = Types::RunCommandParameters
    RunCommandTarget.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: RunCommandTargetKey, name: "Key", traits: {"smithy.api#required" => {}}))
    RunCommandTarget.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: RunCommandTargetValues, name: "Values", traits: {"smithy.api#required" => {}}))
    RunCommandTarget.type = Types::RunCommandTarget
    RunCommandTargetValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RunCommandTargetValue, name: "member"))
    RunCommandTargets.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RunCommandTarget, name: "member"))
    SageMakerPipelineParameter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SageMakerPipelineParameterName, name: "Name", traits: {"smithy.api#required" => {}}))
    SageMakerPipelineParameter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SageMakerPipelineParameterValue, name: "Value", traits: {"smithy.api#required" => {}}))
    SageMakerPipelineParameter.type = Types::SageMakerPipelineParameter
    SageMakerPipelineParameterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SageMakerPipelineParameter, name: "member"))
    SageMakerPipelineParameters.add_member(:pipeline_parameter_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SageMakerPipelineParameterList, name: "PipelineParameterList"))
    SageMakerPipelineParameters.type = Types::SageMakerPipelineParameters
    SqsParameters.add_member(:message_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageGroupId, name: "MessageGroupId"))
    SqsParameters.type = Types::SqsParameters
    StartReplayRequest.add_member(:replay_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplayName, name: "ReplayName", traits: {"smithy.api#required" => {}}))
    StartReplayRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplayDescription, name: "Description"))
    StartReplayRequest.add_member(:event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "EventSourceArn", traits: {"smithy.api#required" => {}}))
    StartReplayRequest.add_member(:event_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EventStartTime", traits: {"smithy.api#required" => {}}))
    StartReplayRequest.add_member(:event_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EventEndTime", traits: {"smithy.api#required" => {}}))
    StartReplayRequest.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplayDestination, name: "Destination", traits: {"smithy.api#required" => {}}))
    StartReplayRequest.type = Types::StartReplayRequest
    StartReplayResponse.add_member(:replay_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplayArn, name: "ReplayArn"))
    StartReplayResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplayState, name: "State"))
    StartReplayResponse.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplayStateReason, name: "StateReason"))
    StartReplayResponse.add_member(:replay_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ReplayStartTime"))
    StartReplayResponse.type = Types::StartReplayResponse
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Target.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetId, name: "Id", traits: {"smithy.api#required" => {}}))
    Target.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    Target.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    Target.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetInput, name: "Input"))
    Target.add_member(:input_path, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetInputPath, name: "InputPath"))
    Target.add_member(:input_transformer, ::Smithy::Schema::Shapes::MemberShape.new(target: InputTransformer, name: "InputTransformer"))
    Target.add_member(:kinesis_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisParameters, name: "KinesisParameters"))
    Target.add_member(:run_command_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: RunCommandParameters, name: "RunCommandParameters"))
    Target.add_member(:ecs_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsParameters, name: "EcsParameters"))
    Target.add_member(:batch_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchParameters, name: "BatchParameters"))
    Target.add_member(:sqs_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SqsParameters, name: "SqsParameters"))
    Target.add_member(:http_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpParameters, name: "HttpParameters"))
    Target.add_member(:redshift_data_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftDataParameters, name: "RedshiftDataParameters"))
    Target.add_member(:sage_maker_pipeline_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SageMakerPipelineParameters, name: "SageMakerPipelineParameters"))
    Target.add_member(:dead_letter_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadLetterConfig, name: "DeadLetterConfig"))
    Target.add_member(:retry_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryPolicy, name: "RetryPolicy"))
    Target.type = Types::Target
    TargetIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetId, name: "member"))
    TargetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Target, name: "member"))
    TestEventPatternRequest.add_member(:event_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: EventPattern, name: "EventPattern", traits: {"smithy.api#required" => {}}))
    TestEventPatternRequest.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Event", traits: {"smithy.api#required" => {}}))
    TestEventPatternRequest.type = Types::TestEventPatternRequest
    TestEventPatternResponse.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Result", traits: {"smithy.api#default" => false}))
    TestEventPatternResponse.type = Types::TestEventPatternResponse
    TransformerPaths.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: InputTransformerPathKey, name: "key"))
    TransformerPaths.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetInputPath, name: "value"))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateApiDestinationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDestinationName, name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateApiDestinationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDestinationDescription, name: "Description"))
    UpdateApiDestinationRequest.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionArn, name: "ConnectionArn"))
    UpdateApiDestinationRequest.add_member(:invocation_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpsEndpoint, name: "InvocationEndpoint"))
    UpdateApiDestinationRequest.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDestinationHttpMethod, name: "HttpMethod"))
    UpdateApiDestinationRequest.add_member(:invocation_rate_limit_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDestinationInvocationRateLimitPerSecond, name: "InvocationRateLimitPerSecond"))
    UpdateApiDestinationRequest.type = Types::UpdateApiDestinationRequest
    UpdateApiDestinationResponse.add_member(:api_destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDestinationArn, name: "ApiDestinationArn"))
    UpdateApiDestinationResponse.add_member(:api_destination_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDestinationState, name: "ApiDestinationState"))
    UpdateApiDestinationResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    UpdateApiDestinationResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    UpdateApiDestinationResponse.type = Types::UpdateApiDestinationResponse
    UpdateArchiveRequest.add_member(:archive_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveName, name: "ArchiveName", traits: {"smithy.api#required" => {}}))
    UpdateArchiveRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveDescription, name: "Description"))
    UpdateArchiveRequest.add_member(:event_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: EventPattern, name: "EventPattern"))
    UpdateArchiveRequest.add_member(:retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionDays, name: "RetentionDays"))
    UpdateArchiveRequest.type = Types::UpdateArchiveRequest
    UpdateArchiveResponse.add_member(:archive_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveArn, name: "ArchiveArn"))
    UpdateArchiveResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveState, name: "State"))
    UpdateArchiveResponse.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveStateReason, name: "StateReason"))
    UpdateArchiveResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    UpdateArchiveResponse.type = Types::UpdateArchiveResponse
    UpdateConnectionApiKeyAuthRequestParameters.add_member(:api_key_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthHeaderParameters, name: "ApiKeyName"))
    UpdateConnectionApiKeyAuthRequestParameters.add_member(:api_key_value, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthHeaderParametersSensitive, name: "ApiKeyValue"))
    UpdateConnectionApiKeyAuthRequestParameters.type = Types::UpdateConnectionApiKeyAuthRequestParameters
    UpdateConnectionAuthRequestParameters.add_member(:basic_auth_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateConnectionBasicAuthRequestParameters, name: "BasicAuthParameters"))
    UpdateConnectionAuthRequestParameters.add_member(:o_auth_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateConnectionOAuthRequestParameters, name: "OAuthParameters"))
    UpdateConnectionAuthRequestParameters.add_member(:api_key_auth_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateConnectionApiKeyAuthRequestParameters, name: "ApiKeyAuthParameters"))
    UpdateConnectionAuthRequestParameters.add_member(:invocation_http_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionHttpParameters, name: "InvocationHttpParameters"))
    UpdateConnectionAuthRequestParameters.type = Types::UpdateConnectionAuthRequestParameters
    UpdateConnectionBasicAuthRequestParameters.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthHeaderParameters, name: "Username"))
    UpdateConnectionBasicAuthRequestParameters.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthHeaderParametersSensitive, name: "Password"))
    UpdateConnectionBasicAuthRequestParameters.type = Types::UpdateConnectionBasicAuthRequestParameters
    UpdateConnectionOAuthClientRequestParameters.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthHeaderParameters, name: "ClientID"))
    UpdateConnectionOAuthClientRequestParameters.add_member(:client_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthHeaderParametersSensitive, name: "ClientSecret"))
    UpdateConnectionOAuthClientRequestParameters.type = Types::UpdateConnectionOAuthClientRequestParameters
    UpdateConnectionOAuthRequestParameters.add_member(:client_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateConnectionOAuthClientRequestParameters, name: "ClientParameters"))
    UpdateConnectionOAuthRequestParameters.add_member(:authorization_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpsEndpoint, name: "AuthorizationEndpoint"))
    UpdateConnectionOAuthRequestParameters.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionOAuthHttpMethod, name: "HttpMethod"))
    UpdateConnectionOAuthRequestParameters.add_member(:o_auth_http_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionHttpParameters, name: "OAuthHttpParameters"))
    UpdateConnectionOAuthRequestParameters.type = Types::UpdateConnectionOAuthRequestParameters
    UpdateConnectionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionName, name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateConnectionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionDescription, name: "Description"))
    UpdateConnectionRequest.add_member(:authorization_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionAuthorizationType, name: "AuthorizationType"))
    UpdateConnectionRequest.add_member(:auth_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateConnectionAuthRequestParameters, name: "AuthParameters"))
    UpdateConnectionRequest.type = Types::UpdateConnectionRequest
    UpdateConnectionResponse.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionArn, name: "ConnectionArn"))
    UpdateConnectionResponse.add_member(:connection_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionState, name: "ConnectionState"))
    UpdateConnectionResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    UpdateConnectionResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    UpdateConnectionResponse.add_member(:last_authorized_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastAuthorizedTime"))
    UpdateConnectionResponse.type = Types::UpdateConnectionResponse

    AWSEvents = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.cloudwatchevents#AWSEvents"
      service.name = "AWSEvents"
      service.version = "2015-10-07"
      service.traits = {"aws.api#service" => {"sdkId" => "CloudWatch Events", "arnNamespace" => "events", "cloudFormationName" => "Events", "cloudTrailEventSource" => "events.amazonaws.com", "docId" => "events-2015-10-07", "endpointPrefix" => "events"}, "aws.auth#sigv4" => {"name" => "events"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon CloudWatch Events", "smithy.api#xmlNamespace" => {"uri" => "http://events.amazonaws.com/doc/2015-10-07"}}
      service.add_operation(:activate_event_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#ActivateEventSource"
        operation.name = "ActivateEventSource"
        operation.input = ActivateEventSourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InternalException
        operation.errors << InvalidStateException
        operation.errors << OperationDisabledException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:cancel_replay, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#CancelReplay"
        operation.name = "CancelReplay"
        operation.input = CancelReplayRequest
        operation.output = CancelReplayResponse
        operation.errors << ConcurrentModificationException
        operation.errors << IllegalStatusException
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_api_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#CreateApiDestination"
        operation.name = "CreateApiDestination"
        operation.input = CreateApiDestinationRequest
        operation.output = CreateApiDestinationResponse
        operation.errors << InternalException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_archive, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#CreateArchive"
        operation.name = "CreateArchive"
        operation.input = CreateArchiveRequest
        operation.output = CreateArchiveResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InternalException
        operation.errors << InvalidEventPatternException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#CreateConnection"
        operation.name = "CreateConnection"
        operation.input = CreateConnectionRequest
        operation.output = CreateConnectionResponse
        operation.errors << InternalException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.traits = {}
      end)
      service.add_operation(:create_event_bus, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#CreateEventBus"
        operation.name = "CreateEventBus"
        operation.input = CreateEventBusRequest
        operation.output = CreateEventBusResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InternalException
        operation.errors << InvalidStateException
        operation.errors << LimitExceededException
        operation.errors << OperationDisabledException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_partner_event_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#CreatePartnerEventSource"
        operation.name = "CreatePartnerEventSource"
        operation.input = CreatePartnerEventSourceRequest
        operation.output = CreatePartnerEventSourceResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InternalException
        operation.errors << LimitExceededException
        operation.errors << OperationDisabledException
        operation.errors << ResourceAlreadyExistsException
        operation.traits = {}
      end)
      service.add_operation(:deactivate_event_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DeactivateEventSource"
        operation.name = "DeactivateEventSource"
        operation.input = DeactivateEventSourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InternalException
        operation.errors << InvalidStateException
        operation.errors << OperationDisabledException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:deauthorize_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DeauthorizeConnection"
        operation.name = "DeauthorizeConnection"
        operation.input = DeauthorizeConnectionRequest
        operation.output = DeauthorizeConnectionResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_api_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DeleteApiDestination"
        operation.name = "DeleteApiDestination"
        operation.input = DeleteApiDestinationRequest
        operation.output = DeleteApiDestinationResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_archive, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DeleteArchive"
        operation.name = "DeleteArchive"
        operation.input = DeleteArchiveRequest
        operation.output = DeleteArchiveResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DeleteConnection"
        operation.name = "DeleteConnection"
        operation.input = DeleteConnectionRequest
        operation.output = DeleteConnectionResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_event_bus, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DeleteEventBus"
        operation.name = "DeleteEventBus"
        operation.input = DeleteEventBusRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InternalException
        operation.traits = {}
      end)
      service.add_operation(:delete_partner_event_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DeletePartnerEventSource"
        operation.name = "DeletePartnerEventSource"
        operation.input = DeletePartnerEventSourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InternalException
        operation.errors << OperationDisabledException
        operation.traits = {}
      end)
      service.add_operation(:delete_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DeleteRule"
        operation.name = "DeleteRule"
        operation.input = DeleteRuleRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InternalException
        operation.errors << ManagedRuleException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_api_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DescribeApiDestination"
        operation.name = "DescribeApiDestination"
        operation.input = DescribeApiDestinationRequest
        operation.output = DescribeApiDestinationResponse
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_archive, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DescribeArchive"
        operation.name = "DescribeArchive"
        operation.input = DescribeArchiveRequest
        operation.output = DescribeArchiveResponse
        operation.errors << InternalException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DescribeConnection"
        operation.name = "DescribeConnection"
        operation.input = DescribeConnectionRequest
        operation.output = DescribeConnectionResponse
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_event_bus, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DescribeEventBus"
        operation.name = "DescribeEventBus"
        operation.input = DescribeEventBusRequest
        operation.output = DescribeEventBusResponse
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_event_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DescribeEventSource"
        operation.name = "DescribeEventSource"
        operation.input = DescribeEventSourceRequest
        operation.output = DescribeEventSourceResponse
        operation.errors << InternalException
        operation.errors << OperationDisabledException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_partner_event_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DescribePartnerEventSource"
        operation.name = "DescribePartnerEventSource"
        operation.input = DescribePartnerEventSourceRequest
        operation.output = DescribePartnerEventSourceResponse
        operation.errors << InternalException
        operation.errors << OperationDisabledException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_replay, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DescribeReplay"
        operation.name = "DescribeReplay"
        operation.input = DescribeReplayRequest
        operation.output = DescribeReplayResponse
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DescribeRule"
        operation.name = "DescribeRule"
        operation.input = DescribeRuleRequest
        operation.output = DescribeRuleResponse
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:disable_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#DisableRule"
        operation.name = "DisableRule"
        operation.input = DisableRuleRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InternalException
        operation.errors << ManagedRuleException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:enable_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#EnableRule"
        operation.name = "EnableRule"
        operation.input = EnableRuleRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InternalException
        operation.errors << ManagedRuleException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_api_destinations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#ListApiDestinations"
        operation.name = "ListApiDestinations"
        operation.input = ListApiDestinationsRequest
        operation.output = ListApiDestinationsResponse
        operation.errors << InternalException
        operation.traits = {}
      end)
      service.add_operation(:list_archives, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#ListArchives"
        operation.name = "ListArchives"
        operation.input = ListArchivesRequest
        operation.output = ListArchivesResponse
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_connections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#ListConnections"
        operation.name = "ListConnections"
        operation.input = ListConnectionsRequest
        operation.output = ListConnectionsResponse
        operation.errors << InternalException
        operation.traits = {}
      end)
      service.add_operation(:list_event_buses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#ListEventBuses"
        operation.name = "ListEventBuses"
        operation.input = ListEventBusesRequest
        operation.output = ListEventBusesResponse
        operation.errors << InternalException
        operation.traits = {}
      end)
      service.add_operation(:list_event_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#ListEventSources"
        operation.name = "ListEventSources"
        operation.input = ListEventSourcesRequest
        operation.output = ListEventSourcesResponse
        operation.errors << InternalException
        operation.errors << OperationDisabledException
        operation.traits = {}
      end)
      service.add_operation(:list_partner_event_source_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#ListPartnerEventSourceAccounts"
        operation.name = "ListPartnerEventSourceAccounts"
        operation.input = ListPartnerEventSourceAccountsRequest
        operation.output = ListPartnerEventSourceAccountsResponse
        operation.errors << InternalException
        operation.errors << OperationDisabledException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_partner_event_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#ListPartnerEventSources"
        operation.name = "ListPartnerEventSources"
        operation.input = ListPartnerEventSourcesRequest
        operation.output = ListPartnerEventSourcesResponse
        operation.errors << InternalException
        operation.errors << OperationDisabledException
        operation.traits = {}
      end)
      service.add_operation(:list_replays, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#ListReplays"
        operation.name = "ListReplays"
        operation.input = ListReplaysRequest
        operation.output = ListReplaysResponse
        operation.errors << InternalException
        operation.traits = {}
      end)
      service.add_operation(:list_rule_names_by_target, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#ListRuleNamesByTarget"
        operation.name = "ListRuleNamesByTarget"
        operation.input = ListRuleNamesByTargetRequest
        operation.output = ListRuleNamesByTargetResponse
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#ListRules"
        operation.name = "ListRules"
        operation.input = ListRulesRequest
        operation.output = ListRulesResponse
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_targets_by_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#ListTargetsByRule"
        operation.name = "ListTargetsByRule"
        operation.input = ListTargetsByRuleRequest
        operation.output = ListTargetsByRuleResponse
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:put_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#PutEvents"
        operation.name = "PutEvents"
        operation.input = PutEventsRequest
        operation.output = PutEventsResponse
        operation.errors << InternalException
        operation.traits = {}
      end)
      service.add_operation(:put_partner_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#PutPartnerEvents"
        operation.name = "PutPartnerEvents"
        operation.input = PutPartnerEventsRequest
        operation.output = PutPartnerEventsResponse
        operation.errors << InternalException
        operation.errors << OperationDisabledException
        operation.traits = {}
      end)
      service.add_operation(:put_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#PutPermission"
        operation.name = "PutPermission"
        operation.input = PutPermissionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InternalException
        operation.errors << OperationDisabledException
        operation.errors << PolicyLengthExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:put_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#PutRule"
        operation.name = "PutRule"
        operation.input = PutRuleRequest
        operation.output = PutRuleResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InternalException
        operation.errors << InvalidEventPatternException
        operation.errors << LimitExceededException
        operation.errors << ManagedRuleException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:put_targets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#PutTargets"
        operation.name = "PutTargets"
        operation.input = PutTargetsRequest
        operation.output = PutTargetsResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InternalException
        operation.errors << LimitExceededException
        operation.errors << ManagedRuleException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:remove_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#RemovePermission"
        operation.name = "RemovePermission"
        operation.input = RemovePermissionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InternalException
        operation.errors << OperationDisabledException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:remove_targets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#RemoveTargets"
        operation.name = "RemoveTargets"
        operation.input = RemoveTargetsRequest
        operation.output = RemoveTargetsResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InternalException
        operation.errors << ManagedRuleException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:start_replay, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#StartReplay"
        operation.name = "StartReplay"
        operation.input = StartReplayRequest
        operation.output = StartReplayResponse
        operation.errors << InternalException
        operation.errors << InvalidEventPatternException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InternalException
        operation.errors << ManagedRuleException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:test_event_pattern, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#TestEventPattern"
        operation.name = "TestEventPattern"
        operation.input = TestEventPatternRequest
        operation.output = TestEventPatternResponse
        operation.errors << InternalException
        operation.errors << InvalidEventPatternException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InternalException
        operation.errors << ManagedRuleException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_api_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#UpdateApiDestination"
        operation.name = "UpdateApiDestination"
        operation.input = UpdateApiDestinationRequest
        operation.output = UpdateApiDestinationResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InternalException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_archive, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#UpdateArchive"
        operation.name = "UpdateArchive"
        operation.input = UpdateArchiveRequest
        operation.output = UpdateArchiveResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InternalException
        operation.errors << InvalidEventPatternException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchevents#UpdateConnection"
        operation.name = "UpdateConnection"
        operation.input = UpdateConnectionRequest
        operation.output = UpdateConnectionResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InternalException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
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
