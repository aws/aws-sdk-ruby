# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::TimestreamQuery
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    CancelQueryRequest = Shapes::StructureShape.new(name: 'CancelQueryRequest')
    CancelQueryResponse = Shapes::StructureShape.new(name: 'CancelQueryResponse')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ColumnInfo = Shapes::StructureShape.new(name: 'ColumnInfo')
    ColumnInfoList = Shapes::ListShape.new(name: 'ColumnInfoList')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateScheduledQueryRequest = Shapes::StructureShape.new(name: 'CreateScheduledQueryRequest')
    CreateScheduledQueryResponse = Shapes::StructureShape.new(name: 'CreateScheduledQueryResponse')
    Datum = Shapes::StructureShape.new(name: 'Datum')
    DatumList = Shapes::ListShape.new(name: 'DatumList')
    DeleteScheduledQueryRequest = Shapes::StructureShape.new(name: 'DeleteScheduledQueryRequest')
    DescribeEndpointsRequest = Shapes::StructureShape.new(name: 'DescribeEndpointsRequest')
    DescribeEndpointsResponse = Shapes::StructureShape.new(name: 'DescribeEndpointsResponse')
    DescribeScheduledQueryRequest = Shapes::StructureShape.new(name: 'DescribeScheduledQueryRequest')
    DescribeScheduledQueryResponse = Shapes::StructureShape.new(name: 'DescribeScheduledQueryResponse')
    DimensionMapping = Shapes::StructureShape.new(name: 'DimensionMapping')
    DimensionMappingList = Shapes::ListShape.new(name: 'DimensionMappingList')
    DimensionValueType = Shapes::StringShape.new(name: 'DimensionValueType')
    Double = Shapes::FloatShape.new(name: 'Double')
    Endpoint = Shapes::StructureShape.new(name: 'Endpoint')
    Endpoints = Shapes::ListShape.new(name: 'Endpoints')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ErrorReportConfiguration = Shapes::StructureShape.new(name: 'ErrorReportConfiguration')
    ErrorReportLocation = Shapes::StructureShape.new(name: 'ErrorReportLocation')
    ExecuteScheduledQueryRequest = Shapes::StructureShape.new(name: 'ExecuteScheduledQueryRequest')
    ExecutionStats = Shapes::StructureShape.new(name: 'ExecutionStats')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidEndpointException = Shapes::StructureShape.new(name: 'InvalidEndpointException')
    ListScheduledQueriesRequest = Shapes::StructureShape.new(name: 'ListScheduledQueriesRequest')
    ListScheduledQueriesResponse = Shapes::StructureShape.new(name: 'ListScheduledQueriesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxQueryResults = Shapes::IntegerShape.new(name: 'MaxQueryResults')
    MaxScheduledQueriesResults = Shapes::IntegerShape.new(name: 'MaxScheduledQueriesResults')
    MaxTagsForResourceResult = Shapes::IntegerShape.new(name: 'MaxTagsForResourceResult')
    MeasureValueType = Shapes::StringShape.new(name: 'MeasureValueType')
    MixedMeasureMapping = Shapes::StructureShape.new(name: 'MixedMeasureMapping')
    MixedMeasureMappingList = Shapes::ListShape.new(name: 'MixedMeasureMappingList')
    MultiMeasureAttributeMapping = Shapes::StructureShape.new(name: 'MultiMeasureAttributeMapping')
    MultiMeasureAttributeMappingList = Shapes::ListShape.new(name: 'MultiMeasureAttributeMappingList')
    MultiMeasureMappings = Shapes::StructureShape.new(name: 'MultiMeasureMappings')
    NextScheduledQueriesResultsToken = Shapes::StringShape.new(name: 'NextScheduledQueriesResultsToken')
    NextTagsForResourceResultsToken = Shapes::StringShape.new(name: 'NextTagsForResourceResultsToken')
    NotificationConfiguration = Shapes::StructureShape.new(name: 'NotificationConfiguration')
    NullableBoolean = Shapes::BooleanShape.new(name: 'NullableBoolean')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    ParameterMapping = Shapes::StructureShape.new(name: 'ParameterMapping')
    ParameterMappingList = Shapes::ListShape.new(name: 'ParameterMappingList')
    PrepareQueryRequest = Shapes::StructureShape.new(name: 'PrepareQueryRequest')
    PrepareQueryResponse = Shapes::StructureShape.new(name: 'PrepareQueryResponse')
    QueryExecutionException = Shapes::StructureShape.new(name: 'QueryExecutionException')
    QueryId = Shapes::StringShape.new(name: 'QueryId')
    QueryRequest = Shapes::StructureShape.new(name: 'QueryRequest')
    QueryResponse = Shapes::StructureShape.new(name: 'QueryResponse')
    QueryStatus = Shapes::StructureShape.new(name: 'QueryStatus')
    QueryString = Shapes::StringShape.new(name: 'QueryString')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    Row = Shapes::StructureShape.new(name: 'Row')
    RowList = Shapes::ListShape.new(name: 'RowList')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3Configuration = Shapes::StructureShape.new(name: 'S3Configuration')
    S3EncryptionOption = Shapes::StringShape.new(name: 'S3EncryptionOption')
    S3ObjectKey = Shapes::StringShape.new(name: 'S3ObjectKey')
    S3ObjectKeyPrefix = Shapes::StringShape.new(name: 'S3ObjectKeyPrefix')
    S3ReportLocation = Shapes::StructureShape.new(name: 'S3ReportLocation')
    ScalarMeasureValueType = Shapes::StringShape.new(name: 'ScalarMeasureValueType')
    ScalarType = Shapes::StringShape.new(name: 'ScalarType')
    ScalarValue = Shapes::StringShape.new(name: 'ScalarValue')
    ScheduleConfiguration = Shapes::StructureShape.new(name: 'ScheduleConfiguration')
    ScheduleExpression = Shapes::StringShape.new(name: 'ScheduleExpression')
    ScheduledQuery = Shapes::StructureShape.new(name: 'ScheduledQuery')
    ScheduledQueryDescription = Shapes::StructureShape.new(name: 'ScheduledQueryDescription')
    ScheduledQueryList = Shapes::ListShape.new(name: 'ScheduledQueryList')
    ScheduledQueryName = Shapes::StringShape.new(name: 'ScheduledQueryName')
    ScheduledQueryRunStatus = Shapes::StringShape.new(name: 'ScheduledQueryRunStatus')
    ScheduledQueryRunSummary = Shapes::StructureShape.new(name: 'ScheduledQueryRunSummary')
    ScheduledQueryRunSummaryList = Shapes::ListShape.new(name: 'ScheduledQueryRunSummaryList')
    ScheduledQueryState = Shapes::StringShape.new(name: 'ScheduledQueryState')
    SchemaName = Shapes::StringShape.new(name: 'SchemaName')
    SelectColumn = Shapes::StructureShape.new(name: 'SelectColumn')
    SelectColumnList = Shapes::ListShape.new(name: 'SelectColumnList')
    ServiceErrorMessage = Shapes::StringShape.new(name: 'ServiceErrorMessage')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SnsConfiguration = Shapes::StructureShape.new(name: 'SnsConfiguration')
    String = Shapes::StringShape.new(name: 'String')
    StringValue2048 = Shapes::StringShape.new(name: 'StringValue2048')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetConfiguration = Shapes::StructureShape.new(name: 'TargetConfiguration')
    TargetDestination = Shapes::StructureShape.new(name: 'TargetDestination')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Time = Shapes::TimestampShape.new(name: 'Time')
    TimeSeriesDataPoint = Shapes::StructureShape.new(name: 'TimeSeriesDataPoint')
    TimeSeriesDataPointList = Shapes::ListShape.new(name: 'TimeSeriesDataPointList')
    Timestamp = Shapes::StringShape.new(name: 'Timestamp')
    TimestreamConfiguration = Shapes::StructureShape.new(name: 'TimestreamConfiguration')
    TimestreamDestination = Shapes::StructureShape.new(name: 'TimestreamDestination')
    Type = Shapes::StructureShape.new(name: 'Type')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateScheduledQueryRequest = Shapes::StructureShape.new(name: 'UpdateScheduledQueryRequest')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ServiceErrorMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    CancelQueryRequest.add_member(:query_id, Shapes::ShapeRef.new(shape: QueryId, required: true, location_name: "QueryId"))
    CancelQueryRequest.struct_class = Types::CancelQueryRequest

    CancelQueryResponse.add_member(:cancellation_message, Shapes::ShapeRef.new(shape: String, location_name: "CancellationMessage"))
    CancelQueryResponse.struct_class = Types::CancelQueryResponse

    ColumnInfo.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    ColumnInfo.add_member(:type, Shapes::ShapeRef.new(shape: Type, required: true, location_name: "Type"))
    ColumnInfo.struct_class = Types::ColumnInfo

    ColumnInfoList.member = Shapes::ShapeRef.new(shape: ColumnInfo)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateScheduledQueryRequest.add_member(:name, Shapes::ShapeRef.new(shape: ScheduledQueryName, required: true, location_name: "Name"))
    CreateScheduledQueryRequest.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryString, required: true, location_name: "QueryString"))
    CreateScheduledQueryRequest.add_member(:schedule_configuration, Shapes::ShapeRef.new(shape: ScheduleConfiguration, required: true, location_name: "ScheduleConfiguration"))
    CreateScheduledQueryRequest.add_member(:notification_configuration, Shapes::ShapeRef.new(shape: NotificationConfiguration, required: true, location_name: "NotificationConfiguration"))
    CreateScheduledQueryRequest.add_member(:target_configuration, Shapes::ShapeRef.new(shape: TargetConfiguration, location_name: "TargetConfiguration"))
    CreateScheduledQueryRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateScheduledQueryRequest.add_member(:scheduled_query_execution_role_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ScheduledQueryExecutionRoleArn"))
    CreateScheduledQueryRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateScheduledQueryRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: StringValue2048, location_name: "KmsKeyId"))
    CreateScheduledQueryRequest.add_member(:error_report_configuration, Shapes::ShapeRef.new(shape: ErrorReportConfiguration, required: true, location_name: "ErrorReportConfiguration"))
    CreateScheduledQueryRequest.struct_class = Types::CreateScheduledQueryRequest

    CreateScheduledQueryResponse.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "Arn"))
    CreateScheduledQueryResponse.struct_class = Types::CreateScheduledQueryResponse

    Datum.add_member(:scalar_value, Shapes::ShapeRef.new(shape: ScalarValue, location_name: "ScalarValue"))
    Datum.add_member(:time_series_value, Shapes::ShapeRef.new(shape: TimeSeriesDataPointList, location_name: "TimeSeriesValue"))
    Datum.add_member(:array_value, Shapes::ShapeRef.new(shape: DatumList, location_name: "ArrayValue"))
    Datum.add_member(:row_value, Shapes::ShapeRef.new(shape: Row, location_name: "RowValue"))
    Datum.add_member(:null_value, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "NullValue"))
    Datum.struct_class = Types::Datum

    DatumList.member = Shapes::ShapeRef.new(shape: Datum)

    DeleteScheduledQueryRequest.add_member(:scheduled_query_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ScheduledQueryArn"))
    DeleteScheduledQueryRequest.struct_class = Types::DeleteScheduledQueryRequest

    DescribeEndpointsRequest.struct_class = Types::DescribeEndpointsRequest

    DescribeEndpointsResponse.add_member(:endpoints, Shapes::ShapeRef.new(shape: Endpoints, required: true, location_name: "Endpoints"))
    DescribeEndpointsResponse.struct_class = Types::DescribeEndpointsResponse

    DescribeScheduledQueryRequest.add_member(:scheduled_query_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ScheduledQueryArn"))
    DescribeScheduledQueryRequest.struct_class = Types::DescribeScheduledQueryRequest

    DescribeScheduledQueryResponse.add_member(:scheduled_query, Shapes::ShapeRef.new(shape: ScheduledQueryDescription, required: true, location_name: "ScheduledQuery"))
    DescribeScheduledQueryResponse.struct_class = Types::DescribeScheduledQueryResponse

    DimensionMapping.add_member(:name, Shapes::ShapeRef.new(shape: SchemaName, required: true, location_name: "Name"))
    DimensionMapping.add_member(:dimension_value_type, Shapes::ShapeRef.new(shape: DimensionValueType, required: true, location_name: "DimensionValueType"))
    DimensionMapping.struct_class = Types::DimensionMapping

    DimensionMappingList.member = Shapes::ShapeRef.new(shape: DimensionMapping)

    Endpoint.add_member(:address, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Address"))
    Endpoint.add_member(:cache_period_in_minutes, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "CachePeriodInMinutes"))
    Endpoint.struct_class = Types::Endpoint

    Endpoints.member = Shapes::ShapeRef.new(shape: Endpoint)

    ErrorReportConfiguration.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: S3Configuration, required: true, location_name: "S3Configuration"))
    ErrorReportConfiguration.struct_class = Types::ErrorReportConfiguration

    ErrorReportLocation.add_member(:s3_report_location, Shapes::ShapeRef.new(shape: S3ReportLocation, location_name: "S3ReportLocation"))
    ErrorReportLocation.struct_class = Types::ErrorReportLocation

    ExecuteScheduledQueryRequest.add_member(:scheduled_query_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ScheduledQueryArn"))
    ExecuteScheduledQueryRequest.add_member(:invocation_time, Shapes::ShapeRef.new(shape: Time, required: true, location_name: "InvocationTime"))
    ExecuteScheduledQueryRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    ExecuteScheduledQueryRequest.struct_class = Types::ExecuteScheduledQueryRequest

    ExecutionStats.add_member(:execution_time_in_millis, Shapes::ShapeRef.new(shape: Long, location_name: "ExecutionTimeInMillis"))
    ExecutionStats.add_member(:data_writes, Shapes::ShapeRef.new(shape: Long, location_name: "DataWrites"))
    ExecutionStats.add_member(:bytes_metered, Shapes::ShapeRef.new(shape: Long, location_name: "BytesMetered"))
    ExecutionStats.add_member(:records_ingested, Shapes::ShapeRef.new(shape: Long, location_name: "RecordsIngested"))
    ExecutionStats.add_member(:query_result_rows, Shapes::ShapeRef.new(shape: Long, location_name: "QueryResultRows"))
    ExecutionStats.struct_class = Types::ExecutionStats

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidEndpointException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidEndpointException.struct_class = Types::InvalidEndpointException

    ListScheduledQueriesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxScheduledQueriesResults, location_name: "MaxResults"))
    ListScheduledQueriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextScheduledQueriesResultsToken, location_name: "NextToken"))
    ListScheduledQueriesRequest.struct_class = Types::ListScheduledQueriesRequest

    ListScheduledQueriesResponse.add_member(:scheduled_queries, Shapes::ShapeRef.new(shape: ScheduledQueryList, required: true, location_name: "ScheduledQueries"))
    ListScheduledQueriesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextScheduledQueriesResultsToken, location_name: "NextToken"))
    ListScheduledQueriesResponse.struct_class = Types::ListScheduledQueriesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    ListTagsForResourceRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxTagsForResourceResult, location_name: "MaxResults"))
    ListTagsForResourceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTagsForResourceResultsToken, location_name: "NextToken"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    ListTagsForResourceResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTagsForResourceResultsToken, location_name: "NextToken"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MixedMeasureMapping.add_member(:measure_name, Shapes::ShapeRef.new(shape: SchemaName, location_name: "MeasureName"))
    MixedMeasureMapping.add_member(:source_column, Shapes::ShapeRef.new(shape: SchemaName, location_name: "SourceColumn"))
    MixedMeasureMapping.add_member(:target_measure_name, Shapes::ShapeRef.new(shape: SchemaName, location_name: "TargetMeasureName"))
    MixedMeasureMapping.add_member(:measure_value_type, Shapes::ShapeRef.new(shape: MeasureValueType, required: true, location_name: "MeasureValueType"))
    MixedMeasureMapping.add_member(:multi_measure_attribute_mappings, Shapes::ShapeRef.new(shape: MultiMeasureAttributeMappingList, location_name: "MultiMeasureAttributeMappings"))
    MixedMeasureMapping.struct_class = Types::MixedMeasureMapping

    MixedMeasureMappingList.member = Shapes::ShapeRef.new(shape: MixedMeasureMapping)

    MultiMeasureAttributeMapping.add_member(:source_column, Shapes::ShapeRef.new(shape: SchemaName, required: true, location_name: "SourceColumn"))
    MultiMeasureAttributeMapping.add_member(:target_multi_measure_attribute_name, Shapes::ShapeRef.new(shape: SchemaName, location_name: "TargetMultiMeasureAttributeName"))
    MultiMeasureAttributeMapping.add_member(:measure_value_type, Shapes::ShapeRef.new(shape: ScalarMeasureValueType, required: true, location_name: "MeasureValueType"))
    MultiMeasureAttributeMapping.struct_class = Types::MultiMeasureAttributeMapping

    MultiMeasureAttributeMappingList.member = Shapes::ShapeRef.new(shape: MultiMeasureAttributeMapping)

    MultiMeasureMappings.add_member(:target_multi_measure_name, Shapes::ShapeRef.new(shape: SchemaName, location_name: "TargetMultiMeasureName"))
    MultiMeasureMappings.add_member(:multi_measure_attribute_mappings, Shapes::ShapeRef.new(shape: MultiMeasureAttributeMappingList, required: true, location_name: "MultiMeasureAttributeMappings"))
    MultiMeasureMappings.struct_class = Types::MultiMeasureMappings

    NotificationConfiguration.add_member(:sns_configuration, Shapes::ShapeRef.new(shape: SnsConfiguration, required: true, location_name: "SnsConfiguration"))
    NotificationConfiguration.struct_class = Types::NotificationConfiguration

    ParameterMapping.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ParameterMapping.add_member(:type, Shapes::ShapeRef.new(shape: Type, required: true, location_name: "Type"))
    ParameterMapping.struct_class = Types::ParameterMapping

    ParameterMappingList.member = Shapes::ShapeRef.new(shape: ParameterMapping)

    PrepareQueryRequest.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryString, required: true, location_name: "QueryString"))
    PrepareQueryRequest.add_member(:validate_only, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "ValidateOnly"))
    PrepareQueryRequest.struct_class = Types::PrepareQueryRequest

    PrepareQueryResponse.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryString, required: true, location_name: "QueryString"))
    PrepareQueryResponse.add_member(:columns, Shapes::ShapeRef.new(shape: SelectColumnList, required: true, location_name: "Columns"))
    PrepareQueryResponse.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterMappingList, required: true, location_name: "Parameters"))
    PrepareQueryResponse.struct_class = Types::PrepareQueryResponse

    QueryExecutionException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    QueryExecutionException.struct_class = Types::QueryExecutionException

    QueryRequest.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryString, required: true, location_name: "QueryString"))
    QueryRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    QueryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    QueryRequest.add_member(:max_rows, Shapes::ShapeRef.new(shape: MaxQueryResults, location_name: "MaxRows"))
    QueryRequest.struct_class = Types::QueryRequest

    QueryResponse.add_member(:query_id, Shapes::ShapeRef.new(shape: QueryId, required: true, location_name: "QueryId"))
    QueryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    QueryResponse.add_member(:rows, Shapes::ShapeRef.new(shape: RowList, required: true, location_name: "Rows"))
    QueryResponse.add_member(:column_info, Shapes::ShapeRef.new(shape: ColumnInfoList, required: true, location_name: "ColumnInfo"))
    QueryResponse.add_member(:query_status, Shapes::ShapeRef.new(shape: QueryStatus, location_name: "QueryStatus"))
    QueryResponse.struct_class = Types::QueryResponse

    QueryStatus.add_member(:progress_percentage, Shapes::ShapeRef.new(shape: Double, location_name: "ProgressPercentage"))
    QueryStatus.add_member(:cumulative_bytes_scanned, Shapes::ShapeRef.new(shape: Long, location_name: "CumulativeBytesScanned"))
    QueryStatus.add_member(:cumulative_bytes_metered, Shapes::ShapeRef.new(shape: Long, location_name: "CumulativeBytesMetered"))
    QueryStatus.struct_class = Types::QueryStatus

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.add_member(:scheduled_query_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ScheduledQueryArn"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    Row.add_member(:data, Shapes::ShapeRef.new(shape: DatumList, required: true, location_name: "Data"))
    Row.struct_class = Types::Row

    RowList.member = Shapes::ShapeRef.new(shape: Row)

    S3Configuration.add_member(:bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "BucketName"))
    S3Configuration.add_member(:object_key_prefix, Shapes::ShapeRef.new(shape: S3ObjectKeyPrefix, location_name: "ObjectKeyPrefix"))
    S3Configuration.add_member(:encryption_option, Shapes::ShapeRef.new(shape: S3EncryptionOption, location_name: "EncryptionOption"))
    S3Configuration.struct_class = Types::S3Configuration

    S3ReportLocation.add_member(:bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "BucketName"))
    S3ReportLocation.add_member(:object_key, Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: "ObjectKey"))
    S3ReportLocation.struct_class = Types::S3ReportLocation

    ScheduleConfiguration.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, required: true, location_name: "ScheduleExpression"))
    ScheduleConfiguration.struct_class = Types::ScheduleConfiguration

    ScheduledQuery.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "Arn"))
    ScheduledQuery.add_member(:name, Shapes::ShapeRef.new(shape: ScheduledQueryName, required: true, location_name: "Name"))
    ScheduledQuery.add_member(:creation_time, Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    ScheduledQuery.add_member(:state, Shapes::ShapeRef.new(shape: ScheduledQueryState, required: true, location_name: "State"))
    ScheduledQuery.add_member(:previous_invocation_time, Shapes::ShapeRef.new(shape: Time, location_name: "PreviousInvocationTime"))
    ScheduledQuery.add_member(:next_invocation_time, Shapes::ShapeRef.new(shape: Time, location_name: "NextInvocationTime"))
    ScheduledQuery.add_member(:error_report_configuration, Shapes::ShapeRef.new(shape: ErrorReportConfiguration, location_name: "ErrorReportConfiguration"))
    ScheduledQuery.add_member(:target_destination, Shapes::ShapeRef.new(shape: TargetDestination, location_name: "TargetDestination"))
    ScheduledQuery.add_member(:last_run_status, Shapes::ShapeRef.new(shape: ScheduledQueryRunStatus, location_name: "LastRunStatus"))
    ScheduledQuery.struct_class = Types::ScheduledQuery

    ScheduledQueryDescription.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "Arn"))
    ScheduledQueryDescription.add_member(:name, Shapes::ShapeRef.new(shape: ScheduledQueryName, required: true, location_name: "Name"))
    ScheduledQueryDescription.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryString, required: true, location_name: "QueryString"))
    ScheduledQueryDescription.add_member(:creation_time, Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    ScheduledQueryDescription.add_member(:state, Shapes::ShapeRef.new(shape: ScheduledQueryState, required: true, location_name: "State"))
    ScheduledQueryDescription.add_member(:previous_invocation_time, Shapes::ShapeRef.new(shape: Time, location_name: "PreviousInvocationTime"))
    ScheduledQueryDescription.add_member(:next_invocation_time, Shapes::ShapeRef.new(shape: Time, location_name: "NextInvocationTime"))
    ScheduledQueryDescription.add_member(:schedule_configuration, Shapes::ShapeRef.new(shape: ScheduleConfiguration, required: true, location_name: "ScheduleConfiguration"))
    ScheduledQueryDescription.add_member(:notification_configuration, Shapes::ShapeRef.new(shape: NotificationConfiguration, required: true, location_name: "NotificationConfiguration"))
    ScheduledQueryDescription.add_member(:target_configuration, Shapes::ShapeRef.new(shape: TargetConfiguration, location_name: "TargetConfiguration"))
    ScheduledQueryDescription.add_member(:scheduled_query_execution_role_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ScheduledQueryExecutionRoleArn"))
    ScheduledQueryDescription.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: StringValue2048, location_name: "KmsKeyId"))
    ScheduledQueryDescription.add_member(:error_report_configuration, Shapes::ShapeRef.new(shape: ErrorReportConfiguration, location_name: "ErrorReportConfiguration"))
    ScheduledQueryDescription.add_member(:last_run_summary, Shapes::ShapeRef.new(shape: ScheduledQueryRunSummary, location_name: "LastRunSummary"))
    ScheduledQueryDescription.add_member(:recently_failed_runs, Shapes::ShapeRef.new(shape: ScheduledQueryRunSummaryList, location_name: "RecentlyFailedRuns"))
    ScheduledQueryDescription.struct_class = Types::ScheduledQueryDescription

    ScheduledQueryList.member = Shapes::ShapeRef.new(shape: ScheduledQuery)

    ScheduledQueryRunSummary.add_member(:invocation_time, Shapes::ShapeRef.new(shape: Time, location_name: "InvocationTime"))
    ScheduledQueryRunSummary.add_member(:trigger_time, Shapes::ShapeRef.new(shape: Time, location_name: "TriggerTime"))
    ScheduledQueryRunSummary.add_member(:run_status, Shapes::ShapeRef.new(shape: ScheduledQueryRunStatus, location_name: "RunStatus"))
    ScheduledQueryRunSummary.add_member(:execution_stats, Shapes::ShapeRef.new(shape: ExecutionStats, location_name: "ExecutionStats"))
    ScheduledQueryRunSummary.add_member(:error_report_location, Shapes::ShapeRef.new(shape: ErrorReportLocation, location_name: "ErrorReportLocation"))
    ScheduledQueryRunSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "FailureReason"))
    ScheduledQueryRunSummary.struct_class = Types::ScheduledQueryRunSummary

    ScheduledQueryRunSummaryList.member = Shapes::ShapeRef.new(shape: ScheduledQueryRunSummary)

    SelectColumn.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    SelectColumn.add_member(:type, Shapes::ShapeRef.new(shape: Type, location_name: "Type"))
    SelectColumn.add_member(:database_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "DatabaseName"))
    SelectColumn.add_member(:table_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "TableName"))
    SelectColumn.add_member(:aliased, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "Aliased"))
    SelectColumn.struct_class = Types::SelectColumn

    SelectColumnList.member = Shapes::ShapeRef.new(shape: SelectColumn)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SnsConfiguration.add_member(:topic_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "TopicArn"))
    SnsConfiguration.struct_class = Types::SnsConfiguration

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TargetConfiguration.add_member(:timestream_configuration, Shapes::ShapeRef.new(shape: TimestreamConfiguration, required: true, location_name: "TimestreamConfiguration"))
    TargetConfiguration.struct_class = Types::TargetConfiguration

    TargetDestination.add_member(:timestream_destination, Shapes::ShapeRef.new(shape: TimestreamDestination, location_name: "TimestreamDestination"))
    TargetDestination.struct_class = Types::TargetDestination

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TimeSeriesDataPoint.add_member(:time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "Time"))
    TimeSeriesDataPoint.add_member(:value, Shapes::ShapeRef.new(shape: Datum, required: true, location_name: "Value"))
    TimeSeriesDataPoint.struct_class = Types::TimeSeriesDataPoint

    TimeSeriesDataPointList.member = Shapes::ShapeRef.new(shape: TimeSeriesDataPoint)

    TimestreamConfiguration.add_member(:database_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "DatabaseName"))
    TimestreamConfiguration.add_member(:table_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "TableName"))
    TimestreamConfiguration.add_member(:time_column, Shapes::ShapeRef.new(shape: SchemaName, required: true, location_name: "TimeColumn"))
    TimestreamConfiguration.add_member(:dimension_mappings, Shapes::ShapeRef.new(shape: DimensionMappingList, required: true, location_name: "DimensionMappings"))
    TimestreamConfiguration.add_member(:multi_measure_mappings, Shapes::ShapeRef.new(shape: MultiMeasureMappings, location_name: "MultiMeasureMappings"))
    TimestreamConfiguration.add_member(:mixed_measure_mappings, Shapes::ShapeRef.new(shape: MixedMeasureMappingList, location_name: "MixedMeasureMappings"))
    TimestreamConfiguration.add_member(:measure_name_column, Shapes::ShapeRef.new(shape: SchemaName, location_name: "MeasureNameColumn"))
    TimestreamConfiguration.struct_class = Types::TimestreamConfiguration

    TimestreamDestination.add_member(:database_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "DatabaseName"))
    TimestreamDestination.add_member(:table_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "TableName"))
    TimestreamDestination.struct_class = Types::TimestreamDestination

    Type.add_member(:scalar_type, Shapes::ShapeRef.new(shape: ScalarType, location_name: "ScalarType"))
    Type.add_member(:array_column_info, Shapes::ShapeRef.new(shape: ColumnInfo, location_name: "ArrayColumnInfo"))
    Type.add_member(:time_series_measure_value_column_info, Shapes::ShapeRef.new(shape: ColumnInfo, location_name: "TimeSeriesMeasureValueColumnInfo"))
    Type.add_member(:row_column_info, Shapes::ShapeRef.new(shape: ColumnInfoList, location_name: "RowColumnInfo"))
    Type.struct_class = Types::Type

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateScheduledQueryRequest.add_member(:scheduled_query_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ScheduledQueryArn"))
    UpdateScheduledQueryRequest.add_member(:state, Shapes::ShapeRef.new(shape: ScheduledQueryState, required: true, location_name: "State"))
    UpdateScheduledQueryRequest.struct_class = Types::UpdateScheduledQueryRequest

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-11-01"

      api.metadata = {
        "apiVersion" => "2018-11-01",
        "endpointPrefix" => "query.timestream",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "serviceAbbreviation" => "Timestream Query",
        "serviceFullName" => "Amazon Timestream Query",
        "serviceId" => "Timestream Query",
        "signatureVersion" => "v4",
        "signingName" => "timestream",
        "targetPrefix" => "Timestream_20181101",
        "uid" => "timestream-query-2018-11-01",
      }
      api.endpoint_operation = :describe_endpoints
      api.require_endpoint_discovery = true

      api.add_operation(:cancel_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: CancelQueryRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelQueryResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
      end)

      api.add_operation(:create_scheduled_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateScheduledQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: CreateScheduledQueryRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateScheduledQueryResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
      end)

      api.add_operation(:delete_scheduled_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteScheduledQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteScheduledQueryRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
      end)

      api.add_operation(:describe_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_operation = true
        o.input = Shapes::ShapeRef.new(shape: DescribeEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_scheduled_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeScheduledQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeScheduledQueryRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeScheduledQueryResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
      end)

      api.add_operation(:execute_scheduled_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExecuteScheduledQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: ExecuteScheduledQueryRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
      end)

      api.add_operation(:list_scheduled_queries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListScheduledQueries"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: ListScheduledQueriesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListScheduledQueriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:prepare_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PrepareQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: PrepareQueryRequest)
        o.output = Shapes::ShapeRef.new(shape: PrepareQueryResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
      end)

      api.add_operation(:query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Query"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: QueryRequest)
        o.output = Shapes::ShapeRef.new(shape: QueryResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: QueryExecutionException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_rows",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
      end)

      api.add_operation(:update_scheduled_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateScheduledQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateScheduledQueryRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
      end)
    end

  end
end
