# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::XRay
  # @api private
  module ClientApi

    include Seahorse::Model

    Alias = Shapes::StructureShape.new(name: 'Alias')
    AliasList = Shapes::ListShape.new(name: 'AliasList')
    AliasNames = Shapes::ListShape.new(name: 'AliasNames')
    AnnotationKey = Shapes::StringShape.new(name: 'AnnotationKey')
    AnnotationValue = Shapes::StructureShape.new(name: 'AnnotationValue')
    Annotations = Shapes::MapShape.new(name: 'Annotations')
    BackendConnectionErrors = Shapes::StructureShape.new(name: 'BackendConnectionErrors')
    BatchGetTracesRequest = Shapes::StructureShape.new(name: 'BatchGetTracesRequest')
    BatchGetTracesResult = Shapes::StructureShape.new(name: 'BatchGetTracesResult')
    Double = Shapes::FloatShape.new(name: 'Double')
    EC2InstanceId = Shapes::StringShape.new(name: 'EC2InstanceId')
    Edge = Shapes::StructureShape.new(name: 'Edge')
    EdgeList = Shapes::ListShape.new(name: 'EdgeList')
    EdgeStatistics = Shapes::StructureShape.new(name: 'EdgeStatistics')
    EncryptionConfig = Shapes::StructureShape.new(name: 'EncryptionConfig')
    EncryptionKeyId = Shapes::StringShape.new(name: 'EncryptionKeyId')
    EncryptionStatus = Shapes::StringShape.new(name: 'EncryptionStatus')
    EncryptionType = Shapes::StringShape.new(name: 'EncryptionType')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ErrorStatistics = Shapes::StructureShape.new(name: 'ErrorStatistics')
    FaultStatistics = Shapes::StructureShape.new(name: 'FaultStatistics')
    FilterExpression = Shapes::StringShape.new(name: 'FilterExpression')
    GetEncryptionConfigRequest = Shapes::StructureShape.new(name: 'GetEncryptionConfigRequest')
    GetEncryptionConfigResult = Shapes::StructureShape.new(name: 'GetEncryptionConfigResult')
    GetServiceGraphRequest = Shapes::StructureShape.new(name: 'GetServiceGraphRequest')
    GetServiceGraphResult = Shapes::StructureShape.new(name: 'GetServiceGraphResult')
    GetTraceGraphRequest = Shapes::StructureShape.new(name: 'GetTraceGraphRequest')
    GetTraceGraphResult = Shapes::StructureShape.new(name: 'GetTraceGraphResult')
    GetTraceSummariesRequest = Shapes::StructureShape.new(name: 'GetTraceSummariesRequest')
    GetTraceSummariesResult = Shapes::StructureShape.new(name: 'GetTraceSummariesResult')
    Histogram = Shapes::ListShape.new(name: 'Histogram')
    HistogramEntry = Shapes::StructureShape.new(name: 'HistogramEntry')
    Hostname = Shapes::StringShape.new(name: 'Hostname')
    Http = Shapes::StructureShape.new(name: 'Http')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    NullableBoolean = Shapes::BooleanShape.new(name: 'NullableBoolean')
    NullableDouble = Shapes::FloatShape.new(name: 'NullableDouble')
    NullableInteger = Shapes::IntegerShape.new(name: 'NullableInteger')
    NullableLong = Shapes::IntegerShape.new(name: 'NullableLong')
    PutEncryptionConfigRequest = Shapes::StructureShape.new(name: 'PutEncryptionConfigRequest')
    PutEncryptionConfigResult = Shapes::StructureShape.new(name: 'PutEncryptionConfigResult')
    PutTelemetryRecordsRequest = Shapes::StructureShape.new(name: 'PutTelemetryRecordsRequest')
    PutTelemetryRecordsResult = Shapes::StructureShape.new(name: 'PutTelemetryRecordsResult')
    PutTraceSegmentsRequest = Shapes::StructureShape.new(name: 'PutTraceSegmentsRequest')
    PutTraceSegmentsResult = Shapes::StructureShape.new(name: 'PutTraceSegmentsResult')
    ResourceARN = Shapes::StringShape.new(name: 'ResourceARN')
    Segment = Shapes::StructureShape.new(name: 'Segment')
    SegmentDocument = Shapes::StringShape.new(name: 'SegmentDocument')
    SegmentId = Shapes::StringShape.new(name: 'SegmentId')
    SegmentList = Shapes::ListShape.new(name: 'SegmentList')
    Service = Shapes::StructureShape.new(name: 'Service')
    ServiceId = Shapes::StructureShape.new(name: 'ServiceId')
    ServiceIds = Shapes::ListShape.new(name: 'ServiceIds')
    ServiceList = Shapes::ListShape.new(name: 'ServiceList')
    ServiceNames = Shapes::ListShape.new(name: 'ServiceNames')
    ServiceStatistics = Shapes::StructureShape.new(name: 'ServiceStatistics')
    String = Shapes::StringShape.new(name: 'String')
    TelemetryRecord = Shapes::StructureShape.new(name: 'TelemetryRecord')
    TelemetryRecordList = Shapes::ListShape.new(name: 'TelemetryRecordList')
    ThrottledException = Shapes::StructureShape.new(name: 'ThrottledException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Trace = Shapes::StructureShape.new(name: 'Trace')
    TraceId = Shapes::StringShape.new(name: 'TraceId')
    TraceIdList = Shapes::ListShape.new(name: 'TraceIdList')
    TraceList = Shapes::ListShape.new(name: 'TraceList')
    TraceSegmentDocument = Shapes::StringShape.new(name: 'TraceSegmentDocument')
    TraceSegmentDocumentList = Shapes::ListShape.new(name: 'TraceSegmentDocumentList')
    TraceSummary = Shapes::StructureShape.new(name: 'TraceSummary')
    TraceSummaryList = Shapes::ListShape.new(name: 'TraceSummaryList')
    TraceUser = Shapes::StructureShape.new(name: 'TraceUser')
    TraceUsers = Shapes::ListShape.new(name: 'TraceUsers')
    UnprocessedTraceIdList = Shapes::ListShape.new(name: 'UnprocessedTraceIdList')
    UnprocessedTraceSegment = Shapes::StructureShape.new(name: 'UnprocessedTraceSegment')
    UnprocessedTraceSegmentList = Shapes::ListShape.new(name: 'UnprocessedTraceSegmentList')
    ValueWithServiceIds = Shapes::StructureShape.new(name: 'ValueWithServiceIds')
    ValuesWithServiceIds = Shapes::ListShape.new(name: 'ValuesWithServiceIds')

    Alias.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Alias.add_member(:names, Shapes::ShapeRef.new(shape: AliasNames, location_name: "Names"))
    Alias.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    Alias.struct_class = Types::Alias

    AliasList.member = Shapes::ShapeRef.new(shape: Alias)

    AliasNames.member = Shapes::ShapeRef.new(shape: String)

    AnnotationValue.add_member(:number_value, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "NumberValue"))
    AnnotationValue.add_member(:boolean_value, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "BooleanValue"))
    AnnotationValue.add_member(:string_value, Shapes::ShapeRef.new(shape: String, location_name: "StringValue"))
    AnnotationValue.struct_class = Types::AnnotationValue

    Annotations.key = Shapes::ShapeRef.new(shape: AnnotationKey)
    Annotations.value = Shapes::ShapeRef.new(shape: ValuesWithServiceIds)

    BackendConnectionErrors.add_member(:timeout_count, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "TimeoutCount"))
    BackendConnectionErrors.add_member(:connection_refused_count, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "ConnectionRefusedCount"))
    BackendConnectionErrors.add_member(:http_code_4_xx_count, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "HTTPCode4XXCount"))
    BackendConnectionErrors.add_member(:http_code_5_xx_count, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "HTTPCode5XXCount"))
    BackendConnectionErrors.add_member(:unknown_host_count, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "UnknownHostCount"))
    BackendConnectionErrors.add_member(:other_count, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "OtherCount"))
    BackendConnectionErrors.struct_class = Types::BackendConnectionErrors

    BatchGetTracesRequest.add_member(:trace_ids, Shapes::ShapeRef.new(shape: TraceIdList, required: true, location_name: "TraceIds"))
    BatchGetTracesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    BatchGetTracesRequest.struct_class = Types::BatchGetTracesRequest

    BatchGetTracesResult.add_member(:traces, Shapes::ShapeRef.new(shape: TraceList, location_name: "Traces"))
    BatchGetTracesResult.add_member(:unprocessed_trace_ids, Shapes::ShapeRef.new(shape: UnprocessedTraceIdList, location_name: "UnprocessedTraceIds"))
    BatchGetTracesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    BatchGetTracesResult.struct_class = Types::BatchGetTracesResult

    Edge.add_member(:reference_id, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "ReferenceId"))
    Edge.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    Edge.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    Edge.add_member(:summary_statistics, Shapes::ShapeRef.new(shape: EdgeStatistics, location_name: "SummaryStatistics"))
    Edge.add_member(:response_time_histogram, Shapes::ShapeRef.new(shape: Histogram, location_name: "ResponseTimeHistogram"))
    Edge.add_member(:aliases, Shapes::ShapeRef.new(shape: AliasList, location_name: "Aliases"))
    Edge.struct_class = Types::Edge

    EdgeList.member = Shapes::ShapeRef.new(shape: Edge)

    EdgeStatistics.add_member(:ok_count, Shapes::ShapeRef.new(shape: NullableLong, location_name: "OkCount"))
    EdgeStatistics.add_member(:error_statistics, Shapes::ShapeRef.new(shape: ErrorStatistics, location_name: "ErrorStatistics"))
    EdgeStatistics.add_member(:fault_statistics, Shapes::ShapeRef.new(shape: FaultStatistics, location_name: "FaultStatistics"))
    EdgeStatistics.add_member(:total_count, Shapes::ShapeRef.new(shape: NullableLong, location_name: "TotalCount"))
    EdgeStatistics.add_member(:total_response_time, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "TotalResponseTime"))
    EdgeStatistics.struct_class = Types::EdgeStatistics

    EncryptionConfig.add_member(:key_id, Shapes::ShapeRef.new(shape: String, location_name: "KeyId"))
    EncryptionConfig.add_member(:status, Shapes::ShapeRef.new(shape: EncryptionStatus, location_name: "Status"))
    EncryptionConfig.add_member(:type, Shapes::ShapeRef.new(shape: EncryptionType, location_name: "Type"))
    EncryptionConfig.struct_class = Types::EncryptionConfig

    ErrorStatistics.add_member(:throttle_count, Shapes::ShapeRef.new(shape: NullableLong, location_name: "ThrottleCount"))
    ErrorStatistics.add_member(:other_count, Shapes::ShapeRef.new(shape: NullableLong, location_name: "OtherCount"))
    ErrorStatistics.add_member(:total_count, Shapes::ShapeRef.new(shape: NullableLong, location_name: "TotalCount"))
    ErrorStatistics.struct_class = Types::ErrorStatistics

    FaultStatistics.add_member(:other_count, Shapes::ShapeRef.new(shape: NullableLong, location_name: "OtherCount"))
    FaultStatistics.add_member(:total_count, Shapes::ShapeRef.new(shape: NullableLong, location_name: "TotalCount"))
    FaultStatistics.struct_class = Types::FaultStatistics

    GetEncryptionConfigRequest.struct_class = Types::GetEncryptionConfigRequest

    GetEncryptionConfigResult.add_member(:encryption_config, Shapes::ShapeRef.new(shape: EncryptionConfig, location_name: "EncryptionConfig"))
    GetEncryptionConfigResult.struct_class = Types::GetEncryptionConfigResult

    GetServiceGraphRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTime"))
    GetServiceGraphRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EndTime"))
    GetServiceGraphRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetServiceGraphRequest.struct_class = Types::GetServiceGraphRequest

    GetServiceGraphResult.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    GetServiceGraphResult.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    GetServiceGraphResult.add_member(:services, Shapes::ShapeRef.new(shape: ServiceList, location_name: "Services"))
    GetServiceGraphResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetServiceGraphResult.struct_class = Types::GetServiceGraphResult

    GetTraceGraphRequest.add_member(:trace_ids, Shapes::ShapeRef.new(shape: TraceIdList, required: true, location_name: "TraceIds"))
    GetTraceGraphRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetTraceGraphRequest.struct_class = Types::GetTraceGraphRequest

    GetTraceGraphResult.add_member(:services, Shapes::ShapeRef.new(shape: ServiceList, location_name: "Services"))
    GetTraceGraphResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetTraceGraphResult.struct_class = Types::GetTraceGraphResult

    GetTraceSummariesRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTime"))
    GetTraceSummariesRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EndTime"))
    GetTraceSummariesRequest.add_member(:sampling, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "Sampling"))
    GetTraceSummariesRequest.add_member(:filter_expression, Shapes::ShapeRef.new(shape: FilterExpression, location_name: "FilterExpression"))
    GetTraceSummariesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetTraceSummariesRequest.struct_class = Types::GetTraceSummariesRequest

    GetTraceSummariesResult.add_member(:trace_summaries, Shapes::ShapeRef.new(shape: TraceSummaryList, location_name: "TraceSummaries"))
    GetTraceSummariesResult.add_member(:approximate_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ApproximateTime"))
    GetTraceSummariesResult.add_member(:traces_processed_count, Shapes::ShapeRef.new(shape: NullableLong, location_name: "TracesProcessedCount"))
    GetTraceSummariesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetTraceSummariesResult.struct_class = Types::GetTraceSummariesResult

    Histogram.member = Shapes::ShapeRef.new(shape: HistogramEntry)

    HistogramEntry.add_member(:value, Shapes::ShapeRef.new(shape: Double, location_name: "Value"))
    HistogramEntry.add_member(:count, Shapes::ShapeRef.new(shape: Integer, location_name: "Count"))
    HistogramEntry.struct_class = Types::HistogramEntry

    Http.add_member(:http_url, Shapes::ShapeRef.new(shape: String, location_name: "HttpURL"))
    Http.add_member(:http_status, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "HttpStatus"))
    Http.add_member(:http_method, Shapes::ShapeRef.new(shape: String, location_name: "HttpMethod"))
    Http.add_member(:user_agent, Shapes::ShapeRef.new(shape: String, location_name: "UserAgent"))
    Http.add_member(:client_ip, Shapes::ShapeRef.new(shape: String, location_name: "ClientIp"))
    Http.struct_class = Types::Http

    PutEncryptionConfigRequest.add_member(:key_id, Shapes::ShapeRef.new(shape: EncryptionKeyId, location_name: "KeyId"))
    PutEncryptionConfigRequest.add_member(:type, Shapes::ShapeRef.new(shape: EncryptionType, required: true, location_name: "Type"))
    PutEncryptionConfigRequest.struct_class = Types::PutEncryptionConfigRequest

    PutEncryptionConfigResult.add_member(:encryption_config, Shapes::ShapeRef.new(shape: EncryptionConfig, location_name: "EncryptionConfig"))
    PutEncryptionConfigResult.struct_class = Types::PutEncryptionConfigResult

    PutTelemetryRecordsRequest.add_member(:telemetry_records, Shapes::ShapeRef.new(shape: TelemetryRecordList, required: true, location_name: "TelemetryRecords"))
    PutTelemetryRecordsRequest.add_member(:ec2_instance_id, Shapes::ShapeRef.new(shape: EC2InstanceId, location_name: "EC2InstanceId"))
    PutTelemetryRecordsRequest.add_member(:hostname, Shapes::ShapeRef.new(shape: Hostname, location_name: "Hostname"))
    PutTelemetryRecordsRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARN"))
    PutTelemetryRecordsRequest.struct_class = Types::PutTelemetryRecordsRequest

    PutTelemetryRecordsResult.struct_class = Types::PutTelemetryRecordsResult

    PutTraceSegmentsRequest.add_member(:trace_segment_documents, Shapes::ShapeRef.new(shape: TraceSegmentDocumentList, required: true, location_name: "TraceSegmentDocuments"))
    PutTraceSegmentsRequest.struct_class = Types::PutTraceSegmentsRequest

    PutTraceSegmentsResult.add_member(:unprocessed_trace_segments, Shapes::ShapeRef.new(shape: UnprocessedTraceSegmentList, location_name: "UnprocessedTraceSegments"))
    PutTraceSegmentsResult.struct_class = Types::PutTraceSegmentsResult

    Segment.add_member(:id, Shapes::ShapeRef.new(shape: SegmentId, location_name: "Id"))
    Segment.add_member(:document, Shapes::ShapeRef.new(shape: SegmentDocument, location_name: "Document"))
    Segment.struct_class = Types::Segment

    SegmentList.member = Shapes::ShapeRef.new(shape: Segment)

    Service.add_member(:reference_id, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "ReferenceId"))
    Service.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Service.add_member(:names, Shapes::ShapeRef.new(shape: ServiceNames, location_name: "Names"))
    Service.add_member(:root, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "Root"))
    Service.add_member(:account_id, Shapes::ShapeRef.new(shape: String, location_name: "AccountId"))
    Service.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    Service.add_member(:state, Shapes::ShapeRef.new(shape: String, location_name: "State"))
    Service.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    Service.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    Service.add_member(:edges, Shapes::ShapeRef.new(shape: EdgeList, location_name: "Edges"))
    Service.add_member(:summary_statistics, Shapes::ShapeRef.new(shape: ServiceStatistics, location_name: "SummaryStatistics"))
    Service.add_member(:duration_histogram, Shapes::ShapeRef.new(shape: Histogram, location_name: "DurationHistogram"))
    Service.add_member(:response_time_histogram, Shapes::ShapeRef.new(shape: Histogram, location_name: "ResponseTimeHistogram"))
    Service.struct_class = Types::Service

    ServiceId.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    ServiceId.add_member(:names, Shapes::ShapeRef.new(shape: ServiceNames, location_name: "Names"))
    ServiceId.add_member(:account_id, Shapes::ShapeRef.new(shape: String, location_name: "AccountId"))
    ServiceId.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    ServiceId.struct_class = Types::ServiceId

    ServiceIds.member = Shapes::ShapeRef.new(shape: ServiceId)

    ServiceList.member = Shapes::ShapeRef.new(shape: Service)

    ServiceNames.member = Shapes::ShapeRef.new(shape: String)

    ServiceStatistics.add_member(:ok_count, Shapes::ShapeRef.new(shape: NullableLong, location_name: "OkCount"))
    ServiceStatistics.add_member(:error_statistics, Shapes::ShapeRef.new(shape: ErrorStatistics, location_name: "ErrorStatistics"))
    ServiceStatistics.add_member(:fault_statistics, Shapes::ShapeRef.new(shape: FaultStatistics, location_name: "FaultStatistics"))
    ServiceStatistics.add_member(:total_count, Shapes::ShapeRef.new(shape: NullableLong, location_name: "TotalCount"))
    ServiceStatistics.add_member(:total_response_time, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "TotalResponseTime"))
    ServiceStatistics.struct_class = Types::ServiceStatistics

    TelemetryRecord.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "Timestamp"))
    TelemetryRecord.add_member(:segments_received_count, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "SegmentsReceivedCount"))
    TelemetryRecord.add_member(:segments_sent_count, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "SegmentsSentCount"))
    TelemetryRecord.add_member(:segments_spillover_count, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "SegmentsSpilloverCount"))
    TelemetryRecord.add_member(:segments_rejected_count, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "SegmentsRejectedCount"))
    TelemetryRecord.add_member(:backend_connection_errors, Shapes::ShapeRef.new(shape: BackendConnectionErrors, location_name: "BackendConnectionErrors"))
    TelemetryRecord.struct_class = Types::TelemetryRecord

    TelemetryRecordList.member = Shapes::ShapeRef.new(shape: TelemetryRecord)

    Trace.add_member(:id, Shapes::ShapeRef.new(shape: TraceId, location_name: "Id"))
    Trace.add_member(:duration, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "Duration"))
    Trace.add_member(:segments, Shapes::ShapeRef.new(shape: SegmentList, location_name: "Segments"))
    Trace.struct_class = Types::Trace

    TraceIdList.member = Shapes::ShapeRef.new(shape: TraceId)

    TraceList.member = Shapes::ShapeRef.new(shape: Trace)

    TraceSegmentDocumentList.member = Shapes::ShapeRef.new(shape: TraceSegmentDocument)

    TraceSummary.add_member(:id, Shapes::ShapeRef.new(shape: TraceId, location_name: "Id"))
    TraceSummary.add_member(:duration, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "Duration"))
    TraceSummary.add_member(:response_time, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "ResponseTime"))
    TraceSummary.add_member(:has_fault, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "HasFault"))
    TraceSummary.add_member(:has_error, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "HasError"))
    TraceSummary.add_member(:has_throttle, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "HasThrottle"))
    TraceSummary.add_member(:is_partial, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "IsPartial"))
    TraceSummary.add_member(:http, Shapes::ShapeRef.new(shape: Http, location_name: "Http"))
    TraceSummary.add_member(:annotations, Shapes::ShapeRef.new(shape: Annotations, location_name: "Annotations"))
    TraceSummary.add_member(:users, Shapes::ShapeRef.new(shape: TraceUsers, location_name: "Users"))
    TraceSummary.add_member(:service_ids, Shapes::ShapeRef.new(shape: ServiceIds, location_name: "ServiceIds"))
    TraceSummary.struct_class = Types::TraceSummary

    TraceSummaryList.member = Shapes::ShapeRef.new(shape: TraceSummary)

    TraceUser.add_member(:user_name, Shapes::ShapeRef.new(shape: String, location_name: "UserName"))
    TraceUser.add_member(:service_ids, Shapes::ShapeRef.new(shape: ServiceIds, location_name: "ServiceIds"))
    TraceUser.struct_class = Types::TraceUser

    TraceUsers.member = Shapes::ShapeRef.new(shape: TraceUser)

    UnprocessedTraceIdList.member = Shapes::ShapeRef.new(shape: TraceId)

    UnprocessedTraceSegment.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "Id"))
    UnprocessedTraceSegment.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    UnprocessedTraceSegment.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnprocessedTraceSegment.struct_class = Types::UnprocessedTraceSegment

    UnprocessedTraceSegmentList.member = Shapes::ShapeRef.new(shape: UnprocessedTraceSegment)

    ValueWithServiceIds.add_member(:annotation_value, Shapes::ShapeRef.new(shape: AnnotationValue, location_name: "AnnotationValue"))
    ValueWithServiceIds.add_member(:service_ids, Shapes::ShapeRef.new(shape: ServiceIds, location_name: "ServiceIds"))
    ValueWithServiceIds.struct_class = Types::ValueWithServiceIds

    ValuesWithServiceIds.member = Shapes::ShapeRef.new(shape: ValueWithServiceIds)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-04-12"

      api.metadata = {
        "endpointPrefix" => "xray",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS X-Ray",
        "signatureVersion" => "v4",
      }

      api.add_operation(:batch_get_traces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetTraces"
        o.http_method = "POST"
        o.http_request_uri = "/Traces"
        o.input = Shapes::ShapeRef.new(shape: BatchGetTracesRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetTracesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_encryption_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEncryptionConfig"
        o.http_method = "POST"
        o.http_request_uri = "/EncryptionConfig"
        o.input = Shapes::ShapeRef.new(shape: GetEncryptionConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEncryptionConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
      end)

      api.add_operation(:get_service_graph, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServiceGraph"
        o.http_method = "POST"
        o.http_request_uri = "/ServiceGraph"
        o.input = Shapes::ShapeRef.new(shape: GetServiceGraphRequest)
        o.output = Shapes::ShapeRef.new(shape: GetServiceGraphResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_trace_graph, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTraceGraph"
        o.http_method = "POST"
        o.http_request_uri = "/TraceGraph"
        o.input = Shapes::ShapeRef.new(shape: GetTraceGraphRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTraceGraphResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_trace_summaries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTraceSummaries"
        o.http_method = "POST"
        o.http_request_uri = "/TraceSummaries"
        o.input = Shapes::ShapeRef.new(shape: GetTraceSummariesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTraceSummariesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_encryption_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutEncryptionConfig"
        o.http_method = "POST"
        o.http_request_uri = "/PutEncryptionConfig"
        o.input = Shapes::ShapeRef.new(shape: PutEncryptionConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: PutEncryptionConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
      end)

      api.add_operation(:put_telemetry_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutTelemetryRecords"
        o.http_method = "POST"
        o.http_request_uri = "/TelemetryRecords"
        o.input = Shapes::ShapeRef.new(shape: PutTelemetryRecordsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutTelemetryRecordsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
      end)

      api.add_operation(:put_trace_segments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutTraceSegments"
        o.http_method = "POST"
        o.http_request_uri = "/TraceSegments"
        o.input = Shapes::ShapeRef.new(shape: PutTraceSegmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutTraceSegmentsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
      end)
    end

  end
end
