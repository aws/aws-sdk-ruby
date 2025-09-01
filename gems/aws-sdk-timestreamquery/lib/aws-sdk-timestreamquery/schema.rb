# frozen_string_literal: true

# This is generated code!

module Aws::TimestreamQuery
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#AccessDeniedException', name: 'AccessDeniedException', traits: {"aws.protocols#awsQueryError" => {"code" => "AccessDenied", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountSettingsNotificationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#AccountSettingsNotificationConfiguration', name: 'AccountSettingsNotificationConfiguration')
    AmazonResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamquery#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    CancelQueryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#CancelQueryRequest', name: 'CancelQueryRequest')
    CancelQueryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#CancelQueryResponse', name: 'CancelQueryResponse')
    ClientRequestToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamquery#ClientRequestToken', name: 'ClientRequestToken', traits: {"smithy.api#length" => {"min" => 32, "max" => 128}, "smithy.api#sensitive" => {}})
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamquery#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 32, "max" => 128}, "smithy.api#sensitive" => {}})
    ColumnInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#ColumnInfo', name: 'ColumnInfo')
    ColumnInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.timestreamquery#ColumnInfoList', name: 'ColumnInfoList')
    ComputeMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.timestreamquery#ComputeMode', name: 'ComputeMode')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateScheduledQueryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#CreateScheduledQueryRequest', name: 'CreateScheduledQueryRequest')
    CreateScheduledQueryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#CreateScheduledQueryResponse', name: 'CreateScheduledQueryResponse')
    Datum = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#Datum', name: 'Datum')
    DatumList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.timestreamquery#DatumList', name: 'DatumList')
    DeleteScheduledQueryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#DeleteScheduledQueryRequest', name: 'DeleteScheduledQueryRequest')
    DescribeAccountSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#DescribeAccountSettingsRequest', name: 'DescribeAccountSettingsRequest')
    DescribeAccountSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#DescribeAccountSettingsResponse', name: 'DescribeAccountSettingsResponse')
    DescribeEndpointsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#DescribeEndpointsRequest', name: 'DescribeEndpointsRequest')
    DescribeEndpointsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#DescribeEndpointsResponse', name: 'DescribeEndpointsResponse')
    DescribeScheduledQueryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#DescribeScheduledQueryRequest', name: 'DescribeScheduledQueryRequest')
    DescribeScheduledQueryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#DescribeScheduledQueryResponse', name: 'DescribeScheduledQueryResponse')
    DimensionMapping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#DimensionMapping', name: 'DimensionMapping')
    DimensionMappingList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.timestreamquery#DimensionMappingList', name: 'DimensionMappingList')
    DimensionValueType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.timestreamquery#DimensionValueType', name: 'DimensionValueType')
    Double = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.timestreamquery#Double', name: 'Double', traits: {"smithy.api#default" => 0})
    Endpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#Endpoint', name: 'Endpoint')
    Endpoints = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.timestreamquery#Endpoints', name: 'Endpoints')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamquery#ErrorMessage', name: 'ErrorMessage')
    ErrorReportConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#ErrorReportConfiguration', name: 'ErrorReportConfiguration')
    ErrorReportLocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#ErrorReportLocation', name: 'ErrorReportLocation')
    ExecuteScheduledQueryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#ExecuteScheduledQueryRequest', name: 'ExecuteScheduledQueryRequest')
    ExecutionStats = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#ExecutionStats', name: 'ExecutionStats')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidEndpointException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#InvalidEndpointException', name: 'InvalidEndpointException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 421})
    LastUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#LastUpdate', name: 'LastUpdate')
    LastUpdateStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.timestreamquery#LastUpdateStatus', name: 'LastUpdateStatus')
    ListScheduledQueriesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#ListScheduledQueriesRequest', name: 'ListScheduledQueriesRequest')
    ListScheduledQueriesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#ListScheduledQueriesResponse', name: 'ListScheduledQueriesResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.timestreamquery#Long', name: 'Long', traits: {"smithy.api#default" => 0})
    MaxQueryCapacity = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.timestreamquery#MaxQueryCapacity', name: 'MaxQueryCapacity')
    MaxQueryResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.timestreamquery#MaxQueryResults', name: 'MaxQueryResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MaxScheduledQueriesResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.timestreamquery#MaxScheduledQueriesResults', name: 'MaxScheduledQueriesResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MaxTagsForResourceResult = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.timestreamquery#MaxTagsForResourceResult', name: 'MaxTagsForResourceResult', traits: {"smithy.api#range" => {"min" => 1, "max" => 200}})
    MeasureValueType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.timestreamquery#MeasureValueType', name: 'MeasureValueType')
    MixedMeasureMapping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#MixedMeasureMapping', name: 'MixedMeasureMapping')
    MixedMeasureMappingList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.timestreamquery#MixedMeasureMappingList', name: 'MixedMeasureMappingList', traits: {"smithy.api#length" => {"min" => 1}})
    MultiMeasureAttributeMapping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#MultiMeasureAttributeMapping', name: 'MultiMeasureAttributeMapping')
    MultiMeasureAttributeMappingList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.timestreamquery#MultiMeasureAttributeMappingList', name: 'MultiMeasureAttributeMappingList', traits: {"smithy.api#length" => {"min" => 1}})
    MultiMeasureMappings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#MultiMeasureMappings', name: 'MultiMeasureMappings')
    NextScheduledQueriesResultsToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamquery#NextScheduledQueriesResultsToken', name: 'NextScheduledQueriesResultsToken')
    NextTagsForResourceResultsToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamquery#NextTagsForResourceResultsToken', name: 'NextTagsForResourceResultsToken')
    NotificationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#NotificationConfiguration', name: 'NotificationConfiguration')
    NullableBoolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.timestreamquery#NullableBoolean', name: 'NullableBoolean')
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamquery#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ParameterMapping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#ParameterMapping', name: 'ParameterMapping')
    ParameterMappingList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.timestreamquery#ParameterMappingList', name: 'ParameterMappingList')
    PartitionKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamquery#PartitionKey', name: 'PartitionKey')
    PartitionKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.timestreamquery#PartitionKeyList', name: 'PartitionKeyList')
    PrepareQueryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#PrepareQueryRequest', name: 'PrepareQueryRequest')
    PrepareQueryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#PrepareQueryResponse', name: 'PrepareQueryResponse')
    ProvisionedCapacityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#ProvisionedCapacityRequest', name: 'ProvisionedCapacityRequest')
    ProvisionedCapacityResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#ProvisionedCapacityResponse', name: 'ProvisionedCapacityResponse')
    QueryComputeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#QueryComputeRequest', name: 'QueryComputeRequest')
    QueryComputeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#QueryComputeResponse', name: 'QueryComputeResponse')
    QueryExecutionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#QueryExecutionException', name: 'QueryExecutionException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    QueryId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamquery#QueryId', name: 'QueryId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    QueryInsights = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#QueryInsights', name: 'QueryInsights')
    QueryInsightsMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.timestreamquery#QueryInsightsMode', name: 'QueryInsightsMode')
    QueryInsightsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#QueryInsightsResponse', name: 'QueryInsightsResponse')
    QueryPricingModel = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.timestreamquery#QueryPricingModel', name: 'QueryPricingModel')
    QueryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#QueryRequest', name: 'QueryRequest')
    QueryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#QueryResponse', name: 'QueryResponse')
    QuerySpatialCoverage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#QuerySpatialCoverage', name: 'QuerySpatialCoverage')
    QuerySpatialCoverageMax = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#QuerySpatialCoverageMax', name: 'QuerySpatialCoverageMax')
    QueryStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#QueryStatus', name: 'QueryStatus')
    QueryString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamquery#QueryString', name: 'QueryString', traits: {"smithy.api#length" => {"min" => 1, "max" => 262144}, "smithy.api#sensitive" => {}})
    QueryTCU = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.timestreamquery#QueryTCU', name: 'QueryTCU')
    QueryTemporalRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#QueryTemporalRange', name: 'QueryTemporalRange')
    QueryTemporalRangeMax = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#QueryTemporalRangeMax', name: 'QueryTemporalRangeMax')
    ResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamquery#ResourceName', name: 'ResourceName')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Row = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#Row', name: 'Row')
    RowList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.timestreamquery#RowList', name: 'RowList')
    S3BucketName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamquery#S3BucketName', name: 'S3BucketName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$"})
    S3Configuration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#S3Configuration', name: 'S3Configuration')
    S3EncryptionOption = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.timestreamquery#S3EncryptionOption', name: 'S3EncryptionOption')
    S3ObjectKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamquery#S3ObjectKey', name: 'S3ObjectKey')
    S3ObjectKeyPrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamquery#S3ObjectKeyPrefix', name: 'S3ObjectKeyPrefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 896}, "smithy.api#pattern" => "^[a-zA-Z0-9|!\\-_*'\\(\\)]([a-zA-Z0-9]|[!\\-_*'\\(\\)\\/.])+$"})
    S3ReportLocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#S3ReportLocation', name: 'S3ReportLocation')
    ScalarMeasureValueType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.timestreamquery#ScalarMeasureValueType', name: 'ScalarMeasureValueType')
    ScalarType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.timestreamquery#ScalarType', name: 'ScalarType')
    ScalarValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamquery#ScalarValue', name: 'ScalarValue')
    ScheduleConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#ScheduleConfiguration', name: 'ScheduleConfiguration')
    ScheduleExpression = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamquery#ScheduleExpression', name: 'ScheduleExpression', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ScheduledQuery = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#ScheduledQuery', name: 'ScheduledQuery')
    ScheduledQueryDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#ScheduledQueryDescription', name: 'ScheduledQueryDescription')
    ScheduledQueryInsights = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#ScheduledQueryInsights', name: 'ScheduledQueryInsights')
    ScheduledQueryInsightsMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.timestreamquery#ScheduledQueryInsightsMode', name: 'ScheduledQueryInsightsMode')
    ScheduledQueryInsightsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#ScheduledQueryInsightsResponse', name: 'ScheduledQueryInsightsResponse')
    ScheduledQueryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.timestreamquery#ScheduledQueryList', name: 'ScheduledQueryList')
    ScheduledQueryName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamquery#ScheduledQueryName', name: 'ScheduledQueryName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9|!\\-_*'\\(\\)]([a-zA-Z0-9]|[!\\-_*'\\(\\)\\/.])+$"})
    ScheduledQueryRunStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.timestreamquery#ScheduledQueryRunStatus', name: 'ScheduledQueryRunStatus')
    ScheduledQueryRunSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#ScheduledQueryRunSummary', name: 'ScheduledQueryRunSummary')
    ScheduledQueryRunSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.timestreamquery#ScheduledQueryRunSummaryList', name: 'ScheduledQueryRunSummaryList')
    ScheduledQueryState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.timestreamquery#ScheduledQueryState', name: 'ScheduledQueryState')
    SchemaName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamquery#SchemaName', name: 'SchemaName')
    SelectColumn = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#SelectColumn', name: 'SelectColumn')
    SelectColumnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.timestreamquery#SelectColumnList', name: 'SelectColumnList')
    ServiceErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamquery#ServiceErrorMessage', name: 'ServiceErrorMessage')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SnsConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#SnsConfiguration', name: 'SnsConfiguration')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamquery#String', name: 'String')
    StringValue2048 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamquery#StringValue2048', name: 'StringValue2048', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamquery#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.timestreamquery#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.timestreamquery#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamquery#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#TargetConfiguration', name: 'TargetConfiguration')
    TargetDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#TargetDestination', name: 'TargetDestination')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Time = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.timestreamquery#Time', name: 'Time')
    TimeSeriesDataPoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#TimeSeriesDataPoint', name: 'TimeSeriesDataPoint')
    TimeSeriesDataPointList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.timestreamquery#TimeSeriesDataPointList', name: 'TimeSeriesDataPointList')
    Timestamp = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamquery#Timestamp', name: 'Timestamp')
    TimestreamConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#TimestreamConfiguration', name: 'TimestreamConfiguration')
    TimestreamDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#TimestreamDestination', name: 'TimestreamDestination')
    Type = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#Type', name: 'Type')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateAccountSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#UpdateAccountSettingsRequest', name: 'UpdateAccountSettingsRequest')
    UpdateAccountSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#UpdateAccountSettingsResponse', name: 'UpdateAccountSettingsResponse')
    UpdateScheduledQueryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#UpdateScheduledQueryRequest', name: 'UpdateScheduledQueryRequest')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamquery#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceErrorMessage, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountSettingsNotificationConfiguration.add_member(:sns_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsConfiguration, location_name: 'SnsConfiguration'))
    AccountSettingsNotificationConfiguration.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>An Amazon Resource Name (ARN) that grants Timestream permission to publish notifications. This field is only visible if SNS Topic is provided when updating the account settings.</p>", "smithy.api#required" => {}}))
    AccountSettingsNotificationConfiguration.type = Types::AccountSettingsNotificationConfiguration
    CancelQueryRequest.add_member(:query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryId, location_name: 'QueryId', traits: {"smithy.api#documentation" => "<p> The ID of the query that needs to be cancelled. <code>QueryID</code> is returned as\n            part of the query result. </p>", "smithy.api#required" => {}}))
    CancelQueryRequest.type = Types::CancelQueryRequest
    CancelQueryResponse.add_member(:cancellation_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CancellationMessage', traits: {"smithy.api#documentation" => "<p> A <code>CancellationMessage</code> is returned when a <code>CancelQuery</code>\n            request for the query specified by <code>QueryId</code> has already been issued. </p>"}))
    CancelQueryResponse.type = Types::CancelQueryResponse
    ColumnInfo.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p> The name of the result set column. The name of the result set is available for\n            columns of all data types except for arrays. </p>"}))
    ColumnInfo.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The data type of the result set column. The data type can be a scalar or complex.\n            Scalar data types are integers, strings, doubles, Booleans, and others. Complex data\n            types are types such as arrays, rows, and others. </p>", "smithy.api#required" => {}}))
    ColumnInfo.type = Types::ColumnInfo
    ColumnInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnInfo)
    ComputeMode.add_member(:on_demand, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ON_DEMAND', traits: {"smithy.api#enumValue" => "ON_DEMAND"}))
    ComputeMode.add_member(:provisioned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROVISIONED', traits: {"smithy.api#enumValue" => "PROVISIONED"}))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    CreateScheduledQueryRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the scheduled query.</p>", "smithy.api#required" => {}}))
    CreateScheduledQueryRequest.add_member(:query_string, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: 'QueryString', traits: {"smithy.api#documentation" => "<p>The query string to run. Parameter names can be specified in the query string\n                <code>@</code> character followed by an identifier. The named Parameter\n                <code>@scheduled_runtime</code> is reserved and can be used in the query to get the\n            time at which the query is scheduled to run.</p>\n         <p>The timestamp calculated according to the ScheduleConfiguration parameter, will be the\n            value of <code>@scheduled_runtime</code> paramater for each query run. For example,\n            consider an instance of a scheduled query executing on 2021-12-01 00:00:00. For this\n            instance, the <code>@scheduled_runtime</code> parameter is initialized to the timestamp\n            2021-12-01 00:00:00 when invoking the query.</p>", "smithy.api#required" => {}}))
    CreateScheduledQueryRequest.add_member(:schedule_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleConfiguration, location_name: 'ScheduleConfiguration', traits: {"smithy.api#documentation" => "<p>The schedule configuration for the query.</p>", "smithy.api#required" => {}}))
    CreateScheduledQueryRequest.add_member(:notification_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfiguration, location_name: 'NotificationConfiguration', traits: {"smithy.api#documentation" => "<p>Notification configuration for the scheduled query. A notification is sent by\n            Timestream when a query run finishes, when the state is updated or when you delete it.\n        </p>", "smithy.api#required" => {}}))
    CreateScheduledQueryRequest.add_member(:target_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetConfiguration, location_name: 'TargetConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration used for writing the result of a query.</p>"}))
    CreateScheduledQueryRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Using a ClientToken makes the call to CreateScheduledQuery idempotent, in other words,\n            making the same request repeatedly will produce the same result. Making multiple\n            identical CreateScheduledQuery requests has the same effect as making a single request. </p>\n         <ul>\n            <li>\n               <p> If CreateScheduledQuery is called without a <code>ClientToken</code>, the\n                    Query SDK generates a <code>ClientToken</code> on your behalf.</p>\n            </li>\n            <li>\n               <p> After 8 hours, any request with the same <code>ClientToken</code> is treated\n                    as a new request. </p>\n            </li>\n         </ul>", "smithy.api#idempotencyToken" => {}}))
    CreateScheduledQueryRequest.add_member(:scheduled_query_execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ScheduledQueryExecutionRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN for the IAM role that Timestream will assume when running the scheduled query.\n        </p>", "smithy.api#required" => {}}))
    CreateScheduledQueryRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of key-value pairs to label the scheduled query.</p>"}))
    CreateScheduledQueryRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValue2048, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The Amazon KMS key used to encrypt the scheduled query resource, at-rest. If the\n            Amazon KMS key is not specified, the scheduled query resource will be encrypted with a\n            Timestream owned Amazon KMS key. To specify a KMS key, use the key ID, key ARN, alias\n            name, or alias ARN. When using an alias name, prefix the name with\n                <i>alias/</i>\n         </p>\n         <p>If ErrorReportConfiguration uses <code>SSE_KMS</code> as encryption type, the same\n            KmsKeyId is used to encrypt the error report at rest.</p>"}))
    CreateScheduledQueryRequest.add_member(:error_report_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorReportConfiguration, location_name: 'ErrorReportConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration for error reporting. Error reports will be generated when a problem is\n            encountered when writing the query results. </p>", "smithy.api#required" => {}}))
    CreateScheduledQueryRequest.type = Types::CreateScheduledQueryRequest
    CreateScheduledQueryResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>ARN for the created scheduled query.</p>", "smithy.api#required" => {}}))
    CreateScheduledQueryResponse.type = Types::CreateScheduledQueryResponse
    Datum.add_member(:scalar_value, Smithy::Schema::Shapes::ShapeRef.new(shape: ScalarValue, location_name: 'ScalarValue', traits: {"smithy.api#documentation" => "<p> Indicates if the data point is a scalar value such as integer, string, double, or\n            Boolean. </p>"}))
    Datum.add_member(:time_series_value, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeSeriesDataPointList, location_name: 'TimeSeriesValue', traits: {"smithy.api#documentation" => "<p> Indicates if the data point is a timeseries data type. </p>"}))
    Datum.add_member(:array_value, Smithy::Schema::Shapes::ShapeRef.new(shape: DatumList, location_name: 'ArrayValue', traits: {"smithy.api#documentation" => "<p> Indicates if the data point is an array. </p>"}))
    Datum.add_member(:row_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Row, location_name: 'RowValue', traits: {"smithy.api#documentation" => "<p> Indicates if the data point is a row. </p>"}))
    Datum.add_member(:null_value, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'NullValue', traits: {"smithy.api#documentation" => "<p> Indicates if the data point is null. </p>"}))
    Datum.type = Types::Datum
    DatumList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Datum)
    DeleteScheduledQueryRequest.add_member(:scheduled_query_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ScheduledQueryArn', traits: {"smithy.api#documentation" => "<p>The ARN of the scheduled query. </p>", "smithy.api#required" => {}}))
    DeleteScheduledQueryRequest.type = Types::DeleteScheduledQueryRequest
    DescribeAccountSettingsRequest.type = Types::DescribeAccountSettingsRequest
    DescribeAccountSettingsResponse.add_member(:max_query_tcu, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxQueryCapacity, location_name: 'MaxQueryTCU', traits: {"smithy.api#documentation" => "<p>The maximum number of <a href=\"https://docs.aws.amazon.com/timestream/latest/developerguide/tcu.html\">Timestream compute units</a> (TCUs) the service will use at any point in time to serve your queries. To run queries, you must set a minimum capacity of 4 TCU. You can set the maximum number of TCU in multiples of 4, for example, 4, 8, 16, 32, and so on. This configuration is applicable only for on-demand usage of (TCUs). \n        \n        \n        </p>"}))
    DescribeAccountSettingsResponse.add_member(:query_pricing_model, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryPricingModel, location_name: 'QueryPricingModel', traits: {"smithy.api#documentation" => "<p>The pricing model for queries in your account.</p>\n         <note>\n            <p>The <code>QueryPricingModel</code> parameter is used by several Timestream operations; however, the <code>UpdateAccountSettings</code> API operation doesn't recognize any values other than <code>COMPUTE_UNITS</code>.</p>\n         </note>"}))
    DescribeAccountSettingsResponse.add_member(:query_compute, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryComputeResponse, location_name: 'QueryCompute', traits: {"smithy.api#documentation" => "<p>An object that contains the usage settings for Timestream Compute Units (TCUs) in your account for the query workload. </p>"}))
    DescribeAccountSettingsResponse.type = Types::DescribeAccountSettingsResponse
    DescribeEndpointsRequest.type = Types::DescribeEndpointsRequest
    DescribeEndpointsResponse.add_member(:endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoints, location_name: 'Endpoints', traits: {"smithy.api#documentation" => "<p>An <code>Endpoints</code> object is returned when a <code>DescribeEndpoints</code>\n            request is made.</p>", "smithy.api#required" => {}}))
    DescribeEndpointsResponse.type = Types::DescribeEndpointsResponse
    DescribeScheduledQueryRequest.add_member(:scheduled_query_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ScheduledQueryArn', traits: {"smithy.api#documentation" => "<p>The ARN of the scheduled query.</p>", "smithy.api#required" => {}}))
    DescribeScheduledQueryRequest.type = Types::DescribeScheduledQueryRequest
    DescribeScheduledQueryResponse.add_member(:scheduled_query, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryDescription, location_name: 'ScheduledQuery', traits: {"smithy.api#documentation" => "<p>The scheduled query.</p>", "smithy.api#required" => {}}))
    DescribeScheduledQueryResponse.type = Types::DescribeScheduledQueryResponse
    DimensionMapping.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Column name from query result.</p>", "smithy.api#required" => {}}))
    DimensionMapping.add_member(:dimension_value_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionValueType, location_name: 'DimensionValueType', traits: {"smithy.api#documentation" => "<p>Type for the dimension. </p>", "smithy.api#required" => {}}))
    DimensionMapping.type = Types::DimensionMapping
    DimensionMappingList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionMapping)
    DimensionValueType.add_member(:varchar, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VARCHAR', traits: {"smithy.api#enumValue" => "VARCHAR"}))
    Endpoint.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address', traits: {"smithy.api#documentation" => "<p>An endpoint address.</p>", "smithy.api#required" => {}}))
    Endpoint.add_member(:cache_period_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'CachePeriodInMinutes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The TTL for the endpoint, in minutes.</p>", "smithy.api#required" => {}}))
    Endpoint.type = Types::Endpoint
    Endpoints.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint)
    ErrorReportConfiguration.add_member(:s3_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Configuration, location_name: 'S3Configuration', traits: {"smithy.api#documentation" => "<p>The S3 configuration for the error reports.</p>", "smithy.api#required" => {}}))
    ErrorReportConfiguration.type = Types::ErrorReportConfiguration
    ErrorReportLocation.add_member(:s3_report_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ReportLocation, location_name: 'S3ReportLocation', traits: {"smithy.api#documentation" => "<p>The S3 location where error reports are written.</p>"}))
    ErrorReportLocation.type = Types::ErrorReportLocation
    ExecuteScheduledQueryRequest.add_member(:scheduled_query_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ScheduledQueryArn', traits: {"smithy.api#documentation" => "<p>ARN of the scheduled query.</p>", "smithy.api#required" => {}}))
    ExecuteScheduledQueryRequest.add_member(:invocation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'InvocationTime', traits: {"smithy.api#documentation" => "<p>The timestamp in UTC. Query will be run as if it was invoked at this timestamp.\n        </p>", "smithy.api#required" => {}}))
    ExecuteScheduledQueryRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Not used. </p>", "smithy.api#idempotencyToken" => {}}))
    ExecuteScheduledQueryRequest.add_member(:query_insights, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryInsights, location_name: 'QueryInsights', traits: {"smithy.api#documentation" => "<p>Encapsulates settings for enabling <code>QueryInsights</code>.</p>\n         <p>Enabling <code>QueryInsights</code> returns insights and metrics as a part of the Amazon SNS notification for the query that you executed. You can use <code>QueryInsights</code> to tune your query performance and cost.</p>"}))
    ExecuteScheduledQueryRequest.type = Types::ExecuteScheduledQueryRequest
    ExecutionStats.add_member(:execution_time_in_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ExecutionTimeInMillis', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Total time, measured in milliseconds, that was needed for the scheduled query run to\n            complete.</p>"}))
    ExecutionStats.add_member(:data_writes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'DataWrites', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Data writes metered for records ingested in a single scheduled query run.</p>"}))
    ExecutionStats.add_member(:bytes_metered, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'BytesMetered', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Bytes metered for a single scheduled query run.</p>"}))
    ExecutionStats.add_member(:cumulative_bytes_scanned, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'CumulativeBytesScanned', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Bytes scanned for a single scheduled query run.</p>"}))
    ExecutionStats.add_member(:records_ingested, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'RecordsIngested', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of records ingested for a single scheduled query run. </p>"}))
    ExecutionStats.add_member(:query_result_rows, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'QueryResultRows', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Number of rows present in the output from running a query before ingestion to\n            destination data source.</p>"}))
    ExecutionStats.type = Types::ExecutionStats
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    InvalidEndpointException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidEndpointException.type = Types::InvalidEndpointException
    LastUpdate.add_member(:target_query_tcu, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTCU, location_name: 'TargetQueryTCU', traits: {"smithy.api#documentation" => "<p>The number of TimeStream Compute Units (TCUs) requested in the last account settings update.</p>"}))
    LastUpdate.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdateStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the last update. Can be either <code>PENDING</code>, <code>FAILED</code>, or <code>SUCCEEDED</code>.</p>"}))
    LastUpdate.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>Error message describing the last account settings update status, visible only if an error occurred.</p>"}))
    LastUpdate.type = Types::LastUpdate
    LastUpdateStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    LastUpdateStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    LastUpdateStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ListScheduledQueriesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxScheduledQueriesResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return in the output. If the total number of items\n            available is more than the value specified, a <code>NextToken</code> is provided in the\n            output. To resume pagination, provide the <code>NextToken</code> value as the argument\n            to the subsequent call to <code>ListScheduledQueriesRequest</code>.</p>"}))
    ListScheduledQueriesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextScheduledQueriesResultsToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> A pagination token to resume pagination.</p>"}))
    ListScheduledQueriesRequest.type = Types::ListScheduledQueriesRequest
    ListScheduledQueriesResponse.add_member(:scheduled_queries, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryList, location_name: 'ScheduledQueries', traits: {"smithy.api#documentation" => "<p>A list of scheduled queries.</p>", "smithy.api#required" => {}}))
    ListScheduledQueriesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextScheduledQueriesResultsToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token to specify where to start paginating. This is the NextToken from a previously\n            truncated response.</p>"}))
    ListScheduledQueriesResponse.type = Types::ListScheduledQueriesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Timestream resource with tags to be listed. This value is an Amazon Resource Name\n            (ARN).</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxTagsForResourceResult, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of tags to return.</p>"}))
    ListTagsForResourceRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTagsForResourceResultsToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A pagination token to resume pagination.</p>"}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags currently associated with the Timestream resource. </p>", "smithy.api#required" => {}}))
    ListTagsForResourceResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTagsForResourceResultsToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A pagination token to resume pagination with a subsequent call to\n                <code>ListTagsForResourceResponse</code>.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MeasureValueType.add_member(:bigint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BIGINT', traits: {"smithy.api#enumValue" => "BIGINT"}))
    MeasureValueType.add_member(:boolean, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOLEAN', traits: {"smithy.api#enumValue" => "BOOLEAN"}))
    MeasureValueType.add_member(:double, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOUBLE', traits: {"smithy.api#enumValue" => "DOUBLE"}))
    MeasureValueType.add_member(:varchar, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VARCHAR', traits: {"smithy.api#enumValue" => "VARCHAR"}))
    MeasureValueType.add_member(:multi, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MULTI', traits: {"smithy.api#enumValue" => "MULTI"}))
    MixedMeasureMapping.add_member(:measure_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: 'MeasureName', traits: {"smithy.api#documentation" => "<p>Refers to the value of measure_name in a result row. This field is required if\n            MeasureNameColumn is provided.</p>"}))
    MixedMeasureMapping.add_member(:source_column, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: 'SourceColumn', traits: {"smithy.api#documentation" => "<p>This field refers to the source column from which measure-value is to be read for\n            result materialization.</p>"}))
    MixedMeasureMapping.add_member(:target_measure_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: 'TargetMeasureName', traits: {"smithy.api#documentation" => "<p>Target measure name to be used. If not provided, the target measure name by default\n            would be measure-name if provided, or sourceColumn otherwise. </p>"}))
    MixedMeasureMapping.add_member(:measure_value_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MeasureValueType, location_name: 'MeasureValueType', traits: {"smithy.api#documentation" => "<p>Type of the value that is to be read from sourceColumn. If the mapping is for MULTI,\n            use MeasureValueType.MULTI.</p>", "smithy.api#required" => {}}))
    MixedMeasureMapping.add_member(:multi_measure_attribute_mappings, Smithy::Schema::Shapes::ShapeRef.new(shape: MultiMeasureAttributeMappingList, location_name: 'MultiMeasureAttributeMappings', traits: {"smithy.api#documentation" => "<p>Required when measureValueType is MULTI. Attribute mappings for MULTI value\n            measures.</p>"}))
    MixedMeasureMapping.type = Types::MixedMeasureMapping
    MixedMeasureMappingList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MixedMeasureMapping)
    MultiMeasureAttributeMapping.add_member(:source_column, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: 'SourceColumn', traits: {"smithy.api#documentation" => "<p>Source column from where the attribute value is to be read.</p>", "smithy.api#required" => {}}))
    MultiMeasureAttributeMapping.add_member(:target_multi_measure_attribute_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: 'TargetMultiMeasureAttributeName', traits: {"smithy.api#documentation" => "<p>Custom name to be used for attribute name in derived table. If not provided, source\n            column name would be used.</p>"}))
    MultiMeasureAttributeMapping.add_member(:measure_value_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ScalarMeasureValueType, location_name: 'MeasureValueType', traits: {"smithy.api#documentation" => "<p>Type of the attribute to be read from the source column.</p>", "smithy.api#required" => {}}))
    MultiMeasureAttributeMapping.type = Types::MultiMeasureAttributeMapping
    MultiMeasureAttributeMappingList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MultiMeasureAttributeMapping)
    MultiMeasureMappings.add_member(:target_multi_measure_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: 'TargetMultiMeasureName', traits: {"smithy.api#documentation" => "<p>The name of the target multi-measure name in the derived table. This input is required\n            when measureNameColumn is not provided. If MeasureNameColumn is provided, then value\n            from that column will be used as multi-measure name.</p>"}))
    MultiMeasureMappings.add_member(:multi_measure_attribute_mappings, Smithy::Schema::Shapes::ShapeRef.new(shape: MultiMeasureAttributeMappingList, location_name: 'MultiMeasureAttributeMappings', traits: {"smithy.api#documentation" => "<p>Required. Attribute mappings to be used for mapping query results to ingest data for\n            multi-measure attributes.</p>", "smithy.api#required" => {}}))
    MultiMeasureMappings.type = Types::MultiMeasureMappings
    NotificationConfiguration.add_member(:sns_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsConfiguration, location_name: 'SnsConfiguration', traits: {"smithy.api#documentation" => "<p>Details about the Amazon Simple Notification Service (SNS) configuration. This field is visible only when SNS Topic is provided when updating the account settings.  </p>", "smithy.api#required" => {}}))
    NotificationConfiguration.type = Types::NotificationConfiguration
    ParameterMapping.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Parameter name.</p>", "smithy.api#required" => {}}))
    ParameterMapping.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    ParameterMapping.type = Types::ParameterMapping
    ParameterMappingList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterMapping)
    PartitionKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionKey)
    PrepareQueryRequest.add_member(:query_string, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: 'QueryString', traits: {"smithy.api#documentation" => "<p>The Timestream query string that you want to use as a prepared statement. Parameter\n            names can be specified in the query string <code>@</code> character followed by an\n            identifier. </p>", "smithy.api#required" => {}}))
    PrepareQueryRequest.add_member(:validate_only, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'ValidateOnly', traits: {"smithy.api#documentation" => "<p>By setting this value to <code>true</code>, Timestream will only validate that the\n            query string is a valid Timestream query, and not store the prepared query for later\n            use.</p>"}))
    PrepareQueryRequest.type = Types::PrepareQueryRequest
    PrepareQueryResponse.add_member(:query_string, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: 'QueryString', traits: {"smithy.api#documentation" => "<p>The query string that you want prepare.</p>", "smithy.api#required" => {}}))
    PrepareQueryResponse.add_member(:columns, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectColumnList, location_name: 'Columns', traits: {"smithy.api#documentation" => "<p>A list of SELECT clause columns of the submitted query string. </p>", "smithy.api#required" => {}}))
    PrepareQueryResponse.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterMappingList, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>A list of parameters used in the submitted query string. </p>", "smithy.api#required" => {}}))
    PrepareQueryResponse.type = Types::PrepareQueryResponse
    ProvisionedCapacityRequest.add_member(:target_query_tcu, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTCU, location_name: 'TargetQueryTCU', traits: {"smithy.api#documentation" => "<p>The target compute capacity for querying data, specified in Timestream Compute Units (TCUs).</p>", "smithy.api#required" => {}}))
    ProvisionedCapacityRequest.add_member(:notification_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettingsNotificationConfiguration, location_name: 'NotificationConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration settings for notifications related to the provisioned capacity update.</p>"}))
    ProvisionedCapacityRequest.type = Types::ProvisionedCapacityRequest
    ProvisionedCapacityResponse.add_member(:active_query_tcu, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTCU, location_name: 'ActiveQueryTCU', traits: {"smithy.api#documentation" => "<p>The number of Timestream Compute Units (TCUs) provisioned in the account. This field is only visible when the compute mode is <code>PROVISIONED</code>.</p>"}))
    ProvisionedCapacityResponse.add_member(:notification_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettingsNotificationConfiguration, location_name: 'NotificationConfiguration', traits: {"smithy.api#documentation" => "<p>An object that contains settings for notifications that are sent whenever the provisioned capacity settings are modified. This field is only visible when the compute mode is <code>PROVISIONED</code>.</p>"}))
    ProvisionedCapacityResponse.add_member(:last_update, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdate, location_name: 'LastUpdate', traits: {"smithy.api#documentation" => "<p>Information about the last update to the provisioned capacity settings.</p>"}))
    ProvisionedCapacityResponse.type = Types::ProvisionedCapacityResponse
    QueryComputeRequest.add_member(:compute_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeMode, location_name: 'ComputeMode', traits: {"smithy.api#documentation" => "<p>The mode in which Timestream Compute Units (TCUs) are allocated and utilized within an account. Note that in the Asia Pacific (Mumbai)  region, the API operation only recognizes the value <code>PROVISIONED</code>.</p>"}))
    QueryComputeRequest.add_member(:provisioned_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedCapacityRequest, location_name: 'ProvisionedCapacity', traits: {"smithy.api#documentation" => "<p>Configuration object that contains settings for provisioned Timestream Compute Units (TCUs) in your account.</p>"}))
    QueryComputeRequest.type = Types::QueryComputeRequest
    QueryComputeResponse.add_member(:compute_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeMode, location_name: 'ComputeMode', traits: {"smithy.api#documentation" => "<p>The mode in which Timestream Compute Units (TCUs) are allocated and utilized within an account. Note that in the Asia Pacific (Mumbai)  region, the API operation only recognizes the value <code>PROVISIONED</code>.</p>"}))
    QueryComputeResponse.add_member(:provisioned_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedCapacityResponse, location_name: 'ProvisionedCapacity', traits: {"smithy.api#documentation" => "<p>Configuration object that contains settings for provisioned Timestream Compute Units (TCUs) in your account.</p>"}))
    QueryComputeResponse.type = Types::QueryComputeResponse
    QueryExecutionException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    QueryExecutionException.type = Types::QueryExecutionException
    QueryInsights.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryInsightsMode, location_name: 'Mode', traits: {"smithy.api#documentation" => "<p>Provides the following modes to enable <code>QueryInsights</code>:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ENABLED_WITH_RATE_CONTROL</code> – Enables <code>QueryInsights</code> for the queries being processed. This mode also includes a rate control mechanism, which limits the <code>QueryInsights</code> feature to 1 query per second (QPS).</p>\n            </li>\n            <li>\n               <p>\n                  <code>DISABLED</code> – Disables <code>QueryInsights</code>.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    QueryInsights.type = Types::QueryInsights
    QueryInsightsMode.add_member(:enabled_with_rate_control, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED_WITH_RATE_CONTROL', traits: {"smithy.api#enumValue" => "ENABLED_WITH_RATE_CONTROL"}))
    QueryInsightsMode.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    QueryInsightsResponse.add_member(:query_spatial_coverage, Smithy::Schema::Shapes::ShapeRef.new(shape: QuerySpatialCoverage, location_name: 'QuerySpatialCoverage', traits: {"smithy.api#documentation" => "<p>Provides insights into the spatial coverage of the query, including the table with sub-optimal (max) spatial pruning. This information can help you identify areas for improvement in your partitioning strategy to enhance spatial pruning. </p>"}))
    QueryInsightsResponse.add_member(:query_temporal_range, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTemporalRange, location_name: 'QueryTemporalRange', traits: {"smithy.api#documentation" => "<p>Provides insights into the temporal range of the query, including the table with the largest (max) time range. Following are some of the potential options for optimizing time-based pruning:</p>\n         <ul>\n            <li>\n               <p>Add missing time-predicates.</p>\n            </li>\n            <li>\n               <p>Remove functions around the time predicates.</p>\n            </li>\n            <li>\n               <p>Add time predicates to all the sub-queries.</p>\n            </li>\n         </ul>"}))
    QueryInsightsResponse.add_member(:query_table_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'QueryTableCount', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Indicates the number of tables in the query.</p>"}))
    QueryInsightsResponse.add_member(:output_rows, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'OutputRows', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Indicates the total number of rows returned as part of the query result set. You can use this data to validate if the number of rows in the result set have changed as part of the query tuning exercise.</p>"}))
    QueryInsightsResponse.add_member(:output_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'OutputBytes', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Indicates the size of query result set in bytes. You can use this data to validate if the result set has changed as part of the query tuning exercise.</p>"}))
    QueryInsightsResponse.add_member(:unload_partition_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'UnloadPartitionCount', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Indicates the partitions created by the <code>Unload</code> operation.</p>"}))
    QueryInsightsResponse.add_member(:unload_written_rows, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'UnloadWrittenRows', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Indicates the rows written by the <code>Unload</code> query.</p>"}))
    QueryInsightsResponse.add_member(:unload_written_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'UnloadWrittenBytes', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Indicates the size, in bytes, written by the <code>Unload</code> operation.</p>"}))
    QueryInsightsResponse.type = Types::QueryInsightsResponse
    QueryPricingModel.add_member(:bytes_scanned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BYTES_SCANNED', traits: {"smithy.api#enumValue" => "BYTES_SCANNED"}))
    QueryPricingModel.add_member(:compute_units, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPUTE_UNITS', traits: {"smithy.api#enumValue" => "COMPUTE_UNITS"}))
    QueryRequest.add_member(:query_string, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: 'QueryString', traits: {"smithy.api#documentation" => "<p> The query to be run by Timestream. </p>", "smithy.api#required" => {}}))
    QueryRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p> Unique, case-sensitive string of up to 64 ASCII characters specified when a\n                <code>Query</code> request is made. Providing a <code>ClientToken</code> makes the\n            call to <code>Query</code>\n            <i>idempotent</i>. This means that running the same query repeatedly will\n            produce the same result. In other words, making multiple identical <code>Query</code>\n            requests has the same effect as making a single request. When using\n                <code>ClientToken</code> in a query, note the following: </p>\n         <ul>\n            <li>\n               <p> If the Query API is instantiated without a <code>ClientToken</code>, the\n                    Query SDK generates a <code>ClientToken</code> on your behalf.</p>\n            </li>\n            <li>\n               <p>If the <code>Query</code> invocation only contains the\n                        <code>ClientToken</code> but does not include a <code>NextToken</code>, that\n                    invocation of <code>Query</code> is assumed to be a new query run.</p>\n            </li>\n            <li>\n               <p>If the invocation contains <code>NextToken</code>, that particular invocation\n                    is assumed to be a subsequent invocation of a prior call to the Query API, and a\n                    result set is returned.</p>\n            </li>\n            <li>\n               <p> After 4 hours, any request with the same <code>ClientToken</code> is treated\n                    as a new request. </p>\n            </li>\n         </ul>", "smithy.api#idempotencyToken" => {}}))
    QueryRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> A pagination token used to return a set of results. When the <code>Query</code> API\n            is invoked using <code>NextToken</code>, that particular invocation is assumed to be a\n            subsequent invocation of a prior call to <code>Query</code>, and a result set is\n            returned. However, if the <code>Query</code> invocation only contains the\n                <code>ClientToken</code>, that invocation of <code>Query</code> is assumed to be a\n            new query run. </p>\n         <p>Note the following when using NextToken in a query:</p>\n         <ul>\n            <li>\n               <p>A pagination token can be used for up to five <code>Query</code> invocations,\n                    OR for a duration of up to 1 hour – whichever comes first.</p>\n            </li>\n            <li>\n               <p>Using the same <code>NextToken</code> will return the same set of records. To\n                    keep paginating through the result set, you must to use the most recent\n                        <code>nextToken</code>.</p>\n            </li>\n            <li>\n               <p>Suppose a <code>Query</code> invocation returns two <code>NextToken</code>\n                    values, <code>TokenA</code> and <code>TokenB</code>. If <code>TokenB</code> is\n                    used in a subsequent <code>Query</code> invocation, then <code>TokenA</code> is\n                    invalidated and cannot be reused.</p>\n            </li>\n            <li>\n               <p>To request a previous result set from a query after pagination has begun, you\n                    must re-invoke the Query API.</p>\n            </li>\n            <li>\n               <p>The latest <code>NextToken</code> should be used to paginate until\n                        <code>null</code> is returned, at which point a new <code>NextToken</code>\n                    should be used.</p>\n            </li>\n            <li>\n               <p> If the IAM principal of the query initiator and the result reader are not the\n                    same and/or the query initiator and the result reader do not have the same query\n                    string in the query requests, the query will fail with an <code>Invalid\n                        pagination token</code> error. </p>\n            </li>\n         </ul>"}))
    QueryRequest.add_member(:max_rows, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxQueryResults, location_name: 'MaxRows', traits: {"smithy.api#documentation" => "<p> The total number of rows to be returned in the <code>Query</code> output. The initial\n            run of <code>Query</code> with a <code>MaxRows</code> value specified will return the\n            result set of the query in two cases: </p>\n         <ul>\n            <li>\n               <p>The size of the result is less than <code>1MB</code>.</p>\n            </li>\n            <li>\n               <p>The number of rows in the result set is less than the value of\n                        <code>maxRows</code>.</p>\n            </li>\n         </ul>\n         <p>Otherwise, the initial invocation of <code>Query</code> only returns a\n                <code>NextToken</code>, which can then be used in subsequent calls to fetch the\n            result set. To resume pagination, provide the <code>NextToken</code> value in the\n            subsequent command.</p>\n         <p>If the row size is large (e.g. a row has many columns), Timestream may return\n            fewer rows to keep the response size from exceeding the 1 MB limit. If\n                <code>MaxRows</code> is not provided, Timestream will send the necessary\n            number of rows to meet the 1 MB limit.</p>"}))
    QueryRequest.add_member(:query_insights, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryInsights, location_name: 'QueryInsights', traits: {"smithy.api#documentation" => "<p>Encapsulates settings for enabling <code>QueryInsights</code>.</p>\n         <p>Enabling <code>QueryInsights</code> returns insights and metrics in addition to query results for the query that you executed. You can use <code>QueryInsights</code> to tune your query performance.</p>"}))
    QueryRequest.type = Types::QueryRequest
    QueryResponse.add_member(:query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryId, location_name: 'QueryId', traits: {"smithy.api#documentation" => "<p> A unique ID for the given query. </p>", "smithy.api#required" => {}}))
    QueryResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> A pagination token that can be used again on a <code>Query</code> call to get the\n            next set of results. </p>"}))
    QueryResponse.add_member(:rows, Smithy::Schema::Shapes::ShapeRef.new(shape: RowList, location_name: 'Rows', traits: {"smithy.api#documentation" => "<p> The result set rows returned by the query. </p>", "smithy.api#required" => {}}))
    QueryResponse.add_member(:column_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnInfoList, location_name: 'ColumnInfo', traits: {"smithy.api#documentation" => "<p> The column data types of the returned result set. </p>", "smithy.api#required" => {}}))
    QueryResponse.add_member(:query_status, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStatus, location_name: 'QueryStatus', traits: {"smithy.api#documentation" => "<p>Information about the status of the query, including progress and bytes\n            scanned.</p>"}))
    QueryResponse.add_member(:query_insights_response, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryInsightsResponse, location_name: 'QueryInsightsResponse', traits: {"smithy.api#documentation" => "<p>Encapsulates <code>QueryInsights</code> containing insights and metrics related to the query that you executed.</p>"}))
    QueryResponse.type = Types::QueryResponse
    QuerySpatialCoverage.add_member(:max, Smithy::Schema::Shapes::ShapeRef.new(shape: QuerySpatialCoverageMax, location_name: 'Max', traits: {"smithy.api#documentation" => "<p>Provides insights into the spatial coverage of the executed query and the table with the most inefficient spatial pruning.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Value</code> – The maximum ratio of spatial coverage.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TableArn</code> – The Amazon Resource Name (ARN) of the table with sub-optimal spatial pruning.</p>\n            </li>\n            <li>\n               <p>\n                  <code>PartitionKey</code> – The partition key used for partitioning, which can be a default <code>measure_name</code> or a CDPK.</p>\n            </li>\n         </ul>"}))
    QuerySpatialCoverage.type = Types::QuerySpatialCoverage
    QuerySpatialCoverageMax.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'Value', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum ratio of spatial coverage.</p>"}))
    QuerySpatialCoverageMax.add_member(:table_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'TableArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the table with the most sub-optimal spatial pruning.</p>"}))
    QuerySpatialCoverageMax.add_member(:partition_key, Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionKeyList, location_name: 'PartitionKey', traits: {"smithy.api#documentation" => "<p>The partition key used for partitioning, which can be a default <code>measure_name</code> or a <a href=\"https://docs.aws.amazon.com/timestream/latest/developerguide/customer-defined-partition-keys.html\">customer defined partition key</a>.</p>"}))
    QuerySpatialCoverageMax.type = Types::QuerySpatialCoverageMax
    QueryStatus.add_member(:progress_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'ProgressPercentage', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The progress of the query, expressed as a percentage.</p>"}))
    QueryStatus.add_member(:cumulative_bytes_scanned, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'CumulativeBytesScanned', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of data scanned by the query in bytes. This is a cumulative sum and\n            represents the total amount of bytes scanned since the query was started. </p>"}))
    QueryStatus.add_member(:cumulative_bytes_metered, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'CumulativeBytesMetered', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of data scanned by the query in bytes that you will be charged for. This is\n            a cumulative sum and represents the total amount of data that you will be charged for\n            since the query was started. The charge is applied only once and is either applied when\n            the query completes running or when the query is cancelled. </p>"}))
    QueryStatus.type = Types::QueryStatus
    QueryTemporalRange.add_member(:max, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTemporalRangeMax, location_name: 'Max', traits: {"smithy.api#documentation" => "<p>Encapsulates the following properties that provide insights into the most sub-optimal performing table on the temporal axis:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Value</code> – The maximum duration in nanoseconds between the start and end of the query.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TableArn</code> – The Amazon Resource Name (ARN) of the table which is queried with the largest time range.</p>\n            </li>\n         </ul>"}))
    QueryTemporalRange.type = Types::QueryTemporalRange
    QueryTemporalRangeMax.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'Value', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum duration in nanoseconds between the start and end of the query.</p>"}))
    QueryTemporalRangeMax.add_member(:table_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'TableArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the table which is queried with the largest time range.</p>"}))
    QueryTemporalRangeMax.type = Types::QueryTemporalRangeMax
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.add_member(:scheduled_query_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ScheduledQueryArn', traits: {"smithy.api#documentation" => "<p>The ARN of the scheduled query.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    Row.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: DatumList, location_name: 'Data', traits: {"smithy.api#documentation" => "<p>List of data points in a single row of the result set.</p>", "smithy.api#required" => {}}))
    Row.type = Types::Row
    RowList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Row)
    S3Configuration.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'BucketName', traits: {"smithy.api#documentation" => "<p> Name of the S3 bucket under which error reports will be created.</p>", "smithy.api#required" => {}}))
    S3Configuration.add_member(:object_key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectKeyPrefix, location_name: 'ObjectKeyPrefix', traits: {"smithy.api#documentation" => "<p> Prefix for the error report key. Timestream by default adds the following prefix to\n            the error report path. </p>"}))
    S3Configuration.add_member(:encryption_option, Smithy::Schema::Shapes::ShapeRef.new(shape: S3EncryptionOption, location_name: 'EncryptionOption', traits: {"smithy.api#documentation" => "<p> Encryption at rest options for the error reports. If no encryption option is\n            specified, Timestream will choose SSE_S3 as default. </p>"}))
    S3Configuration.type = Types::S3Configuration
    S3EncryptionOption.add_member(:sse_s3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSE_S3', traits: {"smithy.api#enumValue" => "SSE_S3"}))
    S3EncryptionOption.add_member(:sse_kms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSE_KMS', traits: {"smithy.api#enumValue" => "SSE_KMS"}))
    S3ReportLocation.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'BucketName', traits: {"smithy.api#documentation" => "<p> S3 bucket name. </p>"}))
    S3ReportLocation.add_member(:object_key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: 'ObjectKey', traits: {"smithy.api#documentation" => "<p>S3 key. </p>"}))
    S3ReportLocation.type = Types::S3ReportLocation
    ScalarMeasureValueType.add_member(:bigint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BIGINT', traits: {"smithy.api#enumValue" => "BIGINT"}))
    ScalarMeasureValueType.add_member(:boolean, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOLEAN', traits: {"smithy.api#enumValue" => "BOOLEAN"}))
    ScalarMeasureValueType.add_member(:double, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOUBLE', traits: {"smithy.api#enumValue" => "DOUBLE"}))
    ScalarMeasureValueType.add_member(:varchar, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VARCHAR', traits: {"smithy.api#enumValue" => "VARCHAR"}))
    ScalarMeasureValueType.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMESTAMP', traits: {"smithy.api#enumValue" => "TIMESTAMP"}))
    ScalarType.add_member(:varchar, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VARCHAR', traits: {"smithy.api#enumValue" => "VARCHAR"}))
    ScalarType.add_member(:boolean, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOLEAN', traits: {"smithy.api#enumValue" => "BOOLEAN"}))
    ScalarType.add_member(:bigint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BIGINT', traits: {"smithy.api#enumValue" => "BIGINT"}))
    ScalarType.add_member(:double, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOUBLE', traits: {"smithy.api#enumValue" => "DOUBLE"}))
    ScalarType.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMESTAMP', traits: {"smithy.api#enumValue" => "TIMESTAMP"}))
    ScalarType.add_member(:date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATE', traits: {"smithy.api#enumValue" => "DATE"}))
    ScalarType.add_member(:time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIME', traits: {"smithy.api#enumValue" => "TIME"}))
    ScalarType.add_member(:interval_day_to_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERVAL_DAY_TO_SECOND', traits: {"smithy.api#enumValue" => "INTERVAL_DAY_TO_SECOND"}))
    ScalarType.add_member(:interval_year_to_month, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERVAL_YEAR_TO_MONTH', traits: {"smithy.api#enumValue" => "INTERVAL_YEAR_TO_MONTH"}))
    ScalarType.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    ScalarType.add_member(:integer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTEGER', traits: {"smithy.api#enumValue" => "INTEGER"}))
    ScheduleConfiguration.add_member(:schedule_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: 'ScheduleExpression', traits: {"smithy.api#documentation" => "<p>An expression that denotes when to trigger the scheduled query run. This can be a cron\n            expression or a rate expression. </p>", "smithy.api#required" => {}}))
    ScheduleConfiguration.type = Types::ScheduleConfiguration
    ScheduledQuery.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name.</p>", "smithy.api#required" => {}}))
    ScheduledQuery.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the scheduled query.</p>", "smithy.api#required" => {}}))
    ScheduledQuery.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The creation time of the scheduled query.</p>"}))
    ScheduledQuery.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>State of scheduled query. </p>", "smithy.api#required" => {}}))
    ScheduledQuery.add_member(:previous_invocation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'PreviousInvocationTime', traits: {"smithy.api#documentation" => "<p>The last time the scheduled query was run.</p>"}))
    ScheduledQuery.add_member(:next_invocation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'NextInvocationTime', traits: {"smithy.api#documentation" => "<p>The next time the scheduled query is to be run.</p>"}))
    ScheduledQuery.add_member(:error_report_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorReportConfiguration, location_name: 'ErrorReportConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration for scheduled query error reporting.</p>"}))
    ScheduledQuery.add_member(:target_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDestination, location_name: 'TargetDestination', traits: {"smithy.api#documentation" => "<p>Target data source where final scheduled query result will be written.</p>"}))
    ScheduledQuery.add_member(:last_run_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryRunStatus, location_name: 'LastRunStatus', traits: {"smithy.api#documentation" => "<p>Status of the last scheduled query run.</p>"}))
    ScheduledQuery.type = Types::ScheduledQuery
    ScheduledQueryDescription.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>Scheduled query ARN.</p>", "smithy.api#required" => {}}))
    ScheduledQueryDescription.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the scheduled query.</p>", "smithy.api#required" => {}}))
    ScheduledQueryDescription.add_member(:query_string, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: 'QueryString', traits: {"smithy.api#documentation" => "<p>The query to be run.</p>", "smithy.api#required" => {}}))
    ScheduledQueryDescription.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>Creation time of the scheduled query.</p>"}))
    ScheduledQueryDescription.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>State of the scheduled query. </p>", "smithy.api#required" => {}}))
    ScheduledQueryDescription.add_member(:previous_invocation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'PreviousInvocationTime', traits: {"smithy.api#documentation" => "<p>Last time the query was run.</p>"}))
    ScheduledQueryDescription.add_member(:next_invocation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'NextInvocationTime', traits: {"smithy.api#documentation" => "<p>The next time the scheduled query is scheduled to run.</p>"}))
    ScheduledQueryDescription.add_member(:schedule_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleConfiguration, location_name: 'ScheduleConfiguration', traits: {"smithy.api#documentation" => "<p>Schedule configuration.</p>", "smithy.api#required" => {}}))
    ScheduledQueryDescription.add_member(:notification_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfiguration, location_name: 'NotificationConfiguration', traits: {"smithy.api#documentation" => "<p>Notification configuration.</p>", "smithy.api#required" => {}}))
    ScheduledQueryDescription.add_member(:target_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetConfiguration, location_name: 'TargetConfiguration', traits: {"smithy.api#documentation" => "<p>Scheduled query target store configuration.</p>"}))
    ScheduledQueryDescription.add_member(:scheduled_query_execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ScheduledQueryExecutionRoleArn', traits: {"smithy.api#documentation" => "<p>IAM role that Timestream uses to run the schedule query.</p>"}))
    ScheduledQueryDescription.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValue2048, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>A customer provided KMS key used to encrypt the scheduled query resource.</p>"}))
    ScheduledQueryDescription.add_member(:error_report_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorReportConfiguration, location_name: 'ErrorReportConfiguration', traits: {"smithy.api#documentation" => "<p>Error-reporting configuration for the scheduled query.</p>"}))
    ScheduledQueryDescription.add_member(:last_run_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryRunSummary, location_name: 'LastRunSummary', traits: {"smithy.api#documentation" => "<p>Runtime summary for the last scheduled query run. </p>"}))
    ScheduledQueryDescription.add_member(:recently_failed_runs, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryRunSummaryList, location_name: 'RecentlyFailedRuns', traits: {"smithy.api#documentation" => "<p>Runtime summary for the last five failed scheduled query runs.</p>"}))
    ScheduledQueryDescription.type = Types::ScheduledQueryDescription
    ScheduledQueryInsights.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryInsightsMode, location_name: 'Mode', traits: {"smithy.api#documentation" => "<p>Provides the following modes to enable <code>ScheduledQueryInsights</code>:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ENABLED_WITH_RATE_CONTROL</code> – Enables <code>ScheduledQueryInsights</code> for the queries being processed. This mode also includes a rate control mechanism, which limits the <code>QueryInsights</code> feature to 1 query per second (QPS).</p>\n            </li>\n            <li>\n               <p>\n                  <code>DISABLED</code> – Disables <code>ScheduledQueryInsights</code>.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    ScheduledQueryInsights.type = Types::ScheduledQueryInsights
    ScheduledQueryInsightsMode.add_member(:enabled_with_rate_control, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED_WITH_RATE_CONTROL', traits: {"smithy.api#enumValue" => "ENABLED_WITH_RATE_CONTROL"}))
    ScheduledQueryInsightsMode.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    ScheduledQueryInsightsResponse.add_member(:query_spatial_coverage, Smithy::Schema::Shapes::ShapeRef.new(shape: QuerySpatialCoverage, location_name: 'QuerySpatialCoverage', traits: {"smithy.api#documentation" => "<p>Provides insights into the spatial coverage of the query, including the table with sub-optimal (max) spatial pruning. This information can help you identify areas for improvement in your partitioning strategy to enhance spatial pruning.</p>"}))
    ScheduledQueryInsightsResponse.add_member(:query_temporal_range, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTemporalRange, location_name: 'QueryTemporalRange', traits: {"smithy.api#documentation" => "<p>Provides insights into the temporal range of the query, including the table with the largest (max) time range. Following are some of the potential options for optimizing time-based pruning:</p>\n         <ul>\n            <li>\n               <p>Add missing time-predicates.</p>\n            </li>\n            <li>\n               <p>Remove functions around the time predicates.</p>\n            </li>\n            <li>\n               <p>Add time predicates to all the sub-queries.</p>\n            </li>\n         </ul>"}))
    ScheduledQueryInsightsResponse.add_member(:query_table_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'QueryTableCount', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Indicates the number of tables in the query.</p>"}))
    ScheduledQueryInsightsResponse.add_member(:output_rows, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'OutputRows', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Indicates the total number of rows returned as part of the query result set. You can use this data to validate if the number of rows in the result set have changed as part of the query tuning exercise.</p>"}))
    ScheduledQueryInsightsResponse.add_member(:output_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'OutputBytes', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Indicates the size of query result set in bytes. You can use this data to validate if the result set has changed as part of the query tuning exercise.</p>"}))
    ScheduledQueryInsightsResponse.type = Types::ScheduledQueryInsightsResponse
    ScheduledQueryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQuery)
    ScheduledQueryRunStatus.add_member(:auto_trigger_success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO_TRIGGER_SUCCESS', traits: {"smithy.api#enumValue" => "AUTO_TRIGGER_SUCCESS"}))
    ScheduledQueryRunStatus.add_member(:auto_trigger_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO_TRIGGER_FAILURE', traits: {"smithy.api#enumValue" => "AUTO_TRIGGER_FAILURE"}))
    ScheduledQueryRunStatus.add_member(:manual_trigger_success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANUAL_TRIGGER_SUCCESS', traits: {"smithy.api#enumValue" => "MANUAL_TRIGGER_SUCCESS"}))
    ScheduledQueryRunStatus.add_member(:manual_trigger_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANUAL_TRIGGER_FAILURE', traits: {"smithy.api#enumValue" => "MANUAL_TRIGGER_FAILURE"}))
    ScheduledQueryRunSummary.add_member(:invocation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'InvocationTime', traits: {"smithy.api#documentation" => "<p>InvocationTime for this run. This is the time at which the query is scheduled to run.\n            Parameter <code>@scheduled_runtime</code> can be used in the query to get the value.\n        </p>"}))
    ScheduledQueryRunSummary.add_member(:trigger_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'TriggerTime', traits: {"smithy.api#documentation" => "<p>The actual time when the query was run.</p>"}))
    ScheduledQueryRunSummary.add_member(:run_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryRunStatus, location_name: 'RunStatus', traits: {"smithy.api#documentation" => "<p>The status of a scheduled query run.</p>"}))
    ScheduledQueryRunSummary.add_member(:execution_stats, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStats, location_name: 'ExecutionStats', traits: {"smithy.api#documentation" => "<p>Runtime statistics for a scheduled run.</p>"}))
    ScheduledQueryRunSummary.add_member(:query_insights_response, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryInsightsResponse, location_name: 'QueryInsightsResponse', traits: {"smithy.api#documentation" => "<p>Provides various insights and metrics related to the run summary of the scheduled query.</p>"}))
    ScheduledQueryRunSummary.add_member(:error_report_location, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorReportLocation, location_name: 'ErrorReportLocation', traits: {"smithy.api#documentation" => "<p>S3 location for error report.</p>"}))
    ScheduledQueryRunSummary.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'FailureReason', traits: {"smithy.api#documentation" => "<p>Error message for the scheduled query in case of failure. You might have to look at\n            the error report to get more detailed error reasons. </p>"}))
    ScheduledQueryRunSummary.type = Types::ScheduledQueryRunSummary
    ScheduledQueryRunSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryRunSummary)
    ScheduledQueryState.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    ScheduledQueryState.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    SelectColumn.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the column.</p>"}))
    SelectColumn.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'Type'))
    SelectColumn.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p> Database that has this column.</p>"}))
    SelectColumn.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>Table within the database that has this column. </p>"}))
    SelectColumn.add_member(:aliased, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'Aliased', traits: {"smithy.api#documentation" => "<p>True, if the column name was aliased by the query. False otherwise.</p>"}))
    SelectColumn.type = Types::SelectColumn
    SelectColumnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SelectColumn)
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SnsConfiguration.add_member(:topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'TopicArn', traits: {"smithy.api#documentation" => "<p>SNS topic ARN that the scheduled query status notifications will be sent to.</p>", "smithy.api#required" => {}}))
    SnsConfiguration.type = Types::SnsConfiguration
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key of the tag. Tag keys are case sensitive. </p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the tag. Tag values are case sensitive and can be null. </p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>Identifies the Timestream resource to which tags should be added. This value is an\n            Amazon Resource Name (ARN).</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to be assigned to the Timestream resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetConfiguration.add_member(:timestream_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestreamConfiguration, location_name: 'TimestreamConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration needed to write data into the Timestream database and table.</p>", "smithy.api#required" => {}}))
    TargetConfiguration.type = Types::TargetConfiguration
    TargetDestination.add_member(:timestream_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestreamDestination, location_name: 'TimestreamDestination', traits: {"smithy.api#documentation" => "<p>Query result destination details for Timestream data source.</p>"}))
    TargetDestination.type = Types::TargetDestination
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ThrottlingException.type = Types::ThrottlingException
    TimeSeriesDataPoint.add_member(:time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Time', traits: {"smithy.api#documentation" => "<p>The timestamp when the measure value was collected.</p>", "smithy.api#required" => {}}))
    TimeSeriesDataPoint.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Datum, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The measure value for the data point.</p>", "smithy.api#required" => {}}))
    TimeSeriesDataPoint.type = Types::TimeSeriesDataPoint
    TimeSeriesDataPointList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TimeSeriesDataPoint)
    TimestreamConfiguration.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>Name of Timestream database to which the query result will be written.</p>", "smithy.api#required" => {}}))
    TimestreamConfiguration.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>Name of Timestream table that the query result will be written to. The table should be\n            within the same database that is provided in Timestream configuration.</p>", "smithy.api#required" => {}}))
    TimestreamConfiguration.add_member(:time_column, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: 'TimeColumn', traits: {"smithy.api#documentation" => "<p>Column from query result that should be used as the time column in destination table.\n            Column type for this should be TIMESTAMP.</p>", "smithy.api#required" => {}}))
    TimestreamConfiguration.add_member(:dimension_mappings, Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionMappingList, location_name: 'DimensionMappings', traits: {"smithy.api#documentation" => "<p> This is to allow mapping column(s) from the query result to the dimension in the\n            destination table. </p>", "smithy.api#required" => {}}))
    TimestreamConfiguration.add_member(:multi_measure_mappings, Smithy::Schema::Shapes::ShapeRef.new(shape: MultiMeasureMappings, location_name: 'MultiMeasureMappings', traits: {"smithy.api#documentation" => "<p>Multi-measure mappings.</p>"}))
    TimestreamConfiguration.add_member(:mixed_measure_mappings, Smithy::Schema::Shapes::ShapeRef.new(shape: MixedMeasureMappingList, location_name: 'MixedMeasureMappings', traits: {"smithy.api#documentation" => "<p>Specifies how to map measures to multi-measure records.</p>"}))
    TimestreamConfiguration.add_member(:measure_name_column, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: 'MeasureNameColumn', traits: {"smithy.api#documentation" => "<p>Name of the measure column.</p>"}))
    TimestreamConfiguration.type = Types::TimestreamConfiguration
    TimestreamDestination.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>Timestream database name. </p>"}))
    TimestreamDestination.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>Timestream table name. </p>"}))
    TimestreamDestination.type = Types::TimestreamDestination
    Type.add_member(:scalar_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ScalarType, location_name: 'ScalarType', traits: {"smithy.api#documentation" => "<p>Indicates if the column is of type string, integer, Boolean, double, timestamp, date,\n            time. For more information, see <a href=\"https://docs.aws.amazon.com/timestream/latest/developerguide/supported-data-types.html\">Supported data\n                types</a>.</p>"}))
    Type.add_member(:array_column_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnInfo, location_name: 'ArrayColumnInfo', traits: {"smithy.api#documentation" => "<p>Indicates if the column is an array.</p>"}))
    Type.add_member(:time_series_measure_value_column_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnInfo, location_name: 'TimeSeriesMeasureValueColumnInfo', traits: {"smithy.api#documentation" => "<p>Indicates if the column is a timeseries data type.</p>"}))
    Type.add_member(:row_column_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnInfoList, location_name: 'RowColumnInfo', traits: {"smithy.api#documentation" => "<p>Indicates if the column is a row.</p>"}))
    Type.type = Types::Type
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Timestream resource that the tags will be removed from. This value is an Amazon\n            Resource Name (ARN). </p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>A list of tags keys. Existing tags of the resource whose keys are members of this list\n            will be removed from the Timestream resource. </p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAccountSettingsRequest.add_member(:max_query_tcu, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxQueryCapacity, location_name: 'MaxQueryTCU', traits: {"smithy.api#documentation" => "<p>The maximum number of compute units the service will use at any point in time to serve your queries. To run queries, you must set a minimum capacity of 4 TCU. You can set the maximum number of TCU in multiples of 4, for example, 4, 8, 16, 32, and so on. The maximum value supported for <code>MaxQueryTCU</code> is 1000. To request an increase to this soft limit, contact Amazon Web Services Support. For information about the default quota for maxQueryTCU, see Default quotas. This configuration is applicable only for on-demand usage of Timestream Compute Units (TCUs).</p>\n         <p>The maximum value supported for <code>MaxQueryTCU</code> is 1000. To request an increase to this soft limit, contact Amazon Web Services Support. For information about the default quota for <code>maxQueryTCU</code>, see <a href=\"https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html#limits.default\">Default quotas</a>.</p>"}))
    UpdateAccountSettingsRequest.add_member(:query_pricing_model, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryPricingModel, location_name: 'QueryPricingModel', traits: {"smithy.api#documentation" => "<p>The pricing model for queries in an account.</p>\n         <note>\n            <p>The <code>QueryPricingModel</code> parameter is used by several Timestream operations; however, the <code>UpdateAccountSettings</code> API operation doesn't recognize any values other than <code>COMPUTE_UNITS</code>.</p>\n         </note>"}))
    UpdateAccountSettingsRequest.add_member(:query_compute, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryComputeRequest, location_name: 'QueryCompute', traits: {"smithy.api#documentation" => "<p>Modifies the query compute settings configured in your account, including the query pricing model and provisioned Timestream Compute Units (TCUs) in your account.</p>\n         <note>\n            <p>This API is idempotent, meaning that making the same request multiple times will have the same effect as making the request once.</p>\n         </note>"}))
    UpdateAccountSettingsRequest.type = Types::UpdateAccountSettingsRequest
    UpdateAccountSettingsResponse.add_member(:max_query_tcu, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxQueryCapacity, location_name: 'MaxQueryTCU', traits: {"smithy.api#documentation" => "<p>The configured maximum number of compute units the service will use at any point in time to serve your queries.</p>"}))
    UpdateAccountSettingsResponse.add_member(:query_pricing_model, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryPricingModel, location_name: 'QueryPricingModel', traits: {"smithy.api#documentation" => "<p>The pricing model for an account.</p>"}))
    UpdateAccountSettingsResponse.add_member(:query_compute, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryComputeResponse, location_name: 'QueryCompute', traits: {"smithy.api#documentation" => "<p>Confirms the updated account settings for querying data in your account.</p>"}))
    UpdateAccountSettingsResponse.type = Types::UpdateAccountSettingsResponse
    UpdateScheduledQueryRequest.add_member(:scheduled_query_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ScheduledQueryArn', traits: {"smithy.api#documentation" => "<p>ARN of the scheuled query.</p>", "smithy.api#required" => {}}))
    UpdateScheduledQueryRequest.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledQueryState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>State of the scheduled query. </p>", "smithy.api#required" => {}}))
    UpdateScheduledQueryRequest.type = Types::UpdateScheduledQueryRequest
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ValidationException.type = Types::ValidationException

    Timestream20181101 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.timestreamquery#Timestream_20181101"
      service.name = "Timestream20181101"
      service.version = "2018-11-01"
      service.traits = {"aws.api#clientEndpointDiscovery" => {"operation" => "com.amazonaws.timestreamquery#DescribeEndpoints", "error" => "com.amazonaws.timestreamquery#InvalidEndpointException"}, "aws.api#service" => {"sdkId" => "Timestream Query", "arnNamespace" => "timestream", "cloudFormationName" => "TimestreamQuery", "cloudTrailEventSource" => "timestreamquery.amazonaws.com", "endpointPrefix" => "query.timestream"}, "aws.auth#sigv4" => {"name" => "timestream"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Amazon Timestream Query"}
      service.add_operation(:cancel_query, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamquery#CancelQuery"
        operation.name = "CancelQuery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelQueryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelQueryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_scheduled_query, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamquery#CreateScheduledQuery"
        operation.name = "CreateScheduledQuery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateScheduledQueryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateScheduledQueryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_scheduled_query, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamquery#DeleteScheduledQuery"
        operation.name = "DeleteScheduledQuery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteScheduledQueryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_account_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamquery#DescribeAccountSettings"
        operation.name = "DescribeAccountSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:describe_endpoints, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamquery#DescribeEndpoints"
        operation.name = "DescribeEndpoints"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEndpointsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEndpointsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_scheduled_query, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamquery#DescribeScheduledQuery"
        operation.name = "DescribeScheduledQuery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeScheduledQueryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeScheduledQueryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:execute_scheduled_query, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamquery#ExecuteScheduledQuery"
        operation.name = "ExecuteScheduledQuery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteScheduledQueryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:list_scheduled_queries, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamquery#ListScheduledQueries"
        operation.name = "ListScheduledQueries"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListScheduledQueriesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListScheduledQueriesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
        operation[:paginator] = Paginators::ListScheduledQueries.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamquery#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:prepare_query, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamquery#PrepareQuery"
        operation.name = "PrepareQuery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PrepareQueryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PrepareQueryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:query, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamquery#Query"
        operation.name = "Query"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::Query.new
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamquery#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamquery#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:update_account_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamquery#UpdateAccountSettings"
        operation.name = "UpdateAccountSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccountSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccountSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_scheduled_query, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamquery#UpdateScheduledQuery"
        operation.name = "UpdateScheduledQuery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateScheduledQueryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
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
