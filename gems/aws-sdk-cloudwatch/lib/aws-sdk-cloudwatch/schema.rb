# frozen_string_literal: true

# This is generated code!

module Aws::CloudWatch
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ActionPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#ActionPrefix", name: "ActionPrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ActionsEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudwatch#ActionsEnabled", name: "ActionsEnabled")
    ActionsSuppressedBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatch#ActionsSuppressedBy", name: "ActionsSuppressedBy")
    ActionsSuppressedReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#ActionsSuppressedReason", name: "ActionsSuppressedReason", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    AlarmArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#AlarmArn", name: "AlarmArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}})
    AlarmContributor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#AlarmContributor", name: "AlarmContributor")
    AlarmContributors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#AlarmContributors", name: "AlarmContributors")
    AlarmDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#AlarmDescription", name: "AlarmDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    AlarmHistoryItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#AlarmHistoryItem", name: "AlarmHistoryItem")
    AlarmHistoryItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#AlarmHistoryItems", name: "AlarmHistoryItems")
    AlarmName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#AlarmName", name: "AlarmName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    AlarmNamePrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#AlarmNamePrefix", name: "AlarmNamePrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    AlarmNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#AlarmNames", name: "AlarmNames", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    AlarmRule = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#AlarmRule", name: "AlarmRule", traits: {"smithy.api#length" => {"min" => 1, "max" => 10240}})
    AlarmType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatch#AlarmType", name: "AlarmType")
    AlarmTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#AlarmTypes", name: "AlarmTypes")
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    AnomalyDetector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#AnomalyDetector", name: "AnomalyDetector")
    AnomalyDetectorConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#AnomalyDetectorConfiguration", name: "AnomalyDetectorConfiguration")
    AnomalyDetectorExcludedTimeRanges = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#AnomalyDetectorExcludedTimeRanges", name: "AnomalyDetectorExcludedTimeRanges")
    AnomalyDetectorMetricStat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#AnomalyDetectorMetricStat", name: "AnomalyDetectorMetricStat", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^(SampleCount|Average|Sum|Minimum|Maximum|IQM|(p|tc|tm|ts|wm)(\\d{1,2}(\\.\\d{0,10})?|100)|[ou]\\d+(\\.\\d*)?)(_E|_L|_H)?|(TM|TC|TS|WM)\\(((((\\d{1,2})(\\.\\d{0,10})?|100(\\.0{0,10})?)%)?:((\\d{1,2})(\\.\\d{0,10})?|100(\\.0{0,10})?)%|((\\d{1,2})(\\.\\d{0,10})?|100(\\.0{0,10})?)%:(((\\d{1,2})(\\.\\d{0,10})?|100(\\.0{0,10})?)%)?)\\)|(TM|TC|TS|WM|PR)\\(((\\d+(\\.\\d{0,10})?|(\\d+(\\.\\d{0,10})?[Ee][+-]?\\d+)):((\\d+(\\.\\d{0,10})?|(\\d+(\\.\\d{0,10})?[Ee][+-]?\\d+)))?|((\\d+(\\.\\d{0,10})?|(\\d+(\\.\\d{0,10})?[Ee][+-]?\\d+)))?:(\\d+(\\.\\d{0,10})?|(\\d+(\\.\\d{0,10})?[Ee][+-]?\\d+)))\\)$"})
    AnomalyDetectorMetricTimezone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#AnomalyDetectorMetricTimezone", name: "AnomalyDetectorMetricTimezone", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => ".*"})
    AnomalyDetectorStateValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatch#AnomalyDetectorStateValue", name: "AnomalyDetectorStateValue")
    AnomalyDetectorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatch#AnomalyDetectorType", name: "AnomalyDetectorType")
    AnomalyDetectorTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#AnomalyDetectorTypes", name: "AnomalyDetectorTypes", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    AnomalyDetectors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#AnomalyDetectors", name: "AnomalyDetectors")
    AttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#AttributeName", name: "AttributeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    AttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#AttributeValue", name: "AttributeValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    AwsQueryErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#AwsQueryErrorMessage", name: "AwsQueryErrorMessage")
    BatchFailures = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#BatchFailures", name: "BatchFailures")
    ComparisonOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatch#ComparisonOperator", name: "ComparisonOperator")
    CompositeAlarm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#CompositeAlarm", name: "CompositeAlarm")
    CompositeAlarms = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#CompositeAlarms", name: "CompositeAlarms")
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#ConcurrentModificationException", name: "ConcurrentModificationException", traits: {"aws.protocols#awsQueryError" => {"code" => "ConcurrentModificationException", "httpResponseCode" => 429}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContributorAttributes = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudwatch#ContributorAttributes", name: "ContributorAttributes", traits: {"smithy.api#length" => {"min" => 0, "max" => 30}})
    ContributorId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#ContributorId", name: "ContributorId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Counts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#Counts", name: "Counts")
    DashboardArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#DashboardArn", name: "DashboardArn")
    DashboardBody = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#DashboardBody", name: "DashboardBody")
    DashboardEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#DashboardEntries", name: "DashboardEntries")
    DashboardEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#DashboardEntry", name: "DashboardEntry")
    DashboardErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#DashboardErrorMessage", name: "DashboardErrorMessage")
    DashboardInvalidInputError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#DashboardInvalidInputError", name: "DashboardInvalidInputError", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameterInput", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DashboardName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#DashboardName", name: "DashboardName")
    DashboardNamePrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#DashboardNamePrefix", name: "DashboardNamePrefix")
    DashboardNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#DashboardNames", name: "DashboardNames")
    DashboardNotFoundError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#DashboardNotFoundError", name: "DashboardNotFoundError", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DashboardValidationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#DashboardValidationMessage", name: "DashboardValidationMessage")
    DashboardValidationMessages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#DashboardValidationMessages", name: "DashboardValidationMessages")
    DataPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#DataPath", name: "DataPath")
    Datapoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#Datapoint", name: "Datapoint")
    DatapointValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.cloudwatch#DatapointValue", name: "DatapointValue")
    DatapointValueMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudwatch#DatapointValueMap", name: "DatapointValueMap")
    DatapointValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#DatapointValues", name: "DatapointValues")
    Datapoints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#Datapoints", name: "Datapoints")
    DatapointsToAlarm = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatch#DatapointsToAlarm", name: "DatapointsToAlarm", traits: {"smithy.api#range" => {"min" => 1}})
    DeleteAlarmsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#DeleteAlarmsInput", name: "DeleteAlarmsInput")
    DeleteAnomalyDetectorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#DeleteAnomalyDetectorInput", name: "DeleteAnomalyDetectorInput")
    DeleteAnomalyDetectorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#DeleteAnomalyDetectorOutput", name: "DeleteAnomalyDetectorOutput")
    DeleteDashboardsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#DeleteDashboardsInput", name: "DeleteDashboardsInput")
    DeleteDashboardsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#DeleteDashboardsOutput", name: "DeleteDashboardsOutput")
    DeleteInsightRulesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#DeleteInsightRulesInput", name: "DeleteInsightRulesInput")
    DeleteInsightRulesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#DeleteInsightRulesOutput", name: "DeleteInsightRulesOutput")
    DeleteMetricStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#DeleteMetricStreamInput", name: "DeleteMetricStreamInput")
    DeleteMetricStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#DeleteMetricStreamOutput", name: "DeleteMetricStreamOutput")
    DescribeAlarmContributorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#DescribeAlarmContributorsInput", name: "DescribeAlarmContributorsInput")
    DescribeAlarmContributorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#DescribeAlarmContributorsOutput", name: "DescribeAlarmContributorsOutput")
    DescribeAlarmHistoryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#DescribeAlarmHistoryInput", name: "DescribeAlarmHistoryInput")
    DescribeAlarmHistoryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#DescribeAlarmHistoryOutput", name: "DescribeAlarmHistoryOutput")
    DescribeAlarmsForMetricInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#DescribeAlarmsForMetricInput", name: "DescribeAlarmsForMetricInput")
    DescribeAlarmsForMetricOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#DescribeAlarmsForMetricOutput", name: "DescribeAlarmsForMetricOutput")
    DescribeAlarmsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#DescribeAlarmsInput", name: "DescribeAlarmsInput")
    DescribeAlarmsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#DescribeAlarmsOutput", name: "DescribeAlarmsOutput")
    DescribeAnomalyDetectorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#DescribeAnomalyDetectorsInput", name: "DescribeAnomalyDetectorsInput")
    DescribeAnomalyDetectorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#DescribeAnomalyDetectorsOutput", name: "DescribeAnomalyDetectorsOutput")
    DescribeInsightRulesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#DescribeInsightRulesInput", name: "DescribeInsightRulesInput")
    DescribeInsightRulesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#DescribeInsightRulesOutput", name: "DescribeInsightRulesOutput")
    Dimension = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#Dimension", name: "Dimension")
    DimensionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#DimensionFilter", name: "DimensionFilter")
    DimensionFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#DimensionFilters", name: "DimensionFilters", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    DimensionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#DimensionName", name: "DimensionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    DimensionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#DimensionValue", name: "DimensionValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Dimensions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#Dimensions", name: "Dimensions", traits: {"smithy.api#length" => {"min" => 0, "max" => 30}})
    DisableAlarmActionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#DisableAlarmActionsInput", name: "DisableAlarmActionsInput")
    DisableInsightRulesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#DisableInsightRulesInput", name: "DisableInsightRulesInput")
    DisableInsightRulesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#DisableInsightRulesOutput", name: "DisableInsightRulesOutput")
    EnableAlarmActionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#EnableAlarmActionsInput", name: "EnableAlarmActionsInput")
    EnableInsightRulesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#EnableInsightRulesInput", name: "EnableInsightRulesInput")
    EnableInsightRulesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#EnableInsightRulesOutput", name: "EnableInsightRulesOutput")
    Entity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#Entity", name: "Entity")
    EntityAttributesMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudwatch#EntityAttributesMap", name: "EntityAttributesMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    EntityAttributesMapKeyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#EntityAttributesMapKeyString", name: "EntityAttributesMapKeyString", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    EntityAttributesMapValueString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#EntityAttributesMapValueString", name: "EntityAttributesMapValueString", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    EntityKeyAttributesMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudwatch#EntityKeyAttributesMap", name: "EntityKeyAttributesMap", traits: {"smithy.api#length" => {"min" => 2, "max" => 4}})
    EntityKeyAttributesMapKeyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#EntityKeyAttributesMapKeyString", name: "EntityKeyAttributesMapKeyString", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    EntityKeyAttributesMapValueString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#EntityKeyAttributesMapValueString", name: "EntityKeyAttributesMapValueString", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    EntityMetricData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#EntityMetricData", name: "EntityMetricData")
    EntityMetricDataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#EntityMetricDataList", name: "EntityMetricDataList")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    EvaluateLowSampleCountPercentile = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#EvaluateLowSampleCountPercentile", name: "EvaluateLowSampleCountPercentile", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    EvaluationPeriods = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatch#EvaluationPeriods", name: "EvaluationPeriods", traits: {"smithy.api#range" => {"min" => 1}})
    EvaluationState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatch#EvaluationState", name: "EvaluationState")
    ExceptionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#ExceptionType", name: "ExceptionType")
    ExtendedStatistic = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#ExtendedStatistic", name: "ExtendedStatistic")
    ExtendedStatistics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#ExtendedStatistics", name: "ExtendedStatistics", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    FailureCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#FailureCode", name: "FailureCode")
    FailureDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#FailureDescription", name: "FailureDescription")
    FailureResource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#FailureResource", name: "FailureResource")
    FaultDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#FaultDescription", name: "FaultDescription")
    GetDashboardInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#GetDashboardInput", name: "GetDashboardInput")
    GetDashboardOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#GetDashboardOutput", name: "GetDashboardOutput")
    GetInsightRuleReportInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#GetInsightRuleReportInput", name: "GetInsightRuleReportInput")
    GetInsightRuleReportOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#GetInsightRuleReportOutput", name: "GetInsightRuleReportOutput")
    GetMetricDataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#GetMetricDataInput", name: "GetMetricDataInput")
    GetMetricDataLabelTimezone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#GetMetricDataLabelTimezone", name: "GetMetricDataLabelTimezone")
    GetMetricDataMaxDatapoints = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatch#GetMetricDataMaxDatapoints", name: "GetMetricDataMaxDatapoints")
    GetMetricDataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#GetMetricDataOutput", name: "GetMetricDataOutput")
    GetMetricStatisticsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#GetMetricStatisticsInput", name: "GetMetricStatisticsInput")
    GetMetricStatisticsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#GetMetricStatisticsOutput", name: "GetMetricStatisticsOutput")
    GetMetricStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#GetMetricStreamInput", name: "GetMetricStreamInput")
    GetMetricStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#GetMetricStreamOutput", name: "GetMetricStreamOutput")
    GetMetricWidgetImageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#GetMetricWidgetImageInput", name: "GetMetricWidgetImageInput")
    GetMetricWidgetImageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#GetMetricWidgetImageOutput", name: "GetMetricWidgetImageOutput")
    HistoryData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#HistoryData", name: "HistoryData", traits: {"smithy.api#length" => {"min" => 1, "max" => 4095}})
    HistoryItemType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatch#HistoryItemType", name: "HistoryItemType")
    HistorySummary = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#HistorySummary", name: "HistorySummary", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    IncludeLinkedAccounts = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudwatch#IncludeLinkedAccounts", name: "IncludeLinkedAccounts")
    IncludeLinkedAccountsMetrics = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudwatch#IncludeLinkedAccountsMetrics", name: "IncludeLinkedAccountsMetrics")
    InsightRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#InsightRule", name: "InsightRule")
    InsightRuleAggregationStatistic = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#InsightRuleAggregationStatistic", name: "InsightRuleAggregationStatistic")
    InsightRuleContributor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#InsightRuleContributor", name: "InsightRuleContributor")
    InsightRuleContributorDatapoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#InsightRuleContributorDatapoint", name: "InsightRuleContributorDatapoint")
    InsightRuleContributorDatapoints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#InsightRuleContributorDatapoints", name: "InsightRuleContributorDatapoints")
    InsightRuleContributorKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#InsightRuleContributorKey", name: "InsightRuleContributorKey")
    InsightRuleContributorKeyLabel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#InsightRuleContributorKeyLabel", name: "InsightRuleContributorKeyLabel")
    InsightRuleContributorKeyLabels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#InsightRuleContributorKeyLabels", name: "InsightRuleContributorKeyLabels")
    InsightRuleContributorKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#InsightRuleContributorKeys", name: "InsightRuleContributorKeys")
    InsightRuleContributors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#InsightRuleContributors", name: "InsightRuleContributors")
    InsightRuleDefinition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#InsightRuleDefinition", name: "InsightRuleDefinition", traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}, "smithy.api#pattern" => "^[\\x00-\\x7F]+$"})
    InsightRuleIsManaged = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudwatch#InsightRuleIsManaged", name: "InsightRuleIsManaged")
    InsightRuleMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatch#InsightRuleMaxResults", name: "InsightRuleMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    InsightRuleMetricDatapoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#InsightRuleMetricDatapoint", name: "InsightRuleMetricDatapoint")
    InsightRuleMetricDatapoints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#InsightRuleMetricDatapoints", name: "InsightRuleMetricDatapoints")
    InsightRuleMetricList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#InsightRuleMetricList", name: "InsightRuleMetricList")
    InsightRuleMetricName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#InsightRuleMetricName", name: "InsightRuleMetricName", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[\\x20-\\x7E]+$"})
    InsightRuleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#InsightRuleName", name: "InsightRuleName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\x20-\\x7E]+$"})
    InsightRuleNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#InsightRuleNames", name: "InsightRuleNames")
    InsightRuleOnTransformedLogs = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudwatch#InsightRuleOnTransformedLogs", name: "InsightRuleOnTransformedLogs")
    InsightRuleOrderBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#InsightRuleOrderBy", name: "InsightRuleOrderBy", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[\\x20-\\x7E]+$"})
    InsightRuleSchema = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#InsightRuleSchema", name: "InsightRuleSchema")
    InsightRuleState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#InsightRuleState", name: "InsightRuleState", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[\\x20-\\x7E]+$"})
    InsightRuleUnboundDouble = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.cloudwatch#InsightRuleUnboundDouble", name: "InsightRuleUnboundDouble")
    InsightRuleUnboundInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatch#InsightRuleUnboundInteger", name: "InsightRuleUnboundInteger")
    InsightRuleUnboundLong = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatch#InsightRuleUnboundLong", name: "InsightRuleUnboundLong")
    InsightRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#InsightRules", name: "InsightRules")
    InternalServiceFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#InternalServiceFault", name: "InternalServiceFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InternalServiceError", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidFormatFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#InvalidFormatFault", name: "InvalidFormatFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidFormat", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidNextToken = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#InvalidNextToken", name: "InvalidNextToken", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidNextToken", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterCombinationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#InvalidParameterCombinationException", name: "InvalidParameterCombinationException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameterCombination", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterValueException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#InvalidParameterValueException", name: "InvalidParameterValueException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameterValue", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LabelOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#LabelOptions", name: "LabelOptions")
    LastModified = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.cloudwatch#LastModified", name: "LastModified")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#LimitExceededException", name: "LimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "LimitExceededException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LimitExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#LimitExceededFault", name: "LimitExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "LimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListDashboardsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#ListDashboardsInput", name: "ListDashboardsInput")
    ListDashboardsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#ListDashboardsOutput", name: "ListDashboardsOutput")
    ListManagedInsightRulesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#ListManagedInsightRulesInput", name: "ListManagedInsightRulesInput")
    ListManagedInsightRulesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#ListManagedInsightRulesOutput", name: "ListManagedInsightRulesOutput")
    ListMetricStreamsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#ListMetricStreamsInput", name: "ListMetricStreamsInput")
    ListMetricStreamsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatch#ListMetricStreamsMaxResults", name: "ListMetricStreamsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    ListMetricStreamsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#ListMetricStreamsOutput", name: "ListMetricStreamsOutput")
    ListMetricsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#ListMetricsInput", name: "ListMetricsInput")
    ListMetricsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#ListMetricsOutput", name: "ListMetricsOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ManagedRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#ManagedRule", name: "ManagedRule")
    ManagedRuleDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#ManagedRuleDescription", name: "ManagedRuleDescription")
    ManagedRuleDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#ManagedRuleDescriptions", name: "ManagedRuleDescriptions")
    ManagedRuleState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#ManagedRuleState", name: "ManagedRuleState")
    ManagedRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#ManagedRules", name: "ManagedRules")
    MaxRecords = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatch#MaxRecords", name: "MaxRecords", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxReturnedResultsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatch#MaxReturnedResultsCount", name: "MaxReturnedResultsCount", traits: {"smithy.api#range" => {"min" => 1}})
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#Message", name: "Message")
    MessageData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#MessageData", name: "MessageData")
    MessageDataCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#MessageDataCode", name: "MessageDataCode")
    MessageDataValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#MessageDataValue", name: "MessageDataValue")
    Metric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#Metric", name: "Metric")
    MetricAlarm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#MetricAlarm", name: "MetricAlarm")
    MetricAlarms = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#MetricAlarms", name: "MetricAlarms")
    MetricCharacteristics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#MetricCharacteristics", name: "MetricCharacteristics")
    MetricData = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#MetricData", name: "MetricData")
    MetricDataQueries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#MetricDataQueries", name: "MetricDataQueries")
    MetricDataQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#MetricDataQuery", name: "MetricDataQuery")
    MetricDataResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#MetricDataResult", name: "MetricDataResult")
    MetricDataResultMessages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#MetricDataResultMessages", name: "MetricDataResultMessages")
    MetricDataResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#MetricDataResults", name: "MetricDataResults")
    MetricDatum = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#MetricDatum", name: "MetricDatum")
    MetricExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#MetricExpression", name: "MetricExpression", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    MetricId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#MetricId", name: "MetricId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    MetricLabel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#MetricLabel", name: "MetricLabel")
    MetricMathAnomalyDetector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#MetricMathAnomalyDetector", name: "MetricMathAnomalyDetector")
    MetricName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#MetricName", name: "MetricName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    MetricStat = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#MetricStat", name: "MetricStat")
    MetricStreamEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#MetricStreamEntries", name: "MetricStreamEntries")
    MetricStreamEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#MetricStreamEntry", name: "MetricStreamEntry")
    MetricStreamFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#MetricStreamFilter", name: "MetricStreamFilter")
    MetricStreamFilterMetricNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#MetricStreamFilterMetricNames", name: "MetricStreamFilterMetricNames")
    MetricStreamFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#MetricStreamFilters", name: "MetricStreamFilters")
    MetricStreamName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#MetricStreamName", name: "MetricStreamName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    MetricStreamNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#MetricStreamNames", name: "MetricStreamNames")
    MetricStreamOutputFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatch#MetricStreamOutputFormat", name: "MetricStreamOutputFormat", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    MetricStreamState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#MetricStreamState", name: "MetricStreamState")
    MetricStreamStatistic = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#MetricStreamStatistic", name: "MetricStreamStatistic")
    MetricStreamStatisticsAdditionalStatistics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#MetricStreamStatisticsAdditionalStatistics", name: "MetricStreamStatisticsAdditionalStatistics")
    MetricStreamStatisticsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#MetricStreamStatisticsConfiguration", name: "MetricStreamStatisticsConfiguration")
    MetricStreamStatisticsConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#MetricStreamStatisticsConfigurations", name: "MetricStreamStatisticsConfigurations")
    MetricStreamStatisticsIncludeMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#MetricStreamStatisticsIncludeMetrics", name: "MetricStreamStatisticsIncludeMetrics")
    MetricStreamStatisticsMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#MetricStreamStatisticsMetric", name: "MetricStreamStatisticsMetric")
    MetricWidget = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#MetricWidget", name: "MetricWidget")
    MetricWidgetImage = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.cloudwatch#MetricWidgetImage", name: "MetricWidgetImage")
    Metrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#Metrics", name: "Metrics")
    MissingRequiredParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#MissingRequiredParameterException", name: "MissingRequiredParameterException", traits: {"aws.protocols#awsQueryError" => {"code" => "MissingParameter", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Namespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#Namespace", name: "Namespace", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[^:]"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#NextToken", name: "NextToken")
    OutputFormat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#OutputFormat", name: "OutputFormat")
    OwningAccounts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#OwningAccounts", name: "OwningAccounts")
    PartialFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#PartialFailure", name: "PartialFailure")
    Period = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatch#Period", name: "Period", traits: {"smithy.api#range" => {"min" => 1}})
    PeriodicSpikes = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudwatch#PeriodicSpikes", name: "PeriodicSpikes")
    PutAnomalyDetectorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#PutAnomalyDetectorInput", name: "PutAnomalyDetectorInput")
    PutAnomalyDetectorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#PutAnomalyDetectorOutput", name: "PutAnomalyDetectorOutput")
    PutCompositeAlarmInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#PutCompositeAlarmInput", name: "PutCompositeAlarmInput")
    PutDashboardInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#PutDashboardInput", name: "PutDashboardInput")
    PutDashboardOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#PutDashboardOutput", name: "PutDashboardOutput")
    PutInsightRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#PutInsightRuleInput", name: "PutInsightRuleInput")
    PutInsightRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#PutInsightRuleOutput", name: "PutInsightRuleOutput")
    PutManagedInsightRulesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#PutManagedInsightRulesInput", name: "PutManagedInsightRulesInput")
    PutManagedInsightRulesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#PutManagedInsightRulesOutput", name: "PutManagedInsightRulesOutput")
    PutMetricAlarmInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#PutMetricAlarmInput", name: "PutMetricAlarmInput")
    PutMetricDataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#PutMetricDataInput", name: "PutMetricDataInput")
    PutMetricStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#PutMetricStreamInput", name: "PutMetricStreamInput")
    PutMetricStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#PutMetricStreamOutput", name: "PutMetricStreamOutput")
    Range = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#Range", name: "Range")
    RecentlyActive = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatch#RecentlyActive", name: "RecentlyActive")
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#ResourceId", name: "ResourceId")
    ResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#ResourceList", name: "ResourceList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#ResourceName", name: "ResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ResourceNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#ResourceNotFound", name: "ResourceNotFound", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFoundException", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#ResourceType", name: "ResourceType")
    ReturnData = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudwatch#ReturnData", name: "ReturnData")
    ScanBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatch#ScanBy", name: "ScanBy")
    SetAlarmStateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#SetAlarmStateInput", name: "SetAlarmStateInput")
    SingleMetricAnomalyDetector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#SingleMetricAnomalyDetector", name: "SingleMetricAnomalyDetector")
    Size = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatch#Size", name: "Size")
    StandardUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatch#StandardUnit", name: "StandardUnit")
    StartMetricStreamsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#StartMetricStreamsInput", name: "StartMetricStreamsInput")
    StartMetricStreamsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#StartMetricStreamsOutput", name: "StartMetricStreamsOutput")
    Stat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#Stat", name: "Stat")
    StateReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#StateReason", name: "StateReason", traits: {"smithy.api#length" => {"min" => 0, "max" => 1023}})
    StateReasonData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#StateReasonData", name: "StateReasonData", traits: {"smithy.api#length" => {"min" => 0, "max" => 4000}})
    StateValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatch#StateValue", name: "StateValue")
    Statistic = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatch#Statistic", name: "Statistic")
    StatisticSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#StatisticSet", name: "StatisticSet")
    Statistics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#Statistics", name: "Statistics", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    StatusCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatch#StatusCode", name: "StatusCode")
    StopMetricStreamsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#StopMetricStreamsInput", name: "StopMetricStreamsInput")
    StopMetricStreamsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#StopMetricStreamsOutput", name: "StopMetricStreamsOutput")
    StorageResolution = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatch#StorageResolution", name: "StorageResolution", traits: {"smithy.api#range" => {"min" => 1}})
    StrictEntityValidation = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudwatch#StrictEntityValidation", name: "StrictEntityValidation")
    SuppressorPeriod = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatch#SuppressorPeriod", name: "SuppressorPeriod")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#TagKeyList", name: "TagKeyList")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#TagList", name: "TagList")
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TemplateName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#TemplateName", name: "TemplateName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[0-9A-Za-z][\\-\\.\\_0-9A-Za-z]{0,126}[0-9A-Za-z]$"})
    Threshold = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.cloudwatch#Threshold", name: "Threshold")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.cloudwatch#Timestamp", name: "Timestamp")
    Timestamps = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#Timestamps", name: "Timestamps")
    TreatMissingData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatch#TreatMissingData", name: "TreatMissingData", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatch#UntagResourceOutput", name: "UntagResourceOutput")
    Values = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatch#Values", name: "Values")

    ActionsSuppressedBy.add_member(:wait_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WaitPeriod", traits: {"smithy.api#enumValue" => "WaitPeriod"}))
    ActionsSuppressedBy.add_member(:extension_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ExtensionPeriod", traits: {"smithy.api#enumValue" => "ExtensionPeriod"}))
    ActionsSuppressedBy.add_member(:alarm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Alarm", traits: {"smithy.api#enumValue" => "Alarm"}))
    AlarmContributor.add_member(:contributor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ContributorId, name: "ContributorId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AlarmContributor.add_member(:contributor_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ContributorAttributes, name: "ContributorAttributes", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AlarmContributor.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReason, name: "StateReason", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AlarmContributor.add_member(:state_transitioned_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StateTransitionedTimestamp"))
    AlarmContributor.type = Types::AlarmContributor
    AlarmContributors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmContributor, name: "member"))
    AlarmHistoryItem.add_member(:alarm_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmName, name: "AlarmName"))
    AlarmHistoryItem.add_member(:alarm_contributor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ContributorId, name: "AlarmContributorId"))
    AlarmHistoryItem.add_member(:alarm_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmType, name: "AlarmType"))
    AlarmHistoryItem.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp"))
    AlarmHistoryItem.add_member(:history_item_type, ::Smithy::Schema::Shapes::MemberShape.new(target: HistoryItemType, name: "HistoryItemType"))
    AlarmHistoryItem.add_member(:history_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: HistorySummary, name: "HistorySummary"))
    AlarmHistoryItem.add_member(:history_data, ::Smithy::Schema::Shapes::MemberShape.new(target: HistoryData, name: "HistoryData"))
    AlarmHistoryItem.add_member(:alarm_contributor_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ContributorAttributes, name: "AlarmContributorAttributes"))
    AlarmHistoryItem.type = Types::AlarmHistoryItem
    AlarmHistoryItems.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmHistoryItem, name: "member"))
    AlarmNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmName, name: "member"))
    AlarmType.add_member(:composite_alarm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CompositeAlarm", traits: {"smithy.api#enumValue" => "CompositeAlarm"}))
    AlarmType.add_member(:metric_alarm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MetricAlarm", traits: {"smithy.api#enumValue" => "MetricAlarm"}))
    AlarmTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmType, name: "member"))
    AnomalyDetector.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "Namespace", traits: {"smithy.api#deprecated" => {"message" => "Use SingleMetricAnomalyDetector.Namespace property."}}))
    AnomalyDetector.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName", traits: {"smithy.api#deprecated" => {"message" => "Use SingleMetricAnomalyDetector.MetricName property."}}))
    AnomalyDetector.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimensions, name: "Dimensions", traits: {"smithy.api#deprecated" => {"message" => "Use SingleMetricAnomalyDetector.Dimensions property."}}))
    AnomalyDetector.add_member(:stat, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyDetectorMetricStat, name: "Stat", traits: {"smithy.api#deprecated" => {"message" => "Use SingleMetricAnomalyDetector.Stat property."}}))
    AnomalyDetector.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyDetectorConfiguration, name: "Configuration"))
    AnomalyDetector.add_member(:state_value, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyDetectorStateValue, name: "StateValue"))
    AnomalyDetector.add_member(:metric_characteristics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricCharacteristics, name: "MetricCharacteristics"))
    AnomalyDetector.add_member(:single_metric_anomaly_detector, ::Smithy::Schema::Shapes::MemberShape.new(target: SingleMetricAnomalyDetector, name: "SingleMetricAnomalyDetector"))
    AnomalyDetector.add_member(:metric_math_anomaly_detector, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricMathAnomalyDetector, name: "MetricMathAnomalyDetector"))
    AnomalyDetector.type = Types::AnomalyDetector
    AnomalyDetectorConfiguration.add_member(:excluded_time_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyDetectorExcludedTimeRanges, name: "ExcludedTimeRanges"))
    AnomalyDetectorConfiguration.add_member(:metric_timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyDetectorMetricTimezone, name: "MetricTimezone"))
    AnomalyDetectorConfiguration.type = Types::AnomalyDetectorConfiguration
    AnomalyDetectorExcludedTimeRanges.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Range, name: "member"))
    AnomalyDetectorStateValue.add_member(:pending_training, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_TRAINING", traits: {"smithy.api#enumValue" => "PENDING_TRAINING"}))
    AnomalyDetectorStateValue.add_member(:trained_insufficient_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRAINED_INSUFFICIENT_DATA", traits: {"smithy.api#enumValue" => "TRAINED_INSUFFICIENT_DATA"}))
    AnomalyDetectorStateValue.add_member(:trained, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRAINED", traits: {"smithy.api#enumValue" => "TRAINED"}))
    AnomalyDetectorType.add_member(:single_metric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE_METRIC", traits: {"smithy.api#enumValue" => "SINGLE_METRIC"}))
    AnomalyDetectorType.add_member(:metric_math, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "METRIC_MATH", traits: {"smithy.api#enumValue" => "METRIC_MATH"}))
    AnomalyDetectorTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyDetectorType, name: "member"))
    AnomalyDetectors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyDetector, name: "member"))
    BatchFailures.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PartialFailure, name: "member"))
    ComparisonOperator.add_member(:greater_than_or_equal_to_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GreaterThanOrEqualToThreshold", traits: {"smithy.api#enumValue" => "GreaterThanOrEqualToThreshold"}))
    ComparisonOperator.add_member(:greater_than_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GreaterThanThreshold", traits: {"smithy.api#enumValue" => "GreaterThanThreshold"}))
    ComparisonOperator.add_member(:less_than_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LessThanThreshold", traits: {"smithy.api#enumValue" => "LessThanThreshold"}))
    ComparisonOperator.add_member(:less_than_or_equal_to_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LessThanOrEqualToThreshold", traits: {"smithy.api#enumValue" => "LessThanOrEqualToThreshold"}))
    ComparisonOperator.add_member(:less_than_lower_or_greater_than_upper_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LessThanLowerOrGreaterThanUpperThreshold", traits: {"smithy.api#enumValue" => "LessThanLowerOrGreaterThanUpperThreshold"}))
    ComparisonOperator.add_member(:less_than_lower_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LessThanLowerThreshold", traits: {"smithy.api#enumValue" => "LessThanLowerThreshold"}))
    ComparisonOperator.add_member(:greater_than_upper_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GreaterThanUpperThreshold", traits: {"smithy.api#enumValue" => "GreaterThanUpperThreshold"}))
    CompositeAlarm.add_member(:actions_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionsEnabled, name: "ActionsEnabled"))
    CompositeAlarm.add_member(:alarm_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceList, name: "AlarmActions"))
    CompositeAlarm.add_member(:alarm_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmArn, name: "AlarmArn"))
    CompositeAlarm.add_member(:alarm_configuration_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "AlarmConfigurationUpdatedTimestamp"))
    CompositeAlarm.add_member(:alarm_description, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmDescription, name: "AlarmDescription"))
    CompositeAlarm.add_member(:alarm_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmName, name: "AlarmName"))
    CompositeAlarm.add_member(:alarm_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmRule, name: "AlarmRule"))
    CompositeAlarm.add_member(:insufficient_data_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceList, name: "InsufficientDataActions"))
    CompositeAlarm.add_member(:ok_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceList, name: "OKActions"))
    CompositeAlarm.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReason, name: "StateReason"))
    CompositeAlarm.add_member(:state_reason_data, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReasonData, name: "StateReasonData"))
    CompositeAlarm.add_member(:state_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StateUpdatedTimestamp"))
    CompositeAlarm.add_member(:state_value, ::Smithy::Schema::Shapes::MemberShape.new(target: StateValue, name: "StateValue"))
    CompositeAlarm.add_member(:state_transitioned_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StateTransitionedTimestamp"))
    CompositeAlarm.add_member(:actions_suppressed_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionsSuppressedBy, name: "ActionsSuppressedBy"))
    CompositeAlarm.add_member(:actions_suppressed_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionsSuppressedReason, name: "ActionsSuppressedReason"))
    CompositeAlarm.add_member(:actions_suppressor, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmArn, name: "ActionsSuppressor"))
    CompositeAlarm.add_member(:actions_suppressor_wait_period, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressorPeriod, name: "ActionsSuppressorWaitPeriod"))
    CompositeAlarm.add_member(:actions_suppressor_extension_period, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressorPeriod, name: "ActionsSuppressorExtensionPeriod"))
    CompositeAlarm.type = Types::CompositeAlarm
    CompositeAlarms.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositeAlarm, name: "member"))
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: FaultDescription, name: "Message"))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ConflictException.type = Types::ConflictException
    ContributorAttributes.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "key"))
    ContributorAttributes.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "value"))
    Counts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DatapointValue, name: "member"))
    DashboardEntries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardEntry, name: "member"))
    DashboardEntry.add_member(:dashboard_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardName, name: "DashboardName"))
    DashboardEntry.add_member(:dashboard_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardArn, name: "DashboardArn"))
    DashboardEntry.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModified, name: "LastModified"))
    DashboardEntry.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: Size, name: "Size"))
    DashboardEntry.type = Types::DashboardEntry
    DashboardInvalidInputError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardErrorMessage, name: "message"))
    DashboardInvalidInputError.add_member(:dashboard_validation_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardValidationMessages, name: "dashboardValidationMessages"))
    DashboardInvalidInputError.type = Types::DashboardInvalidInputError
    DashboardNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardName, name: "member"))
    DashboardNotFoundError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardErrorMessage, name: "message"))
    DashboardNotFoundError.type = Types::DashboardNotFoundError
    DashboardValidationMessage.add_member(:data_path, ::Smithy::Schema::Shapes::MemberShape.new(target: DataPath, name: "DataPath"))
    DashboardValidationMessage.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    DashboardValidationMessage.type = Types::DashboardValidationMessage
    DashboardValidationMessages.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardValidationMessage, name: "member"))
    Datapoint.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp"))
    Datapoint.add_member(:sample_count, ::Smithy::Schema::Shapes::MemberShape.new(target: DatapointValue, name: "SampleCount"))
    Datapoint.add_member(:average, ::Smithy::Schema::Shapes::MemberShape.new(target: DatapointValue, name: "Average"))
    Datapoint.add_member(:sum, ::Smithy::Schema::Shapes::MemberShape.new(target: DatapointValue, name: "Sum"))
    Datapoint.add_member(:minimum, ::Smithy::Schema::Shapes::MemberShape.new(target: DatapointValue, name: "Minimum"))
    Datapoint.add_member(:maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: DatapointValue, name: "Maximum"))
    Datapoint.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardUnit, name: "Unit"))
    Datapoint.add_member(:extended_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: DatapointValueMap, name: "ExtendedStatistics"))
    Datapoint.type = Types::Datapoint
    DatapointValueMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtendedStatistic, name: "key"))
    DatapointValueMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DatapointValue, name: "value"))
    DatapointValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DatapointValue, name: "member"))
    Datapoints.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Datapoint, name: "member"))
    DeleteAlarmsInput.add_member(:alarm_names, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmNames, name: "AlarmNames", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteAlarmsInput.type = Types::DeleteAlarmsInput
    DeleteAnomalyDetectorInput.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "Namespace", traits: {"smithy.api#deprecated" => {"message" => "Use SingleMetricAnomalyDetector."}}))
    DeleteAnomalyDetectorInput.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName", traits: {"smithy.api#deprecated" => {"message" => "Use SingleMetricAnomalyDetector."}}))
    DeleteAnomalyDetectorInput.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimensions, name: "Dimensions", traits: {"smithy.api#deprecated" => {"message" => "Use SingleMetricAnomalyDetector."}}))
    DeleteAnomalyDetectorInput.add_member(:stat, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyDetectorMetricStat, name: "Stat", traits: {"smithy.api#deprecated" => {"message" => "Use SingleMetricAnomalyDetector."}}))
    DeleteAnomalyDetectorInput.add_member(:single_metric_anomaly_detector, ::Smithy::Schema::Shapes::MemberShape.new(target: SingleMetricAnomalyDetector, name: "SingleMetricAnomalyDetector"))
    DeleteAnomalyDetectorInput.add_member(:metric_math_anomaly_detector, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricMathAnomalyDetector, name: "MetricMathAnomalyDetector"))
    DeleteAnomalyDetectorInput.type = Types::DeleteAnomalyDetectorInput
    DeleteAnomalyDetectorOutput.type = Types::DeleteAnomalyDetectorOutput
    DeleteDashboardsInput.add_member(:dashboard_names, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardNames, name: "DashboardNames", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDashboardsInput.type = Types::DeleteDashboardsInput
    DeleteDashboardsOutput.type = Types::DeleteDashboardsOutput
    DeleteInsightRulesInput.add_member(:rule_names, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleNames, name: "RuleNames", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteInsightRulesInput.type = Types::DeleteInsightRulesInput
    DeleteInsightRulesOutput.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchFailures, name: "Failures"))
    DeleteInsightRulesOutput.type = Types::DeleteInsightRulesOutput
    DeleteMetricStreamInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStreamName, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteMetricStreamInput.type = Types::DeleteMetricStreamInput
    DeleteMetricStreamOutput.type = Types::DeleteMetricStreamOutput
    DescribeAlarmContributorsInput.add_member(:alarm_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmName, name: "AlarmName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeAlarmContributorsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeAlarmContributorsInput.type = Types::DescribeAlarmContributorsInput
    DescribeAlarmContributorsOutput.add_member(:alarm_contributors, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmContributors, name: "AlarmContributors", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeAlarmContributorsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeAlarmContributorsOutput.type = Types::DescribeAlarmContributorsOutput
    DescribeAlarmHistoryInput.add_member(:alarm_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmName, name: "AlarmName"))
    DescribeAlarmHistoryInput.add_member(:alarm_contributor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ContributorId, name: "AlarmContributorId"))
    DescribeAlarmHistoryInput.add_member(:alarm_types, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmTypes, name: "AlarmTypes"))
    DescribeAlarmHistoryInput.add_member(:history_item_type, ::Smithy::Schema::Shapes::MemberShape.new(target: HistoryItemType, name: "HistoryItemType"))
    DescribeAlarmHistoryInput.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartDate"))
    DescribeAlarmHistoryInput.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndDate"))
    DescribeAlarmHistoryInput.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRecords, name: "MaxRecords"))
    DescribeAlarmHistoryInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeAlarmHistoryInput.add_member(:scan_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanBy, name: "ScanBy"))
    DescribeAlarmHistoryInput.type = Types::DescribeAlarmHistoryInput
    DescribeAlarmHistoryOutput.add_member(:alarm_history_items, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmHistoryItems, name: "AlarmHistoryItems"))
    DescribeAlarmHistoryOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeAlarmHistoryOutput.type = Types::DescribeAlarmHistoryOutput
    DescribeAlarmsForMetricInput.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeAlarmsForMetricInput.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "Namespace", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeAlarmsForMetricInput.add_member(:statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: Statistic, name: "Statistic"))
    DescribeAlarmsForMetricInput.add_member(:extended_statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtendedStatistic, name: "ExtendedStatistic"))
    DescribeAlarmsForMetricInput.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimensions, name: "Dimensions"))
    DescribeAlarmsForMetricInput.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: Period, name: "Period"))
    DescribeAlarmsForMetricInput.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardUnit, name: "Unit"))
    DescribeAlarmsForMetricInput.type = Types::DescribeAlarmsForMetricInput
    DescribeAlarmsForMetricOutput.add_member(:metric_alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricAlarms, name: "MetricAlarms"))
    DescribeAlarmsForMetricOutput.type = Types::DescribeAlarmsForMetricOutput
    DescribeAlarmsInput.add_member(:alarm_names, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmNames, name: "AlarmNames"))
    DescribeAlarmsInput.add_member(:alarm_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmNamePrefix, name: "AlarmNamePrefix"))
    DescribeAlarmsInput.add_member(:alarm_types, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmTypes, name: "AlarmTypes"))
    DescribeAlarmsInput.add_member(:children_of_alarm_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmName, name: "ChildrenOfAlarmName"))
    DescribeAlarmsInput.add_member(:parents_of_alarm_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmName, name: "ParentsOfAlarmName"))
    DescribeAlarmsInput.add_member(:state_value, ::Smithy::Schema::Shapes::MemberShape.new(target: StateValue, name: "StateValue"))
    DescribeAlarmsInput.add_member(:action_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionPrefix, name: "ActionPrefix"))
    DescribeAlarmsInput.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRecords, name: "MaxRecords"))
    DescribeAlarmsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeAlarmsInput.type = Types::DescribeAlarmsInput
    DescribeAlarmsOutput.add_member(:composite_alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositeAlarms, name: "CompositeAlarms"))
    DescribeAlarmsOutput.add_member(:metric_alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricAlarms, name: "MetricAlarms"))
    DescribeAlarmsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeAlarmsOutput.type = Types::DescribeAlarmsOutput
    DescribeAnomalyDetectorsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeAnomalyDetectorsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxReturnedResultsCount, name: "MaxResults"))
    DescribeAnomalyDetectorsInput.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "Namespace"))
    DescribeAnomalyDetectorsInput.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName"))
    DescribeAnomalyDetectorsInput.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimensions, name: "Dimensions"))
    DescribeAnomalyDetectorsInput.add_member(:anomaly_detector_types, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyDetectorTypes, name: "AnomalyDetectorTypes"))
    DescribeAnomalyDetectorsInput.type = Types::DescribeAnomalyDetectorsInput
    DescribeAnomalyDetectorsOutput.add_member(:anomaly_detectors, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyDetectors, name: "AnomalyDetectors"))
    DescribeAnomalyDetectorsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeAnomalyDetectorsOutput.type = Types::DescribeAnomalyDetectorsOutput
    DescribeInsightRulesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeInsightRulesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleMaxResults, name: "MaxResults"))
    DescribeInsightRulesInput.type = Types::DescribeInsightRulesInput
    DescribeInsightRulesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeInsightRulesOutput.add_member(:insight_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRules, name: "InsightRules"))
    DescribeInsightRulesOutput.type = Types::DescribeInsightRulesOutput
    Dimension.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionName, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Dimension.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionValue, name: "Value", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Dimension.type = Types::Dimension
    DimensionFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionName, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DimensionFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionValue, name: "Value"))
    DimensionFilter.type = Types::DimensionFilter
    DimensionFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionFilter, name: "member"))
    Dimensions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimension, name: "member"))
    DisableAlarmActionsInput.add_member(:alarm_names, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmNames, name: "AlarmNames", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisableAlarmActionsInput.type = Types::DisableAlarmActionsInput
    DisableInsightRulesInput.add_member(:rule_names, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleNames, name: "RuleNames", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisableInsightRulesInput.type = Types::DisableInsightRulesInput
    DisableInsightRulesOutput.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchFailures, name: "Failures"))
    DisableInsightRulesOutput.type = Types::DisableInsightRulesOutput
    EnableAlarmActionsInput.add_member(:alarm_names, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmNames, name: "AlarmNames", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EnableAlarmActionsInput.type = Types::EnableAlarmActionsInput
    EnableInsightRulesInput.add_member(:rule_names, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleNames, name: "RuleNames", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EnableInsightRulesInput.type = Types::EnableInsightRulesInput
    EnableInsightRulesOutput.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchFailures, name: "Failures"))
    EnableInsightRulesOutput.type = Types::EnableInsightRulesOutput
    Entity.add_member(:key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityKeyAttributesMap, name: "KeyAttributes"))
    Entity.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityAttributesMap, name: "Attributes"))
    Entity.type = Types::Entity
    EntityAttributesMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityAttributesMapKeyString, name: "key"))
    EntityAttributesMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityAttributesMapValueString, name: "value"))
    EntityKeyAttributesMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityKeyAttributesMapKeyString, name: "key"))
    EntityKeyAttributesMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityKeyAttributesMapValueString, name: "value"))
    EntityMetricData.add_member(:entity, ::Smithy::Schema::Shapes::MemberShape.new(target: Entity, name: "Entity"))
    EntityMetricData.add_member(:metric_data, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricData, name: "MetricData"))
    EntityMetricData.type = Types::EntityMetricData
    EntityMetricDataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityMetricData, name: "member"))
    EvaluationState.add_member(:partial_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTIAL_DATA", traits: {"smithy.api#enumValue" => "PARTIAL_DATA"}))
    ExtendedStatistics.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtendedStatistic, name: "member"))
    GetDashboardInput.add_member(:dashboard_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardName, name: "DashboardName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetDashboardInput.type = Types::GetDashboardInput
    GetDashboardOutput.add_member(:dashboard_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardArn, name: "DashboardArn"))
    GetDashboardOutput.add_member(:dashboard_body, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardBody, name: "DashboardBody"))
    GetDashboardOutput.add_member(:dashboard_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardName, name: "DashboardName"))
    GetDashboardOutput.type = Types::GetDashboardOutput
    GetInsightRuleReportInput.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleName, name: "RuleName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetInsightRuleReportInput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetInsightRuleReportInput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetInsightRuleReportInput.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: Period, name: "Period", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetInsightRuleReportInput.add_member(:max_contributor_count, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleUnboundInteger, name: "MaxContributorCount"))
    GetInsightRuleReportInput.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleMetricList, name: "Metrics"))
    GetInsightRuleReportInput.add_member(:order_by, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleOrderBy, name: "OrderBy"))
    GetInsightRuleReportInput.type = Types::GetInsightRuleReportInput
    GetInsightRuleReportOutput.add_member(:key_labels, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleContributorKeyLabels, name: "KeyLabels"))
    GetInsightRuleReportOutput.add_member(:aggregation_statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleAggregationStatistic, name: "AggregationStatistic"))
    GetInsightRuleReportOutput.add_member(:aggregate_value, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleUnboundDouble, name: "AggregateValue"))
    GetInsightRuleReportOutput.add_member(:approximate_unique_count, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleUnboundLong, name: "ApproximateUniqueCount"))
    GetInsightRuleReportOutput.add_member(:contributors, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleContributors, name: "Contributors"))
    GetInsightRuleReportOutput.add_member(:metric_datapoints, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleMetricDatapoints, name: "MetricDatapoints"))
    GetInsightRuleReportOutput.type = Types::GetInsightRuleReportOutput
    GetMetricDataInput.add_member(:metric_data_queries, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataQueries, name: "MetricDataQueries", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetMetricDataInput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetMetricDataInput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetMetricDataInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetMetricDataInput.add_member(:scan_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanBy, name: "ScanBy"))
    GetMetricDataInput.add_member(:max_datapoints, ::Smithy::Schema::Shapes::MemberShape.new(target: GetMetricDataMaxDatapoints, name: "MaxDatapoints"))
    GetMetricDataInput.add_member(:label_options, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelOptions, name: "LabelOptions"))
    GetMetricDataInput.type = Types::GetMetricDataInput
    GetMetricDataOutput.add_member(:metric_data_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataResults, name: "MetricDataResults"))
    GetMetricDataOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetMetricDataOutput.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataResultMessages, name: "Messages"))
    GetMetricDataOutput.type = Types::GetMetricDataOutput
    GetMetricStatisticsInput.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "Namespace", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetMetricStatisticsInput.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetMetricStatisticsInput.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimensions, name: "Dimensions"))
    GetMetricStatisticsInput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetMetricStatisticsInput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetMetricStatisticsInput.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: Period, name: "Period", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetMetricStatisticsInput.add_member(:statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: Statistics, name: "Statistics"))
    GetMetricStatisticsInput.add_member(:extended_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtendedStatistics, name: "ExtendedStatistics"))
    GetMetricStatisticsInput.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardUnit, name: "Unit"))
    GetMetricStatisticsInput.type = Types::GetMetricStatisticsInput
    GetMetricStatisticsOutput.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricLabel, name: "Label"))
    GetMetricStatisticsOutput.add_member(:datapoints, ::Smithy::Schema::Shapes::MemberShape.new(target: Datapoints, name: "Datapoints"))
    GetMetricStatisticsOutput.type = Types::GetMetricStatisticsOutput
    GetMetricStreamInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStreamName, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetMetricStreamInput.type = Types::GetMetricStreamInput
    GetMetricStreamOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "Arn"))
    GetMetricStreamOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStreamName, name: "Name"))
    GetMetricStreamOutput.add_member(:include_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStreamFilters, name: "IncludeFilters"))
    GetMetricStreamOutput.add_member(:exclude_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStreamFilters, name: "ExcludeFilters"))
    GetMetricStreamOutput.add_member(:firehose_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "FirehoseArn"))
    GetMetricStreamOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "RoleArn"))
    GetMetricStreamOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStreamState, name: "State"))
    GetMetricStreamOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    GetMetricStreamOutput.add_member(:last_update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdateDate"))
    GetMetricStreamOutput.add_member(:output_format, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStreamOutputFormat, name: "OutputFormat"))
    GetMetricStreamOutput.add_member(:statistics_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStreamStatisticsConfigurations, name: "StatisticsConfigurations"))
    GetMetricStreamOutput.add_member(:include_linked_accounts_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeLinkedAccountsMetrics, name: "IncludeLinkedAccountsMetrics"))
    GetMetricStreamOutput.type = Types::GetMetricStreamOutput
    GetMetricWidgetImageInput.add_member(:metric_widget, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricWidget, name: "MetricWidget", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetMetricWidgetImageInput.add_member(:output_format, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputFormat, name: "OutputFormat"))
    GetMetricWidgetImageInput.type = Types::GetMetricWidgetImageInput
    GetMetricWidgetImageOutput.add_member(:metric_widget_image, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricWidgetImage, name: "MetricWidgetImage"))
    GetMetricWidgetImageOutput.type = Types::GetMetricWidgetImageOutput
    HistoryItemType.add_member(:configuration_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ConfigurationUpdate", traits: {"smithy.api#enumValue" => "ConfigurationUpdate"}))
    HistoryItemType.add_member(:state_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StateUpdate", traits: {"smithy.api#enumValue" => "StateUpdate"}))
    HistoryItemType.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Action", traits: {"smithy.api#enumValue" => "Action"}))
    HistoryItemType.add_member(:alarm_contributor_state_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AlarmContributorStateUpdate", traits: {"smithy.api#enumValue" => "AlarmContributorStateUpdate"}))
    HistoryItemType.add_member(:alarm_contributor_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AlarmContributorAction", traits: {"smithy.api#enumValue" => "AlarmContributorAction"}))
    InsightRule.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleName, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InsightRule.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleState, name: "State", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InsightRule.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleSchema, name: "Schema", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InsightRule.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleDefinition, name: "Definition", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InsightRule.add_member(:managed_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleIsManaged, name: "ManagedRule"))
    InsightRule.add_member(:apply_on_transformed_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleOnTransformedLogs, name: "ApplyOnTransformedLogs"))
    InsightRule.type = Types::InsightRule
    InsightRuleContributor.add_member(:keys, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleContributorKeys, name: "Keys", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InsightRuleContributor.add_member(:approximate_aggregate_value, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleUnboundDouble, name: "ApproximateAggregateValue", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InsightRuleContributor.add_member(:datapoints, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleContributorDatapoints, name: "Datapoints", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InsightRuleContributor.type = Types::InsightRuleContributor
    InsightRuleContributorDatapoint.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InsightRuleContributorDatapoint.add_member(:approximate_value, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleUnboundDouble, name: "ApproximateValue", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InsightRuleContributorDatapoint.type = Types::InsightRuleContributorDatapoint
    InsightRuleContributorDatapoints.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleContributorDatapoint, name: "member"))
    InsightRuleContributorKeyLabels.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleContributorKeyLabel, name: "member"))
    InsightRuleContributorKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleContributorKey, name: "member"))
    InsightRuleContributors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleContributor, name: "member"))
    InsightRuleMetricDatapoint.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InsightRuleMetricDatapoint.add_member(:unique_contributors, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleUnboundDouble, name: "UniqueContributors"))
    InsightRuleMetricDatapoint.add_member(:max_contributor_value, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleUnboundDouble, name: "MaxContributorValue"))
    InsightRuleMetricDatapoint.add_member(:sample_count, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleUnboundDouble, name: "SampleCount"))
    InsightRuleMetricDatapoint.add_member(:average, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleUnboundDouble, name: "Average"))
    InsightRuleMetricDatapoint.add_member(:sum, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleUnboundDouble, name: "Sum"))
    InsightRuleMetricDatapoint.add_member(:minimum, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleUnboundDouble, name: "Minimum"))
    InsightRuleMetricDatapoint.add_member(:maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleUnboundDouble, name: "Maximum"))
    InsightRuleMetricDatapoint.type = Types::InsightRuleMetricDatapoint
    InsightRuleMetricDatapoints.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleMetricDatapoint, name: "member"))
    InsightRuleMetricList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleMetricName, name: "member"))
    InsightRuleNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleName, name: "member"))
    InsightRules.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRule, name: "member"))
    InternalServiceFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: FaultDescription, name: "Message"))
    InternalServiceFault.type = Types::InternalServiceFault
    InvalidFormatFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidFormatFault.type = Types::InvalidFormatFault
    InvalidNextToken.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidNextToken.type = Types::InvalidNextToken
    InvalidParameterCombinationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsQueryErrorMessage, name: "message"))
    InvalidParameterCombinationException.type = Types::InvalidParameterCombinationException
    InvalidParameterValueException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsQueryErrorMessage, name: "message"))
    InvalidParameterValueException.type = Types::InvalidParameterValueException
    LabelOptions.add_member(:timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: GetMetricDataLabelTimezone, name: "Timezone"))
    LabelOptions.type = Types::LabelOptions
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: FaultDescription, name: "Message"))
    LimitExceededException.type = Types::LimitExceededException
    LimitExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    LimitExceededFault.type = Types::LimitExceededFault
    ListDashboardsInput.add_member(:dashboard_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardNamePrefix, name: "DashboardNamePrefix"))
    ListDashboardsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDashboardsInput.type = Types::ListDashboardsInput
    ListDashboardsOutput.add_member(:dashboard_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardEntries, name: "DashboardEntries"))
    ListDashboardsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDashboardsOutput.type = Types::ListDashboardsOutput
    ListManagedInsightRulesInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListManagedInsightRulesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListManagedInsightRulesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleMaxResults, name: "MaxResults"))
    ListManagedInsightRulesInput.type = Types::ListManagedInsightRulesInput
    ListManagedInsightRulesOutput.add_member(:managed_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedRuleDescriptions, name: "ManagedRules"))
    ListManagedInsightRulesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListManagedInsightRulesOutput.type = Types::ListManagedInsightRulesOutput
    ListMetricStreamsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListMetricStreamsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListMetricStreamsMaxResults, name: "MaxResults"))
    ListMetricStreamsInput.type = Types::ListMetricStreamsInput
    ListMetricStreamsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListMetricStreamsOutput.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStreamEntries, name: "Entries"))
    ListMetricStreamsOutput.type = Types::ListMetricStreamsOutput
    ListMetricsInput.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "Namespace"))
    ListMetricsInput.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName"))
    ListMetricsInput.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionFilters, name: "Dimensions"))
    ListMetricsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListMetricsInput.add_member(:recently_active, ::Smithy::Schema::Shapes::MemberShape.new(target: RecentlyActive, name: "RecentlyActive"))
    ListMetricsInput.add_member(:include_linked_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeLinkedAccounts, name: "IncludeLinkedAccounts"))
    ListMetricsInput.add_member(:owning_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "OwningAccount"))
    ListMetricsInput.type = Types::ListMetricsInput
    ListMetricsOutput.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: Metrics, name: "Metrics"))
    ListMetricsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListMetricsOutput.add_member(:owning_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: OwningAccounts, name: "OwningAccounts"))
    ListMetricsOutput.type = Types::ListMetricsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ManagedRule.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, name: "TemplateName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ManagedRule.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ManagedRule.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ManagedRule.type = Types::ManagedRule
    ManagedRuleDescription.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, name: "TemplateName"))
    ManagedRuleDescription.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN"))
    ManagedRuleDescription.add_member(:rule_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedRuleState, name: "RuleState"))
    ManagedRuleDescription.type = Types::ManagedRuleDescription
    ManagedRuleDescriptions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedRuleDescription, name: "member"))
    ManagedRuleState.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleName, name: "RuleName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ManagedRuleState.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleState, name: "State", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ManagedRuleState.type = Types::ManagedRuleState
    ManagedRules.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedRule, name: "member"))
    MessageData.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageDataCode, name: "Code"))
    MessageData.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageDataValue, name: "Value"))
    MessageData.type = Types::MessageData
    Metric.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "Namespace"))
    Metric.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName"))
    Metric.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimensions, name: "Dimensions"))
    Metric.type = Types::Metric
    MetricAlarm.add_member(:alarm_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmName, name: "AlarmName"))
    MetricAlarm.add_member(:alarm_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmArn, name: "AlarmArn"))
    MetricAlarm.add_member(:alarm_description, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmDescription, name: "AlarmDescription"))
    MetricAlarm.add_member(:alarm_configuration_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "AlarmConfigurationUpdatedTimestamp"))
    MetricAlarm.add_member(:actions_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionsEnabled, name: "ActionsEnabled"))
    MetricAlarm.add_member(:ok_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceList, name: "OKActions"))
    MetricAlarm.add_member(:alarm_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceList, name: "AlarmActions"))
    MetricAlarm.add_member(:insufficient_data_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceList, name: "InsufficientDataActions"))
    MetricAlarm.add_member(:state_value, ::Smithy::Schema::Shapes::MemberShape.new(target: StateValue, name: "StateValue"))
    MetricAlarm.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReason, name: "StateReason"))
    MetricAlarm.add_member(:state_reason_data, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReasonData, name: "StateReasonData"))
    MetricAlarm.add_member(:state_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StateUpdatedTimestamp"))
    MetricAlarm.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName"))
    MetricAlarm.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "Namespace"))
    MetricAlarm.add_member(:statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: Statistic, name: "Statistic"))
    MetricAlarm.add_member(:extended_statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtendedStatistic, name: "ExtendedStatistic"))
    MetricAlarm.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimensions, name: "Dimensions"))
    MetricAlarm.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: Period, name: "Period"))
    MetricAlarm.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardUnit, name: "Unit"))
    MetricAlarm.add_member(:evaluation_periods, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationPeriods, name: "EvaluationPeriods"))
    MetricAlarm.add_member(:datapoints_to_alarm, ::Smithy::Schema::Shapes::MemberShape.new(target: DatapointsToAlarm, name: "DatapointsToAlarm"))
    MetricAlarm.add_member(:threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: Threshold, name: "Threshold"))
    MetricAlarm.add_member(:comparison_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparisonOperator, name: "ComparisonOperator"))
    MetricAlarm.add_member(:treat_missing_data, ::Smithy::Schema::Shapes::MemberShape.new(target: TreatMissingData, name: "TreatMissingData"))
    MetricAlarm.add_member(:evaluate_low_sample_count_percentile, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluateLowSampleCountPercentile, name: "EvaluateLowSampleCountPercentile"))
    MetricAlarm.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataQueries, name: "Metrics"))
    MetricAlarm.add_member(:threshold_metric_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricId, name: "ThresholdMetricId"))
    MetricAlarm.add_member(:evaluation_state, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationState, name: "EvaluationState"))
    MetricAlarm.add_member(:state_transitioned_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StateTransitionedTimestamp"))
    MetricAlarm.type = Types::MetricAlarm
    MetricAlarms.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricAlarm, name: "member"))
    MetricCharacteristics.add_member(:periodic_spikes, ::Smithy::Schema::Shapes::MemberShape.new(target: PeriodicSpikes, name: "PeriodicSpikes"))
    MetricCharacteristics.type = Types::MetricCharacteristics
    MetricData.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDatum, name: "member"))
    MetricDataQueries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataQuery, name: "member"))
    MetricDataQuery.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricId, name: "Id", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricDataQuery.add_member(:metric_stat, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStat, name: "MetricStat"))
    MetricDataQuery.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricExpression, name: "Expression"))
    MetricDataQuery.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricLabel, name: "Label"))
    MetricDataQuery.add_member(:return_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnData, name: "ReturnData"))
    MetricDataQuery.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: Period, name: "Period"))
    MetricDataQuery.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    MetricDataQuery.type = Types::MetricDataQuery
    MetricDataResult.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricId, name: "Id"))
    MetricDataResult.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricLabel, name: "Label"))
    MetricDataResult.add_member(:timestamps, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamps, name: "Timestamps"))
    MetricDataResult.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: DatapointValues, name: "Values"))
    MetricDataResult.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "StatusCode"))
    MetricDataResult.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataResultMessages, name: "Messages"))
    MetricDataResult.type = Types::MetricDataResult
    MetricDataResultMessages.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageData, name: "member"))
    MetricDataResults.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataResult, name: "member"))
    MetricDatum.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricDatum.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimensions, name: "Dimensions"))
    MetricDatum.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp"))
    MetricDatum.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DatapointValue, name: "Value"))
    MetricDatum.add_member(:statistic_values, ::Smithy::Schema::Shapes::MemberShape.new(target: StatisticSet, name: "StatisticValues"))
    MetricDatum.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: Values, name: "Values"))
    MetricDatum.add_member(:counts, ::Smithy::Schema::Shapes::MemberShape.new(target: Counts, name: "Counts"))
    MetricDatum.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardUnit, name: "Unit"))
    MetricDatum.add_member(:storage_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageResolution, name: "StorageResolution"))
    MetricDatum.type = Types::MetricDatum
    MetricMathAnomalyDetector.add_member(:metric_data_queries, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataQueries, name: "MetricDataQueries"))
    MetricMathAnomalyDetector.type = Types::MetricMathAnomalyDetector
    MetricStat.add_member(:metric, ::Smithy::Schema::Shapes::MemberShape.new(target: Metric, name: "Metric", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricStat.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: Period, name: "Period", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricStat.add_member(:stat, ::Smithy::Schema::Shapes::MemberShape.new(target: Stat, name: "Stat", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricStat.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardUnit, name: "Unit"))
    MetricStat.type = Types::MetricStat
    MetricStreamEntries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStreamEntry, name: "member"))
    MetricStreamEntry.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "Arn"))
    MetricStreamEntry.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    MetricStreamEntry.add_member(:last_update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdateDate"))
    MetricStreamEntry.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStreamName, name: "Name"))
    MetricStreamEntry.add_member(:firehose_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "FirehoseArn"))
    MetricStreamEntry.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStreamState, name: "State"))
    MetricStreamEntry.add_member(:output_format, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStreamOutputFormat, name: "OutputFormat"))
    MetricStreamEntry.type = Types::MetricStreamEntry
    MetricStreamFilter.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "Namespace"))
    MetricStreamFilter.add_member(:metric_names, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStreamFilterMetricNames, name: "MetricNames"))
    MetricStreamFilter.type = Types::MetricStreamFilter
    MetricStreamFilterMetricNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "member"))
    MetricStreamFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStreamFilter, name: "member"))
    MetricStreamNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStreamName, name: "member"))
    MetricStreamOutputFormat.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "json"}))
    MetricStreamOutputFormat.add_member(:open_telemetry_0_7, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPEN_TELEMETRY_0_7", traits: {"smithy.api#enumValue" => "opentelemetry0.7"}))
    MetricStreamOutputFormat.add_member(:open_telemetry_1_0, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPEN_TELEMETRY_1_0", traits: {"smithy.api#enumValue" => "opentelemetry1.0"}))
    MetricStreamStatisticsAdditionalStatistics.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStreamStatistic, name: "member"))
    MetricStreamStatisticsConfiguration.add_member(:include_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStreamStatisticsIncludeMetrics, name: "IncludeMetrics", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricStreamStatisticsConfiguration.add_member(:additional_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStreamStatisticsAdditionalStatistics, name: "AdditionalStatistics", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricStreamStatisticsConfiguration.type = Types::MetricStreamStatisticsConfiguration
    MetricStreamStatisticsConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStreamStatisticsConfiguration, name: "member"))
    MetricStreamStatisticsIncludeMetrics.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStreamStatisticsMetric, name: "member"))
    MetricStreamStatisticsMetric.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "Namespace", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricStreamStatisticsMetric.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricStreamStatisticsMetric.type = Types::MetricStreamStatisticsMetric
    Metrics.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Metric, name: "member"))
    MissingRequiredParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsQueryErrorMessage, name: "message"))
    MissingRequiredParameterException.type = Types::MissingRequiredParameterException
    OwningAccounts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member"))
    PartialFailure.add_member(:failure_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureResource, name: "FailureResource"))
    PartialFailure.add_member(:exception_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionType, name: "ExceptionType"))
    PartialFailure.add_member(:failure_code, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureCode, name: "FailureCode"))
    PartialFailure.add_member(:failure_description, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureDescription, name: "FailureDescription"))
    PartialFailure.type = Types::PartialFailure
    PutAnomalyDetectorInput.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "Namespace", traits: {"smithy.api#deprecated" => {"message" => "Use SingleMetricAnomalyDetector."}}))
    PutAnomalyDetectorInput.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName", traits: {"smithy.api#deprecated" => {"message" => "Use SingleMetricAnomalyDetector."}}))
    PutAnomalyDetectorInput.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimensions, name: "Dimensions", traits: {"smithy.api#deprecated" => {"message" => "Use SingleMetricAnomalyDetector."}}))
    PutAnomalyDetectorInput.add_member(:stat, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyDetectorMetricStat, name: "Stat", traits: {"smithy.api#deprecated" => {"message" => "Use SingleMetricAnomalyDetector."}}))
    PutAnomalyDetectorInput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyDetectorConfiguration, name: "Configuration"))
    PutAnomalyDetectorInput.add_member(:metric_characteristics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricCharacteristics, name: "MetricCharacteristics"))
    PutAnomalyDetectorInput.add_member(:single_metric_anomaly_detector, ::Smithy::Schema::Shapes::MemberShape.new(target: SingleMetricAnomalyDetector, name: "SingleMetricAnomalyDetector"))
    PutAnomalyDetectorInput.add_member(:metric_math_anomaly_detector, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricMathAnomalyDetector, name: "MetricMathAnomalyDetector"))
    PutAnomalyDetectorInput.type = Types::PutAnomalyDetectorInput
    PutAnomalyDetectorOutput.type = Types::PutAnomalyDetectorOutput
    PutCompositeAlarmInput.add_member(:actions_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionsEnabled, name: "ActionsEnabled"))
    PutCompositeAlarmInput.add_member(:alarm_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceList, name: "AlarmActions"))
    PutCompositeAlarmInput.add_member(:alarm_description, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmDescription, name: "AlarmDescription"))
    PutCompositeAlarmInput.add_member(:alarm_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmName, name: "AlarmName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutCompositeAlarmInput.add_member(:alarm_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmRule, name: "AlarmRule", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutCompositeAlarmInput.add_member(:insufficient_data_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceList, name: "InsufficientDataActions"))
    PutCompositeAlarmInput.add_member(:ok_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceList, name: "OKActions"))
    PutCompositeAlarmInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    PutCompositeAlarmInput.add_member(:actions_suppressor, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmArn, name: "ActionsSuppressor"))
    PutCompositeAlarmInput.add_member(:actions_suppressor_wait_period, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressorPeriod, name: "ActionsSuppressorWaitPeriod"))
    PutCompositeAlarmInput.add_member(:actions_suppressor_extension_period, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressorPeriod, name: "ActionsSuppressorExtensionPeriod"))
    PutCompositeAlarmInput.type = Types::PutCompositeAlarmInput
    PutDashboardInput.add_member(:dashboard_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardName, name: "DashboardName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutDashboardInput.add_member(:dashboard_body, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardBody, name: "DashboardBody", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutDashboardInput.type = Types::PutDashboardInput
    PutDashboardOutput.add_member(:dashboard_validation_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardValidationMessages, name: "DashboardValidationMessages"))
    PutDashboardOutput.type = Types::PutDashboardOutput
    PutInsightRuleInput.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleName, name: "RuleName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutInsightRuleInput.add_member(:rule_state, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleState, name: "RuleState"))
    PutInsightRuleInput.add_member(:rule_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleDefinition, name: "RuleDefinition", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutInsightRuleInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    PutInsightRuleInput.add_member(:apply_on_transformed_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightRuleOnTransformedLogs, name: "ApplyOnTransformedLogs"))
    PutInsightRuleInput.type = Types::PutInsightRuleInput
    PutInsightRuleOutput.type = Types::PutInsightRuleOutput
    PutManagedInsightRulesInput.add_member(:managed_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedRules, name: "ManagedRules", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutManagedInsightRulesInput.type = Types::PutManagedInsightRulesInput
    PutManagedInsightRulesOutput.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchFailures, name: "Failures"))
    PutManagedInsightRulesOutput.type = Types::PutManagedInsightRulesOutput
    PutMetricAlarmInput.add_member(:alarm_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmName, name: "AlarmName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutMetricAlarmInput.add_member(:alarm_description, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmDescription, name: "AlarmDescription"))
    PutMetricAlarmInput.add_member(:actions_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionsEnabled, name: "ActionsEnabled"))
    PutMetricAlarmInput.add_member(:ok_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceList, name: "OKActions"))
    PutMetricAlarmInput.add_member(:alarm_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceList, name: "AlarmActions"))
    PutMetricAlarmInput.add_member(:insufficient_data_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceList, name: "InsufficientDataActions"))
    PutMetricAlarmInput.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName"))
    PutMetricAlarmInput.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "Namespace"))
    PutMetricAlarmInput.add_member(:statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: Statistic, name: "Statistic"))
    PutMetricAlarmInput.add_member(:extended_statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtendedStatistic, name: "ExtendedStatistic"))
    PutMetricAlarmInput.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimensions, name: "Dimensions"))
    PutMetricAlarmInput.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: Period, name: "Period"))
    PutMetricAlarmInput.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardUnit, name: "Unit"))
    PutMetricAlarmInput.add_member(:evaluation_periods, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationPeriods, name: "EvaluationPeriods", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutMetricAlarmInput.add_member(:datapoints_to_alarm, ::Smithy::Schema::Shapes::MemberShape.new(target: DatapointsToAlarm, name: "DatapointsToAlarm"))
    PutMetricAlarmInput.add_member(:threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: Threshold, name: "Threshold"))
    PutMetricAlarmInput.add_member(:comparison_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparisonOperator, name: "ComparisonOperator", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutMetricAlarmInput.add_member(:treat_missing_data, ::Smithy::Schema::Shapes::MemberShape.new(target: TreatMissingData, name: "TreatMissingData"))
    PutMetricAlarmInput.add_member(:evaluate_low_sample_count_percentile, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluateLowSampleCountPercentile, name: "EvaluateLowSampleCountPercentile"))
    PutMetricAlarmInput.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataQueries, name: "Metrics"))
    PutMetricAlarmInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    PutMetricAlarmInput.add_member(:threshold_metric_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricId, name: "ThresholdMetricId"))
    PutMetricAlarmInput.type = Types::PutMetricAlarmInput
    PutMetricDataInput.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "Namespace", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutMetricDataInput.add_member(:metric_data, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricData, name: "MetricData"))
    PutMetricDataInput.add_member(:entity_metric_data, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityMetricDataList, name: "EntityMetricData"))
    PutMetricDataInput.add_member(:strict_entity_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictEntityValidation, name: "StrictEntityValidation"))
    PutMetricDataInput.type = Types::PutMetricDataInput
    PutMetricStreamInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStreamName, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutMetricStreamInput.add_member(:include_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStreamFilters, name: "IncludeFilters"))
    PutMetricStreamInput.add_member(:exclude_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStreamFilters, name: "ExcludeFilters"))
    PutMetricStreamInput.add_member(:firehose_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "FirehoseArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutMetricStreamInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "RoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutMetricStreamInput.add_member(:output_format, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStreamOutputFormat, name: "OutputFormat", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutMetricStreamInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    PutMetricStreamInput.add_member(:statistics_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStreamStatisticsConfigurations, name: "StatisticsConfigurations"))
    PutMetricStreamInput.add_member(:include_linked_accounts_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeLinkedAccountsMetrics, name: "IncludeLinkedAccountsMetrics"))
    PutMetricStreamInput.type = Types::PutMetricStreamInput
    PutMetricStreamOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "Arn"))
    PutMetricStreamOutput.type = Types::PutMetricStreamOutput
    Range.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Range.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Range.type = Types::Range
    RecentlyActive.add_member(:pt3_h, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PT3H", traits: {"smithy.api#enumValue" => "PT3H"}))
    ResourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "member"))
    ResourceNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceNotFound.type = Types::ResourceNotFound
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: FaultDescription, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ScanBy.add_member(:timestamp_descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMESTAMP_DESCENDING", traits: {"smithy.api#enumValue" => "TimestampDescending"}))
    ScanBy.add_member(:timestamp_ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMESTAMP_ASCENDING", traits: {"smithy.api#enumValue" => "TimestampAscending"}))
    SetAlarmStateInput.add_member(:alarm_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmName, name: "AlarmName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetAlarmStateInput.add_member(:state_value, ::Smithy::Schema::Shapes::MemberShape.new(target: StateValue, name: "StateValue", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetAlarmStateInput.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReason, name: "StateReason", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetAlarmStateInput.add_member(:state_reason_data, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReasonData, name: "StateReasonData"))
    SetAlarmStateInput.type = Types::SetAlarmStateInput
    SingleMetricAnomalyDetector.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    SingleMetricAnomalyDetector.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "Namespace"))
    SingleMetricAnomalyDetector.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName"))
    SingleMetricAnomalyDetector.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimensions, name: "Dimensions"))
    SingleMetricAnomalyDetector.add_member(:stat, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyDetectorMetricStat, name: "Stat"))
    SingleMetricAnomalyDetector.type = Types::SingleMetricAnomalyDetector
    StandardUnit.add_member(:seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Seconds", traits: {"smithy.api#enumValue" => "Seconds"}))
    StandardUnit.add_member(:microseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Microseconds", traits: {"smithy.api#enumValue" => "Microseconds"}))
    StandardUnit.add_member(:milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Milliseconds", traits: {"smithy.api#enumValue" => "Milliseconds"}))
    StandardUnit.add_member(:bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Bytes", traits: {"smithy.api#enumValue" => "Bytes"}))
    StandardUnit.add_member(:kilobytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Kilobytes", traits: {"smithy.api#enumValue" => "Kilobytes"}))
    StandardUnit.add_member(:megabytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Megabytes", traits: {"smithy.api#enumValue" => "Megabytes"}))
    StandardUnit.add_member(:gigabytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Gigabytes", traits: {"smithy.api#enumValue" => "Gigabytes"}))
    StandardUnit.add_member(:terabytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Terabytes", traits: {"smithy.api#enumValue" => "Terabytes"}))
    StandardUnit.add_member(:bits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Bits", traits: {"smithy.api#enumValue" => "Bits"}))
    StandardUnit.add_member(:kilobits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Kilobits", traits: {"smithy.api#enumValue" => "Kilobits"}))
    StandardUnit.add_member(:megabits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Megabits", traits: {"smithy.api#enumValue" => "Megabits"}))
    StandardUnit.add_member(:gigabits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Gigabits", traits: {"smithy.api#enumValue" => "Gigabits"}))
    StandardUnit.add_member(:terabits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Terabits", traits: {"smithy.api#enumValue" => "Terabits"}))
    StandardUnit.add_member(:percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Percent", traits: {"smithy.api#enumValue" => "Percent"}))
    StandardUnit.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Count", traits: {"smithy.api#enumValue" => "Count"}))
    StandardUnit.add_member(:bytes_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Bytes_Second", traits: {"smithy.api#enumValue" => "Bytes/Second"}))
    StandardUnit.add_member(:kilobytes_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Kilobytes_Second", traits: {"smithy.api#enumValue" => "Kilobytes/Second"}))
    StandardUnit.add_member(:megabytes_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Megabytes_Second", traits: {"smithy.api#enumValue" => "Megabytes/Second"}))
    StandardUnit.add_member(:gigabytes_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Gigabytes_Second", traits: {"smithy.api#enumValue" => "Gigabytes/Second"}))
    StandardUnit.add_member(:terabytes_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Terabytes_Second", traits: {"smithy.api#enumValue" => "Terabytes/Second"}))
    StandardUnit.add_member(:bits_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Bits_Second", traits: {"smithy.api#enumValue" => "Bits/Second"}))
    StandardUnit.add_member(:kilobits_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Kilobits_Second", traits: {"smithy.api#enumValue" => "Kilobits/Second"}))
    StandardUnit.add_member(:megabits_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Megabits_Second", traits: {"smithy.api#enumValue" => "Megabits/Second"}))
    StandardUnit.add_member(:gigabits_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Gigabits_Second", traits: {"smithy.api#enumValue" => "Gigabits/Second"}))
    StandardUnit.add_member(:terabits_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Terabits_Second", traits: {"smithy.api#enumValue" => "Terabits/Second"}))
    StandardUnit.add_member(:count_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Count_Second", traits: {"smithy.api#enumValue" => "Count/Second"}))
    StandardUnit.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "None", traits: {"smithy.api#enumValue" => "None"}))
    StartMetricStreamsInput.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStreamNames, name: "Names", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartMetricStreamsInput.type = Types::StartMetricStreamsInput
    StartMetricStreamsOutput.type = Types::StartMetricStreamsOutput
    StateValue.add_member(:ok, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OK", traits: {"smithy.api#enumValue" => "OK"}))
    StateValue.add_member(:alarm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALARM", traits: {"smithy.api#enumValue" => "ALARM"}))
    StateValue.add_member(:insufficient_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSUFFICIENT_DATA", traits: {"smithy.api#enumValue" => "INSUFFICIENT_DATA"}))
    Statistic.add_member(:sample_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SampleCount", traits: {"smithy.api#enumValue" => "SampleCount"}))
    Statistic.add_member(:average, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Average", traits: {"smithy.api#enumValue" => "Average"}))
    Statistic.add_member(:sum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Sum", traits: {"smithy.api#enumValue" => "Sum"}))
    Statistic.add_member(:minimum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Minimum", traits: {"smithy.api#enumValue" => "Minimum"}))
    Statistic.add_member(:maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Maximum", traits: {"smithy.api#enumValue" => "Maximum"}))
    StatisticSet.add_member(:sample_count, ::Smithy::Schema::Shapes::MemberShape.new(target: DatapointValue, name: "SampleCount", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StatisticSet.add_member(:sum, ::Smithy::Schema::Shapes::MemberShape.new(target: DatapointValue, name: "Sum", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StatisticSet.add_member(:minimum, ::Smithy::Schema::Shapes::MemberShape.new(target: DatapointValue, name: "Minimum", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StatisticSet.add_member(:maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: DatapointValue, name: "Maximum", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StatisticSet.type = Types::StatisticSet
    Statistics.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Statistic, name: "member"))
    StatusCode.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "Complete"}))
    StatusCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "InternalError"}))
    StatusCode.add_member(:partial_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTIAL_DATA", traits: {"smithy.api#enumValue" => "PartialData"}))
    StatusCode.add_member(:forbidden, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FORBIDDEN", traits: {"smithy.api#enumValue" => "Forbidden"}))
    StopMetricStreamsInput.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStreamNames, name: "Names", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StopMetricStreamsInput.type = Types::StopMetricStreamsInput
    StopMetricStreamsOutput.type = Types::StopMetricStreamsOutput
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    Timestamps.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "member"))
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    Values.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DatapointValue, name: "member"))

    GraniteServiceVersion20100801 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.cloudwatch#GraniteServiceVersion20100801"
      service.name = "GraniteServiceVersion20100801"
      service.version = "2010-08-01"
      service.traits = {"aws.api#service" => {"sdkId" => "CloudWatch", "arnNamespace" => "monitoring", "cloudFormationName" => "CloudWatch", "cloudTrailEventSource" => "monitoring.amazonaws.com", "docId" => "monitoring-2010-08-01", "endpointPrefix" => "monitoring"}, "aws.auth#sigv4" => {"name" => "monitoring"}, "aws.protocols#awsQuery" => {}, "smithy.api#title" => "Amazon CloudWatch", "smithy.api#xmlNamespace" => {"uri" => "http://monitoring.amazonaws.com/doc/2010-08-01/"}}
      service.add_operation(:delete_alarms, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#DeleteAlarms"
        operation.name = "DeleteAlarms"
        operation.input = DeleteAlarmsInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ResourceNotFound
        operation.traits = {}
      end)
      service.add_operation(:delete_anomaly_detector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#DeleteAnomalyDetector"
        operation.name = "DeleteAnomalyDetector"
        operation.input = DeleteAnomalyDetectorInput
        operation.output = DeleteAnomalyDetectorOutput
        operation.errors << InternalServiceFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingRequiredParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_dashboards, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#DeleteDashboards"
        operation.name = "DeleteDashboards"
        operation.input = DeleteDashboardsInput
        operation.output = DeleteDashboardsOutput
        operation.errors << ConflictException
        operation.errors << DashboardNotFoundError
        operation.errors << InternalServiceFault
        operation.errors << InvalidParameterValueException
        operation.traits = {}
      end)
      service.add_operation(:delete_insight_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#DeleteInsightRules"
        operation.name = "DeleteInsightRules"
        operation.input = DeleteInsightRulesInput
        operation.output = DeleteInsightRulesOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingRequiredParameterException
        operation.traits = {}
      end)
      service.add_operation(:delete_metric_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#DeleteMetricStream"
        operation.name = "DeleteMetricStream"
        operation.input = DeleteMetricStreamInput
        operation.output = DeleteMetricStreamOutput
        operation.errors << InternalServiceFault
        operation.errors << InvalidParameterValueException
        operation.errors << MissingRequiredParameterException
        operation.traits = {}
      end)
      service.add_operation(:describe_alarm_contributors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#DescribeAlarmContributors"
        operation.name = "DescribeAlarmContributors"
        operation.input = DescribeAlarmContributorsInput
        operation.output = DescribeAlarmContributorsOutput
        operation.errors << InvalidNextToken
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_alarm_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#DescribeAlarmHistory"
        operation.name = "DescribeAlarmHistory"
        operation.input = DescribeAlarmHistoryInput
        operation.output = DescribeAlarmHistoryOutput
        operation.errors << InvalidNextToken
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeAlarmHistory.new
      end)
      service.add_operation(:describe_alarms, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#DescribeAlarms"
        operation.name = "DescribeAlarms"
        operation.input = DescribeAlarmsInput
        operation.output = DescribeAlarmsOutput
        operation.errors << InvalidNextToken
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeAlarms.new
      end)
      service.add_operation(:describe_alarms_for_metric, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#DescribeAlarmsForMetric"
        operation.name = "DescribeAlarmsForMetric"
        operation.input = DescribeAlarmsForMetricInput
        operation.output = DescribeAlarmsForMetricOutput
        operation.traits = {}
      end)
      service.add_operation(:describe_anomaly_detectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#DescribeAnomalyDetectors"
        operation.name = "DescribeAnomalyDetectors"
        operation.input = DescribeAnomalyDetectorsInput
        operation.output = DescribeAnomalyDetectorsOutput
        operation.errors << InternalServiceFault
        operation.errors << InvalidNextToken
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeAnomalyDetectors.new
      end)
      service.add_operation(:describe_insight_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#DescribeInsightRules"
        operation.name = "DescribeInsightRules"
        operation.input = DescribeInsightRulesInput
        operation.output = DescribeInsightRulesOutput
        operation.errors << InvalidNextToken
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeInsightRules.new
      end)
      service.add_operation(:disable_alarm_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#DisableAlarmActions"
        operation.name = "DisableAlarmActions"
        operation.input = DisableAlarmActionsInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {}
      end)
      service.add_operation(:disable_insight_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#DisableInsightRules"
        operation.name = "DisableInsightRules"
        operation.input = DisableInsightRulesInput
        operation.output = DisableInsightRulesOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingRequiredParameterException
        operation.traits = {}
      end)
      service.add_operation(:enable_alarm_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#EnableAlarmActions"
        operation.name = "EnableAlarmActions"
        operation.input = EnableAlarmActionsInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {}
      end)
      service.add_operation(:enable_insight_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#EnableInsightRules"
        operation.name = "EnableInsightRules"
        operation.input = EnableInsightRulesInput
        operation.output = EnableInsightRulesOutput
        operation.errors << InvalidParameterValueException
        operation.errors << LimitExceededException
        operation.errors << MissingRequiredParameterException
        operation.traits = {}
      end)
      service.add_operation(:get_dashboard, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#GetDashboard"
        operation.name = "GetDashboard"
        operation.input = GetDashboardInput
        operation.output = GetDashboardOutput
        operation.errors << DashboardNotFoundError
        operation.errors << InternalServiceFault
        operation.errors << InvalidParameterValueException
        operation.traits = {}
      end)
      service.add_operation(:get_insight_rule_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#GetInsightRuleReport"
        operation.name = "GetInsightRuleReport"
        operation.input = GetInsightRuleReportInput
        operation.output = GetInsightRuleReportOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingRequiredParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_metric_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#GetMetricData"
        operation.name = "GetMetricData"
        operation.input = GetMetricDataInput
        operation.output = GetMetricDataOutput
        operation.errors << InvalidNextToken
        operation.traits = {}
        operation[:paginator] = Paginators::GetMetricData.new
      end)
      service.add_operation(:get_metric_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#GetMetricStatistics"
        operation.name = "GetMetricStatistics"
        operation.input = GetMetricStatisticsInput
        operation.output = GetMetricStatisticsOutput
        operation.errors << InternalServiceFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingRequiredParameterException
        operation.traits = {}
      end)
      service.add_operation(:get_metric_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#GetMetricStream"
        operation.name = "GetMetricStream"
        operation.input = GetMetricStreamInput
        operation.output = GetMetricStreamOutput
        operation.errors << InternalServiceFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingRequiredParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_metric_widget_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#GetMetricWidgetImage"
        operation.name = "GetMetricWidgetImage"
        operation.input = GetMetricWidgetImageInput
        operation.output = GetMetricWidgetImageOutput
        operation.traits = {}
      end)
      service.add_operation(:list_dashboards, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#ListDashboards"
        operation.name = "ListDashboards"
        operation.input = ListDashboardsInput
        operation.output = ListDashboardsOutput
        operation.errors << InternalServiceFault
        operation.errors << InvalidParameterValueException
        operation.traits = {}
        operation[:paginator] = Paginators::ListDashboards.new
      end)
      service.add_operation(:list_managed_insight_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#ListManagedInsightRules"
        operation.name = "ListManagedInsightRules"
        operation.input = ListManagedInsightRulesInput
        operation.output = ListManagedInsightRulesOutput
        operation.errors << InvalidNextToken
        operation.errors << InvalidParameterValueException
        operation.errors << MissingRequiredParameterException
        operation.traits = {}
        operation[:paginator] = Paginators::ListManagedInsightRules.new
      end)
      service.add_operation(:list_metric_streams, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#ListMetricStreams"
        operation.name = "ListMetricStreams"
        operation.input = ListMetricStreamsInput
        operation.output = ListMetricStreamsOutput
        operation.errors << InternalServiceFault
        operation.errors << InvalidNextToken
        operation.errors << InvalidParameterValueException
        operation.errors << MissingRequiredParameterException
        operation.traits = {}
        operation[:paginator] = Paginators::ListMetricStreams.new
      end)
      service.add_operation(:list_metrics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#ListMetrics"
        operation.name = "ListMetrics"
        operation.input = ListMetricsInput
        operation.output = ListMetricsOutput
        operation.errors << InternalServiceFault
        operation.errors << InvalidParameterValueException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListMetricsSuccess", "params" => {"Namespace" => "AWS/EC2"}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListMetrics.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << InternalServiceFault
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:put_anomaly_detector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#PutAnomalyDetector"
        operation.name = "PutAnomalyDetector"
        operation.input = PutAnomalyDetectorInput
        operation.output = PutAnomalyDetectorOutput
        operation.errors << InternalServiceFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << LimitExceededException
        operation.errors << MissingRequiredParameterException
        operation.traits = {}
      end)
      service.add_operation(:put_composite_alarm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#PutCompositeAlarm"
        operation.name = "PutCompositeAlarm"
        operation.input = PutCompositeAlarmInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << LimitExceededFault
        operation.traits = {}
      end)
      service.add_operation(:put_dashboard, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#PutDashboard"
        operation.name = "PutDashboard"
        operation.input = PutDashboardInput
        operation.output = PutDashboardOutput
        operation.errors << ConflictException
        operation.errors << DashboardInvalidInputError
        operation.errors << InternalServiceFault
        operation.traits = {}
      end)
      service.add_operation(:put_insight_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#PutInsightRule"
        operation.name = "PutInsightRule"
        operation.input = PutInsightRuleInput
        operation.output = PutInsightRuleOutput
        operation.errors << InvalidParameterValueException
        operation.errors << LimitExceededException
        operation.errors << MissingRequiredParameterException
        operation.traits = {}
      end)
      service.add_operation(:put_managed_insight_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#PutManagedInsightRules"
        operation.name = "PutManagedInsightRules"
        operation.input = PutManagedInsightRulesInput
        operation.output = PutManagedInsightRulesOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingRequiredParameterException
        operation.traits = {}
      end)
      service.add_operation(:put_metric_alarm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#PutMetricAlarm"
        operation.name = "PutMetricAlarm"
        operation.input = PutMetricAlarmInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << LimitExceededFault
        operation.traits = {}
      end)
      service.add_operation(:put_metric_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#PutMetricData"
        operation.name = "PutMetricData"
        operation.input = PutMetricDataInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServiceFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingRequiredParameterException
        operation.traits = {"smithy.api#requestCompression" => {"encodings" => ["gzip"]}}
      end)
      service.add_operation(:put_metric_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#PutMetricStream"
        operation.name = "PutMetricStream"
        operation.input = PutMetricStreamInput
        operation.output = PutMetricStreamOutput
        operation.errors << ConcurrentModificationException
        operation.errors << InternalServiceFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingRequiredParameterException
        operation.traits = {}
      end)
      service.add_operation(:set_alarm_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#SetAlarmState"
        operation.name = "SetAlarmState"
        operation.input = SetAlarmStateInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidFormatFault
        operation.errors << ResourceNotFound
        operation.traits = {}
      end)
      service.add_operation(:start_metric_streams, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#StartMetricStreams"
        operation.name = "StartMetricStreams"
        operation.input = StartMetricStreamsInput
        operation.output = StartMetricStreamsOutput
        operation.errors << InternalServiceFault
        operation.errors << InvalidParameterValueException
        operation.errors << MissingRequiredParameterException
        operation.traits = {}
      end)
      service.add_operation(:stop_metric_streams, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#StopMetricStreams"
        operation.name = "StopMetricStreams"
        operation.input = StopMetricStreamsInput
        operation.output = StopMetricStreamsOutput
        operation.errors << InternalServiceFault
        operation.errors << InvalidParameterValueException
        operation.errors << MissingRequiredParameterException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << ConcurrentModificationException
        operation.errors << ConflictException
        operation.errors << InternalServiceFault
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << ConcurrentModificationException
        operation.errors << ConflictException
        operation.errors << InternalServiceFault
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
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
