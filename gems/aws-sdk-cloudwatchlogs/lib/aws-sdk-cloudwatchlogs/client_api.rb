# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudWatchLogs
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessPolicy = Shapes::StringShape.new(name: 'AccessPolicy')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssociateKmsKeyRequest = Shapes::StructureShape.new(name: 'AssociateKmsKeyRequest')
    CancelExportTaskRequest = Shapes::StructureShape.new(name: 'CancelExportTaskRequest')
    CreateExportTaskRequest = Shapes::StructureShape.new(name: 'CreateExportTaskRequest')
    CreateExportTaskResponse = Shapes::StructureShape.new(name: 'CreateExportTaskResponse')
    CreateLogGroupRequest = Shapes::StructureShape.new(name: 'CreateLogGroupRequest')
    CreateLogStreamRequest = Shapes::StructureShape.new(name: 'CreateLogStreamRequest')
    DataAlreadyAcceptedException = Shapes::StructureShape.new(name: 'DataAlreadyAcceptedException')
    Days = Shapes::IntegerShape.new(name: 'Days')
    DefaultValue = Shapes::FloatShape.new(name: 'DefaultValue')
    DeleteDestinationRequest = Shapes::StructureShape.new(name: 'DeleteDestinationRequest')
    DeleteLogGroupRequest = Shapes::StructureShape.new(name: 'DeleteLogGroupRequest')
    DeleteLogStreamRequest = Shapes::StructureShape.new(name: 'DeleteLogStreamRequest')
    DeleteMetricFilterRequest = Shapes::StructureShape.new(name: 'DeleteMetricFilterRequest')
    DeleteQueryDefinitionRequest = Shapes::StructureShape.new(name: 'DeleteQueryDefinitionRequest')
    DeleteQueryDefinitionResponse = Shapes::StructureShape.new(name: 'DeleteQueryDefinitionResponse')
    DeleteResourcePolicyRequest = Shapes::StructureShape.new(name: 'DeleteResourcePolicyRequest')
    DeleteRetentionPolicyRequest = Shapes::StructureShape.new(name: 'DeleteRetentionPolicyRequest')
    DeleteSubscriptionFilterRequest = Shapes::StructureShape.new(name: 'DeleteSubscriptionFilterRequest')
    Descending = Shapes::BooleanShape.new(name: 'Descending')
    DescribeDestinationsRequest = Shapes::StructureShape.new(name: 'DescribeDestinationsRequest')
    DescribeDestinationsResponse = Shapes::StructureShape.new(name: 'DescribeDestinationsResponse')
    DescribeExportTasksRequest = Shapes::StructureShape.new(name: 'DescribeExportTasksRequest')
    DescribeExportTasksResponse = Shapes::StructureShape.new(name: 'DescribeExportTasksResponse')
    DescribeLimit = Shapes::IntegerShape.new(name: 'DescribeLimit')
    DescribeLogGroupsRequest = Shapes::StructureShape.new(name: 'DescribeLogGroupsRequest')
    DescribeLogGroupsResponse = Shapes::StructureShape.new(name: 'DescribeLogGroupsResponse')
    DescribeLogStreamsRequest = Shapes::StructureShape.new(name: 'DescribeLogStreamsRequest')
    DescribeLogStreamsResponse = Shapes::StructureShape.new(name: 'DescribeLogStreamsResponse')
    DescribeMetricFiltersRequest = Shapes::StructureShape.new(name: 'DescribeMetricFiltersRequest')
    DescribeMetricFiltersResponse = Shapes::StructureShape.new(name: 'DescribeMetricFiltersResponse')
    DescribeQueriesMaxResults = Shapes::IntegerShape.new(name: 'DescribeQueriesMaxResults')
    DescribeQueriesRequest = Shapes::StructureShape.new(name: 'DescribeQueriesRequest')
    DescribeQueriesResponse = Shapes::StructureShape.new(name: 'DescribeQueriesResponse')
    DescribeQueryDefinitionsRequest = Shapes::StructureShape.new(name: 'DescribeQueryDefinitionsRequest')
    DescribeQueryDefinitionsResponse = Shapes::StructureShape.new(name: 'DescribeQueryDefinitionsResponse')
    DescribeResourcePoliciesRequest = Shapes::StructureShape.new(name: 'DescribeResourcePoliciesRequest')
    DescribeResourcePoliciesResponse = Shapes::StructureShape.new(name: 'DescribeResourcePoliciesResponse')
    DescribeSubscriptionFiltersRequest = Shapes::StructureShape.new(name: 'DescribeSubscriptionFiltersRequest')
    DescribeSubscriptionFiltersResponse = Shapes::StructureShape.new(name: 'DescribeSubscriptionFiltersResponse')
    Destination = Shapes::StructureShape.new(name: 'Destination')
    DestinationArn = Shapes::StringShape.new(name: 'DestinationArn')
    DestinationName = Shapes::StringShape.new(name: 'DestinationName')
    Destinations = Shapes::ListShape.new(name: 'Destinations')
    DisassociateKmsKeyRequest = Shapes::StructureShape.new(name: 'DisassociateKmsKeyRequest')
    Distribution = Shapes::StringShape.new(name: 'Distribution')
    EventId = Shapes::StringShape.new(name: 'EventId')
    EventMessage = Shapes::StringShape.new(name: 'EventMessage')
    EventNumber = Shapes::IntegerShape.new(name: 'EventNumber')
    EventsLimit = Shapes::IntegerShape.new(name: 'EventsLimit')
    ExportDestinationBucket = Shapes::StringShape.new(name: 'ExportDestinationBucket')
    ExportDestinationPrefix = Shapes::StringShape.new(name: 'ExportDestinationPrefix')
    ExportTask = Shapes::StructureShape.new(name: 'ExportTask')
    ExportTaskExecutionInfo = Shapes::StructureShape.new(name: 'ExportTaskExecutionInfo')
    ExportTaskId = Shapes::StringShape.new(name: 'ExportTaskId')
    ExportTaskName = Shapes::StringShape.new(name: 'ExportTaskName')
    ExportTaskStatus = Shapes::StructureShape.new(name: 'ExportTaskStatus')
    ExportTaskStatusCode = Shapes::StringShape.new(name: 'ExportTaskStatusCode')
    ExportTaskStatusMessage = Shapes::StringShape.new(name: 'ExportTaskStatusMessage')
    ExportTasks = Shapes::ListShape.new(name: 'ExportTasks')
    ExtractedValues = Shapes::MapShape.new(name: 'ExtractedValues')
    Field = Shapes::StringShape.new(name: 'Field')
    FilterCount = Shapes::IntegerShape.new(name: 'FilterCount')
    FilterLogEventsRequest = Shapes::StructureShape.new(name: 'FilterLogEventsRequest')
    FilterLogEventsResponse = Shapes::StructureShape.new(name: 'FilterLogEventsResponse')
    FilterName = Shapes::StringShape.new(name: 'FilterName')
    FilterPattern = Shapes::StringShape.new(name: 'FilterPattern')
    FilteredLogEvent = Shapes::StructureShape.new(name: 'FilteredLogEvent')
    FilteredLogEvents = Shapes::ListShape.new(name: 'FilteredLogEvents')
    GetLogEventsRequest = Shapes::StructureShape.new(name: 'GetLogEventsRequest')
    GetLogEventsResponse = Shapes::StructureShape.new(name: 'GetLogEventsResponse')
    GetLogGroupFieldsRequest = Shapes::StructureShape.new(name: 'GetLogGroupFieldsRequest')
    GetLogGroupFieldsResponse = Shapes::StructureShape.new(name: 'GetLogGroupFieldsResponse')
    GetLogRecordRequest = Shapes::StructureShape.new(name: 'GetLogRecordRequest')
    GetLogRecordResponse = Shapes::StructureShape.new(name: 'GetLogRecordResponse')
    GetQueryResultsRequest = Shapes::StructureShape.new(name: 'GetQueryResultsRequest')
    GetQueryResultsResponse = Shapes::StructureShape.new(name: 'GetQueryResultsResponse')
    InputLogEvent = Shapes::StructureShape.new(name: 'InputLogEvent')
    InputLogEvents = Shapes::ListShape.new(name: 'InputLogEvents')
    InputLogStreamNames = Shapes::ListShape.new(name: 'InputLogStreamNames')
    Interleaved = Shapes::BooleanShape.new(name: 'Interleaved')
    InvalidOperationException = Shapes::StructureShape.new(name: 'InvalidOperationException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidSequenceTokenException = Shapes::StructureShape.new(name: 'InvalidSequenceTokenException')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListTagsLogGroupRequest = Shapes::StructureShape.new(name: 'ListTagsLogGroupRequest')
    ListTagsLogGroupResponse = Shapes::StructureShape.new(name: 'ListTagsLogGroupResponse')
    LogEventIndex = Shapes::IntegerShape.new(name: 'LogEventIndex')
    LogGroup = Shapes::StructureShape.new(name: 'LogGroup')
    LogGroupField = Shapes::StructureShape.new(name: 'LogGroupField')
    LogGroupFieldList = Shapes::ListShape.new(name: 'LogGroupFieldList')
    LogGroupName = Shapes::StringShape.new(name: 'LogGroupName')
    LogGroupNames = Shapes::ListShape.new(name: 'LogGroupNames')
    LogGroups = Shapes::ListShape.new(name: 'LogGroups')
    LogRecord = Shapes::MapShape.new(name: 'LogRecord')
    LogRecordPointer = Shapes::StringShape.new(name: 'LogRecordPointer')
    LogStream = Shapes::StructureShape.new(name: 'LogStream')
    LogStreamName = Shapes::StringShape.new(name: 'LogStreamName')
    LogStreamSearchedCompletely = Shapes::BooleanShape.new(name: 'LogStreamSearchedCompletely')
    LogStreams = Shapes::ListShape.new(name: 'LogStreams')
    MalformedQueryException = Shapes::StructureShape.new(name: 'MalformedQueryException')
    Message = Shapes::StringShape.new(name: 'Message')
    MetricFilter = Shapes::StructureShape.new(name: 'MetricFilter')
    MetricFilterMatchRecord = Shapes::StructureShape.new(name: 'MetricFilterMatchRecord')
    MetricFilterMatches = Shapes::ListShape.new(name: 'MetricFilterMatches')
    MetricFilters = Shapes::ListShape.new(name: 'MetricFilters')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    MetricNamespace = Shapes::StringShape.new(name: 'MetricNamespace')
    MetricTransformation = Shapes::StructureShape.new(name: 'MetricTransformation')
    MetricTransformations = Shapes::ListShape.new(name: 'MetricTransformations')
    MetricValue = Shapes::StringShape.new(name: 'MetricValue')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OperationAbortedException = Shapes::StructureShape.new(name: 'OperationAbortedException')
    OrderBy = Shapes::StringShape.new(name: 'OrderBy')
    OutputLogEvent = Shapes::StructureShape.new(name: 'OutputLogEvent')
    OutputLogEvents = Shapes::ListShape.new(name: 'OutputLogEvents')
    Percentage = Shapes::IntegerShape.new(name: 'Percentage')
    PolicyDocument = Shapes::StringShape.new(name: 'PolicyDocument')
    PolicyName = Shapes::StringShape.new(name: 'PolicyName')
    PutDestinationPolicyRequest = Shapes::StructureShape.new(name: 'PutDestinationPolicyRequest')
    PutDestinationRequest = Shapes::StructureShape.new(name: 'PutDestinationRequest')
    PutDestinationResponse = Shapes::StructureShape.new(name: 'PutDestinationResponse')
    PutLogEventsRequest = Shapes::StructureShape.new(name: 'PutLogEventsRequest')
    PutLogEventsResponse = Shapes::StructureShape.new(name: 'PutLogEventsResponse')
    PutMetricFilterRequest = Shapes::StructureShape.new(name: 'PutMetricFilterRequest')
    PutQueryDefinitionRequest = Shapes::StructureShape.new(name: 'PutQueryDefinitionRequest')
    PutQueryDefinitionResponse = Shapes::StructureShape.new(name: 'PutQueryDefinitionResponse')
    PutResourcePolicyRequest = Shapes::StructureShape.new(name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = Shapes::StructureShape.new(name: 'PutResourcePolicyResponse')
    PutRetentionPolicyRequest = Shapes::StructureShape.new(name: 'PutRetentionPolicyRequest')
    PutSubscriptionFilterRequest = Shapes::StructureShape.new(name: 'PutSubscriptionFilterRequest')
    QueryCharOffset = Shapes::IntegerShape.new(name: 'QueryCharOffset')
    QueryCompileError = Shapes::StructureShape.new(name: 'QueryCompileError')
    QueryCompileErrorLocation = Shapes::StructureShape.new(name: 'QueryCompileErrorLocation')
    QueryDefinition = Shapes::StructureShape.new(name: 'QueryDefinition')
    QueryDefinitionList = Shapes::ListShape.new(name: 'QueryDefinitionList')
    QueryDefinitionName = Shapes::StringShape.new(name: 'QueryDefinitionName')
    QueryDefinitionString = Shapes::StringShape.new(name: 'QueryDefinitionString')
    QueryId = Shapes::StringShape.new(name: 'QueryId')
    QueryInfo = Shapes::StructureShape.new(name: 'QueryInfo')
    QueryInfoList = Shapes::ListShape.new(name: 'QueryInfoList')
    QueryListMaxResults = Shapes::IntegerShape.new(name: 'QueryListMaxResults')
    QueryResults = Shapes::ListShape.new(name: 'QueryResults')
    QueryStatistics = Shapes::StructureShape.new(name: 'QueryStatistics')
    QueryStatus = Shapes::StringShape.new(name: 'QueryStatus')
    QueryString = Shapes::StringShape.new(name: 'QueryString')
    RejectedLogEventsInfo = Shapes::StructureShape.new(name: 'RejectedLogEventsInfo')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourcePolicies = Shapes::ListShape.new(name: 'ResourcePolicies')
    ResourcePolicy = Shapes::StructureShape.new(name: 'ResourcePolicy')
    ResultField = Shapes::StructureShape.new(name: 'ResultField')
    ResultRows = Shapes::ListShape.new(name: 'ResultRows')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    SearchedLogStream = Shapes::StructureShape.new(name: 'SearchedLogStream')
    SearchedLogStreams = Shapes::ListShape.new(name: 'SearchedLogStreams')
    SequenceToken = Shapes::StringShape.new(name: 'SequenceToken')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    StartFromHead = Shapes::BooleanShape.new(name: 'StartFromHead')
    StartQueryRequest = Shapes::StructureShape.new(name: 'StartQueryRequest')
    StartQueryResponse = Shapes::StructureShape.new(name: 'StartQueryResponse')
    StatsValue = Shapes::FloatShape.new(name: 'StatsValue')
    StopQueryRequest = Shapes::StructureShape.new(name: 'StopQueryRequest')
    StopQueryResponse = Shapes::StructureShape.new(name: 'StopQueryResponse')
    StoredBytes = Shapes::IntegerShape.new(name: 'StoredBytes')
    SubscriptionFilter = Shapes::StructureShape.new(name: 'SubscriptionFilter')
    SubscriptionFilters = Shapes::ListShape.new(name: 'SubscriptionFilters')
    Success = Shapes::BooleanShape.new(name: 'Success')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagLogGroupRequest = Shapes::StructureShape.new(name: 'TagLogGroupRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    TargetArn = Shapes::StringShape.new(name: 'TargetArn')
    TestEventMessages = Shapes::ListShape.new(name: 'TestEventMessages')
    TestMetricFilterRequest = Shapes::StructureShape.new(name: 'TestMetricFilterRequest')
    TestMetricFilterResponse = Shapes::StructureShape.new(name: 'TestMetricFilterResponse')
    Timestamp = Shapes::IntegerShape.new(name: 'Timestamp')
    Token = Shapes::StringShape.new(name: 'Token')
    UnrecognizedClientException = Shapes::StructureShape.new(name: 'UnrecognizedClientException')
    UntagLogGroupRequest = Shapes::StructureShape.new(name: 'UntagLogGroupRequest')
    Value = Shapes::StringShape.new(name: 'Value')

    AssociateKmsKeyRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    AssociateKmsKeyRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, required: true, location_name: "kmsKeyId"))
    AssociateKmsKeyRequest.struct_class = Types::AssociateKmsKeyRequest

    CancelExportTaskRequest.add_member(:task_id, Shapes::ShapeRef.new(shape: ExportTaskId, required: true, location_name: "taskId"))
    CancelExportTaskRequest.struct_class = Types::CancelExportTaskRequest

    CreateExportTaskRequest.add_member(:task_name, Shapes::ShapeRef.new(shape: ExportTaskName, location_name: "taskName"))
    CreateExportTaskRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    CreateExportTaskRequest.add_member(:log_stream_name_prefix, Shapes::ShapeRef.new(shape: LogStreamName, location_name: "logStreamNamePrefix"))
    CreateExportTaskRequest.add_member(:from, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "from"))
    CreateExportTaskRequest.add_member(:to, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "to"))
    CreateExportTaskRequest.add_member(:destination, Shapes::ShapeRef.new(shape: ExportDestinationBucket, required: true, location_name: "destination"))
    CreateExportTaskRequest.add_member(:destination_prefix, Shapes::ShapeRef.new(shape: ExportDestinationPrefix, location_name: "destinationPrefix"))
    CreateExportTaskRequest.struct_class = Types::CreateExportTaskRequest

    CreateExportTaskResponse.add_member(:task_id, Shapes::ShapeRef.new(shape: ExportTaskId, location_name: "taskId"))
    CreateExportTaskResponse.struct_class = Types::CreateExportTaskResponse

    CreateLogGroupRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    CreateLogGroupRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    CreateLogGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateLogGroupRequest.struct_class = Types::CreateLogGroupRequest

    CreateLogStreamRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    CreateLogStreamRequest.add_member(:log_stream_name, Shapes::ShapeRef.new(shape: LogStreamName, required: true, location_name: "logStreamName"))
    CreateLogStreamRequest.struct_class = Types::CreateLogStreamRequest

    DataAlreadyAcceptedException.add_member(:expected_sequence_token, Shapes::ShapeRef.new(shape: SequenceToken, location_name: "expectedSequenceToken"))
    DataAlreadyAcceptedException.struct_class = Types::DataAlreadyAcceptedException

    DeleteDestinationRequest.add_member(:destination_name, Shapes::ShapeRef.new(shape: DestinationName, required: true, location_name: "destinationName"))
    DeleteDestinationRequest.struct_class = Types::DeleteDestinationRequest

    DeleteLogGroupRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    DeleteLogGroupRequest.struct_class = Types::DeleteLogGroupRequest

    DeleteLogStreamRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    DeleteLogStreamRequest.add_member(:log_stream_name, Shapes::ShapeRef.new(shape: LogStreamName, required: true, location_name: "logStreamName"))
    DeleteLogStreamRequest.struct_class = Types::DeleteLogStreamRequest

    DeleteMetricFilterRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    DeleteMetricFilterRequest.add_member(:filter_name, Shapes::ShapeRef.new(shape: FilterName, required: true, location_name: "filterName"))
    DeleteMetricFilterRequest.struct_class = Types::DeleteMetricFilterRequest

    DeleteQueryDefinitionRequest.add_member(:query_definition_id, Shapes::ShapeRef.new(shape: QueryId, required: true, location_name: "queryDefinitionId"))
    DeleteQueryDefinitionRequest.struct_class = Types::DeleteQueryDefinitionRequest

    DeleteQueryDefinitionResponse.add_member(:success, Shapes::ShapeRef.new(shape: Success, location_name: "success"))
    DeleteQueryDefinitionResponse.struct_class = Types::DeleteQueryDefinitionResponse

    DeleteResourcePolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "policyName"))
    DeleteResourcePolicyRequest.struct_class = Types::DeleteResourcePolicyRequest

    DeleteRetentionPolicyRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    DeleteRetentionPolicyRequest.struct_class = Types::DeleteRetentionPolicyRequest

    DeleteSubscriptionFilterRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    DeleteSubscriptionFilterRequest.add_member(:filter_name, Shapes::ShapeRef.new(shape: FilterName, required: true, location_name: "filterName"))
    DeleteSubscriptionFilterRequest.struct_class = Types::DeleteSubscriptionFilterRequest

    DescribeDestinationsRequest.add_member(:destination_name_prefix, Shapes::ShapeRef.new(shape: DestinationName, location_name: "DestinationNamePrefix"))
    DescribeDestinationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeDestinationsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: DescribeLimit, location_name: "limit"))
    DescribeDestinationsRequest.struct_class = Types::DescribeDestinationsRequest

    DescribeDestinationsResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: Destinations, location_name: "destinations"))
    DescribeDestinationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeDestinationsResponse.struct_class = Types::DescribeDestinationsResponse

    DescribeExportTasksRequest.add_member(:task_id, Shapes::ShapeRef.new(shape: ExportTaskId, location_name: "taskId"))
    DescribeExportTasksRequest.add_member(:status_code, Shapes::ShapeRef.new(shape: ExportTaskStatusCode, location_name: "statusCode"))
    DescribeExportTasksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeExportTasksRequest.add_member(:limit, Shapes::ShapeRef.new(shape: DescribeLimit, location_name: "limit"))
    DescribeExportTasksRequest.struct_class = Types::DescribeExportTasksRequest

    DescribeExportTasksResponse.add_member(:export_tasks, Shapes::ShapeRef.new(shape: ExportTasks, location_name: "exportTasks"))
    DescribeExportTasksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeExportTasksResponse.struct_class = Types::DescribeExportTasksResponse

    DescribeLogGroupsRequest.add_member(:log_group_name_prefix, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupNamePrefix"))
    DescribeLogGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeLogGroupsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: DescribeLimit, location_name: "limit"))
    DescribeLogGroupsRequest.struct_class = Types::DescribeLogGroupsRequest

    DescribeLogGroupsResponse.add_member(:log_groups, Shapes::ShapeRef.new(shape: LogGroups, location_name: "logGroups"))
    DescribeLogGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeLogGroupsResponse.struct_class = Types::DescribeLogGroupsResponse

    DescribeLogStreamsRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    DescribeLogStreamsRequest.add_member(:log_stream_name_prefix, Shapes::ShapeRef.new(shape: LogStreamName, location_name: "logStreamNamePrefix"))
    DescribeLogStreamsRequest.add_member(:order_by, Shapes::ShapeRef.new(shape: OrderBy, location_name: "orderBy"))
    DescribeLogStreamsRequest.add_member(:descending, Shapes::ShapeRef.new(shape: Descending, location_name: "descending"))
    DescribeLogStreamsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeLogStreamsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: DescribeLimit, location_name: "limit"))
    DescribeLogStreamsRequest.struct_class = Types::DescribeLogStreamsRequest

    DescribeLogStreamsResponse.add_member(:log_streams, Shapes::ShapeRef.new(shape: LogStreams, location_name: "logStreams"))
    DescribeLogStreamsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeLogStreamsResponse.struct_class = Types::DescribeLogStreamsResponse

    DescribeMetricFiltersRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupName"))
    DescribeMetricFiltersRequest.add_member(:filter_name_prefix, Shapes::ShapeRef.new(shape: FilterName, location_name: "filterNamePrefix"))
    DescribeMetricFiltersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeMetricFiltersRequest.add_member(:limit, Shapes::ShapeRef.new(shape: DescribeLimit, location_name: "limit"))
    DescribeMetricFiltersRequest.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, location_name: "metricName"))
    DescribeMetricFiltersRequest.add_member(:metric_namespace, Shapes::ShapeRef.new(shape: MetricNamespace, location_name: "metricNamespace"))
    DescribeMetricFiltersRequest.struct_class = Types::DescribeMetricFiltersRequest

    DescribeMetricFiltersResponse.add_member(:metric_filters, Shapes::ShapeRef.new(shape: MetricFilters, location_name: "metricFilters"))
    DescribeMetricFiltersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeMetricFiltersResponse.struct_class = Types::DescribeMetricFiltersResponse

    DescribeQueriesRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupName"))
    DescribeQueriesRequest.add_member(:status, Shapes::ShapeRef.new(shape: QueryStatus, location_name: "status"))
    DescribeQueriesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DescribeQueriesMaxResults, location_name: "maxResults"))
    DescribeQueriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeQueriesRequest.struct_class = Types::DescribeQueriesRequest

    DescribeQueriesResponse.add_member(:queries, Shapes::ShapeRef.new(shape: QueryInfoList, location_name: "queries"))
    DescribeQueriesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeQueriesResponse.struct_class = Types::DescribeQueriesResponse

    DescribeQueryDefinitionsRequest.add_member(:query_definition_name_prefix, Shapes::ShapeRef.new(shape: QueryDefinitionName, location_name: "queryDefinitionNamePrefix"))
    DescribeQueryDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: QueryListMaxResults, location_name: "maxResults"))
    DescribeQueryDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeQueryDefinitionsRequest.struct_class = Types::DescribeQueryDefinitionsRequest

    DescribeQueryDefinitionsResponse.add_member(:query_definitions, Shapes::ShapeRef.new(shape: QueryDefinitionList, location_name: "queryDefinitions"))
    DescribeQueryDefinitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeQueryDefinitionsResponse.struct_class = Types::DescribeQueryDefinitionsResponse

    DescribeResourcePoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeResourcePoliciesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: DescribeLimit, location_name: "limit"))
    DescribeResourcePoliciesRequest.struct_class = Types::DescribeResourcePoliciesRequest

    DescribeResourcePoliciesResponse.add_member(:resource_policies, Shapes::ShapeRef.new(shape: ResourcePolicies, location_name: "resourcePolicies"))
    DescribeResourcePoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeResourcePoliciesResponse.struct_class = Types::DescribeResourcePoliciesResponse

    DescribeSubscriptionFiltersRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    DescribeSubscriptionFiltersRequest.add_member(:filter_name_prefix, Shapes::ShapeRef.new(shape: FilterName, location_name: "filterNamePrefix"))
    DescribeSubscriptionFiltersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeSubscriptionFiltersRequest.add_member(:limit, Shapes::ShapeRef.new(shape: DescribeLimit, location_name: "limit"))
    DescribeSubscriptionFiltersRequest.struct_class = Types::DescribeSubscriptionFiltersRequest

    DescribeSubscriptionFiltersResponse.add_member(:subscription_filters, Shapes::ShapeRef.new(shape: SubscriptionFilters, location_name: "subscriptionFilters"))
    DescribeSubscriptionFiltersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeSubscriptionFiltersResponse.struct_class = Types::DescribeSubscriptionFiltersResponse

    Destination.add_member(:destination_name, Shapes::ShapeRef.new(shape: DestinationName, location_name: "destinationName"))
    Destination.add_member(:target_arn, Shapes::ShapeRef.new(shape: TargetArn, location_name: "targetArn"))
    Destination.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    Destination.add_member(:access_policy, Shapes::ShapeRef.new(shape: AccessPolicy, location_name: "accessPolicy"))
    Destination.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    Destination.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    Destination.struct_class = Types::Destination

    Destinations.member = Shapes::ShapeRef.new(shape: Destination)

    DisassociateKmsKeyRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    DisassociateKmsKeyRequest.struct_class = Types::DisassociateKmsKeyRequest

    ExportTask.add_member(:task_id, Shapes::ShapeRef.new(shape: ExportTaskId, location_name: "taskId"))
    ExportTask.add_member(:task_name, Shapes::ShapeRef.new(shape: ExportTaskName, location_name: "taskName"))
    ExportTask.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupName"))
    ExportTask.add_member(:from, Shapes::ShapeRef.new(shape: Timestamp, location_name: "from"))
    ExportTask.add_member(:to, Shapes::ShapeRef.new(shape: Timestamp, location_name: "to"))
    ExportTask.add_member(:destination, Shapes::ShapeRef.new(shape: ExportDestinationBucket, location_name: "destination"))
    ExportTask.add_member(:destination_prefix, Shapes::ShapeRef.new(shape: ExportDestinationPrefix, location_name: "destinationPrefix"))
    ExportTask.add_member(:status, Shapes::ShapeRef.new(shape: ExportTaskStatus, location_name: "status"))
    ExportTask.add_member(:execution_info, Shapes::ShapeRef.new(shape: ExportTaskExecutionInfo, location_name: "executionInfo"))
    ExportTask.struct_class = Types::ExportTask

    ExportTaskExecutionInfo.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    ExportTaskExecutionInfo.add_member(:completion_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "completionTime"))
    ExportTaskExecutionInfo.struct_class = Types::ExportTaskExecutionInfo

    ExportTaskStatus.add_member(:code, Shapes::ShapeRef.new(shape: ExportTaskStatusCode, location_name: "code"))
    ExportTaskStatus.add_member(:message, Shapes::ShapeRef.new(shape: ExportTaskStatusMessage, location_name: "message"))
    ExportTaskStatus.struct_class = Types::ExportTaskStatus

    ExportTasks.member = Shapes::ShapeRef.new(shape: ExportTask)

    ExtractedValues.key = Shapes::ShapeRef.new(shape: Token)
    ExtractedValues.value = Shapes::ShapeRef.new(shape: Value)

    FilterLogEventsRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    FilterLogEventsRequest.add_member(:log_stream_names, Shapes::ShapeRef.new(shape: InputLogStreamNames, location_name: "logStreamNames"))
    FilterLogEventsRequest.add_member(:log_stream_name_prefix, Shapes::ShapeRef.new(shape: LogStreamName, location_name: "logStreamNamePrefix"))
    FilterLogEventsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    FilterLogEventsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    FilterLogEventsRequest.add_member(:filter_pattern, Shapes::ShapeRef.new(shape: FilterPattern, location_name: "filterPattern"))
    FilterLogEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    FilterLogEventsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: EventsLimit, location_name: "limit"))
    FilterLogEventsRequest.add_member(:interleaved, Shapes::ShapeRef.new(shape: Interleaved, deprecated: true, location_name: "interleaved", metadata: {"deprecatedMessage"=>"Starting on June 17, 2019, this parameter will be ignored and the value will be assumed to be true. The response from this operation will always interleave events from multiple log streams within a log group."}))
    FilterLogEventsRequest.struct_class = Types::FilterLogEventsRequest

    FilterLogEventsResponse.add_member(:events, Shapes::ShapeRef.new(shape: FilteredLogEvents, location_name: "events"))
    FilterLogEventsResponse.add_member(:searched_log_streams, Shapes::ShapeRef.new(shape: SearchedLogStreams, location_name: "searchedLogStreams"))
    FilterLogEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    FilterLogEventsResponse.struct_class = Types::FilterLogEventsResponse

    FilteredLogEvent.add_member(:log_stream_name, Shapes::ShapeRef.new(shape: LogStreamName, location_name: "logStreamName"))
    FilteredLogEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "timestamp"))
    FilteredLogEvent.add_member(:message, Shapes::ShapeRef.new(shape: EventMessage, location_name: "message"))
    FilteredLogEvent.add_member(:ingestion_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ingestionTime"))
    FilteredLogEvent.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "eventId"))
    FilteredLogEvent.struct_class = Types::FilteredLogEvent

    FilteredLogEvents.member = Shapes::ShapeRef.new(shape: FilteredLogEvent)

    GetLogEventsRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    GetLogEventsRequest.add_member(:log_stream_name, Shapes::ShapeRef.new(shape: LogStreamName, required: true, location_name: "logStreamName"))
    GetLogEventsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    GetLogEventsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    GetLogEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetLogEventsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: EventsLimit, location_name: "limit"))
    GetLogEventsRequest.add_member(:start_from_head, Shapes::ShapeRef.new(shape: StartFromHead, location_name: "startFromHead"))
    GetLogEventsRequest.struct_class = Types::GetLogEventsRequest

    GetLogEventsResponse.add_member(:events, Shapes::ShapeRef.new(shape: OutputLogEvents, location_name: "events"))
    GetLogEventsResponse.add_member(:next_forward_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextForwardToken"))
    GetLogEventsResponse.add_member(:next_backward_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextBackwardToken"))
    GetLogEventsResponse.struct_class = Types::GetLogEventsResponse

    GetLogGroupFieldsRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    GetLogGroupFieldsRequest.add_member(:time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "time"))
    GetLogGroupFieldsRequest.struct_class = Types::GetLogGroupFieldsRequest

    GetLogGroupFieldsResponse.add_member(:log_group_fields, Shapes::ShapeRef.new(shape: LogGroupFieldList, location_name: "logGroupFields"))
    GetLogGroupFieldsResponse.struct_class = Types::GetLogGroupFieldsResponse

    GetLogRecordRequest.add_member(:log_record_pointer, Shapes::ShapeRef.new(shape: LogRecordPointer, required: true, location_name: "logRecordPointer"))
    GetLogRecordRequest.struct_class = Types::GetLogRecordRequest

    GetLogRecordResponse.add_member(:log_record, Shapes::ShapeRef.new(shape: LogRecord, location_name: "logRecord"))
    GetLogRecordResponse.struct_class = Types::GetLogRecordResponse

    GetQueryResultsRequest.add_member(:query_id, Shapes::ShapeRef.new(shape: QueryId, required: true, location_name: "queryId"))
    GetQueryResultsRequest.struct_class = Types::GetQueryResultsRequest

    GetQueryResultsResponse.add_member(:results, Shapes::ShapeRef.new(shape: QueryResults, location_name: "results"))
    GetQueryResultsResponse.add_member(:statistics, Shapes::ShapeRef.new(shape: QueryStatistics, location_name: "statistics"))
    GetQueryResultsResponse.add_member(:status, Shapes::ShapeRef.new(shape: QueryStatus, location_name: "status"))
    GetQueryResultsResponse.struct_class = Types::GetQueryResultsResponse

    InputLogEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "timestamp"))
    InputLogEvent.add_member(:message, Shapes::ShapeRef.new(shape: EventMessage, required: true, location_name: "message"))
    InputLogEvent.struct_class = Types::InputLogEvent

    InputLogEvents.member = Shapes::ShapeRef.new(shape: InputLogEvent)

    InputLogStreamNames.member = Shapes::ShapeRef.new(shape: LogStreamName)

    InvalidOperationException.struct_class = Types::InvalidOperationException

    InvalidParameterException.struct_class = Types::InvalidParameterException

    InvalidSequenceTokenException.add_member(:expected_sequence_token, Shapes::ShapeRef.new(shape: SequenceToken, location_name: "expectedSequenceToken"))
    InvalidSequenceTokenException.struct_class = Types::InvalidSequenceTokenException

    LimitExceededException.struct_class = Types::LimitExceededException

    ListTagsLogGroupRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    ListTagsLogGroupRequest.struct_class = Types::ListTagsLogGroupRequest

    ListTagsLogGroupResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsLogGroupResponse.struct_class = Types::ListTagsLogGroupResponse

    LogGroup.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupName"))
    LogGroup.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    LogGroup.add_member(:retention_in_days, Shapes::ShapeRef.new(shape: Days, location_name: "retentionInDays"))
    LogGroup.add_member(:metric_filter_count, Shapes::ShapeRef.new(shape: FilterCount, location_name: "metricFilterCount"))
    LogGroup.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    LogGroup.add_member(:stored_bytes, Shapes::ShapeRef.new(shape: StoredBytes, location_name: "storedBytes"))
    LogGroup.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    LogGroup.struct_class = Types::LogGroup

    LogGroupField.add_member(:name, Shapes::ShapeRef.new(shape: Field, location_name: "name"))
    LogGroupField.add_member(:percent, Shapes::ShapeRef.new(shape: Percentage, location_name: "percent"))
    LogGroupField.struct_class = Types::LogGroupField

    LogGroupFieldList.member = Shapes::ShapeRef.new(shape: LogGroupField)

    LogGroupNames.member = Shapes::ShapeRef.new(shape: LogGroupName)

    LogGroups.member = Shapes::ShapeRef.new(shape: LogGroup)

    LogRecord.key = Shapes::ShapeRef.new(shape: Field)
    LogRecord.value = Shapes::ShapeRef.new(shape: Value)

    LogStream.add_member(:log_stream_name, Shapes::ShapeRef.new(shape: LogStreamName, location_name: "logStreamName"))
    LogStream.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    LogStream.add_member(:first_event_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "firstEventTimestamp"))
    LogStream.add_member(:last_event_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastEventTimestamp"))
    LogStream.add_member(:last_ingestion_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastIngestionTime"))
    LogStream.add_member(:upload_sequence_token, Shapes::ShapeRef.new(shape: SequenceToken, location_name: "uploadSequenceToken"))
    LogStream.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    LogStream.add_member(:stored_bytes, Shapes::ShapeRef.new(shape: StoredBytes, deprecated: true, location_name: "storedBytes", metadata: {"deprecatedMessage"=>"Starting on June 17, 2019, this parameter will be deprecated for log streams, and will be reported as zero. This change applies only to log streams. The storedBytes parameter for log groups is not affected."}))
    LogStream.struct_class = Types::LogStream

    LogStreams.member = Shapes::ShapeRef.new(shape: LogStream)

    MalformedQueryException.add_member(:query_compile_error, Shapes::ShapeRef.new(shape: QueryCompileError, location_name: "queryCompileError"))
    MalformedQueryException.struct_class = Types::MalformedQueryException

    MetricFilter.add_member(:filter_name, Shapes::ShapeRef.new(shape: FilterName, location_name: "filterName"))
    MetricFilter.add_member(:filter_pattern, Shapes::ShapeRef.new(shape: FilterPattern, location_name: "filterPattern"))
    MetricFilter.add_member(:metric_transformations, Shapes::ShapeRef.new(shape: MetricTransformations, location_name: "metricTransformations"))
    MetricFilter.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    MetricFilter.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupName"))
    MetricFilter.struct_class = Types::MetricFilter

    MetricFilterMatchRecord.add_member(:event_number, Shapes::ShapeRef.new(shape: EventNumber, location_name: "eventNumber"))
    MetricFilterMatchRecord.add_member(:event_message, Shapes::ShapeRef.new(shape: EventMessage, location_name: "eventMessage"))
    MetricFilterMatchRecord.add_member(:extracted_values, Shapes::ShapeRef.new(shape: ExtractedValues, location_name: "extractedValues"))
    MetricFilterMatchRecord.struct_class = Types::MetricFilterMatchRecord

    MetricFilterMatches.member = Shapes::ShapeRef.new(shape: MetricFilterMatchRecord)

    MetricFilters.member = Shapes::ShapeRef.new(shape: MetricFilter)

    MetricTransformation.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "metricName"))
    MetricTransformation.add_member(:metric_namespace, Shapes::ShapeRef.new(shape: MetricNamespace, required: true, location_name: "metricNamespace"))
    MetricTransformation.add_member(:metric_value, Shapes::ShapeRef.new(shape: MetricValue, required: true, location_name: "metricValue"))
    MetricTransformation.add_member(:default_value, Shapes::ShapeRef.new(shape: DefaultValue, location_name: "defaultValue"))
    MetricTransformation.struct_class = Types::MetricTransformation

    MetricTransformations.member = Shapes::ShapeRef.new(shape: MetricTransformation)

    OperationAbortedException.struct_class = Types::OperationAbortedException

    OutputLogEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "timestamp"))
    OutputLogEvent.add_member(:message, Shapes::ShapeRef.new(shape: EventMessage, location_name: "message"))
    OutputLogEvent.add_member(:ingestion_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ingestionTime"))
    OutputLogEvent.struct_class = Types::OutputLogEvent

    OutputLogEvents.member = Shapes::ShapeRef.new(shape: OutputLogEvent)

    PutDestinationPolicyRequest.add_member(:destination_name, Shapes::ShapeRef.new(shape: DestinationName, required: true, location_name: "destinationName"))
    PutDestinationPolicyRequest.add_member(:access_policy, Shapes::ShapeRef.new(shape: AccessPolicy, required: true, location_name: "accessPolicy"))
    PutDestinationPolicyRequest.struct_class = Types::PutDestinationPolicyRequest

    PutDestinationRequest.add_member(:destination_name, Shapes::ShapeRef.new(shape: DestinationName, required: true, location_name: "destinationName"))
    PutDestinationRequest.add_member(:target_arn, Shapes::ShapeRef.new(shape: TargetArn, required: true, location_name: "targetArn"))
    PutDestinationRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    PutDestinationRequest.struct_class = Types::PutDestinationRequest

    PutDestinationResponse.add_member(:destination, Shapes::ShapeRef.new(shape: Destination, location_name: "destination"))
    PutDestinationResponse.struct_class = Types::PutDestinationResponse

    PutLogEventsRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    PutLogEventsRequest.add_member(:log_stream_name, Shapes::ShapeRef.new(shape: LogStreamName, required: true, location_name: "logStreamName"))
    PutLogEventsRequest.add_member(:log_events, Shapes::ShapeRef.new(shape: InputLogEvents, required: true, location_name: "logEvents"))
    PutLogEventsRequest.add_member(:sequence_token, Shapes::ShapeRef.new(shape: SequenceToken, location_name: "sequenceToken"))
    PutLogEventsRequest.struct_class = Types::PutLogEventsRequest

    PutLogEventsResponse.add_member(:next_sequence_token, Shapes::ShapeRef.new(shape: SequenceToken, location_name: "nextSequenceToken"))
    PutLogEventsResponse.add_member(:rejected_log_events_info, Shapes::ShapeRef.new(shape: RejectedLogEventsInfo, location_name: "rejectedLogEventsInfo"))
    PutLogEventsResponse.struct_class = Types::PutLogEventsResponse

    PutMetricFilterRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    PutMetricFilterRequest.add_member(:filter_name, Shapes::ShapeRef.new(shape: FilterName, required: true, location_name: "filterName"))
    PutMetricFilterRequest.add_member(:filter_pattern, Shapes::ShapeRef.new(shape: FilterPattern, required: true, location_name: "filterPattern"))
    PutMetricFilterRequest.add_member(:metric_transformations, Shapes::ShapeRef.new(shape: MetricTransformations, required: true, location_name: "metricTransformations"))
    PutMetricFilterRequest.struct_class = Types::PutMetricFilterRequest

    PutQueryDefinitionRequest.add_member(:name, Shapes::ShapeRef.new(shape: QueryDefinitionName, required: true, location_name: "name"))
    PutQueryDefinitionRequest.add_member(:query_definition_id, Shapes::ShapeRef.new(shape: QueryId, location_name: "queryDefinitionId"))
    PutQueryDefinitionRequest.add_member(:log_group_names, Shapes::ShapeRef.new(shape: LogGroupNames, location_name: "logGroupNames"))
    PutQueryDefinitionRequest.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryDefinitionString, required: true, location_name: "queryString"))
    PutQueryDefinitionRequest.struct_class = Types::PutQueryDefinitionRequest

    PutQueryDefinitionResponse.add_member(:query_definition_id, Shapes::ShapeRef.new(shape: QueryId, location_name: "queryDefinitionId"))
    PutQueryDefinitionResponse.struct_class = Types::PutQueryDefinitionResponse

    PutResourcePolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "policyName"))
    PutResourcePolicyRequest.add_member(:policy_document, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "policyDocument"))
    PutResourcePolicyRequest.struct_class = Types::PutResourcePolicyRequest

    PutResourcePolicyResponse.add_member(:resource_policy, Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: "resourcePolicy"))
    PutResourcePolicyResponse.struct_class = Types::PutResourcePolicyResponse

    PutRetentionPolicyRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    PutRetentionPolicyRequest.add_member(:retention_in_days, Shapes::ShapeRef.new(shape: Days, required: true, location_name: "retentionInDays"))
    PutRetentionPolicyRequest.struct_class = Types::PutRetentionPolicyRequest

    PutSubscriptionFilterRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    PutSubscriptionFilterRequest.add_member(:filter_name, Shapes::ShapeRef.new(shape: FilterName, required: true, location_name: "filterName"))
    PutSubscriptionFilterRequest.add_member(:filter_pattern, Shapes::ShapeRef.new(shape: FilterPattern, required: true, location_name: "filterPattern"))
    PutSubscriptionFilterRequest.add_member(:destination_arn, Shapes::ShapeRef.new(shape: DestinationArn, required: true, location_name: "destinationArn"))
    PutSubscriptionFilterRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    PutSubscriptionFilterRequest.add_member(:distribution, Shapes::ShapeRef.new(shape: Distribution, location_name: "distribution"))
    PutSubscriptionFilterRequest.struct_class = Types::PutSubscriptionFilterRequest

    QueryCompileError.add_member(:location, Shapes::ShapeRef.new(shape: QueryCompileErrorLocation, location_name: "location"))
    QueryCompileError.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    QueryCompileError.struct_class = Types::QueryCompileError

    QueryCompileErrorLocation.add_member(:start_char_offset, Shapes::ShapeRef.new(shape: QueryCharOffset, location_name: "startCharOffset"))
    QueryCompileErrorLocation.add_member(:end_char_offset, Shapes::ShapeRef.new(shape: QueryCharOffset, location_name: "endCharOffset"))
    QueryCompileErrorLocation.struct_class = Types::QueryCompileErrorLocation

    QueryDefinition.add_member(:query_definition_id, Shapes::ShapeRef.new(shape: QueryId, location_name: "queryDefinitionId"))
    QueryDefinition.add_member(:name, Shapes::ShapeRef.new(shape: QueryDefinitionName, location_name: "name"))
    QueryDefinition.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryDefinitionString, location_name: "queryString"))
    QueryDefinition.add_member(:last_modified, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModified"))
    QueryDefinition.add_member(:log_group_names, Shapes::ShapeRef.new(shape: LogGroupNames, location_name: "logGroupNames"))
    QueryDefinition.struct_class = Types::QueryDefinition

    QueryDefinitionList.member = Shapes::ShapeRef.new(shape: QueryDefinition)

    QueryInfo.add_member(:query_id, Shapes::ShapeRef.new(shape: QueryId, location_name: "queryId"))
    QueryInfo.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryString, location_name: "queryString"))
    QueryInfo.add_member(:status, Shapes::ShapeRef.new(shape: QueryStatus, location_name: "status"))
    QueryInfo.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createTime"))
    QueryInfo.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupName"))
    QueryInfo.struct_class = Types::QueryInfo

    QueryInfoList.member = Shapes::ShapeRef.new(shape: QueryInfo)

    QueryResults.member = Shapes::ShapeRef.new(shape: ResultRows)

    QueryStatistics.add_member(:records_matched, Shapes::ShapeRef.new(shape: StatsValue, location_name: "recordsMatched"))
    QueryStatistics.add_member(:records_scanned, Shapes::ShapeRef.new(shape: StatsValue, location_name: "recordsScanned"))
    QueryStatistics.add_member(:bytes_scanned, Shapes::ShapeRef.new(shape: StatsValue, location_name: "bytesScanned"))
    QueryStatistics.struct_class = Types::QueryStatistics

    RejectedLogEventsInfo.add_member(:too_new_log_event_start_index, Shapes::ShapeRef.new(shape: LogEventIndex, location_name: "tooNewLogEventStartIndex"))
    RejectedLogEventsInfo.add_member(:too_old_log_event_end_index, Shapes::ShapeRef.new(shape: LogEventIndex, location_name: "tooOldLogEventEndIndex"))
    RejectedLogEventsInfo.add_member(:expired_log_event_end_index, Shapes::ShapeRef.new(shape: LogEventIndex, location_name: "expiredLogEventEndIndex"))
    RejectedLogEventsInfo.struct_class = Types::RejectedLogEventsInfo

    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourcePolicies.member = Shapes::ShapeRef.new(shape: ResourcePolicy)

    ResourcePolicy.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "policyName"))
    ResourcePolicy.add_member(:policy_document, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "policyDocument"))
    ResourcePolicy.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedTime"))
    ResourcePolicy.struct_class = Types::ResourcePolicy

    ResultField.add_member(:field, Shapes::ShapeRef.new(shape: Field, location_name: "field"))
    ResultField.add_member(:value, Shapes::ShapeRef.new(shape: Value, location_name: "value"))
    ResultField.struct_class = Types::ResultField

    ResultRows.member = Shapes::ShapeRef.new(shape: ResultField)

    SearchedLogStream.add_member(:log_stream_name, Shapes::ShapeRef.new(shape: LogStreamName, location_name: "logStreamName"))
    SearchedLogStream.add_member(:searched_completely, Shapes::ShapeRef.new(shape: LogStreamSearchedCompletely, location_name: "searchedCompletely"))
    SearchedLogStream.struct_class = Types::SearchedLogStream

    SearchedLogStreams.member = Shapes::ShapeRef.new(shape: SearchedLogStream)

    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    StartQueryRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupName"))
    StartQueryRequest.add_member(:log_group_names, Shapes::ShapeRef.new(shape: LogGroupNames, location_name: "logGroupNames"))
    StartQueryRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startTime"))
    StartQueryRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "endTime"))
    StartQueryRequest.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryString, required: true, location_name: "queryString"))
    StartQueryRequest.add_member(:limit, Shapes::ShapeRef.new(shape: EventsLimit, location_name: "limit"))
    StartQueryRequest.struct_class = Types::StartQueryRequest

    StartQueryResponse.add_member(:query_id, Shapes::ShapeRef.new(shape: QueryId, location_name: "queryId"))
    StartQueryResponse.struct_class = Types::StartQueryResponse

    StopQueryRequest.add_member(:query_id, Shapes::ShapeRef.new(shape: QueryId, required: true, location_name: "queryId"))
    StopQueryRequest.struct_class = Types::StopQueryRequest

    StopQueryResponse.add_member(:success, Shapes::ShapeRef.new(shape: Success, location_name: "success"))
    StopQueryResponse.struct_class = Types::StopQueryResponse

    SubscriptionFilter.add_member(:filter_name, Shapes::ShapeRef.new(shape: FilterName, location_name: "filterName"))
    SubscriptionFilter.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupName"))
    SubscriptionFilter.add_member(:filter_pattern, Shapes::ShapeRef.new(shape: FilterPattern, location_name: "filterPattern"))
    SubscriptionFilter.add_member(:destination_arn, Shapes::ShapeRef.new(shape: DestinationArn, location_name: "destinationArn"))
    SubscriptionFilter.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    SubscriptionFilter.add_member(:distribution, Shapes::ShapeRef.new(shape: Distribution, location_name: "distribution"))
    SubscriptionFilter.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    SubscriptionFilter.struct_class = Types::SubscriptionFilter

    SubscriptionFilters.member = Shapes::ShapeRef.new(shape: SubscriptionFilter)

    TagList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagLogGroupRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    TagLogGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagLogGroupRequest.struct_class = Types::TagLogGroupRequest

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    TestEventMessages.member = Shapes::ShapeRef.new(shape: EventMessage)

    TestMetricFilterRequest.add_member(:filter_pattern, Shapes::ShapeRef.new(shape: FilterPattern, required: true, location_name: "filterPattern"))
    TestMetricFilterRequest.add_member(:log_event_messages, Shapes::ShapeRef.new(shape: TestEventMessages, required: true, location_name: "logEventMessages"))
    TestMetricFilterRequest.struct_class = Types::TestMetricFilterRequest

    TestMetricFilterResponse.add_member(:matches, Shapes::ShapeRef.new(shape: MetricFilterMatches, location_name: "matches"))
    TestMetricFilterResponse.struct_class = Types::TestMetricFilterResponse

    UnrecognizedClientException.struct_class = Types::UnrecognizedClientException

    UntagLogGroupRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    UntagLogGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    UntagLogGroupRequest.struct_class = Types::UntagLogGroupRequest


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2014-03-28"

      api.metadata = {
        "apiVersion" => "2014-03-28",
        "endpointPrefix" => "logs",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon CloudWatch Logs",
        "serviceId" => "CloudWatch Logs",
        "signatureVersion" => "v4",
        "targetPrefix" => "Logs_20140328",
        "uid" => "logs-2014-03-28",
      }

      api.add_operation(:associate_kms_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateKmsKey"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateKmsKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:cancel_export_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelExportTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelExportTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:create_export_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateExportTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateExportTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateExportTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
      end)

      api.add_operation(:create_log_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLogGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLogGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:create_log_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLogStream"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLogStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDestination"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_log_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLogGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLogGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_log_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLogStream"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLogStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_metric_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMetricFilter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteMetricFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_query_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteQueryDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteQueryDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteQueryDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_retention_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRetentionPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRetentionPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_subscription_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSubscriptionFilter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSubscriptionFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_destinations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDestinations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDestinationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDestinationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_export_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeExportTasks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeExportTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeExportTasksResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_log_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLogGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLogGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLogGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_log_streams, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLogStreams"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLogStreamsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLogStreamsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_metric_filters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMetricFilters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMetricFiltersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeMetricFiltersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_queries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeQueries"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeQueriesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeQueriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_query_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeQueryDefinitions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeQueryDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeQueryDefinitionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_resource_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeResourcePolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeResourcePoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeResourcePoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_subscription_filters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSubscriptionFilters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSubscriptionFiltersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSubscriptionFiltersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:disassociate_kms_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateKmsKey"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateKmsKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:filter_log_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "FilterLogEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: FilterLogEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: FilterLogEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_log_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLogEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetLogEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLogEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_forward_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_log_group_fields, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLogGroupFields"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetLogGroupFieldsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLogGroupFieldsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_log_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLogRecord"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetLogRecordRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLogRecordResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_query_results, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueryResults"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetQueryResultsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetQueryResultsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:list_tags_log_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsLogGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsLogGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsLogGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:put_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutDestination"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:put_destination_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutDestinationPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutDestinationPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:put_log_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutLogEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutLogEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutLogEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSequenceTokenException)
        o.errors << Shapes::ShapeRef.new(shape: DataAlreadyAcceptedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: UnrecognizedClientException)
      end)

      api.add_operation(:put_metric_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutMetricFilter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutMetricFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:put_query_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutQueryDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutQueryDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: PutQueryDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:put_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:put_retention_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRetentionPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutRetentionPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:put_subscription_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutSubscriptionFilter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutSubscriptionFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:start_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartQueryRequest)
        o.output = Shapes::ShapeRef.new(shape: StartQueryResponse)
        o.errors << Shapes::ShapeRef.new(shape: MalformedQueryException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:stop_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopQueryRequest)
        o.output = Shapes::ShapeRef.new(shape: StopQueryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:tag_log_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagLogGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagLogGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:test_metric_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TestMetricFilter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TestMetricFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: TestMetricFilterResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:untag_log_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagLogGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagLogGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
