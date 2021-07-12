# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LookoutMetrics
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Action = Shapes::StructureShape.new(name: 'Action')
    ActivateAnomalyDetectorRequest = Shapes::StructureShape.new(name: 'ActivateAnomalyDetectorRequest')
    ActivateAnomalyDetectorResponse = Shapes::StructureShape.new(name: 'ActivateAnomalyDetectorResponse')
    AggregationFunction = Shapes::StringShape.new(name: 'AggregationFunction')
    Alert = Shapes::StructureShape.new(name: 'Alert')
    AlertDescription = Shapes::StringShape.new(name: 'AlertDescription')
    AlertName = Shapes::StringShape.new(name: 'AlertName')
    AlertStatus = Shapes::StringShape.new(name: 'AlertStatus')
    AlertSummary = Shapes::StructureShape.new(name: 'AlertSummary')
    AlertSummaryList = Shapes::ListShape.new(name: 'AlertSummaryList')
    AlertType = Shapes::StringShape.new(name: 'AlertType')
    AnomalyDetectionTaskStatus = Shapes::StringShape.new(name: 'AnomalyDetectionTaskStatus')
    AnomalyDetectionTaskStatusMessage = Shapes::StringShape.new(name: 'AnomalyDetectionTaskStatusMessage')
    AnomalyDetectorConfig = Shapes::StructureShape.new(name: 'AnomalyDetectorConfig')
    AnomalyDetectorConfigSummary = Shapes::StructureShape.new(name: 'AnomalyDetectorConfigSummary')
    AnomalyDetectorDescription = Shapes::StringShape.new(name: 'AnomalyDetectorDescription')
    AnomalyDetectorName = Shapes::StringShape.new(name: 'AnomalyDetectorName')
    AnomalyDetectorStatus = Shapes::StringShape.new(name: 'AnomalyDetectorStatus')
    AnomalyDetectorSummary = Shapes::StructureShape.new(name: 'AnomalyDetectorSummary')
    AnomalyDetectorSummaryList = Shapes::ListShape.new(name: 'AnomalyDetectorSummaryList')
    AnomalyGroup = Shapes::StructureShape.new(name: 'AnomalyGroup')
    AnomalyGroupStatistics = Shapes::StructureShape.new(name: 'AnomalyGroupStatistics')
    AnomalyGroupSummary = Shapes::StructureShape.new(name: 'AnomalyGroupSummary')
    AnomalyGroupSummaryList = Shapes::ListShape.new(name: 'AnomalyGroupSummaryList')
    AnomalyGroupTimeSeries = Shapes::StructureShape.new(name: 'AnomalyGroupTimeSeries')
    AnomalyGroupTimeSeriesFeedback = Shapes::StructureShape.new(name: 'AnomalyGroupTimeSeriesFeedback')
    AppFlowConfig = Shapes::StructureShape.new(name: 'AppFlowConfig')
    Arn = Shapes::StringShape.new(name: 'Arn')
    BackTestAnomalyDetectorRequest = Shapes::StructureShape.new(name: 'BackTestAnomalyDetectorRequest')
    BackTestAnomalyDetectorResponse = Shapes::StructureShape.new(name: 'BackTestAnomalyDetectorResponse')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CSVFileCompression = Shapes::StringShape.new(name: 'CSVFileCompression')
    Charset = Shapes::StringShape.new(name: 'Charset')
    CloudWatchConfig = Shapes::StructureShape.new(name: 'CloudWatchConfig')
    ColumnName = Shapes::StringShape.new(name: 'ColumnName')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContributionMatrix = Shapes::StructureShape.new(name: 'ContributionMatrix')
    CreateAlertRequest = Shapes::StructureShape.new(name: 'CreateAlertRequest')
    CreateAlertResponse = Shapes::StructureShape.new(name: 'CreateAlertResponse')
    CreateAnomalyDetectorRequest = Shapes::StructureShape.new(name: 'CreateAnomalyDetectorRequest')
    CreateAnomalyDetectorResponse = Shapes::StructureShape.new(name: 'CreateAnomalyDetectorResponse')
    CreateMetricSetRequest = Shapes::StructureShape.new(name: 'CreateMetricSetRequest')
    CreateMetricSetResponse = Shapes::StructureShape.new(name: 'CreateMetricSetResponse')
    CsvFormatDescriptor = Shapes::StructureShape.new(name: 'CsvFormatDescriptor')
    DataItem = Shapes::StringShape.new(name: 'DataItem')
    DatabaseHost = Shapes::StringShape.new(name: 'DatabaseHost')
    DatabasePort = Shapes::IntegerShape.new(name: 'DatabasePort')
    DateTimeFormat = Shapes::StringShape.new(name: 'DateTimeFormat')
    DeleteAlertRequest = Shapes::StructureShape.new(name: 'DeleteAlertRequest')
    DeleteAlertResponse = Shapes::StructureShape.new(name: 'DeleteAlertResponse')
    DeleteAnomalyDetectorRequest = Shapes::StructureShape.new(name: 'DeleteAnomalyDetectorRequest')
    DeleteAnomalyDetectorResponse = Shapes::StructureShape.new(name: 'DeleteAnomalyDetectorResponse')
    Delimiter = Shapes::StringShape.new(name: 'Delimiter')
    DescribeAlertRequest = Shapes::StructureShape.new(name: 'DescribeAlertRequest')
    DescribeAlertResponse = Shapes::StructureShape.new(name: 'DescribeAlertResponse')
    DescribeAnomalyDetectionExecutionsRequest = Shapes::StructureShape.new(name: 'DescribeAnomalyDetectionExecutionsRequest')
    DescribeAnomalyDetectionExecutionsResponse = Shapes::StructureShape.new(name: 'DescribeAnomalyDetectionExecutionsResponse')
    DescribeAnomalyDetectorRequest = Shapes::StructureShape.new(name: 'DescribeAnomalyDetectorRequest')
    DescribeAnomalyDetectorResponse = Shapes::StructureShape.new(name: 'DescribeAnomalyDetectorResponse')
    DescribeMetricSetRequest = Shapes::StructureShape.new(name: 'DescribeMetricSetRequest')
    DescribeMetricSetResponse = Shapes::StructureShape.new(name: 'DescribeMetricSetResponse')
    DimensionContribution = Shapes::StructureShape.new(name: 'DimensionContribution')
    DimensionContributionList = Shapes::ListShape.new(name: 'DimensionContributionList')
    DimensionList = Shapes::ListShape.new(name: 'DimensionList')
    DimensionNameValue = Shapes::StructureShape.new(name: 'DimensionNameValue')
    DimensionNameValueList = Shapes::ListShape.new(name: 'DimensionNameValueList')
    DimensionValue = Shapes::StringShape.new(name: 'DimensionValue')
    DimensionValueContribution = Shapes::StructureShape.new(name: 'DimensionValueContribution')
    DimensionValueContributionList = Shapes::ListShape.new(name: 'DimensionValueContributionList')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExecutionList = Shapes::ListShape.new(name: 'ExecutionList')
    ExecutionStatus = Shapes::StructureShape.new(name: 'ExecutionStatus')
    FieldName = Shapes::StringShape.new(name: 'FieldName')
    FileFormatDescriptor = Shapes::StructureShape.new(name: 'FileFormatDescriptor')
    FlowName = Shapes::StringShape.new(name: 'FlowName')
    Frequency = Shapes::StringShape.new(name: 'Frequency')
    GetAnomalyGroupRequest = Shapes::StructureShape.new(name: 'GetAnomalyGroupRequest')
    GetAnomalyGroupResponse = Shapes::StructureShape.new(name: 'GetAnomalyGroupResponse')
    GetFeedbackRequest = Shapes::StructureShape.new(name: 'GetFeedbackRequest')
    GetFeedbackResponse = Shapes::StructureShape.new(name: 'GetFeedbackResponse')
    GetSampleDataRequest = Shapes::StructureShape.new(name: 'GetSampleDataRequest')
    GetSampleDataResponse = Shapes::StructureShape.new(name: 'GetSampleDataResponse')
    HeaderList = Shapes::ListShape.new(name: 'HeaderList')
    HeaderValue = Shapes::StringShape.new(name: 'HeaderValue')
    HeaderValueList = Shapes::ListShape.new(name: 'HeaderValueList')
    HistoricalDataPath = Shapes::StringShape.new(name: 'HistoricalDataPath')
    HistoricalDataPathList = Shapes::ListShape.new(name: 'HistoricalDataPathList')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ItemizedMetricStats = Shapes::StructureShape.new(name: 'ItemizedMetricStats')
    ItemizedMetricStatsList = Shapes::ListShape.new(name: 'ItemizedMetricStatsList')
    JsonFileCompression = Shapes::StringShape.new(name: 'JsonFileCompression')
    JsonFormatDescriptor = Shapes::StructureShape.new(name: 'JsonFormatDescriptor')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    LambdaConfiguration = Shapes::StructureShape.new(name: 'LambdaConfiguration')
    ListAlertsRequest = Shapes::StructureShape.new(name: 'ListAlertsRequest')
    ListAlertsResponse = Shapes::StructureShape.new(name: 'ListAlertsResponse')
    ListAnomalyDetectorsRequest = Shapes::StructureShape.new(name: 'ListAnomalyDetectorsRequest')
    ListAnomalyDetectorsResponse = Shapes::StructureShape.new(name: 'ListAnomalyDetectorsResponse')
    ListAnomalyGroupSummariesRequest = Shapes::StructureShape.new(name: 'ListAnomalyGroupSummariesRequest')
    ListAnomalyGroupSummariesResponse = Shapes::StructureShape.new(name: 'ListAnomalyGroupSummariesResponse')
    ListAnomalyGroupTimeSeriesRequest = Shapes::StructureShape.new(name: 'ListAnomalyGroupTimeSeriesRequest')
    ListAnomalyGroupTimeSeriesResponse = Shapes::StructureShape.new(name: 'ListAnomalyGroupTimeSeriesResponse')
    ListMetricSetsRequest = Shapes::StructureShape.new(name: 'ListMetricSetsRequest')
    ListMetricSetsResponse = Shapes::StructureShape.new(name: 'ListMetricSetsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Message = Shapes::StringShape.new(name: 'Message')
    Metric = Shapes::StructureShape.new(name: 'Metric')
    MetricLevelImpact = Shapes::StructureShape.new(name: 'MetricLevelImpact')
    MetricLevelImpactList = Shapes::ListShape.new(name: 'MetricLevelImpactList')
    MetricList = Shapes::ListShape.new(name: 'MetricList')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    MetricSetDescription = Shapes::StringShape.new(name: 'MetricSetDescription')
    MetricSetName = Shapes::StringShape.new(name: 'MetricSetName')
    MetricSetSummary = Shapes::StructureShape.new(name: 'MetricSetSummary')
    MetricSetSummaryList = Shapes::ListShape.new(name: 'MetricSetSummaryList')
    MetricSource = Shapes::StructureShape.new(name: 'MetricSource')
    MetricValue = Shapes::FloatShape.new(name: 'MetricValue')
    MetricValueList = Shapes::ListShape.new(name: 'MetricValueList')
    Namespace = Shapes::StringShape.new(name: 'Namespace')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Offset = Shapes::IntegerShape.new(name: 'Offset')
    PoirotSecretManagerArn = Shapes::StringShape.new(name: 'PoirotSecretManagerArn')
    PutFeedbackRequest = Shapes::StructureShape.new(name: 'PutFeedbackRequest')
    PutFeedbackResponse = Shapes::StructureShape.new(name: 'PutFeedbackResponse')
    QuotaCode = Shapes::StringShape.new(name: 'QuotaCode')
    QuoteSymbol = Shapes::StringShape.new(name: 'QuoteSymbol')
    RDSDatabaseIdentifier = Shapes::StringShape.new(name: 'RDSDatabaseIdentifier')
    RDSDatabaseName = Shapes::StringShape.new(name: 'RDSDatabaseName')
    RDSSourceConfig = Shapes::StructureShape.new(name: 'RDSSourceConfig')
    RedshiftClusterIdentifier = Shapes::StringShape.new(name: 'RedshiftClusterIdentifier')
    RedshiftDatabaseName = Shapes::StringShape.new(name: 'RedshiftDatabaseName')
    RedshiftSourceConfig = Shapes::StructureShape.new(name: 'RedshiftSourceConfig')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    S3SourceConfig = Shapes::StructureShape.new(name: 'S3SourceConfig')
    SNSConfiguration = Shapes::StructureShape.new(name: 'SNSConfiguration')
    SampleDataS3SourceConfig = Shapes::StructureShape.new(name: 'SampleDataS3SourceConfig')
    SampleRow = Shapes::ListShape.new(name: 'SampleRow')
    SampleRows = Shapes::ListShape.new(name: 'SampleRows')
    Score = Shapes::FloatShape.new(name: 'Score')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIdList = Shapes::ListShape.new(name: 'SecurityGroupIdList')
    SensitivityThreshold = Shapes::IntegerShape.new(name: 'SensitivityThreshold')
    ServiceCode = Shapes::StringShape.new(name: 'ServiceCode')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIdList = Shapes::ListShape.new(name: 'SubnetIdList')
    TableName = Shapes::StringShape.new(name: 'TableName')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TemplatedPath = Shapes::StringShape.new(name: 'TemplatedPath')
    TemplatedPathList = Shapes::ListShape.new(name: 'TemplatedPathList')
    TimeSeries = Shapes::StructureShape.new(name: 'TimeSeries')
    TimeSeriesFeedback = Shapes::StructureShape.new(name: 'TimeSeriesFeedback')
    TimeSeriesFeedbackList = Shapes::ListShape.new(name: 'TimeSeriesFeedbackList')
    TimeSeriesId = Shapes::StringShape.new(name: 'TimeSeriesId')
    TimeSeriesList = Shapes::ListShape.new(name: 'TimeSeriesList')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TimestampColumn = Shapes::StructureShape.new(name: 'TimestampColumn')
    TimestampList = Shapes::ListShape.new(name: 'TimestampList')
    TimestampString = Shapes::StringShape.new(name: 'TimestampString')
    Timezone = Shapes::StringShape.new(name: 'Timezone')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UUID = Shapes::StringShape.new(name: 'UUID')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAnomalyDetectorRequest = Shapes::StructureShape.new(name: 'UpdateAnomalyDetectorRequest')
    UpdateAnomalyDetectorResponse = Shapes::StructureShape.new(name: 'UpdateAnomalyDetectorResponse')
    UpdateMetricSetRequest = Shapes::StructureShape.new(name: 'UpdateMetricSetRequest')
    UpdateMetricSetResponse = Shapes::StructureShape.new(name: 'UpdateMetricSetResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VpcConfiguration = Shapes::StructureShape.new(name: 'VpcConfiguration')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Action.add_member(:sns_configuration, Shapes::ShapeRef.new(shape: SNSConfiguration, location_name: "SNSConfiguration"))
    Action.add_member(:lambda_configuration, Shapes::ShapeRef.new(shape: LambdaConfiguration, location_name: "LambdaConfiguration"))
    Action.struct_class = Types::Action

    ActivateAnomalyDetectorRequest.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "AnomalyDetectorArn"))
    ActivateAnomalyDetectorRequest.struct_class = Types::ActivateAnomalyDetectorRequest

    ActivateAnomalyDetectorResponse.struct_class = Types::ActivateAnomalyDetectorResponse

    Alert.add_member(:action, Shapes::ShapeRef.new(shape: Action, location_name: "Action"))
    Alert.add_member(:alert_description, Shapes::ShapeRef.new(shape: AlertDescription, location_name: "AlertDescription"))
    Alert.add_member(:alert_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AlertArn"))
    Alert.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AnomalyDetectorArn"))
    Alert.add_member(:alert_name, Shapes::ShapeRef.new(shape: AlertName, location_name: "AlertName"))
    Alert.add_member(:alert_sensitivity_threshold, Shapes::ShapeRef.new(shape: SensitivityThreshold, location_name: "AlertSensitivityThreshold"))
    Alert.add_member(:alert_type, Shapes::ShapeRef.new(shape: AlertType, location_name: "AlertType"))
    Alert.add_member(:alert_status, Shapes::ShapeRef.new(shape: AlertStatus, location_name: "AlertStatus"))
    Alert.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModificationTime"))
    Alert.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    Alert.struct_class = Types::Alert

    AlertSummary.add_member(:alert_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AlertArn"))
    AlertSummary.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AnomalyDetectorArn"))
    AlertSummary.add_member(:alert_name, Shapes::ShapeRef.new(shape: AlertName, location_name: "AlertName"))
    AlertSummary.add_member(:alert_sensitivity_threshold, Shapes::ShapeRef.new(shape: SensitivityThreshold, location_name: "AlertSensitivityThreshold"))
    AlertSummary.add_member(:alert_type, Shapes::ShapeRef.new(shape: AlertType, location_name: "AlertType"))
    AlertSummary.add_member(:alert_status, Shapes::ShapeRef.new(shape: AlertStatus, location_name: "AlertStatus"))
    AlertSummary.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModificationTime"))
    AlertSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    AlertSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    AlertSummary.struct_class = Types::AlertSummary

    AlertSummaryList.member = Shapes::ShapeRef.new(shape: AlertSummary)

    AnomalyDetectorConfig.add_member(:anomaly_detector_frequency, Shapes::ShapeRef.new(shape: Frequency, location_name: "AnomalyDetectorFrequency"))
    AnomalyDetectorConfig.struct_class = Types::AnomalyDetectorConfig

    AnomalyDetectorConfigSummary.add_member(:anomaly_detector_frequency, Shapes::ShapeRef.new(shape: Frequency, location_name: "AnomalyDetectorFrequency"))
    AnomalyDetectorConfigSummary.struct_class = Types::AnomalyDetectorConfigSummary

    AnomalyDetectorSummary.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AnomalyDetectorArn"))
    AnomalyDetectorSummary.add_member(:anomaly_detector_name, Shapes::ShapeRef.new(shape: AnomalyDetectorName, location_name: "AnomalyDetectorName"))
    AnomalyDetectorSummary.add_member(:anomaly_detector_description, Shapes::ShapeRef.new(shape: AnomalyDetectorDescription, location_name: "AnomalyDetectorDescription"))
    AnomalyDetectorSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    AnomalyDetectorSummary.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModificationTime"))
    AnomalyDetectorSummary.add_member(:status, Shapes::ShapeRef.new(shape: AnomalyDetectorStatus, location_name: "Status"))
    AnomalyDetectorSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    AnomalyDetectorSummary.struct_class = Types::AnomalyDetectorSummary

    AnomalyDetectorSummaryList.member = Shapes::ShapeRef.new(shape: AnomalyDetectorSummary)

    AnomalyGroup.add_member(:start_time, Shapes::ShapeRef.new(shape: TimestampString, location_name: "StartTime"))
    AnomalyGroup.add_member(:end_time, Shapes::ShapeRef.new(shape: TimestampString, location_name: "EndTime"))
    AnomalyGroup.add_member(:anomaly_group_id, Shapes::ShapeRef.new(shape: UUID, location_name: "AnomalyGroupId"))
    AnomalyGroup.add_member(:anomaly_group_score, Shapes::ShapeRef.new(shape: Score, location_name: "AnomalyGroupScore"))
    AnomalyGroup.add_member(:primary_metric_name, Shapes::ShapeRef.new(shape: MetricName, location_name: "PrimaryMetricName"))
    AnomalyGroup.add_member(:metric_level_impact_list, Shapes::ShapeRef.new(shape: MetricLevelImpactList, location_name: "MetricLevelImpactList"))
    AnomalyGroup.struct_class = Types::AnomalyGroup

    AnomalyGroupStatistics.add_member(:evaluation_start_date, Shapes::ShapeRef.new(shape: TimestampString, location_name: "EvaluationStartDate"))
    AnomalyGroupStatistics.add_member(:total_count, Shapes::ShapeRef.new(shape: Integer, location_name: "TotalCount"))
    AnomalyGroupStatistics.add_member(:itemized_metric_stats_list, Shapes::ShapeRef.new(shape: ItemizedMetricStatsList, location_name: "ItemizedMetricStatsList"))
    AnomalyGroupStatistics.struct_class = Types::AnomalyGroupStatistics

    AnomalyGroupSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: TimestampString, location_name: "StartTime"))
    AnomalyGroupSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: TimestampString, location_name: "EndTime"))
    AnomalyGroupSummary.add_member(:anomaly_group_id, Shapes::ShapeRef.new(shape: UUID, location_name: "AnomalyGroupId"))
    AnomalyGroupSummary.add_member(:anomaly_group_score, Shapes::ShapeRef.new(shape: Score, location_name: "AnomalyGroupScore"))
    AnomalyGroupSummary.add_member(:primary_metric_name, Shapes::ShapeRef.new(shape: MetricName, location_name: "PrimaryMetricName"))
    AnomalyGroupSummary.struct_class = Types::AnomalyGroupSummary

    AnomalyGroupSummaryList.member = Shapes::ShapeRef.new(shape: AnomalyGroupSummary)

    AnomalyGroupTimeSeries.add_member(:anomaly_group_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "AnomalyGroupId"))
    AnomalyGroupTimeSeries.add_member(:time_series_id, Shapes::ShapeRef.new(shape: TimeSeriesId, location_name: "TimeSeriesId"))
    AnomalyGroupTimeSeries.struct_class = Types::AnomalyGroupTimeSeries

    AnomalyGroupTimeSeriesFeedback.add_member(:anomaly_group_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "AnomalyGroupId"))
    AnomalyGroupTimeSeriesFeedback.add_member(:time_series_id, Shapes::ShapeRef.new(shape: TimeSeriesId, required: true, location_name: "TimeSeriesId"))
    AnomalyGroupTimeSeriesFeedback.add_member(:is_anomaly, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "IsAnomaly"))
    AnomalyGroupTimeSeriesFeedback.struct_class = Types::AnomalyGroupTimeSeriesFeedback

    AppFlowConfig.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RoleArn"))
    AppFlowConfig.add_member(:flow_name, Shapes::ShapeRef.new(shape: FlowName, required: true, location_name: "FlowName"))
    AppFlowConfig.struct_class = Types::AppFlowConfig

    BackTestAnomalyDetectorRequest.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "AnomalyDetectorArn"))
    BackTestAnomalyDetectorRequest.struct_class = Types::BackTestAnomalyDetectorRequest

    BackTestAnomalyDetectorResponse.struct_class = Types::BackTestAnomalyDetectorResponse

    CloudWatchConfig.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RoleArn"))
    CloudWatchConfig.struct_class = Types::CloudWatchConfig

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ConflictException.struct_class = Types::ConflictException

    ContributionMatrix.add_member(:dimension_contribution_list, Shapes::ShapeRef.new(shape: DimensionContributionList, location_name: "DimensionContributionList"))
    ContributionMatrix.struct_class = Types::ContributionMatrix

    CreateAlertRequest.add_member(:alert_name, Shapes::ShapeRef.new(shape: AlertName, required: true, location_name: "AlertName"))
    CreateAlertRequest.add_member(:alert_sensitivity_threshold, Shapes::ShapeRef.new(shape: SensitivityThreshold, required: true, location_name: "AlertSensitivityThreshold"))
    CreateAlertRequest.add_member(:alert_description, Shapes::ShapeRef.new(shape: AlertDescription, location_name: "AlertDescription"))
    CreateAlertRequest.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "AnomalyDetectorArn"))
    CreateAlertRequest.add_member(:action, Shapes::ShapeRef.new(shape: Action, required: true, location_name: "Action"))
    CreateAlertRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateAlertRequest.struct_class = Types::CreateAlertRequest

    CreateAlertResponse.add_member(:alert_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AlertArn"))
    CreateAlertResponse.struct_class = Types::CreateAlertResponse

    CreateAnomalyDetectorRequest.add_member(:anomaly_detector_name, Shapes::ShapeRef.new(shape: AnomalyDetectorName, required: true, location_name: "AnomalyDetectorName"))
    CreateAnomalyDetectorRequest.add_member(:anomaly_detector_description, Shapes::ShapeRef.new(shape: AnomalyDetectorDescription, location_name: "AnomalyDetectorDescription"))
    CreateAnomalyDetectorRequest.add_member(:anomaly_detector_config, Shapes::ShapeRef.new(shape: AnomalyDetectorConfig, required: true, location_name: "AnomalyDetectorConfig"))
    CreateAnomalyDetectorRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "KmsKeyArn"))
    CreateAnomalyDetectorRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateAnomalyDetectorRequest.struct_class = Types::CreateAnomalyDetectorRequest

    CreateAnomalyDetectorResponse.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AnomalyDetectorArn"))
    CreateAnomalyDetectorResponse.struct_class = Types::CreateAnomalyDetectorResponse

    CreateMetricSetRequest.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "AnomalyDetectorArn"))
    CreateMetricSetRequest.add_member(:metric_set_name, Shapes::ShapeRef.new(shape: MetricSetName, required: true, location_name: "MetricSetName"))
    CreateMetricSetRequest.add_member(:metric_set_description, Shapes::ShapeRef.new(shape: MetricSetDescription, location_name: "MetricSetDescription"))
    CreateMetricSetRequest.add_member(:metric_list, Shapes::ShapeRef.new(shape: MetricList, required: true, location_name: "MetricList"))
    CreateMetricSetRequest.add_member(:offset, Shapes::ShapeRef.new(shape: Offset, location_name: "Offset", metadata: {"box"=>true}))
    CreateMetricSetRequest.add_member(:timestamp_column, Shapes::ShapeRef.new(shape: TimestampColumn, location_name: "TimestampColumn"))
    CreateMetricSetRequest.add_member(:dimension_list, Shapes::ShapeRef.new(shape: DimensionList, location_name: "DimensionList"))
    CreateMetricSetRequest.add_member(:metric_set_frequency, Shapes::ShapeRef.new(shape: Frequency, location_name: "MetricSetFrequency"))
    CreateMetricSetRequest.add_member(:metric_source, Shapes::ShapeRef.new(shape: MetricSource, required: true, location_name: "MetricSource"))
    CreateMetricSetRequest.add_member(:timezone, Shapes::ShapeRef.new(shape: Timezone, location_name: "Timezone"))
    CreateMetricSetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateMetricSetRequest.struct_class = Types::CreateMetricSetRequest

    CreateMetricSetResponse.add_member(:metric_set_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "MetricSetArn"))
    CreateMetricSetResponse.struct_class = Types::CreateMetricSetResponse

    CsvFormatDescriptor.add_member(:file_compression, Shapes::ShapeRef.new(shape: CSVFileCompression, location_name: "FileCompression"))
    CsvFormatDescriptor.add_member(:charset, Shapes::ShapeRef.new(shape: Charset, location_name: "Charset"))
    CsvFormatDescriptor.add_member(:contains_header, Shapes::ShapeRef.new(shape: Boolean, location_name: "ContainsHeader"))
    CsvFormatDescriptor.add_member(:delimiter, Shapes::ShapeRef.new(shape: Delimiter, location_name: "Delimiter"))
    CsvFormatDescriptor.add_member(:header_list, Shapes::ShapeRef.new(shape: HeaderList, location_name: "HeaderList"))
    CsvFormatDescriptor.add_member(:quote_symbol, Shapes::ShapeRef.new(shape: QuoteSymbol, location_name: "QuoteSymbol"))
    CsvFormatDescriptor.struct_class = Types::CsvFormatDescriptor

    DeleteAlertRequest.add_member(:alert_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "AlertArn"))
    DeleteAlertRequest.struct_class = Types::DeleteAlertRequest

    DeleteAlertResponse.struct_class = Types::DeleteAlertResponse

    DeleteAnomalyDetectorRequest.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "AnomalyDetectorArn"))
    DeleteAnomalyDetectorRequest.struct_class = Types::DeleteAnomalyDetectorRequest

    DeleteAnomalyDetectorResponse.struct_class = Types::DeleteAnomalyDetectorResponse

    DescribeAlertRequest.add_member(:alert_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "AlertArn"))
    DescribeAlertRequest.struct_class = Types::DescribeAlertRequest

    DescribeAlertResponse.add_member(:alert, Shapes::ShapeRef.new(shape: Alert, location_name: "Alert"))
    DescribeAlertResponse.struct_class = Types::DescribeAlertResponse

    DescribeAnomalyDetectionExecutionsRequest.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "AnomalyDetectorArn"))
    DescribeAnomalyDetectionExecutionsRequest.add_member(:timestamp, Shapes::ShapeRef.new(shape: TimestampString, location_name: "Timestamp"))
    DescribeAnomalyDetectionExecutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    DescribeAnomalyDetectionExecutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAnomalyDetectionExecutionsRequest.struct_class = Types::DescribeAnomalyDetectionExecutionsRequest

    DescribeAnomalyDetectionExecutionsResponse.add_member(:execution_list, Shapes::ShapeRef.new(shape: ExecutionList, location_name: "ExecutionList"))
    DescribeAnomalyDetectionExecutionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAnomalyDetectionExecutionsResponse.struct_class = Types::DescribeAnomalyDetectionExecutionsResponse

    DescribeAnomalyDetectorRequest.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "AnomalyDetectorArn"))
    DescribeAnomalyDetectorRequest.struct_class = Types::DescribeAnomalyDetectorRequest

    DescribeAnomalyDetectorResponse.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AnomalyDetectorArn"))
    DescribeAnomalyDetectorResponse.add_member(:anomaly_detector_name, Shapes::ShapeRef.new(shape: AnomalyDetectorName, location_name: "AnomalyDetectorName"))
    DescribeAnomalyDetectorResponse.add_member(:anomaly_detector_description, Shapes::ShapeRef.new(shape: AnomalyDetectorDescription, location_name: "AnomalyDetectorDescription"))
    DescribeAnomalyDetectorResponse.add_member(:anomaly_detector_config, Shapes::ShapeRef.new(shape: AnomalyDetectorConfigSummary, location_name: "AnomalyDetectorConfig"))
    DescribeAnomalyDetectorResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribeAnomalyDetectorResponse.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModificationTime"))
    DescribeAnomalyDetectorResponse.add_member(:status, Shapes::ShapeRef.new(shape: AnomalyDetectorStatus, location_name: "Status"))
    DescribeAnomalyDetectorResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "FailureReason"))
    DescribeAnomalyDetectorResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "KmsKeyArn"))
    DescribeAnomalyDetectorResponse.struct_class = Types::DescribeAnomalyDetectorResponse

    DescribeMetricSetRequest.add_member(:metric_set_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "MetricSetArn"))
    DescribeMetricSetRequest.struct_class = Types::DescribeMetricSetRequest

    DescribeMetricSetResponse.add_member(:metric_set_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "MetricSetArn"))
    DescribeMetricSetResponse.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AnomalyDetectorArn"))
    DescribeMetricSetResponse.add_member(:metric_set_name, Shapes::ShapeRef.new(shape: MetricSetName, location_name: "MetricSetName"))
    DescribeMetricSetResponse.add_member(:metric_set_description, Shapes::ShapeRef.new(shape: MetricSetDescription, location_name: "MetricSetDescription"))
    DescribeMetricSetResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribeMetricSetResponse.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModificationTime"))
    DescribeMetricSetResponse.add_member(:offset, Shapes::ShapeRef.new(shape: Offset, location_name: "Offset", metadata: {"box"=>true}))
    DescribeMetricSetResponse.add_member(:metric_list, Shapes::ShapeRef.new(shape: MetricList, location_name: "MetricList"))
    DescribeMetricSetResponse.add_member(:timestamp_column, Shapes::ShapeRef.new(shape: TimestampColumn, location_name: "TimestampColumn"))
    DescribeMetricSetResponse.add_member(:dimension_list, Shapes::ShapeRef.new(shape: DimensionList, location_name: "DimensionList"))
    DescribeMetricSetResponse.add_member(:metric_set_frequency, Shapes::ShapeRef.new(shape: Frequency, location_name: "MetricSetFrequency"))
    DescribeMetricSetResponse.add_member(:timezone, Shapes::ShapeRef.new(shape: Timezone, location_name: "Timezone"))
    DescribeMetricSetResponse.add_member(:metric_source, Shapes::ShapeRef.new(shape: MetricSource, location_name: "MetricSource"))
    DescribeMetricSetResponse.struct_class = Types::DescribeMetricSetResponse

    DimensionContribution.add_member(:dimension_name, Shapes::ShapeRef.new(shape: ColumnName, location_name: "DimensionName"))
    DimensionContribution.add_member(:dimension_value_contribution_list, Shapes::ShapeRef.new(shape: DimensionValueContributionList, location_name: "DimensionValueContributionList"))
    DimensionContribution.struct_class = Types::DimensionContribution

    DimensionContributionList.member = Shapes::ShapeRef.new(shape: DimensionContribution)

    DimensionList.member = Shapes::ShapeRef.new(shape: ColumnName)

    DimensionNameValue.add_member(:dimension_name, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "DimensionName"))
    DimensionNameValue.add_member(:dimension_value, Shapes::ShapeRef.new(shape: DimensionValue, required: true, location_name: "DimensionValue"))
    DimensionNameValue.struct_class = Types::DimensionNameValue

    DimensionNameValueList.member = Shapes::ShapeRef.new(shape: DimensionNameValue)

    DimensionValueContribution.add_member(:dimension_value, Shapes::ShapeRef.new(shape: DimensionValue, location_name: "DimensionValue"))
    DimensionValueContribution.add_member(:contribution_score, Shapes::ShapeRef.new(shape: Score, location_name: "ContributionScore"))
    DimensionValueContribution.struct_class = Types::DimensionValueContribution

    DimensionValueContributionList.member = Shapes::ShapeRef.new(shape: DimensionValueContribution)

    ExecutionList.member = Shapes::ShapeRef.new(shape: ExecutionStatus)

    ExecutionStatus.add_member(:timestamp, Shapes::ShapeRef.new(shape: TimestampString, location_name: "Timestamp"))
    ExecutionStatus.add_member(:status, Shapes::ShapeRef.new(shape: AnomalyDetectionTaskStatus, location_name: "Status"))
    ExecutionStatus.add_member(:failure_reason, Shapes::ShapeRef.new(shape: AnomalyDetectionTaskStatusMessage, location_name: "FailureReason"))
    ExecutionStatus.struct_class = Types::ExecutionStatus

    FileFormatDescriptor.add_member(:csv_format_descriptor, Shapes::ShapeRef.new(shape: CsvFormatDescriptor, location_name: "CsvFormatDescriptor"))
    FileFormatDescriptor.add_member(:json_format_descriptor, Shapes::ShapeRef.new(shape: JsonFormatDescriptor, location_name: "JsonFormatDescriptor"))
    FileFormatDescriptor.struct_class = Types::FileFormatDescriptor

    GetAnomalyGroupRequest.add_member(:anomaly_group_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "AnomalyGroupId"))
    GetAnomalyGroupRequest.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "AnomalyDetectorArn"))
    GetAnomalyGroupRequest.struct_class = Types::GetAnomalyGroupRequest

    GetAnomalyGroupResponse.add_member(:anomaly_group, Shapes::ShapeRef.new(shape: AnomalyGroup, location_name: "AnomalyGroup"))
    GetAnomalyGroupResponse.struct_class = Types::GetAnomalyGroupResponse

    GetFeedbackRequest.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "AnomalyDetectorArn"))
    GetFeedbackRequest.add_member(:anomaly_group_time_series_feedback, Shapes::ShapeRef.new(shape: AnomalyGroupTimeSeries, required: true, location_name: "AnomalyGroupTimeSeriesFeedback"))
    GetFeedbackRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    GetFeedbackRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetFeedbackRequest.struct_class = Types::GetFeedbackRequest

    GetFeedbackResponse.add_member(:anomaly_group_time_series_feedback, Shapes::ShapeRef.new(shape: TimeSeriesFeedbackList, location_name: "AnomalyGroupTimeSeriesFeedback"))
    GetFeedbackResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetFeedbackResponse.struct_class = Types::GetFeedbackResponse

    GetSampleDataRequest.add_member(:s3_source_config, Shapes::ShapeRef.new(shape: SampleDataS3SourceConfig, location_name: "S3SourceConfig"))
    GetSampleDataRequest.struct_class = Types::GetSampleDataRequest

    GetSampleDataResponse.add_member(:header_values, Shapes::ShapeRef.new(shape: HeaderValueList, location_name: "HeaderValues"))
    GetSampleDataResponse.add_member(:sample_rows, Shapes::ShapeRef.new(shape: SampleRows, location_name: "SampleRows"))
    GetSampleDataResponse.struct_class = Types::GetSampleDataResponse

    HeaderList.member = Shapes::ShapeRef.new(shape: ColumnName)

    HeaderValueList.member = Shapes::ShapeRef.new(shape: HeaderValue)

    HistoricalDataPathList.member = Shapes::ShapeRef.new(shape: HistoricalDataPath)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ItemizedMetricStats.add_member(:metric_name, Shapes::ShapeRef.new(shape: ColumnName, location_name: "MetricName"))
    ItemizedMetricStats.add_member(:occurrence_count, Shapes::ShapeRef.new(shape: Integer, location_name: "OccurrenceCount"))
    ItemizedMetricStats.struct_class = Types::ItemizedMetricStats

    ItemizedMetricStatsList.member = Shapes::ShapeRef.new(shape: ItemizedMetricStats)

    JsonFormatDescriptor.add_member(:file_compression, Shapes::ShapeRef.new(shape: JsonFileCompression, location_name: "FileCompression"))
    JsonFormatDescriptor.add_member(:charset, Shapes::ShapeRef.new(shape: Charset, location_name: "Charset"))
    JsonFormatDescriptor.struct_class = Types::JsonFormatDescriptor

    LambdaConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RoleArn"))
    LambdaConfiguration.add_member(:lambda_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "LambdaArn"))
    LambdaConfiguration.struct_class = Types::LambdaConfiguration

    ListAlertsRequest.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AnomalyDetectorArn"))
    ListAlertsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAlertsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListAlertsRequest.struct_class = Types::ListAlertsRequest

    ListAlertsResponse.add_member(:alert_summary_list, Shapes::ShapeRef.new(shape: AlertSummaryList, location_name: "AlertSummaryList"))
    ListAlertsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAlertsResponse.struct_class = Types::ListAlertsResponse

    ListAnomalyDetectorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListAnomalyDetectorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAnomalyDetectorsRequest.struct_class = Types::ListAnomalyDetectorsRequest

    ListAnomalyDetectorsResponse.add_member(:anomaly_detector_summary_list, Shapes::ShapeRef.new(shape: AnomalyDetectorSummaryList, location_name: "AnomalyDetectorSummaryList"))
    ListAnomalyDetectorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAnomalyDetectorsResponse.struct_class = Types::ListAnomalyDetectorsResponse

    ListAnomalyGroupSummariesRequest.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "AnomalyDetectorArn"))
    ListAnomalyGroupSummariesRequest.add_member(:sensitivity_threshold, Shapes::ShapeRef.new(shape: SensitivityThreshold, required: true, location_name: "SensitivityThreshold"))
    ListAnomalyGroupSummariesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListAnomalyGroupSummariesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAnomalyGroupSummariesRequest.struct_class = Types::ListAnomalyGroupSummariesRequest

    ListAnomalyGroupSummariesResponse.add_member(:anomaly_group_summary_list, Shapes::ShapeRef.new(shape: AnomalyGroupSummaryList, location_name: "AnomalyGroupSummaryList"))
    ListAnomalyGroupSummariesResponse.add_member(:anomaly_group_statistics, Shapes::ShapeRef.new(shape: AnomalyGroupStatistics, location_name: "AnomalyGroupStatistics"))
    ListAnomalyGroupSummariesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAnomalyGroupSummariesResponse.struct_class = Types::ListAnomalyGroupSummariesResponse

    ListAnomalyGroupTimeSeriesRequest.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "AnomalyDetectorArn"))
    ListAnomalyGroupTimeSeriesRequest.add_member(:anomaly_group_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "AnomalyGroupId"))
    ListAnomalyGroupTimeSeriesRequest.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricName"))
    ListAnomalyGroupTimeSeriesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListAnomalyGroupTimeSeriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAnomalyGroupTimeSeriesRequest.struct_class = Types::ListAnomalyGroupTimeSeriesRequest

    ListAnomalyGroupTimeSeriesResponse.add_member(:anomaly_group_id, Shapes::ShapeRef.new(shape: UUID, location_name: "AnomalyGroupId"))
    ListAnomalyGroupTimeSeriesResponse.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    ListAnomalyGroupTimeSeriesResponse.add_member(:timestamp_list, Shapes::ShapeRef.new(shape: TimestampList, location_name: "TimestampList"))
    ListAnomalyGroupTimeSeriesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAnomalyGroupTimeSeriesResponse.add_member(:time_series_list, Shapes::ShapeRef.new(shape: TimeSeriesList, location_name: "TimeSeriesList"))
    ListAnomalyGroupTimeSeriesResponse.struct_class = Types::ListAnomalyGroupTimeSeriesResponse

    ListMetricSetsRequest.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AnomalyDetectorArn"))
    ListMetricSetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListMetricSetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMetricSetsRequest.struct_class = Types::ListMetricSetsRequest

    ListMetricSetsResponse.add_member(:metric_set_summary_list, Shapes::ShapeRef.new(shape: MetricSetSummaryList, location_name: "MetricSetSummaryList"))
    ListMetricSetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMetricSetsResponse.struct_class = Types::ListMetricSetsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    Metric.add_member(:metric_name, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "MetricName"))
    Metric.add_member(:aggregation_function, Shapes::ShapeRef.new(shape: AggregationFunction, required: true, location_name: "AggregationFunction"))
    Metric.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace"))
    Metric.struct_class = Types::Metric

    MetricLevelImpact.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    MetricLevelImpact.add_member(:num_time_series, Shapes::ShapeRef.new(shape: Integer, location_name: "NumTimeSeries"))
    MetricLevelImpact.add_member(:contribution_matrix, Shapes::ShapeRef.new(shape: ContributionMatrix, location_name: "ContributionMatrix"))
    MetricLevelImpact.struct_class = Types::MetricLevelImpact

    MetricLevelImpactList.member = Shapes::ShapeRef.new(shape: MetricLevelImpact)

    MetricList.member = Shapes::ShapeRef.new(shape: Metric)

    MetricSetSummary.add_member(:metric_set_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "MetricSetArn"))
    MetricSetSummary.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AnomalyDetectorArn"))
    MetricSetSummary.add_member(:metric_set_description, Shapes::ShapeRef.new(shape: MetricSetDescription, location_name: "MetricSetDescription"))
    MetricSetSummary.add_member(:metric_set_name, Shapes::ShapeRef.new(shape: MetricSetName, location_name: "MetricSetName"))
    MetricSetSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    MetricSetSummary.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModificationTime"))
    MetricSetSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    MetricSetSummary.struct_class = Types::MetricSetSummary

    MetricSetSummaryList.member = Shapes::ShapeRef.new(shape: MetricSetSummary)

    MetricSource.add_member(:s3_source_config, Shapes::ShapeRef.new(shape: S3SourceConfig, location_name: "S3SourceConfig"))
    MetricSource.add_member(:app_flow_config, Shapes::ShapeRef.new(shape: AppFlowConfig, location_name: "AppFlowConfig"))
    MetricSource.add_member(:cloud_watch_config, Shapes::ShapeRef.new(shape: CloudWatchConfig, location_name: "CloudWatchConfig"))
    MetricSource.add_member(:rds_source_config, Shapes::ShapeRef.new(shape: RDSSourceConfig, location_name: "RDSSourceConfig"))
    MetricSource.add_member(:redshift_source_config, Shapes::ShapeRef.new(shape: RedshiftSourceConfig, location_name: "RedshiftSourceConfig"))
    MetricSource.struct_class = Types::MetricSource

    MetricValueList.member = Shapes::ShapeRef.new(shape: MetricValue)

    PutFeedbackRequest.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "AnomalyDetectorArn"))
    PutFeedbackRequest.add_member(:anomaly_group_time_series_feedback, Shapes::ShapeRef.new(shape: AnomalyGroupTimeSeriesFeedback, required: true, location_name: "AnomalyGroupTimeSeriesFeedback"))
    PutFeedbackRequest.struct_class = Types::PutFeedbackRequest

    PutFeedbackResponse.struct_class = Types::PutFeedbackResponse

    RDSSourceConfig.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: RDSDatabaseIdentifier, required: true, location_name: "DBInstanceIdentifier"))
    RDSSourceConfig.add_member(:database_host, Shapes::ShapeRef.new(shape: DatabaseHost, required: true, location_name: "DatabaseHost"))
    RDSSourceConfig.add_member(:database_port, Shapes::ShapeRef.new(shape: DatabasePort, required: true, location_name: "DatabasePort", metadata: {"box"=>true}))
    RDSSourceConfig.add_member(:secret_manager_arn, Shapes::ShapeRef.new(shape: PoirotSecretManagerArn, required: true, location_name: "SecretManagerArn"))
    RDSSourceConfig.add_member(:database_name, Shapes::ShapeRef.new(shape: RDSDatabaseName, required: true, location_name: "DatabaseName"))
    RDSSourceConfig.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    RDSSourceConfig.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RoleArn"))
    RDSSourceConfig.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: VpcConfiguration, required: true, location_name: "VpcConfiguration"))
    RDSSourceConfig.struct_class = Types::RDSSourceConfig

    RedshiftSourceConfig.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: RedshiftClusterIdentifier, required: true, location_name: "ClusterIdentifier"))
    RedshiftSourceConfig.add_member(:database_host, Shapes::ShapeRef.new(shape: DatabaseHost, required: true, location_name: "DatabaseHost"))
    RedshiftSourceConfig.add_member(:database_port, Shapes::ShapeRef.new(shape: DatabasePort, required: true, location_name: "DatabasePort", metadata: {"box"=>true}))
    RedshiftSourceConfig.add_member(:secret_manager_arn, Shapes::ShapeRef.new(shape: PoirotSecretManagerArn, required: true, location_name: "SecretManagerArn"))
    RedshiftSourceConfig.add_member(:database_name, Shapes::ShapeRef.new(shape: RedshiftDatabaseName, required: true, location_name: "DatabaseName"))
    RedshiftSourceConfig.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    RedshiftSourceConfig.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RoleArn"))
    RedshiftSourceConfig.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: VpcConfiguration, required: true, location_name: "VpcConfiguration"))
    RedshiftSourceConfig.struct_class = Types::RedshiftSourceConfig

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3SourceConfig.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RoleArn"))
    S3SourceConfig.add_member(:templated_path_list, Shapes::ShapeRef.new(shape: TemplatedPathList, location_name: "TemplatedPathList"))
    S3SourceConfig.add_member(:historical_data_path_list, Shapes::ShapeRef.new(shape: HistoricalDataPathList, location_name: "HistoricalDataPathList"))
    S3SourceConfig.add_member(:file_format_descriptor, Shapes::ShapeRef.new(shape: FileFormatDescriptor, location_name: "FileFormatDescriptor"))
    S3SourceConfig.struct_class = Types::S3SourceConfig

    SNSConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RoleArn"))
    SNSConfiguration.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "SnsTopicArn"))
    SNSConfiguration.struct_class = Types::SNSConfiguration

    SampleDataS3SourceConfig.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RoleArn"))
    SampleDataS3SourceConfig.add_member(:templated_path_list, Shapes::ShapeRef.new(shape: TemplatedPathList, location_name: "TemplatedPathList"))
    SampleDataS3SourceConfig.add_member(:historical_data_path_list, Shapes::ShapeRef.new(shape: HistoricalDataPathList, location_name: "HistoricalDataPathList"))
    SampleDataS3SourceConfig.add_member(:file_format_descriptor, Shapes::ShapeRef.new(shape: FileFormatDescriptor, required: true, location_name: "FileFormatDescriptor"))
    SampleDataS3SourceConfig.struct_class = Types::SampleDataS3SourceConfig

    SampleRow.member = Shapes::ShapeRef.new(shape: DataItem)

    SampleRows.member = Shapes::ShapeRef.new(shape: SampleRow)

    SecurityGroupIdList.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: QuotaCode, location_name: "QuotaCode"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, location_name: "ServiceCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SubnetIdList.member = Shapes::ShapeRef.new(shape: SubnetId)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TemplatedPathList.member = Shapes::ShapeRef.new(shape: TemplatedPath)

    TimeSeries.add_member(:time_series_id, Shapes::ShapeRef.new(shape: TimeSeriesId, required: true, location_name: "TimeSeriesId"))
    TimeSeries.add_member(:dimension_list, Shapes::ShapeRef.new(shape: DimensionNameValueList, required: true, location_name: "DimensionList"))
    TimeSeries.add_member(:metric_value_list, Shapes::ShapeRef.new(shape: MetricValueList, required: true, location_name: "MetricValueList"))
    TimeSeries.struct_class = Types::TimeSeries

    TimeSeriesFeedback.add_member(:time_series_id, Shapes::ShapeRef.new(shape: TimeSeriesId, location_name: "TimeSeriesId"))
    TimeSeriesFeedback.add_member(:is_anomaly, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsAnomaly"))
    TimeSeriesFeedback.struct_class = Types::TimeSeriesFeedback

    TimeSeriesFeedbackList.member = Shapes::ShapeRef.new(shape: TimeSeriesFeedback)

    TimeSeriesList.member = Shapes::ShapeRef.new(shape: TimeSeries)

    TimestampColumn.add_member(:column_name, Shapes::ShapeRef.new(shape: ColumnName, location_name: "ColumnName"))
    TimestampColumn.add_member(:column_format, Shapes::ShapeRef.new(shape: DateTimeFormat, location_name: "ColumnFormat"))
    TimestampColumn.struct_class = Types::TimestampColumn

    TimestampList.member = Shapes::ShapeRef.new(shape: TimestampString)

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAnomalyDetectorRequest.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "AnomalyDetectorArn"))
    UpdateAnomalyDetectorRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "KmsKeyArn"))
    UpdateAnomalyDetectorRequest.add_member(:anomaly_detector_description, Shapes::ShapeRef.new(shape: AnomalyDetectorDescription, location_name: "AnomalyDetectorDescription"))
    UpdateAnomalyDetectorRequest.add_member(:anomaly_detector_config, Shapes::ShapeRef.new(shape: AnomalyDetectorConfig, location_name: "AnomalyDetectorConfig"))
    UpdateAnomalyDetectorRequest.struct_class = Types::UpdateAnomalyDetectorRequest

    UpdateAnomalyDetectorResponse.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AnomalyDetectorArn"))
    UpdateAnomalyDetectorResponse.struct_class = Types::UpdateAnomalyDetectorResponse

    UpdateMetricSetRequest.add_member(:metric_set_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "MetricSetArn"))
    UpdateMetricSetRequest.add_member(:metric_set_description, Shapes::ShapeRef.new(shape: MetricSetDescription, location_name: "MetricSetDescription"))
    UpdateMetricSetRequest.add_member(:metric_list, Shapes::ShapeRef.new(shape: MetricList, location_name: "MetricList"))
    UpdateMetricSetRequest.add_member(:offset, Shapes::ShapeRef.new(shape: Offset, location_name: "Offset", metadata: {"box"=>true}))
    UpdateMetricSetRequest.add_member(:timestamp_column, Shapes::ShapeRef.new(shape: TimestampColumn, location_name: "TimestampColumn"))
    UpdateMetricSetRequest.add_member(:dimension_list, Shapes::ShapeRef.new(shape: DimensionList, location_name: "DimensionList"))
    UpdateMetricSetRequest.add_member(:metric_set_frequency, Shapes::ShapeRef.new(shape: Frequency, location_name: "MetricSetFrequency"))
    UpdateMetricSetRequest.add_member(:metric_source, Shapes::ShapeRef.new(shape: MetricSource, location_name: "MetricSource"))
    UpdateMetricSetRequest.struct_class = Types::UpdateMetricSetRequest

    UpdateMetricSetResponse.add_member(:metric_set_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "MetricSetArn"))
    UpdateMetricSetResponse.struct_class = Types::UpdateMetricSetResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "Reason"))
    ValidationException.add_member(:fields, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "Fields"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "Name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    VpcConfiguration.add_member(:subnet_id_list, Shapes::ShapeRef.new(shape: SubnetIdList, required: true, location_name: "SubnetIdList"))
    VpcConfiguration.add_member(:security_group_id_list, Shapes::ShapeRef.new(shape: SecurityGroupIdList, required: true, location_name: "SecurityGroupIdList"))
    VpcConfiguration.struct_class = Types::VpcConfiguration


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-07-25"

      api.metadata = {
        "apiVersion" => "2017-07-25",
        "endpointPrefix" => "lookoutmetrics",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "LookoutMetrics",
        "serviceFullName" => "Amazon Lookout for Metrics",
        "serviceId" => "LookoutMetrics",
        "signatureVersion" => "v4",
        "signingName" => "lookoutmetrics",
        "uid" => "lookoutmetrics-2017-07-25",
      }

      api.add_operation(:activate_anomaly_detector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ActivateAnomalyDetector"
        o.http_method = "POST"
        o.http_request_uri = "/ActivateAnomalyDetector"
        o.input = Shapes::ShapeRef.new(shape: ActivateAnomalyDetectorRequest)
        o.output = Shapes::ShapeRef.new(shape: ActivateAnomalyDetectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:back_test_anomaly_detector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BackTestAnomalyDetector"
        o.http_method = "POST"
        o.http_request_uri = "/BackTestAnomalyDetector"
        o.input = Shapes::ShapeRef.new(shape: BackTestAnomalyDetectorRequest)
        o.output = Shapes::ShapeRef.new(shape: BackTestAnomalyDetectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_alert, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAlert"
        o.http_method = "POST"
        o.http_request_uri = "/CreateAlert"
        o.input = Shapes::ShapeRef.new(shape: CreateAlertRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAlertResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_anomaly_detector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAnomalyDetector"
        o.http_method = "POST"
        o.http_request_uri = "/CreateAnomalyDetector"
        o.input = Shapes::ShapeRef.new(shape: CreateAnomalyDetectorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAnomalyDetectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_metric_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMetricSet"
        o.http_method = "POST"
        o.http_request_uri = "/CreateMetricSet"
        o.input = Shapes::ShapeRef.new(shape: CreateMetricSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMetricSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_alert, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAlert"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteAlert"
        o.input = Shapes::ShapeRef.new(shape: DeleteAlertRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAlertResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_anomaly_detector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAnomalyDetector"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteAnomalyDetector"
        o.input = Shapes::ShapeRef.new(shape: DeleteAnomalyDetectorRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAnomalyDetectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_alert, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAlert"
        o.http_method = "POST"
        o.http_request_uri = "/DescribeAlert"
        o.input = Shapes::ShapeRef.new(shape: DescribeAlertRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAlertResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_anomaly_detection_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAnomalyDetectionExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/DescribeAnomalyDetectionExecutions"
        o.input = Shapes::ShapeRef.new(shape: DescribeAnomalyDetectionExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAnomalyDetectionExecutionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_anomaly_detector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAnomalyDetector"
        o.http_method = "POST"
        o.http_request_uri = "/DescribeAnomalyDetector"
        o.input = Shapes::ShapeRef.new(shape: DescribeAnomalyDetectorRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAnomalyDetectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_metric_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMetricSet"
        o.http_method = "POST"
        o.http_request_uri = "/DescribeMetricSet"
        o.input = Shapes::ShapeRef.new(shape: DescribeMetricSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeMetricSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_anomaly_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAnomalyGroup"
        o.http_method = "POST"
        o.http_request_uri = "/GetAnomalyGroup"
        o.input = Shapes::ShapeRef.new(shape: GetAnomalyGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAnomalyGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_feedback, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFeedback"
        o.http_method = "POST"
        o.http_request_uri = "/GetFeedback"
        o.input = Shapes::ShapeRef.new(shape: GetFeedbackRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFeedbackResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_sample_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSampleData"
        o.http_method = "POST"
        o.http_request_uri = "/GetSampleData"
        o.input = Shapes::ShapeRef.new(shape: GetSampleDataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSampleDataResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_alerts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAlerts"
        o.http_method = "POST"
        o.http_request_uri = "/ListAlerts"
        o.input = Shapes::ShapeRef.new(shape: ListAlertsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAlertsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_anomaly_detectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAnomalyDetectors"
        o.http_method = "POST"
        o.http_request_uri = "/ListAnomalyDetectors"
        o.input = Shapes::ShapeRef.new(shape: ListAnomalyDetectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAnomalyDetectorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_anomaly_group_summaries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAnomalyGroupSummaries"
        o.http_method = "POST"
        o.http_request_uri = "/ListAnomalyGroupSummaries"
        o.input = Shapes::ShapeRef.new(shape: ListAnomalyGroupSummariesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAnomalyGroupSummariesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_anomaly_group_time_series, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAnomalyGroupTimeSeries"
        o.http_method = "POST"
        o.http_request_uri = "/ListAnomalyGroupTimeSeries"
        o.input = Shapes::ShapeRef.new(shape: ListAnomalyGroupTimeSeriesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAnomalyGroupTimeSeriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_metric_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMetricSets"
        o.http_method = "POST"
        o.http_request_uri = "/ListMetricSets"
        o.input = Shapes::ShapeRef.new(shape: ListMetricSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMetricSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:put_feedback, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutFeedback"
        o.http_method = "POST"
        o.http_request_uri = "/PutFeedback"
        o.input = Shapes::ShapeRef.new(shape: PutFeedbackRequest)
        o.output = Shapes::ShapeRef.new(shape: PutFeedbackResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_anomaly_detector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAnomalyDetector"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateAnomalyDetector"
        o.input = Shapes::ShapeRef.new(shape: UpdateAnomalyDetectorRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAnomalyDetectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_metric_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMetricSet"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateMetricSet"
        o.input = Shapes::ShapeRef.new(shape: UpdateMetricSetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateMetricSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)
    end

  end
end
