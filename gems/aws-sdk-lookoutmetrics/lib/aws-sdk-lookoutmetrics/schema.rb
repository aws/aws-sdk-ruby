# frozen_string_literal: true

# This is generated code!

module Aws::LookoutMetrics
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Action = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#Action', name: 'Action')
    ActivateAnomalyDetectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#ActivateAnomalyDetectorRequest', name: 'ActivateAnomalyDetectorRequest')
    ActivateAnomalyDetectorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#ActivateAnomalyDetectorResponse', name: 'ActivateAnomalyDetectorResponse')
    AggregationFunction = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutmetrics#AggregationFunction', name: 'AggregationFunction')
    Alert = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#Alert', name: 'Alert')
    AlertDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#AlertDescription', name: 'AlertDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "\\S"})
    AlertFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#AlertFilters', name: 'AlertFilters')
    AlertName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#AlertName', name: 'AlertName', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9\\-_]*$"})
    AlertStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutmetrics#AlertStatus', name: 'AlertStatus')
    AlertSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#AlertSummary', name: 'AlertSummary')
    AlertSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#AlertSummaryList', name: 'AlertSummaryList')
    AlertType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutmetrics#AlertType', name: 'AlertType')
    AnomalyDetectionTaskStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutmetrics#AnomalyDetectionTaskStatus', name: 'AnomalyDetectionTaskStatus')
    AnomalyDetectionTaskStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#AnomalyDetectionTaskStatusMessage', name: 'AnomalyDetectionTaskStatusMessage', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "\\S"})
    AnomalyDetectorConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#AnomalyDetectorConfig', name: 'AnomalyDetectorConfig')
    AnomalyDetectorConfigSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#AnomalyDetectorConfigSummary', name: 'AnomalyDetectorConfigSummary')
    AnomalyDetectorDataQualityMetric = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#AnomalyDetectorDataQualityMetric', name: 'AnomalyDetectorDataQualityMetric')
    AnomalyDetectorDataQualityMetricList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#AnomalyDetectorDataQualityMetricList', name: 'AnomalyDetectorDataQualityMetricList')
    AnomalyDetectorDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#AnomalyDetectorDescription', name: 'AnomalyDetectorDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "\\S"})
    AnomalyDetectorFailureType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutmetrics#AnomalyDetectorFailureType', name: 'AnomalyDetectorFailureType')
    AnomalyDetectorName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#AnomalyDetectorName', name: 'AnomalyDetectorName', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9\\-_]*$"})
    AnomalyDetectorStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutmetrics#AnomalyDetectorStatus', name: 'AnomalyDetectorStatus')
    AnomalyDetectorSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#AnomalyDetectorSummary', name: 'AnomalyDetectorSummary')
    AnomalyDetectorSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#AnomalyDetectorSummaryList', name: 'AnomalyDetectorSummaryList')
    AnomalyGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#AnomalyGroup', name: 'AnomalyGroup')
    AnomalyGroupStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#AnomalyGroupStatistics', name: 'AnomalyGroupStatistics')
    AnomalyGroupSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#AnomalyGroupSummary', name: 'AnomalyGroupSummary')
    AnomalyGroupSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#AnomalyGroupSummaryList', name: 'AnomalyGroupSummaryList')
    AnomalyGroupTimeSeries = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#AnomalyGroupTimeSeries', name: 'AnomalyGroupTimeSeries')
    AnomalyGroupTimeSeriesFeedback = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#AnomalyGroupTimeSeriesFeedback', name: 'AnomalyGroupTimeSeriesFeedback')
    AppFlowConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#AppFlowConfig', name: 'AppFlowConfig')
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:([a-z\\d-]+):.*:.*:.*:.+$"})
    AthenaDataCatalog = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#AthenaDataCatalog', name: 'AthenaDataCatalog', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    AthenaDatabaseName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#AthenaDatabaseName', name: 'AthenaDatabaseName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_]+$"})
    AthenaS3ResultsPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#AthenaS3ResultsPath', name: 'AthenaS3ResultsPath', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^s3://[a-z0-9].+$"})
    AthenaSourceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#AthenaSourceConfig', name: 'AthenaSourceConfig')
    AthenaTableName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#AthenaTableName', name: 'AthenaTableName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_]+$"})
    AthenaWorkGroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#AthenaWorkGroupName', name: 'AthenaWorkGroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9._-]{1,128}$"})
    AttributeValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#AttributeValue', name: 'AttributeValue')
    AutoDetectionMetricSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#AutoDetectionMetricSource', name: 'AutoDetectionMetricSource')
    AutoDetectionS3SourceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#AutoDetectionS3SourceConfig', name: 'AutoDetectionS3SourceConfig')
    BackTestAnomalyDetectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#BackTestAnomalyDetectorRequest', name: 'BackTestAnomalyDetectorRequest')
    BackTestAnomalyDetectorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#BackTestAnomalyDetectorResponse', name: 'BackTestAnomalyDetectorResponse')
    BackTestConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#BackTestConfiguration', name: 'BackTestConfiguration')
    BinaryAttributeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#BinaryAttributeValue', name: 'BinaryAttributeValue')
    BinaryListAttributeValue = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#BinaryListAttributeValue', name: 'BinaryListAttributeValue')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.lookoutmetrics#Boolean', name: 'Boolean')
    CSVFileCompression = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutmetrics#CSVFileCompression', name: 'CSVFileCompression')
    Charset = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#Charset', name: 'Charset', traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9\\-_]*$"})
    CloudWatchConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#CloudWatchConfig', name: 'CloudWatchConfig')
    ColumnName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#ColumnName', name: 'ColumnName', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9\\-_]*$"})
    Confidence = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutmetrics#Confidence', name: 'Confidence')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContributionMatrix = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#ContributionMatrix', name: 'ContributionMatrix')
    CreateAlertRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#CreateAlertRequest', name: 'CreateAlertRequest')
    CreateAlertResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#CreateAlertResponse', name: 'CreateAlertResponse')
    CreateAnomalyDetectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#CreateAnomalyDetectorRequest', name: 'CreateAnomalyDetectorRequest')
    CreateAnomalyDetectorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#CreateAnomalyDetectorResponse', name: 'CreateAnomalyDetectorResponse')
    CreateMetricSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#CreateMetricSetRequest', name: 'CreateMetricSetRequest')
    CreateMetricSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#CreateMetricSetResponse', name: 'CreateMetricSetResponse')
    CsvFormatDescriptor = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#CsvFormatDescriptor', name: 'CsvFormatDescriptor')
    DataItem = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#DataItem', name: 'DataItem')
    DataQualityMetric = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#DataQualityMetric', name: 'DataQualityMetric')
    DataQualityMetricDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#DataQualityMetricDescription', name: 'DataQualityMetricDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "\\S"})
    DataQualityMetricList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#DataQualityMetricList', name: 'DataQualityMetricList')
    DataQualityMetricType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutmetrics#DataQualityMetricType', name: 'DataQualityMetricType')
    DatabaseHost = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#DatabaseHost', name: 'DatabaseHost', traits: {"smithy.api#length" => {"min" => 1, "max" => 253}, "smithy.api#pattern" => "\\S"})
    DatabasePort = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lookoutmetrics#DatabasePort', name: 'DatabasePort', traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}})
    DateTimeFormat = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#DateTimeFormat', name: 'DateTimeFormat', traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "\\S"})
    DeactivateAnomalyDetectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#DeactivateAnomalyDetectorRequest', name: 'DeactivateAnomalyDetectorRequest')
    DeactivateAnomalyDetectorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#DeactivateAnomalyDetectorResponse', name: 'DeactivateAnomalyDetectorResponse')
    DeleteAlertRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#DeleteAlertRequest', name: 'DeleteAlertRequest')
    DeleteAlertResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#DeleteAlertResponse', name: 'DeleteAlertResponse')
    DeleteAnomalyDetectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#DeleteAnomalyDetectorRequest', name: 'DeleteAnomalyDetectorRequest')
    DeleteAnomalyDetectorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#DeleteAnomalyDetectorResponse', name: 'DeleteAnomalyDetectorResponse')
    Delimiter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#Delimiter', name: 'Delimiter', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}, "smithy.api#pattern" => "^[^\\r\\n]$"})
    DescribeAlertRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#DescribeAlertRequest', name: 'DescribeAlertRequest')
    DescribeAlertResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#DescribeAlertResponse', name: 'DescribeAlertResponse')
    DescribeAnomalyDetectionExecutionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#DescribeAnomalyDetectionExecutionsRequest', name: 'DescribeAnomalyDetectionExecutionsRequest')
    DescribeAnomalyDetectionExecutionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#DescribeAnomalyDetectionExecutionsResponse', name: 'DescribeAnomalyDetectionExecutionsResponse')
    DescribeAnomalyDetectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#DescribeAnomalyDetectorRequest', name: 'DescribeAnomalyDetectorRequest')
    DescribeAnomalyDetectorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#DescribeAnomalyDetectorResponse', name: 'DescribeAnomalyDetectorResponse')
    DescribeMetricSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#DescribeMetricSetRequest', name: 'DescribeMetricSetRequest')
    DescribeMetricSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#DescribeMetricSetResponse', name: 'DescribeMetricSetResponse')
    DetectMetricSetConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#DetectMetricSetConfigRequest', name: 'DetectMetricSetConfigRequest')
    DetectMetricSetConfigResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#DetectMetricSetConfigResponse', name: 'DetectMetricSetConfigResponse')
    DetectedCsvFormatDescriptor = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#DetectedCsvFormatDescriptor', name: 'DetectedCsvFormatDescriptor')
    DetectedField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#DetectedField', name: 'DetectedField')
    DetectedFileFormatDescriptor = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#DetectedFileFormatDescriptor', name: 'DetectedFileFormatDescriptor')
    DetectedJsonFormatDescriptor = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#DetectedJsonFormatDescriptor', name: 'DetectedJsonFormatDescriptor')
    DetectedMetricSetConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#DetectedMetricSetConfig', name: 'DetectedMetricSetConfig')
    DetectedMetricSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#DetectedMetricSource', name: 'DetectedMetricSource')
    DetectedS3SourceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#DetectedS3SourceConfig', name: 'DetectedS3SourceConfig')
    DimensionContribution = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#DimensionContribution', name: 'DimensionContribution')
    DimensionContributionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#DimensionContributionList', name: 'DimensionContributionList')
    DimensionFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#DimensionFilter', name: 'DimensionFilter')
    DimensionFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#DimensionFilterList', name: 'DimensionFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    DimensionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#DimensionList', name: 'DimensionList', traits: {"smithy.api#length" => {"min" => 1}})
    DimensionNameValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#DimensionNameValue', name: 'DimensionNameValue')
    DimensionNameValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#DimensionNameValueList', name: 'DimensionNameValueList')
    DimensionValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#DimensionValue', name: 'DimensionValue')
    DimensionValueContribution = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#DimensionValueContribution', name: 'DimensionValueContribution')
    DimensionValueContributionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#DimensionValueContributionList', name: 'DimensionValueContributionList')
    DimensionValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#DimensionValueList', name: 'DimensionValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Double = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.lookoutmetrics#Double', name: 'Double')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#ErrorMessage', name: 'ErrorMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ExecutionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#ExecutionList', name: 'ExecutionList')
    ExecutionStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#ExecutionStatus', name: 'ExecutionStatus')
    FieldName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#FieldName', name: 'FieldName')
    FileFormatDescriptor = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#FileFormatDescriptor', name: 'FileFormatDescriptor')
    Filter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#Filter', name: 'Filter')
    FilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#FilterList', name: 'FilterList', traits: {"smithy.api#length" => {"min" => 1}})
    FilterOperation = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutmetrics#FilterOperation', name: 'FilterOperation')
    FlowName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#FlowName', name: 'FlowName', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9][\\w!@#.-]+$"})
    Frequency = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutmetrics#Frequency', name: 'Frequency')
    GetAnomalyGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#GetAnomalyGroupRequest', name: 'GetAnomalyGroupRequest')
    GetAnomalyGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#GetAnomalyGroupResponse', name: 'GetAnomalyGroupResponse')
    GetDataQualityMetricsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#GetDataQualityMetricsRequest', name: 'GetDataQualityMetricsRequest')
    GetDataQualityMetricsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#GetDataQualityMetricsResponse', name: 'GetDataQualityMetricsResponse')
    GetFeedbackRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#GetFeedbackRequest', name: 'GetFeedbackRequest')
    GetFeedbackResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#GetFeedbackResponse', name: 'GetFeedbackResponse')
    GetSampleDataRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#GetSampleDataRequest', name: 'GetSampleDataRequest')
    GetSampleDataResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#GetSampleDataResponse', name: 'GetSampleDataResponse')
    HeaderList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#HeaderList', name: 'HeaderList')
    HeaderValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#HeaderValue', name: 'HeaderValue')
    HeaderValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#HeaderValueList', name: 'HeaderValueList')
    HistoricalDataPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#HistoricalDataPath', name: 'HistoricalDataPath', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^s3://[a-z0-9].+$"})
    HistoricalDataPathList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#HistoricalDataPathList', name: 'HistoricalDataPathList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lookoutmetrics#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    InterMetricImpactDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#InterMetricImpactDetails', name: 'InterMetricImpactDetails')
    InterMetricImpactList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#InterMetricImpactList', name: 'InterMetricImpactList')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ItemizedMetricStats = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#ItemizedMetricStats', name: 'ItemizedMetricStats')
    ItemizedMetricStatsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#ItemizedMetricStatsList', name: 'ItemizedMetricStatsList')
    JsonFileCompression = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutmetrics#JsonFileCompression', name: 'JsonFileCompression')
    JsonFormatDescriptor = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#JsonFormatDescriptor', name: 'JsonFormatDescriptor')
    KmsKeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#KmsKeyArn', name: 'KmsKeyArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws.*:kms:.*:[0-9]{12}:key/[a-z0-9]{8}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{12}$"})
    LambdaConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#LambdaConfiguration', name: 'LambdaConfiguration')
    ListAlertsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#ListAlertsRequest', name: 'ListAlertsRequest')
    ListAlertsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#ListAlertsResponse', name: 'ListAlertsResponse')
    ListAnomalyDetectorsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#ListAnomalyDetectorsRequest', name: 'ListAnomalyDetectorsRequest')
    ListAnomalyDetectorsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#ListAnomalyDetectorsResponse', name: 'ListAnomalyDetectorsResponse')
    ListAnomalyGroupRelatedMetricsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#ListAnomalyGroupRelatedMetricsRequest', name: 'ListAnomalyGroupRelatedMetricsRequest')
    ListAnomalyGroupRelatedMetricsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#ListAnomalyGroupRelatedMetricsResponse', name: 'ListAnomalyGroupRelatedMetricsResponse')
    ListAnomalyGroupSummariesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#ListAnomalyGroupSummariesRequest', name: 'ListAnomalyGroupSummariesRequest')
    ListAnomalyGroupSummariesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#ListAnomalyGroupSummariesResponse', name: 'ListAnomalyGroupSummariesResponse')
    ListAnomalyGroupTimeSeriesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#ListAnomalyGroupTimeSeriesRequest', name: 'ListAnomalyGroupTimeSeriesRequest')
    ListAnomalyGroupTimeSeriesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#ListAnomalyGroupTimeSeriesResponse', name: 'ListAnomalyGroupTimeSeriesResponse')
    ListMetricSetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#ListMetricSetsRequest', name: 'ListMetricSetsRequest')
    ListMetricSetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#ListMetricSetsResponse', name: 'ListMetricSetsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lookoutmetrics#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Message = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#Message', name: 'Message')
    Metric = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#Metric', name: 'Metric')
    MetricChangePercentage = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.lookoutmetrics#MetricChangePercentage', name: 'MetricChangePercentage', traits: {"smithy.api#range" => {"min" => 0.0, "max" => 100.0}})
    MetricLevelImpact = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#MetricLevelImpact', name: 'MetricLevelImpact')
    MetricLevelImpactList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#MetricLevelImpactList', name: 'MetricLevelImpactList')
    MetricList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#MetricList', name: 'MetricList', traits: {"smithy.api#length" => {"min" => 1}})
    MetricName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#MetricName', name: 'MetricName', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9\\-_]*$"})
    MetricNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#MetricNameList', name: 'MetricNameList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    MetricSetDataQualityMetric = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#MetricSetDataQualityMetric', name: 'MetricSetDataQualityMetric')
    MetricSetDataQualityMetricList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#MetricSetDataQualityMetricList', name: 'MetricSetDataQualityMetricList')
    MetricSetDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#MetricSetDescription', name: 'MetricSetDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "\\S"})
    MetricSetDimensionFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#MetricSetDimensionFilter', name: 'MetricSetDimensionFilter')
    MetricSetDimensionFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#MetricSetDimensionFilterList', name: 'MetricSetDimensionFilterList')
    MetricSetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#MetricSetName', name: 'MetricSetName', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9\\-_]*$"})
    MetricSetSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#MetricSetSummary', name: 'MetricSetSummary')
    MetricSetSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#MetricSetSummaryList', name: 'MetricSetSummaryList')
    MetricSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#MetricSource', name: 'MetricSource')
    MetricValue = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.lookoutmetrics#MetricValue', name: 'MetricValue')
    MetricValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#MetricValueList', name: 'MetricValueList')
    Namespace = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#Namespace', name: 'Namespace', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[^:]"})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 3000}, "smithy.api#pattern" => "\\S"})
    NumberAttributeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#NumberAttributeValue', name: 'NumberAttributeValue')
    NumberListAttributeValue = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#NumberListAttributeValue', name: 'NumberListAttributeValue')
    Offset = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lookoutmetrics#Offset', name: 'Offset', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 432000}})
    PoirotSecretManagerArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#PoirotSecretManagerArn', name: 'PoirotSecretManagerArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:([a-z\\d-]+):.*:.*:secret:AmazonLookoutMetrics-.+$"})
    PutFeedbackRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#PutFeedbackRequest', name: 'PutFeedbackRequest')
    PutFeedbackResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#PutFeedbackResponse', name: 'PutFeedbackResponse')
    QuotaCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#QuotaCode', name: 'QuotaCode')
    QuoteSymbol = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#QuoteSymbol', name: 'QuoteSymbol', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}, "smithy.api#pattern" => "^[^\\r\\n]|^$"})
    RDSDatabaseIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#RDSDatabaseIdentifier', name: 'RDSDatabaseIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z](?!.*--)(?!.*-$)[0-9a-zA-Z\\-]*$"})
    RDSDatabaseName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#RDSDatabaseName', name: 'RDSDatabaseName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_.]+$"})
    RDSSourceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#RDSSourceConfig', name: 'RDSSourceConfig')
    RedshiftClusterIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#RedshiftClusterIdentifier', name: 'RedshiftClusterIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-z](?!.*--)(?!.*-$)[0-9a-z\\-]*$"})
    RedshiftDatabaseName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#RedshiftDatabaseName', name: 'RedshiftDatabaseName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9_.]+$"})
    RedshiftSourceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#RedshiftSourceConfig', name: 'RedshiftSourceConfig')
    RelatedColumnName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#RelatedColumnName', name: 'RelatedColumnName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "\\S"})
    RelationshipType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutmetrics#RelationshipType', name: 'RelationshipType')
    ResourceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#ResourceId', name: 'ResourceId')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#ResourceType', name: 'ResourceType')
    S3SourceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#S3SourceConfig', name: 'S3SourceConfig')
    SNSConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#SNSConfiguration', name: 'SNSConfiguration')
    SampleDataS3SourceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#SampleDataS3SourceConfig', name: 'SampleDataS3SourceConfig')
    SampleRow = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#SampleRow', name: 'SampleRow')
    SampleRows = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#SampleRows', name: 'SampleRows')
    Score = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.lookoutmetrics#Score', name: 'Score', traits: {"smithy.api#range" => {"min" => 0.0, "max" => 100.0}})
    SecurityGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#SecurityGroupId', name: 'SecurityGroupId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[-0-9a-zA-Z]+$"})
    SecurityGroupIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#SecurityGroupIdList', name: 'SecurityGroupIdList')
    SensitivityThreshold = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lookoutmetrics#SensitivityThreshold', name: 'SensitivityThreshold', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    ServiceCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#ServiceCode', name: 'ServiceCode')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SnsFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutmetrics#SnsFormat', name: 'SnsFormat')
    StringAttributeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#StringAttributeValue', name: 'StringAttributeValue')
    StringListAttributeValue = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#StringListAttributeValue', name: 'StringListAttributeValue')
    SubnetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#SubnetId', name: 'SubnetId', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[\\-0-9a-zA-Z]+$"})
    SubnetIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#SubnetIdList', name: 'SubnetIdList')
    TableName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#TableName', name: 'TableName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9_.]*$"})
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.lookoutmetrics#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TemplatedPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#TemplatedPath', name: 'TemplatedPath', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^s3://[a-zA-Z0-9_\\-\\/ {}=]+$"})
    TemplatedPathList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#TemplatedPathList', name: 'TemplatedPathList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    TimeSeries = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#TimeSeries', name: 'TimeSeries')
    TimeSeriesFeedback = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#TimeSeriesFeedback', name: 'TimeSeriesFeedback')
    TimeSeriesFeedbackList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#TimeSeriesFeedbackList', name: 'TimeSeriesFeedbackList')
    TimeSeriesId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#TimeSeriesId', name: 'TimeSeriesId', traits: {"smithy.api#length" => {"min" => 0, "max" => 520}, "smithy.api#pattern" => "\\S"})
    TimeSeriesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#TimeSeriesList', name: 'TimeSeriesList')
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.lookoutmetrics#Timestamp', name: 'Timestamp')
    TimestampColumn = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#TimestampColumn', name: 'TimestampColumn')
    TimestampList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#TimestampList', name: 'TimestampList')
    TimestampString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#TimestampString', name: 'TimestampString', traits: {"smithy.api#length" => {"min" => 0, "max" => 60}, "smithy.api#pattern" => "^([12]\\d{3})-(1[0-2]|0[1-9])-(0[1-9]|[12]\\d|3[01])T([01]\\d|2[0-3]):([0-5]\\d):([0-5]\\d)(Z|(\\+|\\-)(0\\d|1[0-2]):([0-5]\\d)(\\[[[:alnum:]\\/\\_]+\\])?)$"})
    Timezone = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#Timezone', name: 'Timezone', traits: {"smithy.api#length" => {"min" => 0, "max" => 60}, "smithy.api#pattern" => "\\S"})
    TooManyRequestsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UUID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutmetrics#UUID', name: 'UUID', traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9]{8}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{12}$"})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateAlertRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#UpdateAlertRequest', name: 'UpdateAlertRequest')
    UpdateAlertResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#UpdateAlertResponse', name: 'UpdateAlertResponse')
    UpdateAnomalyDetectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#UpdateAnomalyDetectorRequest', name: 'UpdateAnomalyDetectorRequest')
    UpdateAnomalyDetectorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#UpdateAnomalyDetectorResponse', name: 'UpdateAnomalyDetectorResponse')
    UpdateMetricSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#UpdateMetricSetRequest', name: 'UpdateMetricSetRequest')
    UpdateMetricSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#UpdateMetricSetResponse', name: 'UpdateMetricSetResponse')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutmetrics#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutmetrics#ValidationExceptionReason', name: 'ValidationExceptionReason')
    VpcConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutmetrics#VpcConfiguration', name: 'VpcConfiguration')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    Action.add_member(:sns_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SNSConfiguration, location_name: 'SNSConfiguration', traits: {"smithy.api#documentation" => "<p>A configuration for an Amazon SNS channel.</p>"}))
    Action.add_member(:lambda_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaConfiguration, location_name: 'LambdaConfiguration', traits: {"smithy.api#documentation" => "<p>A configuration for an AWS Lambda channel.</p>"}))
    Action.type = Types::Action
    ActivateAnomalyDetectorRequest.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AnomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The ARN of the anomaly detector.</p>", "smithy.api#required" => {}}))
    ActivateAnomalyDetectorRequest.type = Types::ActivateAnomalyDetectorRequest
    ActivateAnomalyDetectorResponse.type = Types::ActivateAnomalyDetectorResponse
    AggregationFunction.add_member(:avg, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVG', traits: {"smithy.api#enumValue" => "AVG"}))
    AggregationFunction.add_member(:sum, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUM', traits: {"smithy.api#enumValue" => "SUM"}))
    Alert.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>Action that will be triggered when there is an alert.</p>"}))
    Alert.add_member(:alert_description, Smithy::Schema::Shapes::ShapeRef.new(shape: AlertDescription, location_name: 'AlertDescription', traits: {"smithy.api#documentation" => "<p>A description of the alert.</p>"}))
    Alert.add_member(:alert_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AlertArn', traits: {"smithy.api#documentation" => "<p>The ARN of the alert.</p>"}))
    Alert.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AnomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The ARN of the detector to which the alert is attached.</p>"}))
    Alert.add_member(:alert_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AlertName, location_name: 'AlertName', traits: {"smithy.api#documentation" => "<p>The name of the alert.</p>"}))
    Alert.add_member(:alert_sensitivity_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitivityThreshold, location_name: 'AlertSensitivityThreshold', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The minimum severity for an anomaly to trigger the alert.</p>"}))
    Alert.add_member(:alert_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AlertType, location_name: 'AlertType', traits: {"smithy.api#documentation" => "<p>The type of the alert.</p>"}))
    Alert.add_member(:alert_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AlertStatus, location_name: 'AlertStatus', traits: {"smithy.api#documentation" => "<p>The status of the alert.</p>"}))
    Alert.add_member(:last_modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModificationTime', traits: {"smithy.api#documentation" => "<p>The time at which the alert was last modified.</p>"}))
    Alert.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time at which the alert was created.</p>"}))
    Alert.add_member(:alert_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: AlertFilters, location_name: 'AlertFilters', traits: {"smithy.api#documentation" => "<p>The configuration of the alert filters, containing MetricList and DimensionFilter.</p>"}))
    Alert.type = Types::Alert
    AlertFilters.add_member(:metric_list, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricNameList, location_name: 'MetricList', traits: {"smithy.api#documentation" => "<p>The list of measures that you want to get alerts for.</p>"}))
    AlertFilters.add_member(:dimension_filter_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionFilterList, location_name: 'DimensionFilterList', traits: {"smithy.api#documentation" => "<p>The list of DimensionFilter objects that are used for dimension-based filtering.</p>"}))
    AlertFilters.type = Types::AlertFilters
    AlertStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AlertStatus.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    AlertSummary.add_member(:alert_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AlertArn', traits: {"smithy.api#documentation" => "<p>The ARN of the alert.</p>"}))
    AlertSummary.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AnomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The ARN of the detector to which the alert is attached.</p>"}))
    AlertSummary.add_member(:alert_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AlertName, location_name: 'AlertName', traits: {"smithy.api#documentation" => "<p>The name of the alert.</p>"}))
    AlertSummary.add_member(:alert_sensitivity_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitivityThreshold, location_name: 'AlertSensitivityThreshold', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The minimum severity for an anomaly to trigger the alert.</p>"}))
    AlertSummary.add_member(:alert_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AlertType, location_name: 'AlertType', traits: {"smithy.api#documentation" => "<p>The type of the alert.</p>"}))
    AlertSummary.add_member(:alert_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AlertStatus, location_name: 'AlertStatus', traits: {"smithy.api#documentation" => "<p>The status of the alert.</p>"}))
    AlertSummary.add_member(:last_modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModificationTime', traits: {"smithy.api#documentation" => "<p>The time at which the alert was last modified.</p>"}))
    AlertSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time at which the alert was created.</p>"}))
    AlertSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The alert's <a href=\"https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html\">tags</a>.</p>"}))
    AlertSummary.type = Types::AlertSummary
    AlertSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AlertSummary)
    AlertType.add_member(:sns, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNS', traits: {"smithy.api#enumValue" => "SNS"}))
    AlertType.add_member(:lambda, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAMBDA', traits: {"smithy.api#enumValue" => "LAMBDA"}))
    AnomalyDetectionTaskStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    AnomalyDetectionTaskStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    AnomalyDetectionTaskStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    AnomalyDetectionTaskStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    AnomalyDetectionTaskStatus.add_member(:failed_to_schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_TO_SCHEDULE', traits: {"smithy.api#enumValue" => "FAILED_TO_SCHEDULE"}))
    AnomalyDetectorConfig.add_member(:anomaly_detector_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: Frequency, location_name: 'AnomalyDetectorFrequency', traits: {"smithy.api#documentation" => "<p>The frequency at which the detector analyzes its source data.</p>"}))
    AnomalyDetectorConfig.type = Types::AnomalyDetectorConfig
    AnomalyDetectorConfigSummary.add_member(:anomaly_detector_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: Frequency, location_name: 'AnomalyDetectorFrequency', traits: {"smithy.api#documentation" => "<p>The interval at which the detector analyzes its source data.</p>"}))
    AnomalyDetectorConfigSummary.type = Types::AnomalyDetectorConfigSummary
    AnomalyDetectorDataQualityMetric.add_member(:start_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTimestamp', traits: {"smithy.api#documentation" => "<p>The start time for the data quality metrics collection.</p>"}))
    AnomalyDetectorDataQualityMetric.add_member(:metric_set_data_quality_metric_list, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricSetDataQualityMetricList, location_name: 'MetricSetDataQualityMetricList', traits: {"smithy.api#documentation" => "<p>An array of <code>DataQualityMetricList</code> objects. Each object in the array contains information about a data quality metric.</p>"}))
    AnomalyDetectorDataQualityMetric.type = Types::AnomalyDetectorDataQualityMetric
    AnomalyDetectorDataQualityMetricList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorDataQualityMetric)
    AnomalyDetectorFailureType.add_member(:activation_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVATION_FAILURE', traits: {"smithy.api#enumValue" => "ACTIVATION_FAILURE"}))
    AnomalyDetectorFailureType.add_member(:back_test_activation_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BACK_TEST_ACTIVATION_FAILURE', traits: {"smithy.api#enumValue" => "BACK_TEST_ACTIVATION_FAILURE"}))
    AnomalyDetectorFailureType.add_member(:deletion_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETION_FAILURE', traits: {"smithy.api#enumValue" => "DELETION_FAILURE"}))
    AnomalyDetectorFailureType.add_member(:deactivation_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEACTIVATION_FAILURE', traits: {"smithy.api#enumValue" => "DEACTIVATION_FAILURE"}))
    AnomalyDetectorStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AnomalyDetectorStatus.add_member(:activating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVATING', traits: {"smithy.api#enumValue" => "ACTIVATING"}))
    AnomalyDetectorStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    AnomalyDetectorStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    AnomalyDetectorStatus.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    AnomalyDetectorStatus.add_member(:learning, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LEARNING', traits: {"smithy.api#enumValue" => "LEARNING"}))
    AnomalyDetectorStatus.add_member(:back_test_activating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BACK_TEST_ACTIVATING', traits: {"smithy.api#enumValue" => "BACK_TEST_ACTIVATING"}))
    AnomalyDetectorStatus.add_member(:back_test_active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BACK_TEST_ACTIVE', traits: {"smithy.api#enumValue" => "BACK_TEST_ACTIVE"}))
    AnomalyDetectorStatus.add_member(:back_test_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BACK_TEST_COMPLETE', traits: {"smithy.api#enumValue" => "BACK_TEST_COMPLETE"}))
    AnomalyDetectorStatus.add_member(:deactivated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEACTIVATED', traits: {"smithy.api#enumValue" => "DEACTIVATED"}))
    AnomalyDetectorStatus.add_member(:deactivating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEACTIVATING', traits: {"smithy.api#enumValue" => "DEACTIVATING"}))
    AnomalyDetectorSummary.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AnomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The ARN of the detector.</p>"}))
    AnomalyDetectorSummary.add_member(:anomaly_detector_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorName, location_name: 'AnomalyDetectorName', traits: {"smithy.api#documentation" => "<p>The name of the detector.</p>"}))
    AnomalyDetectorSummary.add_member(:anomaly_detector_description, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorDescription, location_name: 'AnomalyDetectorDescription', traits: {"smithy.api#documentation" => "<p>A description of the detector.</p>"}))
    AnomalyDetectorSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time at which the detector was created.</p>"}))
    AnomalyDetectorSummary.add_member(:last_modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModificationTime', traits: {"smithy.api#documentation" => "<p>The time at which the detector was last modified.</p>"}))
    AnomalyDetectorSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of detector.</p>"}))
    AnomalyDetectorSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The detector's <a href=\"https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html\">tags</a>.</p>"}))
    AnomalyDetectorSummary.type = Types::AnomalyDetectorSummary
    AnomalyDetectorSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorSummary)
    AnomalyGroup.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampString, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The start time for the group.</p>"}))
    AnomalyGroup.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampString, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The end time for the group.</p>"}))
    AnomalyGroup.add_member(:anomaly_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'AnomalyGroupId', traits: {"smithy.api#documentation" => "<p>The ID of the anomaly group.</p>"}))
    AnomalyGroup.add_member(:anomaly_group_score, Smithy::Schema::Shapes::ShapeRef.new(shape: Score, location_name: 'AnomalyGroupScore', traits: {"smithy.api#documentation" => "<p>The severity score of the group.</p>"}))
    AnomalyGroup.add_member(:primary_metric_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'PrimaryMetricName', traits: {"smithy.api#documentation" => "<p>The name of the primary affected measure for the group.</p>"}))
    AnomalyGroup.add_member(:metric_level_impact_list, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricLevelImpactList, location_name: 'MetricLevelImpactList', traits: {"smithy.api#documentation" => "<p>A list of measures affected by the anomaly.</p>"}))
    AnomalyGroup.type = Types::AnomalyGroup
    AnomalyGroupStatistics.add_member(:evaluation_start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampString, location_name: 'EvaluationStartDate', traits: {"smithy.api#documentation" => "<p>The start of the time range that was searched.</p>"}))
    AnomalyGroupStatistics.add_member(:total_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of groups found.</p>"}))
    AnomalyGroupStatistics.add_member(:itemized_metric_stats_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ItemizedMetricStatsList, location_name: 'ItemizedMetricStatsList', traits: {"smithy.api#documentation" => "<p>Statistics for individual metrics within the group.</p>"}))
    AnomalyGroupStatistics.type = Types::AnomalyGroupStatistics
    AnomalyGroupSummary.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampString, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The start time for the group.</p>"}))
    AnomalyGroupSummary.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampString, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The end time for the group.</p>"}))
    AnomalyGroupSummary.add_member(:anomaly_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'AnomalyGroupId', traits: {"smithy.api#documentation" => "<p>The ID of the anomaly group.</p>"}))
    AnomalyGroupSummary.add_member(:anomaly_group_score, Smithy::Schema::Shapes::ShapeRef.new(shape: Score, location_name: 'AnomalyGroupScore', traits: {"smithy.api#documentation" => "<p>The severity score of the group.</p>"}))
    AnomalyGroupSummary.add_member(:primary_metric_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'PrimaryMetricName', traits: {"smithy.api#documentation" => "<p>The name of the primary affected measure for the group.</p>"}))
    AnomalyGroupSummary.type = Types::AnomalyGroupSummary
    AnomalyGroupSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyGroupSummary)
    AnomalyGroupTimeSeries.add_member(:anomaly_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'AnomalyGroupId', traits: {"smithy.api#documentation" => "<p>The ID of the anomaly group.</p>", "smithy.api#required" => {}}))
    AnomalyGroupTimeSeries.add_member(:time_series_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeSeriesId, location_name: 'TimeSeriesId', traits: {"smithy.api#documentation" => "<p>The ID of the metric.</p>"}))
    AnomalyGroupTimeSeries.type = Types::AnomalyGroupTimeSeries
    AnomalyGroupTimeSeriesFeedback.add_member(:anomaly_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'AnomalyGroupId', traits: {"smithy.api#documentation" => "<p>The ID of the anomaly group.</p>", "smithy.api#required" => {}}))
    AnomalyGroupTimeSeriesFeedback.add_member(:time_series_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeSeriesId, location_name: 'TimeSeriesId', traits: {"smithy.api#documentation" => "<p>The ID of the metric.</p>", "smithy.api#required" => {}}))
    AnomalyGroupTimeSeriesFeedback.add_member(:is_anomaly, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsAnomaly', traits: {"smithy.api#documentation" => "<p>Feedback on whether the metric is a legitimate anomaly.</p>", "smithy.api#required" => {}}))
    AnomalyGroupTimeSeriesFeedback.type = Types::AnomalyGroupTimeSeriesFeedback
    AppFlowConfig.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>An IAM role that gives Amazon Lookout for Metrics permission to access the flow.</p>"}))
    AppFlowConfig.add_member(:flow_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowName, location_name: 'FlowName', traits: {"smithy.api#documentation" => "<p> name of the flow.</p>"}))
    AppFlowConfig.type = Types::AppFlowConfig
    AthenaSourceConfig.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>An IAM role that gives Amazon Lookout for Metrics permission to access the data.</p>"}))
    AthenaSourceConfig.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AthenaDatabaseName, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The database's name.</p>"}))
    AthenaSourceConfig.add_member(:data_catalog, Smithy::Schema::Shapes::ShapeRef.new(shape: AthenaDataCatalog, location_name: 'DataCatalog', traits: {"smithy.api#documentation" => "<p>The database's data catalog.</p>"}))
    AthenaSourceConfig.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AthenaTableName, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>The database's table name.</p>"}))
    AthenaSourceConfig.add_member(:work_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AthenaWorkGroupName, location_name: 'WorkGroupName', traits: {"smithy.api#documentation" => "<p>The database's work group name.</p>"}))
    AthenaSourceConfig.add_member(:s3_results_path, Smithy::Schema::Shapes::ShapeRef.new(shape: AthenaS3ResultsPath, location_name: 'S3ResultsPath', traits: {"smithy.api#documentation" => "<p>The database's results path.</p>"}))
    AthenaSourceConfig.add_member(:back_test_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: BackTestConfiguration, location_name: 'BackTestConfiguration', traits: {"smithy.api#documentation" => "<p>Settings for backtest mode.</p>"}))
    AthenaSourceConfig.type = Types::AthenaSourceConfig
    AttributeValue.add_member(:s, Smithy::Schema::Shapes::ShapeRef.new(shape: StringAttributeValue, location_name: 'S', traits: {"smithy.api#documentation" => "<p>A string.</p>"}))
    AttributeValue.add_member(:n, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberAttributeValue, location_name: 'N', traits: {"smithy.api#documentation" => "<p>A number.</p>"}))
    AttributeValue.add_member(:b, Smithy::Schema::Shapes::ShapeRef.new(shape: BinaryAttributeValue, location_name: 'B', traits: {"smithy.api#documentation" => "<p>A binary value.</p>"}))
    AttributeValue.add_member(:ss, Smithy::Schema::Shapes::ShapeRef.new(shape: StringListAttributeValue, location_name: 'SS', traits: {"smithy.api#documentation" => "<p>A list of strings.</p>"}))
    AttributeValue.add_member(:ns, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberListAttributeValue, location_name: 'NS', traits: {"smithy.api#documentation" => "<p>A list of numbers.</p>"}))
    AttributeValue.add_member(:bs, Smithy::Schema::Shapes::ShapeRef.new(shape: BinaryListAttributeValue, location_name: 'BS', traits: {"smithy.api#documentation" => "<p>A list of binary values.</p>"}))
    AttributeValue.type = Types::AttributeValue
    AutoDetectionMetricSource.add_member(:s3_source_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoDetectionS3SourceConfig, location_name: 'S3SourceConfig', traits: {"smithy.api#documentation" => "<p>The source's source config.</p>"}))
    AutoDetectionMetricSource.type = Types::AutoDetectionMetricSource
    AutoDetectionS3SourceConfig.add_member(:templated_path_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplatedPathList, location_name: 'TemplatedPathList', traits: {"smithy.api#documentation" => "<p>The config's templated path list.</p>"}))
    AutoDetectionS3SourceConfig.add_member(:historical_data_path_list, Smithy::Schema::Shapes::ShapeRef.new(shape: HistoricalDataPathList, location_name: 'HistoricalDataPathList', traits: {"smithy.api#documentation" => "<p>The config's historical data path list.</p>"}))
    AutoDetectionS3SourceConfig.type = Types::AutoDetectionS3SourceConfig
    BackTestAnomalyDetectorRequest.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AnomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the anomaly detector.</p>", "smithy.api#required" => {}}))
    BackTestAnomalyDetectorRequest.type = Types::BackTestAnomalyDetectorRequest
    BackTestAnomalyDetectorResponse.type = Types::BackTestAnomalyDetectorResponse
    BackTestConfiguration.add_member(:run_back_test_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RunBackTestMode', traits: {"smithy.api#documentation" => "<p>Run a backtest instead of monitoring new data.</p>", "smithy.api#required" => {}}))
    BackTestConfiguration.type = Types::BackTestConfiguration
    BinaryListAttributeValue.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BinaryAttributeValue)
    CSVFileCompression.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    CSVFileCompression.add_member(:gzip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GZIP', traits: {"smithy.api#enumValue" => "GZIP"}))
    CloudWatchConfig.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>An IAM role that gives Amazon Lookout for Metrics permission to access data in Amazon CloudWatch.</p>"}))
    CloudWatchConfig.add_member(:back_test_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: BackTestConfiguration, location_name: 'BackTestConfiguration', traits: {"smithy.api#documentation" => "<p>Settings for backtest mode.</p>"}))
    CloudWatchConfig.type = Types::CloudWatchConfig
    Confidence.add_member(:high, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGH', traits: {"smithy.api#enumValue" => "HIGH"}))
    Confidence.add_member(:low, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW', traits: {"smithy.api#enumValue" => "LOW"}))
    Confidence.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource.</p>"}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource.</p>"}))
    ConflictException.type = Types::ConflictException
    ContributionMatrix.add_member(:dimension_contribution_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionContributionList, location_name: 'DimensionContributionList', traits: {"smithy.api#documentation" => "<p>A list of contributing dimensions.</p>"}))
    ContributionMatrix.type = Types::ContributionMatrix
    CreateAlertRequest.add_member(:alert_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AlertName, location_name: 'AlertName', traits: {"smithy.api#documentation" => "<p>The name of the alert.</p>", "smithy.api#required" => {}}))
    CreateAlertRequest.add_member(:alert_sensitivity_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitivityThreshold, location_name: 'AlertSensitivityThreshold', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>An integer from 0 to 100 specifying the alert sensitivity threshold.</p>"}))
    CreateAlertRequest.add_member(:alert_description, Smithy::Schema::Shapes::ShapeRef.new(shape: AlertDescription, location_name: 'AlertDescription', traits: {"smithy.api#documentation" => "<p>A description of the alert.</p>"}))
    CreateAlertRequest.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AnomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The ARN of the detector to which the alert is attached.</p>", "smithy.api#required" => {}}))
    CreateAlertRequest.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>Action that will be triggered when there is an alert.</p>", "smithy.api#required" => {}}))
    CreateAlertRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of <a href=\"https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html\">tags</a> to apply to the alert.</p>"}))
    CreateAlertRequest.add_member(:alert_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: AlertFilters, location_name: 'AlertFilters', traits: {"smithy.api#documentation" => "<p>The configuration of the alert filters, containing MetricList and DimensionFilterList.</p>"}))
    CreateAlertRequest.type = Types::CreateAlertRequest
    CreateAlertResponse.add_member(:alert_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AlertArn', traits: {"smithy.api#documentation" => "<p>The ARN of the alert.</p>"}))
    CreateAlertResponse.type = Types::CreateAlertResponse
    CreateAnomalyDetectorRequest.add_member(:anomaly_detector_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorName, location_name: 'AnomalyDetectorName', traits: {"smithy.api#documentation" => "<p>The name of the detector.</p>", "smithy.api#required" => {}}))
    CreateAnomalyDetectorRequest.add_member(:anomaly_detector_description, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorDescription, location_name: 'AnomalyDetectorDescription', traits: {"smithy.api#documentation" => "<p>A description of the detector.</p>"}))
    CreateAnomalyDetectorRequest.add_member(:anomaly_detector_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorConfig, location_name: 'AnomalyDetectorConfig', traits: {"smithy.api#documentation" => "<p>Contains information about the configuration of the anomaly detector.</p>", "smithy.api#required" => {}}))
    CreateAnomalyDetectorRequest.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The ARN of the KMS key to use to encrypt your data.</p>"}))
    CreateAnomalyDetectorRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of <a href=\"https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html\">tags</a> to apply to the anomaly detector.</p>"}))
    CreateAnomalyDetectorRequest.type = Types::CreateAnomalyDetectorRequest
    CreateAnomalyDetectorResponse.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AnomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The ARN of the detector.</p>"}))
    CreateAnomalyDetectorResponse.type = Types::CreateAnomalyDetectorResponse
    CreateMetricSetRequest.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AnomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The ARN of the anomaly detector that will use the dataset.</p>", "smithy.api#required" => {}}))
    CreateMetricSetRequest.add_member(:metric_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricSetName, location_name: 'MetricSetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset.</p>", "smithy.api#required" => {}}))
    CreateMetricSetRequest.add_member(:metric_set_description, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricSetDescription, location_name: 'MetricSetDescription', traits: {"smithy.api#documentation" => "<p>A description of the dataset you are creating.</p>"}))
    CreateMetricSetRequest.add_member(:metric_list, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricList, location_name: 'MetricList', traits: {"smithy.api#documentation" => "<p>A list of metrics that the dataset will contain.</p>", "smithy.api#required" => {}}))
    CreateMetricSetRequest.add_member(:offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Offset, location_name: 'Offset', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>After an interval ends, the amount of seconds that the detector waits before importing data. Offset is only supported for S3, Redshift, Athena and datasources.</p>"}))
    CreateMetricSetRequest.add_member(:timestamp_column, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampColumn, location_name: 'TimestampColumn', traits: {"smithy.api#documentation" => "<p>Contains information about the column used for tracking time in your source data.</p>"}))
    CreateMetricSetRequest.add_member(:dimension_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionList, location_name: 'DimensionList', traits: {"smithy.api#documentation" => "<p>A list of the fields you want to treat as dimensions.</p>"}))
    CreateMetricSetRequest.add_member(:metric_set_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: Frequency, location_name: 'MetricSetFrequency', traits: {"smithy.api#documentation" => "<p>The frequency with which the source data will be analyzed for anomalies.</p>"}))
    CreateMetricSetRequest.add_member(:metric_source, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricSource, location_name: 'MetricSource', traits: {"smithy.api#documentation" => "<p>Contains information about how the source data should be interpreted.</p>", "smithy.api#required" => {}}))
    CreateMetricSetRequest.add_member(:timezone, Smithy::Schema::Shapes::ShapeRef.new(shape: Timezone, location_name: 'Timezone', traits: {"smithy.api#documentation" => "<p>The time zone in which your source data was recorded.</p>"}))
    CreateMetricSetRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of <a href=\"https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html\">tags</a> to apply to the dataset.</p>"}))
    CreateMetricSetRequest.add_member(:dimension_filter_list, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricSetDimensionFilterList, location_name: 'DimensionFilterList', traits: {"smithy.api#documentation" => "<p>A list of filters that specify which data is kept for anomaly detection.</p>"}))
    CreateMetricSetRequest.type = Types::CreateMetricSetRequest
    CreateMetricSetResponse.add_member(:metric_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'MetricSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the dataset.</p>"}))
    CreateMetricSetResponse.type = Types::CreateMetricSetResponse
    CsvFormatDescriptor.add_member(:file_compression, Smithy::Schema::Shapes::ShapeRef.new(shape: CSVFileCompression, location_name: 'FileCompression', traits: {"smithy.api#documentation" => "<p>The level of compression of the source CSV file.</p>"}))
    CsvFormatDescriptor.add_member(:charset, Smithy::Schema::Shapes::ShapeRef.new(shape: Charset, location_name: 'Charset', traits: {"smithy.api#documentation" => "<p>The character set in which the source CSV file is written.</p>"}))
    CsvFormatDescriptor.add_member(:contains_header, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ContainsHeader', traits: {"smithy.api#documentation" => "<p>Whether or not the source CSV file contains a header.</p>"}))
    CsvFormatDescriptor.add_member(:delimiter, Smithy::Schema::Shapes::ShapeRef.new(shape: Delimiter, location_name: 'Delimiter', traits: {"smithy.api#documentation" => "<p>The character used to delimit the source CSV file.</p>"}))
    CsvFormatDescriptor.add_member(:header_list, Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderList, location_name: 'HeaderList', traits: {"smithy.api#documentation" => "<p>A list of the source CSV file's headers, if any.</p>"}))
    CsvFormatDescriptor.add_member(:quote_symbol, Smithy::Schema::Shapes::ShapeRef.new(shape: QuoteSymbol, location_name: 'QuoteSymbol', traits: {"smithy.api#documentation" => "<p>The character used as a quote character.</p>"}))
    CsvFormatDescriptor.type = Types::CsvFormatDescriptor
    DataQualityMetric.add_member(:metric_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataQualityMetricType, location_name: 'MetricType', traits: {"smithy.api#documentation" => "<p>The name of the data quality metric.</p>"}))
    DataQualityMetric.add_member(:metric_description, Smithy::Schema::Shapes::ShapeRef.new(shape: DataQualityMetricDescription, location_name: 'MetricDescription', traits: {"smithy.api#documentation" => "<p>A description of the data quality metric.</p>"}))
    DataQualityMetric.add_member(:related_column_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RelatedColumnName, location_name: 'RelatedColumnName', traits: {"smithy.api#documentation" => "<p>The column that is being monitored.</p>"}))
    DataQualityMetric.add_member(:metric_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'MetricValue', traits: {"smithy.api#documentation" => "<p>The value of the data quality metric.</p>"}))
    DataQualityMetric.type = Types::DataQualityMetric
    DataQualityMetricList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataQualityMetric)
    DataQualityMetricType.add_member(:column_completeness, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COLUMN_COMPLETENESS', traits: {"smithy.api#enumValue" => "COLUMN_COMPLETENESS"}))
    DataQualityMetricType.add_member(:dimension_uniqueness, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIMENSION_UNIQUENESS', traits: {"smithy.api#enumValue" => "DIMENSION_UNIQUENESS"}))
    DataQualityMetricType.add_member(:time_series_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIME_SERIES_COUNT', traits: {"smithy.api#enumValue" => "TIME_SERIES_COUNT"}))
    DataQualityMetricType.add_member(:rows_processed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROWS_PROCESSED', traits: {"smithy.api#enumValue" => "ROWS_PROCESSED"}))
    DataQualityMetricType.add_member(:rows_partial_compliance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROWS_PARTIAL_COMPLIANCE', traits: {"smithy.api#enumValue" => "ROWS_PARTIAL_COMPLIANCE"}))
    DataQualityMetricType.add_member(:invalid_rows_compliance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ROWS_COMPLIANCE', traits: {"smithy.api#enumValue" => "INVALID_ROWS_COMPLIANCE"}))
    DataQualityMetricType.add_member(:backtest_training_data_start_time_stamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BACKTEST_TRAINING_DATA_START_TIME_STAMP', traits: {"smithy.api#enumValue" => "BACKTEST_TRAINING_DATA_START_TIME_STAMP"}))
    DataQualityMetricType.add_member(:backtest_training_data_end_time_stamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BACKTEST_TRAINING_DATA_END_TIME_STAMP', traits: {"smithy.api#enumValue" => "BACKTEST_TRAINING_DATA_END_TIME_STAMP"}))
    DataQualityMetricType.add_member(:backtest_inference_data_start_time_stamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BACKTEST_INFERENCE_DATA_START_TIME_STAMP', traits: {"smithy.api#enumValue" => "BACKTEST_INFERENCE_DATA_START_TIME_STAMP"}))
    DataQualityMetricType.add_member(:backtest_inference_data_end_time_stamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BACKTEST_INFERENCE_DATA_END_TIME_STAMP', traits: {"smithy.api#enumValue" => "BACKTEST_INFERENCE_DATA_END_TIME_STAMP"}))
    DeactivateAnomalyDetectorRequest.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AnomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the anomaly detector.</p>", "smithy.api#required" => {}}))
    DeactivateAnomalyDetectorRequest.type = Types::DeactivateAnomalyDetectorRequest
    DeactivateAnomalyDetectorResponse.type = Types::DeactivateAnomalyDetectorResponse
    DeleteAlertRequest.add_member(:alert_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AlertArn', traits: {"smithy.api#documentation" => "<p>The ARN of the alert to delete.</p>", "smithy.api#required" => {}}))
    DeleteAlertRequest.type = Types::DeleteAlertRequest
    DeleteAlertResponse.type = Types::DeleteAlertResponse
    DeleteAnomalyDetectorRequest.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AnomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The ARN of the detector to delete.</p>", "smithy.api#required" => {}}))
    DeleteAnomalyDetectorRequest.type = Types::DeleteAnomalyDetectorRequest
    DeleteAnomalyDetectorResponse.type = Types::DeleteAnomalyDetectorResponse
    DescribeAlertRequest.add_member(:alert_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AlertArn', traits: {"smithy.api#documentation" => "<p>The ARN of the alert to describe.</p>", "smithy.api#required" => {}}))
    DescribeAlertRequest.type = Types::DescribeAlertRequest
    DescribeAlertResponse.add_member(:alert, Smithy::Schema::Shapes::ShapeRef.new(shape: Alert, location_name: 'Alert', traits: {"smithy.api#documentation" => "<p>Contains information about an alert.</p>"}))
    DescribeAlertResponse.type = Types::DescribeAlertResponse
    DescribeAnomalyDetectionExecutionsRequest.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AnomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the anomaly detector.</p>", "smithy.api#required" => {}}))
    DescribeAnomalyDetectionExecutionsRequest.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampString, location_name: 'Timestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of the anomaly detection job.</p>"}))
    DescribeAnomalyDetectionExecutionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The number of items to return in the response.</p>"}))
    DescribeAnomalyDetectionExecutionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>"}))
    DescribeAnomalyDetectionExecutionsRequest.type = Types::DescribeAnomalyDetectionExecutionsRequest
    DescribeAnomalyDetectionExecutionsResponse.add_member(:execution_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionList, location_name: 'ExecutionList', traits: {"smithy.api#documentation" => "<p>A list of detection jobs.</p>"}))
    DescribeAnomalyDetectionExecutionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's included if more results are available.</p>"}))
    DescribeAnomalyDetectionExecutionsResponse.type = Types::DescribeAnomalyDetectionExecutionsResponse
    DescribeAnomalyDetectorRequest.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AnomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The ARN of the detector to describe.</p>", "smithy.api#required" => {}}))
    DescribeAnomalyDetectorRequest.type = Types::DescribeAnomalyDetectorRequest
    DescribeAnomalyDetectorResponse.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AnomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The ARN of the detector.</p>"}))
    DescribeAnomalyDetectorResponse.add_member(:anomaly_detector_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorName, location_name: 'AnomalyDetectorName', traits: {"smithy.api#documentation" => "<p>The name of the detector.</p>"}))
    DescribeAnomalyDetectorResponse.add_member(:anomaly_detector_description, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorDescription, location_name: 'AnomalyDetectorDescription', traits: {"smithy.api#documentation" => "<p>A description of the detector.</p>"}))
    DescribeAnomalyDetectorResponse.add_member(:anomaly_detector_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorConfigSummary, location_name: 'AnomalyDetectorConfig', traits: {"smithy.api#documentation" => "<p>Contains information about the detector's configuration.</p>"}))
    DescribeAnomalyDetectorResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time at which the detector was created.</p>"}))
    DescribeAnomalyDetectorResponse.add_member(:last_modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModificationTime', traits: {"smithy.api#documentation" => "<p>The time at which the detector was last modified.</p>"}))
    DescribeAnomalyDetectorResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the detector.</p>"}))
    DescribeAnomalyDetectorResponse.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'FailureReason', traits: {"smithy.api#documentation" => "<p>The reason that the detector failed.</p>"}))
    DescribeAnomalyDetectorResponse.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The ARN of the KMS key to use to encrypt your data.</p>"}))
    DescribeAnomalyDetectorResponse.add_member(:failure_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorFailureType, location_name: 'FailureType', traits: {"smithy.api#documentation" => "<p>The process that caused the detector to fail.</p>"}))
    DescribeAnomalyDetectorResponse.type = Types::DescribeAnomalyDetectorResponse
    DescribeMetricSetRequest.add_member(:metric_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'MetricSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the dataset.</p>", "smithy.api#required" => {}}))
    DescribeMetricSetRequest.type = Types::DescribeMetricSetRequest
    DescribeMetricSetResponse.add_member(:metric_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'MetricSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the dataset.</p>"}))
    DescribeMetricSetResponse.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AnomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The ARN of the detector that contains the dataset.</p>"}))
    DescribeMetricSetResponse.add_member(:metric_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricSetName, location_name: 'MetricSetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset.</p>"}))
    DescribeMetricSetResponse.add_member(:metric_set_description, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricSetDescription, location_name: 'MetricSetDescription', traits: {"smithy.api#documentation" => "<p>The dataset's description.</p>"}))
    DescribeMetricSetResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time at which the dataset was created.</p>"}))
    DescribeMetricSetResponse.add_member(:last_modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModificationTime', traits: {"smithy.api#documentation" => "<p>The time at which the dataset was last modified.</p>"}))
    DescribeMetricSetResponse.add_member(:offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Offset, location_name: 'Offset', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>After an interval ends, the amount of seconds that the detector waits before importing data. Offset is only supported for S3, Redshift, Athena and datasources.</p>"}))
    DescribeMetricSetResponse.add_member(:metric_list, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricList, location_name: 'MetricList', traits: {"smithy.api#documentation" => "<p>A list of the metrics defined by the dataset.</p>"}))
    DescribeMetricSetResponse.add_member(:timestamp_column, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampColumn, location_name: 'TimestampColumn', traits: {"smithy.api#documentation" => "<p>Contains information about the column used for tracking time in your source data.</p>"}))
    DescribeMetricSetResponse.add_member(:dimension_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionList, location_name: 'DimensionList', traits: {"smithy.api#documentation" => "<p>A list of the dimensions chosen for analysis.</p>"}))
    DescribeMetricSetResponse.add_member(:metric_set_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: Frequency, location_name: 'MetricSetFrequency', traits: {"smithy.api#documentation" => "<p>The interval at which the data will be analyzed for anomalies.</p>"}))
    DescribeMetricSetResponse.add_member(:timezone, Smithy::Schema::Shapes::ShapeRef.new(shape: Timezone, location_name: 'Timezone', traits: {"smithy.api#documentation" => "<p>The time zone in which the dataset's data was recorded.</p>"}))
    DescribeMetricSetResponse.add_member(:metric_source, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricSource, location_name: 'MetricSource', traits: {"smithy.api#documentation" => "<p>Contains information about the dataset's source data.</p>"}))
    DescribeMetricSetResponse.add_member(:dimension_filter_list, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricSetDimensionFilterList, location_name: 'DimensionFilterList', traits: {"smithy.api#documentation" => "<p>The dimensions and their values that were used to filter the dataset.</p>"}))
    DescribeMetricSetResponse.type = Types::DescribeMetricSetResponse
    DetectMetricSetConfigRequest.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AnomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>An anomaly detector ARN.</p>", "smithy.api#required" => {}}))
    DetectMetricSetConfigRequest.add_member(:auto_detection_metric_source, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoDetectionMetricSource, location_name: 'AutoDetectionMetricSource', traits: {"smithy.api#documentation" => "<p>A data source.</p>", "smithy.api#required" => {}}))
    DetectMetricSetConfigRequest.type = Types::DetectMetricSetConfigRequest
    DetectMetricSetConfigResponse.add_member(:detected_metric_set_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectedMetricSetConfig, location_name: 'DetectedMetricSetConfig', traits: {"smithy.api#documentation" => "<p>The inferred dataset configuration for the datasource.</p>"}))
    DetectMetricSetConfigResponse.type = Types::DetectMetricSetConfigResponse
    DetectedCsvFormatDescriptor.add_member(:file_compression, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectedField, location_name: 'FileCompression', traits: {"smithy.api#documentation" => "<p>The format's file compression.</p>"}))
    DetectedCsvFormatDescriptor.add_member(:charset, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectedField, location_name: 'Charset', traits: {"smithy.api#documentation" => "<p>The format's charset.</p>"}))
    DetectedCsvFormatDescriptor.add_member(:contains_header, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectedField, location_name: 'ContainsHeader', traits: {"smithy.api#documentation" => "<p>Whether the format includes a header.</p>"}))
    DetectedCsvFormatDescriptor.add_member(:delimiter, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectedField, location_name: 'Delimiter', traits: {"smithy.api#documentation" => "<p>The format's delimiter.</p>"}))
    DetectedCsvFormatDescriptor.add_member(:header_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectedField, location_name: 'HeaderList', traits: {"smithy.api#documentation" => "<p>The format's header list.</p>"}))
    DetectedCsvFormatDescriptor.add_member(:quote_symbol, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectedField, location_name: 'QuoteSymbol', traits: {"smithy.api#documentation" => "<p>The format's quote symbol.</p>"}))
    DetectedCsvFormatDescriptor.type = Types::DetectedCsvFormatDescriptor
    DetectedField.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The field's value.</p>"}))
    DetectedField.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Confidence, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>The field's confidence.</p>"}))
    DetectedField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The field's message.</p>"}))
    DetectedField.type = Types::DetectedField
    DetectedFileFormatDescriptor.add_member(:csv_format_descriptor, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectedCsvFormatDescriptor, location_name: 'CsvFormatDescriptor', traits: {"smithy.api#documentation" => "<p>Details about a CSV format.</p>"}))
    DetectedFileFormatDescriptor.add_member(:json_format_descriptor, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectedJsonFormatDescriptor, location_name: 'JsonFormatDescriptor', traits: {"smithy.api#documentation" => "<p>Details about a JSON format.</p>"}))
    DetectedFileFormatDescriptor.type = Types::DetectedFileFormatDescriptor
    DetectedJsonFormatDescriptor.add_member(:file_compression, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectedField, location_name: 'FileCompression', traits: {"smithy.api#documentation" => "<p>The format's file compression.</p>"}))
    DetectedJsonFormatDescriptor.add_member(:charset, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectedField, location_name: 'Charset', traits: {"smithy.api#documentation" => "<p>The format's character set.</p>"}))
    DetectedJsonFormatDescriptor.type = Types::DetectedJsonFormatDescriptor
    DetectedMetricSetConfig.add_member(:offset, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectedField, location_name: 'Offset', traits: {"smithy.api#documentation" => "<p>The dataset's offset.</p>"}))
    DetectedMetricSetConfig.add_member(:metric_set_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectedField, location_name: 'MetricSetFrequency', traits: {"smithy.api#documentation" => "<p>The dataset's interval.</p>"}))
    DetectedMetricSetConfig.add_member(:metric_source, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectedMetricSource, location_name: 'MetricSource', traits: {"smithy.api#documentation" => "<p>The dataset's data source.</p>"}))
    DetectedMetricSetConfig.type = Types::DetectedMetricSetConfig
    DetectedMetricSource.add_member(:s3_source_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectedS3SourceConfig, location_name: 'S3SourceConfig', traits: {"smithy.api#documentation" => "<p>The data source's source configuration.</p>"}))
    DetectedMetricSource.type = Types::DetectedMetricSource
    DetectedS3SourceConfig.add_member(:file_format_descriptor, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectedFileFormatDescriptor, location_name: 'FileFormatDescriptor', traits: {"smithy.api#documentation" => "<p>The source's file format descriptor.</p>"}))
    DetectedS3SourceConfig.type = Types::DetectedS3SourceConfig
    DimensionContribution.add_member(:dimension_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName, location_name: 'DimensionName', traits: {"smithy.api#documentation" => "<p>The name of the dimension.</p>"}))
    DimensionContribution.add_member(:dimension_value_contribution_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionValueContributionList, location_name: 'DimensionValueContributionList', traits: {"smithy.api#documentation" => "<p>A list of dimension values that contributed to the anomaly.</p>"}))
    DimensionContribution.type = Types::DimensionContribution
    DimensionContributionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionContribution)
    DimensionFilter.add_member(:dimension_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName, location_name: 'DimensionName', traits: {"smithy.api#documentation" => "<p>The name of the dimension to filter on.</p>"}))
    DimensionFilter.add_member(:dimension_value_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionValueList, location_name: 'DimensionValueList', traits: {"smithy.api#documentation" => "<p>The list of values for the dimension specified in DimensionName that you want to filter on.</p>"}))
    DimensionFilter.type = Types::DimensionFilter
    DimensionFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionFilter)
    DimensionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName)
    DimensionNameValue.add_member(:dimension_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName, location_name: 'DimensionName', traits: {"smithy.api#documentation" => "<p>The name of the dimension.</p>", "smithy.api#required" => {}}))
    DimensionNameValue.add_member(:dimension_value, Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionValue, location_name: 'DimensionValue', traits: {"smithy.api#documentation" => "<p>The value of the dimension.</p>", "smithy.api#required" => {}}))
    DimensionNameValue.type = Types::DimensionNameValue
    DimensionNameValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionNameValue)
    DimensionValueContribution.add_member(:dimension_value, Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionValue, location_name: 'DimensionValue', traits: {"smithy.api#documentation" => "<p>The value of the dimension.</p>"}))
    DimensionValueContribution.add_member(:contribution_score, Smithy::Schema::Shapes::ShapeRef.new(shape: Score, location_name: 'ContributionScore', traits: {"smithy.api#documentation" => "<p>The severity score of the value.</p>"}))
    DimensionValueContribution.type = Types::DimensionValueContribution
    DimensionValueContributionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionValueContribution)
    DimensionValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionValue)
    ExecutionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStatus)
    ExecutionStatus.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampString, location_name: 'Timestamp', traits: {"smithy.api#documentation" => "<p>The run's timestamp.</p>"}))
    ExecutionStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectionTaskStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The run's status.</p>"}))
    ExecutionStatus.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectionTaskStatusMessage, location_name: 'FailureReason', traits: {"smithy.api#documentation" => "<p>The reason that the run failed, if applicable.</p>"}))
    ExecutionStatus.type = Types::ExecutionStatus
    FileFormatDescriptor.add_member(:csv_format_descriptor, Smithy::Schema::Shapes::ShapeRef.new(shape: CsvFormatDescriptor, location_name: 'CsvFormatDescriptor', traits: {"smithy.api#documentation" => "<p>Contains information about how a source CSV data file should be analyzed.</p>"}))
    FileFormatDescriptor.add_member(:json_format_descriptor, Smithy::Schema::Shapes::ShapeRef.new(shape: JsonFormatDescriptor, location_name: 'JsonFormatDescriptor', traits: {"smithy.api#documentation" => "<p>Contains information about how a source JSON data file should be analyzed.</p>"}))
    FileFormatDescriptor.type = Types::FileFormatDescriptor
    Filter.add_member(:dimension_value, Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionValue, location_name: 'DimensionValue', traits: {"smithy.api#documentation" => "<p>The value that you want to include in the filter.</p>"}))
    Filter.add_member(:filter_operation, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterOperation, location_name: 'FilterOperation', traits: {"smithy.api#documentation" => "<p>The condition to apply.</p>"}))
    Filter.type = Types::Filter
    FilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Filter)
    FilterOperation.add_member(:equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS', traits: {"smithy.api#enumValue" => "EQUALS"}))
    Frequency.add_member(:p1_d, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'P1D', traits: {"smithy.api#enumValue" => "P1D"}))
    Frequency.add_member(:pt1_h, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PT1H', traits: {"smithy.api#enumValue" => "PT1H"}))
    Frequency.add_member(:pt10_m, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PT10M', traits: {"smithy.api#enumValue" => "PT10M"}))
    Frequency.add_member(:pt5_m, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PT5M', traits: {"smithy.api#enumValue" => "PT5M"}))
    GetAnomalyGroupRequest.add_member(:anomaly_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'AnomalyGroupId', traits: {"smithy.api#documentation" => "<p>The ID of the anomaly group.</p>", "smithy.api#required" => {}}))
    GetAnomalyGroupRequest.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AnomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the anomaly detector.</p>", "smithy.api#required" => {}}))
    GetAnomalyGroupRequest.type = Types::GetAnomalyGroupRequest
    GetAnomalyGroupResponse.add_member(:anomaly_group, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyGroup, location_name: 'AnomalyGroup', traits: {"smithy.api#documentation" => "<p>Details about the anomaly group.</p>"}))
    GetAnomalyGroupResponse.type = Types::GetAnomalyGroupResponse
    GetDataQualityMetricsRequest.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AnomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the anomaly detector that you want to investigate.</p>", "smithy.api#required" => {}}))
    GetDataQualityMetricsRequest.add_member(:metric_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'MetricSetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a specific data quality metric set.</p>"}))
    GetDataQualityMetricsRequest.type = Types::GetDataQualityMetricsRequest
    GetDataQualityMetricsResponse.add_member(:anomaly_detector_data_quality_metric_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorDataQualityMetricList, location_name: 'AnomalyDetectorDataQualityMetricList', traits: {"smithy.api#documentation" => "<p>A list of the data quality metrics for the <code>AnomalyDetectorArn</code> that you requested.</p>"}))
    GetDataQualityMetricsResponse.type = Types::GetDataQualityMetricsResponse
    GetFeedbackRequest.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AnomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the anomaly detector.</p>", "smithy.api#required" => {}}))
    GetFeedbackRequest.add_member(:anomaly_group_time_series_feedback, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyGroupTimeSeries, location_name: 'AnomalyGroupTimeSeriesFeedback', traits: {"smithy.api#documentation" => "<p>The anomalous metric and group ID.</p>", "smithy.api#required" => {}}))
    GetFeedbackRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>"}))
    GetFeedbackRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>"}))
    GetFeedbackRequest.type = Types::GetFeedbackRequest
    GetFeedbackResponse.add_member(:anomaly_group_time_series_feedback, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeSeriesFeedbackList, location_name: 'AnomalyGroupTimeSeriesFeedback', traits: {"smithy.api#documentation" => "<p>Feedback for an anomalous metric.</p>"}))
    GetFeedbackResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's included if more results are available.</p>"}))
    GetFeedbackResponse.type = Types::GetFeedbackResponse
    GetSampleDataRequest.add_member(:s3_source_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SampleDataS3SourceConfig, location_name: 'S3SourceConfig', traits: {"smithy.api#documentation" => "<p>A datasource bucket in Amazon S3.</p>"}))
    GetSampleDataRequest.type = Types::GetSampleDataRequest
    GetSampleDataResponse.add_member(:header_values, Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderValueList, location_name: 'HeaderValues', traits: {"smithy.api#documentation" => "<p>A list of header labels for the records.</p>"}))
    GetSampleDataResponse.add_member(:sample_rows, Smithy::Schema::Shapes::ShapeRef.new(shape: SampleRows, location_name: 'SampleRows', traits: {"smithy.api#documentation" => "<p>A list of records.</p>"}))
    GetSampleDataResponse.type = Types::GetSampleDataResponse
    HeaderList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName)
    HeaderValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderValue)
    HistoricalDataPathList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HistoricalDataPath)
    InterMetricImpactDetails.add_member(:metric_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'MetricName', traits: {"smithy.api#documentation" => "<p>The name of the measure.</p>"}))
    InterMetricImpactDetails.add_member(:anomaly_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'AnomalyGroupId', traits: {"smithy.api#documentation" => "<p>The ID of the anomaly group.</p>"}))
    InterMetricImpactDetails.add_member(:relationship_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RelationshipType, location_name: 'RelationshipType', traits: {"smithy.api#documentation" => "<p>Whether a measure is a potential cause of the anomaly group\n            (<code>CAUSE_OF_INPUT_ANOMALY_GROUP</code>), or whether the measure is impacted by the\n            anomaly group (<code>EFFECT_OF_INPUT_ANOMALY_GROUP</code>).</p>"}))
    InterMetricImpactDetails.add_member(:contribution_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricChangePercentage, location_name: 'ContributionPercentage', traits: {"smithy.api#documentation" => "<p>For potential causes (<code>CAUSE_OF_INPUT_ANOMALY_GROUP</code>), the percentage\n            contribution the measure has in causing the anomalies.</p>"}))
    InterMetricImpactDetails.type = Types::InterMetricImpactDetails
    InterMetricImpactList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InterMetricImpactDetails)
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ItemizedMetricStats.add_member(:metric_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName, location_name: 'MetricName', traits: {"smithy.api#documentation" => "<p>The name of the measure.</p>"}))
    ItemizedMetricStats.add_member(:occurrence_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'OccurrenceCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of times that the measure appears.</p>"}))
    ItemizedMetricStats.type = Types::ItemizedMetricStats
    ItemizedMetricStatsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ItemizedMetricStats)
    JsonFileCompression.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    JsonFileCompression.add_member(:gzip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GZIP', traits: {"smithy.api#enumValue" => "GZIP"}))
    JsonFormatDescriptor.add_member(:file_compression, Smithy::Schema::Shapes::ShapeRef.new(shape: JsonFileCompression, location_name: 'FileCompression', traits: {"smithy.api#documentation" => "<p>The level of compression of the source CSV file.</p>"}))
    JsonFormatDescriptor.add_member(:charset, Smithy::Schema::Shapes::ShapeRef.new(shape: Charset, location_name: 'Charset', traits: {"smithy.api#documentation" => "<p>The character set in which the source JSON file is written.</p>"}))
    JsonFormatDescriptor.type = Types::JsonFormatDescriptor
    LambdaConfiguration.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of an IAM role that has permission to invoke the Lambda function.</p>", "smithy.api#required" => {}}))
    LambdaConfiguration.add_member(:lambda_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'LambdaArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Lambda function.</p>", "smithy.api#required" => {}}))
    LambdaConfiguration.type = Types::LambdaConfiguration
    ListAlertsRequest.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AnomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The ARN of the alert's detector.</p>"}))
    ListAlertsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the result of the previous request is truncated, the response includes a <code>NextToken</code>. To\n      retrieve the next set of results, use the token in the next request. Tokens expire after 24 hours.</p>"}))
    ListAlertsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that will be displayed by the request.</p>"}))
    ListAlertsRequest.type = Types::ListAlertsRequest
    ListAlertsResponse.add_member(:alert_summary_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AlertSummaryList, location_name: 'AlertSummaryList', traits: {"smithy.api#documentation" => "<p>Contains information about an alert.</p>"}))
    ListAlertsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, the service returns this token. To retrieve the next set of results, use this\n      token in the next request.</p>"}))
    ListAlertsResponse.type = Types::ListAlertsResponse
    ListAnomalyDetectorsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>"}))
    ListAnomalyDetectorsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the result of the previous request was truncated, the response includes a <code>NextToken</code>. To\n      retrieve the next set of results, use the token in the next request. Tokens expire after 24 hours.</p>"}))
    ListAnomalyDetectorsRequest.type = Types::ListAnomalyDetectorsRequest
    ListAnomalyDetectorsResponse.add_member(:anomaly_detector_summary_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorSummaryList, location_name: 'AnomalyDetectorSummaryList', traits: {"smithy.api#documentation" => "<p>A list of anomaly detectors in the account in the current region.</p>"}))
    ListAnomalyDetectorsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, the service returns this token. To retrieve the next set of results, use the\n      token in the next request.</p>"}))
    ListAnomalyDetectorsResponse.type = Types::ListAnomalyDetectorsResponse
    ListAnomalyGroupRelatedMetricsRequest.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AnomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the anomaly detector.</p>", "smithy.api#required" => {}}))
    ListAnomalyGroupRelatedMetricsRequest.add_member(:anomaly_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'AnomalyGroupId', traits: {"smithy.api#documentation" => "<p>The ID of the anomaly group.</p>", "smithy.api#required" => {}}))
    ListAnomalyGroupRelatedMetricsRequest.add_member(:relationship_type_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: RelationshipType, location_name: 'RelationshipTypeFilter', traits: {"smithy.api#documentation" => "<p>Filter for potential causes (<code>CAUSE_OF_INPUT_ANOMALY_GROUP</code>) or\n            downstream effects (<code>EFFECT_OF_INPUT_ANOMALY_GROUP</code>) of the anomaly group.</p>"}))
    ListAnomalyGroupRelatedMetricsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>"}))
    ListAnomalyGroupRelatedMetricsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token that's returned by a previous request to retrieve the next\n            page of results.</p>"}))
    ListAnomalyGroupRelatedMetricsRequest.type = Types::ListAnomalyGroupRelatedMetricsRequest
    ListAnomalyGroupRelatedMetricsResponse.add_member(:inter_metric_impact_list, Smithy::Schema::Shapes::ShapeRef.new(shape: InterMetricImpactList, location_name: 'InterMetricImpactList', traits: {"smithy.api#documentation" => "<p>Aggregated details about the measures contributing to the anomaly group, and the measures\n            potentially impacted by the anomaly group.</p>"}))
    ListAnomalyGroupRelatedMetricsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's included if more results are available.</p>"}))
    ListAnomalyGroupRelatedMetricsResponse.type = Types::ListAnomalyGroupRelatedMetricsResponse
    ListAnomalyGroupSummariesRequest.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AnomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the anomaly detector.</p>", "smithy.api#required" => {}}))
    ListAnomalyGroupSummariesRequest.add_member(:sensitivity_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitivityThreshold, location_name: 'SensitivityThreshold', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The minimum severity score for inclusion in the output.</p>", "smithy.api#required" => {}}))
    ListAnomalyGroupSummariesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>"}))
    ListAnomalyGroupSummariesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>"}))
    ListAnomalyGroupSummariesRequest.type = Types::ListAnomalyGroupSummariesRequest
    ListAnomalyGroupSummariesResponse.add_member(:anomaly_group_summary_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyGroupSummaryList, location_name: 'AnomalyGroupSummaryList', traits: {"smithy.api#documentation" => "<p>A list of anomaly group summaries.</p>"}))
    ListAnomalyGroupSummariesResponse.add_member(:anomaly_group_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyGroupStatistics, location_name: 'AnomalyGroupStatistics', traits: {"smithy.api#documentation" => "<p>Aggregated details about the anomaly groups.</p>"}))
    ListAnomalyGroupSummariesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's included if more results are available.</p>"}))
    ListAnomalyGroupSummariesResponse.type = Types::ListAnomalyGroupSummariesResponse
    ListAnomalyGroupTimeSeriesRequest.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AnomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the anomaly detector.</p>", "smithy.api#required" => {}}))
    ListAnomalyGroupTimeSeriesRequest.add_member(:anomaly_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'AnomalyGroupId', traits: {"smithy.api#documentation" => "<p>The ID of the anomaly group.</p>", "smithy.api#required" => {}}))
    ListAnomalyGroupTimeSeriesRequest.add_member(:metric_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'MetricName', traits: {"smithy.api#documentation" => "<p>The name of the measure field.</p>", "smithy.api#required" => {}}))
    ListAnomalyGroupTimeSeriesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>"}))
    ListAnomalyGroupTimeSeriesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>"}))
    ListAnomalyGroupTimeSeriesRequest.type = Types::ListAnomalyGroupTimeSeriesRequest
    ListAnomalyGroupTimeSeriesResponse.add_member(:anomaly_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'AnomalyGroupId', traits: {"smithy.api#documentation" => "<p>The ID of the anomaly group.</p>"}))
    ListAnomalyGroupTimeSeriesResponse.add_member(:metric_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'MetricName', traits: {"smithy.api#documentation" => "<p>The name of the measure field.</p>"}))
    ListAnomalyGroupTimeSeriesResponse.add_member(:timestamp_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampList, location_name: 'TimestampList', traits: {"smithy.api#documentation" => "<p>Timestamps for the anomalous metrics.</p>"}))
    ListAnomalyGroupTimeSeriesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's included if more results are available.</p>"}))
    ListAnomalyGroupTimeSeriesResponse.add_member(:time_series_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeSeriesList, location_name: 'TimeSeriesList', traits: {"smithy.api#documentation" => "<p>A list of anomalous metrics.</p>"}))
    ListAnomalyGroupTimeSeriesResponse.type = Types::ListAnomalyGroupTimeSeriesResponse
    ListMetricSetsRequest.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AnomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The ARN of the anomaly detector containing the metrics sets to list.</p>"}))
    ListMetricSetsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>"}))
    ListMetricSetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the result of the previous request was truncated, the response includes a\n        <code>NextToken</code>. To retrieve the next set of results, use the token in the next\n      request. Tokens expire after 24 hours.</p>"}))
    ListMetricSetsRequest.type = Types::ListMetricSetsRequest
    ListMetricSetsResponse.add_member(:metric_set_summary_list, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricSetSummaryList, location_name: 'MetricSetSummaryList', traits: {"smithy.api#documentation" => "<p>A list of the datasets in the AWS Region, with configuration details for each.</p>"}))
    ListMetricSetsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, the list call returns this token. To retrieve the next set\n      of results, use the token in the next list request. </p>"}))
    ListMetricSetsResponse.type = Types::ListMetricSetsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The resource's Amazon Resource Name (ARN).</p>", "smithy.api#httpLabel" => {}, "smithy.api#jsonName" => "resourceArn", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The resource's tags.</p>", "smithy.api#jsonName" => "Tags"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    Metric.add_member(:metric_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName, location_name: 'MetricName', traits: {"smithy.api#documentation" => "<p>The name of the metric.</p>", "smithy.api#required" => {}}))
    Metric.add_member(:aggregation_function, Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationFunction, location_name: 'AggregationFunction', traits: {"smithy.api#documentation" => "<p>The function with which the metric is calculated.</p>", "smithy.api#required" => {}}))
    Metric.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: 'Namespace', traits: {"smithy.api#documentation" => "<p>The namespace for the metric.</p>"}))
    Metric.type = Types::Metric
    MetricLevelImpact.add_member(:metric_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'MetricName', traits: {"smithy.api#documentation" => "<p>The name of the measure.</p>"}))
    MetricLevelImpact.add_member(:num_time_series, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumTimeSeries', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of anomalous metrics for the measure.</p>"}))
    MetricLevelImpact.add_member(:contribution_matrix, Smithy::Schema::Shapes::ShapeRef.new(shape: ContributionMatrix, location_name: 'ContributionMatrix', traits: {"smithy.api#documentation" => "<p>Details about the dimensions that contributed to the anomaly.</p>"}))
    MetricLevelImpact.type = Types::MetricLevelImpact
    MetricLevelImpactList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricLevelImpact)
    MetricList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Metric)
    MetricNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName)
    MetricSetDataQualityMetric.add_member(:metric_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'MetricSetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the data quality metric array.</p>"}))
    MetricSetDataQualityMetric.add_member(:data_quality_metric_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DataQualityMetricList, location_name: 'DataQualityMetricList', traits: {"smithy.api#documentation" => "<p>The array of data quality metrics contained in the data quality metric set.</p>"}))
    MetricSetDataQualityMetric.type = Types::MetricSetDataQualityMetric
    MetricSetDataQualityMetricList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricSetDataQualityMetric)
    MetricSetDimensionFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The dimension that you want to filter on.</p>"}))
    MetricSetDimensionFilter.add_member(:filter_list, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'FilterList', traits: {"smithy.api#documentation" => "<p>The list of filters that you are applying.</p>"}))
    MetricSetDimensionFilter.type = Types::MetricSetDimensionFilter
    MetricSetDimensionFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricSetDimensionFilter)
    MetricSetSummary.add_member(:metric_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'MetricSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the dataset.</p>"}))
    MetricSetSummary.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AnomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The ARN of the detector to which the dataset belongs.</p>"}))
    MetricSetSummary.add_member(:metric_set_description, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricSetDescription, location_name: 'MetricSetDescription', traits: {"smithy.api#documentation" => "<p>The description of the dataset.</p>"}))
    MetricSetSummary.add_member(:metric_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricSetName, location_name: 'MetricSetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset.</p>"}))
    MetricSetSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time at which the dataset was created.</p>"}))
    MetricSetSummary.add_member(:last_modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModificationTime', traits: {"smithy.api#documentation" => "<p>The time at which the dataset was last modified.</p>"}))
    MetricSetSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The dataset's <a href=\"https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html\">tags</a>.</p>"}))
    MetricSetSummary.type = Types::MetricSetSummary
    MetricSetSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricSetSummary)
    MetricSource.add_member(:s3_source_config, Smithy::Schema::Shapes::ShapeRef.new(shape: S3SourceConfig, location_name: 'S3SourceConfig'))
    MetricSource.add_member(:app_flow_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AppFlowConfig, location_name: 'AppFlowConfig', traits: {"smithy.api#documentation" => "<p>Details about an AppFlow datasource.</p>"}))
    MetricSource.add_member(:cloud_watch_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchConfig, location_name: 'CloudWatchConfig', traits: {"smithy.api#documentation" => "<p>Details about an Amazon CloudWatch monitoring datasource.</p>"}))
    MetricSource.add_member(:rds_source_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RDSSourceConfig, location_name: 'RDSSourceConfig', traits: {"smithy.api#documentation" => "<p>Details about an Amazon Relational Database Service (RDS) datasource.</p>"}))
    MetricSource.add_member(:redshift_source_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftSourceConfig, location_name: 'RedshiftSourceConfig', traits: {"smithy.api#documentation" => "<p>Details about an Amazon Redshift database datasource.</p>"}))
    MetricSource.add_member(:athena_source_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AthenaSourceConfig, location_name: 'AthenaSourceConfig', traits: {"smithy.api#documentation" => "<p>Details about an Amazon Athena datasource.</p>"}))
    MetricSource.type = Types::MetricSource
    MetricValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricValue)
    NumberListAttributeValue.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NumberAttributeValue)
    PutFeedbackRequest.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AnomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the anomaly detector.</p>", "smithy.api#required" => {}}))
    PutFeedbackRequest.add_member(:anomaly_group_time_series_feedback, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyGroupTimeSeriesFeedback, location_name: 'AnomalyGroupTimeSeriesFeedback', traits: {"smithy.api#documentation" => "<p>Feedback for an anomalous metric.</p>", "smithy.api#required" => {}}))
    PutFeedbackRequest.type = Types::PutFeedbackRequest
    PutFeedbackResponse.type = Types::PutFeedbackResponse
    RDSSourceConfig.add_member(:db_instance_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RDSDatabaseIdentifier, location_name: 'DBInstanceIdentifier', traits: {"smithy.api#documentation" => "<p>A string identifying the database instance.</p>"}))
    RDSSourceConfig.add_member(:database_host, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseHost, location_name: 'DatabaseHost', traits: {"smithy.api#documentation" => "<p>The host name of the database.</p>"}))
    RDSSourceConfig.add_member(:database_port, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabasePort, location_name: 'DatabasePort', traits: {"smithy.api#documentation" => "<p>The port number where the database can be accessed.</p>"}))
    RDSSourceConfig.add_member(:secret_manager_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PoirotSecretManagerArn, location_name: 'SecretManagerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AWS Secrets Manager role.</p>"}))
    RDSSourceConfig.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RDSDatabaseName, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the RDS database.</p>"}))
    RDSSourceConfig.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>The name of the table in the database.</p>"}))
    RDSSourceConfig.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the role.</p>"}))
    RDSSourceConfig.add_member(:vpc_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: 'VpcConfiguration', traits: {"smithy.api#documentation" => "<p>An object containing information about the Amazon Virtual Private Cloud (VPC) configuration.</p>"}))
    RDSSourceConfig.type = Types::RDSSourceConfig
    RedshiftSourceConfig.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftClusterIdentifier, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>A string identifying the Redshift cluster.</p>"}))
    RedshiftSourceConfig.add_member(:database_host, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseHost, location_name: 'DatabaseHost', traits: {"smithy.api#documentation" => "<p>The name of the database host.</p>"}))
    RedshiftSourceConfig.add_member(:database_port, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabasePort, location_name: 'DatabasePort', traits: {"smithy.api#documentation" => "<p>The port number where the database can be accessed.</p>"}))
    RedshiftSourceConfig.add_member(:secret_manager_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PoirotSecretManagerArn, location_name: 'SecretManagerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AWS Secrets Manager role.</p>"}))
    RedshiftSourceConfig.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftDatabaseName, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The Redshift database name.</p>"}))
    RedshiftSourceConfig.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>The table name of the Redshift database.</p>"}))
    RedshiftSourceConfig.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the role providing access to the database.</p>"}))
    RedshiftSourceConfig.add_member(:vpc_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: 'VpcConfiguration', traits: {"smithy.api#documentation" => "<p>Contains information about the Amazon Virtual Private Cloud (VPC) configuration.</p>"}))
    RedshiftSourceConfig.type = Types::RedshiftSourceConfig
    RelationshipType.add_member(:cause_of_input_anomaly_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CAUSE_OF_INPUT_ANOMALY_GROUP', traits: {"smithy.api#enumValue" => "CAUSE_OF_INPUT_ANOMALY_GROUP"}))
    RelationshipType.add_member(:effect_of_input_anomaly_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EFFECT_OF_INPUT_ANOMALY_GROUP', traits: {"smithy.api#enumValue" => "EFFECT_OF_INPUT_ANOMALY_GROUP"}))
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource.</p>"}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3SourceConfig.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of an IAM role that has read and write access permissions to the source S3 bucket.</p>"}))
    S3SourceConfig.add_member(:templated_path_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplatedPathList, location_name: 'TemplatedPathList', traits: {"smithy.api#documentation" => "<p>A list of templated paths to the source files.</p>"}))
    S3SourceConfig.add_member(:historical_data_path_list, Smithy::Schema::Shapes::ShapeRef.new(shape: HistoricalDataPathList, location_name: 'HistoricalDataPathList', traits: {"smithy.api#documentation" => "<p>A list of paths to the historical data files.</p>"}))
    S3SourceConfig.add_member(:file_format_descriptor, Smithy::Schema::Shapes::ShapeRef.new(shape: FileFormatDescriptor, location_name: 'FileFormatDescriptor', traits: {"smithy.api#documentation" => "<p>Contains information about a source file's formatting.</p>"}))
    S3SourceConfig.type = Types::S3SourceConfig
    SNSConfiguration.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that has access to the target SNS topic.</p>", "smithy.api#required" => {}}))
    SNSConfiguration.add_member(:sns_topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SnsTopicArn', traits: {"smithy.api#documentation" => "<p>The ARN of the target SNS topic.</p>", "smithy.api#required" => {}}))
    SNSConfiguration.add_member(:sns_format, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsFormat, location_name: 'SnsFormat', traits: {"smithy.api#documentation" => "<p>The format of the SNS topic.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>JSON</code> – Send JSON alerts with an anomaly ID and a link to the anomaly detail page. This is the default.</p>\n            </li>\n            <li>\n               <p>\n                  <code>LONG_TEXT</code> – Send human-readable alerts with information about the impacted timeseries and a link to the anomaly detail page. We recommend this for email.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SHORT_TEXT</code> – Send human-readable alerts with a link to the anomaly detail page. We recommend this for SMS.</p>\n            </li>\n         </ul>"}))
    SNSConfiguration.type = Types::SNSConfiguration
    SampleDataS3SourceConfig.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the role.</p>", "smithy.api#required" => {}}))
    SampleDataS3SourceConfig.add_member(:templated_path_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplatedPathList, location_name: 'TemplatedPathList', traits: {"smithy.api#documentation" => "<p>An array of strings containing the list of templated paths.</p>"}))
    SampleDataS3SourceConfig.add_member(:historical_data_path_list, Smithy::Schema::Shapes::ShapeRef.new(shape: HistoricalDataPathList, location_name: 'HistoricalDataPathList', traits: {"smithy.api#documentation" => "<p>An array of strings containing the historical set of data paths.</p>"}))
    SampleDataS3SourceConfig.add_member(:file_format_descriptor, Smithy::Schema::Shapes::ShapeRef.new(shape: FileFormatDescriptor, location_name: 'FileFormatDescriptor', traits: {"smithy.api#required" => {}}))
    SampleDataS3SourceConfig.type = Types::SampleDataS3SourceConfig
    SampleRow.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataItem)
    SampleRows.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SampleRow)
    SecurityGroupIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource.</p>"}))
    ServiceQuotaExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource.</p>"}))
    ServiceQuotaExceededException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: 'QuotaCode', traits: {"smithy.api#documentation" => "<p>The quota code.</p>"}))
    ServiceQuotaExceededException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>The service code.</p>"}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SnsFormat.add_member(:long_text, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LONG_TEXT', traits: {"smithy.api#enumValue" => "LONG_TEXT"}))
    SnsFormat.add_member(:short_text, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHORT_TEXT', traits: {"smithy.api#enumValue" => "SHORT_TEXT"}))
    SnsFormat.add_member(:json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "JSON"}))
    StringListAttributeValue.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StringAttributeValue)
    SubnetIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The resource's Amazon Resource Name (ARN).</p>", "smithy.api#httpLabel" => {}, "smithy.api#jsonName" => "resourceArn", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags to apply to the resource. Tag keys and values can contain letters, numbers, spaces, and the following\n      symbols: <code>_.:/=+@-</code>\n         </p>", "smithy.api#jsonName" => "tags", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TemplatedPathList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TemplatedPath)
    TimeSeries.add_member(:time_series_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeSeriesId, location_name: 'TimeSeriesId', traits: {"smithy.api#documentation" => "<p>The ID of the metric.</p>", "smithy.api#required" => {}}))
    TimeSeries.add_member(:dimension_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionNameValueList, location_name: 'DimensionList', traits: {"smithy.api#documentation" => "<p>The dimensions of the metric.</p>", "smithy.api#required" => {}}))
    TimeSeries.add_member(:metric_value_list, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricValueList, location_name: 'MetricValueList', traits: {"smithy.api#documentation" => "<p>The values for the metric.</p>", "smithy.api#required" => {}}))
    TimeSeries.type = Types::TimeSeries
    TimeSeriesFeedback.add_member(:time_series_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeSeriesId, location_name: 'TimeSeriesId', traits: {"smithy.api#documentation" => "<p>The ID of the metric.</p>"}))
    TimeSeriesFeedback.add_member(:is_anomaly, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsAnomaly', traits: {"smithy.api#documentation" => "<p>Feedback on whether the metric is a legitimate anomaly.</p>"}))
    TimeSeriesFeedback.type = Types::TimeSeriesFeedback
    TimeSeriesFeedbackList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TimeSeriesFeedback)
    TimeSeriesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TimeSeries)
    TimestampColumn.add_member(:column_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName, location_name: 'ColumnName', traits: {"smithy.api#documentation" => "<p>The name of the timestamp column.</p>"}))
    TimestampColumn.add_member(:column_format, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeFormat, location_name: 'ColumnFormat', traits: {"smithy.api#documentation" => "<p>The format of the timestamp column.</p>"}))
    TimestampColumn.type = Types::TimestampColumn
    TimestampList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampString)
    TooManyRequestsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The resource's Amazon Resource Name (ARN).</p>", "smithy.api#httpLabel" => {}, "smithy.api#jsonName" => "resourceArn", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>Keys to remove from the resource's tags.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#jsonName" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAlertRequest.add_member(:alert_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AlertArn', traits: {"smithy.api#documentation" => "<p>The ARN of the alert to update.</p>", "smithy.api#required" => {}}))
    UpdateAlertRequest.add_member(:alert_description, Smithy::Schema::Shapes::ShapeRef.new(shape: AlertDescription, location_name: 'AlertDescription', traits: {"smithy.api#documentation" => "<p>A description of the alert.</p>"}))
    UpdateAlertRequest.add_member(:alert_sensitivity_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitivityThreshold, location_name: 'AlertSensitivityThreshold', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>An integer from 0 to 100 specifying the alert sensitivity threshold.</p>"}))
    UpdateAlertRequest.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>Action that will be triggered when there is an alert.</p>"}))
    UpdateAlertRequest.add_member(:alert_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: AlertFilters, location_name: 'AlertFilters', traits: {"smithy.api#documentation" => "<p>The configuration of the alert filters, containing MetricList and DimensionFilterList.</p>"}))
    UpdateAlertRequest.type = Types::UpdateAlertRequest
    UpdateAlertResponse.add_member(:alert_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AlertArn', traits: {"smithy.api#documentation" => "<p>The ARN of the updated alert.</p>"}))
    UpdateAlertResponse.type = Types::UpdateAlertResponse
    UpdateAnomalyDetectorRequest.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AnomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The ARN of the detector to update.</p>", "smithy.api#required" => {}}))
    UpdateAnomalyDetectorRequest.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an AWS KMS encryption key.</p>"}))
    UpdateAnomalyDetectorRequest.add_member(:anomaly_detector_description, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorDescription, location_name: 'AnomalyDetectorDescription', traits: {"smithy.api#documentation" => "<p>The updated detector description.</p>"}))
    UpdateAnomalyDetectorRequest.add_member(:anomaly_detector_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorConfig, location_name: 'AnomalyDetectorConfig', traits: {"smithy.api#documentation" => "<p>Contains information about the configuration to which the detector will be updated.</p>"}))
    UpdateAnomalyDetectorRequest.type = Types::UpdateAnomalyDetectorRequest
    UpdateAnomalyDetectorResponse.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AnomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The ARN of the updated detector.</p>"}))
    UpdateAnomalyDetectorResponse.type = Types::UpdateAnomalyDetectorResponse
    UpdateMetricSetRequest.add_member(:metric_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'MetricSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the dataset to update.</p>", "smithy.api#required" => {}}))
    UpdateMetricSetRequest.add_member(:metric_set_description, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricSetDescription, location_name: 'MetricSetDescription', traits: {"smithy.api#documentation" => "<p>The dataset's description.</p>"}))
    UpdateMetricSetRequest.add_member(:metric_list, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricList, location_name: 'MetricList', traits: {"smithy.api#documentation" => "<p>The metric list.</p>"}))
    UpdateMetricSetRequest.add_member(:offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Offset, location_name: 'Offset', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>After an interval ends, the amount of seconds that the detector waits before importing data. Offset is only supported for S3, Redshift, Athena and datasources.</p>"}))
    UpdateMetricSetRequest.add_member(:timestamp_column, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampColumn, location_name: 'TimestampColumn', traits: {"smithy.api#documentation" => "<p>The timestamp column.</p>"}))
    UpdateMetricSetRequest.add_member(:dimension_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionList, location_name: 'DimensionList', traits: {"smithy.api#documentation" => "<p>The dimension list.</p>"}))
    UpdateMetricSetRequest.add_member(:metric_set_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: Frequency, location_name: 'MetricSetFrequency', traits: {"smithy.api#documentation" => "<p>The dataset's interval.</p>"}))
    UpdateMetricSetRequest.add_member(:metric_source, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricSource, location_name: 'MetricSource'))
    UpdateMetricSetRequest.add_member(:dimension_filter_list, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricSetDimensionFilterList, location_name: 'DimensionFilterList', traits: {"smithy.api#documentation" => "<p>Describes a list of filters for choosing specific dimensions and specific values. Each\n      filter consists of the dimension and one of its values that you want to include. When\n      multiple dimensions or values are specified, the dimensions are joined with an AND operation\n      and the values are joined with an OR operation.</p>"}))
    UpdateMetricSetRequest.type = Types::UpdateMetricSetRequest
    UpdateMetricSetResponse.add_member(:metric_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'MetricSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the dataset.</p>"}))
    UpdateMetricSetResponse.type = Types::UpdateMetricSetResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason that validation failed.</p>"}))
    ValidationException.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'Fields', traits: {"smithy.api#documentation" => "<p>Fields that failed validation.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the field.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The message with more information about the validation exception.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_OPERATION', traits: {"smithy.api#enumValue" => "UNKNOWN_OPERATION"}))
    ValidationExceptionReason.add_member(:cannot_parse, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_PARSE', traits: {"smithy.api#enumValue" => "CANNOT_PARSE"}))
    ValidationExceptionReason.add_member(:field_validation_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "FIELD_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:other, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "OTHER"}))
    VpcConfiguration.add_member(:subnet_id_list, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdList, location_name: 'SubnetIdList', traits: {"smithy.api#documentation" => "<p>An array of strings containing the Amazon VPC subnet IDs (e.g., <code>subnet-0bb1c79de3EXAMPLE</code>.</p>", "smithy.api#required" => {}}))
    VpcConfiguration.add_member(:security_group_id_list, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: 'SecurityGroupIdList', traits: {"smithy.api#documentation" => "<p>An array of strings containing the list of security groups.</p>", "smithy.api#required" => {}}))
    VpcConfiguration.type = Types::VpcConfiguration

    LookoutMetrics = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.lookoutmetrics#LookoutMetrics"
      service.name = "LookoutMetrics"
      service.version = "2017-07-25"
      service.traits = {"aws.api#service" => {"sdkId" => "LookoutMetrics", "arnNamespace" => "lookoutmetrics", "cloudFormationName" => "LookoutMetrics", "cloudTrailEventSource" => "lookoutmetrics.amazonaws.com", "endpointPrefix" => "lookoutmetrics"}, "aws.auth#sigv4" => {"name" => "lookoutmetrics"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Lookout for Metrics"}
      service.add_operation(:activate_anomaly_detector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutmetrics#ActivateAnomalyDetector"
        operation.name = "ActivateAnomalyDetector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ActivateAnomalyDetectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ActivateAnomalyDetectorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ActivateAnomalyDetector", "code" => 200}}
      end)
      service.add_operation(:back_test_anomaly_detector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutmetrics#BackTestAnomalyDetector"
        operation.name = "BackTestAnomalyDetector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BackTestAnomalyDetectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BackTestAnomalyDetectorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BackTestAnomalyDetector", "code" => 200}}
      end)
      service.add_operation(:create_alert, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutmetrics#CreateAlert"
        operation.name = "CreateAlert"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAlertRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAlertResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateAlert", "code" => 200}}
      end)
      service.add_operation(:create_anomaly_detector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutmetrics#CreateAnomalyDetector"
        operation.name = "CreateAnomalyDetector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAnomalyDetectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAnomalyDetectorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateAnomalyDetector", "code" => 200}}
      end)
      service.add_operation(:create_metric_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutmetrics#CreateMetricSet"
        operation.name = "CreateMetricSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMetricSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMetricSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateMetricSet", "code" => 200}}
      end)
      service.add_operation(:deactivate_anomaly_detector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutmetrics#DeactivateAnomalyDetector"
        operation.name = "DeactivateAnomalyDetector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeactivateAnomalyDetectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeactivateAnomalyDetectorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeactivateAnomalyDetector", "code" => 200}}
      end)
      service.add_operation(:delete_alert, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutmetrics#DeleteAlert"
        operation.name = "DeleteAlert"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAlertRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAlertResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteAlert", "code" => 200}}
      end)
      service.add_operation(:delete_anomaly_detector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutmetrics#DeleteAnomalyDetector"
        operation.name = "DeleteAnomalyDetector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAnomalyDetectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAnomalyDetectorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteAnomalyDetector", "code" => 200}}
      end)
      service.add_operation(:describe_alert, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutmetrics#DescribeAlert"
        operation.name = "DescribeAlert"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAlertRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAlertResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DescribeAlert", "code" => 200}}
      end)
      service.add_operation(:describe_anomaly_detection_executions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutmetrics#DescribeAnomalyDetectionExecutions"
        operation.name = "DescribeAnomalyDetectionExecutions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAnomalyDetectionExecutionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAnomalyDetectionExecutionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DescribeAnomalyDetectionExecutions", "code" => 200}}
        operation[:paginator] = Paginators::DescribeAnomalyDetectionExecutions.new
      end)
      service.add_operation(:describe_anomaly_detector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutmetrics#DescribeAnomalyDetector"
        operation.name = "DescribeAnomalyDetector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAnomalyDetectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAnomalyDetectorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DescribeAnomalyDetector", "code" => 200}}
      end)
      service.add_operation(:describe_metric_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutmetrics#DescribeMetricSet"
        operation.name = "DescribeMetricSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMetricSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMetricSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DescribeMetricSet", "code" => 200}}
      end)
      service.add_operation(:detect_metric_set_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutmetrics#DetectMetricSetConfig"
        operation.name = "DetectMetricSetConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectMetricSetConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectMetricSetConfigResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DetectMetricSetConfig", "code" => 200}}
      end)
      service.add_operation(:get_anomaly_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutmetrics#GetAnomalyGroup"
        operation.name = "GetAnomalyGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAnomalyGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAnomalyGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetAnomalyGroup", "code" => 200}}
      end)
      service.add_operation(:get_data_quality_metrics, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutmetrics#GetDataQualityMetrics"
        operation.name = "GetDataQualityMetrics"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataQualityMetricsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataQualityMetricsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetDataQualityMetrics", "code" => 200}}
      end)
      service.add_operation(:get_feedback, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutmetrics#GetFeedback"
        operation.name = "GetFeedback"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFeedbackRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFeedbackResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetFeedback", "code" => 200}}
        operation[:paginator] = Paginators::GetFeedback.new
      end)
      service.add_operation(:get_sample_data, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutmetrics#GetSampleData"
        operation.name = "GetSampleData"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSampleDataRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSampleDataResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetSampleData", "code" => 200}}
      end)
      service.add_operation(:list_alerts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutmetrics#ListAlerts"
        operation.name = "ListAlerts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAlertsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAlertsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListAlerts", "code" => 200}}
        operation[:paginator] = Paginators::ListAlerts.new
      end)
      service.add_operation(:list_anomaly_detectors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutmetrics#ListAnomalyDetectors"
        operation.name = "ListAnomalyDetectors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnomalyDetectorsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnomalyDetectorsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListAnomalyDetectors", "code" => 200}}
        operation[:paginator] = Paginators::ListAnomalyDetectors.new
      end)
      service.add_operation(:list_anomaly_group_related_metrics, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutmetrics#ListAnomalyGroupRelatedMetrics"
        operation.name = "ListAnomalyGroupRelatedMetrics"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnomalyGroupRelatedMetricsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnomalyGroupRelatedMetricsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListAnomalyGroupRelatedMetrics", "code" => 200}}
        operation[:paginator] = Paginators::ListAnomalyGroupRelatedMetrics.new
      end)
      service.add_operation(:list_anomaly_group_summaries, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutmetrics#ListAnomalyGroupSummaries"
        operation.name = "ListAnomalyGroupSummaries"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnomalyGroupSummariesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnomalyGroupSummariesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListAnomalyGroupSummaries", "code" => 200}}
        operation[:paginator] = Paginators::ListAnomalyGroupSummaries.new
      end)
      service.add_operation(:list_anomaly_group_time_series, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutmetrics#ListAnomalyGroupTimeSeries"
        operation.name = "ListAnomalyGroupTimeSeries"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnomalyGroupTimeSeriesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnomalyGroupTimeSeriesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListAnomalyGroupTimeSeries", "code" => 200}}
        operation[:paginator] = Paginators::ListAnomalyGroupTimeSeries.new
      end)
      service.add_operation(:list_metric_sets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutmetrics#ListMetricSets"
        operation.name = "ListMetricSets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMetricSetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMetricSetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListMetricSets", "code" => 200}}
        operation[:paginator] = Paginators::ListMetricSets.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutmetrics#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:put_feedback, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutmetrics#PutFeedback"
        operation.name = "PutFeedback"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutFeedbackRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutFeedbackResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/PutFeedback", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutmetrics#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutmetrics#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:update_alert, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutmetrics#UpdateAlert"
        operation.name = "UpdateAlert"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAlertRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAlertResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateAlert", "code" => 200}}
      end)
      service.add_operation(:update_anomaly_detector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutmetrics#UpdateAnomalyDetector"
        operation.name = "UpdateAnomalyDetector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAnomalyDetectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAnomalyDetectorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateAnomalyDetector", "code" => 200}}
      end)
      service.add_operation(:update_metric_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutmetrics#UpdateMetricSet"
        operation.name = "UpdateMetricSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMetricSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMetricSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateMetricSet", "code" => 200}}
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
