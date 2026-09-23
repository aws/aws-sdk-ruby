# frozen_string_literal: true

# This is generated code!

module Aws::RUM
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Alias = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#Alias", name: "Alias", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    AppMonitor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#AppMonitor", name: "AppMonitor")
    AppMonitorConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#AppMonitorConfiguration", name: "AppMonitorConfiguration")
    AppMonitorDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#AppMonitorDetails", name: "AppMonitorDetails")
    AppMonitorDomain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#AppMonitorDomain", name: "AppMonitorDomain", traits: {"smithy.api#length" => {"min" => 1, "max" => 253}, "smithy.api#pattern" => "^(localhost)$|^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$|(?=^[a-zA-Z0-9\\.\\*-]{4,253}$)(?!.*\\.-)(?!.*-\\.)(?!.*\\.\\.)(?!.*[^\\.]{64,})^(\\*\\.)?(?![-\\.\\*])[^\\*]{1,}\\.(\\*|(?!.*--)(?=.*[a-zA-Z])[^\\*]{1,}[^\\*-])$"})
    AppMonitorDomainList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rum#AppMonitorDomainList", name: "AppMonitorDomainList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    AppMonitorId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#AppMonitorId", name: "AppMonitorId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$"})
    AppMonitorName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#AppMonitorName", name: "AppMonitorName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(?!\\.)[\\.\\-_#A-Za-z0-9]+$"})
    AppMonitorSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#AppMonitorSummary", name: "AppMonitorSummary")
    AppMonitorSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rum#AppMonitorSummaryList", name: "AppMonitorSummaryList")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#Arn", name: "Arn", traits: {"smithy.api#pattern" => "arn:[^:]*:[^:]*:[^:]*:[^:]*:.*"})
    BatchCreateRumMetricDefinitionsError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#BatchCreateRumMetricDefinitionsError", name: "BatchCreateRumMetricDefinitionsError")
    BatchCreateRumMetricDefinitionsErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rum#BatchCreateRumMetricDefinitionsErrors", name: "BatchCreateRumMetricDefinitionsErrors")
    BatchCreateRumMetricDefinitionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#BatchCreateRumMetricDefinitionsInput", name: "BatchCreateRumMetricDefinitionsInput")
    BatchCreateRumMetricDefinitionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#BatchCreateRumMetricDefinitionsOutput", name: "BatchCreateRumMetricDefinitionsOutput")
    BatchDeleteRumMetricDefinitionsError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#BatchDeleteRumMetricDefinitionsError", name: "BatchDeleteRumMetricDefinitionsError")
    BatchDeleteRumMetricDefinitionsErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rum#BatchDeleteRumMetricDefinitionsErrors", name: "BatchDeleteRumMetricDefinitionsErrors")
    BatchDeleteRumMetricDefinitionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#BatchDeleteRumMetricDefinitionsInput", name: "BatchDeleteRumMetricDefinitionsInput")
    BatchDeleteRumMetricDefinitionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#BatchDeleteRumMetricDefinitionsOutput", name: "BatchDeleteRumMetricDefinitionsOutput")
    BatchGetRumMetricDefinitionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#BatchGetRumMetricDefinitionsInput", name: "BatchGetRumMetricDefinitionsInput")
    BatchGetRumMetricDefinitionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#BatchGetRumMetricDefinitionsOutput", name: "BatchGetRumMetricDefinitionsOutput")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAppMonitorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#CreateAppMonitorInput", name: "CreateAppMonitorInput")
    CreateAppMonitorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#CreateAppMonitorOutput", name: "CreateAppMonitorOutput")
    CustomEvents = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#CustomEvents", name: "CustomEvents")
    CustomEventsStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#CustomEventsStatus", name: "CustomEventsStatus", traits: {"smithy.api#enum" => [{"name" => "ENABLED", "value" => "ENABLED"}, {"name" => "DISABLED", "value" => "DISABLED"}]})
    CwLog = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#CwLog", name: "CwLog")
    DataStorage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#DataStorage", name: "DataStorage")
    DeleteAppMonitorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#DeleteAppMonitorInput", name: "DeleteAppMonitorInput")
    DeleteAppMonitorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#DeleteAppMonitorOutput", name: "DeleteAppMonitorOutput")
    DeleteResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#DeleteResourcePolicyRequest", name: "DeleteResourcePolicyRequest")
    DeleteResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#DeleteResourcePolicyResponse", name: "DeleteResourcePolicyResponse")
    DeleteRumMetricsDestinationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#DeleteRumMetricsDestinationInput", name: "DeleteRumMetricsDestinationInput")
    DeleteRumMetricsDestinationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#DeleteRumMetricsDestinationOutput", name: "DeleteRumMetricsDestinationOutput")
    DeobfuscationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#DeobfuscationConfiguration", name: "DeobfuscationConfiguration")
    DeobfuscationS3Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#DeobfuscationS3Uri", name: "DeobfuscationS3Uri", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^s3://[a-z0-9][-.a-z0-9]{1,61}(?:/[-!_*'().a-z0-9A-Z]+(?:/[-!_*'().a-z0-9A-Z]+)*)?/?$"})
    DeobfuscationStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#DeobfuscationStatus", name: "DeobfuscationStatus", traits: {"smithy.api#enum" => [{"name" => "ENABLED", "value" => "ENABLED"}, {"name" => "DISABLED", "value" => "DISABLED"}]})
    DestinationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#DestinationArn", name: "DestinationArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "arn:[^:]*:[^:]*:[^:]*:[^:]*:.*"})
    DimensionKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#DimensionKey", name: "DimensionKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 280}})
    DimensionKeysMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.rum#DimensionKeysMap", name: "DimensionKeysMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 29}})
    DimensionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#DimensionName", name: "DimensionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(?!:).*[^\\s].*"})
    EventData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#EventData", name: "EventData")
    EventDataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rum#EventDataList", name: "EventDataList")
    EventPattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#EventPattern", name: "EventPattern", traits: {"smithy.api#length" => {"min" => 0, "max" => 4000}})
    FavoritePages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rum#FavoritePages", name: "FavoritePages", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    GetAppMonitorDataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#GetAppMonitorDataInput", name: "GetAppMonitorDataInput")
    GetAppMonitorDataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#GetAppMonitorDataOutput", name: "GetAppMonitorDataOutput")
    GetAppMonitorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#GetAppMonitorInput", name: "GetAppMonitorInput")
    GetAppMonitorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#GetAppMonitorOutput", name: "GetAppMonitorOutput")
    GetResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#GetResourcePolicyRequest", name: "GetResourcePolicyRequest")
    GetResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#GetResourcePolicyResponse", name: "GetResourcePolicyResponse")
    ISOTimestampString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#ISOTimestampString", name: "ISOTimestampString", traits: {"smithy.api#length" => {"min" => 19, "max" => 19}})
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#IamRoleArn", name: "IamRoleArn", traits: {"smithy.api#pattern" => "arn:[^:]*:[^:]*:[^:]*:[^:]*:.*"})
    IdentityPoolId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#IdentityPoolId", name: "IdentityPoolId", traits: {"smithy.api#length" => {"min" => 1, "max" => 55}, "smithy.api#pattern" => "[\\w-]+:[0-9a-f-]+"})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    InvalidPolicyRevisionIdException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#InvalidPolicyRevisionIdException", name: "InvalidPolicyRevisionIdException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    JavaScriptSourceMaps = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#JavaScriptSourceMaps", name: "JavaScriptSourceMaps")
    JsonValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#JsonValue", name: "JsonValue", traits: {"smithy.api#mediaType" => "application/json"})
    ListAppMonitorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#ListAppMonitorsInput", name: "ListAppMonitorsInput")
    ListAppMonitorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#ListAppMonitorsOutput", name: "ListAppMonitorsOutput")
    ListRumMetricsDestinationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#ListRumMetricsDestinationsInput", name: "ListRumMetricsDestinationsInput")
    ListRumMetricsDestinationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#ListRumMetricsDestinationsOutput", name: "ListRumMetricsDestinationsOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    MalformedPolicyDocumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#MalformedPolicyDocumentException", name: "MalformedPolicyDocumentException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MaxQueryResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rum#MaxQueryResults", name: "MaxQueryResults", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    MaxResultsInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rum#MaxResultsInteger", name: "MaxResultsInteger", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MetricDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#MetricDefinition", name: "MetricDefinition")
    MetricDefinitionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#MetricDefinitionId", name: "MetricDefinitionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    MetricDefinitionIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rum#MetricDefinitionIds", name: "MetricDefinitionIds")
    MetricDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#MetricDefinitionRequest", name: "MetricDefinitionRequest")
    MetricDefinitions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rum#MetricDefinitions", name: "MetricDefinitions")
    MetricDefinitionsRequest = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rum#MetricDefinitionsRequest", name: "MetricDefinitionsRequest")
    MetricDestination = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#MetricDestination", name: "MetricDestination", traits: {"smithy.api#enum" => [{"name" => "CloudWatch", "value" => "CloudWatch"}, {"name" => "Evidently", "value" => "Evidently"}]})
    MetricDestinationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#MetricDestinationSummary", name: "MetricDestinationSummary")
    MetricDestinationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rum#MetricDestinationSummaryList", name: "MetricDestinationSummaryList")
    MetricName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#MetricName", name: "MetricName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    Namespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#Namespace", name: "Namespace", traits: {"smithy.api#length" => {"min" => 1, "max" => 237}, "smithy.api#pattern" => "[a-zA-Z0-9-._/#:]+$"})
    Pages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rum#Pages", name: "Pages", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    PolicyNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#PolicyNotFoundException", name: "PolicyNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    PolicyRevisionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#PolicyRevisionId", name: "PolicyRevisionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    PolicySizeLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#PolicySizeLimitExceededException", name: "PolicySizeLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PutResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#PutResourcePolicyRequest", name: "PutResourcePolicyRequest")
    PutResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#PutResourcePolicyResponse", name: "PutResourcePolicyResponse")
    PutRumEventsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#PutRumEventsInput", name: "PutRumEventsInput")
    PutRumEventsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#PutRumEventsOutput", name: "PutRumEventsOutput")
    PutRumMetricsDestinationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#PutRumMetricsDestinationInput", name: "PutRumMetricsDestinationInput")
    PutRumMetricsDestinationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#PutRumMetricsDestinationOutput", name: "PutRumMetricsDestinationOutput")
    QueryFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#QueryFilter", name: "QueryFilter")
    QueryFilterKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#QueryFilterKey", name: "QueryFilterKey")
    QueryFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#QueryFilterValue", name: "QueryFilterValue")
    QueryFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rum#QueryFilterValueList", name: "QueryFilterValueList")
    QueryFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rum#QueryFilters", name: "QueryFilters")
    QueryTimestamp = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rum#QueryTimestamp", name: "QueryTimestamp", traits: {"smithy.api#default" => 0})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RumEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#RumEvent", name: "RumEvent")
    RumEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rum#RumEventList", name: "RumEventList")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SessionSampleRate = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.rum#SessionSampleRate", name: "SessionSampleRate", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1}})
    StateEnum = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#StateEnum", name: "StateEnum", traits: {"smithy.api#enum" => [{"name" => "CREATED", "value" => "CREATED"}, {"name" => "DELETING", "value" => "DELETING"}, {"name" => "ACTIVE", "value" => "ACTIVE"}]})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rum#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.rum#TagMap", name: "TagMap")
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Telemetries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rum#Telemetries", name: "Telemetries")
    Telemetry = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#Telemetry", name: "Telemetry", traits: {"smithy.api#enum" => [{"value" => "errors", "name" => "ERRORS", "documentation" => "Includes JS error event plugin"}, {"value" => "performance", "name" => "PERFORMANCE", "documentation" => "Includes navigation, paint, resource and web vital event plugins"}, {"value" => "http", "name" => "HTTP", "documentation" => "Includes X-Ray Xhr and X-Ray Fetch plugin"}]})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    TimeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#TimeRange", name: "TimeRange")
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#Token", name: "Token")
    UnitLabel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#UnitLabel", name: "UnitLabel", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateAppMonitorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#UpdateAppMonitorInput", name: "UpdateAppMonitorInput")
    UpdateAppMonitorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#UpdateAppMonitorOutput", name: "UpdateAppMonitorOutput")
    UpdateRumMetricDefinitionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#UpdateRumMetricDefinitionInput", name: "UpdateRumMetricDefinitionInput")
    UpdateRumMetricDefinitionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#UpdateRumMetricDefinitionOutput", name: "UpdateRumMetricDefinitionOutput")
    Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#Url", name: "Url", traits: {"smithy.api#length" => {"min" => 1, "max" => 1260}, "smithy.api#pattern" => "https?:\\/\\/(www\\.)?[-a-zA-Z0-9@:%._\\+~#=]{1,256}\\.[a-zA-Z0-9()]{1,6}\\b([-a-zA-Z0-9()@:%_\\+.~#?&*//=]*)"})
    UserDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#UserDetails", name: "UserDetails")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rum#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValueKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rum#ValueKey", name: "ValueKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 280}})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AppMonitor.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorName, name: "Name"))
    AppMonitor.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorDomain, name: "Domain"))
    AppMonitor.add_member(:domain_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorDomainList, name: "DomainList"))
    AppMonitor.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorId, name: "Id"))
    AppMonitor.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ISOTimestampString, name: "Created"))
    AppMonitor.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: ISOTimestampString, name: "LastModified"))
    AppMonitor.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    AppMonitor.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: StateEnum, name: "State"))
    AppMonitor.add_member(:app_monitor_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorConfiguration, name: "AppMonitorConfiguration"))
    AppMonitor.add_member(:data_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: DataStorage, name: "DataStorage"))
    AppMonitor.add_member(:custom_events, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomEvents, name: "CustomEvents"))
    AppMonitor.add_member(:deobfuscation_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeobfuscationConfiguration, name: "DeobfuscationConfiguration"))
    AppMonitor.type = Types::AppMonitor
    AppMonitorConfiguration.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityPoolId, name: "IdentityPoolId"))
    AppMonitorConfiguration.add_member(:excluded_pages, ::Smithy::Schema::Shapes::MemberShape.new(target: Pages, name: "ExcludedPages"))
    AppMonitorConfiguration.add_member(:included_pages, ::Smithy::Schema::Shapes::MemberShape.new(target: Pages, name: "IncludedPages"))
    AppMonitorConfiguration.add_member(:favorite_pages, ::Smithy::Schema::Shapes::MemberShape.new(target: FavoritePages, name: "FavoritePages"))
    AppMonitorConfiguration.add_member(:session_sample_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionSampleRate, name: "SessionSampleRate", traits: {"smithy.api#default" => 0}))
    AppMonitorConfiguration.add_member(:guest_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "GuestRoleArn"))
    AppMonitorConfiguration.add_member(:allow_cookies, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "AllowCookies"))
    AppMonitorConfiguration.add_member(:telemetries, ::Smithy::Schema::Shapes::MemberShape.new(target: Telemetries, name: "Telemetries"))
    AppMonitorConfiguration.add_member(:enable_x_ray, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "EnableXRay"))
    AppMonitorConfiguration.type = Types::AppMonitorConfiguration
    AppMonitorDetails.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    AppMonitorDetails.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id"))
    AppMonitorDetails.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "version"))
    AppMonitorDetails.type = Types::AppMonitorDetails
    AppMonitorDomainList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorDomain, name: "member"))
    AppMonitorSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorName, name: "Name"))
    AppMonitorSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorId, name: "Id"))
    AppMonitorSummary.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ISOTimestampString, name: "Created"))
    AppMonitorSummary.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: ISOTimestampString, name: "LastModified"))
    AppMonitorSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: StateEnum, name: "State"))
    AppMonitorSummary.type = Types::AppMonitorSummary
    AppMonitorSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorSummary, name: "member"))
    BatchCreateRumMetricDefinitionsError.add_member(:metric_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDefinitionRequest, name: "MetricDefinition", traits: {"smithy.api#required" => {}}))
    BatchCreateRumMetricDefinitionsError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    BatchCreateRumMetricDefinitionsError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ErrorMessage", traits: {"smithy.api#required" => {}}))
    BatchCreateRumMetricDefinitionsError.type = Types::BatchCreateRumMetricDefinitionsError
    BatchCreateRumMetricDefinitionsErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchCreateRumMetricDefinitionsError, name: "member"))
    BatchCreateRumMetricDefinitionsInput.add_member(:app_monitor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorName, name: "AppMonitorName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Name"}))
    BatchCreateRumMetricDefinitionsInput.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDestination, name: "Destination", traits: {"smithy.api#required" => {}}))
    BatchCreateRumMetricDefinitionsInput.add_member(:destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationArn, name: "DestinationArn"))
    BatchCreateRumMetricDefinitionsInput.add_member(:metric_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDefinitionsRequest, name: "MetricDefinitions", traits: {"smithy.api#required" => {}}))
    BatchCreateRumMetricDefinitionsInput.type = Types::BatchCreateRumMetricDefinitionsInput
    BatchCreateRumMetricDefinitionsOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchCreateRumMetricDefinitionsErrors, name: "Errors", traits: {"smithy.api#required" => {}}))
    BatchCreateRumMetricDefinitionsOutput.add_member(:metric_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDefinitions, name: "MetricDefinitions"))
    BatchCreateRumMetricDefinitionsOutput.type = Types::BatchCreateRumMetricDefinitionsOutput
    BatchDeleteRumMetricDefinitionsError.add_member(:metric_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDefinitionId, name: "MetricDefinitionId", traits: {"smithy.api#required" => {}}))
    BatchDeleteRumMetricDefinitionsError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    BatchDeleteRumMetricDefinitionsError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ErrorMessage", traits: {"smithy.api#required" => {}}))
    BatchDeleteRumMetricDefinitionsError.type = Types::BatchDeleteRumMetricDefinitionsError
    BatchDeleteRumMetricDefinitionsErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteRumMetricDefinitionsError, name: "member"))
    BatchDeleteRumMetricDefinitionsInput.add_member(:app_monitor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorName, name: "AppMonitorName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Name"}))
    BatchDeleteRumMetricDefinitionsInput.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDestination, name: "Destination", traits: {"smithy.api#httpQuery" => "destination", "smithy.api#required" => {}}))
    BatchDeleteRumMetricDefinitionsInput.add_member(:destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationArn, name: "DestinationArn", traits: {"smithy.api#httpQuery" => "destinationArn"}))
    BatchDeleteRumMetricDefinitionsInput.add_member(:metric_definition_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDefinitionIds, name: "MetricDefinitionIds", traits: {"smithy.api#httpQuery" => "metricDefinitionIds", "smithy.api#required" => {}}))
    BatchDeleteRumMetricDefinitionsInput.type = Types::BatchDeleteRumMetricDefinitionsInput
    BatchDeleteRumMetricDefinitionsOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteRumMetricDefinitionsErrors, name: "Errors", traits: {"smithy.api#required" => {}}))
    BatchDeleteRumMetricDefinitionsOutput.add_member(:metric_definition_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDefinitionIds, name: "MetricDefinitionIds"))
    BatchDeleteRumMetricDefinitionsOutput.type = Types::BatchDeleteRumMetricDefinitionsOutput
    BatchGetRumMetricDefinitionsInput.add_member(:app_monitor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorName, name: "AppMonitorName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Name"}))
    BatchGetRumMetricDefinitionsInput.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDestination, name: "Destination", traits: {"smithy.api#httpQuery" => "destination", "smithy.api#required" => {}}))
    BatchGetRumMetricDefinitionsInput.add_member(:destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationArn, name: "DestinationArn", traits: {"smithy.api#httpQuery" => "destinationArn"}))
    BatchGetRumMetricDefinitionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    BatchGetRumMetricDefinitionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    BatchGetRumMetricDefinitionsInput.type = Types::BatchGetRumMetricDefinitionsInput
    BatchGetRumMetricDefinitionsOutput.add_member(:metric_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDefinitions, name: "MetricDefinitions"))
    BatchGetRumMetricDefinitionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    BatchGetRumMetricDefinitionsOutput.type = Types::BatchGetRumMetricDefinitionsOutput
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceName", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType"))
    ConflictException.type = Types::ConflictException
    CreateAppMonitorInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateAppMonitorInput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorDomain, name: "Domain"))
    CreateAppMonitorInput.add_member(:domain_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorDomainList, name: "DomainList"))
    CreateAppMonitorInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateAppMonitorInput.add_member(:app_monitor_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorConfiguration, name: "AppMonitorConfiguration"))
    CreateAppMonitorInput.add_member(:cw_log_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "CwLogEnabled"))
    CreateAppMonitorInput.add_member(:custom_events, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomEvents, name: "CustomEvents"))
    CreateAppMonitorInput.add_member(:deobfuscation_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeobfuscationConfiguration, name: "DeobfuscationConfiguration"))
    CreateAppMonitorInput.type = Types::CreateAppMonitorInput
    CreateAppMonitorOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorId, name: "Id"))
    CreateAppMonitorOutput.type = Types::CreateAppMonitorOutput
    CustomEvents.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomEventsStatus, name: "Status"))
    CustomEvents.type = Types::CustomEvents
    CwLog.add_member(:cw_log_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "CwLogEnabled"))
    CwLog.add_member(:cw_log_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "CwLogGroup"))
    CwLog.type = Types::CwLog
    DataStorage.add_member(:cw_log, ::Smithy::Schema::Shapes::MemberShape.new(target: CwLog, name: "CwLog"))
    DataStorage.type = Types::DataStorage
    DeleteAppMonitorInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAppMonitorInput.type = Types::DeleteAppMonitorInput
    DeleteAppMonitorOutput.type = Types::DeleteAppMonitorOutput
    DeleteResourcePolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResourcePolicyRequest.add_member(:policy_revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevisionId, name: "PolicyRevisionId", traits: {"smithy.api#httpQuery" => "policyRevisionId"}))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteResourcePolicyResponse.add_member(:policy_revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevisionId, name: "PolicyRevisionId"))
    DeleteResourcePolicyResponse.type = Types::DeleteResourcePolicyResponse
    DeleteRumMetricsDestinationInput.add_member(:app_monitor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorName, name: "AppMonitorName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Name"}))
    DeleteRumMetricsDestinationInput.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDestination, name: "Destination", traits: {"smithy.api#httpQuery" => "destination", "smithy.api#required" => {}}))
    DeleteRumMetricsDestinationInput.add_member(:destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationArn, name: "DestinationArn", traits: {"smithy.api#httpQuery" => "destinationArn"}))
    DeleteRumMetricsDestinationInput.type = Types::DeleteRumMetricsDestinationInput
    DeleteRumMetricsDestinationOutput.type = Types::DeleteRumMetricsDestinationOutput
    DeobfuscationConfiguration.add_member(:java_script_source_maps, ::Smithy::Schema::Shapes::MemberShape.new(target: JavaScriptSourceMaps, name: "JavaScriptSourceMaps"))
    DeobfuscationConfiguration.type = Types::DeobfuscationConfiguration
    DimensionKeysMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionKey, name: "key"))
    DimensionKeysMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionName, name: "value"))
    EventDataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventData, name: "member"))
    FavoritePages.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    GetAppMonitorDataInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAppMonitorDataInput.add_member(:time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeRange, name: "TimeRange", traits: {"smithy.api#required" => {}}))
    GetAppMonitorDataInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryFilters, name: "Filters"))
    GetAppMonitorDataInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxQueryResults, name: "MaxResults", traits: {"smithy.api#default" => 0}))
    GetAppMonitorDataInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    GetAppMonitorDataInput.type = Types::GetAppMonitorDataInput
    GetAppMonitorDataOutput.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataList, name: "Events"))
    GetAppMonitorDataOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    GetAppMonitorDataOutput.type = Types::GetAppMonitorDataOutput
    GetAppMonitorInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAppMonitorInput.type = Types::GetAppMonitorInput
    GetAppMonitorOutput.add_member(:app_monitor, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitor, name: "AppMonitor"))
    GetAppMonitorOutput.type = Types::GetAppMonitorOutput
    GetResourcePolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourcePolicyRequest.type = Types::GetResourcePolicyRequest
    GetResourcePolicyResponse.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PolicyDocument"))
    GetResourcePolicyResponse.add_member(:policy_revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevisionId, name: "PolicyRevisionId"))
    GetResourcePolicyResponse.type = Types::GetResourcePolicyResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    InvalidPolicyRevisionIdException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InvalidPolicyRevisionIdException.type = Types::InvalidPolicyRevisionIdException
    JavaScriptSourceMaps.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeobfuscationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    JavaScriptSourceMaps.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: DeobfuscationS3Uri, name: "S3Uri"))
    JavaScriptSourceMaps.type = Types::JavaScriptSourceMaps
    ListAppMonitorsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAppMonitorsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAppMonitorsInput.type = Types::ListAppMonitorsInput
    ListAppMonitorsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListAppMonitorsOutput.add_member(:app_monitor_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorSummaryList, name: "AppMonitorSummaries"))
    ListAppMonitorsOutput.type = Types::ListAppMonitorsOutput
    ListRumMetricsDestinationsInput.add_member(:app_monitor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorName, name: "AppMonitorName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Name"}))
    ListRumMetricsDestinationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRumMetricsDestinationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRumMetricsDestinationsInput.type = Types::ListRumMetricsDestinationsInput
    ListRumMetricsDestinationsOutput.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDestinationSummaryList, name: "Destinations"))
    ListRumMetricsDestinationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListRumMetricsDestinationsOutput.type = Types::ListRumMetricsDestinationsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    MalformedPolicyDocumentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    MalformedPolicyDocumentException.type = Types::MalformedPolicyDocumentException
    MetricDefinition.add_member(:metric_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDefinitionId, name: "MetricDefinitionId", traits: {"smithy.api#required" => {}}))
    MetricDefinition.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "Name", traits: {"smithy.api#required" => {}}))
    MetricDefinition.add_member(:value_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueKey, name: "ValueKey"))
    MetricDefinition.add_member(:unit_label, ::Smithy::Schema::Shapes::MemberShape.new(target: UnitLabel, name: "UnitLabel"))
    MetricDefinition.add_member(:dimension_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionKeysMap, name: "DimensionKeys"))
    MetricDefinition.add_member(:event_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: EventPattern, name: "EventPattern"))
    MetricDefinition.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "Namespace"))
    MetricDefinition.type = Types::MetricDefinition
    MetricDefinitionIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDefinitionId, name: "member"))
    MetricDefinitionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "Name", traits: {"smithy.api#required" => {}}))
    MetricDefinitionRequest.add_member(:value_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueKey, name: "ValueKey"))
    MetricDefinitionRequest.add_member(:unit_label, ::Smithy::Schema::Shapes::MemberShape.new(target: UnitLabel, name: "UnitLabel"))
    MetricDefinitionRequest.add_member(:dimension_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionKeysMap, name: "DimensionKeys"))
    MetricDefinitionRequest.add_member(:event_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: EventPattern, name: "EventPattern"))
    MetricDefinitionRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "Namespace"))
    MetricDefinitionRequest.type = Types::MetricDefinitionRequest
    MetricDefinitions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDefinition, name: "member"))
    MetricDefinitionsRequest.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDefinitionRequest, name: "member"))
    MetricDestinationSummary.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDestination, name: "Destination"))
    MetricDestinationSummary.add_member(:destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationArn, name: "DestinationArn"))
    MetricDestinationSummary.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "IamRoleArn"))
    MetricDestinationSummary.type = Types::MetricDestinationSummary
    MetricDestinationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDestinationSummary, name: "member"))
    Pages.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "member"))
    PolicyNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    PolicyNotFoundException.type = Types::PolicyNotFoundException
    PolicySizeLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    PolicySizeLimitExceededException.type = Types::PolicySizeLimitExceededException
    PutResourcePolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PolicyDocument", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:policy_revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevisionId, name: "PolicyRevisionId"))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PolicyDocument"))
    PutResourcePolicyResponse.add_member(:policy_revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevisionId, name: "PolicyRevisionId"))
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    PutRumEventsInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$", "smithy.api#required" => {}}))
    PutRumEventsInput.add_member(:batch_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BatchId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$", "smithy.api#required" => {}}))
    PutRumEventsInput.add_member(:app_monitor_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorDetails, name: "AppMonitorDetails", traits: {"smithy.api#required" => {}}))
    PutRumEventsInput.add_member(:user_details, ::Smithy::Schema::Shapes::MemberShape.new(target: UserDetails, name: "UserDetails", traits: {"smithy.api#required" => {}}))
    PutRumEventsInput.add_member(:rum_events, ::Smithy::Schema::Shapes::MemberShape.new(target: RumEventList, name: "RumEvents", traits: {"smithy.api#required" => {}}))
    PutRumEventsInput.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, name: "Alias"))
    PutRumEventsInput.type = Types::PutRumEventsInput
    PutRumEventsOutput.type = Types::PutRumEventsOutput
    PutRumMetricsDestinationInput.add_member(:app_monitor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorName, name: "AppMonitorName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Name"}))
    PutRumMetricsDestinationInput.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDestination, name: "Destination", traits: {"smithy.api#required" => {}}))
    PutRumMetricsDestinationInput.add_member(:destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationArn, name: "DestinationArn"))
    PutRumMetricsDestinationInput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "IamRoleArn"))
    PutRumMetricsDestinationInput.type = Types::PutRumMetricsDestinationInput
    PutRumMetricsDestinationOutput.type = Types::PutRumMetricsDestinationOutput
    QueryFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryFilterKey, name: "Name"))
    QueryFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryFilterValueList, name: "Values"))
    QueryFilter.type = Types::QueryFilter
    QueryFilterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryFilterValue, name: "member"))
    QueryFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryFilter, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceName", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RumEvent.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$", "smithy.api#required" => {}}))
    RumEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timestamp", traits: {"smithy.api#required" => {}}))
    RumEvent.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "type", traits: {"smithy.api#required" => {}}))
    RumEvent.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonValue, name: "metadata"))
    RumEvent.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonValue, name: "details", traits: {"smithy.api#required" => {}}))
    RumEvent.type = Types::RumEvent
    RumEventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RumEvent, name: "member"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    Telemetries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Telemetry, name: "member"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    TimeRange.add_member(:after, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryTimestamp, name: "After", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    TimeRange.add_member(:before, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryTimestamp, name: "Before", traits: {"smithy.api#default" => 0}))
    TimeRange.type = Types::TimeRange
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateAppMonitorInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAppMonitorInput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorDomain, name: "Domain"))
    UpdateAppMonitorInput.add_member(:domain_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorDomainList, name: "DomainList"))
    UpdateAppMonitorInput.add_member(:app_monitor_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorConfiguration, name: "AppMonitorConfiguration"))
    UpdateAppMonitorInput.add_member(:cw_log_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "CwLogEnabled"))
    UpdateAppMonitorInput.add_member(:custom_events, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomEvents, name: "CustomEvents"))
    UpdateAppMonitorInput.add_member(:deobfuscation_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeobfuscationConfiguration, name: "DeobfuscationConfiguration"))
    UpdateAppMonitorInput.type = Types::UpdateAppMonitorInput
    UpdateAppMonitorOutput.type = Types::UpdateAppMonitorOutput
    UpdateRumMetricDefinitionInput.add_member(:app_monitor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AppMonitorName, name: "AppMonitorName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Name"}))
    UpdateRumMetricDefinitionInput.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDestination, name: "Destination", traits: {"smithy.api#required" => {}}))
    UpdateRumMetricDefinitionInput.add_member(:destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationArn, name: "DestinationArn"))
    UpdateRumMetricDefinitionInput.add_member(:metric_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDefinitionRequest, name: "MetricDefinition", traits: {"smithy.api#required" => {}}))
    UpdateRumMetricDefinitionInput.add_member(:metric_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDefinitionId, name: "MetricDefinitionId", traits: {"smithy.api#required" => {}}))
    UpdateRumMetricDefinitionInput.type = Types::UpdateRumMetricDefinitionInput
    UpdateRumMetricDefinitionOutput.type = Types::UpdateRumMetricDefinitionOutput
    UserDetails.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "userId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$"}))
    UserDetails.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sessionId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$"}))
    UserDetails.type = Types::UserDetails
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    RUM = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.rum#RUM"
      service.name = "RUM"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "RUM", "arnNamespace" => "rum", "serviceName" => "rum"}, "aws.auth#sigv4" => {"name" => "rum"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "X-Amz-Date", "Authorization", "Date", "X-Amz-Security-Token", "X-Amz-Targe", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id", "x-amzn-errormessage", "x-amz-apigw-id", "date"]}, "smithy.api#title" => "CloudWatch RUM"}
      service.add_operation(:batch_create_rum_metric_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#BatchCreateRumMetricDefinitions"
        operation.name = "BatchCreateRumMetricDefinitions"
        operation.input = BatchCreateRumMetricDefinitionsInput
        operation.output = BatchCreateRumMetricDefinitionsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/rum/latest/developerguide/BatchCreateRumMetricDefinitions.html"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/rummetrics/{AppMonitorName}/metrics"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_delete_rum_metric_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#BatchDeleteRumMetricDefinitions"
        operation.name = "BatchDeleteRumMetricDefinitions"
        operation.input = BatchDeleteRumMetricDefinitionsInput
        operation.output = BatchDeleteRumMetricDefinitionsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/rum/latest/developerguide/BatchDeleteRumMetricDefinitions.html"}, "smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/rummetrics/{AppMonitorName}/metrics"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_get_rum_metric_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#BatchGetRumMetricDefinitions"
        operation.name = "BatchGetRumMetricDefinitions"
        operation.input = BatchGetRumMetricDefinitionsInput
        operation.output = BatchGetRumMetricDefinitionsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/rum/latest/developerguide/BatchGetRumMetricDefinitions.html"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/rummetrics/{AppMonitorName}/metrics"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::BatchGetRumMetricDefinitions.new
      end)
      service.add_operation(:create_app_monitor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#CreateAppMonitor"
        operation.name = "CreateAppMonitor"
        operation.input = CreateAppMonitorInput
        operation.output = CreateAppMonitorOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/rum/latest/developerguide/CreateAppMonitor.html"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/appmonitor"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_app_monitor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#DeleteAppMonitor"
        operation.name = "DeleteAppMonitor"
        operation.input = DeleteAppMonitorInput
        operation.output = DeleteAppMonitorOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/appmonitor/{Name}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = DeleteResourcePolicyRequest
        operation.output = DeleteResourcePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << InvalidPolicyRevisionIdException
        operation.errors << PolicyNotFoundException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/appmonitor/{Name}/policy"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_rum_metrics_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#DeleteRumMetricsDestination"
        operation.name = "DeleteRumMetricsDestination"
        operation.input = DeleteRumMetricsDestinationInput
        operation.output = DeleteRumMetricsDestinationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/rummetrics/{AppMonitorName}/metricsdestination"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_app_monitor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#GetAppMonitor"
        operation.name = "GetAppMonitor"
        operation.input = GetAppMonitorInput
        operation.output = GetAppMonitorOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/appmonitor/{Name}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_app_monitor_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#GetAppMonitorData"
        operation.name = "GetAppMonitorData"
        operation.input = GetAppMonitorDataInput
        operation.output = GetAppMonitorDataOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/appmonitor/{Name}/data"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetAppMonitorData.new
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = GetResourcePolicyRequest
        operation.output = GetResourcePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PolicyNotFoundException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/appmonitor/{Name}/policy"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_app_monitors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#ListAppMonitors"
        operation.name = "ListAppMonitors"
        operation.input = ListAppMonitorsInput
        operation.output = ListAppMonitorsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/appmonitors"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAppMonitors.new
      end)
      service.add_operation(:list_rum_metrics_destinations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#ListRumMetricsDestinations"
        operation.name = "ListRumMetricsDestinations"
        operation.input = ListRumMetricsDestinationsInput
        operation.output = ListRumMetricsDestinationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/rummetrics/{AppMonitorName}/metricsdestination"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRumMetricsDestinations.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = PutResourcePolicyRequest
        operation.output = PutResourcePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << InvalidPolicyRevisionIdException
        operation.errors << MalformedPolicyDocumentException
        operation.errors << PolicySizeLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/appmonitor/{Name}/policy"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_rum_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#PutRumEvents"
        operation.name = "PutRumEvents"
        operation.input = PutRumEventsInput
        operation.output = PutRumEventsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "dataplane."}, "smithy.api#http" => {"method" => "POST", "uri" => "/appmonitors/{Id}/", "code" => 200}}
      end)
      service.add_operation(:put_rum_metrics_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#PutRumMetricsDestination"
        operation.name = "PutRumMetricsDestination"
        operation.input = PutRumMetricsDestinationInput
        operation.output = PutRumMetricsDestinationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/rum/latest/developerguide/PutRumMetricsDestination.html"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/rummetrics/{AppMonitorName}/metricsdestination"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/tags/{ResourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_app_monitor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#UpdateAppMonitor"
        operation.name = "UpdateAppMonitor"
        operation.input = UpdateAppMonitorInput
        operation.output = UpdateAppMonitorOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/appmonitor/{Name}"}}
      end)
      service.add_operation(:update_rum_metric_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#UpdateRumMetricDefinition"
        operation.name = "UpdateRumMetricDefinition"
        operation.input = UpdateRumMetricDefinitionInput
        operation.output = UpdateRumMetricDefinitionOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/rum/latest/developerguide/UpdateRumMetricDefinitions.html"}, "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/rummetrics/{AppMonitorName}/metrics"}, "smithy.api#idempotent" => {}}
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
