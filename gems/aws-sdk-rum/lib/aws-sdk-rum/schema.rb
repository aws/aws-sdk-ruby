# frozen_string_literal: true

# This is generated code!

module Aws::RUM
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Alias = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#Alias', name: 'Alias', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    AppMonitor = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#AppMonitor', name: 'AppMonitor')
    AppMonitorConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#AppMonitorConfiguration', name: 'AppMonitorConfiguration')
    AppMonitorDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#AppMonitorDetails', name: 'AppMonitorDetails')
    AppMonitorDomain = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#AppMonitorDomain', name: 'AppMonitorDomain', traits: {"smithy.api#length" => {"min" => 1, "max" => 253}, "smithy.api#pattern" => "^(localhost)$|^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$|(?=^[a-zA-Z0-9\\.\\*-]{4,253}$)(?!.*\\.-)(?!.*-\\.)(?!.*\\.\\.)(?!.*[^\\.]{64,})^(\\*\\.)?(?![-\\.\\*])[^\\*]{1,}\\.(\\*|(?!.*--)(?=.*[a-zA-Z])[^\\*]{1,}[^\\*-])$"})
    AppMonitorDomainList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#AppMonitorDomainList', name: 'AppMonitorDomainList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    AppMonitorId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#AppMonitorId', name: 'AppMonitorId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$"})
    AppMonitorName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#AppMonitorName', name: 'AppMonitorName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(?!\\.)[\\.\\-_#A-Za-z0-9]+$"})
    AppMonitorSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#AppMonitorSummary', name: 'AppMonitorSummary')
    AppMonitorSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#AppMonitorSummaryList', name: 'AppMonitorSummaryList')
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#Arn', name: 'Arn', traits: {"smithy.api#pattern" => "arn:[^:]*:[^:]*:[^:]*:[^:]*:.*"})
    BatchCreateRumMetricDefinitionsError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#BatchCreateRumMetricDefinitionsError', name: 'BatchCreateRumMetricDefinitionsError')
    BatchCreateRumMetricDefinitionsErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#BatchCreateRumMetricDefinitionsErrors', name: 'BatchCreateRumMetricDefinitionsErrors')
    BatchCreateRumMetricDefinitionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#BatchCreateRumMetricDefinitionsInput', name: 'BatchCreateRumMetricDefinitionsInput')
    BatchCreateRumMetricDefinitionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#BatchCreateRumMetricDefinitionsOutput', name: 'BatchCreateRumMetricDefinitionsOutput')
    BatchDeleteRumMetricDefinitionsError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#BatchDeleteRumMetricDefinitionsError', name: 'BatchDeleteRumMetricDefinitionsError')
    BatchDeleteRumMetricDefinitionsErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#BatchDeleteRumMetricDefinitionsErrors', name: 'BatchDeleteRumMetricDefinitionsErrors')
    BatchDeleteRumMetricDefinitionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#BatchDeleteRumMetricDefinitionsInput', name: 'BatchDeleteRumMetricDefinitionsInput')
    BatchDeleteRumMetricDefinitionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#BatchDeleteRumMetricDefinitionsOutput', name: 'BatchDeleteRumMetricDefinitionsOutput')
    BatchGetRumMetricDefinitionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#BatchGetRumMetricDefinitionsInput', name: 'BatchGetRumMetricDefinitionsInput')
    BatchGetRumMetricDefinitionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#BatchGetRumMetricDefinitionsOutput', name: 'BatchGetRumMetricDefinitionsOutput')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAppMonitorInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#CreateAppMonitorInput', name: 'CreateAppMonitorInput')
    CreateAppMonitorOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#CreateAppMonitorOutput', name: 'CreateAppMonitorOutput')
    CustomEvents = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#CustomEvents', name: 'CustomEvents')
    CustomEventsStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#CustomEventsStatus', name: 'CustomEventsStatus', traits: {"smithy.api#enum" => [{"name" => "ENABLED", "value" => "ENABLED"}, {"name" => "DISABLED", "value" => "DISABLED"}]})
    CwLog = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#CwLog', name: 'CwLog')
    DataStorage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#DataStorage', name: 'DataStorage')
    DeleteAppMonitorInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#DeleteAppMonitorInput', name: 'DeleteAppMonitorInput')
    DeleteAppMonitorOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#DeleteAppMonitorOutput', name: 'DeleteAppMonitorOutput')
    DeleteResourcePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#DeleteResourcePolicyRequest', name: 'DeleteResourcePolicyRequest')
    DeleteResourcePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#DeleteResourcePolicyResponse', name: 'DeleteResourcePolicyResponse')
    DeleteRumMetricsDestinationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#DeleteRumMetricsDestinationInput', name: 'DeleteRumMetricsDestinationInput')
    DeleteRumMetricsDestinationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#DeleteRumMetricsDestinationOutput', name: 'DeleteRumMetricsDestinationOutput')
    DeobfuscationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#DeobfuscationConfiguration', name: 'DeobfuscationConfiguration')
    DeobfuscationS3Uri = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#DeobfuscationS3Uri', name: 'DeobfuscationS3Uri', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^s3://[a-z0-9][-.a-z0-9]{1,61}(?:/[-!_*'().a-z0-9A-Z]+(?:/[-!_*'().a-z0-9A-Z]+)*)?/?$"})
    DeobfuscationStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#DeobfuscationStatus', name: 'DeobfuscationStatus', traits: {"smithy.api#enum" => [{"name" => "ENABLED", "value" => "ENABLED"}, {"name" => "DISABLED", "value" => "DISABLED"}]})
    DestinationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#DestinationArn', name: 'DestinationArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "arn:[^:]*:[^:]*:[^:]*:[^:]*:.*"})
    DimensionKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#DimensionKey', name: 'DimensionKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 280}})
    DimensionKeysMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.rum#DimensionKeysMap', name: 'DimensionKeysMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 29}})
    DimensionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#DimensionName', name: 'DimensionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(?!:).*[^\\s].*"})
    EventData = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#EventData', name: 'EventData')
    EventDataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#EventDataList', name: 'EventDataList')
    EventPattern = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#EventPattern', name: 'EventPattern', traits: {"smithy.api#length" => {"min" => 0, "max" => 4000}})
    FavoritePages = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#FavoritePages', name: 'FavoritePages', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    GetAppMonitorDataInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#GetAppMonitorDataInput', name: 'GetAppMonitorDataInput')
    GetAppMonitorDataOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#GetAppMonitorDataOutput', name: 'GetAppMonitorDataOutput')
    GetAppMonitorInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#GetAppMonitorInput', name: 'GetAppMonitorInput')
    GetAppMonitorOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#GetAppMonitorOutput', name: 'GetAppMonitorOutput')
    GetResourcePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#GetResourcePolicyRequest', name: 'GetResourcePolicyRequest')
    GetResourcePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#GetResourcePolicyResponse', name: 'GetResourcePolicyResponse')
    ISOTimestampString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#ISOTimestampString', name: 'ISOTimestampString', traits: {"smithy.api#length" => {"min" => 19, "max" => 19}})
    IamRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#IamRoleArn', name: 'IamRoleArn', traits: {"smithy.api#pattern" => "arn:[^:]*:[^:]*:[^:]*:[^:]*:.*"})
    IdentityPoolId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#IdentityPoolId', name: 'IdentityPoolId', traits: {"smithy.api#length" => {"min" => 1, "max" => 55}, "smithy.api#pattern" => "[\\w-]+:[0-9a-f-]+"})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    InvalidPolicyRevisionIdException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#InvalidPolicyRevisionIdException', name: 'InvalidPolicyRevisionIdException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    JavaScriptSourceMaps = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#JavaScriptSourceMaps', name: 'JavaScriptSourceMaps')
    JsonValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#JsonValue', name: 'JsonValue', traits: {"smithy.api#mediaType" => "application/json"})
    ListAppMonitorsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#ListAppMonitorsInput', name: 'ListAppMonitorsInput')
    ListAppMonitorsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#ListAppMonitorsOutput', name: 'ListAppMonitorsOutput')
    ListRumMetricsDestinationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#ListRumMetricsDestinationsInput', name: 'ListRumMetricsDestinationsInput')
    ListRumMetricsDestinationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#ListRumMetricsDestinationsOutput', name: 'ListRumMetricsDestinationsOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    MalformedPolicyDocumentException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#MalformedPolicyDocumentException', name: 'MalformedPolicyDocumentException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MaxQueryResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rum#MaxQueryResults', name: 'MaxQueryResults', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    MaxResultsInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rum#MaxResultsInteger', name: 'MaxResultsInteger', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MetricDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#MetricDefinition', name: 'MetricDefinition')
    MetricDefinitionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#MetricDefinitionId', name: 'MetricDefinitionId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    MetricDefinitionIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#MetricDefinitionIds', name: 'MetricDefinitionIds')
    MetricDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#MetricDefinitionRequest', name: 'MetricDefinitionRequest')
    MetricDefinitions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#MetricDefinitions', name: 'MetricDefinitions')
    MetricDefinitionsRequest = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#MetricDefinitionsRequest', name: 'MetricDefinitionsRequest')
    MetricDestination = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#MetricDestination', name: 'MetricDestination', traits: {"smithy.api#enum" => [{"name" => "CloudWatch", "value" => "CloudWatch"}, {"name" => "Evidently", "value" => "Evidently"}]})
    MetricDestinationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#MetricDestinationSummary', name: 'MetricDestinationSummary')
    MetricDestinationSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#MetricDestinationSummaryList', name: 'MetricDestinationSummaryList')
    MetricName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#MetricName', name: 'MetricName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    Namespace = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#Namespace', name: 'Namespace', traits: {"smithy.api#length" => {"min" => 1, "max" => 237}, "smithy.api#pattern" => "[a-zA-Z0-9-._/#:]+$"})
    Pages = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#Pages', name: 'Pages', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    PolicyNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#PolicyNotFoundException', name: 'PolicyNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    PolicyRevisionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#PolicyRevisionId', name: 'PolicyRevisionId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    PolicySizeLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#PolicySizeLimitExceededException', name: 'PolicySizeLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PutResourcePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#PutResourcePolicyRequest', name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#PutResourcePolicyResponse', name: 'PutResourcePolicyResponse')
    PutRumEventsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#PutRumEventsInput', name: 'PutRumEventsInput')
    PutRumEventsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#PutRumEventsOutput', name: 'PutRumEventsOutput')
    PutRumMetricsDestinationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#PutRumMetricsDestinationInput', name: 'PutRumMetricsDestinationInput')
    PutRumMetricsDestinationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#PutRumMetricsDestinationOutput', name: 'PutRumMetricsDestinationOutput')
    QueryFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#QueryFilter', name: 'QueryFilter')
    QueryFilterKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#QueryFilterKey', name: 'QueryFilterKey')
    QueryFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#QueryFilterValue', name: 'QueryFilterValue')
    QueryFilterValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#QueryFilterValueList', name: 'QueryFilterValueList')
    QueryFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#QueryFilters', name: 'QueryFilters')
    QueryTimestamp = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rum#QueryTimestamp', name: 'QueryTimestamp', traits: {"smithy.api#default" => 0})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RumEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#RumEvent', name: 'RumEvent')
    RumEventList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#RumEventList', name: 'RumEventList')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SessionSampleRate = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.rum#SessionSampleRate', name: 'SessionSampleRate', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1}})
    StateEnum = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#StateEnum', name: 'StateEnum', traits: {"smithy.api#enum" => [{"name" => "CREATED", "value" => "CREATED"}, {"name" => "DELETING", "value" => "DELETING"}, {"name" => "ACTIVE", "value" => "ACTIVE"}]})
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.rum#TagMap', name: 'TagMap')
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Telemetries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rum#Telemetries', name: 'Telemetries')
    Telemetry = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#Telemetry', name: 'Telemetry', traits: {"smithy.api#enum" => [{"value" => "errors", "name" => "ERRORS", "documentation" => "Includes JS error event plugin"}, {"value" => "performance", "name" => "PERFORMANCE", "documentation" => "Includes navigation, paint, resource and web vital event plugins"}, {"value" => "http", "name" => "HTTP", "documentation" => "Includes X-Ray Xhr and X-Ray Fetch plugin"}]})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    TimeRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#TimeRange', name: 'TimeRange')
    Token = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#Token', name: 'Token')
    UnitLabel = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#UnitLabel', name: 'UnitLabel', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateAppMonitorInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#UpdateAppMonitorInput', name: 'UpdateAppMonitorInput')
    UpdateAppMonitorOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#UpdateAppMonitorOutput', name: 'UpdateAppMonitorOutput')
    UpdateRumMetricDefinitionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#UpdateRumMetricDefinitionInput', name: 'UpdateRumMetricDefinitionInput')
    UpdateRumMetricDefinitionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#UpdateRumMetricDefinitionOutput', name: 'UpdateRumMetricDefinitionOutput')
    Url = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#Url', name: 'Url', traits: {"smithy.api#length" => {"min" => 1, "max" => 1260}, "smithy.api#pattern" => "https?:\\/\\/(www\\.)?[-a-zA-Z0-9@:%._\\+~#=]{1,256}\\.[a-zA-Z0-9()]{1,6}\\b([-a-zA-Z0-9()@:%_\\+.~#?&*//=]*)"})
    UserDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#UserDetails', name: 'UserDetails')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rum#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValueKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rum#ValueKey', name: 'ValueKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 280}})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AppMonitor.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the app monitor.</p>"}))
    AppMonitor.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorDomain, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>The top-level internet domain name for which your application has administrative authority.</p>"}))
    AppMonitor.add_member(:domain_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorDomainList, location_name: 'DomainList', traits: {"smithy.api#documentation" => "<p>\n         List the domain names for which your application has administrative authority. \n      </p>"}))
    AppMonitor.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique ID of this app monitor.</p>"}))
    AppMonitor.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: ISOTimestampString, location_name: 'Created', traits: {"smithy.api#documentation" => "<p>The date and time that this app monitor was created.</p>"}))
    AppMonitor.add_member(:last_modified, Smithy::Schema::Shapes::ShapeRef.new(shape: ISOTimestampString, location_name: 'LastModified', traits: {"smithy.api#documentation" => "<p>The date and time of the most recent changes to this app monitor's configuration.</p>"}))
    AppMonitor.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of tag keys and values associated with this app monitor.</p>"}))
    AppMonitor.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: StateEnum, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the app monitor.</p>"}))
    AppMonitor.add_member(:app_monitor_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorConfiguration, location_name: 'AppMonitorConfiguration', traits: {"smithy.api#documentation" => "<p>A structure that contains much of the configuration data for the app monitor.</p>"}))
    AppMonitor.add_member(:data_storage, Smithy::Schema::Shapes::ShapeRef.new(shape: DataStorage, location_name: 'DataStorage', traits: {"smithy.api#documentation" => "<p>A structure that contains information about whether this app monitor stores a copy of\n         the telemetry data that RUM collects using CloudWatch Logs.</p>"}))
    AppMonitor.add_member(:custom_events, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomEvents, location_name: 'CustomEvents', traits: {"smithy.api#documentation" => "<p>Specifies whether this app monitor allows the web client to define and send\n      custom events.</p>\n         <p>For more information about custom events, see \n         <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-custom-events.html\">Send custom events</a>.</p>"}))
    AppMonitor.add_member(:deobfuscation_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DeobfuscationConfiguration, location_name: 'DeobfuscationConfiguration', traits: {"smithy.api#documentation" => "<p>\n         A structure that contains the configuration for how an app monitor can deobfuscate stack traces.\n      </p>"}))
    AppMonitor.type = Types::AppMonitor
    AppMonitorConfiguration.add_member(:identity_pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: 'IdentityPoolId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Cognito identity pool \n         that is used to authorize the sending of data to RUM.</p>"}))
    AppMonitorConfiguration.add_member(:excluded_pages, Smithy::Schema::Shapes::ShapeRef.new(shape: Pages, location_name: 'ExcludedPages', traits: {"smithy.api#documentation" => "<p>A list of URLs in your website or application to exclude from RUM data collection.</p>\n         <p>You can't include both <code>ExcludedPages</code> and <code>IncludedPages</code> in the same operation.</p>"}))
    AppMonitorConfiguration.add_member(:included_pages, Smithy::Schema::Shapes::ShapeRef.new(shape: Pages, location_name: 'IncludedPages', traits: {"smithy.api#documentation" => "<p>If this app monitor is to collect data from only certain pages in your application, this structure lists those pages. </p>\n         <p>You can't include both <code>ExcludedPages</code> and <code>IncludedPages</code> in the same operation.</p>"}))
    AppMonitorConfiguration.add_member(:favorite_pages, Smithy::Schema::Shapes::ShapeRef.new(shape: FavoritePages, location_name: 'FavoritePages', traits: {"smithy.api#documentation" => "<p>A list of pages in your application that are to be displayed with a \"favorite\" icon\n         in the CloudWatch RUM console.</p>"}))
    AppMonitorConfiguration.add_member(:session_sample_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionSampleRate, location_name: 'SessionSampleRate', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Specifies the portion of user sessions to use for RUM data collection. Choosing a higher portion gives you\n      more data but also incurs more costs.</p>\n         <p>The range for this value is 0 to 1 inclusive. Setting this to 1 means that 100% of user sessions are sampled, and setting\n         it to 0.1 means that 10% of user sessions are sampled.</p>\n         <p>If you omit this parameter, the default of 0.1 is used, and 10% of sessions will be sampled.</p>"}))
    AppMonitorConfiguration.add_member(:guest_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'GuestRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the guest IAM role that is attached to the Amazon Cognito identity pool \n      that is used to authorize the sending of data to RUM.</p>\n         <note>\n            <p>It is possible that an app monitor does not have a value for <code>GuestRoleArn</code>. For example, \n         this can happen when you use the console to create an app monitor and you allow CloudWatch RUM to \n         create a new identity pool for Authorization. In this case, <code>GuestRoleArn</code> is not present in the \n         <a href=\"https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_GetAppMonitor.html\">GetAppMonitor</a>\n        response because it is not stored by the service.</p>\n            <p>If this issue affects you, you can take one of the following steps:</p>\n            <ul>\n               <li>\n                  <p>Use the Cloud Development Kit (CDK) to create an identity pool and the associated IAM\n            role, and use that for your app monitor.</p>\n               </li>\n               <li>\n                  <p>Make a separate <a href=\"https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetIdentityPoolRoles.html\">GetIdentityPoolRoles</a>\n               call to Amazon Cognito to retrieve \n               the <code>GuestRoleArn</code>.</p>\n               </li>\n            </ul>\n         </note>"}))
    AppMonitorConfiguration.add_member(:allow_cookies, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'AllowCookies', traits: {"smithy.api#documentation" => "<p>If you set this to <code>true</code>, the RUM web client sets two cookies, a session\n         cookie and a user cookie. The cookies allow the RUM web client to collect data relating to\n         the number of users an application has and the behavior of the application across a\n         sequence of events. Cookies are stored in the top-level domain of the current page.</p>"}))
    AppMonitorConfiguration.add_member(:telemetries, Smithy::Schema::Shapes::ShapeRef.new(shape: Telemetries, location_name: 'Telemetries', traits: {"smithy.api#documentation" => "<p>An array that lists the types of telemetry data that this app monitor is to collect.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>errors</code> indicates that RUM collects data about unhandled JavaScript errors raised\n         by your application.</p>\n            </li>\n            <li>\n               <p>\n                  <code>performance</code> indicates that RUM collects performance data about how your application\n            and its resources are loaded and rendered. This includes Core Web Vitals.</p>\n            </li>\n            <li>\n               <p>\n                  <code>http</code> indicates that RUM collects data about HTTP errors thrown by your application.</p>\n            </li>\n         </ul>"}))
    AppMonitorConfiguration.add_member(:enable_x_ray, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'EnableXRay', traits: {"smithy.api#documentation" => "<p>If you set this to <code>true</code>, RUM enables X-Ray tracing for\n         the user sessions that RUM samples. RUM adds an X-Ray trace header to allowed\n         HTTP requests. It also records an X-Ray segment for allowed HTTP requests.\n         You can see traces and segments from these user sessions in the X-Ray console\n         and the CloudWatch ServiceLens console. For more information, see <a href=\"https://docs.aws.amazon.com/xray/latest/devguide/aws-xray.html\">What is X-Ray?</a>\n         </p>"}))
    AppMonitorConfiguration.type = Types::AppMonitorConfiguration
    AppMonitorDetails.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the app monitor.</p>"}))
    AppMonitorDetails.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID of the app monitor.</p>"}))
    AppMonitorDetails.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the app monitor.</p>"}))
    AppMonitorDetails.type = Types::AppMonitorDetails
    AppMonitorDomainList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorDomain)
    AppMonitorSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of this app monitor.</p>"}))
    AppMonitorSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique ID of this app monitor.</p>"}))
    AppMonitorSummary.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: ISOTimestampString, location_name: 'Created', traits: {"smithy.api#documentation" => "<p>The date and time that the app monitor was created.</p>"}))
    AppMonitorSummary.add_member(:last_modified, Smithy::Schema::Shapes::ShapeRef.new(shape: ISOTimestampString, location_name: 'LastModified', traits: {"smithy.api#documentation" => "<p>The date and time of the most recent changes to this app monitor's configuration.</p>"}))
    AppMonitorSummary.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: StateEnum, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of this app monitor.</p>"}))
    AppMonitorSummary.type = Types::AppMonitorSummary
    AppMonitorSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorSummary)
    BatchCreateRumMetricDefinitionsError.add_member(:metric_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinitionRequest, location_name: 'MetricDefinition', traits: {"smithy.api#documentation" => "<p>The metric definition that caused this error.</p>", "smithy.api#required" => {}}))
    BatchCreateRumMetricDefinitionsError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code.</p>", "smithy.api#required" => {}}))
    BatchCreateRumMetricDefinitionsError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message for this metric definition.</p>", "smithy.api#required" => {}}))
    BatchCreateRumMetricDefinitionsError.type = Types::BatchCreateRumMetricDefinitionsError
    BatchCreateRumMetricDefinitionsErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateRumMetricDefinitionsError)
    BatchCreateRumMetricDefinitionsInput.add_member(:app_monitor_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'AppMonitorName', traits: {"smithy.api#documentation" => "<p>The name of the CloudWatch RUM app monitor that is to send the metrics.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Name"}))
    BatchCreateRumMetricDefinitionsInput.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDestination, location_name: 'Destination', traits: {"smithy.api#documentation" => "<p>The destination to send the metrics to. Valid values are <code>CloudWatch</code> and\n            <code>Evidently</code>. If you specify <code>Evidently</code>, you must also specify the\n         Amazon Resource Name (ARN) of the CloudWatchEvidently experiment that will receive\n         the metrics and an IAM role that has permission to write to the\n         experiment.</p>", "smithy.api#required" => {}}))
    BatchCreateRumMetricDefinitionsInput.add_member(:destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationArn, location_name: 'DestinationArn', traits: {"smithy.api#documentation" => "<p>This parameter is required if <code>Destination</code> is <code>Evidently</code>. If <code>Destination</code> is \n         <code>CloudWatch</code>, do not use this parameter.</p>\n         <p>This parameter specifies the ARN of the Evidently experiment that is to receive the metrics. You must have already defined this \n         experiment as a valid destination. For more information, see <a href=\"https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_PutRumMetricsDestination.html\">PutRumMetricsDestination</a>.</p>"}))
    BatchCreateRumMetricDefinitionsInput.add_member(:metric_definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinitionsRequest, location_name: 'MetricDefinitions', traits: {"smithy.api#documentation" => "<p>An array of structures which define the metrics that you want to send.</p>", "smithy.api#required" => {}}))
    BatchCreateRumMetricDefinitionsInput.type = Types::BatchCreateRumMetricDefinitionsInput
    BatchCreateRumMetricDefinitionsOutput.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateRumMetricDefinitionsErrors, location_name: 'Errors', traits: {"smithy.api#documentation" => "<p>An array of error objects, if the operation caused any errors.</p>", "smithy.api#required" => {}}))
    BatchCreateRumMetricDefinitionsOutput.add_member(:metric_definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinitions, location_name: 'MetricDefinitions', traits: {"smithy.api#documentation" => "<p>An array of structures that define the extended metrics.</p>"}))
    BatchCreateRumMetricDefinitionsOutput.type = Types::BatchCreateRumMetricDefinitionsOutput
    BatchDeleteRumMetricDefinitionsError.add_member(:metric_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinitionId, location_name: 'MetricDefinitionId', traits: {"smithy.api#documentation" => "<p>The ID of the metric definition that caused this error.</p>", "smithy.api#required" => {}}))
    BatchDeleteRumMetricDefinitionsError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code.</p>", "smithy.api#required" => {}}))
    BatchDeleteRumMetricDefinitionsError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message for this metric definition.</p>", "smithy.api#required" => {}}))
    BatchDeleteRumMetricDefinitionsError.type = Types::BatchDeleteRumMetricDefinitionsError
    BatchDeleteRumMetricDefinitionsErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteRumMetricDefinitionsError)
    BatchDeleteRumMetricDefinitionsInput.add_member(:app_monitor_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'AppMonitorName', traits: {"smithy.api#documentation" => "<p>The name of the CloudWatch RUM app monitor that is sending these metrics.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Name"}))
    BatchDeleteRumMetricDefinitionsInput.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDestination, location_name: 'Destination', traits: {"smithy.api#documentation" => "<p>Defines the destination where you want to stop sending the specified metrics. Valid values are <code>CloudWatch</code> and\n         <code>Evidently</code>. If\n         you specify <code>Evidently</code>, you must also specify the ARN of the CloudWatchEvidently experiment that is to \n         be the destination and an IAM role that has permission to write to the experiment.</p>", "smithy.api#httpQuery" => "destination", "smithy.api#required" => {}}))
    BatchDeleteRumMetricDefinitionsInput.add_member(:destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationArn, location_name: 'DestinationArn', traits: {"smithy.api#documentation" => "<p>This parameter is required if <code>Destination</code> is <code>Evidently</code>. If <code>Destination</code> is \n         <code>CloudWatch</code>, do not use this parameter. </p>\n         <p>This parameter specifies\n         the ARN of the Evidently experiment that was receiving the metrics that are being deleted.</p>", "smithy.api#httpQuery" => "destinationArn"}))
    BatchDeleteRumMetricDefinitionsInput.add_member(:metric_definition_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinitionIds, location_name: 'MetricDefinitionIds', traits: {"smithy.api#documentation" => "<p>An array of structures which define the metrics that you want to stop sending.</p>", "smithy.api#httpQuery" => "metricDefinitionIds", "smithy.api#required" => {}}))
    BatchDeleteRumMetricDefinitionsInput.type = Types::BatchDeleteRumMetricDefinitionsInput
    BatchDeleteRumMetricDefinitionsOutput.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteRumMetricDefinitionsErrors, location_name: 'Errors', traits: {"smithy.api#documentation" => "<p>An array of error objects, if the operation caused any errors.</p>", "smithy.api#required" => {}}))
    BatchDeleteRumMetricDefinitionsOutput.add_member(:metric_definition_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinitionIds, location_name: 'MetricDefinitionIds', traits: {"smithy.api#documentation" => "<p>The IDs of the metric definitions that were deleted.</p>"}))
    BatchDeleteRumMetricDefinitionsOutput.type = Types::BatchDeleteRumMetricDefinitionsOutput
    BatchGetRumMetricDefinitionsInput.add_member(:app_monitor_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'AppMonitorName', traits: {"smithy.api#documentation" => "<p>The name of the CloudWatch RUM app monitor that is sending the metrics.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Name"}))
    BatchGetRumMetricDefinitionsInput.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDestination, location_name: 'Destination', traits: {"smithy.api#documentation" => "<p>The type of destination that you want to view metrics for. Valid values are <code>CloudWatch</code> \n         and <code>Evidently</code>.</p>", "smithy.api#httpQuery" => "destination", "smithy.api#required" => {}}))
    BatchGetRumMetricDefinitionsInput.add_member(:destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationArn, location_name: 'DestinationArn', traits: {"smithy.api#documentation" => "<p>This parameter is required if <code>Destination</code> is <code>Evidently</code>. If <code>Destination</code> is \n         <code>CloudWatch</code>, do not use this parameter.</p>\n         <p>This parameter\n         specifies the ARN of the Evidently experiment that corresponds to the destination.</p>", "smithy.api#httpQuery" => "destinationArn"}))
    BatchGetRumMetricDefinitionsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in one operation. The default is 50. The maximum that you can \n         specify is 100.</p>\n         <p>To retrieve the remaining results, make another call with the returned \n         <code>NextToken</code> value. </p>", "smithy.api#httpQuery" => "maxResults"}))
    BatchGetRumMetricDefinitionsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Use the token returned by the previous operation to request the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    BatchGetRumMetricDefinitionsInput.type = Types::BatchGetRumMetricDefinitionsInput
    BatchGetRumMetricDefinitionsOutput.add_member(:metric_definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinitions, location_name: 'MetricDefinitions', traits: {"smithy.api#documentation" => "<p>An array of structures that display information about the metrics that are sent by the specified\n         app monitor to the specified destination.</p>"}))
    BatchGetRumMetricDefinitionsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that you can use in a subsequent operation to \n         retrieve the next set of results.</p>"}))
    BatchGetRumMetricDefinitionsOutput.type = Types::BatchGetRumMetricDefinitionsOutput
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceName', traits: {"smithy.api#documentation" => "<p>The name of the resource that is associated with the error.</p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource that is associated with the error.</p>"}))
    ConflictException.type = Types::ConflictException
    CreateAppMonitorInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A name for the app monitor.</p>", "smithy.api#required" => {}}))
    CreateAppMonitorInput.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorDomain, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>The top-level internet domain name for which your application has administrative authority.</p>"}))
    CreateAppMonitorInput.add_member(:domain_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorDomainList, location_name: 'DomainList', traits: {"smithy.api#documentation" => "<p>\n         List the domain names for which your application has administrative authority. The <code>CreateAppMonitor</code> requires either the domain or the domain list.\n      </p>"}))
    CreateAppMonitorInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Assigns one or more tags (key-value pairs) to the app monitor.</p>\n         <p>Tags can help you organize and categorize your resources. You can also use them to scope user\n         permissions by granting a user\n         permission to access or change only resources with certain tag values.</p>\n         <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>\n         <p>You can associate as many as 50 tags with an app monitor.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging Amazon Web Services resources</a>.</p>"}))
    CreateAppMonitorInput.add_member(:app_monitor_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorConfiguration, location_name: 'AppMonitorConfiguration', traits: {"smithy.api#documentation" => "<p>A structure that contains much of the configuration data for the app monitor. If you are using \n         Amazon Cognito for authorization, you must include this structure in your request, and it must include the ID of the \n         Amazon Cognito identity pool to use for authorization. If you don't include <code>AppMonitorConfiguration</code>, you must set up your own \n         authorization method. For more information, see \n         <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-get-started-authorization.html\">Authorize your application\n            to send data to Amazon Web Services</a>.</p>\n         <p>If you omit this argument, the sample rate used for RUM is set to 10% of the user sessions.</p>"}))
    CreateAppMonitorInput.add_member(:cw_log_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'CwLogEnabled', traits: {"smithy.api#documentation" => "<p>Data collected by RUM is kept by RUM for 30 days and then deleted. This parameter specifies whether RUM \n         sends a copy of this telemetry data to Amazon CloudWatch Logs\n         in your account. This enables you to keep the telemetry data for more than 30 days, but it does incur\n         Amazon CloudWatch Logs charges.</p>\n         <p>If you omit this parameter, the default is <code>false</code>.</p>"}))
    CreateAppMonitorInput.add_member(:custom_events, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomEvents, location_name: 'CustomEvents', traits: {"smithy.api#documentation" => "<p>Specifies whether this app monitor allows the web client to define and send\n         custom events. If you omit this parameter, custom events are <code>DISABLED</code>.</p>\n         <p>For more information about custom events, see \n         <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-custom-events.html\">Send custom events</a>.</p>"}))
    CreateAppMonitorInput.add_member(:deobfuscation_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DeobfuscationConfiguration, location_name: 'DeobfuscationConfiguration', traits: {"smithy.api#documentation" => "<p>\n         A structure that contains the configuration for how an app monitor can deobfuscate stack traces.\n      </p>"}))
    CreateAppMonitorInput.type = Types::CreateAppMonitorInput
    CreateAppMonitorOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique ID of the new app monitor.</p>"}))
    CreateAppMonitorOutput.type = Types::CreateAppMonitorOutput
    CustomEvents.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomEventsStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Specifies whether this app monitor allows the web client to define and send\n         custom events. The default is for custom events to be <code>DISABLED</code>.</p>"}))
    CustomEvents.type = Types::CustomEvents
    CwLog.add_member(:cw_log_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'CwLogEnabled', traits: {"smithy.api#documentation" => "<p>Indicated whether the app monitor stores copies of the data\n         that RUM collects in CloudWatch Logs.</p>"}))
    CwLog.add_member(:cw_log_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'CwLogGroup', traits: {"smithy.api#documentation" => "<p>The name of the log group where the copies are stored.</p>"}))
    CwLog.type = Types::CwLog
    DataStorage.add_member(:cw_log, Smithy::Schema::Shapes::ShapeRef.new(shape: CwLog, location_name: 'CwLog', traits: {"smithy.api#documentation" => "<p>A structure that contains the information about whether the app monitor stores copies of the data\n         that RUM collects in CloudWatch Logs. If it does, this structure also contains the name of the log group.</p>"}))
    DataStorage.type = Types::DataStorage
    DeleteAppMonitorInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the app monitor to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAppMonitorInput.type = Types::DeleteAppMonitorInput
    DeleteAppMonitorOutput.type = Types::DeleteAppMonitorOutput
    DeleteResourcePolicyRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The app monitor that you want to remove the resource policy from.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResourcePolicyRequest.add_member(:policy_revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: 'PolicyRevisionId', traits: {"smithy.api#documentation" => "<p>Specifies a specific policy revision to delete. Provide a <code>PolicyRevisionId</code> to ensure an atomic delete operation. \n         If the revision ID that you provide doesn't match the latest policy revision ID, the request will be rejected with an <code>InvalidPolicyRevisionIdException</code> error.</p>", "smithy.api#httpQuery" => "policyRevisionId"}))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteResourcePolicyResponse.add_member(:policy_revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: 'PolicyRevisionId', traits: {"smithy.api#documentation" => "<p>The revision ID of the policy that was removed, if it had one.</p>"}))
    DeleteResourcePolicyResponse.type = Types::DeleteResourcePolicyResponse
    DeleteRumMetricsDestinationInput.add_member(:app_monitor_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'AppMonitorName', traits: {"smithy.api#documentation" => "<p>The name of the app monitor that is sending metrics to the destination that you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Name"}))
    DeleteRumMetricsDestinationInput.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDestination, location_name: 'Destination', traits: {"smithy.api#documentation" => "<p>The type of destination to delete. Valid values are <code>CloudWatch</code> and <code>Evidently</code>.</p>", "smithy.api#httpQuery" => "destination", "smithy.api#required" => {}}))
    DeleteRumMetricsDestinationInput.add_member(:destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationArn, location_name: 'DestinationArn', traits: {"smithy.api#documentation" => "<p>This parameter is required if <code>Destination</code> is <code>Evidently</code>. If <code>Destination</code> is \n         <code>CloudWatch</code>, do not use this parameter. This parameter\n         specifies the ARN of the Evidently experiment that corresponds to the destination to delete.</p>", "smithy.api#httpQuery" => "destinationArn"}))
    DeleteRumMetricsDestinationInput.type = Types::DeleteRumMetricsDestinationInput
    DeleteRumMetricsDestinationOutput.type = Types::DeleteRumMetricsDestinationOutput
    DeobfuscationConfiguration.add_member(:java_script_source_maps, Smithy::Schema::Shapes::ShapeRef.new(shape: JavaScriptSourceMaps, location_name: 'JavaScriptSourceMaps', traits: {"smithy.api#documentation" => "<p>\n         A structure that contains the configuration for how an app monitor can unminify JavaScript error stack traces using source maps.\n      </p>"}))
    DeobfuscationConfiguration.type = Types::DeobfuscationConfiguration
    DimensionKeysMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionKey)
    DimensionKeysMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionName)
    EventDataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventData)
    FavoritePages.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    GetAppMonitorDataInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the app monitor that collected the data that you want to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAppMonitorDataInput.add_member(:time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeRange, location_name: 'TimeRange', traits: {"smithy.api#documentation" => "<p>A structure that defines the time range that you want to retrieve results from.</p>", "smithy.api#required" => {}}))
    GetAppMonitorDataInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryFilters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>An array of structures that you can use to filter the results to those that match one or\n         more sets of key-value pairs that you specify.</p>"}))
    GetAppMonitorDataInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxQueryResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of results to return in one operation. </p>"}))
    GetAppMonitorDataInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Use the token returned by the previous operation to request the next page of results.</p>"}))
    GetAppMonitorDataInput.type = Types::GetAppMonitorDataInput
    GetAppMonitorDataOutput.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataList, location_name: 'Events', traits: {"smithy.api#documentation" => "<p>The events that RUM collected that match your request.</p>"}))
    GetAppMonitorDataOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that you can use in a subsequent operation to retrieve the next set of\n         results.</p>"}))
    GetAppMonitorDataOutput.type = Types::GetAppMonitorDataOutput
    GetAppMonitorInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The app monitor to retrieve information for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAppMonitorInput.type = Types::GetAppMonitorInput
    GetAppMonitorOutput.add_member(:app_monitor, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitor, location_name: 'AppMonitor', traits: {"smithy.api#documentation" => "<p>A structure containing all the configuration information for the app monitor.</p>"}))
    GetAppMonitorOutput.type = Types::GetAppMonitorOutput
    GetResourcePolicyRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the app monitor that is associated with the resource-based policy that you want to view.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourcePolicyRequest.type = Types::GetResourcePolicyRequest
    GetResourcePolicyResponse.add_member(:policy_document, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'PolicyDocument', traits: {"smithy.api#documentation" => "<p>The JSON policy document that you requested.</p>"}))
    GetResourcePolicyResponse.add_member(:policy_revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: 'PolicyRevisionId', traits: {"smithy.api#documentation" => "<p>The revision ID information for this version of the policy document that you requested.</p>"}))
    GetResourcePolicyResponse.type = Types::GetResourcePolicyResponse
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#documentation" => "<p>The value of a parameter in the request caused an error.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    InvalidPolicyRevisionIdException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InvalidPolicyRevisionIdException.type = Types::InvalidPolicyRevisionIdException
    JavaScriptSourceMaps.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeobfuscationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>\n         Specifies whether JavaScript error stack traces should be unminified for this app monitor. The default is for JavaScript error stack trace unminification to be <code>DISABLED</code>.\n      </p>", "smithy.api#required" => {}}))
    JavaScriptSourceMaps.add_member(:s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: DeobfuscationS3Uri, location_name: 'S3Uri', traits: {"smithy.api#documentation" => "<p>\n         The S3Uri of the bucket or folder that stores the source map files. It is required if status is ENABLED.\n      </p>"}))
    JavaScriptSourceMaps.type = Types::JavaScriptSourceMaps
    ListAppMonitorsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in one operation. The default is 50. The maximum that you can \n      specify is 100.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAppMonitorsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Use the token returned by the previous operation to request the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAppMonitorsInput.type = Types::ListAppMonitorsInput
    ListAppMonitorsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that you can use in a subsequent operation to retrieve the next set of\n         results.</p>"}))
    ListAppMonitorsOutput.add_member(:app_monitor_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorSummaryList, location_name: 'AppMonitorSummaries', traits: {"smithy.api#documentation" => "<p>An array of structures that contain information about the returned app monitors.</p>"}))
    ListAppMonitorsOutput.type = Types::ListAppMonitorsOutput
    ListRumMetricsDestinationsInput.add_member(:app_monitor_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'AppMonitorName', traits: {"smithy.api#documentation" => "<p>The name of the app monitor associated with the destinations that you want to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Name"}))
    ListRumMetricsDestinationsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in one operation. The default is 50. The maximum that you can \n         specify is 100.</p>\n         <p>To retrieve the remaining results, make another call with the returned \n         <code>NextToken</code> value. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListRumMetricsDestinationsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Use the token returned by the previous operation to request the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListRumMetricsDestinationsInput.type = Types::ListRumMetricsDestinationsInput
    ListRumMetricsDestinationsOutput.add_member(:destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDestinationSummaryList, location_name: 'Destinations', traits: {"smithy.api#documentation" => "<p>The list of CloudWatch RUM extended metrics destinations associated with the app monitor that \n      you specified.</p>"}))
    ListRumMetricsDestinationsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that you can use in a subsequent operation to \n         retrieve the next set of results.</p>"}))
    ListRumMetricsDestinationsOutput.type = Types::ListRumMetricsDestinationsOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource that you want to see the tags of.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource that you are viewing.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of tag keys and values associated with the resource you specified.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    MalformedPolicyDocumentException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    MalformedPolicyDocumentException.type = Types::MalformedPolicyDocumentException
    MetricDefinition.add_member(:metric_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinitionId, location_name: 'MetricDefinitionId', traits: {"smithy.api#documentation" => "<p>The ID of this metric definition.</p>", "smithy.api#required" => {}}))
    MetricDefinition.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the metric that is defined in this structure.</p>", "smithy.api#required" => {}}))
    MetricDefinition.add_member(:value_key, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueKey, location_name: 'ValueKey', traits: {"smithy.api#documentation" => "<p>The field within the event object that the metric value is sourced from.</p>"}))
    MetricDefinition.add_member(:unit_label, Smithy::Schema::Shapes::ShapeRef.new(shape: UnitLabel, location_name: 'UnitLabel', traits: {"smithy.api#documentation" => "<p>Use this field only if you are sending this metric to CloudWatch. It defines\n         the CloudWatch metric unit that this metric is measured in. </p>"}))
    MetricDefinition.add_member(:dimension_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionKeysMap, location_name: 'DimensionKeys', traits: {"smithy.api#documentation" => "<p>This field is a map of field paths to dimension names. It defines the dimensions to associate with this\n         metric in CloudWatch The value of this field is used only if the metric destination is <code>CloudWatch</code>.\n         If the metric destination is <code>Evidently</code>, the value of <code>DimensionKeys</code> is ignored.</p>"}))
    MetricDefinition.add_member(:event_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: EventPattern, location_name: 'EventPattern', traits: {"smithy.api#documentation" => "<p>The pattern that defines the metric. RUM checks events that happen in a user's session\n      against the pattern, and events that match the pattern are sent to the metric destination.</p>\n         <p>If the metrics destination\n      is <code>CloudWatch</code> and the event\n      also matches a value in <code>DimensionKeys</code>, then the metric is published with the specified dimensions. </p>"}))
    MetricDefinition.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: 'Namespace', traits: {"smithy.api#documentation" => "<p>If this metric definition is for a custom metric instead of an extended metric, this field displays\n      the metric namespace that the custom metric is published to.</p>"}))
    MetricDefinition.type = Types::MetricDefinition
    MetricDefinitionIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinitionId)
    MetricDefinitionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name for the metric that is defined in this structure. For custom metrics, you can specify \n         any name that you like. For extended metrics, valid values are the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PerformanceNavigationDuration</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>PerformanceResourceDuration\n            </code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>NavigationSatisfiedTransaction</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>NavigationToleratedTransaction</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>NavigationFrustratedTransaction</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>WebVitalsCumulativeLayoutShift</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>WebVitalsFirstInputDelay</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>WebVitalsLargestContentfulPaint</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>JsErrorCount</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>HttpErrorCount</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>SessionCount</code>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    MetricDefinitionRequest.add_member(:value_key, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueKey, location_name: 'ValueKey', traits: {"smithy.api#documentation" => "<p>The field within the event object that the metric value is sourced from.</p>\n         <p>If you omit this field, a hardcoded value of 1 is pushed as the metric value. This is\n         useful if you want to count the number of events that the filter catches. </p>\n         <p>If this metric is sent to CloudWatch Evidently, this field will be passed to\n         Evidently raw. Evidently will handle data extraction from the event.</p>"}))
    MetricDefinitionRequest.add_member(:unit_label, Smithy::Schema::Shapes::ShapeRef.new(shape: UnitLabel, location_name: 'UnitLabel', traits: {"smithy.api#documentation" => "<p>The CloudWatch metric unit to use for this metric. If you omit this field, the metric\n      is recorded with no unit.</p>"}))
    MetricDefinitionRequest.add_member(:dimension_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionKeysMap, location_name: 'DimensionKeys', traits: {"smithy.api#documentation" => "<p>Use this field only if you are sending the metric to CloudWatch.</p>\n         <p>This field is a map of field paths to dimension names. It defines the dimensions to associate with this\n         metric in CloudWatch. For extended metrics, valid values for the entries in this field are the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>\"metadata.pageId\": \"PageId\"</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>\"metadata.browserName\": \"BrowserName\"</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>\"metadata.deviceType\": \"DeviceType\"</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>\"metadata.osName\": \"OSName\"</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>\"metadata.countryCode\": \"CountryCode\"</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>\"event_details.fileType\": \"FileType\"</code>\n               </p>\n            </li>\n         </ul>\n         <p> For both extended metrics and custom metrics, \n         all dimensions listed in this field\n         must also be included in <code>EventPattern</code>.</p>"}))
    MetricDefinitionRequest.add_member(:event_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: EventPattern, location_name: 'EventPattern', traits: {"smithy.api#documentation" => "<p>The pattern that defines the metric, specified as a JSON object. RUM checks events that happen in a user's session\n         against the pattern, and events that match the pattern are sent to the metric destination.</p>\n         <p>When you define extended metrics, the metric definition is not valid if <code>EventPattern</code>\n      is omitted.</p>\n         <p>Example event patterns:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>'{\n            \"event_type\": [\"com.amazon.rum.js_error_event\"],\n            \"metadata\": {\n            \"browserName\": [ \"Chrome\", \"Safari\" ], } }'</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>'{\n            \"event_type\": [\"com.amazon.rum.performance_navigation_event\"],\n            \"metadata\": {\n            \"browserName\": [ \"Chrome\", \"Firefox\" ]\n            },\n            \"event_details\": {\n            \"duration\": [{\n            \"numeric\": [ \"&lt;\", 2000 ]\n            }]\n            }\n            }'</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>'{\n            \"event_type\": [\"com.amazon.rum.performance_navigation_event\"],\n            \"metadata\": {\n            \"browserName\": [ \"Chrome\", \"Safari\" ],\n            \"countryCode\": [ \"US\" ]\n            },\n            \"event_details\": {\n            \"duration\": [{\n            \"numeric\": [ \"&gt;=\", 2000, \"&lt;\", 8000 ]\n            }]\n            }\n            }'</code>\n               </p>\n            </li>\n         </ul>\n         <p>If the metrics destination is <code>CloudWatch</code> and the event also matches a value\n         in <code>DimensionKeys</code>, then the metric is published with the specified dimensions. </p>"}))
    MetricDefinitionRequest.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: 'Namespace', traits: {"smithy.api#documentation" => "<p>If this structure is for a custom metric instead of an extended metrics, use this parameter to define the \n         metric namespace for that custom metric. Do not specify this parameter if this structure is for an extended metric.</p>\n         <p>You cannot use any string that starts with <code>AWS/</code> for your namespace.</p>"}))
    MetricDefinitionRequest.type = Types::MetricDefinitionRequest
    MetricDefinitions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinition)
    MetricDefinitionsRequest.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinitionRequest)
    MetricDestinationSummary.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDestination, location_name: 'Destination', traits: {"smithy.api#documentation" => "<p>Specifies whether the destination is <code>CloudWatch</code> or <code>Evidently</code>.</p>"}))
    MetricDestinationSummary.add_member(:destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationArn, location_name: 'DestinationArn', traits: {"smithy.api#documentation" => "<p>If the destination is <code>Evidently</code>, this specifies the ARN of the Evidently experiment that receives\n       the metrics.</p>"}))
    MetricDestinationSummary.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>This field appears only when the destination is <code>Evidently</code>. It specifies\n         the ARN of the IAM role that is used to write to the Evidently experiment that receives the metrics.</p>"}))
    MetricDestinationSummary.type = Types::MetricDestinationSummary
    MetricDestinationSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDestinationSummary)
    Pages.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Url)
    PolicyNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    PolicyNotFoundException.type = Types::PolicyNotFoundException
    PolicySizeLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    PolicySizeLimitExceededException.type = Types::PolicySizeLimitExceededException
    PutResourcePolicyRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the app monitor that you want to apply this resource-based policy to. To find the names of your app monitors, you can use\n         the <a href=\"https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_ListAppMonitors.html\">ListAppMonitors</a> operation.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:policy_document, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'PolicyDocument', traits: {"smithy.api#documentation" => "<p>The JSON to use as the resource policy. The document can be up to 4 KB in size. For more information about the contents and syntax \n         for this policy, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-resource-policies.html\">Using resource-based policies with CloudWatch RUM</a>.</p>", "smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:policy_revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: 'PolicyRevisionId', traits: {"smithy.api#documentation" => "<p>A string value that you can use to conditionally update your policy. You can provide the revision ID of your existing policy to make mutating requests against that policy.</p>\n         <p>When you assign a policy revision ID, then later requests about that policy will be rejected with an <code>InvalidPolicyRevisionIdException</code> error\n         if they don't provide the correct current revision ID.</p>"}))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.add_member(:policy_document, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'PolicyDocument', traits: {"smithy.api#documentation" => "<p>The JSON policy document that you specified.</p>"}))
    PutResourcePolicyResponse.add_member(:policy_revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: 'PolicyRevisionId', traits: {"smithy.api#documentation" => "<p>The policy revision ID information that you specified.</p>"}))
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    PutRumEventsInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the app monitor that is sending this data.</p>", "smithy.api#httpLabel" => {}, "smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$", "smithy.api#required" => {}}))
    PutRumEventsInput.add_member(:batch_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'BatchId', traits: {"smithy.api#documentation" => "<p>A unique identifier for this batch of RUM event data.</p>", "smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$", "smithy.api#required" => {}}))
    PutRumEventsInput.add_member(:app_monitor_details, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorDetails, location_name: 'AppMonitorDetails', traits: {"smithy.api#documentation" => "<p>A structure that contains information about the app monitor that collected this telemetry information.</p>", "smithy.api#required" => {}}))
    PutRumEventsInput.add_member(:user_details, Smithy::Schema::Shapes::ShapeRef.new(shape: UserDetails, location_name: 'UserDetails', traits: {"smithy.api#documentation" => "<p>A structure that contains information about the user session that this batch of events was collected from.</p>", "smithy.api#required" => {}}))
    PutRumEventsInput.add_member(:rum_events, Smithy::Schema::Shapes::ShapeRef.new(shape: RumEventList, location_name: 'RumEvents', traits: {"smithy.api#documentation" => "<p>An array of structures that contain the telemetry event data.</p>", "smithy.api#required" => {}}))
    PutRumEventsInput.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: Alias, location_name: 'Alias', traits: {"smithy.api#documentation" => "<p>If the app monitor uses a resource-based policy that requires <code>PutRumEvents</code> requests to specify a certain alias,\n         specify that alias here. This alias will be compared to the <code>rum:alias</code> context key in the resource-based policy.  For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-resource-policies.html\">Using resource-based policies with CloudWatch RUM</a>.</p>"}))
    PutRumEventsInput.type = Types::PutRumEventsInput
    PutRumEventsOutput.type = Types::PutRumEventsOutput
    PutRumMetricsDestinationInput.add_member(:app_monitor_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'AppMonitorName', traits: {"smithy.api#documentation" => "<p>The name of the CloudWatch RUM app monitor that will send the metrics.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Name"}))
    PutRumMetricsDestinationInput.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDestination, location_name: 'Destination', traits: {"smithy.api#documentation" => "<p>Defines the destination to send the metrics to. Valid values are <code>CloudWatch</code> and\n         <code>Evidently</code>. If\n         you specify <code>Evidently</code>, you must also specify the ARN of the CloudWatchEvidently experiment that is to \n         be the destination and an IAM role that has permission to write to the experiment.</p>", "smithy.api#required" => {}}))
    PutRumMetricsDestinationInput.add_member(:destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationArn, location_name: 'DestinationArn', traits: {"smithy.api#documentation" => "<p>Use this parameter only if <code>Destination</code> is <code>Evidently</code>. This parameter specifies\n      the ARN of the Evidently experiment that will receive the extended metrics.</p>"}))
    PutRumMetricsDestinationInput.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>This parameter is required if <code>Destination</code> is <code>Evidently</code>. If <code>Destination</code> is \n         <code>CloudWatch</code>, don't use this parameter.</p>\n         <p>This parameter specifies\n         the ARN of an IAM role that RUM will assume to write to the Evidently \n         experiment that you are sending metrics to. This role must have permission to write to that experiment.</p>\n         <p>If you specify this parameter, you must be signed on to a role that has <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html\">PassRole</a> permissions attached to it, to allow\n         the role to be passed. The <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/auth-and-access-control-cw.html#managed-policies-cloudwatch-RUM\">\n            CloudWatchAmazonCloudWatchRUMFullAccess</a>\n          policy doesn't include <code>PassRole</code>\n         permissions.</p>"}))
    PutRumMetricsDestinationInput.type = Types::PutRumMetricsDestinationInput
    PutRumMetricsDestinationOutput.type = Types::PutRumMetricsDestinationOutput
    QueryFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryFilterKey, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of a key to search for. \n      The filter returns only the events that match the <code>Name</code>\n         and <code>Values</code> that you specify.\n      </p>\n         <p>Valid values for <code>Name</code> are <code>Browser</code> | <code>Device</code> | <code>Country</code> |\n         <code>Page</code> | <code>OS</code> | <code>EventType</code> | <code>Invert</code>\n         </p>"}))
    QueryFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryFilterValueList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>The values of the <code>Name</code> that are to be be included in the returned results.</p>"}))
    QueryFilter.type = Types::QueryFilter
    QueryFilterValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryFilterValue)
    QueryFilters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryFilter)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceName', traits: {"smithy.api#documentation" => "<p>The name of the resource that is associated with the error.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource that is associated with the error.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RumEvent.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>A unique ID for this event.</p>", "smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$", "smithy.api#required" => {}}))
    RumEvent.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'timestamp', traits: {"smithy.api#documentation" => "<p>The exact time that this event occurred.</p>", "smithy.api#required" => {}}))
    RumEvent.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The JSON schema that denotes the type of event this is, such as a page load or a new session.</p>", "smithy.api#required" => {}}))
    RumEvent.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: JsonValue, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>Metadata about this event, which contains a JSON serialization of the identity of the user for\n         this session. The user information comes from information such as the HTTP user-agent request header\n         and document interface.</p>"}))
    RumEvent.add_member(:details, Smithy::Schema::Shapes::ShapeRef.new(shape: JsonValue, location_name: 'details', traits: {"smithy.api#documentation" => "<p>A string containing details about the event.</p>", "smithy.api#required" => {}}))
    RumEvent.type = Types::RumEvent
    RumEventList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RumEvent)
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the CloudWatch RUM resource that you're adding tags to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of key-value pairs to associate with the resource.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    Telemetries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Telemetry)
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>The ID of the service that is associated with the error.</p>"}))
    ThrottlingException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode', traits: {"smithy.api#documentation" => "<p>The ID of the service quota that was exceeded.</p>"}))
    ThrottlingException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#documentation" => "<p>The value of a parameter in the request caused an error.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    TimeRange.add_member(:after, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTimestamp, location_name: 'After', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The beginning of the time range to retrieve performance events from.</p>", "smithy.api#required" => {}}))
    TimeRange.add_member(:before, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTimestamp, location_name: 'Before', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The end of the time range to retrieve performance events from. If you omit this, the time \n      range extends to the time that this operation is performed.</p>"}))
    TimeRange.type = Types::TimeRange
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the CloudWatch RUM resource that you're removing tags from.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The list of tag keys to remove from the resource.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateAppMonitorInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the app monitor to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAppMonitorInput.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorDomain, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>The top-level internet domain name for which your application has administrative authority.</p>"}))
    UpdateAppMonitorInput.add_member(:domain_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorDomainList, location_name: 'DomainList', traits: {"smithy.api#documentation" => "<p>\n         List the domain names for which your application has administrative authority. The <code>UpdateAppMonitor</code> allows either the domain or the domain list.\n      </p>"}))
    UpdateAppMonitorInput.add_member(:app_monitor_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorConfiguration, location_name: 'AppMonitorConfiguration', traits: {"smithy.api#documentation" => "<p>A structure that contains much of the configuration data for the app monitor. If you are using \n         Amazon Cognito for authorization, you must include this structure in your request, and it must include the ID of the \n         Amazon Cognito identity pool to use for authorization. If you don't include <code>AppMonitorConfiguration</code>, you must set up your own \n         authorization method. For more information, see \n         <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-get-started-authorization.html\">Authorize your application\n            to send data to Amazon Web Services</a>.</p>"}))
    UpdateAppMonitorInput.add_member(:cw_log_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'CwLogEnabled', traits: {"smithy.api#documentation" => "<p>Data collected by RUM is kept by RUM for 30 days and then deleted. This parameter specifies whether RUM \n         sends a copy of this telemetry data to Amazon CloudWatch Logs\n         in your account. This enables you to keep the telemetry data for more than 30 days, but it does incur\n         Amazon CloudWatch Logs charges.</p>"}))
    UpdateAppMonitorInput.add_member(:custom_events, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomEvents, location_name: 'CustomEvents', traits: {"smithy.api#documentation" => "<p>Specifies whether this app monitor allows the web client to define and send\n         custom events. The default is for custom events to be <code>DISABLED</code>.</p>\n         <p>For more information about custom events, see \n         <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-custom-events.html\">Send custom events</a>.</p>"}))
    UpdateAppMonitorInput.add_member(:deobfuscation_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DeobfuscationConfiguration, location_name: 'DeobfuscationConfiguration', traits: {"smithy.api#documentation" => "<p>\n         A structure that contains the configuration for how an app monitor can deobfuscate stack traces.\n      </p>"}))
    UpdateAppMonitorInput.type = Types::UpdateAppMonitorInput
    UpdateAppMonitorOutput.type = Types::UpdateAppMonitorOutput
    UpdateRumMetricDefinitionInput.add_member(:app_monitor_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AppMonitorName, location_name: 'AppMonitorName', traits: {"smithy.api#documentation" => "<p>The name of the CloudWatch RUM app monitor that sends these metrics.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Name"}))
    UpdateRumMetricDefinitionInput.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDestination, location_name: 'Destination', traits: {"smithy.api#documentation" => "<p>The destination to send the metrics to. Valid values are <code>CloudWatch</code> and <code>Evidently</code>. If\n         you specify <code>Evidently</code>, you must also specify the ARN of the CloudWatchEvidently experiment \n         that will receive\n         the metrics and an IAM role that has permission to write to the experiment.</p>", "smithy.api#required" => {}}))
    UpdateRumMetricDefinitionInput.add_member(:destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationArn, location_name: 'DestinationArn', traits: {"smithy.api#documentation" => "<p>This parameter is required if <code>Destination</code> is <code>Evidently</code>. If <code>Destination</code> is \n         <code>CloudWatch</code>, do not use this parameter.</p>\n         <p>This parameter specifies the ARN of the Evidently experiment that is to receive the metrics. You must have already defined this \n         experiment as a valid destination. For more information, see <a href=\"https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_PutRumMetricsDestination.html\">PutRumMetricsDestination</a>.</p>"}))
    UpdateRumMetricDefinitionInput.add_member(:metric_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinitionRequest, location_name: 'MetricDefinition', traits: {"smithy.api#documentation" => "<p>A structure that contains the new definition that you want to use for this metric.</p>", "smithy.api#required" => {}}))
    UpdateRumMetricDefinitionInput.add_member(:metric_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinitionId, location_name: 'MetricDefinitionId', traits: {"smithy.api#documentation" => "<p>The ID of the metric definition to update.</p>", "smithy.api#required" => {}}))
    UpdateRumMetricDefinitionInput.type = Types::UpdateRumMetricDefinitionInput
    UpdateRumMetricDefinitionOutput.type = Types::UpdateRumMetricDefinitionOutput
    UserDetails.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The ID of the user for this user session. This ID is generated by RUM and does not include any \n      personally identifiable information about the user.</p>", "smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$"}))
    UserDetails.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The session ID that the performance events are from.</p>", "smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$"}))
    UserDetails.type = Types::UserDetails
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    RUM = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.rum#RUM"
      service.name = "RUM"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "RUM", "arnNamespace" => "rum", "serviceName" => "rum"}, "aws.auth#sigv4" => {"name" => "rum"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "X-Amz-Date", "Authorization", "Date", "X-Amz-Security-Token", "X-Amz-Targe", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id", "x-amzn-errormessage", "x-amz-apigw-id", "date"]}, "smithy.api#title" => "CloudWatch RUM"}
      service.add_operation(:batch_create_rum_metric_definitions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#BatchCreateRumMetricDefinitions"
        operation.name = "BatchCreateRumMetricDefinitions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateRumMetricDefinitionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateRumMetricDefinitionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/rum/latest/developerguide/BatchCreateRumMetricDefinitions.html"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/rummetrics/{AppMonitorName}/metrics"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_delete_rum_metric_definitions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#BatchDeleteRumMetricDefinitions"
        operation.name = "BatchDeleteRumMetricDefinitions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteRumMetricDefinitionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteRumMetricDefinitionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/rum/latest/developerguide/BatchDeleteRumMetricDefinitions.html"}, "smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/rummetrics/{AppMonitorName}/metrics"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_get_rum_metric_definitions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#BatchGetRumMetricDefinitions"
        operation.name = "BatchGetRumMetricDefinitions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetRumMetricDefinitionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetRumMetricDefinitionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/rum/latest/developerguide/BatchGetRumMetricDefinitions.html"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/rummetrics/{AppMonitorName}/metrics"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::BatchGetRumMetricDefinitions.new
      end)
      service.add_operation(:create_app_monitor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#CreateAppMonitor"
        operation.name = "CreateAppMonitor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppMonitorInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppMonitorOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/rum/latest/developerguide/CreateAppMonitor.html"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/appmonitor"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_app_monitor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#DeleteAppMonitor"
        operation.name = "DeleteAppMonitor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppMonitorInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppMonitorOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/appmonitor/{Name}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyRevisionIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/appmonitor/{Name}/policy"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_rum_metrics_destination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#DeleteRumMetricsDestination"
        operation.name = "DeleteRumMetricsDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRumMetricsDestinationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRumMetricsDestinationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/rummetrics/{AppMonitorName}/metricsdestination"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_app_monitor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#GetAppMonitor"
        operation.name = "GetAppMonitor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppMonitorInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppMonitorOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/appmonitor/{Name}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_app_monitor_data, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#GetAppMonitorData"
        operation.name = "GetAppMonitorData"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppMonitorDataInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppMonitorDataOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/appmonitor/{Name}/data"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetAppMonitorData.new
      end)
      service.add_operation(:get_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/appmonitor/{Name}/policy"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_app_monitors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#ListAppMonitors"
        operation.name = "ListAppMonitors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAppMonitorsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAppMonitorsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/appmonitors"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAppMonitors.new
      end)
      service.add_operation(:list_rum_metrics_destinations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#ListRumMetricsDestinations"
        operation.name = "ListRumMetricsDestinations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRumMetricsDestinationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRumMetricsDestinationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/rummetrics/{AppMonitorName}/metricsdestination"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRumMetricsDestinations.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:put_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyRevisionIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedPolicyDocumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicySizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/appmonitor/{Name}/policy"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_rum_events, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#PutRumEvents"
        operation.name = "PutRumEvents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutRumEventsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutRumEventsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "dataplane."}, "smithy.api#http" => {"method" => "POST", "uri" => "/appmonitors/{Id}/", "code" => 200}}
      end)
      service.add_operation(:put_rum_metrics_destination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#PutRumMetricsDestination"
        operation.name = "PutRumMetricsDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutRumMetricsDestinationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutRumMetricsDestinationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/rum/latest/developerguide/PutRumMetricsDestination.html"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/rummetrics/{AppMonitorName}/metricsdestination"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/tags/{ResourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_app_monitor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#UpdateAppMonitor"
        operation.name = "UpdateAppMonitor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAppMonitorInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAppMonitorOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/appmonitor/{Name}"}}
      end)
      service.add_operation(:update_rum_metric_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rum#UpdateRumMetricDefinition"
        operation.name = "UpdateRumMetricDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRumMetricDefinitionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRumMetricDefinitionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/rum/latest/developerguide/UpdateRumMetricDefinitions.html"}, "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/rummetrics/{AppMonitorName}/metrics"}, "smithy.api#idempotent" => {}}
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
