# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudWatch
  # @api private
  module ClientApi

    include Seahorse::Model

    AccountId = Shapes::StringShape.new(name: 'AccountId')
    ActionPrefix = Shapes::StringShape.new(name: 'ActionPrefix')
    ActionsEnabled = Shapes::BooleanShape.new(name: 'ActionsEnabled')
    ActionsSuppressedBy = Shapes::StringShape.new(name: 'ActionsSuppressedBy')
    ActionsSuppressedReason = Shapes::StringShape.new(name: 'ActionsSuppressedReason')
    AlarmArn = Shapes::StringShape.new(name: 'AlarmArn')
    AlarmDescription = Shapes::StringShape.new(name: 'AlarmDescription')
    AlarmHistoryItem = Shapes::StructureShape.new(name: 'AlarmHistoryItem')
    AlarmHistoryItems = Shapes::ListShape.new(name: 'AlarmHistoryItems')
    AlarmName = Shapes::StringShape.new(name: 'AlarmName')
    AlarmNamePrefix = Shapes::StringShape.new(name: 'AlarmNamePrefix')
    AlarmNames = Shapes::ListShape.new(name: 'AlarmNames')
    AlarmRule = Shapes::StringShape.new(name: 'AlarmRule')
    AlarmType = Shapes::StringShape.new(name: 'AlarmType')
    AlarmTypes = Shapes::ListShape.new(name: 'AlarmTypes')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    AnomalyDetector = Shapes::StructureShape.new(name: 'AnomalyDetector')
    AnomalyDetectorConfiguration = Shapes::StructureShape.new(name: 'AnomalyDetectorConfiguration')
    AnomalyDetectorExcludedTimeRanges = Shapes::ListShape.new(name: 'AnomalyDetectorExcludedTimeRanges')
    AnomalyDetectorMetricStat = Shapes::StringShape.new(name: 'AnomalyDetectorMetricStat')
    AnomalyDetectorMetricTimezone = Shapes::StringShape.new(name: 'AnomalyDetectorMetricTimezone')
    AnomalyDetectorStateValue = Shapes::StringShape.new(name: 'AnomalyDetectorStateValue')
    AnomalyDetectorType = Shapes::StringShape.new(name: 'AnomalyDetectorType')
    AnomalyDetectorTypes = Shapes::ListShape.new(name: 'AnomalyDetectorTypes')
    AnomalyDetectors = Shapes::ListShape.new(name: 'AnomalyDetectors')
    AwsQueryErrorMessage = Shapes::StringShape.new(name: 'AwsQueryErrorMessage')
    BatchFailures = Shapes::ListShape.new(name: 'BatchFailures')
    ComparisonOperator = Shapes::StringShape.new(name: 'ComparisonOperator')
    CompositeAlarm = Shapes::StructureShape.new(name: 'CompositeAlarm')
    CompositeAlarms = Shapes::ListShape.new(name: 'CompositeAlarms')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException', error: {"code"=>"ConcurrentModificationException", "httpStatusCode"=>429, "senderFault"=>true})
    Counts = Shapes::ListShape.new(name: 'Counts')
    DashboardArn = Shapes::StringShape.new(name: 'DashboardArn')
    DashboardBody = Shapes::StringShape.new(name: 'DashboardBody')
    DashboardEntries = Shapes::ListShape.new(name: 'DashboardEntries')
    DashboardEntry = Shapes::StructureShape.new(name: 'DashboardEntry')
    DashboardErrorMessage = Shapes::StringShape.new(name: 'DashboardErrorMessage')
    DashboardInvalidInputError = Shapes::StructureShape.new(name: 'DashboardInvalidInputError', error: {"code"=>"InvalidParameterInput", "httpStatusCode"=>400, "senderFault"=>true})
    DashboardName = Shapes::StringShape.new(name: 'DashboardName')
    DashboardNamePrefix = Shapes::StringShape.new(name: 'DashboardNamePrefix')
    DashboardNames = Shapes::ListShape.new(name: 'DashboardNames')
    DashboardNotFoundError = Shapes::StructureShape.new(name: 'DashboardNotFoundError', error: {"code"=>"ResourceNotFound", "httpStatusCode"=>404, "senderFault"=>true})
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
    DeleteAnomalyDetectorInput = Shapes::StructureShape.new(name: 'DeleteAnomalyDetectorInput')
    DeleteAnomalyDetectorOutput = Shapes::StructureShape.new(name: 'DeleteAnomalyDetectorOutput')
    DeleteDashboardsInput = Shapes::StructureShape.new(name: 'DeleteDashboardsInput')
    DeleteDashboardsOutput = Shapes::StructureShape.new(name: 'DeleteDashboardsOutput')
    DeleteInsightRulesInput = Shapes::StructureShape.new(name: 'DeleteInsightRulesInput')
    DeleteInsightRulesOutput = Shapes::StructureShape.new(name: 'DeleteInsightRulesOutput')
    DeleteMetricStreamInput = Shapes::StructureShape.new(name: 'DeleteMetricStreamInput')
    DeleteMetricStreamOutput = Shapes::StructureShape.new(name: 'DeleteMetricStreamOutput')
    DescribeAlarmHistoryInput = Shapes::StructureShape.new(name: 'DescribeAlarmHistoryInput')
    DescribeAlarmHistoryOutput = Shapes::StructureShape.new(name: 'DescribeAlarmHistoryOutput')
    DescribeAlarmsForMetricInput = Shapes::StructureShape.new(name: 'DescribeAlarmsForMetricInput')
    DescribeAlarmsForMetricOutput = Shapes::StructureShape.new(name: 'DescribeAlarmsForMetricOutput')
    DescribeAlarmsInput = Shapes::StructureShape.new(name: 'DescribeAlarmsInput')
    DescribeAlarmsOutput = Shapes::StructureShape.new(name: 'DescribeAlarmsOutput')
    DescribeAnomalyDetectorsInput = Shapes::StructureShape.new(name: 'DescribeAnomalyDetectorsInput')
    DescribeAnomalyDetectorsOutput = Shapes::StructureShape.new(name: 'DescribeAnomalyDetectorsOutput')
    DescribeInsightRulesInput = Shapes::StructureShape.new(name: 'DescribeInsightRulesInput')
    DescribeInsightRulesOutput = Shapes::StructureShape.new(name: 'DescribeInsightRulesOutput')
    Dimension = Shapes::StructureShape.new(name: 'Dimension')
    DimensionFilter = Shapes::StructureShape.new(name: 'DimensionFilter')
    DimensionFilters = Shapes::ListShape.new(name: 'DimensionFilters')
    DimensionName = Shapes::StringShape.new(name: 'DimensionName')
    DimensionValue = Shapes::StringShape.new(name: 'DimensionValue')
    Dimensions = Shapes::ListShape.new(name: 'Dimensions')
    DisableAlarmActionsInput = Shapes::StructureShape.new(name: 'DisableAlarmActionsInput')
    DisableInsightRulesInput = Shapes::StructureShape.new(name: 'DisableInsightRulesInput')
    DisableInsightRulesOutput = Shapes::StructureShape.new(name: 'DisableInsightRulesOutput')
    EnableAlarmActionsInput = Shapes::StructureShape.new(name: 'EnableAlarmActionsInput')
    EnableInsightRulesInput = Shapes::StructureShape.new(name: 'EnableInsightRulesInput')
    EnableInsightRulesOutput = Shapes::StructureShape.new(name: 'EnableInsightRulesOutput')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EvaluateLowSampleCountPercentile = Shapes::StringShape.new(name: 'EvaluateLowSampleCountPercentile')
    EvaluationPeriods = Shapes::IntegerShape.new(name: 'EvaluationPeriods')
    EvaluationState = Shapes::StringShape.new(name: 'EvaluationState')
    ExceptionType = Shapes::StringShape.new(name: 'ExceptionType')
    ExtendedStatistic = Shapes::StringShape.new(name: 'ExtendedStatistic')
    ExtendedStatistics = Shapes::ListShape.new(name: 'ExtendedStatistics')
    FailureCode = Shapes::StringShape.new(name: 'FailureCode')
    FailureDescription = Shapes::StringShape.new(name: 'FailureDescription')
    FailureResource = Shapes::StringShape.new(name: 'FailureResource')
    FaultDescription = Shapes::StringShape.new(name: 'FaultDescription')
    GetDashboardInput = Shapes::StructureShape.new(name: 'GetDashboardInput')
    GetDashboardOutput = Shapes::StructureShape.new(name: 'GetDashboardOutput')
    GetInsightRuleReportInput = Shapes::StructureShape.new(name: 'GetInsightRuleReportInput')
    GetInsightRuleReportOutput = Shapes::StructureShape.new(name: 'GetInsightRuleReportOutput')
    GetMetricDataInput = Shapes::StructureShape.new(name: 'GetMetricDataInput')
    GetMetricDataLabelTimezone = Shapes::StringShape.new(name: 'GetMetricDataLabelTimezone')
    GetMetricDataMaxDatapoints = Shapes::IntegerShape.new(name: 'GetMetricDataMaxDatapoints')
    GetMetricDataOutput = Shapes::StructureShape.new(name: 'GetMetricDataOutput')
    GetMetricStatisticsInput = Shapes::StructureShape.new(name: 'GetMetricStatisticsInput')
    GetMetricStatisticsOutput = Shapes::StructureShape.new(name: 'GetMetricStatisticsOutput')
    GetMetricStreamInput = Shapes::StructureShape.new(name: 'GetMetricStreamInput')
    GetMetricStreamOutput = Shapes::StructureShape.new(name: 'GetMetricStreamOutput')
    GetMetricWidgetImageInput = Shapes::StructureShape.new(name: 'GetMetricWidgetImageInput')
    GetMetricWidgetImageOutput = Shapes::StructureShape.new(name: 'GetMetricWidgetImageOutput')
    HistoryData = Shapes::StringShape.new(name: 'HistoryData')
    HistoryItemType = Shapes::StringShape.new(name: 'HistoryItemType')
    HistorySummary = Shapes::StringShape.new(name: 'HistorySummary')
    IncludeLinkedAccounts = Shapes::BooleanShape.new(name: 'IncludeLinkedAccounts')
    IncludeLinkedAccountsMetrics = Shapes::BooleanShape.new(name: 'IncludeLinkedAccountsMetrics')
    InsightRule = Shapes::StructureShape.new(name: 'InsightRule')
    InsightRuleAggregationStatistic = Shapes::StringShape.new(name: 'InsightRuleAggregationStatistic')
    InsightRuleContributor = Shapes::StructureShape.new(name: 'InsightRuleContributor')
    InsightRuleContributorDatapoint = Shapes::StructureShape.new(name: 'InsightRuleContributorDatapoint')
    InsightRuleContributorDatapoints = Shapes::ListShape.new(name: 'InsightRuleContributorDatapoints')
    InsightRuleContributorKey = Shapes::StringShape.new(name: 'InsightRuleContributorKey')
    InsightRuleContributorKeyLabel = Shapes::StringShape.new(name: 'InsightRuleContributorKeyLabel')
    InsightRuleContributorKeyLabels = Shapes::ListShape.new(name: 'InsightRuleContributorKeyLabels')
    InsightRuleContributorKeys = Shapes::ListShape.new(name: 'InsightRuleContributorKeys')
    InsightRuleContributors = Shapes::ListShape.new(name: 'InsightRuleContributors')
    InsightRuleDefinition = Shapes::StringShape.new(name: 'InsightRuleDefinition')
    InsightRuleIsManaged = Shapes::BooleanShape.new(name: 'InsightRuleIsManaged')
    InsightRuleMaxResults = Shapes::IntegerShape.new(name: 'InsightRuleMaxResults')
    InsightRuleMetricDatapoint = Shapes::StructureShape.new(name: 'InsightRuleMetricDatapoint')
    InsightRuleMetricDatapoints = Shapes::ListShape.new(name: 'InsightRuleMetricDatapoints')
    InsightRuleMetricList = Shapes::ListShape.new(name: 'InsightRuleMetricList')
    InsightRuleMetricName = Shapes::StringShape.new(name: 'InsightRuleMetricName')
    InsightRuleName = Shapes::StringShape.new(name: 'InsightRuleName')
    InsightRuleNames = Shapes::ListShape.new(name: 'InsightRuleNames')
    InsightRuleOrderBy = Shapes::StringShape.new(name: 'InsightRuleOrderBy')
    InsightRuleSchema = Shapes::StringShape.new(name: 'InsightRuleSchema')
    InsightRuleState = Shapes::StringShape.new(name: 'InsightRuleState')
    InsightRuleUnboundDouble = Shapes::FloatShape.new(name: 'InsightRuleUnboundDouble')
    InsightRuleUnboundInteger = Shapes::IntegerShape.new(name: 'InsightRuleUnboundInteger')
    InsightRuleUnboundLong = Shapes::IntegerShape.new(name: 'InsightRuleUnboundLong')
    InsightRules = Shapes::ListShape.new(name: 'InsightRules')
    InternalServiceFault = Shapes::StructureShape.new(name: 'InternalServiceFault', error: {"code"=>"InternalServiceError", "httpStatusCode"=>500})
    InvalidFormatFault = Shapes::StructureShape.new(name: 'InvalidFormatFault', error: {"code"=>"InvalidFormat", "httpStatusCode"=>400, "senderFault"=>true})
    InvalidNextToken = Shapes::StructureShape.new(name: 'InvalidNextToken', error: {"code"=>"InvalidNextToken", "httpStatusCode"=>400, "senderFault"=>true})
    InvalidParameterCombinationException = Shapes::StructureShape.new(name: 'InvalidParameterCombinationException', error: {"code"=>"InvalidParameterCombination", "httpStatusCode"=>400, "senderFault"=>true})
    InvalidParameterValueException = Shapes::StructureShape.new(name: 'InvalidParameterValueException', error: {"code"=>"InvalidParameterValue", "httpStatusCode"=>400, "senderFault"=>true})
    LabelOptions = Shapes::StructureShape.new(name: 'LabelOptions')
    LastModified = Shapes::TimestampShape.new(name: 'LastModified')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException', error: {"code"=>"LimitExceededException", "httpStatusCode"=>400, "senderFault"=>true})
    LimitExceededFault = Shapes::StructureShape.new(name: 'LimitExceededFault', error: {"code"=>"LimitExceeded", "httpStatusCode"=>400, "senderFault"=>true})
    ListDashboardsInput = Shapes::StructureShape.new(name: 'ListDashboardsInput')
    ListDashboardsOutput = Shapes::StructureShape.new(name: 'ListDashboardsOutput')
    ListManagedInsightRulesInput = Shapes::StructureShape.new(name: 'ListManagedInsightRulesInput')
    ListManagedInsightRulesOutput = Shapes::StructureShape.new(name: 'ListManagedInsightRulesOutput')
    ListMetricStreamsInput = Shapes::StructureShape.new(name: 'ListMetricStreamsInput')
    ListMetricStreamsMaxResults = Shapes::IntegerShape.new(name: 'ListMetricStreamsMaxResults')
    ListMetricStreamsOutput = Shapes::StructureShape.new(name: 'ListMetricStreamsOutput')
    ListMetricsInput = Shapes::StructureShape.new(name: 'ListMetricsInput')
    ListMetricsOutput = Shapes::StructureShape.new(name: 'ListMetricsOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    ManagedRule = Shapes::StructureShape.new(name: 'ManagedRule')
    ManagedRuleDescription = Shapes::StructureShape.new(name: 'ManagedRuleDescription')
    ManagedRuleDescriptions = Shapes::ListShape.new(name: 'ManagedRuleDescriptions')
    ManagedRuleState = Shapes::StructureShape.new(name: 'ManagedRuleState')
    ManagedRules = Shapes::ListShape.new(name: 'ManagedRules')
    MaxRecords = Shapes::IntegerShape.new(name: 'MaxRecords')
    MaxReturnedResultsCount = Shapes::IntegerShape.new(name: 'MaxReturnedResultsCount')
    Message = Shapes::StringShape.new(name: 'Message')
    MessageData = Shapes::StructureShape.new(name: 'MessageData')
    MessageDataCode = Shapes::StringShape.new(name: 'MessageDataCode')
    MessageDataValue = Shapes::StringShape.new(name: 'MessageDataValue')
    Metric = Shapes::StructureShape.new(name: 'Metric')
    MetricAlarm = Shapes::StructureShape.new(name: 'MetricAlarm')
    MetricAlarms = Shapes::ListShape.new(name: 'MetricAlarms')
    MetricCharacteristics = Shapes::StructureShape.new(name: 'MetricCharacteristics')
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
    MetricMathAnomalyDetector = Shapes::StructureShape.new(name: 'MetricMathAnomalyDetector')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    MetricStat = Shapes::StructureShape.new(name: 'MetricStat')
    MetricStreamEntries = Shapes::ListShape.new(name: 'MetricStreamEntries')
    MetricStreamEntry = Shapes::StructureShape.new(name: 'MetricStreamEntry')
    MetricStreamFilter = Shapes::StructureShape.new(name: 'MetricStreamFilter')
    MetricStreamFilterMetricNames = Shapes::ListShape.new(name: 'MetricStreamFilterMetricNames')
    MetricStreamFilters = Shapes::ListShape.new(name: 'MetricStreamFilters')
    MetricStreamName = Shapes::StringShape.new(name: 'MetricStreamName')
    MetricStreamNames = Shapes::ListShape.new(name: 'MetricStreamNames')
    MetricStreamOutputFormat = Shapes::StringShape.new(name: 'MetricStreamOutputFormat')
    MetricStreamState = Shapes::StringShape.new(name: 'MetricStreamState')
    MetricStreamStatistic = Shapes::StringShape.new(name: 'MetricStreamStatistic')
    MetricStreamStatisticsAdditionalStatistics = Shapes::ListShape.new(name: 'MetricStreamStatisticsAdditionalStatistics')
    MetricStreamStatisticsConfiguration = Shapes::StructureShape.new(name: 'MetricStreamStatisticsConfiguration')
    MetricStreamStatisticsConfigurations = Shapes::ListShape.new(name: 'MetricStreamStatisticsConfigurations')
    MetricStreamStatisticsIncludeMetrics = Shapes::ListShape.new(name: 'MetricStreamStatisticsIncludeMetrics')
    MetricStreamStatisticsMetric = Shapes::StructureShape.new(name: 'MetricStreamStatisticsMetric')
    MetricWidget = Shapes::StringShape.new(name: 'MetricWidget')
    MetricWidgetImage = Shapes::BlobShape.new(name: 'MetricWidgetImage')
    Metrics = Shapes::ListShape.new(name: 'Metrics')
    MissingRequiredParameterException = Shapes::StructureShape.new(name: 'MissingRequiredParameterException', error: {"code"=>"MissingParameter", "httpStatusCode"=>400, "senderFault"=>true})
    Namespace = Shapes::StringShape.new(name: 'Namespace')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OutputFormat = Shapes::StringShape.new(name: 'OutputFormat')
    OwningAccounts = Shapes::ListShape.new(name: 'OwningAccounts')
    PartialFailure = Shapes::StructureShape.new(name: 'PartialFailure')
    Period = Shapes::IntegerShape.new(name: 'Period')
    PeriodicSpikes = Shapes::BooleanShape.new(name: 'PeriodicSpikes')
    PutAnomalyDetectorInput = Shapes::StructureShape.new(name: 'PutAnomalyDetectorInput')
    PutAnomalyDetectorOutput = Shapes::StructureShape.new(name: 'PutAnomalyDetectorOutput')
    PutCompositeAlarmInput = Shapes::StructureShape.new(name: 'PutCompositeAlarmInput')
    PutDashboardInput = Shapes::StructureShape.new(name: 'PutDashboardInput')
    PutDashboardOutput = Shapes::StructureShape.new(name: 'PutDashboardOutput')
    PutInsightRuleInput = Shapes::StructureShape.new(name: 'PutInsightRuleInput')
    PutInsightRuleOutput = Shapes::StructureShape.new(name: 'PutInsightRuleOutput')
    PutManagedInsightRulesInput = Shapes::StructureShape.new(name: 'PutManagedInsightRulesInput')
    PutManagedInsightRulesOutput = Shapes::StructureShape.new(name: 'PutManagedInsightRulesOutput')
    PutMetricAlarmInput = Shapes::StructureShape.new(name: 'PutMetricAlarmInput')
    PutMetricDataInput = Shapes::StructureShape.new(name: 'PutMetricDataInput')
    PutMetricStreamInput = Shapes::StructureShape.new(name: 'PutMetricStreamInput')
    PutMetricStreamOutput = Shapes::StructureShape.new(name: 'PutMetricStreamOutput')
    Range = Shapes::StructureShape.new(name: 'Range')
    RecentlyActive = Shapes::StringShape.new(name: 'RecentlyActive')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceList = Shapes::ListShape.new(name: 'ResourceList')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFound = Shapes::StructureShape.new(name: 'ResourceNotFound', error: {"code"=>"ResourceNotFound", "httpStatusCode"=>404, "senderFault"=>true})
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException', error: {"code"=>"ResourceNotFoundException", "httpStatusCode"=>404, "senderFault"=>true})
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ReturnData = Shapes::BooleanShape.new(name: 'ReturnData')
    ScanBy = Shapes::StringShape.new(name: 'ScanBy')
    SetAlarmStateInput = Shapes::StructureShape.new(name: 'SetAlarmStateInput')
    SingleMetricAnomalyDetector = Shapes::StructureShape.new(name: 'SingleMetricAnomalyDetector')
    Size = Shapes::IntegerShape.new(name: 'Size')
    StandardUnit = Shapes::StringShape.new(name: 'StandardUnit')
    StartMetricStreamsInput = Shapes::StructureShape.new(name: 'StartMetricStreamsInput')
    StartMetricStreamsOutput = Shapes::StructureShape.new(name: 'StartMetricStreamsOutput')
    Stat = Shapes::StringShape.new(name: 'Stat')
    StateReason = Shapes::StringShape.new(name: 'StateReason')
    StateReasonData = Shapes::StringShape.new(name: 'StateReasonData')
    StateValue = Shapes::StringShape.new(name: 'StateValue')
    Statistic = Shapes::StringShape.new(name: 'Statistic')
    StatisticSet = Shapes::StructureShape.new(name: 'StatisticSet')
    Statistics = Shapes::ListShape.new(name: 'Statistics')
    StatusCode = Shapes::StringShape.new(name: 'StatusCode')
    StopMetricStreamsInput = Shapes::StructureShape.new(name: 'StopMetricStreamsInput')
    StopMetricStreamsOutput = Shapes::StructureShape.new(name: 'StopMetricStreamsOutput')
    StorageResolution = Shapes::IntegerShape.new(name: 'StorageResolution')
    SuppressorPeriod = Shapes::IntegerShape.new(name: 'SuppressorPeriod')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TemplateName = Shapes::StringShape.new(name: 'TemplateName')
    Threshold = Shapes::FloatShape.new(name: 'Threshold')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Timestamps = Shapes::ListShape.new(name: 'Timestamps')
    TreatMissingData = Shapes::StringShape.new(name: 'TreatMissingData')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    Values = Shapes::ListShape.new(name: 'Values')

    AlarmHistoryItem.add_member(:alarm_name, Shapes::ShapeRef.new(shape: AlarmName, location_name: "AlarmName"))
    AlarmHistoryItem.add_member(:alarm_type, Shapes::ShapeRef.new(shape: AlarmType, location_name: "AlarmType"))
    AlarmHistoryItem.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    AlarmHistoryItem.add_member(:history_item_type, Shapes::ShapeRef.new(shape: HistoryItemType, location_name: "HistoryItemType"))
    AlarmHistoryItem.add_member(:history_summary, Shapes::ShapeRef.new(shape: HistorySummary, location_name: "HistorySummary"))
    AlarmHistoryItem.add_member(:history_data, Shapes::ShapeRef.new(shape: HistoryData, location_name: "HistoryData"))
    AlarmHistoryItem.struct_class = Types::AlarmHistoryItem

    AlarmHistoryItems.member = Shapes::ShapeRef.new(shape: AlarmHistoryItem)

    AlarmNames.member = Shapes::ShapeRef.new(shape: AlarmName)

    AlarmTypes.member = Shapes::ShapeRef.new(shape: AlarmType)

    AnomalyDetector.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, deprecated: true, location_name: "Namespace", metadata: {"deprecatedMessage"=>"Use SingleMetricAnomalyDetector.Namespace property."}))
    AnomalyDetector.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, deprecated: true, location_name: "MetricName", metadata: {"deprecatedMessage"=>"Use SingleMetricAnomalyDetector.MetricName property."}))
    AnomalyDetector.add_member(:dimensions, Shapes::ShapeRef.new(shape: Dimensions, deprecated: true, location_name: "Dimensions", metadata: {"deprecatedMessage"=>"Use SingleMetricAnomalyDetector.Dimensions property."}))
    AnomalyDetector.add_member(:stat, Shapes::ShapeRef.new(shape: AnomalyDetectorMetricStat, deprecated: true, location_name: "Stat", metadata: {"deprecatedMessage"=>"Use SingleMetricAnomalyDetector.Stat property."}))
    AnomalyDetector.add_member(:configuration, Shapes::ShapeRef.new(shape: AnomalyDetectorConfiguration, location_name: "Configuration"))
    AnomalyDetector.add_member(:state_value, Shapes::ShapeRef.new(shape: AnomalyDetectorStateValue, location_name: "StateValue"))
    AnomalyDetector.add_member(:metric_characteristics, Shapes::ShapeRef.new(shape: MetricCharacteristics, location_name: "MetricCharacteristics"))
    AnomalyDetector.add_member(:single_metric_anomaly_detector, Shapes::ShapeRef.new(shape: SingleMetricAnomalyDetector, location_name: "SingleMetricAnomalyDetector"))
    AnomalyDetector.add_member(:metric_math_anomaly_detector, Shapes::ShapeRef.new(shape: MetricMathAnomalyDetector, location_name: "MetricMathAnomalyDetector"))
    AnomalyDetector.struct_class = Types::AnomalyDetector

    AnomalyDetectorConfiguration.add_member(:excluded_time_ranges, Shapes::ShapeRef.new(shape: AnomalyDetectorExcludedTimeRanges, location_name: "ExcludedTimeRanges"))
    AnomalyDetectorConfiguration.add_member(:metric_timezone, Shapes::ShapeRef.new(shape: AnomalyDetectorMetricTimezone, location_name: "MetricTimezone"))
    AnomalyDetectorConfiguration.struct_class = Types::AnomalyDetectorConfiguration

    AnomalyDetectorExcludedTimeRanges.member = Shapes::ShapeRef.new(shape: Range)

    AnomalyDetectorTypes.member = Shapes::ShapeRef.new(shape: AnomalyDetectorType)

    AnomalyDetectors.member = Shapes::ShapeRef.new(shape: AnomalyDetector)

    BatchFailures.member = Shapes::ShapeRef.new(shape: PartialFailure)

    CompositeAlarm.add_member(:actions_enabled, Shapes::ShapeRef.new(shape: ActionsEnabled, location_name: "ActionsEnabled"))
    CompositeAlarm.add_member(:alarm_actions, Shapes::ShapeRef.new(shape: ResourceList, location_name: "AlarmActions"))
    CompositeAlarm.add_member(:alarm_arn, Shapes::ShapeRef.new(shape: AlarmArn, location_name: "AlarmArn"))
    CompositeAlarm.add_member(:alarm_configuration_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "AlarmConfigurationUpdatedTimestamp"))
    CompositeAlarm.add_member(:alarm_description, Shapes::ShapeRef.new(shape: AlarmDescription, location_name: "AlarmDescription"))
    CompositeAlarm.add_member(:alarm_name, Shapes::ShapeRef.new(shape: AlarmName, location_name: "AlarmName"))
    CompositeAlarm.add_member(:alarm_rule, Shapes::ShapeRef.new(shape: AlarmRule, location_name: "AlarmRule"))
    CompositeAlarm.add_member(:insufficient_data_actions, Shapes::ShapeRef.new(shape: ResourceList, location_name: "InsufficientDataActions"))
    CompositeAlarm.add_member(:ok_actions, Shapes::ShapeRef.new(shape: ResourceList, location_name: "OKActions"))
    CompositeAlarm.add_member(:state_reason, Shapes::ShapeRef.new(shape: StateReason, location_name: "StateReason"))
    CompositeAlarm.add_member(:state_reason_data, Shapes::ShapeRef.new(shape: StateReasonData, location_name: "StateReasonData"))
    CompositeAlarm.add_member(:state_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StateUpdatedTimestamp"))
    CompositeAlarm.add_member(:state_value, Shapes::ShapeRef.new(shape: StateValue, location_name: "StateValue"))
    CompositeAlarm.add_member(:state_transitioned_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StateTransitionedTimestamp"))
    CompositeAlarm.add_member(:actions_suppressed_by, Shapes::ShapeRef.new(shape: ActionsSuppressedBy, location_name: "ActionsSuppressedBy"))
    CompositeAlarm.add_member(:actions_suppressed_reason, Shapes::ShapeRef.new(shape: ActionsSuppressedReason, location_name: "ActionsSuppressedReason"))
    CompositeAlarm.add_member(:actions_suppressor, Shapes::ShapeRef.new(shape: AlarmArn, location_name: "ActionsSuppressor"))
    CompositeAlarm.add_member(:actions_suppressor_wait_period, Shapes::ShapeRef.new(shape: SuppressorPeriod, location_name: "ActionsSuppressorWaitPeriod"))
    CompositeAlarm.add_member(:actions_suppressor_extension_period, Shapes::ShapeRef.new(shape: SuppressorPeriod, location_name: "ActionsSuppressorExtensionPeriod"))
    CompositeAlarm.struct_class = Types::CompositeAlarm

    CompositeAlarms.member = Shapes::ShapeRef.new(shape: CompositeAlarm)

    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

    Counts.member = Shapes::ShapeRef.new(shape: DatapointValue)

    DashboardEntries.member = Shapes::ShapeRef.new(shape: DashboardEntry)

    DashboardEntry.add_member(:dashboard_name, Shapes::ShapeRef.new(shape: DashboardName, location_name: "DashboardName"))
    DashboardEntry.add_member(:dashboard_arn, Shapes::ShapeRef.new(shape: DashboardArn, location_name: "DashboardArn"))
    DashboardEntry.add_member(:last_modified, Shapes::ShapeRef.new(shape: LastModified, location_name: "LastModified"))
    DashboardEntry.add_member(:size, Shapes::ShapeRef.new(shape: Size, location_name: "Size"))
    DashboardEntry.struct_class = Types::DashboardEntry

    DashboardInvalidInputError.add_member(:message, Shapes::ShapeRef.new(shape: DashboardErrorMessage, location_name: "message"))
    DashboardInvalidInputError.add_member(:dashboard_validation_messages, Shapes::ShapeRef.new(shape: DashboardValidationMessages, location_name: "dashboardValidationMessages"))
    DashboardInvalidInputError.struct_class = Types::DashboardInvalidInputError

    DashboardNames.member = Shapes::ShapeRef.new(shape: DashboardName)

    DashboardNotFoundError.add_member(:message, Shapes::ShapeRef.new(shape: DashboardErrorMessage, location_name: "message"))
    DashboardNotFoundError.struct_class = Types::DashboardNotFoundError

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

    DeleteAnomalyDetectorInput.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, deprecated: true, location_name: "Namespace", metadata: {"deprecatedMessage"=>"Use SingleMetricAnomalyDetector."}))
    DeleteAnomalyDetectorInput.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, deprecated: true, location_name: "MetricName", metadata: {"deprecatedMessage"=>"Use SingleMetricAnomalyDetector."}))
    DeleteAnomalyDetectorInput.add_member(:dimensions, Shapes::ShapeRef.new(shape: Dimensions, deprecated: true, location_name: "Dimensions", metadata: {"deprecatedMessage"=>"Use SingleMetricAnomalyDetector."}))
    DeleteAnomalyDetectorInput.add_member(:stat, Shapes::ShapeRef.new(shape: AnomalyDetectorMetricStat, deprecated: true, location_name: "Stat", metadata: {"deprecatedMessage"=>"Use SingleMetricAnomalyDetector."}))
    DeleteAnomalyDetectorInput.add_member(:single_metric_anomaly_detector, Shapes::ShapeRef.new(shape: SingleMetricAnomalyDetector, location_name: "SingleMetricAnomalyDetector"))
    DeleteAnomalyDetectorInput.add_member(:metric_math_anomaly_detector, Shapes::ShapeRef.new(shape: MetricMathAnomalyDetector, location_name: "MetricMathAnomalyDetector"))
    DeleteAnomalyDetectorInput.struct_class = Types::DeleteAnomalyDetectorInput

    DeleteAnomalyDetectorOutput.struct_class = Types::DeleteAnomalyDetectorOutput

    DeleteDashboardsInput.add_member(:dashboard_names, Shapes::ShapeRef.new(shape: DashboardNames, required: true, location_name: "DashboardNames"))
    DeleteDashboardsInput.struct_class = Types::DeleteDashboardsInput

    DeleteDashboardsOutput.struct_class = Types::DeleteDashboardsOutput

    DeleteInsightRulesInput.add_member(:rule_names, Shapes::ShapeRef.new(shape: InsightRuleNames, required: true, location_name: "RuleNames"))
    DeleteInsightRulesInput.struct_class = Types::DeleteInsightRulesInput

    DeleteInsightRulesOutput.add_member(:failures, Shapes::ShapeRef.new(shape: BatchFailures, location_name: "Failures"))
    DeleteInsightRulesOutput.struct_class = Types::DeleteInsightRulesOutput

    DeleteMetricStreamInput.add_member(:name, Shapes::ShapeRef.new(shape: MetricStreamName, required: true, location_name: "Name"))
    DeleteMetricStreamInput.struct_class = Types::DeleteMetricStreamInput

    DeleteMetricStreamOutput.struct_class = Types::DeleteMetricStreamOutput

    DescribeAlarmHistoryInput.add_member(:alarm_name, Shapes::ShapeRef.new(shape: AlarmName, location_name: "AlarmName"))
    DescribeAlarmHistoryInput.add_member(:alarm_types, Shapes::ShapeRef.new(shape: AlarmTypes, location_name: "AlarmTypes"))
    DescribeAlarmHistoryInput.add_member(:history_item_type, Shapes::ShapeRef.new(shape: HistoryItemType, location_name: "HistoryItemType"))
    DescribeAlarmHistoryInput.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartDate"))
    DescribeAlarmHistoryInput.add_member(:end_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndDate"))
    DescribeAlarmHistoryInput.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeAlarmHistoryInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAlarmHistoryInput.add_member(:scan_by, Shapes::ShapeRef.new(shape: ScanBy, location_name: "ScanBy"))
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
    DescribeAlarmsInput.add_member(:alarm_types, Shapes::ShapeRef.new(shape: AlarmTypes, location_name: "AlarmTypes"))
    DescribeAlarmsInput.add_member(:children_of_alarm_name, Shapes::ShapeRef.new(shape: AlarmName, location_name: "ChildrenOfAlarmName"))
    DescribeAlarmsInput.add_member(:parents_of_alarm_name, Shapes::ShapeRef.new(shape: AlarmName, location_name: "ParentsOfAlarmName"))
    DescribeAlarmsInput.add_member(:state_value, Shapes::ShapeRef.new(shape: StateValue, location_name: "StateValue"))
    DescribeAlarmsInput.add_member(:action_prefix, Shapes::ShapeRef.new(shape: ActionPrefix, location_name: "ActionPrefix"))
    DescribeAlarmsInput.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeAlarmsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAlarmsInput.struct_class = Types::DescribeAlarmsInput

    DescribeAlarmsOutput.add_member(:composite_alarms, Shapes::ShapeRef.new(shape: CompositeAlarms, location_name: "CompositeAlarms"))
    DescribeAlarmsOutput.add_member(:metric_alarms, Shapes::ShapeRef.new(shape: MetricAlarms, location_name: "MetricAlarms"))
    DescribeAlarmsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAlarmsOutput.struct_class = Types::DescribeAlarmsOutput

    DescribeAnomalyDetectorsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAnomalyDetectorsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxReturnedResultsCount, location_name: "MaxResults"))
    DescribeAnomalyDetectorsInput.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace"))
    DescribeAnomalyDetectorsInput.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    DescribeAnomalyDetectorsInput.add_member(:dimensions, Shapes::ShapeRef.new(shape: Dimensions, location_name: "Dimensions"))
    DescribeAnomalyDetectorsInput.add_member(:anomaly_detector_types, Shapes::ShapeRef.new(shape: AnomalyDetectorTypes, location_name: "AnomalyDetectorTypes"))
    DescribeAnomalyDetectorsInput.struct_class = Types::DescribeAnomalyDetectorsInput

    DescribeAnomalyDetectorsOutput.add_member(:anomaly_detectors, Shapes::ShapeRef.new(shape: AnomalyDetectors, location_name: "AnomalyDetectors"))
    DescribeAnomalyDetectorsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAnomalyDetectorsOutput.struct_class = Types::DescribeAnomalyDetectorsOutput

    DescribeInsightRulesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInsightRulesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: InsightRuleMaxResults, location_name: "MaxResults"))
    DescribeInsightRulesInput.struct_class = Types::DescribeInsightRulesInput

    DescribeInsightRulesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInsightRulesOutput.add_member(:insight_rules, Shapes::ShapeRef.new(shape: InsightRules, location_name: "InsightRules"))
    DescribeInsightRulesOutput.struct_class = Types::DescribeInsightRulesOutput

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

    DisableInsightRulesInput.add_member(:rule_names, Shapes::ShapeRef.new(shape: InsightRuleNames, required: true, location_name: "RuleNames"))
    DisableInsightRulesInput.struct_class = Types::DisableInsightRulesInput

    DisableInsightRulesOutput.add_member(:failures, Shapes::ShapeRef.new(shape: BatchFailures, location_name: "Failures"))
    DisableInsightRulesOutput.struct_class = Types::DisableInsightRulesOutput

    EnableAlarmActionsInput.add_member(:alarm_names, Shapes::ShapeRef.new(shape: AlarmNames, required: true, location_name: "AlarmNames"))
    EnableAlarmActionsInput.struct_class = Types::EnableAlarmActionsInput

    EnableInsightRulesInput.add_member(:rule_names, Shapes::ShapeRef.new(shape: InsightRuleNames, required: true, location_name: "RuleNames"))
    EnableInsightRulesInput.struct_class = Types::EnableInsightRulesInput

    EnableInsightRulesOutput.add_member(:failures, Shapes::ShapeRef.new(shape: BatchFailures, location_name: "Failures"))
    EnableInsightRulesOutput.struct_class = Types::EnableInsightRulesOutput

    ExtendedStatistics.member = Shapes::ShapeRef.new(shape: ExtendedStatistic)

    GetDashboardInput.add_member(:dashboard_name, Shapes::ShapeRef.new(shape: DashboardName, required: true, location_name: "DashboardName"))
    GetDashboardInput.struct_class = Types::GetDashboardInput

    GetDashboardOutput.add_member(:dashboard_arn, Shapes::ShapeRef.new(shape: DashboardArn, location_name: "DashboardArn"))
    GetDashboardOutput.add_member(:dashboard_body, Shapes::ShapeRef.new(shape: DashboardBody, location_name: "DashboardBody"))
    GetDashboardOutput.add_member(:dashboard_name, Shapes::ShapeRef.new(shape: DashboardName, location_name: "DashboardName"))
    GetDashboardOutput.struct_class = Types::GetDashboardOutput

    GetInsightRuleReportInput.add_member(:rule_name, Shapes::ShapeRef.new(shape: InsightRuleName, required: true, location_name: "RuleName"))
    GetInsightRuleReportInput.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTime"))
    GetInsightRuleReportInput.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EndTime"))
    GetInsightRuleReportInput.add_member(:period, Shapes::ShapeRef.new(shape: Period, required: true, location_name: "Period"))
    GetInsightRuleReportInput.add_member(:max_contributor_count, Shapes::ShapeRef.new(shape: InsightRuleUnboundInteger, location_name: "MaxContributorCount"))
    GetInsightRuleReportInput.add_member(:metrics, Shapes::ShapeRef.new(shape: InsightRuleMetricList, location_name: "Metrics"))
    GetInsightRuleReportInput.add_member(:order_by, Shapes::ShapeRef.new(shape: InsightRuleOrderBy, location_name: "OrderBy"))
    GetInsightRuleReportInput.struct_class = Types::GetInsightRuleReportInput

    GetInsightRuleReportOutput.add_member(:key_labels, Shapes::ShapeRef.new(shape: InsightRuleContributorKeyLabels, location_name: "KeyLabels"))
    GetInsightRuleReportOutput.add_member(:aggregation_statistic, Shapes::ShapeRef.new(shape: InsightRuleAggregationStatistic, location_name: "AggregationStatistic"))
    GetInsightRuleReportOutput.add_member(:aggregate_value, Shapes::ShapeRef.new(shape: InsightRuleUnboundDouble, location_name: "AggregateValue"))
    GetInsightRuleReportOutput.add_member(:approximate_unique_count, Shapes::ShapeRef.new(shape: InsightRuleUnboundLong, location_name: "ApproximateUniqueCount"))
    GetInsightRuleReportOutput.add_member(:contributors, Shapes::ShapeRef.new(shape: InsightRuleContributors, location_name: "Contributors"))
    GetInsightRuleReportOutput.add_member(:metric_datapoints, Shapes::ShapeRef.new(shape: InsightRuleMetricDatapoints, location_name: "MetricDatapoints"))
    GetInsightRuleReportOutput.struct_class = Types::GetInsightRuleReportOutput

    GetMetricDataInput.add_member(:metric_data_queries, Shapes::ShapeRef.new(shape: MetricDataQueries, required: true, location_name: "MetricDataQueries"))
    GetMetricDataInput.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTime"))
    GetMetricDataInput.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EndTime"))
    GetMetricDataInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetMetricDataInput.add_member(:scan_by, Shapes::ShapeRef.new(shape: ScanBy, location_name: "ScanBy"))
    GetMetricDataInput.add_member(:max_datapoints, Shapes::ShapeRef.new(shape: GetMetricDataMaxDatapoints, location_name: "MaxDatapoints"))
    GetMetricDataInput.add_member(:label_options, Shapes::ShapeRef.new(shape: LabelOptions, location_name: "LabelOptions"))
    GetMetricDataInput.struct_class = Types::GetMetricDataInput

    GetMetricDataOutput.add_member(:metric_data_results, Shapes::ShapeRef.new(shape: MetricDataResults, location_name: "MetricDataResults"))
    GetMetricDataOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetMetricDataOutput.add_member(:messages, Shapes::ShapeRef.new(shape: MetricDataResultMessages, location_name: "Messages"))
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

    GetMetricStreamInput.add_member(:name, Shapes::ShapeRef.new(shape: MetricStreamName, required: true, location_name: "Name"))
    GetMetricStreamInput.struct_class = Types::GetMetricStreamInput

    GetMetricStreamOutput.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "Arn"))
    GetMetricStreamOutput.add_member(:name, Shapes::ShapeRef.new(shape: MetricStreamName, location_name: "Name"))
    GetMetricStreamOutput.add_member(:include_filters, Shapes::ShapeRef.new(shape: MetricStreamFilters, location_name: "IncludeFilters"))
    GetMetricStreamOutput.add_member(:exclude_filters, Shapes::ShapeRef.new(shape: MetricStreamFilters, location_name: "ExcludeFilters"))
    GetMetricStreamOutput.add_member(:firehose_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "FirehoseArn"))
    GetMetricStreamOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "RoleArn"))
    GetMetricStreamOutput.add_member(:state, Shapes::ShapeRef.new(shape: MetricStreamState, location_name: "State"))
    GetMetricStreamOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationDate"))
    GetMetricStreamOutput.add_member(:last_update_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdateDate"))
    GetMetricStreamOutput.add_member(:output_format, Shapes::ShapeRef.new(shape: MetricStreamOutputFormat, location_name: "OutputFormat"))
    GetMetricStreamOutput.add_member(:statistics_configurations, Shapes::ShapeRef.new(shape: MetricStreamStatisticsConfigurations, location_name: "StatisticsConfigurations"))
    GetMetricStreamOutput.add_member(:include_linked_accounts_metrics, Shapes::ShapeRef.new(shape: IncludeLinkedAccountsMetrics, location_name: "IncludeLinkedAccountsMetrics"))
    GetMetricStreamOutput.struct_class = Types::GetMetricStreamOutput

    GetMetricWidgetImageInput.add_member(:metric_widget, Shapes::ShapeRef.new(shape: MetricWidget, required: true, location_name: "MetricWidget"))
    GetMetricWidgetImageInput.add_member(:output_format, Shapes::ShapeRef.new(shape: OutputFormat, location_name: "OutputFormat"))
    GetMetricWidgetImageInput.struct_class = Types::GetMetricWidgetImageInput

    GetMetricWidgetImageOutput.add_member(:metric_widget_image, Shapes::ShapeRef.new(shape: MetricWidgetImage, location_name: "MetricWidgetImage"))
    GetMetricWidgetImageOutput.struct_class = Types::GetMetricWidgetImageOutput

    InsightRule.add_member(:name, Shapes::ShapeRef.new(shape: InsightRuleName, required: true, location_name: "Name"))
    InsightRule.add_member(:state, Shapes::ShapeRef.new(shape: InsightRuleState, required: true, location_name: "State"))
    InsightRule.add_member(:schema, Shapes::ShapeRef.new(shape: InsightRuleSchema, required: true, location_name: "Schema"))
    InsightRule.add_member(:definition, Shapes::ShapeRef.new(shape: InsightRuleDefinition, required: true, location_name: "Definition"))
    InsightRule.add_member(:managed_rule, Shapes::ShapeRef.new(shape: InsightRuleIsManaged, location_name: "ManagedRule"))
    InsightRule.struct_class = Types::InsightRule

    InsightRuleContributor.add_member(:keys, Shapes::ShapeRef.new(shape: InsightRuleContributorKeys, required: true, location_name: "Keys"))
    InsightRuleContributor.add_member(:approximate_aggregate_value, Shapes::ShapeRef.new(shape: InsightRuleUnboundDouble, required: true, location_name: "ApproximateAggregateValue"))
    InsightRuleContributor.add_member(:datapoints, Shapes::ShapeRef.new(shape: InsightRuleContributorDatapoints, required: true, location_name: "Datapoints"))
    InsightRuleContributor.struct_class = Types::InsightRuleContributor

    InsightRuleContributorDatapoint.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "Timestamp"))
    InsightRuleContributorDatapoint.add_member(:approximate_value, Shapes::ShapeRef.new(shape: InsightRuleUnboundDouble, required: true, location_name: "ApproximateValue"))
    InsightRuleContributorDatapoint.struct_class = Types::InsightRuleContributorDatapoint

    InsightRuleContributorDatapoints.member = Shapes::ShapeRef.new(shape: InsightRuleContributorDatapoint)

    InsightRuleContributorKeyLabels.member = Shapes::ShapeRef.new(shape: InsightRuleContributorKeyLabel)

    InsightRuleContributorKeys.member = Shapes::ShapeRef.new(shape: InsightRuleContributorKey)

    InsightRuleContributors.member = Shapes::ShapeRef.new(shape: InsightRuleContributor)

    InsightRuleMetricDatapoint.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "Timestamp"))
    InsightRuleMetricDatapoint.add_member(:unique_contributors, Shapes::ShapeRef.new(shape: InsightRuleUnboundDouble, location_name: "UniqueContributors"))
    InsightRuleMetricDatapoint.add_member(:max_contributor_value, Shapes::ShapeRef.new(shape: InsightRuleUnboundDouble, location_name: "MaxContributorValue"))
    InsightRuleMetricDatapoint.add_member(:sample_count, Shapes::ShapeRef.new(shape: InsightRuleUnboundDouble, location_name: "SampleCount"))
    InsightRuleMetricDatapoint.add_member(:average, Shapes::ShapeRef.new(shape: InsightRuleUnboundDouble, location_name: "Average"))
    InsightRuleMetricDatapoint.add_member(:sum, Shapes::ShapeRef.new(shape: InsightRuleUnboundDouble, location_name: "Sum"))
    InsightRuleMetricDatapoint.add_member(:minimum, Shapes::ShapeRef.new(shape: InsightRuleUnboundDouble, location_name: "Minimum"))
    InsightRuleMetricDatapoint.add_member(:maximum, Shapes::ShapeRef.new(shape: InsightRuleUnboundDouble, location_name: "Maximum"))
    InsightRuleMetricDatapoint.struct_class = Types::InsightRuleMetricDatapoint

    InsightRuleMetricDatapoints.member = Shapes::ShapeRef.new(shape: InsightRuleMetricDatapoint)

    InsightRuleMetricList.member = Shapes::ShapeRef.new(shape: InsightRuleMetricName)

    InsightRuleNames.member = Shapes::ShapeRef.new(shape: InsightRuleName)

    InsightRules.member = Shapes::ShapeRef.new(shape: InsightRule)

    InternalServiceFault.add_member(:message, Shapes::ShapeRef.new(shape: FaultDescription, location_name: "Message"))
    InternalServiceFault.struct_class = Types::InternalServiceFault

    InvalidFormatFault.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidFormatFault.struct_class = Types::InvalidFormatFault

    InvalidNextToken.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidNextToken.struct_class = Types::InvalidNextToken

    InvalidParameterCombinationException.add_member(:message, Shapes::ShapeRef.new(shape: AwsQueryErrorMessage, location_name: "message"))
    InvalidParameterCombinationException.struct_class = Types::InvalidParameterCombinationException

    InvalidParameterValueException.add_member(:message, Shapes::ShapeRef.new(shape: AwsQueryErrorMessage, location_name: "message"))
    InvalidParameterValueException.struct_class = Types::InvalidParameterValueException

    LabelOptions.add_member(:timezone, Shapes::ShapeRef.new(shape: GetMetricDataLabelTimezone, location_name: "Timezone"))
    LabelOptions.struct_class = Types::LabelOptions

    LimitExceededException.struct_class = Types::LimitExceededException

    LimitExceededFault.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    LimitExceededFault.struct_class = Types::LimitExceededFault

    ListDashboardsInput.add_member(:dashboard_name_prefix, Shapes::ShapeRef.new(shape: DashboardNamePrefix, location_name: "DashboardNamePrefix"))
    ListDashboardsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDashboardsInput.struct_class = Types::ListDashboardsInput

    ListDashboardsOutput.add_member(:dashboard_entries, Shapes::ShapeRef.new(shape: DashboardEntries, location_name: "DashboardEntries"))
    ListDashboardsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDashboardsOutput.struct_class = Types::ListDashboardsOutput

    ListManagedInsightRulesInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    ListManagedInsightRulesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListManagedInsightRulesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: InsightRuleMaxResults, location_name: "MaxResults"))
    ListManagedInsightRulesInput.struct_class = Types::ListManagedInsightRulesInput

    ListManagedInsightRulesOutput.add_member(:managed_rules, Shapes::ShapeRef.new(shape: ManagedRuleDescriptions, location_name: "ManagedRules"))
    ListManagedInsightRulesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListManagedInsightRulesOutput.struct_class = Types::ListManagedInsightRulesOutput

    ListMetricStreamsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMetricStreamsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListMetricStreamsMaxResults, location_name: "MaxResults"))
    ListMetricStreamsInput.struct_class = Types::ListMetricStreamsInput

    ListMetricStreamsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMetricStreamsOutput.add_member(:entries, Shapes::ShapeRef.new(shape: MetricStreamEntries, location_name: "Entries"))
    ListMetricStreamsOutput.struct_class = Types::ListMetricStreamsOutput

    ListMetricsInput.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace"))
    ListMetricsInput.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    ListMetricsInput.add_member(:dimensions, Shapes::ShapeRef.new(shape: DimensionFilters, location_name: "Dimensions"))
    ListMetricsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMetricsInput.add_member(:recently_active, Shapes::ShapeRef.new(shape: RecentlyActive, location_name: "RecentlyActive"))
    ListMetricsInput.add_member(:include_linked_accounts, Shapes::ShapeRef.new(shape: IncludeLinkedAccounts, location_name: "IncludeLinkedAccounts"))
    ListMetricsInput.add_member(:owning_account, Shapes::ShapeRef.new(shape: AccountId, location_name: "OwningAccount"))
    ListMetricsInput.struct_class = Types::ListMetricsInput

    ListMetricsOutput.add_member(:metrics, Shapes::ShapeRef.new(shape: Metrics, location_name: "Metrics"))
    ListMetricsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMetricsOutput.add_member(:owning_accounts, Shapes::ShapeRef.new(shape: OwningAccounts, location_name: "OwningAccounts"))
    ListMetricsOutput.struct_class = Types::ListMetricsOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    ManagedRule.add_member(:template_name, Shapes::ShapeRef.new(shape: TemplateName, required: true, location_name: "TemplateName"))
    ManagedRule.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    ManagedRule.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ManagedRule.struct_class = Types::ManagedRule

    ManagedRuleDescription.add_member(:template_name, Shapes::ShapeRef.new(shape: TemplateName, location_name: "TemplateName"))
    ManagedRuleDescription.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceARN"))
    ManagedRuleDescription.add_member(:rule_state, Shapes::ShapeRef.new(shape: ManagedRuleState, location_name: "RuleState"))
    ManagedRuleDescription.struct_class = Types::ManagedRuleDescription

    ManagedRuleDescriptions.member = Shapes::ShapeRef.new(shape: ManagedRuleDescription)

    ManagedRuleState.add_member(:rule_name, Shapes::ShapeRef.new(shape: InsightRuleName, required: true, location_name: "RuleName"))
    ManagedRuleState.add_member(:state, Shapes::ShapeRef.new(shape: InsightRuleState, required: true, location_name: "State"))
    ManagedRuleState.struct_class = Types::ManagedRuleState

    ManagedRules.member = Shapes::ShapeRef.new(shape: ManagedRule)

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
    MetricAlarm.add_member(:metrics, Shapes::ShapeRef.new(shape: MetricDataQueries, location_name: "Metrics"))
    MetricAlarm.add_member(:threshold_metric_id, Shapes::ShapeRef.new(shape: MetricId, location_name: "ThresholdMetricId"))
    MetricAlarm.add_member(:evaluation_state, Shapes::ShapeRef.new(shape: EvaluationState, location_name: "EvaluationState"))
    MetricAlarm.add_member(:state_transitioned_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StateTransitionedTimestamp"))
    MetricAlarm.struct_class = Types::MetricAlarm

    MetricAlarms.member = Shapes::ShapeRef.new(shape: MetricAlarm)

    MetricCharacteristics.add_member(:periodic_spikes, Shapes::ShapeRef.new(shape: PeriodicSpikes, location_name: "PeriodicSpikes"))
    MetricCharacteristics.struct_class = Types::MetricCharacteristics

    MetricData.member = Shapes::ShapeRef.new(shape: MetricDatum)

    MetricDataQueries.member = Shapes::ShapeRef.new(shape: MetricDataQuery)

    MetricDataQuery.add_member(:id, Shapes::ShapeRef.new(shape: MetricId, required: true, location_name: "Id"))
    MetricDataQuery.add_member(:metric_stat, Shapes::ShapeRef.new(shape: MetricStat, location_name: "MetricStat"))
    MetricDataQuery.add_member(:expression, Shapes::ShapeRef.new(shape: MetricExpression, location_name: "Expression"))
    MetricDataQuery.add_member(:label, Shapes::ShapeRef.new(shape: MetricLabel, location_name: "Label"))
    MetricDataQuery.add_member(:return_data, Shapes::ShapeRef.new(shape: ReturnData, location_name: "ReturnData"))
    MetricDataQuery.add_member(:period, Shapes::ShapeRef.new(shape: Period, location_name: "Period"))
    MetricDataQuery.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
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

    MetricMathAnomalyDetector.add_member(:metric_data_queries, Shapes::ShapeRef.new(shape: MetricDataQueries, location_name: "MetricDataQueries"))
    MetricMathAnomalyDetector.struct_class = Types::MetricMathAnomalyDetector

    MetricStat.add_member(:metric, Shapes::ShapeRef.new(shape: Metric, required: true, location_name: "Metric"))
    MetricStat.add_member(:period, Shapes::ShapeRef.new(shape: Period, required: true, location_name: "Period"))
    MetricStat.add_member(:stat, Shapes::ShapeRef.new(shape: Stat, required: true, location_name: "Stat"))
    MetricStat.add_member(:unit, Shapes::ShapeRef.new(shape: StandardUnit, location_name: "Unit"))
    MetricStat.struct_class = Types::MetricStat

    MetricStreamEntries.member = Shapes::ShapeRef.new(shape: MetricStreamEntry)

    MetricStreamEntry.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "Arn"))
    MetricStreamEntry.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationDate"))
    MetricStreamEntry.add_member(:last_update_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdateDate"))
    MetricStreamEntry.add_member(:name, Shapes::ShapeRef.new(shape: MetricStreamName, location_name: "Name"))
    MetricStreamEntry.add_member(:firehose_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "FirehoseArn"))
    MetricStreamEntry.add_member(:state, Shapes::ShapeRef.new(shape: MetricStreamState, location_name: "State"))
    MetricStreamEntry.add_member(:output_format, Shapes::ShapeRef.new(shape: MetricStreamOutputFormat, location_name: "OutputFormat"))
    MetricStreamEntry.struct_class = Types::MetricStreamEntry

    MetricStreamFilter.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace"))
    MetricStreamFilter.add_member(:metric_names, Shapes::ShapeRef.new(shape: MetricStreamFilterMetricNames, location_name: "MetricNames"))
    MetricStreamFilter.struct_class = Types::MetricStreamFilter

    MetricStreamFilterMetricNames.member = Shapes::ShapeRef.new(shape: MetricName)

    MetricStreamFilters.member = Shapes::ShapeRef.new(shape: MetricStreamFilter)

    MetricStreamNames.member = Shapes::ShapeRef.new(shape: MetricStreamName)

    MetricStreamStatisticsAdditionalStatistics.member = Shapes::ShapeRef.new(shape: MetricStreamStatistic)

    MetricStreamStatisticsConfiguration.add_member(:include_metrics, Shapes::ShapeRef.new(shape: MetricStreamStatisticsIncludeMetrics, required: true, location_name: "IncludeMetrics"))
    MetricStreamStatisticsConfiguration.add_member(:additional_statistics, Shapes::ShapeRef.new(shape: MetricStreamStatisticsAdditionalStatistics, required: true, location_name: "AdditionalStatistics"))
    MetricStreamStatisticsConfiguration.struct_class = Types::MetricStreamStatisticsConfiguration

    MetricStreamStatisticsConfigurations.member = Shapes::ShapeRef.new(shape: MetricStreamStatisticsConfiguration)

    MetricStreamStatisticsIncludeMetrics.member = Shapes::ShapeRef.new(shape: MetricStreamStatisticsMetric)

    MetricStreamStatisticsMetric.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location_name: "Namespace"))
    MetricStreamStatisticsMetric.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricName"))
    MetricStreamStatisticsMetric.struct_class = Types::MetricStreamStatisticsMetric

    Metrics.member = Shapes::ShapeRef.new(shape: Metric)

    MissingRequiredParameterException.add_member(:message, Shapes::ShapeRef.new(shape: AwsQueryErrorMessage, location_name: "message"))
    MissingRequiredParameterException.struct_class = Types::MissingRequiredParameterException

    OwningAccounts.member = Shapes::ShapeRef.new(shape: AccountId)

    PartialFailure.add_member(:failure_resource, Shapes::ShapeRef.new(shape: FailureResource, location_name: "FailureResource"))
    PartialFailure.add_member(:exception_type, Shapes::ShapeRef.new(shape: ExceptionType, location_name: "ExceptionType"))
    PartialFailure.add_member(:failure_code, Shapes::ShapeRef.new(shape: FailureCode, location_name: "FailureCode"))
    PartialFailure.add_member(:failure_description, Shapes::ShapeRef.new(shape: FailureDescription, location_name: "FailureDescription"))
    PartialFailure.struct_class = Types::PartialFailure

    PutAnomalyDetectorInput.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, deprecated: true, location_name: "Namespace", metadata: {"deprecatedMessage"=>"Use SingleMetricAnomalyDetector."}))
    PutAnomalyDetectorInput.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, deprecated: true, location_name: "MetricName", metadata: {"deprecatedMessage"=>"Use SingleMetricAnomalyDetector."}))
    PutAnomalyDetectorInput.add_member(:dimensions, Shapes::ShapeRef.new(shape: Dimensions, deprecated: true, location_name: "Dimensions", metadata: {"deprecatedMessage"=>"Use SingleMetricAnomalyDetector."}))
    PutAnomalyDetectorInput.add_member(:stat, Shapes::ShapeRef.new(shape: AnomalyDetectorMetricStat, deprecated: true, location_name: "Stat", metadata: {"deprecatedMessage"=>"Use SingleMetricAnomalyDetector."}))
    PutAnomalyDetectorInput.add_member(:configuration, Shapes::ShapeRef.new(shape: AnomalyDetectorConfiguration, location_name: "Configuration"))
    PutAnomalyDetectorInput.add_member(:metric_characteristics, Shapes::ShapeRef.new(shape: MetricCharacteristics, location_name: "MetricCharacteristics"))
    PutAnomalyDetectorInput.add_member(:single_metric_anomaly_detector, Shapes::ShapeRef.new(shape: SingleMetricAnomalyDetector, location_name: "SingleMetricAnomalyDetector"))
    PutAnomalyDetectorInput.add_member(:metric_math_anomaly_detector, Shapes::ShapeRef.new(shape: MetricMathAnomalyDetector, location_name: "MetricMathAnomalyDetector"))
    PutAnomalyDetectorInput.struct_class = Types::PutAnomalyDetectorInput

    PutAnomalyDetectorOutput.struct_class = Types::PutAnomalyDetectorOutput

    PutCompositeAlarmInput.add_member(:actions_enabled, Shapes::ShapeRef.new(shape: ActionsEnabled, location_name: "ActionsEnabled"))
    PutCompositeAlarmInput.add_member(:alarm_actions, Shapes::ShapeRef.new(shape: ResourceList, location_name: "AlarmActions"))
    PutCompositeAlarmInput.add_member(:alarm_description, Shapes::ShapeRef.new(shape: AlarmDescription, location_name: "AlarmDescription"))
    PutCompositeAlarmInput.add_member(:alarm_name, Shapes::ShapeRef.new(shape: AlarmName, required: true, location_name: "AlarmName"))
    PutCompositeAlarmInput.add_member(:alarm_rule, Shapes::ShapeRef.new(shape: AlarmRule, required: true, location_name: "AlarmRule"))
    PutCompositeAlarmInput.add_member(:insufficient_data_actions, Shapes::ShapeRef.new(shape: ResourceList, location_name: "InsufficientDataActions"))
    PutCompositeAlarmInput.add_member(:ok_actions, Shapes::ShapeRef.new(shape: ResourceList, location_name: "OKActions"))
    PutCompositeAlarmInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    PutCompositeAlarmInput.add_member(:actions_suppressor, Shapes::ShapeRef.new(shape: AlarmArn, location_name: "ActionsSuppressor"))
    PutCompositeAlarmInput.add_member(:actions_suppressor_wait_period, Shapes::ShapeRef.new(shape: SuppressorPeriod, location_name: "ActionsSuppressorWaitPeriod"))
    PutCompositeAlarmInput.add_member(:actions_suppressor_extension_period, Shapes::ShapeRef.new(shape: SuppressorPeriod, location_name: "ActionsSuppressorExtensionPeriod"))
    PutCompositeAlarmInput.struct_class = Types::PutCompositeAlarmInput

    PutDashboardInput.add_member(:dashboard_name, Shapes::ShapeRef.new(shape: DashboardName, required: true, location_name: "DashboardName"))
    PutDashboardInput.add_member(:dashboard_body, Shapes::ShapeRef.new(shape: DashboardBody, required: true, location_name: "DashboardBody"))
    PutDashboardInput.struct_class = Types::PutDashboardInput

    PutDashboardOutput.add_member(:dashboard_validation_messages, Shapes::ShapeRef.new(shape: DashboardValidationMessages, location_name: "DashboardValidationMessages"))
    PutDashboardOutput.struct_class = Types::PutDashboardOutput

    PutInsightRuleInput.add_member(:rule_name, Shapes::ShapeRef.new(shape: InsightRuleName, required: true, location_name: "RuleName"))
    PutInsightRuleInput.add_member(:rule_state, Shapes::ShapeRef.new(shape: InsightRuleState, location_name: "RuleState"))
    PutInsightRuleInput.add_member(:rule_definition, Shapes::ShapeRef.new(shape: InsightRuleDefinition, required: true, location_name: "RuleDefinition"))
    PutInsightRuleInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    PutInsightRuleInput.struct_class = Types::PutInsightRuleInput

    PutInsightRuleOutput.struct_class = Types::PutInsightRuleOutput

    PutManagedInsightRulesInput.add_member(:managed_rules, Shapes::ShapeRef.new(shape: ManagedRules, required: true, location_name: "ManagedRules"))
    PutManagedInsightRulesInput.struct_class = Types::PutManagedInsightRulesInput

    PutManagedInsightRulesOutput.add_member(:failures, Shapes::ShapeRef.new(shape: BatchFailures, location_name: "Failures"))
    PutManagedInsightRulesOutput.struct_class = Types::PutManagedInsightRulesOutput

    PutMetricAlarmInput.add_member(:alarm_name, Shapes::ShapeRef.new(shape: AlarmName, required: true, location_name: "AlarmName"))
    PutMetricAlarmInput.add_member(:alarm_description, Shapes::ShapeRef.new(shape: AlarmDescription, location_name: "AlarmDescription"))
    PutMetricAlarmInput.add_member(:actions_enabled, Shapes::ShapeRef.new(shape: ActionsEnabled, location_name: "ActionsEnabled"))
    PutMetricAlarmInput.add_member(:ok_actions, Shapes::ShapeRef.new(shape: ResourceList, location_name: "OKActions"))
    PutMetricAlarmInput.add_member(:alarm_actions, Shapes::ShapeRef.new(shape: ResourceList, location_name: "AlarmActions"))
    PutMetricAlarmInput.add_member(:insufficient_data_actions, Shapes::ShapeRef.new(shape: ResourceList, location_name: "InsufficientDataActions"))
    PutMetricAlarmInput.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    PutMetricAlarmInput.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace"))
    PutMetricAlarmInput.add_member(:statistic, Shapes::ShapeRef.new(shape: Statistic, location_name: "Statistic"))
    PutMetricAlarmInput.add_member(:extended_statistic, Shapes::ShapeRef.new(shape: ExtendedStatistic, location_name: "ExtendedStatistic"))
    PutMetricAlarmInput.add_member(:dimensions, Shapes::ShapeRef.new(shape: Dimensions, location_name: "Dimensions"))
    PutMetricAlarmInput.add_member(:period, Shapes::ShapeRef.new(shape: Period, location_name: "Period"))
    PutMetricAlarmInput.add_member(:unit, Shapes::ShapeRef.new(shape: StandardUnit, location_name: "Unit"))
    PutMetricAlarmInput.add_member(:evaluation_periods, Shapes::ShapeRef.new(shape: EvaluationPeriods, required: true, location_name: "EvaluationPeriods"))
    PutMetricAlarmInput.add_member(:datapoints_to_alarm, Shapes::ShapeRef.new(shape: DatapointsToAlarm, location_name: "DatapointsToAlarm"))
    PutMetricAlarmInput.add_member(:threshold, Shapes::ShapeRef.new(shape: Threshold, location_name: "Threshold"))
    PutMetricAlarmInput.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperator, required: true, location_name: "ComparisonOperator"))
    PutMetricAlarmInput.add_member(:treat_missing_data, Shapes::ShapeRef.new(shape: TreatMissingData, location_name: "TreatMissingData"))
    PutMetricAlarmInput.add_member(:evaluate_low_sample_count_percentile, Shapes::ShapeRef.new(shape: EvaluateLowSampleCountPercentile, location_name: "EvaluateLowSampleCountPercentile"))
    PutMetricAlarmInput.add_member(:metrics, Shapes::ShapeRef.new(shape: MetricDataQueries, location_name: "Metrics"))
    PutMetricAlarmInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    PutMetricAlarmInput.add_member(:threshold_metric_id, Shapes::ShapeRef.new(shape: MetricId, location_name: "ThresholdMetricId"))
    PutMetricAlarmInput.struct_class = Types::PutMetricAlarmInput

    PutMetricDataInput.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location_name: "Namespace"))
    PutMetricDataInput.add_member(:metric_data, Shapes::ShapeRef.new(shape: MetricData, required: true, location_name: "MetricData"))
    PutMetricDataInput.struct_class = Types::PutMetricDataInput

    PutMetricStreamInput.add_member(:name, Shapes::ShapeRef.new(shape: MetricStreamName, required: true, location_name: "Name"))
    PutMetricStreamInput.add_member(:include_filters, Shapes::ShapeRef.new(shape: MetricStreamFilters, location_name: "IncludeFilters"))
    PutMetricStreamInput.add_member(:exclude_filters, Shapes::ShapeRef.new(shape: MetricStreamFilters, location_name: "ExcludeFilters"))
    PutMetricStreamInput.add_member(:firehose_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "FirehoseArn"))
    PutMetricStreamInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "RoleArn"))
    PutMetricStreamInput.add_member(:output_format, Shapes::ShapeRef.new(shape: MetricStreamOutputFormat, required: true, location_name: "OutputFormat"))
    PutMetricStreamInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    PutMetricStreamInput.add_member(:statistics_configurations, Shapes::ShapeRef.new(shape: MetricStreamStatisticsConfigurations, location_name: "StatisticsConfigurations"))
    PutMetricStreamInput.add_member(:include_linked_accounts_metrics, Shapes::ShapeRef.new(shape: IncludeLinkedAccountsMetrics, location_name: "IncludeLinkedAccountsMetrics"))
    PutMetricStreamInput.struct_class = Types::PutMetricStreamInput

    PutMetricStreamOutput.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "Arn"))
    PutMetricStreamOutput.struct_class = Types::PutMetricStreamOutput

    Range.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTime"))
    Range.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EndTime"))
    Range.struct_class = Types::Range

    ResourceList.member = Shapes::ShapeRef.new(shape: ResourceName)

    ResourceNotFound.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceNotFound.struct_class = Types::ResourceNotFound

    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SetAlarmStateInput.add_member(:alarm_name, Shapes::ShapeRef.new(shape: AlarmName, required: true, location_name: "AlarmName"))
    SetAlarmStateInput.add_member(:state_value, Shapes::ShapeRef.new(shape: StateValue, required: true, location_name: "StateValue"))
    SetAlarmStateInput.add_member(:state_reason, Shapes::ShapeRef.new(shape: StateReason, required: true, location_name: "StateReason"))
    SetAlarmStateInput.add_member(:state_reason_data, Shapes::ShapeRef.new(shape: StateReasonData, location_name: "StateReasonData"))
    SetAlarmStateInput.struct_class = Types::SetAlarmStateInput

    SingleMetricAnomalyDetector.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    SingleMetricAnomalyDetector.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace"))
    SingleMetricAnomalyDetector.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    SingleMetricAnomalyDetector.add_member(:dimensions, Shapes::ShapeRef.new(shape: Dimensions, location_name: "Dimensions"))
    SingleMetricAnomalyDetector.add_member(:stat, Shapes::ShapeRef.new(shape: AnomalyDetectorMetricStat, location_name: "Stat"))
    SingleMetricAnomalyDetector.struct_class = Types::SingleMetricAnomalyDetector

    StartMetricStreamsInput.add_member(:names, Shapes::ShapeRef.new(shape: MetricStreamNames, required: true, location_name: "Names"))
    StartMetricStreamsInput.struct_class = Types::StartMetricStreamsInput

    StartMetricStreamsOutput.struct_class = Types::StartMetricStreamsOutput

    StatisticSet.add_member(:sample_count, Shapes::ShapeRef.new(shape: DatapointValue, required: true, location_name: "SampleCount"))
    StatisticSet.add_member(:sum, Shapes::ShapeRef.new(shape: DatapointValue, required: true, location_name: "Sum"))
    StatisticSet.add_member(:minimum, Shapes::ShapeRef.new(shape: DatapointValue, required: true, location_name: "Minimum"))
    StatisticSet.add_member(:maximum, Shapes::ShapeRef.new(shape: DatapointValue, required: true, location_name: "Maximum"))
    StatisticSet.struct_class = Types::StatisticSet

    Statistics.member = Shapes::ShapeRef.new(shape: Statistic)

    StopMetricStreamsInput.add_member(:names, Shapes::ShapeRef.new(shape: MetricStreamNames, required: true, location_name: "Names"))
    StopMetricStreamsInput.struct_class = Types::StopMetricStreamsInput

    StopMetricStreamsOutput.struct_class = Types::StopMetricStreamsOutput

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    Timestamps.member = Shapes::ShapeRef.new(shape: Timestamp)

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    Values.member = Shapes::ShapeRef.new(shape: DatapointValue)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2010-08-01"

      api.metadata = {
        "apiVersion" => "2010-08-01",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "monitoring",
        "protocol" => "query",
        "protocols" => ["query"],
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

      api.add_operation(:delete_anomaly_detector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAnomalyDetector"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAnomalyDetectorInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteAnomalyDetectorOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
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

      api.add_operation(:delete_insight_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInsightRules"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteInsightRulesInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteInsightRulesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
      end)

      api.add_operation(:delete_metric_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMetricStream"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteMetricStreamInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteMetricStreamOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
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

      api.add_operation(:describe_anomaly_detectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAnomalyDetectors"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAnomalyDetectorsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeAnomalyDetectorsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_insight_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInsightRules"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeInsightRulesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeInsightRulesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:disable_alarm_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableAlarmActions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisableAlarmActionsInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:disable_insight_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableInsightRules"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisableInsightRulesInput)
        o.output = Shapes::ShapeRef.new(shape: DisableInsightRulesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
      end)

      api.add_operation(:enable_alarm_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableAlarmActions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EnableAlarmActionsInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:enable_insight_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableInsightRules"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EnableInsightRulesInput)
        o.output = Shapes::ShapeRef.new(shape: EnableInsightRulesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
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

      api.add_operation(:get_insight_rule_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInsightRuleReport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetInsightRuleReportInput)
        o.output = Shapes::ShapeRef.new(shape: GetInsightRuleReportOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_metric_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMetricData"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMetricDataInput)
        o.output = Shapes::ShapeRef.new(shape: GetMetricDataOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_datapoints",
          tokens: {
            "next_token" => "next_token"
          }
        )
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

      api.add_operation(:get_metric_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMetricStream"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMetricStreamInput)
        o.output = Shapes::ShapeRef.new(shape: GetMetricStreamOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
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
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_managed_insight_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListManagedInsightRules"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListManagedInsightRulesInput)
        o.output = Shapes::ShapeRef.new(shape: ListManagedInsightRulesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_metric_streams, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMetricStreams"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListMetricStreamsInput)
        o.output = Shapes::ShapeRef.new(shape: ListMetricStreamsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
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

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
      end)

      api.add_operation(:put_anomaly_detector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAnomalyDetector"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutAnomalyDetectorInput)
        o.output = Shapes::ShapeRef.new(shape: PutAnomalyDetectorOutput)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:put_composite_alarm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutCompositeAlarm"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutCompositeAlarmInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
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

      api.add_operation(:put_insight_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutInsightRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutInsightRuleInput)
        o.output = Shapes::ShapeRef.new(shape: PutInsightRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:put_managed_insight_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutManagedInsightRules"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutManagedInsightRulesInput)
        o.output = Shapes::ShapeRef.new(shape: PutManagedInsightRulesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
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
        o.request_compression = {
          "encodings" => ["gzip"],
        }
        o.input = Shapes::ShapeRef.new(shape: PutMetricDataInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
      end)

      api.add_operation(:put_metric_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutMetricStream"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutMetricStreamInput)
        o.output = Shapes::ShapeRef.new(shape: PutMetricStreamOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
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

      api.add_operation(:start_metric_streams, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMetricStreams"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartMetricStreamsInput)
        o.output = Shapes::ShapeRef.new(shape: StartMetricStreamsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
      end)

      api.add_operation(:stop_metric_streams, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopMetricStreams"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopMetricStreamsInput)
        o.output = Shapes::ShapeRef.new(shape: StopMetricStreamsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
      end)
    end

  end
end
