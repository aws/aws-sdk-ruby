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

    ActionsSuppressedBy.add_member(:wait_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WaitPeriod", traits: {"smithy.api#enumValue" => "WaitPeriod"}))
    ActionsSuppressedBy.add_member(:extension_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ExtensionPeriod", traits: {"smithy.api#enumValue" => "ExtensionPeriod"}))
    ActionsSuppressedBy.add_member(:alarm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Alarm", traits: {"smithy.api#enumValue" => "Alarm"}))
    AlarmContributor.add_member(:contributor_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContributorId, location_name: "ContributorId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AlarmContributor.add_member(:contributor_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContributorAttributes, location_name: "ContributorAttributes", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AlarmContributor.add_member(:state_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StateReason, location_name: "StateReason", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AlarmContributor.add_member(:state_transitioned_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "StateTransitionedTimestamp"))
    AlarmContributor.type = Types::AlarmContributor
    AlarmContributors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmContributor)
    AlarmHistoryItem.add_member(:alarm_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmName, location_name: "AlarmName"))
    AlarmHistoryItem.add_member(:alarm_contributor_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContributorId, location_name: "AlarmContributorId"))
    AlarmHistoryItem.add_member(:alarm_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmType, location_name: "AlarmType"))
    AlarmHistoryItem.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    AlarmHistoryItem.add_member(:history_item_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HistoryItemType, location_name: "HistoryItemType"))
    AlarmHistoryItem.add_member(:history_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HistorySummary, location_name: "HistorySummary"))
    AlarmHistoryItem.add_member(:history_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HistoryData, location_name: "HistoryData"))
    AlarmHistoryItem.add_member(:alarm_contributor_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContributorAttributes, location_name: "AlarmContributorAttributes"))
    AlarmHistoryItem.type = Types::AlarmHistoryItem
    AlarmHistoryItems.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmHistoryItem)
    AlarmNames.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmName)
    AlarmType.add_member(:composite_alarm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CompositeAlarm", traits: {"smithy.api#enumValue" => "CompositeAlarm"}))
    AlarmType.add_member(:metric_alarm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MetricAlarm", traits: {"smithy.api#enumValue" => "MetricAlarm"}))
    AlarmTypes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmType)
    AnomalyDetector.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace", traits: {"smithy.api#deprecated" => {"message" => "Use SingleMetricAnomalyDetector.Namespace property."}}))
    AnomalyDetector.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName", traits: {"smithy.api#deprecated" => {"message" => "Use SingleMetricAnomalyDetector.MetricName property."}}))
    AnomalyDetector.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dimensions, location_name: "Dimensions", traits: {"smithy.api#deprecated" => {"message" => "Use SingleMetricAnomalyDetector.Dimensions property."}}))
    AnomalyDetector.add_member(:stat, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorMetricStat, location_name: "Stat", traits: {"smithy.api#deprecated" => {"message" => "Use SingleMetricAnomalyDetector.Stat property."}}))
    AnomalyDetector.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorConfiguration, location_name: "Configuration"))
    AnomalyDetector.add_member(:state_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorStateValue, location_name: "StateValue"))
    AnomalyDetector.add_member(:metric_characteristics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricCharacteristics, location_name: "MetricCharacteristics"))
    AnomalyDetector.add_member(:single_metric_anomaly_detector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SingleMetricAnomalyDetector, location_name: "SingleMetricAnomalyDetector"))
    AnomalyDetector.add_member(:metric_math_anomaly_detector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricMathAnomalyDetector, location_name: "MetricMathAnomalyDetector"))
    AnomalyDetector.type = Types::AnomalyDetector
    AnomalyDetectorConfiguration.add_member(:excluded_time_ranges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorExcludedTimeRanges, location_name: "ExcludedTimeRanges"))
    AnomalyDetectorConfiguration.add_member(:metric_timezone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorMetricTimezone, location_name: "MetricTimezone"))
    AnomalyDetectorConfiguration.type = Types::AnomalyDetectorConfiguration
    AnomalyDetectorExcludedTimeRanges.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Range)
    AnomalyDetectorStateValue.add_member(:pending_training, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_TRAINING", traits: {"smithy.api#enumValue" => "PENDING_TRAINING"}))
    AnomalyDetectorStateValue.add_member(:trained_insufficient_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRAINED_INSUFFICIENT_DATA", traits: {"smithy.api#enumValue" => "TRAINED_INSUFFICIENT_DATA"}))
    AnomalyDetectorStateValue.add_member(:trained, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRAINED", traits: {"smithy.api#enumValue" => "TRAINED"}))
    AnomalyDetectorType.add_member(:single_metric, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SINGLE_METRIC", traits: {"smithy.api#enumValue" => "SINGLE_METRIC"}))
    AnomalyDetectorType.add_member(:metric_math, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "METRIC_MATH", traits: {"smithy.api#enumValue" => "METRIC_MATH"}))
    AnomalyDetectorTypes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorType)
    AnomalyDetectors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetector)
    BatchFailures.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartialFailure)
    ComparisonOperator.add_member(:greater_than_or_equal_to_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GreaterThanOrEqualToThreshold", traits: {"smithy.api#enumValue" => "GreaterThanOrEqualToThreshold"}))
    ComparisonOperator.add_member(:greater_than_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GreaterThanThreshold", traits: {"smithy.api#enumValue" => "GreaterThanThreshold"}))
    ComparisonOperator.add_member(:less_than_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LessThanThreshold", traits: {"smithy.api#enumValue" => "LessThanThreshold"}))
    ComparisonOperator.add_member(:less_than_or_equal_to_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LessThanOrEqualToThreshold", traits: {"smithy.api#enumValue" => "LessThanOrEqualToThreshold"}))
    ComparisonOperator.add_member(:less_than_lower_or_greater_than_upper_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LessThanLowerOrGreaterThanUpperThreshold", traits: {"smithy.api#enumValue" => "LessThanLowerOrGreaterThanUpperThreshold"}))
    ComparisonOperator.add_member(:less_than_lower_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LessThanLowerThreshold", traits: {"smithy.api#enumValue" => "LessThanLowerThreshold"}))
    ComparisonOperator.add_member(:greater_than_upper_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GreaterThanUpperThreshold", traits: {"smithy.api#enumValue" => "GreaterThanUpperThreshold"}))
    CompositeAlarm.add_member(:actions_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionsEnabled, location_name: "ActionsEnabled"))
    CompositeAlarm.add_member(:alarm_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: "AlarmActions"))
    CompositeAlarm.add_member(:alarm_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmArn, location_name: "AlarmArn"))
    CompositeAlarm.add_member(:alarm_configuration_updated_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "AlarmConfigurationUpdatedTimestamp"))
    CompositeAlarm.add_member(:alarm_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmDescription, location_name: "AlarmDescription"))
    CompositeAlarm.add_member(:alarm_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmName, location_name: "AlarmName"))
    CompositeAlarm.add_member(:alarm_rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmRule, location_name: "AlarmRule"))
    CompositeAlarm.add_member(:insufficient_data_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: "InsufficientDataActions"))
    CompositeAlarm.add_member(:ok_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: "OKActions"))
    CompositeAlarm.add_member(:state_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StateReason, location_name: "StateReason"))
    CompositeAlarm.add_member(:state_reason_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StateReasonData, location_name: "StateReasonData"))
    CompositeAlarm.add_member(:state_updated_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "StateUpdatedTimestamp"))
    CompositeAlarm.add_member(:state_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StateValue, location_name: "StateValue"))
    CompositeAlarm.add_member(:state_transitioned_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "StateTransitionedTimestamp"))
    CompositeAlarm.add_member(:actions_suppressed_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionsSuppressedBy, location_name: "ActionsSuppressedBy"))
    CompositeAlarm.add_member(:actions_suppressed_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionsSuppressedReason, location_name: "ActionsSuppressedReason"))
    CompositeAlarm.add_member(:actions_suppressor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmArn, location_name: "ActionsSuppressor"))
    CompositeAlarm.add_member(:actions_suppressor_wait_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SuppressorPeriod, location_name: "ActionsSuppressorWaitPeriod"))
    CompositeAlarm.add_member(:actions_suppressor_extension_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SuppressorPeriod, location_name: "ActionsSuppressorExtensionPeriod"))
    CompositeAlarm.type = Types::CompositeAlarm
    CompositeAlarms.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompositeAlarm)
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaultDescription, location_name: "Message"))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConflictException.type = Types::ConflictException
    ContributorAttributes.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName)
    ContributorAttributes.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue)
    Counts.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatapointValue)
    DashboardEntries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardEntry)
    DashboardEntry.add_member(:dashboard_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardName, location_name: "DashboardName"))
    DashboardEntry.add_member(:dashboard_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardArn, location_name: "DashboardArn"))
    DashboardEntry.add_member(:last_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastModified, location_name: "LastModified"))
    DashboardEntry.add_member(:size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Size, location_name: "Size"))
    DashboardEntry.type = Types::DashboardEntry
    DashboardInvalidInputError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardErrorMessage, location_name: "message"))
    DashboardInvalidInputError.add_member(:dashboard_validation_messages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardValidationMessages, location_name: "dashboardValidationMessages"))
    DashboardInvalidInputError.type = Types::DashboardInvalidInputError
    DashboardNames.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardName)
    DashboardNotFoundError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardErrorMessage, location_name: "message"))
    DashboardNotFoundError.type = Types::DashboardNotFoundError
    DashboardValidationMessage.add_member(:data_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataPath, location_name: "DataPath"))
    DashboardValidationMessage.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    DashboardValidationMessage.type = Types::DashboardValidationMessage
    DashboardValidationMessages.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardValidationMessage)
    Datapoint.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    Datapoint.add_member(:sample_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatapointValue, location_name: "SampleCount"))
    Datapoint.add_member(:average, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatapointValue, location_name: "Average"))
    Datapoint.add_member(:sum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatapointValue, location_name: "Sum"))
    Datapoint.add_member(:minimum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatapointValue, location_name: "Minimum"))
    Datapoint.add_member(:maximum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatapointValue, location_name: "Maximum"))
    Datapoint.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StandardUnit, location_name: "Unit"))
    Datapoint.add_member(:extended_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatapointValueMap, location_name: "ExtendedStatistics"))
    Datapoint.type = Types::Datapoint
    DatapointValueMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedStatistic)
    DatapointValueMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatapointValue)
    DatapointValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatapointValue)
    Datapoints.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Datapoint)
    DeleteAlarmsInput.add_member(:alarm_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmNames, location_name: "AlarmNames", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteAlarmsInput.type = Types::DeleteAlarmsInput
    DeleteAnomalyDetectorInput.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace", traits: {"smithy.api#deprecated" => {"message" => "Use SingleMetricAnomalyDetector."}}))
    DeleteAnomalyDetectorInput.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName", traits: {"smithy.api#deprecated" => {"message" => "Use SingleMetricAnomalyDetector."}}))
    DeleteAnomalyDetectorInput.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dimensions, location_name: "Dimensions", traits: {"smithy.api#deprecated" => {"message" => "Use SingleMetricAnomalyDetector."}}))
    DeleteAnomalyDetectorInput.add_member(:stat, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorMetricStat, location_name: "Stat", traits: {"smithy.api#deprecated" => {"message" => "Use SingleMetricAnomalyDetector."}}))
    DeleteAnomalyDetectorInput.add_member(:single_metric_anomaly_detector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SingleMetricAnomalyDetector, location_name: "SingleMetricAnomalyDetector"))
    DeleteAnomalyDetectorInput.add_member(:metric_math_anomaly_detector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricMathAnomalyDetector, location_name: "MetricMathAnomalyDetector"))
    DeleteAnomalyDetectorInput.type = Types::DeleteAnomalyDetectorInput
    DeleteAnomalyDetectorOutput.type = Types::DeleteAnomalyDetectorOutput
    DeleteDashboardsInput.add_member(:dashboard_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardNames, location_name: "DashboardNames", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDashboardsInput.type = Types::DeleteDashboardsInput
    DeleteDashboardsOutput.type = Types::DeleteDashboardsOutput
    DeleteInsightRulesInput.add_member(:rule_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleNames, location_name: "RuleNames", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteInsightRulesInput.type = Types::DeleteInsightRulesInput
    DeleteInsightRulesOutput.add_member(:failures, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchFailures, location_name: "Failures"))
    DeleteInsightRulesOutput.type = Types::DeleteInsightRulesOutput
    DeleteMetricStreamInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStreamName, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteMetricStreamInput.type = Types::DeleteMetricStreamInput
    DeleteMetricStreamOutput.type = Types::DeleteMetricStreamOutput
    DescribeAlarmContributorsInput.add_member(:alarm_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmName, location_name: "AlarmName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeAlarmContributorsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAlarmContributorsInput.type = Types::DescribeAlarmContributorsInput
    DescribeAlarmContributorsOutput.add_member(:alarm_contributors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmContributors, location_name: "AlarmContributors", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeAlarmContributorsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAlarmContributorsOutput.type = Types::DescribeAlarmContributorsOutput
    DescribeAlarmHistoryInput.add_member(:alarm_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmName, location_name: "AlarmName"))
    DescribeAlarmHistoryInput.add_member(:alarm_contributor_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContributorId, location_name: "AlarmContributorId"))
    DescribeAlarmHistoryInput.add_member(:alarm_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmTypes, location_name: "AlarmTypes"))
    DescribeAlarmHistoryInput.add_member(:history_item_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HistoryItemType, location_name: "HistoryItemType"))
    DescribeAlarmHistoryInput.add_member(:start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartDate"))
    DescribeAlarmHistoryInput.add_member(:end_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndDate"))
    DescribeAlarmHistoryInput.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeAlarmHistoryInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAlarmHistoryInput.add_member(:scan_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanBy, location_name: "ScanBy"))
    DescribeAlarmHistoryInput.type = Types::DescribeAlarmHistoryInput
    DescribeAlarmHistoryOutput.add_member(:alarm_history_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmHistoryItems, location_name: "AlarmHistoryItems"))
    DescribeAlarmHistoryOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAlarmHistoryOutput.type = Types::DescribeAlarmHistoryOutput
    DescribeAlarmsForMetricInput.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeAlarmsForMetricInput.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeAlarmsForMetricInput.add_member(:statistic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Statistic, location_name: "Statistic"))
    DescribeAlarmsForMetricInput.add_member(:extended_statistic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedStatistic, location_name: "ExtendedStatistic"))
    DescribeAlarmsForMetricInput.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dimensions, location_name: "Dimensions"))
    DescribeAlarmsForMetricInput.add_member(:period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Period, location_name: "Period"))
    DescribeAlarmsForMetricInput.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StandardUnit, location_name: "Unit"))
    DescribeAlarmsForMetricInput.type = Types::DescribeAlarmsForMetricInput
    DescribeAlarmsForMetricOutput.add_member(:metric_alarms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricAlarms, location_name: "MetricAlarms"))
    DescribeAlarmsForMetricOutput.type = Types::DescribeAlarmsForMetricOutput
    DescribeAlarmsInput.add_member(:alarm_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmNames, location_name: "AlarmNames"))
    DescribeAlarmsInput.add_member(:alarm_name_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmNamePrefix, location_name: "AlarmNamePrefix"))
    DescribeAlarmsInput.add_member(:alarm_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmTypes, location_name: "AlarmTypes"))
    DescribeAlarmsInput.add_member(:children_of_alarm_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmName, location_name: "ChildrenOfAlarmName"))
    DescribeAlarmsInput.add_member(:parents_of_alarm_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmName, location_name: "ParentsOfAlarmName"))
    DescribeAlarmsInput.add_member(:state_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StateValue, location_name: "StateValue"))
    DescribeAlarmsInput.add_member(:action_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionPrefix, location_name: "ActionPrefix"))
    DescribeAlarmsInput.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeAlarmsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAlarmsInput.type = Types::DescribeAlarmsInput
    DescribeAlarmsOutput.add_member(:composite_alarms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompositeAlarms, location_name: "CompositeAlarms"))
    DescribeAlarmsOutput.add_member(:metric_alarms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricAlarms, location_name: "MetricAlarms"))
    DescribeAlarmsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAlarmsOutput.type = Types::DescribeAlarmsOutput
    DescribeAnomalyDetectorsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAnomalyDetectorsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxReturnedResultsCount, location_name: "MaxResults"))
    DescribeAnomalyDetectorsInput.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace"))
    DescribeAnomalyDetectorsInput.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    DescribeAnomalyDetectorsInput.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dimensions, location_name: "Dimensions"))
    DescribeAnomalyDetectorsInput.add_member(:anomaly_detector_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorTypes, location_name: "AnomalyDetectorTypes"))
    DescribeAnomalyDetectorsInput.type = Types::DescribeAnomalyDetectorsInput
    DescribeAnomalyDetectorsOutput.add_member(:anomaly_detectors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectors, location_name: "AnomalyDetectors"))
    DescribeAnomalyDetectorsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAnomalyDetectorsOutput.type = Types::DescribeAnomalyDetectorsOutput
    DescribeInsightRulesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInsightRulesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleMaxResults, location_name: "MaxResults"))
    DescribeInsightRulesInput.type = Types::DescribeInsightRulesInput
    DescribeInsightRulesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInsightRulesOutput.add_member(:insight_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRules, location_name: "InsightRules"))
    DescribeInsightRulesOutput.type = Types::DescribeInsightRulesOutput
    Dimension.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionName, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Dimension.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionValue, location_name: "Value", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Dimension.type = Types::Dimension
    DimensionFilter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionName, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DimensionFilter.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionValue, location_name: "Value"))
    DimensionFilter.type = Types::DimensionFilter
    DimensionFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionFilter)
    Dimensions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dimension)
    DisableAlarmActionsInput.add_member(:alarm_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmNames, location_name: "AlarmNames", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisableAlarmActionsInput.type = Types::DisableAlarmActionsInput
    DisableInsightRulesInput.add_member(:rule_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleNames, location_name: "RuleNames", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisableInsightRulesInput.type = Types::DisableInsightRulesInput
    DisableInsightRulesOutput.add_member(:failures, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchFailures, location_name: "Failures"))
    DisableInsightRulesOutput.type = Types::DisableInsightRulesOutput
    EnableAlarmActionsInput.add_member(:alarm_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmNames, location_name: "AlarmNames", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EnableAlarmActionsInput.type = Types::EnableAlarmActionsInput
    EnableInsightRulesInput.add_member(:rule_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleNames, location_name: "RuleNames", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EnableInsightRulesInput.type = Types::EnableInsightRulesInput
    EnableInsightRulesOutput.add_member(:failures, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchFailures, location_name: "Failures"))
    EnableInsightRulesOutput.type = Types::EnableInsightRulesOutput
    Entity.add_member(:key_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityKeyAttributesMap, location_name: "KeyAttributes"))
    Entity.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityAttributesMap, location_name: "Attributes"))
    Entity.type = Types::Entity
    EntityAttributesMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityAttributesMapKeyString)
    EntityAttributesMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityAttributesMapValueString)
    EntityKeyAttributesMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityKeyAttributesMapKeyString)
    EntityKeyAttributesMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityKeyAttributesMapValueString)
    EntityMetricData.add_member(:entity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Entity, location_name: "Entity"))
    EntityMetricData.add_member(:metric_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricData, location_name: "MetricData"))
    EntityMetricData.type = Types::EntityMetricData
    EntityMetricDataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityMetricData)
    EvaluationState.add_member(:partial_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PARTIAL_DATA", traits: {"smithy.api#enumValue" => "PARTIAL_DATA"}))
    ExtendedStatistics.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedStatistic)
    GetDashboardInput.add_member(:dashboard_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardName, location_name: "DashboardName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetDashboardInput.type = Types::GetDashboardInput
    GetDashboardOutput.add_member(:dashboard_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardArn, location_name: "DashboardArn"))
    GetDashboardOutput.add_member(:dashboard_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardBody, location_name: "DashboardBody"))
    GetDashboardOutput.add_member(:dashboard_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardName, location_name: "DashboardName"))
    GetDashboardOutput.type = Types::GetDashboardOutput
    GetInsightRuleReportInput.add_member(:rule_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleName, location_name: "RuleName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetInsightRuleReportInput.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetInsightRuleReportInput.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetInsightRuleReportInput.add_member(:period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Period, location_name: "Period", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetInsightRuleReportInput.add_member(:max_contributor_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleUnboundInteger, location_name: "MaxContributorCount"))
    GetInsightRuleReportInput.add_member(:metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleMetricList, location_name: "Metrics"))
    GetInsightRuleReportInput.add_member(:order_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleOrderBy, location_name: "OrderBy"))
    GetInsightRuleReportInput.type = Types::GetInsightRuleReportInput
    GetInsightRuleReportOutput.add_member(:key_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleContributorKeyLabels, location_name: "KeyLabels"))
    GetInsightRuleReportOutput.add_member(:aggregation_statistic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleAggregationStatistic, location_name: "AggregationStatistic"))
    GetInsightRuleReportOutput.add_member(:aggregate_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleUnboundDouble, location_name: "AggregateValue"))
    GetInsightRuleReportOutput.add_member(:approximate_unique_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleUnboundLong, location_name: "ApproximateUniqueCount"))
    GetInsightRuleReportOutput.add_member(:contributors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleContributors, location_name: "Contributors"))
    GetInsightRuleReportOutput.add_member(:metric_datapoints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleMetricDatapoints, location_name: "MetricDatapoints"))
    GetInsightRuleReportOutput.type = Types::GetInsightRuleReportOutput
    GetMetricDataInput.add_member(:metric_data_queries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDataQueries, location_name: "MetricDataQueries", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetMetricDataInput.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetMetricDataInput.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetMetricDataInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetMetricDataInput.add_member(:scan_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanBy, location_name: "ScanBy"))
    GetMetricDataInput.add_member(:max_datapoints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMetricDataMaxDatapoints, location_name: "MaxDatapoints"))
    GetMetricDataInput.add_member(:label_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LabelOptions, location_name: "LabelOptions"))
    GetMetricDataInput.type = Types::GetMetricDataInput
    GetMetricDataOutput.add_member(:metric_data_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDataResults, location_name: "MetricDataResults"))
    GetMetricDataOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetMetricDataOutput.add_member(:messages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDataResultMessages, location_name: "Messages"))
    GetMetricDataOutput.type = Types::GetMetricDataOutput
    GetMetricStatisticsInput.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetMetricStatisticsInput.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetMetricStatisticsInput.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dimensions, location_name: "Dimensions"))
    GetMetricStatisticsInput.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetMetricStatisticsInput.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetMetricStatisticsInput.add_member(:period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Period, location_name: "Period", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetMetricStatisticsInput.add_member(:statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Statistics, location_name: "Statistics"))
    GetMetricStatisticsInput.add_member(:extended_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedStatistics, location_name: "ExtendedStatistics"))
    GetMetricStatisticsInput.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StandardUnit, location_name: "Unit"))
    GetMetricStatisticsInput.type = Types::GetMetricStatisticsInput
    GetMetricStatisticsOutput.add_member(:label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricLabel, location_name: "Label"))
    GetMetricStatisticsOutput.add_member(:datapoints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Datapoints, location_name: "Datapoints"))
    GetMetricStatisticsOutput.type = Types::GetMetricStatisticsOutput
    GetMetricStreamInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStreamName, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetMetricStreamInput.type = Types::GetMetricStreamInput
    GetMetricStreamOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "Arn"))
    GetMetricStreamOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStreamName, location_name: "Name"))
    GetMetricStreamOutput.add_member(:include_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStreamFilters, location_name: "IncludeFilters"))
    GetMetricStreamOutput.add_member(:exclude_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStreamFilters, location_name: "ExcludeFilters"))
    GetMetricStreamOutput.add_member(:firehose_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "FirehoseArn"))
    GetMetricStreamOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "RoleArn"))
    GetMetricStreamOutput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStreamState, location_name: "State"))
    GetMetricStreamOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationDate"))
    GetMetricStreamOutput.add_member(:last_update_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdateDate"))
    GetMetricStreamOutput.add_member(:output_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStreamOutputFormat, location_name: "OutputFormat"))
    GetMetricStreamOutput.add_member(:statistics_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStreamStatisticsConfigurations, location_name: "StatisticsConfigurations"))
    GetMetricStreamOutput.add_member(:include_linked_accounts_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeLinkedAccountsMetrics, location_name: "IncludeLinkedAccountsMetrics"))
    GetMetricStreamOutput.type = Types::GetMetricStreamOutput
    GetMetricWidgetImageInput.add_member(:metric_widget, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricWidget, location_name: "MetricWidget", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetMetricWidgetImageInput.add_member(:output_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputFormat, location_name: "OutputFormat"))
    GetMetricWidgetImageInput.type = Types::GetMetricWidgetImageInput
    GetMetricWidgetImageOutput.add_member(:metric_widget_image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricWidgetImage, location_name: "MetricWidgetImage"))
    GetMetricWidgetImageOutput.type = Types::GetMetricWidgetImageOutput
    HistoryItemType.add_member(:configuration_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ConfigurationUpdate", traits: {"smithy.api#enumValue" => "ConfigurationUpdate"}))
    HistoryItemType.add_member(:state_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "StateUpdate", traits: {"smithy.api#enumValue" => "StateUpdate"}))
    HistoryItemType.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Action", traits: {"smithy.api#enumValue" => "Action"}))
    HistoryItemType.add_member(:alarm_contributor_state_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AlarmContributorStateUpdate", traits: {"smithy.api#enumValue" => "AlarmContributorStateUpdate"}))
    HistoryItemType.add_member(:alarm_contributor_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AlarmContributorAction", traits: {"smithy.api#enumValue" => "AlarmContributorAction"}))
    InsightRule.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleName, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InsightRule.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleState, location_name: "State", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InsightRule.add_member(:schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleSchema, location_name: "Schema", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InsightRule.add_member(:definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleDefinition, location_name: "Definition", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InsightRule.add_member(:managed_rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleIsManaged, location_name: "ManagedRule"))
    InsightRule.add_member(:apply_on_transformed_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleOnTransformedLogs, location_name: "ApplyOnTransformedLogs"))
    InsightRule.type = Types::InsightRule
    InsightRuleContributor.add_member(:keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleContributorKeys, location_name: "Keys", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InsightRuleContributor.add_member(:approximate_aggregate_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleUnboundDouble, location_name: "ApproximateAggregateValue", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InsightRuleContributor.add_member(:datapoints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleContributorDatapoints, location_name: "Datapoints", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InsightRuleContributor.type = Types::InsightRuleContributor
    InsightRuleContributorDatapoint.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InsightRuleContributorDatapoint.add_member(:approximate_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleUnboundDouble, location_name: "ApproximateValue", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InsightRuleContributorDatapoint.type = Types::InsightRuleContributorDatapoint
    InsightRuleContributorDatapoints.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleContributorDatapoint)
    InsightRuleContributorKeyLabels.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleContributorKeyLabel)
    InsightRuleContributorKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleContributorKey)
    InsightRuleContributors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleContributor)
    InsightRuleMetricDatapoint.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InsightRuleMetricDatapoint.add_member(:unique_contributors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleUnboundDouble, location_name: "UniqueContributors"))
    InsightRuleMetricDatapoint.add_member(:max_contributor_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleUnboundDouble, location_name: "MaxContributorValue"))
    InsightRuleMetricDatapoint.add_member(:sample_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleUnboundDouble, location_name: "SampleCount"))
    InsightRuleMetricDatapoint.add_member(:average, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleUnboundDouble, location_name: "Average"))
    InsightRuleMetricDatapoint.add_member(:sum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleUnboundDouble, location_name: "Sum"))
    InsightRuleMetricDatapoint.add_member(:minimum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleUnboundDouble, location_name: "Minimum"))
    InsightRuleMetricDatapoint.add_member(:maximum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleUnboundDouble, location_name: "Maximum"))
    InsightRuleMetricDatapoint.type = Types::InsightRuleMetricDatapoint
    InsightRuleMetricDatapoints.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleMetricDatapoint)
    InsightRuleMetricList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleMetricName)
    InsightRuleNames.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleName)
    InsightRules.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRule)
    InternalServiceFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaultDescription, location_name: "Message"))
    InternalServiceFault.type = Types::InternalServiceFault
    InvalidFormatFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidFormatFault.type = Types::InvalidFormatFault
    InvalidNextToken.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidNextToken.type = Types::InvalidNextToken
    InvalidParameterCombinationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsQueryErrorMessage, location_name: "message"))
    InvalidParameterCombinationException.type = Types::InvalidParameterCombinationException
    InvalidParameterValueException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsQueryErrorMessage, location_name: "message"))
    InvalidParameterValueException.type = Types::InvalidParameterValueException
    LabelOptions.add_member(:timezone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMetricDataLabelTimezone, location_name: "Timezone"))
    LabelOptions.type = Types::LabelOptions
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaultDescription, location_name: "Message"))
    LimitExceededException.type = Types::LimitExceededException
    LimitExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    LimitExceededFault.type = Types::LimitExceededFault
    ListDashboardsInput.add_member(:dashboard_name_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardNamePrefix, location_name: "DashboardNamePrefix"))
    ListDashboardsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDashboardsInput.type = Types::ListDashboardsInput
    ListDashboardsOutput.add_member(:dashboard_entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardEntries, location_name: "DashboardEntries"))
    ListDashboardsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDashboardsOutput.type = Types::ListDashboardsOutput
    ListManagedInsightRulesInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceARN", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListManagedInsightRulesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListManagedInsightRulesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleMaxResults, location_name: "MaxResults"))
    ListManagedInsightRulesInput.type = Types::ListManagedInsightRulesInput
    ListManagedInsightRulesOutput.add_member(:managed_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedRuleDescriptions, location_name: "ManagedRules"))
    ListManagedInsightRulesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListManagedInsightRulesOutput.type = Types::ListManagedInsightRulesOutput
    ListMetricStreamsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMetricStreamsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMetricStreamsMaxResults, location_name: "MaxResults"))
    ListMetricStreamsInput.type = Types::ListMetricStreamsInput
    ListMetricStreamsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMetricStreamsOutput.add_member(:entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStreamEntries, location_name: "Entries"))
    ListMetricStreamsOutput.type = Types::ListMetricStreamsOutput
    ListMetricsInput.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace"))
    ListMetricsInput.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    ListMetricsInput.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionFilters, location_name: "Dimensions"))
    ListMetricsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMetricsInput.add_member(:recently_active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecentlyActive, location_name: "RecentlyActive"))
    ListMetricsInput.add_member(:include_linked_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeLinkedAccounts, location_name: "IncludeLinkedAccounts"))
    ListMetricsInput.add_member(:owning_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "OwningAccount"))
    ListMetricsInput.type = Types::ListMetricsInput
    ListMetricsOutput.add_member(:metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Metrics, location_name: "Metrics"))
    ListMetricsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMetricsOutput.add_member(:owning_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwningAccounts, location_name: "OwningAccounts"))
    ListMetricsOutput.type = Types::ListMetricsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceARN", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ManagedRule.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: "TemplateName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ManagedRule.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceARN", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ManagedRule.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ManagedRule.type = Types::ManagedRule
    ManagedRuleDescription.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: "TemplateName"))
    ManagedRuleDescription.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceARN"))
    ManagedRuleDescription.add_member(:rule_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedRuleState, location_name: "RuleState"))
    ManagedRuleDescription.type = Types::ManagedRuleDescription
    ManagedRuleDescriptions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedRuleDescription)
    ManagedRuleState.add_member(:rule_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleName, location_name: "RuleName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ManagedRuleState.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleState, location_name: "State", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ManagedRuleState.type = Types::ManagedRuleState
    ManagedRules.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedRule)
    MessageData.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageDataCode, location_name: "Code"))
    MessageData.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageDataValue, location_name: "Value"))
    MessageData.type = Types::MessageData
    Metric.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace"))
    Metric.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    Metric.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dimensions, location_name: "Dimensions"))
    Metric.type = Types::Metric
    MetricAlarm.add_member(:alarm_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmName, location_name: "AlarmName"))
    MetricAlarm.add_member(:alarm_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmArn, location_name: "AlarmArn"))
    MetricAlarm.add_member(:alarm_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmDescription, location_name: "AlarmDescription"))
    MetricAlarm.add_member(:alarm_configuration_updated_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "AlarmConfigurationUpdatedTimestamp"))
    MetricAlarm.add_member(:actions_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionsEnabled, location_name: "ActionsEnabled"))
    MetricAlarm.add_member(:ok_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: "OKActions"))
    MetricAlarm.add_member(:alarm_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: "AlarmActions"))
    MetricAlarm.add_member(:insufficient_data_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: "InsufficientDataActions"))
    MetricAlarm.add_member(:state_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StateValue, location_name: "StateValue"))
    MetricAlarm.add_member(:state_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StateReason, location_name: "StateReason"))
    MetricAlarm.add_member(:state_reason_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StateReasonData, location_name: "StateReasonData"))
    MetricAlarm.add_member(:state_updated_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "StateUpdatedTimestamp"))
    MetricAlarm.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    MetricAlarm.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace"))
    MetricAlarm.add_member(:statistic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Statistic, location_name: "Statistic"))
    MetricAlarm.add_member(:extended_statistic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedStatistic, location_name: "ExtendedStatistic"))
    MetricAlarm.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dimensions, location_name: "Dimensions"))
    MetricAlarm.add_member(:period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Period, location_name: "Period"))
    MetricAlarm.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StandardUnit, location_name: "Unit"))
    MetricAlarm.add_member(:evaluation_periods, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationPeriods, location_name: "EvaluationPeriods"))
    MetricAlarm.add_member(:datapoints_to_alarm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatapointsToAlarm, location_name: "DatapointsToAlarm"))
    MetricAlarm.add_member(:threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Threshold, location_name: "Threshold"))
    MetricAlarm.add_member(:comparison_operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: "ComparisonOperator"))
    MetricAlarm.add_member(:treat_missing_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TreatMissingData, location_name: "TreatMissingData"))
    MetricAlarm.add_member(:evaluate_low_sample_count_percentile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluateLowSampleCountPercentile, location_name: "EvaluateLowSampleCountPercentile"))
    MetricAlarm.add_member(:metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDataQueries, location_name: "Metrics"))
    MetricAlarm.add_member(:threshold_metric_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricId, location_name: "ThresholdMetricId"))
    MetricAlarm.add_member(:evaluation_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationState, location_name: "EvaluationState"))
    MetricAlarm.add_member(:state_transitioned_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "StateTransitionedTimestamp"))
    MetricAlarm.type = Types::MetricAlarm
    MetricAlarms.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricAlarm)
    MetricCharacteristics.add_member(:periodic_spikes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PeriodicSpikes, location_name: "PeriodicSpikes"))
    MetricCharacteristics.type = Types::MetricCharacteristics
    MetricData.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDatum)
    MetricDataQueries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDataQuery)
    MetricDataQuery.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricId, location_name: "Id", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricDataQuery.add_member(:metric_stat, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStat, location_name: "MetricStat"))
    MetricDataQuery.add_member(:expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricExpression, location_name: "Expression"))
    MetricDataQuery.add_member(:label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricLabel, location_name: "Label"))
    MetricDataQuery.add_member(:return_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnData, location_name: "ReturnData"))
    MetricDataQuery.add_member(:period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Period, location_name: "Period"))
    MetricDataQuery.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    MetricDataQuery.type = Types::MetricDataQuery
    MetricDataResult.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricId, location_name: "Id"))
    MetricDataResult.add_member(:label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricLabel, location_name: "Label"))
    MetricDataResult.add_member(:timestamps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamps, location_name: "Timestamps"))
    MetricDataResult.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatapointValues, location_name: "Values"))
    MetricDataResult.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCode, location_name: "StatusCode"))
    MetricDataResult.add_member(:messages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDataResultMessages, location_name: "Messages"))
    MetricDataResult.type = Types::MetricDataResult
    MetricDataResultMessages.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageData)
    MetricDataResults.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDataResult)
    MetricDatum.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricDatum.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dimensions, location_name: "Dimensions"))
    MetricDatum.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    MetricDatum.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatapointValue, location_name: "Value"))
    MetricDatum.add_member(:statistic_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatisticSet, location_name: "StatisticValues"))
    MetricDatum.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Values, location_name: "Values"))
    MetricDatum.add_member(:counts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Counts, location_name: "Counts"))
    MetricDatum.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StandardUnit, location_name: "Unit"))
    MetricDatum.add_member(:storage_resolution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageResolution, location_name: "StorageResolution"))
    MetricDatum.type = Types::MetricDatum
    MetricMathAnomalyDetector.add_member(:metric_data_queries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDataQueries, location_name: "MetricDataQueries"))
    MetricMathAnomalyDetector.type = Types::MetricMathAnomalyDetector
    MetricStat.add_member(:metric, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Metric, location_name: "Metric", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricStat.add_member(:period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Period, location_name: "Period", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricStat.add_member(:stat, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stat, location_name: "Stat", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricStat.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StandardUnit, location_name: "Unit"))
    MetricStat.type = Types::MetricStat
    MetricStreamEntries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStreamEntry)
    MetricStreamEntry.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "Arn"))
    MetricStreamEntry.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationDate"))
    MetricStreamEntry.add_member(:last_update_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdateDate"))
    MetricStreamEntry.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStreamName, location_name: "Name"))
    MetricStreamEntry.add_member(:firehose_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "FirehoseArn"))
    MetricStreamEntry.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStreamState, location_name: "State"))
    MetricStreamEntry.add_member(:output_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStreamOutputFormat, location_name: "OutputFormat"))
    MetricStreamEntry.type = Types::MetricStreamEntry
    MetricStreamFilter.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace"))
    MetricStreamFilter.add_member(:metric_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStreamFilterMetricNames, location_name: "MetricNames"))
    MetricStreamFilter.type = Types::MetricStreamFilter
    MetricStreamFilterMetricNames.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName)
    MetricStreamFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStreamFilter)
    MetricStreamNames.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStreamName)
    MetricStreamOutputFormat.add_member(:json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JSON", traits: {"smithy.api#enumValue" => "json"}))
    MetricStreamOutputFormat.add_member(:open_telemetry_0_7, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OPEN_TELEMETRY_0_7", traits: {"smithy.api#enumValue" => "opentelemetry0.7"}))
    MetricStreamOutputFormat.add_member(:open_telemetry_1_0, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OPEN_TELEMETRY_1_0", traits: {"smithy.api#enumValue" => "opentelemetry1.0"}))
    MetricStreamStatisticsAdditionalStatistics.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStreamStatistic)
    MetricStreamStatisticsConfiguration.add_member(:include_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStreamStatisticsIncludeMetrics, location_name: "IncludeMetrics", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricStreamStatisticsConfiguration.add_member(:additional_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStreamStatisticsAdditionalStatistics, location_name: "AdditionalStatistics", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricStreamStatisticsConfiguration.type = Types::MetricStreamStatisticsConfiguration
    MetricStreamStatisticsConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStreamStatisticsConfiguration)
    MetricStreamStatisticsIncludeMetrics.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStreamStatisticsMetric)
    MetricStreamStatisticsMetric.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricStreamStatisticsMetric.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricStreamStatisticsMetric.type = Types::MetricStreamStatisticsMetric
    Metrics.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Metric)
    MissingRequiredParameterException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsQueryErrorMessage, location_name: "message"))
    MissingRequiredParameterException.type = Types::MissingRequiredParameterException
    OwningAccounts.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    PartialFailure.add_member(:failure_resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureResource, location_name: "FailureResource"))
    PartialFailure.add_member(:exception_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionType, location_name: "ExceptionType"))
    PartialFailure.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureCode, location_name: "FailureCode"))
    PartialFailure.add_member(:failure_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureDescription, location_name: "FailureDescription"))
    PartialFailure.type = Types::PartialFailure
    PutAnomalyDetectorInput.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace", traits: {"smithy.api#deprecated" => {"message" => "Use SingleMetricAnomalyDetector."}}))
    PutAnomalyDetectorInput.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName", traits: {"smithy.api#deprecated" => {"message" => "Use SingleMetricAnomalyDetector."}}))
    PutAnomalyDetectorInput.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dimensions, location_name: "Dimensions", traits: {"smithy.api#deprecated" => {"message" => "Use SingleMetricAnomalyDetector."}}))
    PutAnomalyDetectorInput.add_member(:stat, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorMetricStat, location_name: "Stat", traits: {"smithy.api#deprecated" => {"message" => "Use SingleMetricAnomalyDetector."}}))
    PutAnomalyDetectorInput.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorConfiguration, location_name: "Configuration"))
    PutAnomalyDetectorInput.add_member(:metric_characteristics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricCharacteristics, location_name: "MetricCharacteristics"))
    PutAnomalyDetectorInput.add_member(:single_metric_anomaly_detector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SingleMetricAnomalyDetector, location_name: "SingleMetricAnomalyDetector"))
    PutAnomalyDetectorInput.add_member(:metric_math_anomaly_detector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricMathAnomalyDetector, location_name: "MetricMathAnomalyDetector"))
    PutAnomalyDetectorInput.type = Types::PutAnomalyDetectorInput
    PutAnomalyDetectorOutput.type = Types::PutAnomalyDetectorOutput
    PutCompositeAlarmInput.add_member(:actions_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionsEnabled, location_name: "ActionsEnabled"))
    PutCompositeAlarmInput.add_member(:alarm_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: "AlarmActions"))
    PutCompositeAlarmInput.add_member(:alarm_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmDescription, location_name: "AlarmDescription"))
    PutCompositeAlarmInput.add_member(:alarm_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmName, location_name: "AlarmName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutCompositeAlarmInput.add_member(:alarm_rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmRule, location_name: "AlarmRule", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutCompositeAlarmInput.add_member(:insufficient_data_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: "InsufficientDataActions"))
    PutCompositeAlarmInput.add_member(:ok_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: "OKActions"))
    PutCompositeAlarmInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    PutCompositeAlarmInput.add_member(:actions_suppressor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmArn, location_name: "ActionsSuppressor"))
    PutCompositeAlarmInput.add_member(:actions_suppressor_wait_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SuppressorPeriod, location_name: "ActionsSuppressorWaitPeriod"))
    PutCompositeAlarmInput.add_member(:actions_suppressor_extension_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SuppressorPeriod, location_name: "ActionsSuppressorExtensionPeriod"))
    PutCompositeAlarmInput.type = Types::PutCompositeAlarmInput
    PutDashboardInput.add_member(:dashboard_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardName, location_name: "DashboardName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutDashboardInput.add_member(:dashboard_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardBody, location_name: "DashboardBody", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutDashboardInput.type = Types::PutDashboardInput
    PutDashboardOutput.add_member(:dashboard_validation_messages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardValidationMessages, location_name: "DashboardValidationMessages"))
    PutDashboardOutput.type = Types::PutDashboardOutput
    PutInsightRuleInput.add_member(:rule_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleName, location_name: "RuleName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutInsightRuleInput.add_member(:rule_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleState, location_name: "RuleState"))
    PutInsightRuleInput.add_member(:rule_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleDefinition, location_name: "RuleDefinition", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutInsightRuleInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    PutInsightRuleInput.add_member(:apply_on_transformed_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightRuleOnTransformedLogs, location_name: "ApplyOnTransformedLogs"))
    PutInsightRuleInput.type = Types::PutInsightRuleInput
    PutInsightRuleOutput.type = Types::PutInsightRuleOutput
    PutManagedInsightRulesInput.add_member(:managed_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedRules, location_name: "ManagedRules", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutManagedInsightRulesInput.type = Types::PutManagedInsightRulesInput
    PutManagedInsightRulesOutput.add_member(:failures, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchFailures, location_name: "Failures"))
    PutManagedInsightRulesOutput.type = Types::PutManagedInsightRulesOutput
    PutMetricAlarmInput.add_member(:alarm_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmName, location_name: "AlarmName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutMetricAlarmInput.add_member(:alarm_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmDescription, location_name: "AlarmDescription"))
    PutMetricAlarmInput.add_member(:actions_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionsEnabled, location_name: "ActionsEnabled"))
    PutMetricAlarmInput.add_member(:ok_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: "OKActions"))
    PutMetricAlarmInput.add_member(:alarm_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: "AlarmActions"))
    PutMetricAlarmInput.add_member(:insufficient_data_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: "InsufficientDataActions"))
    PutMetricAlarmInput.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    PutMetricAlarmInput.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace"))
    PutMetricAlarmInput.add_member(:statistic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Statistic, location_name: "Statistic"))
    PutMetricAlarmInput.add_member(:extended_statistic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedStatistic, location_name: "ExtendedStatistic"))
    PutMetricAlarmInput.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dimensions, location_name: "Dimensions"))
    PutMetricAlarmInput.add_member(:period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Period, location_name: "Period"))
    PutMetricAlarmInput.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StandardUnit, location_name: "Unit"))
    PutMetricAlarmInput.add_member(:evaluation_periods, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationPeriods, location_name: "EvaluationPeriods", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutMetricAlarmInput.add_member(:datapoints_to_alarm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatapointsToAlarm, location_name: "DatapointsToAlarm"))
    PutMetricAlarmInput.add_member(:threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Threshold, location_name: "Threshold"))
    PutMetricAlarmInput.add_member(:comparison_operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: "ComparisonOperator", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutMetricAlarmInput.add_member(:treat_missing_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TreatMissingData, location_name: "TreatMissingData"))
    PutMetricAlarmInput.add_member(:evaluate_low_sample_count_percentile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluateLowSampleCountPercentile, location_name: "EvaluateLowSampleCountPercentile"))
    PutMetricAlarmInput.add_member(:metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDataQueries, location_name: "Metrics"))
    PutMetricAlarmInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    PutMetricAlarmInput.add_member(:threshold_metric_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricId, location_name: "ThresholdMetricId"))
    PutMetricAlarmInput.type = Types::PutMetricAlarmInput
    PutMetricDataInput.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutMetricDataInput.add_member(:metric_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricData, location_name: "MetricData"))
    PutMetricDataInput.add_member(:entity_metric_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityMetricDataList, location_name: "EntityMetricData"))
    PutMetricDataInput.add_member(:strict_entity_validation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StrictEntityValidation, location_name: "StrictEntityValidation"))
    PutMetricDataInput.type = Types::PutMetricDataInput
    PutMetricStreamInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStreamName, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutMetricStreamInput.add_member(:include_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStreamFilters, location_name: "IncludeFilters"))
    PutMetricStreamInput.add_member(:exclude_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStreamFilters, location_name: "ExcludeFilters"))
    PutMetricStreamInput.add_member(:firehose_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "FirehoseArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutMetricStreamInput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "RoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutMetricStreamInput.add_member(:output_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStreamOutputFormat, location_name: "OutputFormat", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutMetricStreamInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    PutMetricStreamInput.add_member(:statistics_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStreamStatisticsConfigurations, location_name: "StatisticsConfigurations"))
    PutMetricStreamInput.add_member(:include_linked_accounts_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeLinkedAccountsMetrics, location_name: "IncludeLinkedAccountsMetrics"))
    PutMetricStreamInput.type = Types::PutMetricStreamInput
    PutMetricStreamOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "Arn"))
    PutMetricStreamOutput.type = Types::PutMetricStreamOutput
    Range.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Range.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Range.type = Types::Range
    RecentlyActive.add_member(:pt3_h, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PT3H", traits: {"smithy.api#enumValue" => "PT3H"}))
    ResourceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName)
    ResourceNotFound.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceNotFound.type = Types::ResourceNotFound
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaultDescription, location_name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ScanBy.add_member(:timestamp_descending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIMESTAMP_DESCENDING", traits: {"smithy.api#enumValue" => "TimestampDescending"}))
    ScanBy.add_member(:timestamp_ascending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIMESTAMP_ASCENDING", traits: {"smithy.api#enumValue" => "TimestampAscending"}))
    SetAlarmStateInput.add_member(:alarm_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmName, location_name: "AlarmName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetAlarmStateInput.add_member(:state_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StateValue, location_name: "StateValue", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetAlarmStateInput.add_member(:state_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StateReason, location_name: "StateReason", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetAlarmStateInput.add_member(:state_reason_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StateReasonData, location_name: "StateReasonData"))
    SetAlarmStateInput.type = Types::SetAlarmStateInput
    SingleMetricAnomalyDetector.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    SingleMetricAnomalyDetector.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace"))
    SingleMetricAnomalyDetector.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    SingleMetricAnomalyDetector.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dimensions, location_name: "Dimensions"))
    SingleMetricAnomalyDetector.add_member(:stat, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorMetricStat, location_name: "Stat"))
    SingleMetricAnomalyDetector.type = Types::SingleMetricAnomalyDetector
    StandardUnit.add_member(:seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Seconds", traits: {"smithy.api#enumValue" => "Seconds"}))
    StandardUnit.add_member(:microseconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Microseconds", traits: {"smithy.api#enumValue" => "Microseconds"}))
    StandardUnit.add_member(:milliseconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Milliseconds", traits: {"smithy.api#enumValue" => "Milliseconds"}))
    StandardUnit.add_member(:bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Bytes", traits: {"smithy.api#enumValue" => "Bytes"}))
    StandardUnit.add_member(:kilobytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Kilobytes", traits: {"smithy.api#enumValue" => "Kilobytes"}))
    StandardUnit.add_member(:megabytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Megabytes", traits: {"smithy.api#enumValue" => "Megabytes"}))
    StandardUnit.add_member(:gigabytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Gigabytes", traits: {"smithy.api#enumValue" => "Gigabytes"}))
    StandardUnit.add_member(:terabytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Terabytes", traits: {"smithy.api#enumValue" => "Terabytes"}))
    StandardUnit.add_member(:bits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Bits", traits: {"smithy.api#enumValue" => "Bits"}))
    StandardUnit.add_member(:kilobits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Kilobits", traits: {"smithy.api#enumValue" => "Kilobits"}))
    StandardUnit.add_member(:megabits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Megabits", traits: {"smithy.api#enumValue" => "Megabits"}))
    StandardUnit.add_member(:gigabits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Gigabits", traits: {"smithy.api#enumValue" => "Gigabits"}))
    StandardUnit.add_member(:terabits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Terabits", traits: {"smithy.api#enumValue" => "Terabits"}))
    StandardUnit.add_member(:percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Percent", traits: {"smithy.api#enumValue" => "Percent"}))
    StandardUnit.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Count", traits: {"smithy.api#enumValue" => "Count"}))
    StandardUnit.add_member(:bytes_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Bytes_Second", traits: {"smithy.api#enumValue" => "Bytes/Second"}))
    StandardUnit.add_member(:kilobytes_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Kilobytes_Second", traits: {"smithy.api#enumValue" => "Kilobytes/Second"}))
    StandardUnit.add_member(:megabytes_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Megabytes_Second", traits: {"smithy.api#enumValue" => "Megabytes/Second"}))
    StandardUnit.add_member(:gigabytes_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Gigabytes_Second", traits: {"smithy.api#enumValue" => "Gigabytes/Second"}))
    StandardUnit.add_member(:terabytes_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Terabytes_Second", traits: {"smithy.api#enumValue" => "Terabytes/Second"}))
    StandardUnit.add_member(:bits_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Bits_Second", traits: {"smithy.api#enumValue" => "Bits/Second"}))
    StandardUnit.add_member(:kilobits_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Kilobits_Second", traits: {"smithy.api#enumValue" => "Kilobits/Second"}))
    StandardUnit.add_member(:megabits_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Megabits_Second", traits: {"smithy.api#enumValue" => "Megabits/Second"}))
    StandardUnit.add_member(:gigabits_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Gigabits_Second", traits: {"smithy.api#enumValue" => "Gigabits/Second"}))
    StandardUnit.add_member(:terabits_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Terabits_Second", traits: {"smithy.api#enumValue" => "Terabits/Second"}))
    StandardUnit.add_member(:count_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Count_Second", traits: {"smithy.api#enumValue" => "Count/Second"}))
    StandardUnit.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "None", traits: {"smithy.api#enumValue" => "None"}))
    StartMetricStreamsInput.add_member(:names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStreamNames, location_name: "Names", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartMetricStreamsInput.type = Types::StartMetricStreamsInput
    StartMetricStreamsOutput.type = Types::StartMetricStreamsOutput
    StateValue.add_member(:ok, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OK", traits: {"smithy.api#enumValue" => "OK"}))
    StateValue.add_member(:alarm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALARM", traits: {"smithy.api#enumValue" => "ALARM"}))
    StateValue.add_member(:insufficient_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSUFFICIENT_DATA", traits: {"smithy.api#enumValue" => "INSUFFICIENT_DATA"}))
    Statistic.add_member(:sample_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SampleCount", traits: {"smithy.api#enumValue" => "SampleCount"}))
    Statistic.add_member(:average, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Average", traits: {"smithy.api#enumValue" => "Average"}))
    Statistic.add_member(:sum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Sum", traits: {"smithy.api#enumValue" => "Sum"}))
    Statistic.add_member(:minimum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Minimum", traits: {"smithy.api#enumValue" => "Minimum"}))
    Statistic.add_member(:maximum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Maximum", traits: {"smithy.api#enumValue" => "Maximum"}))
    StatisticSet.add_member(:sample_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatapointValue, location_name: "SampleCount", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StatisticSet.add_member(:sum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatapointValue, location_name: "Sum", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StatisticSet.add_member(:minimum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatapointValue, location_name: "Minimum", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StatisticSet.add_member(:maximum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatapointValue, location_name: "Maximum", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StatisticSet.type = Types::StatisticSet
    Statistics.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Statistic)
    StatusCode.add_member(:complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETE", traits: {"smithy.api#enumValue" => "Complete"}))
    StatusCode.add_member(:internal_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "InternalError"}))
    StatusCode.add_member(:partial_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PARTIAL_DATA", traits: {"smithy.api#enumValue" => "PartialData"}))
    StatusCode.add_member(:forbidden, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FORBIDDEN", traits: {"smithy.api#enumValue" => "Forbidden"}))
    StopMetricStreamsInput.add_member(:names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStreamNames, location_name: "Names", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StopMetricStreamsInput.type = Types::StopMetricStreamsInput
    StopMetricStreamsOutput.type = Types::StopMetricStreamsOutput
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: "Key", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "Value", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceARN", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    Timestamps.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp)
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceARN", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    Values.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatapointValue)

    GraniteServiceVersion20100801 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.cloudwatch#GraniteServiceVersion20100801"
      service.name = "GraniteServiceVersion20100801"
      service.version = "2010-08-01"
      service.traits = {"aws.api#service" => {"sdkId" => "CloudWatch", "arnNamespace" => "monitoring", "cloudFormationName" => "CloudWatch", "cloudTrailEventSource" => "monitoring.amazonaws.com", "docId" => "monitoring-2010-08-01", "endpointPrefix" => "monitoring"}, "aws.auth#sigv4" => {"name" => "monitoring"}, "aws.protocols#awsQuery" => {}, "smithy.api#title" => "Amazon CloudWatch", "smithy.api#xmlNamespace" => {"uri" => "http://monitoring.amazonaws.com/doc/2010-08-01/"}}
      service.add_operation(:delete_alarms, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#DeleteAlarms"
        operation.name = "DeleteAlarms"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAlarmsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFound)
        operation.traits = {}
      end)
      service.add_operation(:delete_anomaly_detector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#DeleteAnomalyDetector"
        operation.name = "DeleteAnomalyDetector"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAnomalyDetectorInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAnomalyDetectorOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_dashboards, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#DeleteDashboards"
        operation.name = "DeleteDashboards"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDashboardsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDashboardsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardNotFoundError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.traits = {}
      end)
      service.add_operation(:delete_insight_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#DeleteInsightRules"
        operation.name = "DeleteInsightRules"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInsightRulesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInsightRulesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.traits = {}
      end)
      service.add_operation(:delete_metric_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#DeleteMetricStream"
        operation.name = "DeleteMetricStream"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMetricStreamInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMetricStreamOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.traits = {}
      end)
      service.add_operation(:describe_alarm_contributors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#DescribeAlarmContributors"
        operation.name = "DescribeAlarmContributors"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAlarmContributorsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAlarmContributorsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextToken)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_alarm_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#DescribeAlarmHistory"
        operation.name = "DescribeAlarmHistory"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAlarmHistoryInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAlarmHistoryOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextToken)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeAlarmHistory.new
      end)
      service.add_operation(:describe_alarms, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#DescribeAlarms"
        operation.name = "DescribeAlarms"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAlarmsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAlarmsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextToken)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeAlarms.new
      end)
      service.add_operation(:describe_alarms_for_metric, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#DescribeAlarmsForMetric"
        operation.name = "DescribeAlarmsForMetric"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAlarmsForMetricInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAlarmsForMetricOutput)
        operation.traits = {}
      end)
      service.add_operation(:describe_anomaly_detectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#DescribeAnomalyDetectors"
        operation.name = "DescribeAnomalyDetectors"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAnomalyDetectorsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAnomalyDetectorsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextToken)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeAnomalyDetectors.new
      end)
      service.add_operation(:describe_insight_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#DescribeInsightRules"
        operation.name = "DescribeInsightRules"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInsightRulesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInsightRulesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextToken)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeInsightRules.new
      end)
      service.add_operation(:disable_alarm_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#DisableAlarmActions"
        operation.name = "DisableAlarmActions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableAlarmActionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {}
      end)
      service.add_operation(:disable_insight_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#DisableInsightRules"
        operation.name = "DisableInsightRules"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableInsightRulesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableInsightRulesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.traits = {}
      end)
      service.add_operation(:enable_alarm_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#EnableAlarmActions"
        operation.name = "EnableAlarmActions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableAlarmActionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {}
      end)
      service.add_operation(:enable_insight_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#EnableInsightRules"
        operation.name = "EnableInsightRules"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableInsightRulesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableInsightRulesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.traits = {}
      end)
      service.add_operation(:get_dashboard, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#GetDashboard"
        operation.name = "GetDashboard"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDashboardInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDashboardOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardNotFoundError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.traits = {}
      end)
      service.add_operation(:get_insight_rule_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#GetInsightRuleReport"
        operation.name = "GetInsightRuleReport"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightRuleReportInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightRuleReportOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_metric_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#GetMetricData"
        operation.name = "GetMetricData"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMetricDataInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMetricDataOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextToken)
        operation.traits = {}
        operation[:paginator] = Paginators::GetMetricData.new
      end)
      service.add_operation(:get_metric_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#GetMetricStatistics"
        operation.name = "GetMetricStatistics"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMetricStatisticsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMetricStatisticsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.traits = {}
      end)
      service.add_operation(:get_metric_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#GetMetricStream"
        operation.name = "GetMetricStream"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMetricStreamInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMetricStreamOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_metric_widget_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#GetMetricWidgetImage"
        operation.name = "GetMetricWidgetImage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMetricWidgetImageInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMetricWidgetImageOutput)
        operation.traits = {}
      end)
      service.add_operation(:list_dashboards, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#ListDashboards"
        operation.name = "ListDashboards"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDashboardsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDashboardsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListDashboards.new
      end)
      service.add_operation(:list_managed_insight_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#ListManagedInsightRules"
        operation.name = "ListManagedInsightRules"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListManagedInsightRulesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListManagedInsightRulesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextToken)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListManagedInsightRules.new
      end)
      service.add_operation(:list_metric_streams, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#ListMetricStreams"
        operation.name = "ListMetricStreams"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMetricStreamsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMetricStreamsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextToken)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListMetricStreams.new
      end)
      service.add_operation(:list_metrics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#ListMetrics"
        operation.name = "ListMetrics"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMetricsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMetricsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListMetricsSuccess", "params" => {"Namespace" => "AWS/EC2"}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListMetrics.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:put_anomaly_detector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#PutAnomalyDetector"
        operation.name = "PutAnomalyDetector"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAnomalyDetectorInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAnomalyDetectorOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.traits = {}
      end)
      service.add_operation(:put_composite_alarm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#PutCompositeAlarm"
        operation.name = "PutCompositeAlarm"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutCompositeAlarmInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:put_dashboard, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#PutDashboard"
        operation.name = "PutDashboard"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutDashboardInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutDashboardOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardInvalidInputError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.traits = {}
      end)
      service.add_operation(:put_insight_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#PutInsightRule"
        operation.name = "PutInsightRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutInsightRuleInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutInsightRuleOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.traits = {}
      end)
      service.add_operation(:put_managed_insight_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#PutManagedInsightRules"
        operation.name = "PutManagedInsightRules"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutManagedInsightRulesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutManagedInsightRulesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.traits = {}
      end)
      service.add_operation(:put_metric_alarm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#PutMetricAlarm"
        operation.name = "PutMetricAlarm"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutMetricAlarmInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:put_metric_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#PutMetricData"
        operation.name = "PutMetricData"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutMetricDataInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.traits = {"smithy.api#requestCompression" => {"encodings" => ["gzip"]}}
      end)
      service.add_operation(:put_metric_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#PutMetricStream"
        operation.name = "PutMetricStream"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutMetricStreamInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutMetricStreamOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.traits = {}
      end)
      service.add_operation(:set_alarm_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#SetAlarmState"
        operation.name = "SetAlarmState"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetAlarmStateInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFormatFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFound)
        operation.traits = {}
      end)
      service.add_operation(:start_metric_streams, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#StartMetricStreams"
        operation.name = "StartMetricStreams"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMetricStreamsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMetricStreamsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.traits = {}
      end)
      service.add_operation(:stop_metric_streams, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#StopMetricStreams"
        operation.name = "StopMetricStreams"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopMetricStreamsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopMetricStreamsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatch#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
