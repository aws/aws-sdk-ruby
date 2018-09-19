# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudWatch
  # @api private
  module ClientApi

    include Seahorse::Model

    ActionPrefix = Shapes::StringShape.new(name: 'ActionPrefix')
    ActionsEnabled = Shapes::BooleanShape.new(name: 'ActionsEnabled')
    AlarmArn = Shapes::StringShape.new(name: 'AlarmArn')
    AlarmDescription = Shapes::StringShape.new(name: 'AlarmDescription')
    AlarmHistoryItem = Shapes::StructureShape.new(name: 'AlarmHistoryItem')
    AlarmHistoryItems = Shapes::ListShape.new(name: 'AlarmHistoryItems')
    AlarmName = Shapes::StringShape.new(name: 'AlarmName')
    AlarmNamePrefix = Shapes::StringShape.new(name: 'AlarmNamePrefix')
    AlarmNames = Shapes::ListShape.new(name: 'AlarmNames')
    AwsQueryErrorMessage = Shapes::StringShape.new(name: 'AwsQueryErrorMessage')
    ComparisonOperator = Shapes::StringShape.new(name: 'ComparisonOperator')
    Counts = Shapes::ListShape.new(name: 'Counts')
    DashboardArn = Shapes::StringShape.new(name: 'DashboardArn')
    DashboardBody = Shapes::StringShape.new(name: 'DashboardBody')
    DashboardEntries = Shapes::ListShape.new(name: 'DashboardEntries')
    DashboardEntry = Shapes::StructureShape.new(name: 'DashboardEntry')
    DashboardErrorMessage = Shapes::StringShape.new(name: 'DashboardErrorMessage')
    DashboardInvalidInputError = Shapes::StructureShape.new(name: 'DashboardInvalidInputError')
    DashboardName = Shapes::StringShape.new(name: 'DashboardName')
    DashboardNamePrefix = Shapes::StringShape.new(name: 'DashboardNamePrefix')
    DashboardNames = Shapes::ListShape.new(name: 'DashboardNames')
    DashboardNotFoundError = Shapes::StructureShape.new(name: 'DashboardNotFoundError')
    DashboardValidationMessage = Shapes::StructureShape.new(name: 'DashboardValidationMessage')
    DashboardValidationMessages = Shapes::ListShape.new(name: 'DashboardValidationMessages')
    DataPath = Shapes::StringShape.new(name: 'DataPath')
    Datapoint = Shapes::StructureShape.new(name: 'Datapoint')
    DatapointValue = Shapes::FloatShape.new(name: 'DatapointValue')
    DatapointValueMap = Shapes::MapShape.new(name: 'DatapointValueMap')
    DatapointValues = Shapes::ListShape.new(name: 'DatapointValues')
    Datapoints = Shapes::ListShape.new(name: 'Datapoints')
    DatapointsToAlarm = Shapes::IntegerShape.new(name: 'DatapointsToAlarm')
    DeleteAlarmsInput = Shapes::StructureShape.new(name: 'DeleteAlarmsInput')
    DeleteDashboardsInput = Shapes::StructureShape.new(name: 'DeleteDashboardsInput')
    DeleteDashboardsOutput = Shapes::StructureShape.new(name: 'DeleteDashboardsOutput')
    DescribeAlarmHistoryInput = Shapes::StructureShape.new(name: 'DescribeAlarmHistoryInput')
    DescribeAlarmHistoryOutput = Shapes::StructureShape.new(name: 'DescribeAlarmHistoryOutput')
    DescribeAlarmsForMetricInput = Shapes::StructureShape.new(name: 'DescribeAlarmsForMetricInput')
    DescribeAlarmsForMetricOutput = Shapes::StructureShape.new(name: 'DescribeAlarmsForMetricOutput')
    DescribeAlarmsInput = Shapes::StructureShape.new(name: 'DescribeAlarmsInput')
    DescribeAlarmsOutput = Shapes::StructureShape.new(name: 'DescribeAlarmsOutput')
    Dimension = Shapes::StructureShape.new(name: 'Dimension')
    DimensionFilter = Shapes::StructureShape.new(name: 'DimensionFilter')
    DimensionFilters = Shapes::ListShape.new(name: 'DimensionFilters')
    DimensionName = Shapes::StringShape.new(name: 'DimensionName')
    DimensionValue = Shapes::StringShape.new(name: 'DimensionValue')
    Dimensions = Shapes::ListShape.new(name: 'Dimensions')
    DisableAlarmActionsInput = Shapes::StructureShape.new(name: 'DisableAlarmActionsInput')
    EnableAlarmActionsInput = Shapes::StructureShape.new(name: 'EnableAlarmActionsInput')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EvaluateLowSampleCountPercentile = Shapes::StringShape.new(name: 'EvaluateLowSampleCountPercentile')
    EvaluationPeriods = Shapes::IntegerShape.new(name: 'EvaluationPeriods')
    ExtendedStatistic = Shapes::StringShape.new(name: 'ExtendedStatistic')
    ExtendedStatistics = Shapes::ListShape.new(name: 'ExtendedStatistics')
    FaultDescription = Shapes::StringShape.new(name: 'FaultDescription')
    GetDashboardInput = Shapes::StructureShape.new(name: 'GetDashboardInput')
    GetDashboardOutput = Shapes::StructureShape.new(name: 'GetDashboardOutput')
    GetMetricDataInput = Shapes::StructureShape.new(name: 'GetMetricDataInput')
    GetMetricDataMaxDatapoints = Shapes::IntegerShape.new(name: 'GetMetricDataMaxDatapoints')
    GetMetricDataOutput = Shapes::StructureShape.new(name: 'GetMetricDataOutput')
    GetMetricStatisticsInput = Shapes::StructureShape.new(name: 'GetMetricStatisticsInput')
    GetMetricStatisticsOutput = Shapes::StructureShape.new(name: 'GetMetricStatisticsOutput')
    GetMetricWidgetImageInput = Shapes::StructureShape.new(name: 'GetMetricWidgetImageInput')
    GetMetricWidgetImageOutput = Shapes::StructureShape.new(name: 'GetMetricWidgetImageOutput')
    HistoryData = Shapes::StringShape.new(name: 'HistoryData')
    HistoryItemType = Shapes::StringShape.new(name: 'HistoryItemType')
    HistorySummary = Shapes::StringShape.new(name: 'HistorySummary')
    InternalServiceFault = Shapes::StructureShape.new(name: 'InternalServiceFault')
    InvalidFormatFault = Shapes::StructureShape.new(name: 'InvalidFormatFault')
    InvalidNextToken = Shapes::StructureShape.new(name: 'InvalidNextToken')
    InvalidParameterCombinationException = Shapes::StructureShape.new(name: 'InvalidParameterCombinationException')
    InvalidParameterValueException = Shapes::StructureShape.new(name: 'InvalidParameterValueException')
    LastModified = Shapes::TimestampShape.new(name: 'LastModified')
    LimitExceededFault = Shapes::StructureShape.new(name: 'LimitExceededFault')
    ListDashboardsInput = Shapes::StructureShape.new(name: 'ListDashboardsInput')
    ListDashboardsOutput = Shapes::StructureShape.new(name: 'ListDashboardsOutput')
    ListMetricsInput = Shapes::StructureShape.new(name: 'ListMetricsInput')
    ListMetricsOutput = Shapes::StructureShape.new(name: 'ListMetricsOutput')
    MaxRecords = Shapes::IntegerShape.new(name: 'MaxRecords')
    Message = Shapes::StringShape.new(name: 'Message')
    MessageData = Shapes::StructureShape.new(name: 'MessageData')
    MessageDataCode = Shapes::StringShape.new(name: 'MessageDataCode')
    MessageDataValue = Shapes::StringShape.new(name: 'MessageDataValue')
    Metric = Shapes::StructureShape.new(name: 'Metric')
    MetricAlarm = Shapes::StructureShape.new(name: 'MetricAlarm')
    MetricAlarms = Shapes::ListShape.new(name: 'MetricAlarms')
    MetricData = Shapes::ListShape.new(name: 'MetricData')
    MetricDataQueries = Shapes::ListShape.new(name: 'MetricDataQueries')
    MetricDataQuery = Shapes::StructureShape.new(name: 'MetricDataQuery')
    MetricDataResult = Shapes::StructureShape.new(name: 'MetricDataResult')
    MetricDataResultMessages = Shapes::ListShape.new(name: 'MetricDataResultMessages')
    MetricDataResults = Shapes::ListShape.new(name: 'MetricDataResults')
    MetricDatum = Shapes::StructureShape.new(name: 'MetricDatum')
    MetricExpression = Shapes::StringShape.new(name: 'MetricExpression')
    MetricId = Shapes::StringShape.new(name: 'MetricId')
    MetricLabel = Shapes::StringShape.new(name: 'MetricLabel')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    MetricStat = Shapes::StructureShape.new(name: 'MetricStat')
    MetricWidget = Shapes::StringShape.new(name: 'MetricWidget')
    MetricWidgetImage = Shapes::BlobShape.new(name: 'MetricWidgetImage')
    Metrics = Shapes::ListShape.new(name: 'Metrics')
    MissingRequiredParameterException = Shapes::StructureShape.new(name: 'MissingRequiredParameterException')
    Namespace = Shapes::StringShape.new(name: 'Namespace')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OutputFormat = Shapes::StringShape.new(name: 'OutputFormat')
    Period = Shapes::IntegerShape.new(name: 'Period')
    PutDashboardInput = Shapes::StructureShape.new(name: 'PutDashboardInput')
    PutDashboardOutput = Shapes::StructureShape.new(name: 'PutDashboardOutput')
    PutMetricAlarmInput = Shapes::StructureShape.new(name: 'PutMetricAlarmInput')
    PutMetricDataInput = Shapes::StructureShape.new(name: 'PutMetricDataInput')
    ResourceList = Shapes::ListShape.new(name: 'ResourceList')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFound = Shapes::StructureShape.new(name: 'ResourceNotFound')
    ReturnData = Shapes::BooleanShape.new(name: 'ReturnData')
    ScanBy = Shapes::StringShape.new(name: 'ScanBy')
    SetAlarmStateInput = Shapes::StructureShape.new(name: 'SetAlarmStateInput')
    Size = Shapes::IntegerShape.new(name: 'Size')
    StandardUnit = Shapes::StringShape.new(name: 'StandardUnit')
    Stat = Shapes::StringShape.new(name: 'Stat')
    StateReason = Shapes::StringShape.new(name: 'StateReason')
    StateReasonData = Shapes::StringShape.new(name: 'StateReasonData')
    StateValue = Shapes::StringShape.new(name: 'StateValue')
    Statistic = Shapes::StringShape.new(name: 'Statistic')
    StatisticSet = Shapes::StructureShape.new(name: 'StatisticSet')
    Statistics = Shapes::ListShape.new(name: 'Statistics')
    StatusCode = Shapes::StringShape.new(name: 'StatusCode')
    StorageResolution = Shapes::IntegerShape.new(name: 'StorageResolution')
    Threshold = Shapes::FloatShape.new(name: 'Threshold')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Timestamps = Shapes::ListShape.new(name: 'Timestamps')
    TreatMissingData = Shapes::StringShape.new(name: 'TreatMissingData')
    Values = Shapes::ListShape.new(name: 'Values')

    AlarmHistoryItem.add_member(:alarm_name, Shapes::ShapeRef.new(shape: AlarmName, location_name: "AlarmName"))
    AlarmHistoryItem.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    AlarmHistoryItem.add_member(:history_item_type, Shapes::ShapeRef.new(shape: HistoryItemType, location_name: "HistoryItemType"))
    AlarmHistoryItem.add_member(:history_summary, Shapes::ShapeRef.new(shape: HistorySummary, location_name: "HistorySummary"))
    AlarmHistoryItem.add_member(:history_data, Shapes::ShapeRef.new(shape: HistoryData, location_name: "HistoryData"))
    AlarmHistoryItem.struct_class = Types::AlarmHistoryItem

    AlarmHistoryItems.member = Shapes::ShapeRef.new(shape: AlarmHistoryItem)

    AlarmNames.member = Shapes::ShapeRef.new(shape: AlarmName)

    Counts.member = Shapes::ShapeRef.new(shape: DatapointValue)

    DashboardEntries.member = Shapes::ShapeRef.new(shape: DashboardEntry)

    DashboardEntry.add_member(:dashboard_name, Shapes::ShapeRef.new(shape: DashboardName, location_name: "DashboardName"))
    DashboardEntry.add_member(:dashboard_arn, Shapes::ShapeRef.new(shape: DashboardArn, location_name: "DashboardArn"))
    DashboardEntry.add_member(:last_modified, Shapes::ShapeRef.new(shape: LastModified, location_name: "LastModified"))
    DashboardEntry.add_member(:size, Shapes::ShapeRef.new(shape: Size, location_name: "Size"))
    DashboardEntry.struct_class = Types::DashboardEntry

    DashboardNames.member = Shapes::ShapeRef.new(shape: DashboardName)

    DashboardValidationMessage.add_member(:data_path, Shapes::ShapeRef.new(shape: DataPath, location_name: "DataPath"))
    DashboardValidationMessage.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    DashboardValidationMessage.struct_class = Types::DashboardValidationMessage

    DashboardValidationMessages.member = Shapes::ShapeRef.new(shape: DashboardValidationMessage)

    Datapoint.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    Datapoint.add_member(:sample_count, Shapes::ShapeRef.new(shape: DatapointValue, location_name: "SampleCount"))
    Datapoint.add_member(:average, Shapes::ShapeRef.new(shape: DatapointValue, location_name: "Average"))
    Datapoint.add_member(:sum, Shapes::ShapeRef.new(shape: DatapointValue, location_name: "Sum"))
    Datapoint.add_member(:minimum, Shapes::ShapeRef.new(shape: DatapointValue, location_name: "Minimum"))
    Datapoint.add_member(:maximum, Shapes::ShapeRef.new(shape: DatapointValue, location_name: "Maximum"))
    Datapoint.add_member(:unit, Shapes::ShapeRef.new(shape: StandardUnit, location_name: "Unit"))
    Datapoint.add_member(:extended_statistics, Shapes::ShapeRef.new(shape: DatapointValueMap, location_name: "ExtendedStatistics"))
    Datapoint.struct_class = Types::Datapoint

    DatapointValueMap.key = Shapes::ShapeRef.new(shape: ExtendedStatistic)
    DatapointValueMap.value = Shapes::ShapeRef.new(shape: DatapointValue)

    DatapointValues.member = Shapes::ShapeRef.new(shape: DatapointValue)

    Datapoints.member = Shapes::ShapeRef.new(shape: Datapoint)

    DeleteAlarmsInput.add_member(:alarm_names, Shapes::ShapeRef.new(shape: AlarmNames, required: true, location_name: "AlarmNames"))
    DeleteAlarmsInput.struct_class = Types::DeleteAlarmsInput

    DeleteDashboardsInput.add_member(:dashboard_names, Shapes::ShapeRef.new(shape: DashboardNames, required: true, location_name: "DashboardNames"))
    DeleteDashboardsInput.struct_class = Types::DeleteDashboardsInput

    DeleteDashboardsOutput.struct_class = Types::DeleteDashboardsOutput

    DescribeAlarmHistoryInput.add_member(:alarm_name, Shapes::ShapeRef.new(shape: AlarmName, location_name: "AlarmName"))
    DescribeAlarmHistoryInput.add_member(:history_item_type, Shapes::ShapeRef.new(shape: HistoryItemType, location_name: "HistoryItemType"))
    DescribeAlarmHistoryInput.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartDate"))
    DescribeAlarmHistoryInput.add_member(:end_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndDate"))
    DescribeAlarmHistoryInput.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeAlarmHistoryInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAlarmHistoryInput.struct_class = Types::DescribeAlarmHistoryInput

    DescribeAlarmHistoryOutput.add_member(:alarm_history_items, Shapes::ShapeRef.new(shape: AlarmHistoryItems, location_name: "AlarmHistoryItems"))
    DescribeAlarmHistoryOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAlarmHistoryOutput.struct_class = Types::DescribeAlarmHistoryOutput

    DescribeAlarmsForMetricInput.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricName"))
    DescribeAlarmsForMetricInput.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location_name: "Namespace"))
    DescribeAlarmsForMetricInput.add_member(:statistic, Shapes::ShapeRef.new(shape: Statistic, location_name: "Statistic"))
    DescribeAlarmsForMetricInput.add_member(:extended_statistic, Shapes::ShapeRef.new(shape: ExtendedStatistic, location_name: "ExtendedStatistic"))
    DescribeAlarmsForMetricInput.add_member(:dimensions, Shapes::ShapeRef.new(shape: Dimensions, location_name: "Dimensions"))
    DescribeAlarmsForMetricInput.add_member(:period, Shapes::ShapeRef.new(shape: Period, location_name: "Period"))
    DescribeAlarmsForMetricInput.add_member(:unit, Shapes::ShapeRef.new(shape: StandardUnit, location_name: "Unit"))
    DescribeAlarmsForMetricInput.struct_class = Types::DescribeAlarmsForMetricInput

    DescribeAlarmsForMetricOutput.add_member(:metric_alarms, Shapes::ShapeRef.new(shape: MetricAlarms, location_name: "MetricAlarms"))
    DescribeAlarmsForMetricOutput.struct_class = Types::DescribeAlarmsForMetricOutput

    DescribeAlarmsInput.add_member(:alarm_names, Shapes::ShapeRef.new(shape: AlarmNames, location_name: "AlarmNames"))
    DescribeAlarmsInput.add_member(:alarm_name_prefix, Shapes::ShapeRef.new(shape: AlarmNamePrefix, location_name: "AlarmNamePrefix"))
    DescribeAlarmsInput.add_member(:state_value, Shapes::ShapeRef.new(shape: StateValue, location_name: "StateValue"))
    DescribeAlarmsInput.add_member(:action_prefix, Shapes::ShapeRef.new(shape: ActionPrefix, location_name: "ActionPrefix"))
    DescribeAlarmsInput.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeAlarmsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAlarmsInput.struct_class = Types::DescribeAlarmsInput

    DescribeAlarmsOutput.add_member(:metric_alarms, Shapes::ShapeRef.new(shape: MetricAlarms, location_name: "MetricAlarms"))
    DescribeAlarmsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAlarmsOutput.struct_class = Types::DescribeAlarmsOutput

    Dimension.add_member(:name, Shapes::ShapeRef.new(shape: DimensionName, required: true, location_name: "Name"))
    Dimension.add_member(:value, Shapes::ShapeRef.new(shape: DimensionValue, required: true, location_name: "Value"))
    Dimension.struct_class = Types::Dimension

    DimensionFilter.add_member(:name, Shapes::ShapeRef.new(shape: DimensionName, required: true, location_name: "Name"))
    DimensionFilter.add_member(:value, Shapes::ShapeRef.new(shape: DimensionValue, location_name: "Value"))
    DimensionFilter.struct_class = Types::DimensionFilter

    DimensionFilters.member = Shapes::ShapeRef.new(shape: DimensionFilter)

    Dimensions.member = Shapes::ShapeRef.new(shape: Dimension)

    DisableAlarmActionsInput.add_member(:alarm_names, Shapes::ShapeRef.new(shape: AlarmNames, required: true, location_name: "AlarmNames"))
    DisableAlarmActionsInput.struct_class = Types::DisableAlarmActionsInput

    EnableAlarmActionsInput.add_member(:alarm_names, Shapes::ShapeRef.new(shape: AlarmNames, required: true, location_name: "AlarmNames"))
    EnableAlarmActionsInput.struct_class = Types::EnableAlarmActionsInput

    ExtendedStatistics.member = Shapes::ShapeRef.new(shape: ExtendedStatistic)

    GetDashboardInput.add_member(:dashboard_name, Shapes::ShapeRef.new(shape: DashboardName, required: true, location_name: "DashboardName"))
    GetDashboardInput.struct_class = Types::GetDashboardInput

    GetDashboardOutput.add_member(:dashboard_arn, Shapes::ShapeRef.new(shape: DashboardArn, location_name: "DashboardArn"))
    GetDashboardOutput.add_member(:dashboard_body, Shapes::ShapeRef.new(shape: DashboardBody, location_name: "DashboardBody"))
    GetDashboardOutput.add_member(:dashboard_name, Shapes::ShapeRef.new(shape: DashboardName, location_name: "DashboardName"))
    GetDashboardOutput.struct_class = Types::GetDashboardOutput

    GetMetricDataInput.add_member(:metric_data_queries, Shapes::ShapeRef.new(shape: MetricDataQueries, required: true, location_name: "MetricDataQueries"))
    GetMetricDataInput.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTime"))
    GetMetricDataInput.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EndTime"))
    GetMetricDataInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetMetricDataInput.add_member(:scan_by, Shapes::ShapeRef.new(shape: ScanBy, location_name: "ScanBy"))
    GetMetricDataInput.add_member(:max_datapoints, Shapes::ShapeRef.new(shape: GetMetricDataMaxDatapoints, location_name: "MaxDatapoints"))
    GetMetricDataInput.struct_class = Types::GetMetricDataInput

    GetMetricDataOutput.add_member(:metric_data_results, Shapes::ShapeRef.new(shape: MetricDataResults, location_name: "MetricDataResults"))
    GetMetricDataOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetMetricDataOutput.struct_class = Types::GetMetricDataOutput

    GetMetricStatisticsInput.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location_name: "Namespace"))
    GetMetricStatisticsInput.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricName"))
    GetMetricStatisticsInput.add_member(:dimensions, Shapes::ShapeRef.new(shape: Dimensions, location_name: "Dimensions"))
    GetMetricStatisticsInput.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTime"))
    GetMetricStatisticsInput.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EndTime"))
    GetMetricStatisticsInput.add_member(:period, Shapes::ShapeRef.new(shape: Period, required: true, location_name: "Period"))
    GetMetricStatisticsInput.add_member(:statistics, Shapes::ShapeRef.new(shape: Statistics, location_name: "Statistics"))
    GetMetricStatisticsInput.add_member(:extended_statistics, Shapes::ShapeRef.new(shape: ExtendedStatistics, location_name: "ExtendedStatistics"))
    GetMetricStatisticsInput.add_member(:unit, Shapes::ShapeRef.new(shape: StandardUnit, location_name: "Unit"))
    GetMetricStatisticsInput.struct_class = Types::GetMetricStatisticsInput

    GetMetricStatisticsOutput.add_member(:label, Shapes::ShapeRef.new(shape: MetricLabel, location_name: "Label"))
    GetMetricStatisticsOutput.add_member(:datapoints, Shapes::ShapeRef.new(shape: Datapoints, location_name: "Datapoints"))
    GetMetricStatisticsOutput.struct_class = Types::GetMetricStatisticsOutput

    GetMetricWidgetImageInput.add_member(:metric_widget, Shapes::ShapeRef.new(shape: MetricWidget, required: true, location_name: "MetricWidget"))
    GetMetricWidgetImageInput.add_member(:output_format, Shapes::ShapeRef.new(shape: OutputFormat, location_name: "OutputFormat"))
    GetMetricWidgetImageInput.struct_class = Types::GetMetricWidgetImageInput

    GetMetricWidgetImageOutput.add_member(:metric_widget_image, Shapes::ShapeRef.new(shape: MetricWidgetImage, location_name: "MetricWidgetImage"))
    GetMetricWidgetImageOutput.struct_class = Types::GetMetricWidgetImageOutput

    ListDashboardsInput.add_member(:dashboard_name_prefix, Shapes::ShapeRef.new(shape: DashboardNamePrefix, location_name: "DashboardNamePrefix"))
    ListDashboardsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDashboardsInput.struct_class = Types::ListDashboardsInput

    ListDashboardsOutput.add_member(:dashboard_entries, Shapes::ShapeRef.new(shape: DashboardEntries, location_name: "DashboardEntries"))
    ListDashboardsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDashboardsOutput.struct_class = Types::ListDashboardsOutput

    ListMetricsInput.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace"))
    ListMetricsInput.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    ListMetricsInput.add_member(:dimensions, Shapes::ShapeRef.new(shape: DimensionFilters, location_name: "Dimensions"))
    ListMetricsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMetricsInput.struct_class = Types::ListMetricsInput

    ListMetricsOutput.add_member(:metrics, Shapes::ShapeRef.new(shape: Metrics, location_name: "Metrics"))
    ListMetricsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMetricsOutput.struct_class = Types::ListMetricsOutput

    MessageData.add_member(:code, Shapes::ShapeRef.new(shape: MessageDataCode, location_name: "Code"))
    MessageData.add_member(:value, Shapes::ShapeRef.new(shape: MessageDataValue, location_name: "Value"))
    MessageData.struct_class = Types::MessageData

    Metric.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace"))
    Metric.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    Metric.add_member(:dimensions, Shapes::ShapeRef.new(shape: Dimensions, location_name: "Dimensions"))
    Metric.struct_class = Types::Metric

    MetricAlarm.add_member(:alarm_name, Shapes::ShapeRef.new(shape: AlarmName, location_name: "AlarmName"))
    MetricAlarm.add_member(:alarm_arn, Shapes::ShapeRef.new(shape: AlarmArn, location_name: "AlarmArn"))
    MetricAlarm.add_member(:alarm_description, Shapes::ShapeRef.new(shape: AlarmDescription, location_name: "AlarmDescription"))
    MetricAlarm.add_member(:alarm_configuration_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "AlarmConfigurationUpdatedTimestamp"))
    MetricAlarm.add_member(:actions_enabled, Shapes::ShapeRef.new(shape: ActionsEnabled, location_name: "ActionsEnabled"))
    MetricAlarm.add_member(:ok_actions, Shapes::ShapeRef.new(shape: ResourceList, location_name: "OKActions"))
    MetricAlarm.add_member(:alarm_actions, Shapes::ShapeRef.new(shape: ResourceList, location_name: "AlarmActions"))
    MetricAlarm.add_member(:insufficient_data_actions, Shapes::ShapeRef.new(shape: ResourceList, location_name: "InsufficientDataActions"))
    MetricAlarm.add_member(:state_value, Shapes::ShapeRef.new(shape: StateValue, location_name: "StateValue"))
    MetricAlarm.add_member(:state_reason, Shapes::ShapeRef.new(shape: StateReason, location_name: "StateReason"))
    MetricAlarm.add_member(:state_reason_data, Shapes::ShapeRef.new(shape: StateReasonData, location_name: "StateReasonData"))
    MetricAlarm.add_member(:state_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StateUpdatedTimestamp"))
    MetricAlarm.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    MetricAlarm.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace"))
    MetricAlarm.add_member(:statistic, Shapes::ShapeRef.new(shape: Statistic, location_name: "Statistic"))
    MetricAlarm.add_member(:extended_statistic, Shapes::ShapeRef.new(shape: ExtendedStatistic, location_name: "ExtendedStatistic"))
    MetricAlarm.add_member(:dimensions, Shapes::ShapeRef.new(shape: Dimensions, location_name: "Dimensions"))
    MetricAlarm.add_member(:period, Shapes::ShapeRef.new(shape: Period, location_name: "Period"))
    MetricAlarm.add_member(:unit, Shapes::ShapeRef.new(shape: StandardUnit, location_name: "Unit"))
    MetricAlarm.add_member(:evaluation_periods, Shapes::ShapeRef.new(shape: EvaluationPeriods, location_name: "EvaluationPeriods"))
    MetricAlarm.add_member(:datapoints_to_alarm, Shapes::ShapeRef.new(shape: DatapointsToAlarm, location_name: "DatapointsToAlarm"))
    MetricAlarm.add_member(:threshold, Shapes::ShapeRef.new(shape: Threshold, location_name: "Threshold"))
    MetricAlarm.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: "ComparisonOperator"))
    MetricAlarm.add_member(:treat_missing_data, Shapes::ShapeRef.new(shape: TreatMissingData, location_name: "TreatMissingData"))
    MetricAlarm.add_member(:evaluate_low_sample_count_percentile, Shapes::ShapeRef.new(shape: EvaluateLowSampleCountPercentile, location_name: "EvaluateLowSampleCountPercentile"))
    MetricAlarm.struct_class = Types::MetricAlarm

    MetricAlarms.member = Shapes::ShapeRef.new(shape: MetricAlarm)

    MetricData.member = Shapes::ShapeRef.new(shape: MetricDatum)

    MetricDataQueries.member = Shapes::ShapeRef.new(shape: MetricDataQuery)

    MetricDataQuery.add_member(:id, Shapes::ShapeRef.new(shape: MetricId, required: true, location_name: "Id"))
    MetricDataQuery.add_member(:metric_stat, Shapes::ShapeRef.new(shape: MetricStat, location_name: "MetricStat"))
    MetricDataQuery.add_member(:expression, Shapes::ShapeRef.new(shape: MetricExpression, location_name: "Expression"))
    MetricDataQuery.add_member(:label, Shapes::ShapeRef.new(shape: MetricLabel, location_name: "Label"))
    MetricDataQuery.add_member(:return_data, Shapes::ShapeRef.new(shape: ReturnData, location_name: "ReturnData"))
    MetricDataQuery.struct_class = Types::MetricDataQuery

    MetricDataResult.add_member(:id, Shapes::ShapeRef.new(shape: MetricId, location_name: "Id"))
    MetricDataResult.add_member(:label, Shapes::ShapeRef.new(shape: MetricLabel, location_name: "Label"))
    MetricDataResult.add_member(:timestamps, Shapes::ShapeRef.new(shape: Timestamps, location_name: "Timestamps"))
    MetricDataResult.add_member(:values, Shapes::ShapeRef.new(shape: DatapointValues, location_name: "Values"))
    MetricDataResult.add_member(:status_code, Shapes::ShapeRef.new(shape: StatusCode, location_name: "StatusCode"))
    MetricDataResult.add_member(:messages, Shapes::ShapeRef.new(shape: MetricDataResultMessages, location_name: "Messages"))
    MetricDataResult.struct_class = Types::MetricDataResult

    MetricDataResultMessages.member = Shapes::ShapeRef.new(shape: MessageData)

    MetricDataResults.member = Shapes::ShapeRef.new(shape: MetricDataResult)

    MetricDatum.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricName"))
    MetricDatum.add_member(:dimensions, Shapes::ShapeRef.new(shape: Dimensions, location_name: "Dimensions"))
    MetricDatum.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    MetricDatum.add_member(:value, Shapes::ShapeRef.new(shape: DatapointValue, location_name: "Value"))
    MetricDatum.add_member(:statistic_values, Shapes::ShapeRef.new(shape: StatisticSet, location_name: "StatisticValues"))
    MetricDatum.add_member(:values, Shapes::ShapeRef.new(shape: Values, location_name: "Values"))
    MetricDatum.add_member(:counts, Shapes::ShapeRef.new(shape: Counts, location_name: "Counts"))
    MetricDatum.add_member(:unit, Shapes::ShapeRef.new(shape: StandardUnit, location_name: "Unit"))
    MetricDatum.add_member(:storage_resolution, Shapes::ShapeRef.new(shape: StorageResolution, location_name: "StorageResolution"))
    MetricDatum.struct_class = Types::MetricDatum

    MetricStat.add_member(:metric, Shapes::ShapeRef.new(shape: Metric, required: true, location_name: "Metric"))
    MetricStat.add_member(:period, Shapes::ShapeRef.new(shape: Period, required: true, location_name: "Period"))
    MetricStat.add_member(:stat, Shapes::ShapeRef.new(shape: Stat, required: true, location_name: "Stat"))
    MetricStat.add_member(:unit, Shapes::ShapeRef.new(shape: StandardUnit, location_name: "Unit"))
    MetricStat.struct_class = Types::MetricStat

    Metrics.member = Shapes::ShapeRef.new(shape: Metric)

    PutDashboardInput.add_member(:dashboard_name, Shapes::ShapeRef.new(shape: DashboardName, required: true, location_name: "DashboardName"))
    PutDashboardInput.add_member(:dashboard_body, Shapes::ShapeRef.new(shape: DashboardBody, required: true, location_name: "DashboardBody"))
    PutDashboardInput.struct_class = Types::PutDashboardInput

    PutDashboardOutput.add_member(:dashboard_validation_messages, Shapes::ShapeRef.new(shape: DashboardValidationMessages, location_name: "DashboardValidationMessages"))
    PutDashboardOutput.struct_class = Types::PutDashboardOutput

    PutMetricAlarmInput.add_member(:alarm_name, Shapes::ShapeRef.new(shape: AlarmName, required: true, location_name: "AlarmName"))
    PutMetricAlarmInput.add_member(:alarm_description, Shapes::ShapeRef.new(shape: AlarmDescription, location_name: "AlarmDescription"))
    PutMetricAlarmInput.add_member(:actions_enabled, Shapes::ShapeRef.new(shape: ActionsEnabled, location_name: "ActionsEnabled"))
    PutMetricAlarmInput.add_member(:ok_actions, Shapes::ShapeRef.new(shape: ResourceList, location_name: "OKActions"))
    PutMetricAlarmInput.add_member(:alarm_actions, Shapes::ShapeRef.new(shape: ResourceList, location_name: "AlarmActions"))
    PutMetricAlarmInput.add_member(:insufficient_data_actions, Shapes::ShapeRef.new(shape: ResourceList, location_name: "InsufficientDataActions"))
    PutMetricAlarmInput.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricName"))
    PutMetricAlarmInput.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location_name: "Namespace"))
    PutMetricAlarmInput.add_member(:statistic, Shapes::ShapeRef.new(shape: Statistic, location_name: "Statistic"))
    PutMetricAlarmInput.add_member(:extended_statistic, Shapes::ShapeRef.new(shape: ExtendedStatistic, location_name: "ExtendedStatistic"))
    PutMetricAlarmInput.add_member(:dimensions, Shapes::ShapeRef.new(shape: Dimensions, location_name: "Dimensions"))
    PutMetricAlarmInput.add_member(:period, Shapes::ShapeRef.new(shape: Period, required: true, location_name: "Period"))
    PutMetricAlarmInput.add_member(:unit, Shapes::ShapeRef.new(shape: StandardUnit, location_name: "Unit"))
    PutMetricAlarmInput.add_member(:evaluation_periods, Shapes::ShapeRef.new(shape: EvaluationPeriods, required: true, location_name: "EvaluationPeriods"))
    PutMetricAlarmInput.add_member(:datapoints_to_alarm, Shapes::ShapeRef.new(shape: DatapointsToAlarm, location_name: "DatapointsToAlarm"))
    PutMetricAlarmInput.add_member(:threshold, Shapes::ShapeRef.new(shape: Threshold, required: true, location_name: "Threshold"))
    PutMetricAlarmInput.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperator, required: true, location_name: "ComparisonOperator"))
    PutMetricAlarmInput.add_member(:treat_missing_data, Shapes::ShapeRef.new(shape: TreatMissingData, location_name: "TreatMissingData"))
    PutMetricAlarmInput.add_member(:evaluate_low_sample_count_percentile, Shapes::ShapeRef.new(shape: EvaluateLowSampleCountPercentile, location_name: "EvaluateLowSampleCountPercentile"))
    PutMetricAlarmInput.struct_class = Types::PutMetricAlarmInput

    PutMetricDataInput.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location_name: "Namespace"))
    PutMetricDataInput.add_member(:metric_data, Shapes::ShapeRef.new(shape: MetricData, required: true, location_name: "MetricData"))
    PutMetricDataInput.struct_class = Types::PutMetricDataInput

    ResourceList.member = Shapes::ShapeRef.new(shape: ResourceName)

    SetAlarmStateInput.add_member(:alarm_name, Shapes::ShapeRef.new(shape: AlarmName, required: true, location_name: "AlarmName"))
    SetAlarmStateInput.add_member(:state_value, Shapes::ShapeRef.new(shape: StateValue, required: true, location_name: "StateValue"))
    SetAlarmStateInput.add_member(:state_reason, Shapes::ShapeRef.new(shape: StateReason, required: true, location_name: "StateReason"))
    SetAlarmStateInput.add_member(:state_reason_data, Shapes::ShapeRef.new(shape: StateReasonData, location_name: "StateReasonData"))
    SetAlarmStateInput.struct_class = Types::SetAlarmStateInput

    StatisticSet.add_member(:sample_count, Shapes::ShapeRef.new(shape: DatapointValue, required: true, location_name: "SampleCount"))
    StatisticSet.add_member(:sum, Shapes::ShapeRef.new(shape: DatapointValue, required: true, location_name: "Sum"))
    StatisticSet.add_member(:minimum, Shapes::ShapeRef.new(shape: DatapointValue, required: true, location_name: "Minimum"))
    StatisticSet.add_member(:maximum, Shapes::ShapeRef.new(shape: DatapointValue, required: true, location_name: "Maximum"))
    StatisticSet.struct_class = Types::StatisticSet

    Statistics.member = Shapes::ShapeRef.new(shape: Statistic)

    Timestamps.member = Shapes::ShapeRef.new(shape: Timestamp)

    Values.member = Shapes::ShapeRef.new(shape: DatapointValue)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2010-08-01"

      api.metadata = {
        "apiVersion" => "2010-08-01",
        "endpointPrefix" => "monitoring",
        "protocol" => "query",
        "serviceAbbreviation" => "CloudWatch",
        "serviceFullName" => "Amazon CloudWatch",
        "serviceId" => "CloudWatch",
        "signatureVersion" => "v4",
        "uid" => "monitoring-2010-08-01",
        "xmlNamespace" => "http://monitoring.amazonaws.com/doc/2010-08-01/",
      }

      api.add_operation(:delete_alarms, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAlarms"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAlarmsInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:delete_dashboards, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDashboards"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDashboardsInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteDashboardsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: DashboardNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
      end)

      api.add_operation(:describe_alarm_history, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAlarmHistory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAlarmHistoryInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeAlarmHistoryOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_alarms, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAlarms"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAlarmsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeAlarmsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_alarms_for_metric, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAlarmsForMetric"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAlarmsForMetricInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeAlarmsForMetricOutput)
      end)

      api.add_operation(:disable_alarm_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableAlarmActions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisableAlarmActionsInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:enable_alarm_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableAlarmActions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EnableAlarmActionsInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:get_dashboard, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDashboard"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDashboardInput)
        o.output = Shapes::ShapeRef.new(shape: GetDashboardOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: DashboardNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
      end)

      api.add_operation(:get_metric_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMetricData"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMetricDataInput)
        o.output = Shapes::ShapeRef.new(shape: GetMetricDataOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
      end)

      api.add_operation(:get_metric_statistics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMetricStatistics"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMetricStatisticsInput)
        o.output = Shapes::ShapeRef.new(shape: GetMetricStatisticsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
      end)

      api.add_operation(:get_metric_widget_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMetricWidgetImage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMetricWidgetImageInput)
        o.output = Shapes::ShapeRef.new(shape: GetMetricWidgetImageOutput)
      end)

      api.add_operation(:list_dashboards, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDashboards"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDashboardsInput)
        o.output = Shapes::ShapeRef.new(shape: ListDashboardsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
      end)

      api.add_operation(:list_metrics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMetrics"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListMetricsInput)
        o.output = Shapes::ShapeRef.new(shape: ListMetricsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_dashboard, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutDashboard"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutDashboardInput)
        o.output = Shapes::ShapeRef.new(shape: PutDashboardOutput)
        o.errors << Shapes::ShapeRef.new(shape: DashboardInvalidInputError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
      end)

      api.add_operation(:put_metric_alarm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutMetricAlarm"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutMetricAlarmInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
      end)

      api.add_operation(:put_metric_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutMetricData"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutMetricDataInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
      end)

      api.add_operation(:set_alarm_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetAlarmState"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetAlarmStateInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFormatFault)
      end)
    end

  end
end
