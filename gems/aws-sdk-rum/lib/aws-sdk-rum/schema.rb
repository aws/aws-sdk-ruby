# frozen_string_literal: true

# This is generated code!

module Aws::RUM
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Alias = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#Alias', name: 'Alias', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    AppMonitor = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#AppMonitor', name: 'AppMonitor')
    AppMonitorConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#AppMonitorConfiguration', name: 'AppMonitorConfiguration')
    AppMonitorDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#AppMonitorDetails', name: 'AppMonitorDetails')
    AppMonitorDomain = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#AppMonitorDomain', name: 'AppMonitorDomain', traits: {"smithy.api#length" => {"min" => 1, "max" => 253}, "smithy.api#pattern" => "^(localhost)$|^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$|(?=^[a-zA-Z0-9\\.\\*-]{4,253}$)(?!.*\\.-)(?!.*-\\.)(?!.*\\.\\.)(?!.*[^\\.]{64,})^(\\*\\.)?(?![-\\.\\*])[^\\*]{1,}\\.(\\*|(?!.*--)(?=.*[a-zA-Z])[^\\*]{1,}[^\\*-])$"})
    AppMonitorDomainList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#AppMonitorDomainList', name: 'AppMonitorDomainList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    AppMonitorId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#AppMonitorId', name: 'AppMonitorId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$"})
    AppMonitorName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#AppMonitorName', name: 'AppMonitorName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(?!\\.)[\\.\\-_#A-Za-z0-9]+$"})
    AppMonitorSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#AppMonitorSummary', name: 'AppMonitorSummary')
    AppMonitorSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#AppMonitorSummaryList', name: 'AppMonitorSummaryList')
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#Arn', name: 'Arn', traits: {"smithy.api#pattern" => "arn:[^:]*:[^:]*:[^:]*:[^:]*:.*"})
    BatchCreateRumMetricDefinitionsError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#BatchCreateRumMetricDefinitionsError', name: 'BatchCreateRumMetricDefinitionsError')
    BatchCreateRumMetricDefinitionsErrors = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#BatchCreateRumMetricDefinitionsErrors', name: 'BatchCreateRumMetricDefinitionsErrors')
    BatchCreateRumMetricDefinitionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#BatchCreateRumMetricDefinitionsInput', name: 'BatchCreateRumMetricDefinitionsInput')
    BatchCreateRumMetricDefinitionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#BatchCreateRumMetricDefinitionsOutput', name: 'BatchCreateRumMetricDefinitionsOutput')
    BatchDeleteRumMetricDefinitionsError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#BatchDeleteRumMetricDefinitionsError', name: 'BatchDeleteRumMetricDefinitionsError')
    BatchDeleteRumMetricDefinitionsErrors = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#BatchDeleteRumMetricDefinitionsErrors', name: 'BatchDeleteRumMetricDefinitionsErrors')
    BatchDeleteRumMetricDefinitionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#BatchDeleteRumMetricDefinitionsInput', name: 'BatchDeleteRumMetricDefinitionsInput')
    BatchDeleteRumMetricDefinitionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#BatchDeleteRumMetricDefinitionsOutput', name: 'BatchDeleteRumMetricDefinitionsOutput')
    BatchGetRumMetricDefinitionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#BatchGetRumMetricDefinitionsInput', name: 'BatchGetRumMetricDefinitionsInput')
    BatchGetRumMetricDefinitionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#BatchGetRumMetricDefinitionsOutput', name: 'BatchGetRumMetricDefinitionsOutput')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAppMonitorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#CreateAppMonitorInput', name: 'CreateAppMonitorInput')
    CreateAppMonitorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#CreateAppMonitorOutput', name: 'CreateAppMonitorOutput')
    CustomEvents = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#CustomEvents', name: 'CustomEvents')
    CustomEventsStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#CustomEventsStatus', name: 'CustomEventsStatus', traits: {"smithy.api#enum" => [{"name" => "ENABLED", "value" => "ENABLED"}, {"name" => "DISABLED", "value" => "DISABLED"}]})
    CwLog = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#CwLog', name: 'CwLog')
    DataStorage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#DataStorage', name: 'DataStorage')
    DeleteAppMonitorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#DeleteAppMonitorInput', name: 'DeleteAppMonitorInput')
    DeleteAppMonitorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#DeleteAppMonitorOutput', name: 'DeleteAppMonitorOutput')
    DeleteResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#DeleteResourcePolicyRequest', name: 'DeleteResourcePolicyRequest')
    DeleteResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#DeleteResourcePolicyResponse', name: 'DeleteResourcePolicyResponse')
    DeleteRumMetricsDestinationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#DeleteRumMetricsDestinationInput', name: 'DeleteRumMetricsDestinationInput')
    DeleteRumMetricsDestinationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#DeleteRumMetricsDestinationOutput', name: 'DeleteRumMetricsDestinationOutput')
    DeobfuscationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#DeobfuscationConfiguration', name: 'DeobfuscationConfiguration')
    DeobfuscationS3Uri = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#DeobfuscationS3Uri', name: 'DeobfuscationS3Uri', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^s3://[a-z0-9][-.a-z0-9]{1,61}(?:/[-!_*'().a-z0-9A-Z]+(?:/[-!_*'().a-z0-9A-Z]+)*)?/?$"})
    DeobfuscationStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#DeobfuscationStatus', name: 'DeobfuscationStatus', traits: {"smithy.api#enum" => [{"name" => "ENABLED", "value" => "ENABLED"}, {"name" => "DISABLED", "value" => "DISABLED"}]})
    DestinationArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#DestinationArn', name: 'DestinationArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "arn:[^:]*:[^:]*:[^:]*:[^:]*:.*"})
    DimensionKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#DimensionKey', name: 'DimensionKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 280}})
    DimensionKeysMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.rum#DimensionKeysMap', name: 'DimensionKeysMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 29}})
    DimensionName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#DimensionName', name: 'DimensionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(?!:).*[^\\s].*"})
    EventData = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#EventData', name: 'EventData')
    EventDataList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#EventDataList', name: 'EventDataList')
    EventPattern = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#EventPattern', name: 'EventPattern', traits: {"smithy.api#length" => {"min" => 0, "max" => 4000}})
    FavoritePages = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#FavoritePages', name: 'FavoritePages', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    GetAppMonitorDataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#GetAppMonitorDataInput', name: 'GetAppMonitorDataInput')
    GetAppMonitorDataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#GetAppMonitorDataOutput', name: 'GetAppMonitorDataOutput')
    GetAppMonitorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#GetAppMonitorInput', name: 'GetAppMonitorInput')
    GetAppMonitorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#GetAppMonitorOutput', name: 'GetAppMonitorOutput')
    GetResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#GetResourcePolicyRequest', name: 'GetResourcePolicyRequest')
    GetResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#GetResourcePolicyResponse', name: 'GetResourcePolicyResponse')
    ISOTimestampString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#ISOTimestampString', name: 'ISOTimestampString', traits: {"smithy.api#length" => {"min" => 19, "max" => 19}})
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#IamRoleArn', name: 'IamRoleArn', traits: {"smithy.api#pattern" => "arn:[^:]*:[^:]*:[^:]*:[^:]*:.*"})
    IdentityPoolId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#IdentityPoolId', name: 'IdentityPoolId', traits: {"smithy.api#length" => {"min" => 1, "max" => 55}, "smithy.api#pattern" => "[\\w-]+:[0-9a-f-]+"})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    InvalidPolicyRevisionIdException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#InvalidPolicyRevisionIdException', name: 'InvalidPolicyRevisionIdException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    JavaScriptSourceMaps = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#JavaScriptSourceMaps', name: 'JavaScriptSourceMaps')
    JsonValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#JsonValue', name: 'JsonValue', traits: {"smithy.api#mediaType" => "application/json"})
    ListAppMonitorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#ListAppMonitorsInput', name: 'ListAppMonitorsInput')
    ListAppMonitorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#ListAppMonitorsOutput', name: 'ListAppMonitorsOutput')
    ListRumMetricsDestinationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#ListRumMetricsDestinationsInput', name: 'ListRumMetricsDestinationsInput')
    ListRumMetricsDestinationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#ListRumMetricsDestinationsOutput', name: 'ListRumMetricsDestinationsOutput')
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    MalformedPolicyDocumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#MalformedPolicyDocumentException', name: 'MalformedPolicyDocumentException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MaxQueryResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rum#MaxQueryResults', name: 'MaxQueryResults', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    MaxResultsInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rum#MaxResultsInteger', name: 'MaxResultsInteger', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MetricDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#MetricDefinition', name: 'MetricDefinition')
    MetricDefinitionId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#MetricDefinitionId', name: 'MetricDefinitionId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    MetricDefinitionIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#MetricDefinitionIds', name: 'MetricDefinitionIds')
    MetricDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#MetricDefinitionRequest', name: 'MetricDefinitionRequest')
    MetricDefinitions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#MetricDefinitions', name: 'MetricDefinitions')
    MetricDefinitionsRequest = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#MetricDefinitionsRequest', name: 'MetricDefinitionsRequest')
    MetricDestination = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#MetricDestination', name: 'MetricDestination', traits: {"smithy.api#enum" => [{"name" => "CloudWatch", "value" => "CloudWatch"}, {"name" => "Evidently", "value" => "Evidently"}]})
    MetricDestinationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#MetricDestinationSummary', name: 'MetricDestinationSummary')
    MetricDestinationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#MetricDestinationSummaryList', name: 'MetricDestinationSummaryList')
    MetricName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#MetricName', name: 'MetricName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    Namespace = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#Namespace', name: 'Namespace', traits: {"smithy.api#length" => {"min" => 1, "max" => 237}, "smithy.api#pattern" => "[a-zA-Z0-9-._/#:]+$"})
    Pages = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#Pages', name: 'Pages', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    PolicyNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#PolicyNotFoundException', name: 'PolicyNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    PolicyRevisionId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#PolicyRevisionId', name: 'PolicyRevisionId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    PolicySizeLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#PolicySizeLimitExceededException', name: 'PolicySizeLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PutResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#PutResourcePolicyRequest', name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#PutResourcePolicyResponse', name: 'PutResourcePolicyResponse')
    PutRumEventsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#PutRumEventsInput', name: 'PutRumEventsInput')
    PutRumEventsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#PutRumEventsOutput', name: 'PutRumEventsOutput')
    PutRumMetricsDestinationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#PutRumMetricsDestinationInput', name: 'PutRumMetricsDestinationInput')
    PutRumMetricsDestinationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#PutRumMetricsDestinationOutput', name: 'PutRumMetricsDestinationOutput')
    QueryFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#QueryFilter', name: 'QueryFilter')
    QueryFilterKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#QueryFilterKey', name: 'QueryFilterKey')
    QueryFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#QueryFilterValue', name: 'QueryFilterValue')
    QueryFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#QueryFilterValueList', name: 'QueryFilterValueList')
    QueryFilters = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#QueryFilters', name: 'QueryFilters')
    QueryTimestamp = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rum#QueryTimestamp', name: 'QueryTimestamp', traits: {"smithy.api#default" => 0})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RumEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#RumEvent', name: 'RumEvent')
    RumEventList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#RumEventList', name: 'RumEventList')
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SessionSampleRate = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.rum#SessionSampleRate', name: 'SessionSampleRate', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1}})
    StateEnum = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#StateEnum', name: 'StateEnum', traits: {"smithy.api#enum" => [{"name" => "CREATED", "value" => "CREATED"}, {"name" => "DELETING", "value" => "DELETING"}, {"name" => "ACTIVE", "value" => "ACTIVE"}]})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.rum#TagMap', name: 'TagMap')
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Telemetries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#Telemetries', name: 'Telemetries')
    Telemetry = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#Telemetry', name: 'Telemetry', traits: {"smithy.api#enum" => [{"value" => "errors", "name" => "ERRORS", "documentation" => "Includes JS error event plugin"}, {"value" => "performance", "name" => "PERFORMANCE", "documentation" => "Includes navigation, paint, resource and web vital event plugins"}, {"value" => "http", "name" => "HTTP", "documentation" => "Includes X-Ray Xhr and X-Ray Fetch plugin"}]})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    TimeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#TimeRange', name: 'TimeRange')
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#Token', name: 'Token')
    UnitLabel = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#UnitLabel', name: 'UnitLabel', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateAppMonitorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#UpdateAppMonitorInput', name: 'UpdateAppMonitorInput')
    UpdateAppMonitorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#UpdateAppMonitorOutput', name: 'UpdateAppMonitorOutput')
    UpdateRumMetricDefinitionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#UpdateRumMetricDefinitionInput', name: 'UpdateRumMetricDefinitionInput')
    UpdateRumMetricDefinitionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#UpdateRumMetricDefinitionOutput', name: 'UpdateRumMetricDefinitionOutput')
    Url = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#Url', name: 'Url', traits: {"smithy.api#length" => {"min" => 1, "max" => 1260}, "smithy.api#pattern" => "https?:\\/\\/(www\\.)?[-a-zA-Z0-9@:%._\\+~#=]{1,256}\\.[a-zA-Z0-9()]{1,6}\\b([-a-zA-Z0-9()@:%_\\+.~#?&*//=]*)"})
    UserDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#UserDetails', name: 'UserDetails')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValueKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#ValueKey', name: 'ValueKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 280}})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AppMonitor.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'Name'))
    AppMonitor.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorDomain, location_name: 'Domain'))
    AppMonitor.add_member(:domain_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorDomainList, location_name: 'DomainList'))
    AppMonitor.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorId, location_name: 'Id'))
    AppMonitor.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ISOTimestampString, location_name: 'Created'))
    AppMonitor.add_member(:last_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ISOTimestampString, location_name: 'LastModified'))
    AppMonitor.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    AppMonitor.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StateEnum, location_name: 'State'))
    AppMonitor.add_member(:app_monitor_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorConfiguration, location_name: 'AppMonitorConfiguration'))
    AppMonitor.add_member(:data_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataStorage, location_name: 'DataStorage'))
    AppMonitor.add_member(:custom_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomEvents, location_name: 'CustomEvents'))
    AppMonitor.add_member(:deobfuscation_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeobfuscationConfiguration, location_name: 'DeobfuscationConfiguration'))
    AppMonitor.type = Types::AppMonitor
    AppMonitorConfiguration.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: 'IdentityPoolId'))
    AppMonitorConfiguration.add_member(:excluded_pages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Pages, location_name: 'ExcludedPages'))
    AppMonitorConfiguration.add_member(:included_pages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Pages, location_name: 'IncludedPages'))
    AppMonitorConfiguration.add_member(:favorite_pages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FavoritePages, location_name: 'FavoritePages'))
    AppMonitorConfiguration.add_member(:session_sample_rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionSampleRate, location_name: 'SessionSampleRate', traits: {"smithy.api#default" => 0}))
    AppMonitorConfiguration.add_member(:guest_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'GuestRoleArn'))
    AppMonitorConfiguration.add_member(:allow_cookies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'AllowCookies'))
    AppMonitorConfiguration.add_member(:telemetries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Telemetries, location_name: 'Telemetries'))
    AppMonitorConfiguration.add_member(:enable_x_ray, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'EnableXRay'))
    AppMonitorConfiguration.type = Types::AppMonitorConfiguration
    AppMonitorDetails.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name'))
    AppMonitorDetails.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'id'))
    AppMonitorDetails.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'version'))
    AppMonitorDetails.type = Types::AppMonitorDetails
    AppMonitorDomainList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorDomain)
    AppMonitorSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'Name'))
    AppMonitorSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorId, location_name: 'Id'))
    AppMonitorSummary.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ISOTimestampString, location_name: 'Created'))
    AppMonitorSummary.add_member(:last_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ISOTimestampString, location_name: 'LastModified'))
    AppMonitorSummary.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StateEnum, location_name: 'State'))
    AppMonitorSummary.type = Types::AppMonitorSummary
    AppMonitorSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorSummary)
    BatchCreateRumMetricDefinitionsError.add_member(:metric_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinitionRequest, location_name: 'MetricDefinition', traits: {"smithy.api#required" => {}}))
    BatchCreateRumMetricDefinitionsError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    BatchCreateRumMetricDefinitionsError.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ErrorMessage', traits: {"smithy.api#required" => {}}))
    BatchCreateRumMetricDefinitionsError.type = Types::BatchCreateRumMetricDefinitionsError
    BatchCreateRumMetricDefinitionsErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateRumMetricDefinitionsError)
    BatchCreateRumMetricDefinitionsInput.add_member(:app_monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'AppMonitorName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Name"}))
    BatchCreateRumMetricDefinitionsInput.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDestination, location_name: 'Destination', traits: {"smithy.api#required" => {}}))
    BatchCreateRumMetricDefinitionsInput.add_member(:destination_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationArn, location_name: 'DestinationArn'))
    BatchCreateRumMetricDefinitionsInput.add_member(:metric_definitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinitionsRequest, location_name: 'MetricDefinitions', traits: {"smithy.api#required" => {}}))
    BatchCreateRumMetricDefinitionsInput.type = Types::BatchCreateRumMetricDefinitionsInput
    BatchCreateRumMetricDefinitionsOutput.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateRumMetricDefinitionsErrors, location_name: 'Errors', traits: {"smithy.api#required" => {}}))
    BatchCreateRumMetricDefinitionsOutput.add_member(:metric_definitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinitions, location_name: 'MetricDefinitions'))
    BatchCreateRumMetricDefinitionsOutput.type = Types::BatchCreateRumMetricDefinitionsOutput
    BatchDeleteRumMetricDefinitionsError.add_member(:metric_definition_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinitionId, location_name: 'MetricDefinitionId', traits: {"smithy.api#required" => {}}))
    BatchDeleteRumMetricDefinitionsError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    BatchDeleteRumMetricDefinitionsError.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ErrorMessage', traits: {"smithy.api#required" => {}}))
    BatchDeleteRumMetricDefinitionsError.type = Types::BatchDeleteRumMetricDefinitionsError
    BatchDeleteRumMetricDefinitionsErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteRumMetricDefinitionsError)
    BatchDeleteRumMetricDefinitionsInput.add_member(:app_monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'AppMonitorName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Name"}))
    BatchDeleteRumMetricDefinitionsInput.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDestination, location_name: 'Destination', traits: {"smithy.api#httpQuery" => "destination", "smithy.api#required" => {}}))
    BatchDeleteRumMetricDefinitionsInput.add_member(:destination_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationArn, location_name: 'DestinationArn', traits: {"smithy.api#httpQuery" => "destinationArn"}))
    BatchDeleteRumMetricDefinitionsInput.add_member(:metric_definition_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinitionIds, location_name: 'MetricDefinitionIds', traits: {"smithy.api#httpQuery" => "metricDefinitionIds", "smithy.api#required" => {}}))
    BatchDeleteRumMetricDefinitionsInput.type = Types::BatchDeleteRumMetricDefinitionsInput
    BatchDeleteRumMetricDefinitionsOutput.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteRumMetricDefinitionsErrors, location_name: 'Errors', traits: {"smithy.api#required" => {}}))
    BatchDeleteRumMetricDefinitionsOutput.add_member(:metric_definition_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinitionIds, location_name: 'MetricDefinitionIds'))
    BatchDeleteRumMetricDefinitionsOutput.type = Types::BatchDeleteRumMetricDefinitionsOutput
    BatchGetRumMetricDefinitionsInput.add_member(:app_monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'AppMonitorName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Name"}))
    BatchGetRumMetricDefinitionsInput.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDestination, location_name: 'Destination', traits: {"smithy.api#httpQuery" => "destination", "smithy.api#required" => {}}))
    BatchGetRumMetricDefinitionsInput.add_member(:destination_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationArn, location_name: 'DestinationArn', traits: {"smithy.api#httpQuery" => "destinationArn"}))
    BatchGetRumMetricDefinitionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    BatchGetRumMetricDefinitionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    BatchGetRumMetricDefinitionsInput.type = Types::BatchGetRumMetricDefinitionsInput
    BatchGetRumMetricDefinitionsOutput.add_member(:metric_definitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinitions, location_name: 'MetricDefinitions'))
    BatchGetRumMetricDefinitionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken'))
    BatchGetRumMetricDefinitionsOutput.type = Types::BatchGetRumMetricDefinitionsOutput
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceName', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType'))
    ConflictException.type = Types::ConflictException
    CreateAppMonitorInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateAppMonitorInput.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorDomain, location_name: 'Domain'))
    CreateAppMonitorInput.add_member(:domain_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorDomainList, location_name: 'DomainList'))
    CreateAppMonitorInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    CreateAppMonitorInput.add_member(:app_monitor_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorConfiguration, location_name: 'AppMonitorConfiguration'))
    CreateAppMonitorInput.add_member(:cw_log_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'CwLogEnabled'))
    CreateAppMonitorInput.add_member(:custom_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomEvents, location_name: 'CustomEvents'))
    CreateAppMonitorInput.add_member(:deobfuscation_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeobfuscationConfiguration, location_name: 'DeobfuscationConfiguration'))
    CreateAppMonitorInput.type = Types::CreateAppMonitorInput
    CreateAppMonitorOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorId, location_name: 'Id'))
    CreateAppMonitorOutput.type = Types::CreateAppMonitorOutput
    CustomEvents.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomEventsStatus, location_name: 'Status'))
    CustomEvents.type = Types::CustomEvents
    CwLog.add_member(:cw_log_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'CwLogEnabled'))
    CwLog.add_member(:cw_log_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'CwLogGroup'))
    CwLog.type = Types::CwLog
    DataStorage.add_member(:cw_log, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CwLog, location_name: 'CwLog'))
    DataStorage.type = Types::DataStorage
    DeleteAppMonitorInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAppMonitorInput.type = Types::DeleteAppMonitorInput
    DeleteAppMonitorOutput.type = Types::DeleteAppMonitorOutput
    DeleteResourcePolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResourcePolicyRequest.add_member(:policy_revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: 'PolicyRevisionId', traits: {"smithy.api#httpQuery" => "policyRevisionId"}))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteResourcePolicyResponse.add_member(:policy_revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: 'PolicyRevisionId'))
    DeleteResourcePolicyResponse.type = Types::DeleteResourcePolicyResponse
    DeleteRumMetricsDestinationInput.add_member(:app_monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'AppMonitorName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Name"}))
    DeleteRumMetricsDestinationInput.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDestination, location_name: 'Destination', traits: {"smithy.api#httpQuery" => "destination", "smithy.api#required" => {}}))
    DeleteRumMetricsDestinationInput.add_member(:destination_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationArn, location_name: 'DestinationArn', traits: {"smithy.api#httpQuery" => "destinationArn"}))
    DeleteRumMetricsDestinationInput.type = Types::DeleteRumMetricsDestinationInput
    DeleteRumMetricsDestinationOutput.type = Types::DeleteRumMetricsDestinationOutput
    DeobfuscationConfiguration.add_member(:java_script_source_maps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JavaScriptSourceMaps, location_name: 'JavaScriptSourceMaps'))
    DeobfuscationConfiguration.type = Types::DeobfuscationConfiguration
    DimensionKeysMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionKey)
    DimensionKeysMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionName)
    EventDataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventData)
    FavoritePages.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    GetAppMonitorDataInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAppMonitorDataInput.add_member(:time_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeRange, location_name: 'TimeRange', traits: {"smithy.api#required" => {}}))
    GetAppMonitorDataInput.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryFilters, location_name: 'Filters'))
    GetAppMonitorDataInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxQueryResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0}))
    GetAppMonitorDataInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    GetAppMonitorDataInput.type = Types::GetAppMonitorDataInput
    GetAppMonitorDataOutput.add_member(:events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataList, location_name: 'Events'))
    GetAppMonitorDataOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    GetAppMonitorDataOutput.type = Types::GetAppMonitorDataOutput
    GetAppMonitorInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAppMonitorInput.type = Types::GetAppMonitorInput
    GetAppMonitorOutput.add_member(:app_monitor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitor, location_name: 'AppMonitor'))
    GetAppMonitorOutput.type = Types::GetAppMonitorOutput
    GetResourcePolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourcePolicyRequest.type = Types::GetResourcePolicyRequest
    GetResourcePolicyResponse.add_member(:policy_document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'PolicyDocument'))
    GetResourcePolicyResponse.add_member(:policy_revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: 'PolicyRevisionId'))
    GetResourcePolicyResponse.type = Types::GetResourcePolicyResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    InvalidPolicyRevisionIdException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InvalidPolicyRevisionIdException.type = Types::InvalidPolicyRevisionIdException
    JavaScriptSourceMaps.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeobfuscationStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    JavaScriptSourceMaps.add_member(:s3_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeobfuscationS3Uri, location_name: 'S3Uri'))
    JavaScriptSourceMaps.type = Types::JavaScriptSourceMaps
    ListAppMonitorsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAppMonitorsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAppMonitorsInput.type = Types::ListAppMonitorsInput
    ListAppMonitorsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken'))
    ListAppMonitorsOutput.add_member(:app_monitor_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorSummaryList, location_name: 'AppMonitorSummaries'))
    ListAppMonitorsOutput.type = Types::ListAppMonitorsOutput
    ListRumMetricsDestinationsInput.add_member(:app_monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'AppMonitorName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Name"}))
    ListRumMetricsDestinationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRumMetricsDestinationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRumMetricsDestinationsInput.type = Types::ListRumMetricsDestinationsInput
    ListRumMetricsDestinationsOutput.add_member(:destinations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDestinationSummaryList, location_name: 'Destinations'))
    ListRumMetricsDestinationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken'))
    ListRumMetricsDestinationsOutput.type = Types::ListRumMetricsDestinationsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    MalformedPolicyDocumentException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    MalformedPolicyDocumentException.type = Types::MalformedPolicyDocumentException
    MetricDefinition.add_member(:metric_definition_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinitionId, location_name: 'MetricDefinitionId', traits: {"smithy.api#required" => {}}))
    MetricDefinition.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    MetricDefinition.add_member(:value_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValueKey, location_name: 'ValueKey'))
    MetricDefinition.add_member(:unit_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnitLabel, location_name: 'UnitLabel'))
    MetricDefinition.add_member(:dimension_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionKeysMap, location_name: 'DimensionKeys'))
    MetricDefinition.add_member(:event_pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventPattern, location_name: 'EventPattern'))
    MetricDefinition.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: 'Namespace'))
    MetricDefinition.type = Types::MetricDefinition
    MetricDefinitionIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinitionId)
    MetricDefinitionRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    MetricDefinitionRequest.add_member(:value_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValueKey, location_name: 'ValueKey'))
    MetricDefinitionRequest.add_member(:unit_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnitLabel, location_name: 'UnitLabel'))
    MetricDefinitionRequest.add_member(:dimension_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionKeysMap, location_name: 'DimensionKeys'))
    MetricDefinitionRequest.add_member(:event_pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventPattern, location_name: 'EventPattern'))
    MetricDefinitionRequest.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: 'Namespace'))
    MetricDefinitionRequest.type = Types::MetricDefinitionRequest
    MetricDefinitions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinition)
    MetricDefinitionsRequest.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinitionRequest)
    MetricDestinationSummary.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDestination, location_name: 'Destination'))
    MetricDestinationSummary.add_member(:destination_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationArn, location_name: 'DestinationArn'))
    MetricDestinationSummary.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'IamRoleArn'))
    MetricDestinationSummary.type = Types::MetricDestinationSummary
    MetricDestinationSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDestinationSummary)
    Pages.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url)
    PolicyNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    PolicyNotFoundException.type = Types::PolicyNotFoundException
    PolicySizeLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    PolicySizeLimitExceededException.type = Types::PolicySizeLimitExceededException
    PutResourcePolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:policy_document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'PolicyDocument', traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:policy_revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: 'PolicyRevisionId'))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.add_member(:policy_document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'PolicyDocument'))
    PutResourcePolicyResponse.add_member(:policy_revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: 'PolicyRevisionId'))
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    PutRumEventsInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorId, location_name: 'Id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$", "smithy.api#required" => {}}))
    PutRumEventsInput.add_member(:batch_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'BatchId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$", "smithy.api#required" => {}}))
    PutRumEventsInput.add_member(:app_monitor_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorDetails, location_name: 'AppMonitorDetails', traits: {"smithy.api#required" => {}}))
    PutRumEventsInput.add_member(:user_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserDetails, location_name: 'UserDetails', traits: {"smithy.api#required" => {}}))
    PutRumEventsInput.add_member(:rum_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RumEventList, location_name: 'RumEvents', traits: {"smithy.api#required" => {}}))
    PutRumEventsInput.add_member(:alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Alias, location_name: 'Alias'))
    PutRumEventsInput.type = Types::PutRumEventsInput
    PutRumEventsOutput.type = Types::PutRumEventsOutput
    PutRumMetricsDestinationInput.add_member(:app_monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'AppMonitorName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Name"}))
    PutRumMetricsDestinationInput.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDestination, location_name: 'Destination', traits: {"smithy.api#required" => {}}))
    PutRumMetricsDestinationInput.add_member(:destination_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationArn, location_name: 'DestinationArn'))
    PutRumMetricsDestinationInput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'IamRoleArn'))
    PutRumMetricsDestinationInput.type = Types::PutRumMetricsDestinationInput
    PutRumMetricsDestinationOutput.type = Types::PutRumMetricsDestinationOutput
    QueryFilter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryFilterKey, location_name: 'Name'))
    QueryFilter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryFilterValueList, location_name: 'Values'))
    QueryFilter.type = Types::QueryFilter
    QueryFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryFilterValue)
    QueryFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryFilter)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceName', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RumEvent.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$", "smithy.api#required" => {}}))
    RumEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'timestamp', traits: {"smithy.api#required" => {}}))
    RumEvent.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'type', traits: {"smithy.api#required" => {}}))
    RumEvent.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JsonValue, location_name: 'metadata'))
    RumEvent.add_member(:details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JsonValue, location_name: 'details', traits: {"smithy.api#required" => {}}))
    RumEvent.type = Types::RumEvent
    RumEventList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RumEvent)
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    Telemetries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Telemetry)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode'))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode'))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    TimeRange.add_member(:after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTimestamp, location_name: 'After', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    TimeRange.add_member(:before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTimestamp, location_name: 'Before', traits: {"smithy.api#default" => 0}))
    TimeRange.type = Types::TimeRange
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateAppMonitorInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAppMonitorInput.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorDomain, location_name: 'Domain'))
    UpdateAppMonitorInput.add_member(:domain_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorDomainList, location_name: 'DomainList'))
    UpdateAppMonitorInput.add_member(:app_monitor_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorConfiguration, location_name: 'AppMonitorConfiguration'))
    UpdateAppMonitorInput.add_member(:cw_log_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'CwLogEnabled'))
    UpdateAppMonitorInput.add_member(:custom_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomEvents, location_name: 'CustomEvents'))
    UpdateAppMonitorInput.add_member(:deobfuscation_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeobfuscationConfiguration, location_name: 'DeobfuscationConfiguration'))
    UpdateAppMonitorInput.type = Types::UpdateAppMonitorInput
    UpdateAppMonitorOutput.type = Types::UpdateAppMonitorOutput
    UpdateRumMetricDefinitionInput.add_member(:app_monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'AppMonitorName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Name"}))
    UpdateRumMetricDefinitionInput.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDestination, location_name: 'Destination', traits: {"smithy.api#required" => {}}))
    UpdateRumMetricDefinitionInput.add_member(:destination_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationArn, location_name: 'DestinationArn'))
    UpdateRumMetricDefinitionInput.add_member(:metric_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinitionRequest, location_name: 'MetricDefinition', traits: {"smithy.api#required" => {}}))
    UpdateRumMetricDefinitionInput.add_member(:metric_definition_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinitionId, location_name: 'MetricDefinitionId', traits: {"smithy.api#required" => {}}))
    UpdateRumMetricDefinitionInput.type = Types::UpdateRumMetricDefinitionInput
    UpdateRumMetricDefinitionOutput.type = Types::UpdateRumMetricDefinitionOutput
    UserDetails.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'userId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$"}))
    UserDetails.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'sessionId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$"}))
    UserDetails.type = Types::UserDetails
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    RUM = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.rum#RUM"
      service.name = "RUM"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "RUM", "arnNamespace" => "rum", "serviceName" => "rum"}, "aws.auth#sigv4" => {"name" => "rum"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "X-Amz-Date", "Authorization", "Date", "X-Amz-Security-Token", "X-Amz-Targe", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id", "x-amzn-errormessage", "x-amz-apigw-id", "date"]}, "smithy.api#title" => "CloudWatch RUM"}
      service.add_operation(:batch_create_rum_metric_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#BatchCreateRumMetricDefinitions"
        operation.name = "BatchCreateRumMetricDefinitions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateRumMetricDefinitionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateRumMetricDefinitionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/rum/latest/developerguide/BatchCreateRumMetricDefinitions.html"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/rummetrics/{AppMonitorName}/metrics"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_delete_rum_metric_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#BatchDeleteRumMetricDefinitions"
        operation.name = "BatchDeleteRumMetricDefinitions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteRumMetricDefinitionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteRumMetricDefinitionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/rum/latest/developerguide/BatchDeleteRumMetricDefinitions.html"}, "smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/rummetrics/{AppMonitorName}/metrics"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_get_rum_metric_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#BatchGetRumMetricDefinitions"
        operation.name = "BatchGetRumMetricDefinitions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetRumMetricDefinitionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetRumMetricDefinitionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/rum/latest/developerguide/BatchGetRumMetricDefinitions.html"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/rummetrics/{AppMonitorName}/metrics"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::BatchGetRumMetricDefinitions.new
      end)
      service.add_operation(:create_app_monitor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#CreateAppMonitor"
        operation.name = "CreateAppMonitor"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppMonitorInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppMonitorOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/rum/latest/developerguide/CreateAppMonitor.html"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/appmonitor"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_app_monitor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#DeleteAppMonitor"
        operation.name = "DeleteAppMonitor"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppMonitorInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppMonitorOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/appmonitor/{Name}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyRevisionIdException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/appmonitor/{Name}/policy"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_rum_metrics_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#DeleteRumMetricsDestination"
        operation.name = "DeleteRumMetricsDestination"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRumMetricsDestinationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRumMetricsDestinationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/rummetrics/{AppMonitorName}/metricsdestination"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_app_monitor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#GetAppMonitor"
        operation.name = "GetAppMonitor"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppMonitorInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppMonitorOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/appmonitor/{Name}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_app_monitor_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#GetAppMonitorData"
        operation.name = "GetAppMonitorData"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppMonitorDataInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppMonitorDataOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/appmonitor/{Name}/data"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetAppMonitorData.new
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/appmonitor/{Name}/policy"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_app_monitors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#ListAppMonitors"
        operation.name = "ListAppMonitors"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAppMonitorsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAppMonitorsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/appmonitors"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAppMonitors.new
      end)
      service.add_operation(:list_rum_metrics_destinations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#ListRumMetricsDestinations"
        operation.name = "ListRumMetricsDestinations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRumMetricsDestinationsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRumMetricsDestinationsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/rummetrics/{AppMonitorName}/metricsdestination"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRumMetricsDestinations.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyRevisionIdException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedPolicyDocumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicySizeLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/appmonitor/{Name}/policy"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_rum_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#PutRumEvents"
        operation.name = "PutRumEvents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutRumEventsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutRumEventsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "dataplane."}, "smithy.api#http" => {"method" => "POST", "uri" => "/appmonitors/{Id}/", "code" => 200}}
      end)
      service.add_operation(:put_rum_metrics_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#PutRumMetricsDestination"
        operation.name = "PutRumMetricsDestination"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutRumMetricsDestinationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutRumMetricsDestinationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/rum/latest/developerguide/PutRumMetricsDestination.html"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/rummetrics/{AppMonitorName}/metricsdestination"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/tags/{ResourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_app_monitor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#UpdateAppMonitor"
        operation.name = "UpdateAppMonitor"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAppMonitorInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAppMonitorOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/appmonitor/{Name}"}}
      end)
      service.add_operation(:update_rum_metric_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#UpdateRumMetricDefinition"
        operation.name = "UpdateRumMetricDefinition"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRumMetricDefinitionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRumMetricDefinitionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
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
