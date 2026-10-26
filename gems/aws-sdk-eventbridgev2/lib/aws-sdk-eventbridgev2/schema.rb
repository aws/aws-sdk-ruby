# frozen_string_literal: true

# This is generated code!

module Aws::EventBridgeV2
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    AwsServiceEventsSourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#AwsServiceEventsSourceConfiguration", name: "AwsServiceEventsSourceConfiguration")
    AwsServiceSource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#AwsServiceSource", name: "AwsServiceSource", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^aws\\.[a-z0-9\\-]+$"})
    BatchConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#BatchConfiguration", name: "BatchConfiguration")
    BusState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eventbridgev2#BusState", name: "BusState")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\u0021-\\u007E]+$"})
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#ConcurrentModificationException", name: "ConcurrentModificationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409, "smithy.api#retryable" => {}})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConfluentPublicRegistryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#ConfluentPublicRegistryConfiguration", name: "ConfluentPublicRegistryConfiguration")
    ConnectionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#ConnectionArn", name: "ConnectionArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:aws(-[a-z0-9]+)*:events:[a-z0-9-]+:\\d{12}:connection/.+$"})
    ContentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#ContentType", name: "ContentType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^application/"})
    CreateEventBusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#CreateEventBusRequest", name: "CreateEventBusRequest")
    CreateEventBusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#CreateEventBusResponse", name: "CreateEventBusResponse")
    CreateEventSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#CreateEventSourceRequest", name: "CreateEventSourceRequest")
    CreateEventSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#CreateEventSourceResponse", name: "CreateEventSourceResponse")
    CreateSubscriberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#CreateSubscriberRequest", name: "CreateSubscriberRequest")
    CreateSubscriberResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#CreateSubscriberResponse", name: "CreateSubscriberResponse")
    DeadLetterQueueArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#DeadLetterQueueArn", name: "DeadLetterQueueArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:aws(-[a-z0-9]+)*:sqs:[a-z][a-z0-9]*(-[a-z0-9]+)*:[0-9]{12}:([A-Za-z0-9_-]{1,80}|[A-Za-z0-9_-]{1,75}\\.fifo)(?![\\s\\S])"})
    DeduplicationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#DeduplicationConfiguration", name: "DeduplicationConfiguration")
    DeduplicationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eventbridgev2#DeduplicationType", name: "DeduplicationType")
    DeleteEventBusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#DeleteEventBusRequest", name: "DeleteEventBusRequest")
    DeleteEventBusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#DeleteEventBusResponse", name: "DeleteEventBusResponse")
    DeleteEventSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#DeleteEventSourceRequest", name: "DeleteEventSourceRequest")
    DeleteEventSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#DeleteEventSourceResponse", name: "DeleteEventSourceResponse")
    DeleteResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#DeleteResourcePolicyRequest", name: "DeleteResourcePolicyRequest")
    DeleteResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#DeleteResourcePolicyResponse", name: "DeleteResourcePolicyResponse")
    DeleteSubscriberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#DeleteSubscriberRequest", name: "DeleteSubscriberRequest")
    DeleteSubscriberResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#DeleteSubscriberResponse", name: "DeleteSubscriberResponse")
    DescribeEventBusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#DescribeEventBusRequest", name: "DescribeEventBusRequest")
    DescribeEventBusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#DescribeEventBusResponse", name: "DescribeEventBusResponse")
    DescribeEventSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#DescribeEventSourceRequest", name: "DescribeEventSourceRequest")
    DescribeEventSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#DescribeEventSourceResponse", name: "DescribeEventSourceResponse")
    DescribeSubscriberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#DescribeSubscriberRequest", name: "DescribeSubscriberRequest")
    DescribeSubscriberResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#DescribeSubscriberResponse", name: "DescribeSubscriberResponse")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[^\\u0000-\\u001F\\u007F-\\u009F\\u2028\\u2029]*(?![\\s\\S])"})
    DetailType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#DetailType", name: "DetailType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    EncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#EncryptionConfiguration", name: "EncryptionConfiguration")
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#ErrorCode", name: "ErrorCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    EventBusArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#EventBusArn", name: "EventBusArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[a-z0-9]+)*:events:[a-z][a-z0-9]*(-[a-z0-9]+)*:([0-9]{12}):event-busv2\\/[A-Za-z0-9][\\.\\-_A-Za-z0-9]{0,255}\\/[a-z0-9]{25}$"})
    EventBusName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#EventBusName", name: "EventBusName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9][\\.\\-_A-Za-z0-9]*$"})
    EventBusSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#EventBusSummary", name: "EventBusSummary")
    EventBusSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eventbridgev2#EventBusSummaryList", name: "EventBusSummaryList")
    EventBusV2MetadataMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.eventbridgev2#EventBusV2MetadataMap", name: "EventBusV2MetadataMap", traits: {"smithy.api#length" => {"max" => 100}})
    EventBusV2Parameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#EventBusV2Parameters", name: "EventBusV2Parameters", traits: {"smithy.api#sensitive" => {}})
    EventBusV2SystemMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#EventBusV2SystemMetadata", name: "EventBusV2SystemMetadata")
    EventData = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.eventbridgev2#EventData", name: "EventData", traits: {"smithy.api#sensitive" => {}})
    EventDeduplicationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#EventDeduplicationId", name: "EventDeduplicationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\s\\S]*[^\\u0009-\\u000D\\u001C-\\u0020\\u1680\\u2000-\\u2006\\u2008-\\u200A\\u2028\\u2029\\u205F\\u3000][\\s\\S]*$"})
    EventDetail = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#EventDetail", name: "EventDetail", traits: {"smithy.api#sensitive" => {}})
    EventGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#EventGroupId", name: "EventGroupId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    EventId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#EventId", name: "EventId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    EventMetadataKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#EventMetadataKey", name: "EventMetadataKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[^/]+$"})
    EventMetadataMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.eventbridgev2#EventMetadataMap", name: "EventMetadataMap", traits: {"smithy.api#length" => {"max" => 100}})
    EventMetadataValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#EventMetadataValue", name: "EventMetadataValue", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    EventPattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#EventPattern", name: "EventPattern", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#sensitive" => {}})
    EventResource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#EventResource", name: "EventResource", traits: {"smithy.api#length" => {"max" => 2048}})
    EventSourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#EventSourceArn", name: "EventSourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[a-z0-9]+)*:events:[a-z][a-z0-9]*(-[a-z0-9]+)*:([0-9]{12}):event-sourcev2\\/(aws\\.service|aws\\.partner)\\/[A-Za-z0-9][\\.\\-_A-Za-z0-9]{0,255}\\/[a-z0-9]{25}$"})
    EventSourceConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.eventbridgev2#EventSourceConfiguration", name: "EventSourceConfiguration")
    EventSourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#EventSourceName", name: "EventSourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^(?!aws\\.)[A-Za-z0-9][\\.\\-_A-Za-z0-9]*$"})
    EventSourceState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eventbridgev2#EventSourceState", name: "EventSourceState")
    EventSourceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#EventSourceSummary", name: "EventSourceSummary")
    EventSourceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eventbridgev2#EventSourceSummaryList", name: "EventSourceSummaryList")
    EventSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eventbridgev2#EventSourceType", name: "EventSourceType")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#Filter", name: "Filter")
    FilterConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#FilterConfiguration", name: "FilterConfiguration")
    FilterLanguage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eventbridgev2#FilterLanguage", name: "FilterLanguage")
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eventbridgev2#FilterList", name: "FilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    FilterScope = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eventbridgev2#FilterScope", name: "FilterScope")
    GetResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#GetResourcePolicyRequest", name: "GetResourcePolicyRequest")
    GetResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#GetResourcePolicyResponse", name: "GetResourcePolicyResponse")
    HeaderKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#HeaderKey", name: "HeaderKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^([!\#$%&'*+\\-.^_`|~0-9a-zA-Z]+|\\{%[\\s\\S]+?%\\})$"})
    HeaderParametersMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.eventbridgev2#HeaderParametersMap", name: "HeaderParametersMap", traits: {"smithy.api#length" => {"max" => 50}})
    HeaderValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#HeaderValue", name: "HeaderValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^([ \\t]*[\\x20-\\x7E]+([ \\t]+[\\x20-\\x7E]+)*[ \\t]*|\\{%[\\s\\S]+?%\\})$"})
    HttpParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#HttpParameters", name: "HttpParameters", traits: {"smithy.api#sensitive" => {}})
    IdempotentParameterMismatchException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#IdempotentParameterMismatchException", name: "IdempotentParameterMismatchException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    IncludePayload = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eventbridgev2#IncludePayload", name: "IncludePayload")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.eventbridgev2#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    InternalException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#InternalException", name: "InternalException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    InvalidInputException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#InvalidInputException", name: "InvalidInputException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#InvalidStateException", name: "InvalidStateException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    InvocationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eventbridgev2#InvocationType", name: "InvocationType")
    InvokeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#InvokeConfiguration", name: "InvokeConfiguration")
    JsonataConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#JsonataConfiguration", name: "JsonataConfiguration", traits: {"smithy.api#sensitive" => {}})
    KinesisParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#KinesisParameters", name: "KinesisParameters", traits: {"smithy.api#sensitive" => {}})
    KmsKeyIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#KmsKeyIdentifier", name: "KmsKeyIdentifier", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-/:]*$"})
    LambdaParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#LambdaParameters", name: "LambdaParameters", traits: {"smithy.api#sensitive" => {}})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListEventBusesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#ListEventBusesRequest", name: "ListEventBusesRequest")
    ListEventBusesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#ListEventBusesResponse", name: "ListEventBusesResponse")
    ListEventSourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#ListEventSourcesRequest", name: "ListEventSourcesRequest")
    ListEventSourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#ListEventSourcesResponse", name: "ListEventSourcesResponse")
    ListResourcePoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#ListResourcePoliciesRequest", name: "ListResourcePoliciesRequest")
    ListResourcePoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#ListResourcePoliciesResponse", name: "ListResourcePoliciesResponse")
    ListSubscribersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#ListSubscribersRequest", name: "ListSubscribersRequest")
    ListSubscribersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#ListSubscribersResponse", name: "ListSubscribersResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    LogConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#LogConfiguration", name: "LogConfiguration")
    LogLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eventbridgev2#LogLevel", name: "LogLevel")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.eventbridgev2#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MessageAttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#MessageAttributeName", name: "MessageAttributeName", traits: {"smithy.api#length" => {"max" => 8192}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    NullableInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.eventbridgev2#NullableInteger", name: "NullableInteger")
    OnFailureConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#OnFailureConfiguration", name: "OnFailureConfiguration")
    OrderingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eventbridgev2#OrderingType", name: "OrderingType")
    PartnerEventSourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#PartnerEventSourceArn", name: "PartnerEventSourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:aws(-[a-z0-9]+)*:events:[a-z][a-z0-9]*(-[a-z0-9]+)*:([0-9]{12})?:event-source\\/aws\\.partner(\\/[\\.\\-_A-Za-z0-9]+){2,}$"})
    PartnerEventsSourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#PartnerEventsSourceConfiguration", name: "PartnerEventsSourceConfiguration")
    PathParameter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#PathParameter", name: "PathParameter", traits: {"smithy.api#pattern" => "^(?!\\s*$).+$"})
    PathParameterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eventbridgev2#PathParameterList", name: "PathParameterList", traits: {"smithy.api#length" => {"max" => 50}})
    PointInTimeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#PointInTimeConfiguration", name: "PointInTimeConfiguration")
    PointType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eventbridgev2#PointType", name: "PointType")
    PolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#PolicyDocument", name: "PolicyDocument", traits: {"smithy.api#length" => {"min" => 1, "max" => 389120}})
    PolicyLengthExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#PolicyLengthExceededException", name: "PolicyLengthExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PolicyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#PolicyName", name: "PolicyName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9_]+$"})
    PolicyRevisionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#PolicyRevisionId", name: "PolicyRevisionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    PublicPolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#PublicPolicyException", name: "PublicPolicyException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PutEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#PutEventsRequest", name: "PutEventsRequest")
    PutEventsRequestEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#PutEventsRequestEntry", name: "PutEventsRequestEntry")
    PutEventsRequestEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eventbridgev2#PutEventsRequestEntryList", name: "PutEventsRequestEntryList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    PutEventsResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eventbridgev2#PutEventsResourceList", name: "PutEventsResourceList", traits: {"smithy.api#length" => {"max" => 100}})
    PutEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#PutEventsResponse", name: "PutEventsResponse")
    PutEventsResultEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#PutEventsResultEntry", name: "PutEventsResultEntry")
    PutEventsResultEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eventbridgev2#PutEventsResultEntryList", name: "PutEventsResultEntryList")
    PutEventsSystemMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#PutEventsSystemMetadata", name: "PutEventsSystemMetadata")
    PutRawEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#PutRawEventsRequest", name: "PutRawEventsRequest")
    PutRawEventsRequestEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#PutRawEventsRequestEntry", name: "PutRawEventsRequestEntry")
    PutRawEventsRequestEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eventbridgev2#PutRawEventsRequestEntryList", name: "PutRawEventsRequestEntryList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    PutRawEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#PutRawEventsResponse", name: "PutRawEventsResponse")
    PutRawEventsResultEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#PutRawEventsResultEntry", name: "PutRawEventsResultEntry")
    PutRawEventsResultEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eventbridgev2#PutRawEventsResultEntryList", name: "PutRawEventsResultEntryList")
    PutRawEventsSystemMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#PutRawEventsSystemMetadata", name: "PutRawEventsSystemMetadata")
    PutResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#PutResourcePolicyRequest", name: "PutResourcePolicyRequest")
    PutResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#PutResourcePolicyResponse", name: "PutResourcePolicyResponse")
    QueryStringKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#QueryStringKey", name: "QueryStringKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[^\\x00-\\x1F\\x7F]+$"})
    QueryStringParametersMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.eventbridgev2#QueryStringParametersMap", name: "QueryStringParametersMap", traits: {"smithy.api#length" => {"max" => 50}})
    QueryStringValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#QueryStringValue", name: "QueryStringValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[^\\x00-\\x09\\x0B\\x0C\\x0E-\\x1F\\x7F]+$"})
    ResourceAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#ResourceAlreadyExistsException", name: "ResourceAlreadyExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePolicySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#ResourcePolicySummary", name: "ResourcePolicySummary")
    ResourcePolicySummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eventbridgev2#ResourcePolicySummaryList", name: "ResourcePolicySummaryList")
    ResumePosition = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eventbridgev2#ResumePosition", name: "ResumePosition")
    RetentionPeriodInDays = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.eventbridgev2#RetentionPeriodInDays", name: "RetentionPeriodInDays", traits: {"smithy.api#range" => {"min" => 1, "max" => 365}})
    RetryPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#RetryPolicy", name: "RetryPolicy")
    RetryStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eventbridgev2#RetryStrategy", name: "RetryStrategy")
    RevocableResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#RevocableResourceArn", name: "RevocableResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[a-z0-9]+)*:events:[a-z][a-z0-9]*(-[a-z0-9]+)*:([0-9]{12}):(subscriber|event-sourcev2\\/(aws\\.service|aws\\.partner))\\/[A-Za-z0-9][\\.\\-_A-Za-z0-9]{0,255}\\/[a-z0-9]{25}$"})
    RevokeResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#RevokeResourceRequest", name: "RevokeResourceRequest")
    RevokeResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#RevokeResourceResponse", name: "RevokeResourceResponse")
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:aws(-[a-z0-9]+)*:iam::\\d{12}:role\\/[\\w+=,.@/-]+$"})
    SchemaRegistryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#SchemaRegistryConfiguration", name: "SchemaRegistryConfiguration")
    SchemaRegistryUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#SchemaRegistryUnavailableException", name: "SchemaRegistryUnavailableException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#retryable" => {}})
    SchemaRegistryUri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#SchemaRegistryUri", name: "SchemaRegistryUri", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:[a-z0-9-]+:glue:[a-z0-9-]+:[0-9]{12}:registry/[-_$#A-Za-z0-9]{1,255}|https://((([A-Za-z0-9]+-)*[A-Za-z0-9]+)\\.)*([A-Za-z]([A-Za-z0-9-]*[A-Za-z0-9])?)(:[0-9]{1,5})?)(?![\\s\\S])"})
    SequenceNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#SequenceNumber", name: "SequenceNumber", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    SnsMessageAttributeMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.eventbridgev2#SnsMessageAttributeMap", name: "SnsMessageAttributeMap", traits: {"smithy.api#length" => {"max" => 50}})
    SnsMessageAttributeValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#SnsMessageAttributeValue", name: "SnsMessageAttributeValue")
    SnsParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#SnsParameters", name: "SnsParameters", traits: {"smithy.api#sensitive" => {}})
    Source = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#Source", name: "Source", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    SqsMessageAttributeMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.eventbridgev2#SqsMessageAttributeMap", name: "SqsMessageAttributeMap", traits: {"smithy.api#length" => {"max" => 50}})
    SqsMessageAttributeValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#SqsMessageAttributeValue", name: "SqsMessageAttributeValue")
    SqsParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#SqsParameters", name: "SqsParameters", traits: {"smithy.api#sensitive" => {}})
    StartingPosition = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eventbridgev2#StartingPosition", name: "StartingPosition")
    StateReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#StateReason", name: "StateReason", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    StepFunctionsParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#StepFunctionsParameters", name: "StepFunctionsParameters", traits: {"smithy.api#sensitive" => {}})
    StorageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#StorageConfiguration", name: "StorageConfiguration")
    StorageConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#StorageConfigurationOutput", name: "StorageConfigurationOutput")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#String", name: "String")
    SubscriberArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#SubscriberArn", name: "SubscriberArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[a-z0-9]+)*:events:[a-z][a-z0-9]*(-[a-z0-9]+)*:([0-9]{12}):subscriber\\/[A-Za-z0-9][\\.\\-_A-Za-z0-9]{0,255}\\/[a-z0-9]{25}$"})
    SubscriberName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#SubscriberName", name: "SubscriberName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9][\\.\\-_A-Za-z0-9]*$"})
    SubscriberState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eventbridgev2#SubscriberState", name: "SubscriberState")
    SubscriberSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#SubscriberSummary", name: "SubscriberSummary")
    SubscriberSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eventbridgev2#SubscriberSummaryList", name: "SubscriberSummaryList")
    SuccessCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eventbridgev2#SuccessCode", name: "SuccessCode")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^\\S([\\s\\S]*\\S)?(?![\\s\\S])"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eventbridgev2#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.eventbridgev2#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^(\\S([\\s\\S]*\\S)?)?(?![\\s\\S])"})
    TaggableResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#TaggableResourceArn", name: "TaggableResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[a-z0-9]+)*:events:[a-z][a-z0-9]*(-[a-z0-9]+)*:([0-9]{12}):(event-busv2|subscriber|event-sourcev2\\/(aws\\.service|aws\\.partner))\\/[A-Za-z0-9][\\.\\-_A-Za-z0-9]{0,255}\\/[a-z0-9]{25}$"})
    TargetResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#TargetResourceArn", name: "TargetResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:aws(-[a-z0-9]+)*:[^\\s]+(?![\\s\\S])"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.eventbridgev2#Timestamp", name: "Timestamp")
    Transformer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#Transformer", name: "Transformer")
    TransformerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eventbridgev2#TransformerType", name: "TransformerType")
    UniversalTargetInput = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eventbridgev2#UniversalTargetInput", name: "UniversalTargetInput", traits: {"smithy.api#length" => {"min" => 1, "max" => 262144}})
    UniversalTargetParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#UniversalTargetParameters", name: "UniversalTargetParameters", traits: {"smithy.api#sensitive" => {}})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateEventBusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#UpdateEventBusRequest", name: "UpdateEventBusRequest")
    UpdateEventBusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#UpdateEventBusResponse", name: "UpdateEventBusResponse")
    UpdateEventSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#UpdateEventSourceRequest", name: "UpdateEventSourceRequest")
    UpdateEventSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#UpdateEventSourceResponse", name: "UpdateEventSourceResponse")
    UpdateInvokeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#UpdateInvokeConfiguration", name: "UpdateInvokeConfiguration")
    UpdateSubscriberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#UpdateSubscriberRequest", name: "UpdateSubscriberRequest")
    UpdateSubscriberResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eventbridgev2#UpdateSubscriberResponse", name: "UpdateSubscriberResponse")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AwsServiceEventsSourceConfiguration.add_member(:aws_service, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsServiceSource, name: "AwsService", traits: {"smithy.api#required" => {}}))
    AwsServiceEventsSourceConfiguration.add_member(:pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: EventPattern, name: "Pattern", traits: {"smithy.api#length" => {"min" => 0, "max" => 3753}}))
    AwsServiceEventsSourceConfiguration.add_member(:on_failure_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OnFailureConfiguration, name: "OnFailureConfiguration"))
    AwsServiceEventsSourceConfiguration.type = Types::AwsServiceEventsSourceConfiguration
    BatchConfiguration.add_member(:max_batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "MaxBatchSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 500}}))
    BatchConfiguration.add_member(:max_batch_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "MaxBatchWindowInSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 300}}))
    BatchConfiguration.type = Types::BatchConfiguration
    BusState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    BusState.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    BusState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    BusState.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    BusState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    BusState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    BusState.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ConflictException.type = Types::ConflictException
    ConfluentPublicRegistryConfiguration.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionArn, name: "ConnectionArn", traits: {"smithy.api#required" => {}}))
    ConfluentPublicRegistryConfiguration.type = Types::ConfluentPublicRegistryConfiguration
    CreateEventBusRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateEventBusRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateEventBusRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration"))
    CreateEventBusRequest.add_member(:storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConfiguration, name: "StorageConfiguration"))
    CreateEventBusRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateEventBusRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateEventBusRequest.type = Types::CreateEventBusRequest
    CreateEventBusResponse.add_member(:event_bus_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusArn, name: "EventBusArn"))
    CreateEventBusResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusName, name: "Name"))
    CreateEventBusResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateEventBusResponse.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration"))
    CreateEventBusResponse.add_member(:storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConfigurationOutput, name: "StorageConfiguration"))
    CreateEventBusResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: BusState, name: "State"))
    CreateEventBusResponse.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReason, name: "StateReason"))
    CreateEventBusResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    CreateEventBusResponse.type = Types::CreateEventBusResponse
    CreateEventSourceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateEventSourceRequest.add_member(:event_bus_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusArn, name: "EventBusArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "EventBusArn"}}))
    CreateEventSourceRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceConfiguration, name: "Configuration", traits: {"smithy.api#required" => {}}))
    CreateEventSourceRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateEventSourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateEventSourceRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateEventSourceRequest.type = Types::CreateEventSourceRequest
    CreateEventSourceResponse.add_member(:event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceArn, name: "EventSourceArn"))
    CreateEventSourceResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceName, name: "Name"))
    CreateEventSourceResponse.add_member(:event_bus_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusArn, name: "EventBusArn"))
    CreateEventSourceResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceState, name: "State"))
    CreateEventSourceResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    CreateEventSourceResponse.type = Types::CreateEventSourceResponse
    CreateSubscriberRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriberName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateSubscriberRequest.add_member(:event_bus_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusArn, name: "EventBusArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "EventBusArn"}}))
    CreateSubscriberRequest.add_member(:invoke_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokeConfiguration, name: "InvokeConfiguration", traits: {"smithy.api#required" => {}}))
    CreateSubscriberRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateSubscriberRequest.add_member(:filter_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterConfiguration, name: "FilterConfiguration"))
    CreateSubscriberRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderingType, name: "Type"))
    CreateSubscriberRequest.add_member(:starting_position, ::Smithy::Schema::Shapes::MemberShape.new(target: StartingPosition, name: "StartingPosition"))
    CreateSubscriberRequest.add_member(:point_in_time_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PointInTimeConfiguration, name: "PointInTimeConfiguration"))
    CreateSubscriberRequest.add_member(:batch_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchConfiguration, name: "BatchConfiguration"))
    CreateSubscriberRequest.add_member(:transformer, ::Smithy::Schema::Shapes::MemberShape.new(target: Transformer, name: "Transformer"))
    CreateSubscriberRequest.add_member(:retry_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryPolicy, name: "RetryPolicy"))
    CreateSubscriberRequest.add_member(:on_failure_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OnFailureConfiguration, name: "OnFailureConfiguration"))
    CreateSubscriberRequest.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfiguration, name: "LogConfiguration"))
    CreateSubscriberRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriberState, name: "State"))
    CreateSubscriberRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateSubscriberRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateSubscriberRequest.type = Types::CreateSubscriberRequest
    CreateSubscriberResponse.add_member(:subscriber_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriberArn, name: "SubscriberArn"))
    CreateSubscriberResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriberName, name: "Name"))
    CreateSubscriberResponse.add_member(:event_bus_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusArn, name: "EventBusArn"))
    CreateSubscriberResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderingType, name: "Type"))
    CreateSubscriberResponse.add_member(:starting_position, ::Smithy::Schema::Shapes::MemberShape.new(target: StartingPosition, name: "StartingPosition"))
    CreateSubscriberResponse.add_member(:point_in_time_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PointInTimeConfiguration, name: "PointInTimeConfiguration"))
    CreateSubscriberResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriberState, name: "State"))
    CreateSubscriberResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    CreateSubscriberResponse.type = Types::CreateSubscriberResponse
    DeduplicationConfiguration.add_member(:deduplication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeduplicationType, name: "DeduplicationType", traits: {"smithy.api#required" => {}}))
    DeduplicationConfiguration.type = Types::DeduplicationConfiguration
    DeduplicationType.add_member(:content_based, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTENT_BASED", traits: {"smithy.api#enumValue" => "CONTENT_BASED"}))
    DeleteEventBusRequest.add_member(:event_bus_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusArn, name: "EventBusArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "EventBusArn"}}))
    DeleteEventBusRequest.type = Types::DeleteEventBusRequest
    DeleteEventBusResponse.type = Types::DeleteEventBusResponse
    DeleteEventSourceRequest.add_member(:event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceArn, name: "EventSourceArn", traits: {"smithy.api#required" => {}}))
    DeleteEventSourceRequest.type = Types::DeleteEventSourceRequest
    DeleteEventSourceResponse.type = Types::DeleteEventSourceResponse
    DeleteResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusArn, name: "ResourceArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "EventBusArn"}}))
    DeleteResourcePolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "PolicyName"))
    DeleteResourcePolicyRequest.add_member(:expected_revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevisionId, name: "ExpectedRevisionId"))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteResourcePolicyResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevisionId, name: "RevisionId"))
    DeleteResourcePolicyResponse.type = Types::DeleteResourcePolicyResponse
    DeleteSubscriberRequest.add_member(:subscriber_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriberArn, name: "SubscriberArn", traits: {"smithy.api#required" => {}}))
    DeleteSubscriberRequest.type = Types::DeleteSubscriberRequest
    DeleteSubscriberResponse.type = Types::DeleteSubscriberResponse
    DescribeEventBusRequest.add_member(:event_bus_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusArn, name: "EventBusArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "EventBusArn"}}))
    DescribeEventBusRequest.type = Types::DescribeEventBusRequest
    DescribeEventBusResponse.add_member(:event_bus_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusArn, name: "EventBusArn"))
    DescribeEventBusResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusName, name: "Name"))
    DescribeEventBusResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    DescribeEventBusResponse.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration"))
    DescribeEventBusResponse.add_member(:storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConfigurationOutput, name: "StorageConfiguration"))
    DescribeEventBusResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DescribeEventBusResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    DescribeEventBusResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: BusState, name: "State"))
    DescribeEventBusResponse.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReason, name: "StateReason"))
    DescribeEventBusResponse.type = Types::DescribeEventBusResponse
    DescribeEventSourceRequest.add_member(:event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceArn, name: "EventSourceArn", traits: {"smithy.api#required" => {}}))
    DescribeEventSourceRequest.type = Types::DescribeEventSourceRequest
    DescribeEventSourceResponse.add_member(:event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceArn, name: "EventSourceArn"))
    DescribeEventSourceResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceName, name: "Name"))
    DescribeEventSourceResponse.add_member(:event_bus_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusArn, name: "EventBusArn"))
    DescribeEventSourceResponse.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceConfiguration, name: "Configuration"))
    DescribeEventSourceResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    DescribeEventSourceResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceState, name: "State"))
    DescribeEventSourceResponse.add_member(:revoked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Revoked"))
    DescribeEventSourceResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DescribeEventSourceResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    DescribeEventSourceResponse.type = Types::DescribeEventSourceResponse
    DescribeSubscriberRequest.add_member(:subscriber_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriberArn, name: "SubscriberArn", traits: {"smithy.api#required" => {}}))
    DescribeSubscriberRequest.type = Types::DescribeSubscriberRequest
    DescribeSubscriberResponse.add_member(:subscriber_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriberArn, name: "SubscriberArn"))
    DescribeSubscriberResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriberName, name: "Name"))
    DescribeSubscriberResponse.add_member(:event_bus_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusArn, name: "EventBusArn"))
    DescribeSubscriberResponse.add_member(:invoke_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokeConfiguration, name: "InvokeConfiguration"))
    DescribeSubscriberResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    DescribeSubscriberResponse.add_member(:filter_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterConfiguration, name: "FilterConfiguration"))
    DescribeSubscriberResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderingType, name: "Type"))
    DescribeSubscriberResponse.add_member(:starting_position, ::Smithy::Schema::Shapes::MemberShape.new(target: StartingPosition, name: "StartingPosition"))
    DescribeSubscriberResponse.add_member(:point_in_time_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PointInTimeConfiguration, name: "PointInTimeConfiguration"))
    DescribeSubscriberResponse.add_member(:batch_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchConfiguration, name: "BatchConfiguration"))
    DescribeSubscriberResponse.add_member(:transformer, ::Smithy::Schema::Shapes::MemberShape.new(target: Transformer, name: "Transformer"))
    DescribeSubscriberResponse.add_member(:retry_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryPolicy, name: "RetryPolicy"))
    DescribeSubscriberResponse.add_member(:on_failure_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OnFailureConfiguration, name: "OnFailureConfiguration"))
    DescribeSubscriberResponse.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfiguration, name: "LogConfiguration"))
    DescribeSubscriberResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriberState, name: "State"))
    DescribeSubscriberResponse.add_member(:revoked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Revoked"))
    DescribeSubscriberResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DescribeSubscriberResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    DescribeSubscriberResponse.type = Types::DescribeSubscriberResponse
    EncryptionConfiguration.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyIdentifier, name: "KmsKeyIdentifier"))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    EventBusSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusName, name: "Name"))
    EventBusSummary.add_member(:event_bus_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusArn, name: "EventBusArn"))
    EventBusSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    EventBusSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    EventBusSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    EventBusSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: BusState, name: "State"))
    EventBusSummary.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReason, name: "StateReason"))
    EventBusSummary.add_member(:event_bus_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "EventBusAccountId"))
    EventBusSummary.type = Types::EventBusSummary
    EventBusSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusSummary, name: "member"))
    EventBusV2MetadataMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    EventBusV2MetadataMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    EventBusV2Parameters.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusV2MetadataMap, name: "Metadata"))
    EventBusV2Parameters.add_member(:system_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusV2SystemMetadata, name: "SystemMetadata"))
    EventBusV2Parameters.add_member(:deduplication_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeduplicationConfiguration, name: "DeduplicationConfiguration"))
    EventBusV2Parameters.type = Types::EventBusV2Parameters
    EventBusV2SystemMetadata.add_member(:event_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EventGroupId"))
    EventBusV2SystemMetadata.add_member(:deduplication_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeduplicationId"))
    EventBusV2SystemMetadata.type = Types::EventBusV2SystemMetadata
    EventMetadataMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: EventMetadataKey, name: "key"))
    EventMetadataMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: EventMetadataValue, name: "value"))
    EventSourceConfiguration.add_member(:aws_service_events_configuration, Types::EventSourceConfiguration::AwsServiceEventsConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsServiceEventsSourceConfiguration, name: "AwsServiceEventsConfiguration"))
    EventSourceConfiguration.add_member(:partner_events_configuration, Types::EventSourceConfiguration::PartnerEventsConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerEventsSourceConfiguration, name: "PartnerEventsConfiguration"))
    EventSourceConfiguration.add_member(:unknown, Types::EventSourceConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    EventSourceConfiguration.type = Types::EventSourceConfiguration
    EventSourceState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    EventSourceState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    EventSourceState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    EventSourceState.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    EventSourceState.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    EventSourceState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    EventSourceState.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    EventSourceSummary.add_member(:event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceArn, name: "EventSourceArn"))
    EventSourceSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceName, name: "Name"))
    EventSourceSummary.add_member(:event_bus_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusArn, name: "EventBusArn"))
    EventSourceSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceType, name: "Type"))
    EventSourceSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceState, name: "State"))
    EventSourceSummary.add_member(:revoked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Revoked"))
    EventSourceSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    EventSourceSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    EventSourceSummary.add_member(:event_source_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "EventSourceAccountId"))
    EventSourceSummary.type = Types::EventSourceSummary
    EventSourceSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceSummary, name: "member"))
    EventSourceType.add_member(:aws_service_events, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SERVICE_EVENTS", traits: {"smithy.api#enumValue" => "AWS_SERVICE_EVENTS"}))
    EventSourceType.add_member(:partner_events, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTNER_EVENTS", traits: {"smithy.api#enumValue" => "PARTNER_EVENTS"}))
    Filter.add_member(:pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: EventPattern, name: "Pattern", traits: {"smithy.api#required" => {}}))
    Filter.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterScope, name: "Scope", traits: {"smithy.api#required" => {}}))
    Filter.type = Types::Filter
    FilterConfiguration.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterLanguage, name: "Language"))
    FilterConfiguration.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    FilterConfiguration.type = Types::FilterConfiguration
    FilterLanguage.add_member(:event_bridge_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EVENT_BRIDGE_PATTERN", traits: {"smithy.api#enumValue" => "EVENT_BRIDGE_PATTERN"}))
    FilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member"))
    FilterScope.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA", traits: {"smithy.api#enumValue" => "DATA"}))
    FilterScope.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "METADATA", traits: {"smithy.api#enumValue" => "METADATA"}))
    FilterScope.add_member(:system_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYSTEM_METADATA", traits: {"smithy.api#enumValue" => "SYSTEM_METADATA"}))
    GetResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusArn, name: "ResourceArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "EventBusArn"}}))
    GetResourcePolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "PolicyName"))
    GetResourcePolicyRequest.type = Types::GetResourcePolicyRequest
    GetResourcePolicyResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    GetResourcePolicyResponse.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "PolicyDocument", traits: {"smithy.api#required" => {}}))
    GetResourcePolicyResponse.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "PolicyName", traits: {"smithy.api#required" => {}}))
    GetResourcePolicyResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevisionId, name: "RevisionId", traits: {"smithy.api#required" => {}}))
    GetResourcePolicyResponse.type = Types::GetResourcePolicyResponse
    HeaderParametersMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderKey, name: "key"))
    HeaderParametersMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderValue, name: "value"))
    HttpParameters.add_member(:path_parameter_values, ::Smithy::Schema::Shapes::MemberShape.new(target: PathParameterList, name: "PathParameterValues"))
    HttpParameters.add_member(:header_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderParametersMap, name: "HeaderParameters"))
    HttpParameters.add_member(:query_string_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStringParametersMap, name: "QueryStringParameters"))
    HttpParameters.add_member(:invocation_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InvocationTimeoutSeconds"))
    HttpParameters.type = Types::HttpParameters
    IdempotentParameterMismatchException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    IdempotentParameterMismatchException.type = Types::IdempotentParameterMismatchException
    IncludePayload.add_member(:full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL", traits: {"smithy.api#enumValue" => "FULL"}))
    IncludePayload.add_member(:on_error_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_ERROR_ONLY", traits: {"smithy.api#enumValue" => "ON_ERROR_ONLY"}))
    InternalException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    InternalException.type = Types::InternalException
    InvalidInputException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    InvalidInputException.type = Types::InvalidInputException
    InvalidStateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    InvalidStateException.type = Types::InvalidStateException
    InvocationType.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EVENT", traits: {"smithy.api#enumValue" => "EVENT"}))
    InvocationType.add_member(:request_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUEST_RESPONSE", traits: {"smithy.api#enumValue" => "REQUEST_RESPONSE"}))
    InvokeConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    InvokeConfiguration.add_member(:lambda_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaParameters, name: "LambdaParameters"))
    InvokeConfiguration.add_member(:sqs_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SqsParameters, name: "SqsParameters"))
    InvokeConfiguration.add_member(:sns_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsParameters, name: "SnsParameters"))
    InvokeConfiguration.add_member(:kinesis_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisParameters, name: "KinesisParameters"))
    InvokeConfiguration.add_member(:step_functions_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: StepFunctionsParameters, name: "StepFunctionsParameters"))
    InvokeConfiguration.add_member(:http_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpParameters, name: "HttpParameters"))
    InvokeConfiguration.add_member(:universal_target_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: UniversalTargetParameters, name: "UniversalTargetParameters"))
    InvokeConfiguration.add_member(:event_bus_v2_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusV2Parameters, name: "EventBusV2Parameters"))
    InvokeConfiguration.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceArn, name: "TargetArn", traits: {"smithy.api#required" => {}}))
    InvokeConfiguration.type = Types::InvokeConfiguration
    JsonataConfiguration.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Expression", traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}, "smithy.api#pattern" => "^\\{%[\\s\\S]+?%\\}(?![\\s\\S])", "smithy.api#required" => {}}))
    JsonataConfiguration.type = Types::JsonataConfiguration
    KinesisParameters.add_member(:partition_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PartitionKey", traits: {"smithy.api#length" => {"max" => 8192}}))
    KinesisParameters.add_member(:explicit_hash_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExplicitHashKey", traits: {"smithy.api#length" => {"max" => 8192}}))
    KinesisParameters.type = Types::KinesisParameters
    LambdaParameters.add_member(:invocation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationType, name: "InvocationType"))
    LambdaParameters.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Qualifier", traits: {"smithy.api#length" => {"max" => 8192}}))
    LambdaParameters.add_member(:durable_execution_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DurableExecutionName", traits: {"smithy.api#length" => {"max" => 8192}}))
    LambdaParameters.add_member(:tenant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TenantId", traits: {"smithy.api#length" => {"max" => 8192}}))
    LambdaParameters.add_member(:invocation_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InvocationTimeoutSeconds", traits: {"smithy.api#length" => {"max" => 8192}}))
    LambdaParameters.type = Types::LambdaParameters
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    LimitExceededException.type = Types::LimitExceededException
    ListEventBusesRequest.add_member(:name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusName, name: "NamePrefix"))
    ListEventBusesRequest.add_member(:event_bus_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "EventBusAccountId"))
    ListEventBusesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEventBusesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 100}))
    ListEventBusesRequest.type = Types::ListEventBusesRequest
    ListEventBusesResponse.add_member(:event_buses, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusSummaryList, name: "EventBuses"))
    ListEventBusesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEventBusesResponse.type = Types::ListEventBusesResponse
    ListEventSourcesRequest.add_member(:event_bus_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusArn, name: "EventBusArn", traits: {"smithy.rules#contextParam" => {"name" => "EventBusArn"}}))
    ListEventSourcesRequest.add_member(:name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceName, name: "NamePrefix"))
    ListEventSourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEventSourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 100}))
    ListEventSourcesRequest.type = Types::ListEventSourcesRequest
    ListEventSourcesResponse.add_member(:event_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceSummaryList, name: "EventSources"))
    ListEventSourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEventSourcesResponse.type = Types::ListEventSourcesResponse
    ListResourcePoliciesRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusArn, name: "ResourceArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "EventBusArn"}}))
    ListResourcePoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResourcePoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 100}))
    ListResourcePoliciesRequest.type = Types::ListResourcePoliciesRequest
    ListResourcePoliciesResponse.add_member(:policy_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicySummaryList, name: "PolicySummaries"))
    ListResourcePoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResourcePoliciesResponse.type = Types::ListResourcePoliciesResponse
    ListSubscribersRequest.add_member(:event_bus_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusArn, name: "EventBusArn", traits: {"smithy.rules#contextParam" => {"name" => "EventBusArn"}}))
    ListSubscribersRequest.add_member(:name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriberName, name: "NamePrefix"))
    ListSubscribersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListSubscribersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 100}))
    ListSubscribersRequest.type = Types::ListSubscribersRequest
    ListSubscribersResponse.add_member(:subscribers, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriberSummaryList, name: "Subscribers"))
    ListSubscribersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListSubscribersResponse.type = Types::ListSubscribersResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LogConfiguration.add_member(:level, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, name: "Level"))
    LogConfiguration.add_member(:include_payload, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludePayload, name: "IncludePayload"))
    LogConfiguration.type = Types::LogConfiguration
    LogLevel.add_member(:off, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OFF", traits: {"smithy.api#enumValue" => "OFF"}))
    LogLevel.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    LogLevel.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFO", traits: {"smithy.api#enumValue" => "INFO"}))
    OnFailureConfiguration.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadLetterQueueArn, name: "Arn"))
    OnFailureConfiguration.type = Types::OnFailureConfiguration
    OrderingType.add_member(:fifo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIFO", traits: {"smithy.api#enumValue" => "FIFO"}))
    OrderingType.add_member(:unordered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNORDERED", traits: {"smithy.api#enumValue" => "UNORDERED"}))
    PartnerEventsSourceConfiguration.add_member(:partner_event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerEventSourceArn, name: "PartnerEventSourceArn", traits: {"smithy.api#required" => {}}))
    PartnerEventsSourceConfiguration.add_member(:pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: EventPattern, name: "Pattern", traits: {"smithy.api#length" => {"min" => 0, "max" => 3753}}))
    PartnerEventsSourceConfiguration.add_member(:partner_bus_kms_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyIdentifier, name: "PartnerBusKmsKeyIdentifier"))
    PartnerEventsSourceConfiguration.add_member(:on_failure_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OnFailureConfiguration, name: "OnFailureConfiguration"))
    PartnerEventsSourceConfiguration.type = Types::PartnerEventsSourceConfiguration
    PathParameterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PathParameter, name: "member"))
    PointInTimeConfiguration.add_member(:point_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PointType, name: "PointType", traits: {"smithy.api#required" => {}}))
    PointInTimeConfiguration.add_member(:starting_point, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartingPoint"))
    PointInTimeConfiguration.add_member(:end_point, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndPoint"))
    PointInTimeConfiguration.type = Types::PointInTimeConfiguration
    PointType.add_member(:horizon, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HORIZON", traits: {"smithy.api#enumValue" => "HORIZON"}))
    PointType.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMESTAMP", traits: {"smithy.api#enumValue" => "TIMESTAMP"}))
    PolicyLengthExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    PolicyLengthExceededException.type = Types::PolicyLengthExceededException
    PublicPolicyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    PublicPolicyException.type = Types::PublicPolicyException
    PutEventsRequest.add_member(:event_bus_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusArn, name: "EventBusArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "EventBusArn"}}))
    PutEventsRequest.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: PutEventsRequestEntryList, name: "Entries", traits: {"smithy.api#required" => {}}))
    PutEventsRequest.add_member(:deduplication_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeduplicationConfiguration, name: "DeduplicationConfiguration"))
    PutEventsRequest.type = Types::PutEventsRequest
    PutEventsRequestEntry.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, name: "Source", traits: {"smithy.api#required" => {}}))
    PutEventsRequestEntry.add_member(:detail_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DetailType, name: "DetailType", traits: {"smithy.api#required" => {}}))
    PutEventsRequestEntry.add_member(:detail, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDetail, name: "Detail"))
    PutEventsRequestEntry.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: PutEventsResourceList, name: "Resources"))
    PutEventsRequestEntry.add_member(:time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Time"))
    PutEventsRequestEntry.add_member(:system_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: PutEventsSystemMetadata, name: "SystemMetadata"))
    PutEventsRequestEntry.type = Types::PutEventsRequestEntry
    PutEventsRequestEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PutEventsRequestEntry, name: "member"))
    PutEventsResourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventResource, name: "member"))
    PutEventsResponse.add_member(:failed_entry_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "FailedEntryCount", traits: {"smithy.api#default" => 0}))
    PutEventsResponse.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: PutEventsResultEntryList, name: "Entries"))
    PutEventsResponse.type = Types::PutEventsResponse
    PutEventsResultEntry.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "EventId"))
    PutEventsResultEntry.add_member(:sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceNumber, name: "SequenceNumber"))
    PutEventsResultEntry.add_member(:success_code, ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessCode, name: "SuccessCode"))
    PutEventsResultEntry.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    PutEventsResultEntry.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    PutEventsResultEntry.type = Types::PutEventsResultEntry
    PutEventsResultEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PutEventsResultEntry, name: "member"))
    PutEventsSystemMetadata.add_member(:event_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventGroupId, name: "EventGroupId"))
    PutEventsSystemMetadata.add_member(:deduplication_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDeduplicationId, name: "DeduplicationId"))
    PutEventsSystemMetadata.type = Types::PutEventsSystemMetadata
    PutRawEventsRequest.add_member(:event_bus_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusArn, name: "EventBusArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "EventBusArn"}}))
    PutRawEventsRequest.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: PutRawEventsRequestEntryList, name: "Entries", traits: {"smithy.api#required" => {}}))
    PutRawEventsRequest.add_member(:schema_registry_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaRegistryConfiguration, name: "SchemaRegistryConfiguration"))
    PutRawEventsRequest.add_member(:deduplication_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeduplicationConfiguration, name: "DeduplicationConfiguration"))
    PutRawEventsRequest.type = Types::PutRawEventsRequest
    PutRawEventsRequestEntry.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: EventData, name: "Data", traits: {"smithy.api#required" => {}}))
    PutRawEventsRequestEntry.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: EventMetadataMap, name: "Metadata"))
    PutRawEventsRequestEntry.add_member(:system_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: PutRawEventsSystemMetadata, name: "SystemMetadata", traits: {"smithy.api#required" => {}}))
    PutRawEventsRequestEntry.type = Types::PutRawEventsRequestEntry
    PutRawEventsRequestEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PutRawEventsRequestEntry, name: "member"))
    PutRawEventsResponse.add_member(:failed_entry_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "FailedEntryCount", traits: {"smithy.api#default" => 0}))
    PutRawEventsResponse.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: PutRawEventsResultEntryList, name: "Entries"))
    PutRawEventsResponse.type = Types::PutRawEventsResponse
    PutRawEventsResultEntry.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "EventId"))
    PutRawEventsResultEntry.add_member(:sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceNumber, name: "SequenceNumber"))
    PutRawEventsResultEntry.add_member(:success_code, ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessCode, name: "SuccessCode"))
    PutRawEventsResultEntry.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    PutRawEventsResultEntry.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    PutRawEventsResultEntry.type = Types::PutRawEventsResultEntry
    PutRawEventsResultEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PutRawEventsResultEntry, name: "member"))
    PutRawEventsSystemMetadata.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, name: "ContentType", traits: {"smithy.api#required" => {}}))
    PutRawEventsSystemMetadata.add_member(:deduplication_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDeduplicationId, name: "DeduplicationId"))
    PutRawEventsSystemMetadata.add_member(:event_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventGroupId, name: "EventGroupId"))
    PutRawEventsSystemMetadata.type = Types::PutRawEventsSystemMetadata
    PutResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusArn, name: "ResourceArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "EventBusArn"}}))
    PutResourcePolicyRequest.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "PolicyDocument", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "PolicyName"))
    PutResourcePolicyRequest.add_member(:expected_revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevisionId, name: "ExpectedRevisionId"))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyResponse.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "PolicyName", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevisionId, name: "RevisionId"))
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    QueryStringParametersMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStringKey, name: "key"))
    QueryStringParametersMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStringValue, name: "value"))
    ResourceAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourcePolicySummary.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "PolicyName", traits: {"smithy.api#required" => {}}))
    ResourcePolicySummary.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevisionId, name: "RevisionId", traits: {"smithy.api#required" => {}}))
    ResourcePolicySummary.type = Types::ResourcePolicySummary
    ResourcePolicySummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicySummary, name: "member"))
    ResumePosition.add_member(:last_processed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST_PROCESSED", traits: {"smithy.api#enumValue" => "LAST_PROCESSED"}))
    ResumePosition.add_member(:latest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LATEST", traits: {"smithy.api#enumValue" => "LATEST"}))
    RetryPolicy.add_member(:max_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "MaxRetryAttempts", traits: {"smithy.api#range" => {"min" => 0, "max" => 185}}))
    RetryPolicy.add_member(:max_event_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "MaxEventAgeInSeconds", traits: {"smithy.api#range" => {"min" => 60, "max" => 86400}}))
    RetryPolicy.add_member(:retry_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryStrategy, name: "RetryStrategy"))
    RetryPolicy.type = Types::RetryPolicy
    RetryStrategy.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    RevokeResourceRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RevocableResourceArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    RevokeResourceRequest.type = Types::RevokeResourceRequest
    RevokeResourceResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RevocableResourceArn, name: "Arn"))
    RevokeResourceResponse.type = Types::RevokeResourceResponse
    SchemaRegistryConfiguration.add_member(:registry_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaRegistryUri, name: "RegistryUri", traits: {"smithy.api#required" => {}}))
    SchemaRegistryConfiguration.add_member(:confluent_public_registry_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfluentPublicRegistryConfiguration, name: "ConfluentPublicRegistryConfiguration"))
    SchemaRegistryConfiguration.type = Types::SchemaRegistryConfiguration
    SchemaRegistryUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    SchemaRegistryUnavailableException.type = Types::SchemaRegistryUnavailableException
    SnsMessageAttributeMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageAttributeName, name: "key"))
    SnsMessageAttributeMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsMessageAttributeValue, name: "value"))
    SnsMessageAttributeValue.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataType", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => "", "smithy.api#length" => {"max" => 8192}}))
    SnsMessageAttributeValue.add_member(:string_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StringValue"))
    SnsMessageAttributeValue.add_member(:binary_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BinaryValue"))
    SnsMessageAttributeValue.type = Types::SnsMessageAttributeValue
    SnsParameters.add_member(:message_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MessageGroupId", traits: {"smithy.api#length" => {"max" => 8192}}))
    SnsParameters.add_member(:message_deduplication_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MessageDeduplicationId", traits: {"smithy.api#length" => {"max" => 8192}}))
    SnsParameters.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Subject", traits: {"smithy.api#length" => {"max" => 8192}}))
    SnsParameters.add_member(:message_structure, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MessageStructure", traits: {"smithy.api#length" => {"max" => 8192}}))
    SnsParameters.add_member(:message_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsMessageAttributeMap, name: "MessageAttributes"))
    SnsParameters.type = Types::SnsParameters
    SqsMessageAttributeMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageAttributeName, name: "key"))
    SqsMessageAttributeMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SqsMessageAttributeValue, name: "value"))
    SqsMessageAttributeValue.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataType", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => "", "smithy.api#length" => {"max" => 8192}}))
    SqsMessageAttributeValue.add_member(:string_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StringValue"))
    SqsMessageAttributeValue.add_member(:binary_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BinaryValue"))
    SqsMessageAttributeValue.type = Types::SqsMessageAttributeValue
    SqsParameters.add_member(:message_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MessageGroupId", traits: {"smithy.api#length" => {"max" => 8192}}))
    SqsParameters.add_member(:message_deduplication_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MessageDeduplicationId", traits: {"smithy.api#length" => {"max" => 8192}}))
    SqsParameters.add_member(:delay_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DelaySeconds", traits: {"smithy.api#length" => {"max" => 8192}}))
    SqsParameters.add_member(:message_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: SqsMessageAttributeMap, name: "MessageAttributes"))
    SqsParameters.add_member(:message_system_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: SqsMessageAttributeMap, name: "MessageSystemAttributes"))
    SqsParameters.type = Types::SqsParameters
    StartingPosition.add_member(:latest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LATEST", traits: {"smithy.api#enumValue" => "LATEST"}))
    StartingPosition.add_member(:point_in_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POINT_IN_TIME", traits: {"smithy.api#enumValue" => "POINT_IN_TIME"}))
    StepFunctionsParameters.add_member(:invocation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationType, name: "InvocationType"))
    StepFunctionsParameters.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#length" => {"max" => 8192}}))
    StepFunctionsParameters.add_member(:trace_header, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TraceHeader", traits: {"smithy.api#length" => {"max" => 8192}}))
    StepFunctionsParameters.add_member(:invocation_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InvocationTimeoutSeconds", traits: {"smithy.api#length" => {"max" => 8192}}))
    StepFunctionsParameters.type = Types::StepFunctionsParameters
    StorageConfiguration.add_member(:retention_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriodInDays, name: "RetentionPeriodInDays"))
    StorageConfiguration.type = Types::StorageConfiguration
    StorageConfigurationOutput.add_member(:retention_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriodInDays, name: "RetentionPeriodInDays"))
    StorageConfigurationOutput.add_member(:retention_window_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "RetentionWindowStartTime", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    StorageConfigurationOutput.type = Types::StorageConfigurationOutput
    SubscriberState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    SubscriberState.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    SubscriberSummary.add_member(:subscriber_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriberArn, name: "SubscriberArn"))
    SubscriberSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriberName, name: "Name"))
    SubscriberSummary.add_member(:event_bus_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusArn, name: "EventBusArn"))
    SubscriberSummary.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceArn, name: "TargetArn"))
    SubscriberSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderingType, name: "Type"))
    SubscriberSummary.add_member(:revoked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Revoked"))
    SubscriberSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriberState, name: "State"))
    SubscriberSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    SubscriberSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    SubscriberSummary.add_member(:subscriber_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "SubscriberAccountId"))
    SubscriberSummary.type = Types::SubscriberSummary
    SubscriberSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriberSummary, name: "member"))
    SuccessCode.add_member(:published, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLISHED", traits: {"smithy.api#enumValue" => "PUBLISHED"}))
    SuccessCode.add_member(:deduplicated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEDUPLICATED", traits: {"smithy.api#enumValue" => "DEDUPLICATED"}))
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    Transformer.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformerType, name: "Type"))
    Transformer.add_member(:jsonata_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonataConfiguration, name: "JsonataConfiguration"))
    Transformer.type = Types::Transformer
    TransformerType.add_member(:raw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RAW", traits: {"smithy.api#enumValue" => "RAW"}))
    TransformerType.add_member(:with_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WITH_METADATA", traits: {"smithy.api#enumValue" => "WITH_METADATA"}))
    TransformerType.add_member(:jsonata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSONATA", traits: {"smithy.api#enumValue" => "JSONATA"}))
    UniversalTargetParameters.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: UniversalTargetInput, name: "Input", traits: {"smithy.api#required" => {}}))
    UniversalTargetParameters.add_member(:invocation_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InvocationTimeoutSeconds"))
    UniversalTargetParameters.type = Types::UniversalTargetParameters
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateEventBusRequest.add_member(:event_bus_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusArn, name: "EventBusArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "EventBusArn"}}))
    UpdateEventBusRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateEventBusRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration"))
    UpdateEventBusRequest.add_member(:storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConfiguration, name: "StorageConfiguration"))
    UpdateEventBusRequest.type = Types::UpdateEventBusRequest
    UpdateEventBusResponse.add_member(:event_bus_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusArn, name: "EventBusArn"))
    UpdateEventBusResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusName, name: "Name"))
    UpdateEventBusResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateEventBusResponse.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration"))
    UpdateEventBusResponse.add_member(:storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConfigurationOutput, name: "StorageConfiguration"))
    UpdateEventBusResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: BusState, name: "State"))
    UpdateEventBusResponse.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReason, name: "StateReason"))
    UpdateEventBusResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    UpdateEventBusResponse.type = Types::UpdateEventBusResponse
    UpdateEventSourceRequest.add_member(:event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceArn, name: "EventSourceArn", traits: {"smithy.api#required" => {}}))
    UpdateEventSourceRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceConfiguration, name: "Configuration"))
    UpdateEventSourceRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateEventSourceRequest.type = Types::UpdateEventSourceRequest
    UpdateEventSourceResponse.add_member(:event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceArn, name: "EventSourceArn"))
    UpdateEventSourceResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceName, name: "Name"))
    UpdateEventSourceResponse.add_member(:event_bus_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusArn, name: "EventBusArn"))
    UpdateEventSourceResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceState, name: "State"))
    UpdateEventSourceResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    UpdateEventSourceResponse.type = Types::UpdateEventSourceResponse
    UpdateInvokeConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    UpdateInvokeConfiguration.add_member(:lambda_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaParameters, name: "LambdaParameters"))
    UpdateInvokeConfiguration.add_member(:sqs_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SqsParameters, name: "SqsParameters"))
    UpdateInvokeConfiguration.add_member(:sns_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsParameters, name: "SnsParameters"))
    UpdateInvokeConfiguration.add_member(:kinesis_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisParameters, name: "KinesisParameters"))
    UpdateInvokeConfiguration.add_member(:step_functions_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: StepFunctionsParameters, name: "StepFunctionsParameters"))
    UpdateInvokeConfiguration.add_member(:http_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpParameters, name: "HttpParameters"))
    UpdateInvokeConfiguration.add_member(:universal_target_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: UniversalTargetParameters, name: "UniversalTargetParameters"))
    UpdateInvokeConfiguration.add_member(:event_bus_v2_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusV2Parameters, name: "EventBusV2Parameters"))
    UpdateInvokeConfiguration.type = Types::UpdateInvokeConfiguration
    UpdateSubscriberRequest.add_member(:subscriber_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriberArn, name: "SubscriberArn", traits: {"smithy.api#required" => {}}))
    UpdateSubscriberRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateSubscriberRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriberState, name: "State"))
    UpdateSubscriberRequest.add_member(:resume_position, ::Smithy::Schema::Shapes::MemberShape.new(target: ResumePosition, name: "ResumePosition"))
    UpdateSubscriberRequest.add_member(:invoke_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateInvokeConfiguration, name: "InvokeConfiguration"))
    UpdateSubscriberRequest.add_member(:filter_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterConfiguration, name: "FilterConfiguration"))
    UpdateSubscriberRequest.add_member(:batch_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchConfiguration, name: "BatchConfiguration"))
    UpdateSubscriberRequest.add_member(:transformer, ::Smithy::Schema::Shapes::MemberShape.new(target: Transformer, name: "Transformer"))
    UpdateSubscriberRequest.add_member(:retry_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryPolicy, name: "RetryPolicy"))
    UpdateSubscriberRequest.add_member(:on_failure_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OnFailureConfiguration, name: "OnFailureConfiguration"))
    UpdateSubscriberRequest.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfiguration, name: "LogConfiguration"))
    UpdateSubscriberRequest.type = Types::UpdateSubscriberRequest
    UpdateSubscriberResponse.add_member(:subscriber_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriberArn, name: "SubscriberArn"))
    UpdateSubscriberResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriberName, name: "Name"))
    UpdateSubscriberResponse.add_member(:event_bus_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBusArn, name: "EventBusArn"))
    UpdateSubscriberResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderingType, name: "Type"))
    UpdateSubscriberResponse.add_member(:starting_position, ::Smithy::Schema::Shapes::MemberShape.new(target: StartingPosition, name: "StartingPosition"))
    UpdateSubscriberResponse.add_member(:point_in_time_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PointInTimeConfiguration, name: "PointInTimeConfiguration"))
    UpdateSubscriberResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriberState, name: "State"))
    UpdateSubscriberResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    UpdateSubscriberResponse.type = Types::UpdateSubscriberResponse

    AWSEventsV2 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.eventbridgev2#AWSEventsV2"
      service.name = "AWSEventsV2"
      service.version = "2025-05-15"
      service.traits = {"aws.api#service" => {"sdkId" => "EventBridgeV2", "arnNamespace" => "events", "endpointPrefix" => "eventsv2"}, "aws.auth#sigv4" => {"name" => "events"}, "smithy.api#title" => "Amazon EventBridgeV2", "smithy.api#xmlNamespace" => {"uri" => "http://eventsv2.amazonaws.com/doc/2025-05-15"}, "smithy.protocols#rpcv2Cbor" => {}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => true, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request.", "type" => "string"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint.", "type" => "boolean"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint.", "type" => "boolean"}, "AccountId" => {"builtIn" => "AWS::Auth::AccountId", "required" => false, "documentation" => "The AWS account ID used for the request, sourced from the caller's credentials.", "type" => "string"}, "EventBusArn" => {"required" => false, "documentation" => "The bus ARN from the request, bound via @contextParam. Its account is the bus owner and takes precedence over the credentials-sourced account for cell routing (cross-account calls).", "type" => "string"}, "AccountIdEndpointMode" => {"builtIn" => "AWS::Auth::AccountIdEndpointMode", "required" => false, "documentation" => "The behavior for account ID based endpoint routing: preferred, disabled, or required.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "isSet", "argv" => [{"ref" => "AccountIdEndpointMode"}]}, {"fn" => "stringEquals", "argv" => [{"ref" => "AccountIdEndpointMode"}, "disabled"]}, {"fn" => "isSet", "argv" => [{"ref" => "EventBusArn"}]}, {"fn" => "aws.parseArn", "argv" => [{"ref" => "EventBusArn"}], "assign" => "ParsedBusArn"}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "ParsedBusArn"}, "service"]}, "events"]}, {"fn" => "isValidHostLabel", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "ParsedBusArn"}, "accountId"]}, false]}, {"fn" => "isSet", "argv" => [{"ref" => "AccountId"}]}, {"fn" => "stringEquals", "argv" => [{"ref" => "AccountIdEndpointMode"}, "required"]}, {"fn" => "isValidHostLabel", "argv" => [{"ref" => "AccountId"}, false]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{ParsedBusArn#accountId}.eventsv2-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {"metricValues" => ["O"]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://{ParsedBusArn#accountId}.eventsv2-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {"metricValues" => ["O"]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://{ParsedBusArn#accountId}.eventsv2.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {"metricValues" => ["O"]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://{ParsedBusArn#accountId}.eventsv2.{Region}.{PartitionResult#dnsSuffix}", "properties" => {"metricValues" => ["O"]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{AccountId}.eventsv2-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {"metricValues" => ["O"]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{AccountId}.eventsv2-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {"metricValues" => ["O"]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{AccountId}.eventsv2.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {"metricValues" => ["O"]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{AccountId}.eventsv2.{Region}.{PartitionResult#dnsSuffix}", "properties" => {"metricValues" => ["O"]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Credentials-sourced account ID parameter is invalid", "type" => "error"}, {"conditions" => [], "error" => "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://eventsv2-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://eventsv2-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://eventsv2.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://eventsv2.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}], "root" => 2, "nodeCount" => 35, "nodes" => "/////wAAAAH/////AAAAAAAAACIAAAADAAAAAQAAAAQF9eEAAAAAAgAAAAUAAAAbAAAAAwAAABoAAAAGAAAABAAAAAcAAAAKAAAABQAAAAgAAAAKAAAABgAAAAkAAAAKAAAABwAAABMAAAAKAAAACAAAAAsAAAAaAAAACgAAAAwF9eEPAAAACwAAAA8AAAANAAAADAAAAA4F9eEOAAAADQX14Q0F9eEJAAAADAAAABEAAAAQAAAADgX14QwF9eEHAAAADQAAABIF9eEFAAAADgX14QsF9eEFAAAACwAAABYAAAAUAAAADAAAABUF9eEKAAAADQX14QgF9eEJAAAADAAAABgAAAAXAAAADgX14QYF9eEHAAAADQAAABkF9eEFAAAADgX14QQF9eEFAAAACQX14RAAAAAbAAAACwAAAB4AAAAcAAAADAAAAB0F9eEUAAAADQX14RMF9eEJAAAADAAAACAAAAAfAAAADgX14RIF9eEHAAAADQAAACEF9eEFAAAADgX14REF9eEFAAAACwX14QEAAAAjAAAADAX14QIF9eED"}}
      service.add_operation(:create_event_bus, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridgev2#CreateEventBus"
        operation.name = "CreateEventBus"
        operation.input = CreateEventBusRequest
        operation.output = CreateEventBusResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalException
        operation.errors << InvalidInputException
        operation.errors << ThrottlingException
        operation.errors << ConcurrentModificationException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InvalidStateException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.traits = {}
      end)
      service.add_operation(:create_event_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridgev2#CreateEventSource"
        operation.name = "CreateEventSource"
        operation.input = CreateEventSourceRequest
        operation.output = CreateEventSourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalException
        operation.errors << InvalidInputException
        operation.errors << ThrottlingException
        operation.errors << ConcurrentModificationException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InvalidStateException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_subscriber, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridgev2#CreateSubscriber"
        operation.name = "CreateSubscriber"
        operation.input = CreateSubscriberRequest
        operation.output = CreateSubscriberResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalException
        operation.errors << InvalidInputException
        operation.errors << ThrottlingException
        operation.errors << ConcurrentModificationException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InvalidStateException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_event_bus, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridgev2#DeleteEventBus"
        operation.name = "DeleteEventBus"
        operation.input = DeleteEventBusRequest
        operation.output = DeleteEventBusResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalException
        operation.errors << InvalidInputException
        operation.errors << ThrottlingException
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidStateException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_event_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridgev2#DeleteEventSource"
        operation.name = "DeleteEventSource"
        operation.input = DeleteEventSourceRequest
        operation.output = DeleteEventSourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalException
        operation.errors << InvalidInputException
        operation.errors << ThrottlingException
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidStateException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridgev2#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = DeleteResourcePolicyRequest
        operation.output = DeleteResourcePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalException
        operation.errors << InvalidInputException
        operation.errors << ThrottlingException
        operation.errors << ConcurrentModificationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_subscriber, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridgev2#DeleteSubscriber"
        operation.name = "DeleteSubscriber"
        operation.input = DeleteSubscriberRequest
        operation.output = DeleteSubscriberResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalException
        operation.errors << InvalidInputException
        operation.errors << ThrottlingException
        operation.errors << ConcurrentModificationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_event_bus, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridgev2#DescribeEventBus"
        operation.name = "DescribeEventBus"
        operation.input = DescribeEventBusRequest
        operation.output = DescribeEventBusResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalException
        operation.errors << InvalidInputException
        operation.errors << ThrottlingException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_event_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridgev2#DescribeEventSource"
        operation.name = "DescribeEventSource"
        operation.input = DescribeEventSourceRequest
        operation.output = DescribeEventSourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalException
        operation.errors << InvalidInputException
        operation.errors << ThrottlingException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_subscriber, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridgev2#DescribeSubscriber"
        operation.name = "DescribeSubscriber"
        operation.input = DescribeSubscriberRequest
        operation.output = DescribeSubscriberResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalException
        operation.errors << InvalidInputException
        operation.errors << ThrottlingException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridgev2#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = GetResourcePolicyRequest
        operation.output = GetResourcePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalException
        operation.errors << InvalidInputException
        operation.errors << ThrottlingException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_event_buses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridgev2#ListEventBuses"
        operation.name = "ListEventBuses"
        operation.input = ListEventBusesRequest
        operation.output = ListEventBusesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalException
        operation.errors << InvalidInputException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListEventBusesSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListEventBuses.new
      end)
      service.add_operation(:list_event_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridgev2#ListEventSources"
        operation.name = "ListEventSources"
        operation.input = ListEventSourcesRequest
        operation.output = ListEventSourcesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalException
        operation.errors << InvalidInputException
        operation.errors << ThrottlingException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEventSources.new
      end)
      service.add_operation(:list_resource_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridgev2#ListResourcePolicies"
        operation.name = "ListResourcePolicies"
        operation.input = ListResourcePoliciesRequest
        operation.output = ListResourcePoliciesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalException
        operation.errors << InvalidInputException
        operation.errors << ThrottlingException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListResourcePolicies.new
      end)
      service.add_operation(:list_subscribers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridgev2#ListSubscribers"
        operation.name = "ListSubscribers"
        operation.input = ListSubscribersRequest
        operation.output = ListSubscribersResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalException
        operation.errors << InvalidInputException
        operation.errors << ThrottlingException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSubscribers.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridgev2#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalException
        operation.errors << InvalidInputException
        operation.errors << ThrottlingException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:put_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridgev2#PutEvents"
        operation.name = "PutEvents"
        operation.input = PutEventsRequest
        operation.output = PutEventsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalException
        operation.errors << InvalidInputException
        operation.errors << ThrottlingException
        operation.errors << InvalidStateException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:put_raw_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridgev2#PutRawEvents"
        operation.name = "PutRawEvents"
        operation.input = PutRawEventsRequest
        operation.output = PutRawEventsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalException
        operation.errors << InvalidInputException
        operation.errors << ThrottlingException
        operation.errors << InvalidStateException
        operation.errors << ResourceNotFoundException
        operation.errors << SchemaRegistryUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridgev2#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = PutResourcePolicyRequest
        operation.output = PutResourcePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalException
        operation.errors << InvalidInputException
        operation.errors << ThrottlingException
        operation.errors << ConcurrentModificationException
        operation.errors << ConflictException
        operation.errors << PolicyLengthExceededException
        operation.errors << PublicPolicyException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:revoke_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridgev2#RevokeResource"
        operation.name = "RevokeResource"
        operation.input = RevokeResourceRequest
        operation.output = RevokeResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalException
        operation.errors << InvalidInputException
        operation.errors << ThrottlingException
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidStateException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridgev2#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalException
        operation.errors << InvalidInputException
        operation.errors << ThrottlingException
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidStateException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridgev2#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalException
        operation.errors << InvalidInputException
        operation.errors << ThrottlingException
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidStateException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_event_bus, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridgev2#UpdateEventBus"
        operation.name = "UpdateEventBus"
        operation.input = UpdateEventBusRequest
        operation.output = UpdateEventBusResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalException
        operation.errors << InvalidInputException
        operation.errors << ThrottlingException
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidStateException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_event_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridgev2#UpdateEventSource"
        operation.name = "UpdateEventSource"
        operation.input = UpdateEventSourceRequest
        operation.output = UpdateEventSourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalException
        operation.errors << InvalidInputException
        operation.errors << ThrottlingException
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidStateException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_subscriber, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eventbridgev2#UpdateSubscriber"
        operation.name = "UpdateSubscriber"
        operation.input = UpdateSubscriberRequest
        operation.output = UpdateSubscriberResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalException
        operation.errors << InvalidInputException
        operation.errors << ThrottlingException
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidStateException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
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
