# frozen_string_literal: true

# This is generated code!

module Aws::TimestreamQuery
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#AccessDeniedException", name: "AccessDeniedException", traits: {"aws.protocols#awsQueryError" => {"code" => "AccessDenied", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountSettingsNotificationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#AccountSettingsNotificationConfiguration", name: "AccountSettingsNotificationConfiguration")
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamquery#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    CancelQueryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#CancelQueryRequest", name: "CancelQueryRequest")
    CancelQueryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#CancelQueryResponse", name: "CancelQueryResponse")
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamquery#ClientRequestToken", name: "ClientRequestToken", traits: {"smithy.api#length" => {"min" => 32, "max" => 128}, "smithy.api#sensitive" => {}})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamquery#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 32, "max" => 128}, "smithy.api#sensitive" => {}})
    ColumnInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#ColumnInfo", name: "ColumnInfo")
    ColumnInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreamquery#ColumnInfoList", name: "ColumnInfoList")
    ComputeMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreamquery#ComputeMode", name: "ComputeMode")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateScheduledQueryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#CreateScheduledQueryRequest", name: "CreateScheduledQueryRequest")
    CreateScheduledQueryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#CreateScheduledQueryResponse", name: "CreateScheduledQueryResponse")
    Datum = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#Datum", name: "Datum")
    DatumList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreamquery#DatumList", name: "DatumList")
    DeleteScheduledQueryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#DeleteScheduledQueryRequest", name: "DeleteScheduledQueryRequest")
    DescribeAccountSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#DescribeAccountSettingsRequest", name: "DescribeAccountSettingsRequest")
    DescribeAccountSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#DescribeAccountSettingsResponse", name: "DescribeAccountSettingsResponse")
    DescribeEndpointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#DescribeEndpointsRequest", name: "DescribeEndpointsRequest")
    DescribeEndpointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#DescribeEndpointsResponse", name: "DescribeEndpointsResponse")
    DescribeScheduledQueryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#DescribeScheduledQueryRequest", name: "DescribeScheduledQueryRequest")
    DescribeScheduledQueryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#DescribeScheduledQueryResponse", name: "DescribeScheduledQueryResponse")
    DimensionMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#DimensionMapping", name: "DimensionMapping")
    DimensionMappingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreamquery#DimensionMappingList", name: "DimensionMappingList")
    DimensionValueType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreamquery#DimensionValueType", name: "DimensionValueType")
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.timestreamquery#Double", name: "Double", traits: {"smithy.api#default" => 0})
    Endpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#Endpoint", name: "Endpoint")
    Endpoints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreamquery#Endpoints", name: "Endpoints")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamquery#ErrorMessage", name: "ErrorMessage")
    ErrorReportConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#ErrorReportConfiguration", name: "ErrorReportConfiguration")
    ErrorReportLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#ErrorReportLocation", name: "ErrorReportLocation")
    ExecuteScheduledQueryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#ExecuteScheduledQueryRequest", name: "ExecuteScheduledQueryRequest")
    ExecutionStats = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#ExecutionStats", name: "ExecutionStats")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidEndpointException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#InvalidEndpointException", name: "InvalidEndpointException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 421})
    LastUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#LastUpdate", name: "LastUpdate")
    LastUpdateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreamquery#LastUpdateStatus", name: "LastUpdateStatus")
    ListScheduledQueriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#ListScheduledQueriesRequest", name: "ListScheduledQueriesRequest")
    ListScheduledQueriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#ListScheduledQueriesResponse", name: "ListScheduledQueriesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.timestreamquery#Long", name: "Long", traits: {"smithy.api#default" => 0})
    MaxQueryCapacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.timestreamquery#MaxQueryCapacity", name: "MaxQueryCapacity")
    MaxQueryResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.timestreamquery#MaxQueryResults", name: "MaxQueryResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MaxScheduledQueriesResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.timestreamquery#MaxScheduledQueriesResults", name: "MaxScheduledQueriesResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MaxTagsForResourceResult = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.timestreamquery#MaxTagsForResourceResult", name: "MaxTagsForResourceResult", traits: {"smithy.api#range" => {"min" => 1, "max" => 200}})
    MeasureValueType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreamquery#MeasureValueType", name: "MeasureValueType")
    MixedMeasureMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#MixedMeasureMapping", name: "MixedMeasureMapping")
    MixedMeasureMappingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreamquery#MixedMeasureMappingList", name: "MixedMeasureMappingList", traits: {"smithy.api#length" => {"min" => 1}})
    MultiMeasureAttributeMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#MultiMeasureAttributeMapping", name: "MultiMeasureAttributeMapping")
    MultiMeasureAttributeMappingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreamquery#MultiMeasureAttributeMappingList", name: "MultiMeasureAttributeMappingList", traits: {"smithy.api#length" => {"min" => 1}})
    MultiMeasureMappings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#MultiMeasureMappings", name: "MultiMeasureMappings")
    NextScheduledQueriesResultsToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamquery#NextScheduledQueriesResultsToken", name: "NextScheduledQueriesResultsToken")
    NextTagsForResourceResultsToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamquery#NextTagsForResourceResultsToken", name: "NextTagsForResourceResultsToken")
    NotificationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#NotificationConfiguration", name: "NotificationConfiguration")
    NullableBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.timestreamquery#NullableBoolean", name: "NullableBoolean")
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamquery#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ParameterMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#ParameterMapping", name: "ParameterMapping")
    ParameterMappingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreamquery#ParameterMappingList", name: "ParameterMappingList")
    PartitionKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamquery#PartitionKey", name: "PartitionKey")
    PartitionKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreamquery#PartitionKeyList", name: "PartitionKeyList")
    PrepareQueryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#PrepareQueryRequest", name: "PrepareQueryRequest")
    PrepareQueryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#PrepareQueryResponse", name: "PrepareQueryResponse")
    ProvisionedCapacityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#ProvisionedCapacityRequest", name: "ProvisionedCapacityRequest")
    ProvisionedCapacityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#ProvisionedCapacityResponse", name: "ProvisionedCapacityResponse")
    QueryComputeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#QueryComputeRequest", name: "QueryComputeRequest")
    QueryComputeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#QueryComputeResponse", name: "QueryComputeResponse")
    QueryExecutionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#QueryExecutionException", name: "QueryExecutionException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    QueryId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamquery#QueryId", name: "QueryId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    QueryInsights = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#QueryInsights", name: "QueryInsights")
    QueryInsightsMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreamquery#QueryInsightsMode", name: "QueryInsightsMode")
    QueryInsightsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#QueryInsightsResponse", name: "QueryInsightsResponse")
    QueryPricingModel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreamquery#QueryPricingModel", name: "QueryPricingModel")
    QueryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#QueryRequest", name: "QueryRequest")
    QueryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#QueryResponse", name: "QueryResponse")
    QuerySpatialCoverage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#QuerySpatialCoverage", name: "QuerySpatialCoverage")
    QuerySpatialCoverageMax = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#QuerySpatialCoverageMax", name: "QuerySpatialCoverageMax")
    QueryStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#QueryStatus", name: "QueryStatus")
    QueryString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamquery#QueryString", name: "QueryString", traits: {"smithy.api#length" => {"min" => 1, "max" => 262144}, "smithy.api#sensitive" => {}})
    QueryTCU = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.timestreamquery#QueryTCU", name: "QueryTCU")
    QueryTemporalRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#QueryTemporalRange", name: "QueryTemporalRange")
    QueryTemporalRangeMax = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#QueryTemporalRangeMax", name: "QueryTemporalRangeMax")
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamquery#ResourceName", name: "ResourceName")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Row = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#Row", name: "Row")
    RowList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreamquery#RowList", name: "RowList")
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamquery#S3BucketName", name: "S3BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$"})
    S3Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#S3Configuration", name: "S3Configuration")
    S3EncryptionOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreamquery#S3EncryptionOption", name: "S3EncryptionOption")
    S3ObjectKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamquery#S3ObjectKey", name: "S3ObjectKey")
    S3ObjectKeyPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamquery#S3ObjectKeyPrefix", name: "S3ObjectKeyPrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 896}, "smithy.api#pattern" => "^[a-zA-Z0-9|!\\-_*'\\(\\)]([a-zA-Z0-9]|[!\\-_*'\\(\\)\\/.])+$"})
    S3ReportLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#S3ReportLocation", name: "S3ReportLocation")
    ScalarMeasureValueType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreamquery#ScalarMeasureValueType", name: "ScalarMeasureValueType")
    ScalarType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreamquery#ScalarType", name: "ScalarType")
    ScalarValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamquery#ScalarValue", name: "ScalarValue")
    ScheduleConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#ScheduleConfiguration", name: "ScheduleConfiguration")
    ScheduleExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamquery#ScheduleExpression", name: "ScheduleExpression", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ScheduledQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#ScheduledQuery", name: "ScheduledQuery")
    ScheduledQueryDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#ScheduledQueryDescription", name: "ScheduledQueryDescription")
    ScheduledQueryInsights = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#ScheduledQueryInsights", name: "ScheduledQueryInsights")
    ScheduledQueryInsightsMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreamquery#ScheduledQueryInsightsMode", name: "ScheduledQueryInsightsMode")
    ScheduledQueryInsightsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#ScheduledQueryInsightsResponse", name: "ScheduledQueryInsightsResponse")
    ScheduledQueryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreamquery#ScheduledQueryList", name: "ScheduledQueryList")
    ScheduledQueryName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamquery#ScheduledQueryName", name: "ScheduledQueryName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9|!\\-_*'\\(\\)]([a-zA-Z0-9]|[!\\-_*'\\(\\)\\/.])+$"})
    ScheduledQueryRunStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreamquery#ScheduledQueryRunStatus", name: "ScheduledQueryRunStatus")
    ScheduledQueryRunSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#ScheduledQueryRunSummary", name: "ScheduledQueryRunSummary")
    ScheduledQueryRunSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreamquery#ScheduledQueryRunSummaryList", name: "ScheduledQueryRunSummaryList")
    ScheduledQueryState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreamquery#ScheduledQueryState", name: "ScheduledQueryState")
    SchemaName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamquery#SchemaName", name: "SchemaName")
    SelectColumn = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#SelectColumn", name: "SelectColumn")
    SelectColumnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreamquery#SelectColumnList", name: "SelectColumnList")
    ServiceErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamquery#ServiceErrorMessage", name: "ServiceErrorMessage")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SnsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#SnsConfiguration", name: "SnsConfiguration")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamquery#String", name: "String")
    StringValue2048 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamquery#StringValue2048", name: "StringValue2048", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamquery#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreamquery#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreamquery#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamquery#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#TargetConfiguration", name: "TargetConfiguration")
    TargetDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#TargetDestination", name: "TargetDestination")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Time = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.timestreamquery#Time", name: "Time")
    TimeSeriesDataPoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#TimeSeriesDataPoint", name: "TimeSeriesDataPoint")
    TimeSeriesDataPointList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreamquery#TimeSeriesDataPointList", name: "TimeSeriesDataPointList")
    Timestamp = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamquery#Timestamp", name: "Timestamp")
    TimestreamConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#TimestreamConfiguration", name: "TimestreamConfiguration")
    TimestreamDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#TimestreamDestination", name: "TimestreamDestination")
    Type = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#Type", name: "Type")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateAccountSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#UpdateAccountSettingsRequest", name: "UpdateAccountSettingsRequest")
    UpdateAccountSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#UpdateAccountSettingsResponse", name: "UpdateAccountSettingsResponse")
    UpdateScheduledQueryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#UpdateScheduledQueryRequest", name: "UpdateScheduledQueryRequest")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamquery#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceErrorMessage, location_name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountSettingsNotificationConfiguration.add_member(:sns_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnsConfiguration, location_name: "SnsConfiguration"))
    AccountSettingsNotificationConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "RoleArn", traits: {"smithy.api#required" => {}}))
    AccountSettingsNotificationConfiguration.type = Types::AccountSettingsNotificationConfiguration
    CancelQueryRequest.add_member(:query_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryId, location_name: "QueryId", traits: {"smithy.api#required" => {}}))
    CancelQueryRequest.type = Types::CancelQueryRequest
    CancelQueryResponse.add_member(:cancellation_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CancellationMessage"))
    CancelQueryResponse.type = Types::CancelQueryResponse
    ColumnInfo.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    ColumnInfo.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: "Type", traits: {"smithy.api#required" => {}}))
    ColumnInfo.type = Types::ColumnInfo
    ColumnInfoList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnInfo)
    ComputeMode.add_member(:on_demand, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ON_DEMAND", traits: {"smithy.api#enumValue" => "ON_DEMAND"}))
    ComputeMode.add_member(:provisioned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROVISIONED", traits: {"smithy.api#enumValue" => "PROVISIONED"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConflictException.type = Types::ConflictException
    CreateScheduledQueryRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateScheduledQueryRequest.add_member(:query_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: "QueryString", traits: {"smithy.api#required" => {}}))
    CreateScheduledQueryRequest.add_member(:schedule_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleConfiguration, location_name: "ScheduleConfiguration", traits: {"smithy.api#required" => {}}))
    CreateScheduledQueryRequest.add_member(:notification_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfiguration, location_name: "NotificationConfiguration", traits: {"smithy.api#required" => {}}))
    CreateScheduledQueryRequest.add_member(:target_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetConfiguration, location_name: "TargetConfiguration"))
    CreateScheduledQueryRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateScheduledQueryRequest.add_member(:scheduled_query_execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ScheduledQueryExecutionRoleArn", traits: {"smithy.api#required" => {}}))
    CreateScheduledQueryRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateScheduledQueryRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringValue2048, location_name: "KmsKeyId"))
    CreateScheduledQueryRequest.add_member(:error_report_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorReportConfiguration, location_name: "ErrorReportConfiguration", traits: {"smithy.api#required" => {}}))
    CreateScheduledQueryRequest.type = Types::CreateScheduledQueryRequest
    CreateScheduledQueryResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "Arn", traits: {"smithy.api#required" => {}}))
    CreateScheduledQueryResponse.type = Types::CreateScheduledQueryResponse
    Datum.add_member(:scalar_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalarValue, location_name: "ScalarValue"))
    Datum.add_member(:time_series_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeSeriesDataPointList, location_name: "TimeSeriesValue"))
    Datum.add_member(:array_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatumList, location_name: "ArrayValue"))
    Datum.add_member(:row_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Row, location_name: "RowValue"))
    Datum.add_member(:null_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "NullValue"))
    Datum.type = Types::Datum
    DatumList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Datum)
    DeleteScheduledQueryRequest.add_member(:scheduled_query_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ScheduledQueryArn", traits: {"smithy.api#required" => {}}))
    DeleteScheduledQueryRequest.type = Types::DeleteScheduledQueryRequest
    DescribeAccountSettingsRequest.type = Types::DescribeAccountSettingsRequest
    DescribeAccountSettingsResponse.add_member(:max_query_tcu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxQueryCapacity, location_name: "MaxQueryTCU"))
    DescribeAccountSettingsResponse.add_member(:query_pricing_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryPricingModel, location_name: "QueryPricingModel"))
    DescribeAccountSettingsResponse.add_member(:query_compute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryComputeResponse, location_name: "QueryCompute"))
    DescribeAccountSettingsResponse.type = Types::DescribeAccountSettingsResponse
    DescribeEndpointsRequest.type = Types::DescribeEndpointsRequest
    DescribeEndpointsResponse.add_member(:endpoints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoints, location_name: "Endpoints", traits: {"smithy.api#required" => {}}))
    DescribeEndpointsResponse.type = Types::DescribeEndpointsResponse
    DescribeScheduledQueryRequest.add_member(:scheduled_query_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ScheduledQueryArn", traits: {"smithy.api#required" => {}}))
    DescribeScheduledQueryRequest.type = Types::DescribeScheduledQueryRequest
    DescribeScheduledQueryResponse.add_member(:scheduled_query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryDescription, location_name: "ScheduledQuery", traits: {"smithy.api#required" => {}}))
    DescribeScheduledQueryResponse.type = Types::DescribeScheduledQueryResponse
    DimensionMapping.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    DimensionMapping.add_member(:dimension_value_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionValueType, location_name: "DimensionValueType", traits: {"smithy.api#required" => {}}))
    DimensionMapping.type = Types::DimensionMapping
    DimensionMappingList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionMapping)
    DimensionValueType.add_member(:varchar, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VARCHAR", traits: {"smithy.api#enumValue" => "VARCHAR"}))
    Endpoint.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Address", traits: {"smithy.api#required" => {}}))
    Endpoint.add_member(:cache_period_in_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "CachePeriodInMinutes", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    Endpoint.type = Types::Endpoint
    Endpoints.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint)
    ErrorReportConfiguration.add_member(:s3_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Configuration, location_name: "S3Configuration", traits: {"smithy.api#required" => {}}))
    ErrorReportConfiguration.type = Types::ErrorReportConfiguration
    ErrorReportLocation.add_member(:s3_report_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ReportLocation, location_name: "S3ReportLocation"))
    ErrorReportLocation.type = Types::ErrorReportLocation
    ExecuteScheduledQueryRequest.add_member(:scheduled_query_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ScheduledQueryArn", traits: {"smithy.api#required" => {}}))
    ExecuteScheduledQueryRequest.add_member(:invocation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "InvocationTime", traits: {"smithy.api#required" => {}}))
    ExecuteScheduledQueryRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    ExecuteScheduledQueryRequest.add_member(:query_insights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryInsights, location_name: "QueryInsights"))
    ExecuteScheduledQueryRequest.type = Types::ExecuteScheduledQueryRequest
    ExecutionStats.add_member(:execution_time_in_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "ExecutionTimeInMillis", traits: {"smithy.api#default" => 0}))
    ExecutionStats.add_member(:data_writes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "DataWrites", traits: {"smithy.api#default" => 0}))
    ExecutionStats.add_member(:bytes_metered, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "BytesMetered", traits: {"smithy.api#default" => 0}))
    ExecutionStats.add_member(:cumulative_bytes_scanned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "CumulativeBytesScanned", traits: {"smithy.api#default" => 0}))
    ExecutionStats.add_member(:records_ingested, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "RecordsIngested", traits: {"smithy.api#default" => 0}))
    ExecutionStats.add_member(:query_result_rows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "QueryResultRows", traits: {"smithy.api#default" => 0}))
    ExecutionStats.type = Types::ExecutionStats
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerException.type = Types::InternalServerException
    InvalidEndpointException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidEndpointException.type = Types::InvalidEndpointException
    LastUpdate.add_member(:target_query_tcu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTCU, location_name: "TargetQueryTCU"))
    LastUpdate.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdateStatus, location_name: "Status"))
    LastUpdate.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    LastUpdate.type = Types::LastUpdate
    LastUpdateStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    LastUpdateStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    LastUpdateStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ListScheduledQueriesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxScheduledQueriesResults, location_name: "MaxResults"))
    ListScheduledQueriesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextScheduledQueriesResultsToken, location_name: "NextToken"))
    ListScheduledQueriesRequest.type = Types::ListScheduledQueriesRequest
    ListScheduledQueriesResponse.add_member(:scheduled_queries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryList, location_name: "ScheduledQueries", traits: {"smithy.api#required" => {}}))
    ListScheduledQueriesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextScheduledQueriesResultsToken, location_name: "NextToken"))
    ListScheduledQueriesResponse.type = Types::ListScheduledQueriesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxTagsForResourceResult, location_name: "MaxResults"))
    ListTagsForResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextTagsForResourceResultsToken, location_name: "NextToken"))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextTagsForResourceResultsToken, location_name: "NextToken"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MeasureValueType.add_member(:bigint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BIGINT", traits: {"smithy.api#enumValue" => "BIGINT"}))
    MeasureValueType.add_member(:boolean, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BOOLEAN", traits: {"smithy.api#enumValue" => "BOOLEAN"}))
    MeasureValueType.add_member(:double, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOUBLE", traits: {"smithy.api#enumValue" => "DOUBLE"}))
    MeasureValueType.add_member(:varchar, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VARCHAR", traits: {"smithy.api#enumValue" => "VARCHAR"}))
    MeasureValueType.add_member(:multi, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MULTI", traits: {"smithy.api#enumValue" => "MULTI"}))
    MixedMeasureMapping.add_member(:measure_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: "MeasureName"))
    MixedMeasureMapping.add_member(:source_column, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: "SourceColumn"))
    MixedMeasureMapping.add_member(:target_measure_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: "TargetMeasureName"))
    MixedMeasureMapping.add_member(:measure_value_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MeasureValueType, location_name: "MeasureValueType", traits: {"smithy.api#required" => {}}))
    MixedMeasureMapping.add_member(:multi_measure_attribute_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiMeasureAttributeMappingList, location_name: "MultiMeasureAttributeMappings"))
    MixedMeasureMapping.type = Types::MixedMeasureMapping
    MixedMeasureMappingList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MixedMeasureMapping)
    MultiMeasureAttributeMapping.add_member(:source_column, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: "SourceColumn", traits: {"smithy.api#required" => {}}))
    MultiMeasureAttributeMapping.add_member(:target_multi_measure_attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: "TargetMultiMeasureAttributeName"))
    MultiMeasureAttributeMapping.add_member(:measure_value_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalarMeasureValueType, location_name: "MeasureValueType", traits: {"smithy.api#required" => {}}))
    MultiMeasureAttributeMapping.type = Types::MultiMeasureAttributeMapping
    MultiMeasureAttributeMappingList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiMeasureAttributeMapping)
    MultiMeasureMappings.add_member(:target_multi_measure_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: "TargetMultiMeasureName"))
    MultiMeasureMappings.add_member(:multi_measure_attribute_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiMeasureAttributeMappingList, location_name: "MultiMeasureAttributeMappings", traits: {"smithy.api#required" => {}}))
    MultiMeasureMappings.type = Types::MultiMeasureMappings
    NotificationConfiguration.add_member(:sns_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnsConfiguration, location_name: "SnsConfiguration", traits: {"smithy.api#required" => {}}))
    NotificationConfiguration.type = Types::NotificationConfiguration
    ParameterMapping.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Name", traits: {"smithy.api#required" => {}}))
    ParameterMapping.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: "Type", traits: {"smithy.api#required" => {}}))
    ParameterMapping.type = Types::ParameterMapping
    ParameterMappingList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterMapping)
    PartitionKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionKey)
    PrepareQueryRequest.add_member(:query_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: "QueryString", traits: {"smithy.api#required" => {}}))
    PrepareQueryRequest.add_member(:validate_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "ValidateOnly"))
    PrepareQueryRequest.type = Types::PrepareQueryRequest
    PrepareQueryResponse.add_member(:query_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: "QueryString", traits: {"smithy.api#required" => {}}))
    PrepareQueryResponse.add_member(:columns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SelectColumnList, location_name: "Columns", traits: {"smithy.api#required" => {}}))
    PrepareQueryResponse.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterMappingList, location_name: "Parameters", traits: {"smithy.api#required" => {}}))
    PrepareQueryResponse.type = Types::PrepareQueryResponse
    ProvisionedCapacityRequest.add_member(:target_query_tcu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTCU, location_name: "TargetQueryTCU", traits: {"smithy.api#required" => {}}))
    ProvisionedCapacityRequest.add_member(:notification_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettingsNotificationConfiguration, location_name: "NotificationConfiguration"))
    ProvisionedCapacityRequest.type = Types::ProvisionedCapacityRequest
    ProvisionedCapacityResponse.add_member(:active_query_tcu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTCU, location_name: "ActiveQueryTCU"))
    ProvisionedCapacityResponse.add_member(:notification_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettingsNotificationConfiguration, location_name: "NotificationConfiguration"))
    ProvisionedCapacityResponse.add_member(:last_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdate, location_name: "LastUpdate"))
    ProvisionedCapacityResponse.type = Types::ProvisionedCapacityResponse
    QueryComputeRequest.add_member(:compute_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeMode, location_name: "ComputeMode"))
    QueryComputeRequest.add_member(:provisioned_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedCapacityRequest, location_name: "ProvisionedCapacity"))
    QueryComputeRequest.type = Types::QueryComputeRequest
    QueryComputeResponse.add_member(:compute_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeMode, location_name: "ComputeMode"))
    QueryComputeResponse.add_member(:provisioned_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedCapacityResponse, location_name: "ProvisionedCapacity"))
    QueryComputeResponse.type = Types::QueryComputeResponse
    QueryExecutionException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    QueryExecutionException.type = Types::QueryExecutionException
    QueryInsights.add_member(:mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryInsightsMode, location_name: "Mode", traits: {"smithy.api#required" => {}}))
    QueryInsights.type = Types::QueryInsights
    QueryInsightsMode.add_member(:enabled_with_rate_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED_WITH_RATE_CONTROL", traits: {"smithy.api#enumValue" => "ENABLED_WITH_RATE_CONTROL"}))
    QueryInsightsMode.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    QueryInsightsResponse.add_member(:query_spatial_coverage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuerySpatialCoverage, location_name: "QuerySpatialCoverage"))
    QueryInsightsResponse.add_member(:query_temporal_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTemporalRange, location_name: "QueryTemporalRange"))
    QueryInsightsResponse.add_member(:query_table_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "QueryTableCount", traits: {"smithy.api#default" => nil}))
    QueryInsightsResponse.add_member(:output_rows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "OutputRows", traits: {"smithy.api#default" => nil}))
    QueryInsightsResponse.add_member(:output_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "OutputBytes", traits: {"smithy.api#default" => nil}))
    QueryInsightsResponse.add_member(:unload_partition_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "UnloadPartitionCount", traits: {"smithy.api#default" => nil}))
    QueryInsightsResponse.add_member(:unload_written_rows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "UnloadWrittenRows", traits: {"smithy.api#default" => nil}))
    QueryInsightsResponse.add_member(:unload_written_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "UnloadWrittenBytes", traits: {"smithy.api#default" => nil}))
    QueryInsightsResponse.type = Types::QueryInsightsResponse
    QueryPricingModel.add_member(:bytes_scanned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BYTES_SCANNED", traits: {"smithy.api#enumValue" => "BYTES_SCANNED"}))
    QueryPricingModel.add_member(:compute_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPUTE_UNITS", traits: {"smithy.api#enumValue" => "COMPUTE_UNITS"}))
    QueryRequest.add_member(:query_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: "QueryString", traits: {"smithy.api#required" => {}}))
    QueryRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    QueryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    QueryRequest.add_member(:max_rows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxQueryResults, location_name: "MaxRows"))
    QueryRequest.add_member(:query_insights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryInsights, location_name: "QueryInsights"))
    QueryRequest.type = Types::QueryRequest
    QueryResponse.add_member(:query_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryId, location_name: "QueryId", traits: {"smithy.api#required" => {}}))
    QueryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    QueryResponse.add_member(:rows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RowList, location_name: "Rows", traits: {"smithy.api#required" => {}}))
    QueryResponse.add_member(:column_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnInfoList, location_name: "ColumnInfo", traits: {"smithy.api#required" => {}}))
    QueryResponse.add_member(:query_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStatus, location_name: "QueryStatus"))
    QueryResponse.add_member(:query_insights_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryInsightsResponse, location_name: "QueryInsightsResponse"))
    QueryResponse.type = Types::QueryResponse
    QuerySpatialCoverage.add_member(:max, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuerySpatialCoverageMax, location_name: "Max"))
    QuerySpatialCoverage.type = Types::QuerySpatialCoverage
    QuerySpatialCoverageMax.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: "Value", traits: {"smithy.api#default" => 0}))
    QuerySpatialCoverageMax.add_member(:table_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "TableArn"))
    QuerySpatialCoverageMax.add_member(:partition_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionKeyList, location_name: "PartitionKey"))
    QuerySpatialCoverageMax.type = Types::QuerySpatialCoverageMax
    QueryStatus.add_member(:progress_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: "ProgressPercentage", traits: {"smithy.api#default" => 0}))
    QueryStatus.add_member(:cumulative_bytes_scanned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "CumulativeBytesScanned", traits: {"smithy.api#default" => 0}))
    QueryStatus.add_member(:cumulative_bytes_metered, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "CumulativeBytesMetered", traits: {"smithy.api#default" => 0}))
    QueryStatus.type = Types::QueryStatus
    QueryTemporalRange.add_member(:max, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTemporalRangeMax, location_name: "Max"))
    QueryTemporalRange.type = Types::QueryTemporalRange
    QueryTemporalRangeMax.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "Value", traits: {"smithy.api#default" => 0}))
    QueryTemporalRangeMax.add_member(:table_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "TableArn"))
    QueryTemporalRangeMax.type = Types::QueryTemporalRangeMax
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.add_member(:scheduled_query_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ScheduledQueryArn"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    Row.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatumList, location_name: "Data", traits: {"smithy.api#required" => {}}))
    Row.type = Types::Row
    RowList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Row)
    S3Configuration.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: "BucketName", traits: {"smithy.api#required" => {}}))
    S3Configuration.add_member(:object_key_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectKeyPrefix, location_name: "ObjectKeyPrefix"))
    S3Configuration.add_member(:encryption_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3EncryptionOption, location_name: "EncryptionOption"))
    S3Configuration.type = Types::S3Configuration
    S3EncryptionOption.add_member(:sse_s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SSE_S3", traits: {"smithy.api#enumValue" => "SSE_S3"}))
    S3EncryptionOption.add_member(:sse_kms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SSE_KMS", traits: {"smithy.api#enumValue" => "SSE_KMS"}))
    S3ReportLocation.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: "BucketName"))
    S3ReportLocation.add_member(:object_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: "ObjectKey"))
    S3ReportLocation.type = Types::S3ReportLocation
    ScalarMeasureValueType.add_member(:bigint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BIGINT", traits: {"smithy.api#enumValue" => "BIGINT"}))
    ScalarMeasureValueType.add_member(:boolean, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BOOLEAN", traits: {"smithy.api#enumValue" => "BOOLEAN"}))
    ScalarMeasureValueType.add_member(:double, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOUBLE", traits: {"smithy.api#enumValue" => "DOUBLE"}))
    ScalarMeasureValueType.add_member(:varchar, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VARCHAR", traits: {"smithy.api#enumValue" => "VARCHAR"}))
    ScalarMeasureValueType.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIMESTAMP", traits: {"smithy.api#enumValue" => "TIMESTAMP"}))
    ScalarType.add_member(:varchar, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VARCHAR", traits: {"smithy.api#enumValue" => "VARCHAR"}))
    ScalarType.add_member(:boolean, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BOOLEAN", traits: {"smithy.api#enumValue" => "BOOLEAN"}))
    ScalarType.add_member(:bigint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BIGINT", traits: {"smithy.api#enumValue" => "BIGINT"}))
    ScalarType.add_member(:double, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOUBLE", traits: {"smithy.api#enumValue" => "DOUBLE"}))
    ScalarType.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIMESTAMP", traits: {"smithy.api#enumValue" => "TIMESTAMP"}))
    ScalarType.add_member(:date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DATE", traits: {"smithy.api#enumValue" => "DATE"}))
    ScalarType.add_member(:time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIME", traits: {"smithy.api#enumValue" => "TIME"}))
    ScalarType.add_member(:interval_day_to_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERVAL_DAY_TO_SECOND", traits: {"smithy.api#enumValue" => "INTERVAL_DAY_TO_SECOND"}))
    ScalarType.add_member(:interval_year_to_month, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERVAL_YEAR_TO_MONTH", traits: {"smithy.api#enumValue" => "INTERVAL_YEAR_TO_MONTH"}))
    ScalarType.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    ScalarType.add_member(:integer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTEGER", traits: {"smithy.api#enumValue" => "INTEGER"}))
    ScheduleConfiguration.add_member(:schedule_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: "ScheduleExpression", traits: {"smithy.api#required" => {}}))
    ScheduleConfiguration.type = Types::ScheduleConfiguration
    ScheduledQuery.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "Arn", traits: {"smithy.api#required" => {}}))
    ScheduledQuery.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    ScheduledQuery.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    ScheduledQuery.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryState, location_name: "State", traits: {"smithy.api#required" => {}}))
    ScheduledQuery.add_member(:previous_invocation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "PreviousInvocationTime"))
    ScheduledQuery.add_member(:next_invocation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "NextInvocationTime"))
    ScheduledQuery.add_member(:error_report_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorReportConfiguration, location_name: "ErrorReportConfiguration"))
    ScheduledQuery.add_member(:target_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDestination, location_name: "TargetDestination"))
    ScheduledQuery.add_member(:last_run_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryRunStatus, location_name: "LastRunStatus"))
    ScheduledQuery.type = Types::ScheduledQuery
    ScheduledQueryDescription.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "Arn", traits: {"smithy.api#required" => {}}))
    ScheduledQueryDescription.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    ScheduledQueryDescription.add_member(:query_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: "QueryString", traits: {"smithy.api#required" => {}}))
    ScheduledQueryDescription.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    ScheduledQueryDescription.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryState, location_name: "State", traits: {"smithy.api#required" => {}}))
    ScheduledQueryDescription.add_member(:previous_invocation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "PreviousInvocationTime"))
    ScheduledQueryDescription.add_member(:next_invocation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "NextInvocationTime"))
    ScheduledQueryDescription.add_member(:schedule_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleConfiguration, location_name: "ScheduleConfiguration", traits: {"smithy.api#required" => {}}))
    ScheduledQueryDescription.add_member(:notification_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfiguration, location_name: "NotificationConfiguration", traits: {"smithy.api#required" => {}}))
    ScheduledQueryDescription.add_member(:target_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetConfiguration, location_name: "TargetConfiguration"))
    ScheduledQueryDescription.add_member(:scheduled_query_execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ScheduledQueryExecutionRoleArn"))
    ScheduledQueryDescription.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringValue2048, location_name: "KmsKeyId"))
    ScheduledQueryDescription.add_member(:error_report_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorReportConfiguration, location_name: "ErrorReportConfiguration"))
    ScheduledQueryDescription.add_member(:last_run_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryRunSummary, location_name: "LastRunSummary"))
    ScheduledQueryDescription.add_member(:recently_failed_runs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryRunSummaryList, location_name: "RecentlyFailedRuns"))
    ScheduledQueryDescription.type = Types::ScheduledQueryDescription
    ScheduledQueryInsights.add_member(:mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryInsightsMode, location_name: "Mode", traits: {"smithy.api#required" => {}}))
    ScheduledQueryInsights.type = Types::ScheduledQueryInsights
    ScheduledQueryInsightsMode.add_member(:enabled_with_rate_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED_WITH_RATE_CONTROL", traits: {"smithy.api#enumValue" => "ENABLED_WITH_RATE_CONTROL"}))
    ScheduledQueryInsightsMode.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ScheduledQueryInsightsResponse.add_member(:query_spatial_coverage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuerySpatialCoverage, location_name: "QuerySpatialCoverage"))
    ScheduledQueryInsightsResponse.add_member(:query_temporal_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTemporalRange, location_name: "QueryTemporalRange"))
    ScheduledQueryInsightsResponse.add_member(:query_table_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "QueryTableCount", traits: {"smithy.api#default" => nil}))
    ScheduledQueryInsightsResponse.add_member(:output_rows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "OutputRows", traits: {"smithy.api#default" => nil}))
    ScheduledQueryInsightsResponse.add_member(:output_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "OutputBytes", traits: {"smithy.api#default" => nil}))
    ScheduledQueryInsightsResponse.type = Types::ScheduledQueryInsightsResponse
    ScheduledQueryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQuery)
    ScheduledQueryRunStatus.add_member(:auto_trigger_success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTO_TRIGGER_SUCCESS", traits: {"smithy.api#enumValue" => "AUTO_TRIGGER_SUCCESS"}))
    ScheduledQueryRunStatus.add_member(:auto_trigger_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTO_TRIGGER_FAILURE", traits: {"smithy.api#enumValue" => "AUTO_TRIGGER_FAILURE"}))
    ScheduledQueryRunStatus.add_member(:manual_trigger_success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MANUAL_TRIGGER_SUCCESS", traits: {"smithy.api#enumValue" => "MANUAL_TRIGGER_SUCCESS"}))
    ScheduledQueryRunStatus.add_member(:manual_trigger_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MANUAL_TRIGGER_FAILURE", traits: {"smithy.api#enumValue" => "MANUAL_TRIGGER_FAILURE"}))
    ScheduledQueryRunSummary.add_member(:invocation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "InvocationTime"))
    ScheduledQueryRunSummary.add_member(:trigger_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "TriggerTime"))
    ScheduledQueryRunSummary.add_member(:run_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryRunStatus, location_name: "RunStatus"))
    ScheduledQueryRunSummary.add_member(:execution_stats, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStats, location_name: "ExecutionStats"))
    ScheduledQueryRunSummary.add_member(:query_insights_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryInsightsResponse, location_name: "QueryInsightsResponse"))
    ScheduledQueryRunSummary.add_member(:error_report_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorReportLocation, location_name: "ErrorReportLocation"))
    ScheduledQueryRunSummary.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "FailureReason"))
    ScheduledQueryRunSummary.type = Types::ScheduledQueryRunSummary
    ScheduledQueryRunSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryRunSummary)
    ScheduledQueryState.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ScheduledQueryState.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    SelectColumn.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    SelectColumn.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: "Type"))
    SelectColumn.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "DatabaseName"))
    SelectColumn.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "TableName"))
    SelectColumn.add_member(:aliased, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "Aliased"))
    SelectColumn.type = Types::SelectColumn
    SelectColumnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SelectColumn)
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SnsConfiguration.add_member(:topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "TopicArn", traits: {"smithy.api#required" => {}}))
    SnsConfiguration.type = Types::SnsConfiguration
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetConfiguration.add_member(:timestream_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestreamConfiguration, location_name: "TimestreamConfiguration", traits: {"smithy.api#required" => {}}))
    TargetConfiguration.type = Types::TargetConfiguration
    TargetDestination.add_member(:timestream_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestreamDestination, location_name: "TimestreamDestination"))
    TargetDestination.type = Types::TargetDestination
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    TimeSeriesDataPoint.add_member(:time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "Time", traits: {"smithy.api#required" => {}}))
    TimeSeriesDataPoint.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Datum, location_name: "Value", traits: {"smithy.api#required" => {}}))
    TimeSeriesDataPoint.type = Types::TimeSeriesDataPoint
    TimeSeriesDataPointList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeSeriesDataPoint)
    TimestreamConfiguration.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    TimestreamConfiguration.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "TableName", traits: {"smithy.api#required" => {}}))
    TimestreamConfiguration.add_member(:time_column, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: "TimeColumn", traits: {"smithy.api#required" => {}}))
    TimestreamConfiguration.add_member(:dimension_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionMappingList, location_name: "DimensionMappings", traits: {"smithy.api#required" => {}}))
    TimestreamConfiguration.add_member(:multi_measure_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiMeasureMappings, location_name: "MultiMeasureMappings"))
    TimestreamConfiguration.add_member(:mixed_measure_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MixedMeasureMappingList, location_name: "MixedMeasureMappings"))
    TimestreamConfiguration.add_member(:measure_name_column, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: "MeasureNameColumn"))
    TimestreamConfiguration.type = Types::TimestreamConfiguration
    TimestreamDestination.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "DatabaseName"))
    TimestreamDestination.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "TableName"))
    TimestreamDestination.type = Types::TimestreamDestination
    Type.add_member(:scalar_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalarType, location_name: "ScalarType"))
    Type.add_member(:array_column_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnInfo, location_name: "ArrayColumnInfo"))
    Type.add_member(:time_series_measure_value_column_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnInfo, location_name: "TimeSeriesMeasureValueColumnInfo"))
    Type.add_member(:row_column_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnInfoList, location_name: "RowColumnInfo"))
    Type.type = Types::Type
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAccountSettingsRequest.add_member(:max_query_tcu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxQueryCapacity, location_name: "MaxQueryTCU"))
    UpdateAccountSettingsRequest.add_member(:query_pricing_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryPricingModel, location_name: "QueryPricingModel"))
    UpdateAccountSettingsRequest.add_member(:query_compute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryComputeRequest, location_name: "QueryCompute"))
    UpdateAccountSettingsRequest.type = Types::UpdateAccountSettingsRequest
    UpdateAccountSettingsResponse.add_member(:max_query_tcu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxQueryCapacity, location_name: "MaxQueryTCU"))
    UpdateAccountSettingsResponse.add_member(:query_pricing_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryPricingModel, location_name: "QueryPricingModel"))
    UpdateAccountSettingsResponse.add_member(:query_compute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryComputeResponse, location_name: "QueryCompute"))
    UpdateAccountSettingsResponse.type = Types::UpdateAccountSettingsResponse
    UpdateScheduledQueryRequest.add_member(:scheduled_query_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ScheduledQueryArn", traits: {"smithy.api#required" => {}}))
    UpdateScheduledQueryRequest.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryState, location_name: "State", traits: {"smithy.api#required" => {}}))
    UpdateScheduledQueryRequest.type = Types::UpdateScheduledQueryRequest
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ValidationException.type = Types::ValidationException

    Timestream20181101 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.timestreamquery#Timestream_20181101"
      service.name = "Timestream20181101"
      service.version = "2018-11-01"
      service.traits = {"aws.api#clientEndpointDiscovery" => {"operation" => "com.amazonaws.timestreamquery#DescribeEndpoints", "error" => "com.amazonaws.timestreamquery#InvalidEndpointException"}, "aws.api#service" => {"sdkId" => "Timestream Query", "arnNamespace" => "timestream", "cloudFormationName" => "TimestreamQuery", "cloudTrailEventSource" => "timestreamquery.amazonaws.com", "endpointPrefix" => "query.timestream"}, "aws.auth#sigv4" => {"name" => "timestream"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Amazon Timestream Query"}
      service.add_operation(:cancel_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamquery#CancelQuery"
        operation.name = "CancelQuery"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelQueryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelQueryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_scheduled_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamquery#CreateScheduledQuery"
        operation.name = "CreateScheduledQuery"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateScheduledQueryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateScheduledQueryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_scheduled_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamquery#DeleteScheduledQuery"
        operation.name = "DeleteScheduledQuery"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteScheduledQueryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_account_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamquery#DescribeAccountSettings"
        operation.name = "DescribeAccountSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountSettingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountSettingsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:describe_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamquery#DescribeEndpoints"
        operation.name = "DescribeEndpoints"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEndpointsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEndpointsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_scheduled_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamquery#DescribeScheduledQuery"
        operation.name = "DescribeScheduledQuery"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeScheduledQueryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeScheduledQueryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:execute_scheduled_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamquery#ExecuteScheduledQuery"
        operation.name = "ExecuteScheduledQuery"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteScheduledQueryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:list_scheduled_queries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamquery#ListScheduledQueries"
        operation.name = "ListScheduledQueries"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListScheduledQueriesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListScheduledQueriesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
        operation[:paginator] = Paginators::ListScheduledQueries.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamquery#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:prepare_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamquery#PrepareQuery"
        operation.name = "PrepareQuery"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrepareQueryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrepareQueryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamquery#Query"
        operation.name = "Query"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::Query.new
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamquery#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamquery#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:update_account_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamquery#UpdateAccountSettings"
        operation.name = "UpdateAccountSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccountSettingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccountSettingsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_scheduled_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamquery#UpdateScheduledQuery"
        operation.name = "UpdateScheduledQuery"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateScheduledQueryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
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
