# frozen_string_literal: true

# This is generated code!

module Aws::Forecast
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Action = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#Action", name: "Action")
    AdditionalDataset = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#AdditionalDataset", name: "AdditionalDataset")
    AdditionalDatasets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#AdditionalDatasets", name: "AdditionalDatasets", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecast#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:([a-z\\d-]+):forecast:.*:.*:.+$"})
    ArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#ArnList", name: "ArnList")
    AttributeConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#AttributeConfig", name: "AttributeConfig")
    AttributeConfigs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#AttributeConfigs", name: "AttributeConfigs", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    AttributeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.forecast#AttributeType", name: "AttributeType")
    AttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecast#AttributeValue", name: "AttributeValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^.+$"})
    AutoMLOverrideStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.forecast#AutoMLOverrideStrategy", name: "AutoMLOverrideStrategy")
    Baseline = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#Baseline", name: "Baseline")
    BaselineMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#BaselineMetric", name: "BaselineMetric")
    BaselineMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#BaselineMetrics", name: "BaselineMetrics")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.forecast#Boolean", name: "Boolean")
    CategoricalParameterRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#CategoricalParameterRange", name: "CategoricalParameterRange")
    CategoricalParameterRanges = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#CategoricalParameterRanges", name: "CategoricalParameterRanges", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    Condition = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.forecast#Condition", name: "Condition")
    Configuration = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.forecast#Configuration", name: "Configuration")
    ContinuousParameterRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ContinuousParameterRange", name: "ContinuousParameterRange")
    ContinuousParameterRanges = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#ContinuousParameterRanges", name: "ContinuousParameterRanges", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    CreateAutoPredictorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#CreateAutoPredictorRequest", name: "CreateAutoPredictorRequest")
    CreateAutoPredictorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#CreateAutoPredictorResponse", name: "CreateAutoPredictorResponse")
    CreateDatasetGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#CreateDatasetGroupRequest", name: "CreateDatasetGroupRequest")
    CreateDatasetGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#CreateDatasetGroupResponse", name: "CreateDatasetGroupResponse")
    CreateDatasetImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#CreateDatasetImportJobRequest", name: "CreateDatasetImportJobRequest")
    CreateDatasetImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#CreateDatasetImportJobResponse", name: "CreateDatasetImportJobResponse")
    CreateDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#CreateDatasetRequest", name: "CreateDatasetRequest")
    CreateDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#CreateDatasetResponse", name: "CreateDatasetResponse")
    CreateExplainabilityExportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#CreateExplainabilityExportRequest", name: "CreateExplainabilityExportRequest")
    CreateExplainabilityExportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#CreateExplainabilityExportResponse", name: "CreateExplainabilityExportResponse")
    CreateExplainabilityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#CreateExplainabilityRequest", name: "CreateExplainabilityRequest")
    CreateExplainabilityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#CreateExplainabilityResponse", name: "CreateExplainabilityResponse")
    CreateForecastExportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#CreateForecastExportJobRequest", name: "CreateForecastExportJobRequest")
    CreateForecastExportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#CreateForecastExportJobResponse", name: "CreateForecastExportJobResponse")
    CreateForecastRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#CreateForecastRequest", name: "CreateForecastRequest")
    CreateForecastResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#CreateForecastResponse", name: "CreateForecastResponse")
    CreateMonitorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#CreateMonitorRequest", name: "CreateMonitorRequest")
    CreateMonitorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#CreateMonitorResponse", name: "CreateMonitorResponse")
    CreatePredictorBacktestExportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#CreatePredictorBacktestExportJobRequest", name: "CreatePredictorBacktestExportJobRequest")
    CreatePredictorBacktestExportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#CreatePredictorBacktestExportJobResponse", name: "CreatePredictorBacktestExportJobResponse")
    CreatePredictorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#CreatePredictorRequest", name: "CreatePredictorRequest")
    CreatePredictorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#CreatePredictorResponse", name: "CreatePredictorResponse")
    CreateWhatIfAnalysisRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#CreateWhatIfAnalysisRequest", name: "CreateWhatIfAnalysisRequest")
    CreateWhatIfAnalysisResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#CreateWhatIfAnalysisResponse", name: "CreateWhatIfAnalysisResponse")
    CreateWhatIfForecastExportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#CreateWhatIfForecastExportRequest", name: "CreateWhatIfForecastExportRequest")
    CreateWhatIfForecastExportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#CreateWhatIfForecastExportResponse", name: "CreateWhatIfForecastExportResponse")
    CreateWhatIfForecastRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#CreateWhatIfForecastRequest", name: "CreateWhatIfForecastRequest")
    CreateWhatIfForecastResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#CreateWhatIfForecastResponse", name: "CreateWhatIfForecastResponse")
    DataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DataConfig", name: "DataConfig")
    DataDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DataDestination", name: "DataDestination")
    DataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DataSource", name: "DataSource")
    DatasetGroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DatasetGroupSummary", name: "DatasetGroupSummary")
    DatasetGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#DatasetGroups", name: "DatasetGroups")
    DatasetImportJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DatasetImportJobSummary", name: "DatasetImportJobSummary")
    DatasetImportJobs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#DatasetImportJobs", name: "DatasetImportJobs")
    DatasetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DatasetSummary", name: "DatasetSummary")
    DatasetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.forecast#DatasetType", name: "DatasetType")
    Datasets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#Datasets", name: "Datasets")
    DayOfMonth = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.forecast#DayOfMonth", name: "DayOfMonth", traits: {"smithy.api#range" => {"min" => 1, "max" => 28}})
    DayOfWeek = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.forecast#DayOfWeek", name: "DayOfWeek")
    DeleteDatasetGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DeleteDatasetGroupRequest", name: "DeleteDatasetGroupRequest")
    DeleteDatasetImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DeleteDatasetImportJobRequest", name: "DeleteDatasetImportJobRequest")
    DeleteDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DeleteDatasetRequest", name: "DeleteDatasetRequest")
    DeleteExplainabilityExportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DeleteExplainabilityExportRequest", name: "DeleteExplainabilityExportRequest")
    DeleteExplainabilityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DeleteExplainabilityRequest", name: "DeleteExplainabilityRequest")
    DeleteForecastExportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DeleteForecastExportJobRequest", name: "DeleteForecastExportJobRequest")
    DeleteForecastRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DeleteForecastRequest", name: "DeleteForecastRequest")
    DeleteMonitorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DeleteMonitorRequest", name: "DeleteMonitorRequest")
    DeletePredictorBacktestExportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DeletePredictorBacktestExportJobRequest", name: "DeletePredictorBacktestExportJobRequest")
    DeletePredictorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DeletePredictorRequest", name: "DeletePredictorRequest")
    DeleteResourceTreeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DeleteResourceTreeRequest", name: "DeleteResourceTreeRequest")
    DeleteWhatIfAnalysisRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DeleteWhatIfAnalysisRequest", name: "DeleteWhatIfAnalysisRequest")
    DeleteWhatIfForecastExportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DeleteWhatIfForecastExportRequest", name: "DeleteWhatIfForecastExportRequest")
    DeleteWhatIfForecastRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DeleteWhatIfForecastRequest", name: "DeleteWhatIfForecastRequest")
    DescribeAutoPredictorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DescribeAutoPredictorRequest", name: "DescribeAutoPredictorRequest")
    DescribeAutoPredictorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DescribeAutoPredictorResponse", name: "DescribeAutoPredictorResponse")
    DescribeDatasetGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DescribeDatasetGroupRequest", name: "DescribeDatasetGroupRequest")
    DescribeDatasetGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DescribeDatasetGroupResponse", name: "DescribeDatasetGroupResponse")
    DescribeDatasetImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DescribeDatasetImportJobRequest", name: "DescribeDatasetImportJobRequest")
    DescribeDatasetImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DescribeDatasetImportJobResponse", name: "DescribeDatasetImportJobResponse")
    DescribeDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DescribeDatasetRequest", name: "DescribeDatasetRequest")
    DescribeDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DescribeDatasetResponse", name: "DescribeDatasetResponse")
    DescribeExplainabilityExportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DescribeExplainabilityExportRequest", name: "DescribeExplainabilityExportRequest")
    DescribeExplainabilityExportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DescribeExplainabilityExportResponse", name: "DescribeExplainabilityExportResponse")
    DescribeExplainabilityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DescribeExplainabilityRequest", name: "DescribeExplainabilityRequest")
    DescribeExplainabilityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DescribeExplainabilityResponse", name: "DescribeExplainabilityResponse")
    DescribeForecastExportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DescribeForecastExportJobRequest", name: "DescribeForecastExportJobRequest")
    DescribeForecastExportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DescribeForecastExportJobResponse", name: "DescribeForecastExportJobResponse")
    DescribeForecastRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DescribeForecastRequest", name: "DescribeForecastRequest")
    DescribeForecastResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DescribeForecastResponse", name: "DescribeForecastResponse")
    DescribeMonitorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DescribeMonitorRequest", name: "DescribeMonitorRequest")
    DescribeMonitorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DescribeMonitorResponse", name: "DescribeMonitorResponse")
    DescribePredictorBacktestExportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DescribePredictorBacktestExportJobRequest", name: "DescribePredictorBacktestExportJobRequest")
    DescribePredictorBacktestExportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DescribePredictorBacktestExportJobResponse", name: "DescribePredictorBacktestExportJobResponse")
    DescribePredictorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DescribePredictorRequest", name: "DescribePredictorRequest")
    DescribePredictorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DescribePredictorResponse", name: "DescribePredictorResponse")
    DescribeWhatIfAnalysisRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DescribeWhatIfAnalysisRequest", name: "DescribeWhatIfAnalysisRequest")
    DescribeWhatIfAnalysisResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DescribeWhatIfAnalysisResponse", name: "DescribeWhatIfAnalysisResponse")
    DescribeWhatIfForecastExportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DescribeWhatIfForecastExportRequest", name: "DescribeWhatIfForecastExportRequest")
    DescribeWhatIfForecastExportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DescribeWhatIfForecastExportResponse", name: "DescribeWhatIfForecastExportResponse")
    DescribeWhatIfForecastRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DescribeWhatIfForecastRequest", name: "DescribeWhatIfForecastRequest")
    DescribeWhatIfForecastResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#DescribeWhatIfForecastResponse", name: "DescribeWhatIfForecastResponse")
    Detail = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecast#Detail", name: "Detail", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Domain = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.forecast#Domain", name: "Domain")
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.forecast#Double", name: "Double")
    EncryptionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#EncryptionConfig", name: "EncryptionConfig")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecast#ErrorMessage", name: "ErrorMessage")
    ErrorMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ErrorMetric", name: "ErrorMetric")
    ErrorMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#ErrorMetrics", name: "ErrorMetrics")
    EvaluationParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#EvaluationParameters", name: "EvaluationParameters")
    EvaluationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#EvaluationResult", name: "EvaluationResult")
    EvaluationState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecast#EvaluationState", name: "EvaluationState", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    EvaluationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.forecast#EvaluationType", name: "EvaluationType")
    Explainabilities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#Explainabilities", name: "Explainabilities")
    ExplainabilityConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ExplainabilityConfig", name: "ExplainabilityConfig")
    ExplainabilityExportSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ExplainabilityExportSummary", name: "ExplainabilityExportSummary")
    ExplainabilityExports = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#ExplainabilityExports", name: "ExplainabilityExports")
    ExplainabilityInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ExplainabilityInfo", name: "ExplainabilityInfo")
    ExplainabilitySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ExplainabilitySummary", name: "ExplainabilitySummary")
    Featurization = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#Featurization", name: "Featurization")
    FeaturizationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#FeaturizationConfig", name: "FeaturizationConfig")
    FeaturizationMethod = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#FeaturizationMethod", name: "FeaturizationMethod")
    FeaturizationMethodName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.forecast#FeaturizationMethodName", name: "FeaturizationMethodName")
    FeaturizationMethodParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.forecast#FeaturizationMethodParameters", name: "FeaturizationMethodParameters", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    FeaturizationPipeline = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#FeaturizationPipeline", name: "FeaturizationPipeline", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    Featurizations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#Featurizations", name: "Featurizations", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    FieldStatistics = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.forecast#FieldStatistics", name: "FieldStatistics")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#Filter", name: "Filter")
    FilterConditionString = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.forecast#FilterConditionString", name: "FilterConditionString")
    Filters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#Filters", name: "Filters")
    ForecastDimensions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#ForecastDimensions", name: "ForecastDimensions", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ForecastExportJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ForecastExportJobSummary", name: "ForecastExportJobSummary")
    ForecastExportJobs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#ForecastExportJobs", name: "ForecastExportJobs")
    ForecastSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ForecastSummary", name: "ForecastSummary")
    ForecastType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecast#ForecastType", name: "ForecastType", traits: {"smithy.api#length" => {"min" => 2, "max" => 4}, "smithy.api#pattern" => "^(^0?\\.\\d\\d?$|^mean$)$"})
    ForecastTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#ForecastTypes", name: "ForecastTypes", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    Forecasts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#Forecasts", name: "Forecasts")
    Format = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecast#Format", name: "Format", traits: {"smithy.api#length" => {"min" => 0, "max" => 7}, "smithy.api#pattern" => "^CSV|PARQUET$"})
    Frequency = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecast#Frequency", name: "Frequency", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#pattern" => "^Y|M|W|D|H|30min|15min|10min|5min|1min$"})
    GeolocationFormat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecast#GeolocationFormat", name: "GeolocationFormat", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_]+$"})
    GetAccuracyMetricsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#GetAccuracyMetricsRequest", name: "GetAccuracyMetricsRequest")
    GetAccuracyMetricsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#GetAccuracyMetricsResponse", name: "GetAccuracyMetricsResponse")
    Hour = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.forecast#Hour", name: "Hour", traits: {"smithy.api#range" => {"min" => 0, "max" => 23}})
    HyperParameterTuningJobConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#HyperParameterTuningJobConfig", name: "HyperParameterTuningJobConfig")
    ImportMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.forecast#ImportMode", name: "ImportMode")
    InputDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#InputDataConfig", name: "InputDataConfig")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.forecast#Integer", name: "Integer")
    IntegerParameterRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#IntegerParameterRange", name: "IntegerParameterRange")
    IntegerParameterRanges = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#IntegerParameterRanges", name: "IntegerParameterRanges", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    InvalidInputException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#InvalidInputException", name: "InvalidInputException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#InvalidNextTokenException", name: "InvalidNextTokenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KMSKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecast#KMSKeyArn", name: "KMSKeyArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws:kms:.*:key/"})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ListDatasetGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ListDatasetGroupsRequest", name: "ListDatasetGroupsRequest")
    ListDatasetGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ListDatasetGroupsResponse", name: "ListDatasetGroupsResponse")
    ListDatasetImportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ListDatasetImportJobsRequest", name: "ListDatasetImportJobsRequest")
    ListDatasetImportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ListDatasetImportJobsResponse", name: "ListDatasetImportJobsResponse")
    ListDatasetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ListDatasetsRequest", name: "ListDatasetsRequest")
    ListDatasetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ListDatasetsResponse", name: "ListDatasetsResponse")
    ListExplainabilitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ListExplainabilitiesRequest", name: "ListExplainabilitiesRequest")
    ListExplainabilitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ListExplainabilitiesResponse", name: "ListExplainabilitiesResponse")
    ListExplainabilityExportsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ListExplainabilityExportsRequest", name: "ListExplainabilityExportsRequest")
    ListExplainabilityExportsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ListExplainabilityExportsResponse", name: "ListExplainabilityExportsResponse")
    ListForecastExportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ListForecastExportJobsRequest", name: "ListForecastExportJobsRequest")
    ListForecastExportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ListForecastExportJobsResponse", name: "ListForecastExportJobsResponse")
    ListForecastsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ListForecastsRequest", name: "ListForecastsRequest")
    ListForecastsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ListForecastsResponse", name: "ListForecastsResponse")
    ListMonitorEvaluationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ListMonitorEvaluationsRequest", name: "ListMonitorEvaluationsRequest")
    ListMonitorEvaluationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ListMonitorEvaluationsResponse", name: "ListMonitorEvaluationsResponse")
    ListMonitorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ListMonitorsRequest", name: "ListMonitorsRequest")
    ListMonitorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ListMonitorsResponse", name: "ListMonitorsResponse")
    ListPredictorBacktestExportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ListPredictorBacktestExportJobsRequest", name: "ListPredictorBacktestExportJobsRequest")
    ListPredictorBacktestExportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ListPredictorBacktestExportJobsResponse", name: "ListPredictorBacktestExportJobsResponse")
    ListPredictorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ListPredictorsRequest", name: "ListPredictorsRequest")
    ListPredictorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ListPredictorsResponse", name: "ListPredictorsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListWhatIfAnalysesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ListWhatIfAnalysesRequest", name: "ListWhatIfAnalysesRequest")
    ListWhatIfAnalysesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ListWhatIfAnalysesResponse", name: "ListWhatIfAnalysesResponse")
    ListWhatIfForecastExportsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ListWhatIfForecastExportsRequest", name: "ListWhatIfForecastExportsRequest")
    ListWhatIfForecastExportsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ListWhatIfForecastExportsResponse", name: "ListWhatIfForecastExportsResponse")
    ListWhatIfForecastsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ListWhatIfForecastsRequest", name: "ListWhatIfForecastsRequest")
    ListWhatIfForecastsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ListWhatIfForecastsResponse", name: "ListWhatIfForecastsResponse")
    LocalDateTime = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecast#LocalDateTime", name: "LocalDateTime", traits: {"smithy.api#length" => {"min" => 0, "max" => 19}, "smithy.api#pattern" => "^\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}:\\d{2}$"})
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.forecast#Long", name: "Long")
    LongArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecast#LongArn", name: "LongArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 300}, "smithy.api#pattern" => "^arn:([a-z\\d-]+):forecast:.*:.*:.+$"})
    LongArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#LongArnList", name: "LongArnList")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.forecast#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecast#Message", name: "Message")
    MetricName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecast#MetricName", name: "MetricName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    MetricResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#MetricResult", name: "MetricResult")
    MetricResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#MetricResults", name: "MetricResults")
    Metrics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#Metrics", name: "Metrics")
    MonitorConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#MonitorConfig", name: "MonitorConfig")
    MonitorDataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#MonitorDataSource", name: "MonitorDataSource")
    MonitorInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#MonitorInfo", name: "MonitorInfo")
    MonitorSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#MonitorSummary", name: "MonitorSummary")
    Monitors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#Monitors", name: "Monitors")
    Month = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.forecast#Month", name: "Month")
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecast#Name", name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9_]*$"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecast#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 3000}, "smithy.api#pattern" => "^.+$"})
    Operation = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.forecast#Operation", name: "Operation")
    OptimizationMetric = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.forecast#OptimizationMetric", name: "OptimizationMetric")
    ParameterKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecast#ParameterKey", name: "ParameterKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_\\.\\/\\[\\]\\,\\\\]+$"})
    ParameterRanges = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ParameterRanges", name: "ParameterRanges")
    ParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecast#ParameterValue", name: "ParameterValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_\\.\\/\\[\\]\\,\\\"\\\\\\s]+$"})
    PredictorBacktestExportJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#PredictorBacktestExportJobSummary", name: "PredictorBacktestExportJobSummary")
    PredictorBacktestExportJobs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#PredictorBacktestExportJobs", name: "PredictorBacktestExportJobs")
    PredictorBaseline = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#PredictorBaseline", name: "PredictorBaseline")
    PredictorEvaluationResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#PredictorEvaluationResults", name: "PredictorEvaluationResults")
    PredictorEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#PredictorEvent", name: "PredictorEvent")
    PredictorExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#PredictorExecution", name: "PredictorExecution")
    PredictorExecutionDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#PredictorExecutionDetails", name: "PredictorExecutionDetails")
    PredictorExecutions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#PredictorExecutions", name: "PredictorExecutions", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    PredictorMonitorEvaluation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#PredictorMonitorEvaluation", name: "PredictorMonitorEvaluation")
    PredictorMonitorEvaluations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#PredictorMonitorEvaluations", name: "PredictorMonitorEvaluations")
    PredictorSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#PredictorSummary", name: "PredictorSummary")
    Predictors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#Predictors", name: "Predictors")
    ReferencePredictorSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ReferencePredictorSummary", name: "ReferencePredictorSummary")
    ResourceAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ResourceAlreadyExistsException", name: "ResourceAlreadyExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResumeResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#ResumeResourceRequest", name: "ResumeResourceRequest")
    S3Config = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#S3Config", name: "S3Config")
    S3Path = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecast#S3Path", name: "S3Path", traits: {"smithy.api#length" => {"min" => 7, "max" => 4096}, "smithy.api#pattern" => "^s3://[a-z0-9].+$"})
    ScalingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.forecast#ScalingType", name: "ScalingType")
    Schema = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#Schema", name: "Schema")
    SchemaAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#SchemaAttribute", name: "SchemaAttribute")
    SchemaAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#SchemaAttributes", name: "SchemaAttributes", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    State = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.forecast#State", name: "State")
    Statistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#Statistics", name: "Statistics")
    Status = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecast#Status", name: "Status", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    StopResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#StopResourceRequest", name: "StopResourceRequest")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecast#String", name: "String", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\_]+$"})
    SupplementaryFeature = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#SupplementaryFeature", name: "SupplementaryFeature")
    SupplementaryFeatures = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#SupplementaryFeatures", name: "SupplementaryFeatures", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecast#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "smithy.api#sensitive" => {}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#TagKeys", name: "TagKeys", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecast#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "smithy.api#sensitive" => {}})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#Tags", name: "Tags", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TestWindowDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#TestWindowDetails", name: "TestWindowDetails")
    TestWindowSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#TestWindowSummary", name: "TestWindowSummary")
    TestWindows = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#TestWindows", name: "TestWindows")
    TimeAlignmentBoundary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#TimeAlignmentBoundary", name: "TimeAlignmentBoundary")
    TimePointGranularity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.forecast#TimePointGranularity", name: "TimePointGranularity")
    TimeSeriesCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#TimeSeriesCondition", name: "TimeSeriesCondition")
    TimeSeriesConditions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#TimeSeriesConditions", name: "TimeSeriesConditions", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    TimeSeriesGranularity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.forecast#TimeSeriesGranularity", name: "TimeSeriesGranularity")
    TimeSeriesIdentifiers = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#TimeSeriesIdentifiers", name: "TimeSeriesIdentifiers")
    TimeSeriesReplacementsDataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#TimeSeriesReplacementsDataSource", name: "TimeSeriesReplacementsDataSource")
    TimeSeriesSelector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#TimeSeriesSelector", name: "TimeSeriesSelector")
    TimeSeriesTransformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#TimeSeriesTransformation", name: "TimeSeriesTransformation")
    TimeSeriesTransformations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#TimeSeriesTransformations", name: "TimeSeriesTransformations", traits: {"smithy.api#length" => {"min" => 0, "max" => 30}})
    TimeZone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecast#TimeZone", name: "TimeZone", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\/\\+\\-\\_]+$"})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.forecast#Timestamp", name: "Timestamp")
    TimestampFormat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecast#TimestampFormat", name: "TimestampFormat", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\:\\.\\,\\'\\s]+$"})
    TrainingParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.forecast#TrainingParameters", name: "TrainingParameters", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    Transformations = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.forecast#Transformations", name: "Transformations", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateDatasetGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#UpdateDatasetGroupRequest", name: "UpdateDatasetGroupRequest")
    UpdateDatasetGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#UpdateDatasetGroupResponse", name: "UpdateDatasetGroupResponse")
    UseGeolocationForTimeZone = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.forecast#UseGeolocationForTimeZone", name: "UseGeolocationForTimeZone", traits: {"smithy.api#default" => false})
    Value = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecast#Value", name: "Value", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\_\\-]+$"})
    Values = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#Values", name: "Values", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    WeightedQuantileLoss = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#WeightedQuantileLoss", name: "WeightedQuantileLoss")
    WeightedQuantileLosses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#WeightedQuantileLosses", name: "WeightedQuantileLosses")
    WhatIfAnalyses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#WhatIfAnalyses", name: "WhatIfAnalyses")
    WhatIfAnalysisSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#WhatIfAnalysisSummary", name: "WhatIfAnalysisSummary")
    WhatIfForecastArnListForExport = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#WhatIfForecastArnListForExport", name: "WhatIfForecastArnListForExport", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    WhatIfForecastExportSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#WhatIfForecastExportSummary", name: "WhatIfForecastExportSummary")
    WhatIfForecastExports = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#WhatIfForecastExports", name: "WhatIfForecastExports")
    WhatIfForecastSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#WhatIfForecastSummary", name: "WhatIfForecastSummary")
    WhatIfForecasts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecast#WhatIfForecasts", name: "WhatIfForecasts")
    WindowSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecast#WindowSummary", name: "WindowSummary")

    Action.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "AttributeName", traits: {"smithy.api#required" => {}}))
    Action.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "Operation", traits: {"smithy.api#required" => {}}))
    Action.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Value", traits: {"smithy.api#required" => {}}))
    Action.type = Types::Action
    AdditionalDataset.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#required" => {}}))
    AdditionalDataset.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: Configuration, name: "Configuration"))
    AdditionalDataset.type = Types::AdditionalDataset
    AdditionalDatasets.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalDataset, name: "member")
    ArnList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "member")
    AttributeConfig.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "AttributeName", traits: {"smithy.api#required" => {}}))
    AttributeConfig.add_member(:transformations, ::Smithy::Schema::Shapes::MemberShape.new(target: Transformations, name: "Transformations", traits: {"smithy.api#required" => {}}))
    AttributeConfig.type = Types::AttributeConfig
    AttributeConfigs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeConfig, name: "member")
    AttributeType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING", traits: {"smithy.api#enumValue" => "string"}))
    AttributeType.add_member(:integer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTEGER", traits: {"smithy.api#enumValue" => "integer"}))
    AttributeType.add_member(:float, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLOAT", traits: {"smithy.api#enumValue" => "float"}))
    AttributeType.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMESTAMP", traits: {"smithy.api#enumValue" => "timestamp"}))
    AttributeType.add_member(:geolocation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GEOLOCATION", traits: {"smithy.api#enumValue" => "geolocation"}))
    AutoMLOverrideStrategy.add_member(:latency_optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LatencyOptimized", traits: {"smithy.api#enumValue" => "LatencyOptimized"}))
    AutoMLOverrideStrategy.add_member(:accuracy_optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AccuracyOptimized", traits: {"smithy.api#enumValue" => "AccuracyOptimized"}))
    Baseline.add_member(:predictor_baseline, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictorBaseline, name: "PredictorBaseline"))
    Baseline.type = Types::Baseline
    BaselineMetric.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    BaselineMetric.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Value"))
    BaselineMetric.type = Types::BaselineMetric
    BaselineMetrics.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineMetric, name: "member")
    CategoricalParameterRange.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#required" => {}}))
    CategoricalParameterRange.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: Values, name: "Values", traits: {"smithy.api#required" => {}}))
    CategoricalParameterRange.type = Types::CategoricalParameterRange
    CategoricalParameterRanges.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CategoricalParameterRange, name: "member")
    Condition.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUALS", traits: {"smithy.api#enumValue" => "EQUALS"}))
    Condition.add_member(:not_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_EQUALS", traits: {"smithy.api#enumValue" => "NOT_EQUALS"}))
    Condition.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    Condition.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    Configuration.key = ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "key")
    Configuration.value = ::Smithy::Schema::Shapes::MemberShape.new(target: Values, name: "value")
    ContinuousParameterRange.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#required" => {}}))
    ContinuousParameterRange.add_member(:max_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "MaxValue", traits: {"smithy.api#required" => {}}))
    ContinuousParameterRange.add_member(:min_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "MinValue", traits: {"smithy.api#required" => {}}))
    ContinuousParameterRange.add_member(:scaling_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingType, name: "ScalingType"))
    ContinuousParameterRange.type = Types::ContinuousParameterRange
    ContinuousParameterRanges.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousParameterRange, name: "member")
    CreateAutoPredictorRequest.add_member(:predictor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "PredictorName", traits: {"smithy.api#required" => {}}))
    CreateAutoPredictorRequest.add_member(:forecast_horizon, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ForecastHorizon"))
    CreateAutoPredictorRequest.add_member(:forecast_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ForecastTypes, name: "ForecastTypes"))
    CreateAutoPredictorRequest.add_member(:forecast_dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: ForecastDimensions, name: "ForecastDimensions"))
    CreateAutoPredictorRequest.add_member(:forecast_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: Frequency, name: "ForecastFrequency"))
    CreateAutoPredictorRequest.add_member(:data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DataConfig, name: "DataConfig"))
    CreateAutoPredictorRequest.add_member(:encryption_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfig, name: "EncryptionConfig"))
    CreateAutoPredictorRequest.add_member(:reference_predictor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ReferencePredictorArn"))
    CreateAutoPredictorRequest.add_member(:optimization_metric, ::Smithy::Schema::Shapes::MemberShape.new(target: OptimizationMetric, name: "OptimizationMetric"))
    CreateAutoPredictorRequest.add_member(:explain_predictor, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ExplainPredictor"))
    CreateAutoPredictorRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateAutoPredictorRequest.add_member(:monitor_config, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorConfig, name: "MonitorConfig"))
    CreateAutoPredictorRequest.add_member(:time_alignment_boundary, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeAlignmentBoundary, name: "TimeAlignmentBoundary"))
    CreateAutoPredictorRequest.type = Types::CreateAutoPredictorRequest
    CreateAutoPredictorResponse.add_member(:predictor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "PredictorArn"))
    CreateAutoPredictorResponse.type = Types::CreateAutoPredictorResponse
    CreateDatasetGroupRequest.add_member(:dataset_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DatasetGroupName", traits: {"smithy.api#required" => {}}))
    CreateDatasetGroupRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, name: "Domain", traits: {"smithy.api#required" => {}}))
    CreateDatasetGroupRequest.add_member(:dataset_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "DatasetArns"))
    CreateDatasetGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateDatasetGroupRequest.type = Types::CreateDatasetGroupRequest
    CreateDatasetGroupResponse.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DatasetGroupArn"))
    CreateDatasetGroupResponse.type = Types::CreateDatasetGroupResponse
    CreateDatasetImportJobRequest.add_member(:dataset_import_job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DatasetImportJobName", traits: {"smithy.api#required" => {}}))
    CreateDatasetImportJobRequest.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DatasetArn", traits: {"smithy.api#required" => {}}))
    CreateDatasetImportJobRequest.add_member(:data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSource, name: "DataSource", traits: {"smithy.api#required" => {}}))
    CreateDatasetImportJobRequest.add_member(:timestamp_format, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "TimestampFormat"))
    CreateDatasetImportJobRequest.add_member(:time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeZone, name: "TimeZone"))
    CreateDatasetImportJobRequest.add_member(:use_geolocation_for_time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: UseGeolocationForTimeZone, name: "UseGeolocationForTimeZone", traits: {"smithy.api#default" => false}))
    CreateDatasetImportJobRequest.add_member(:geolocation_format, ::Smithy::Schema::Shapes::MemberShape.new(target: GeolocationFormat, name: "GeolocationFormat"))
    CreateDatasetImportJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateDatasetImportJobRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: Format, name: "Format"))
    CreateDatasetImportJobRequest.add_member(:import_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportMode, name: "ImportMode"))
    CreateDatasetImportJobRequest.type = Types::CreateDatasetImportJobRequest
    CreateDatasetImportJobResponse.add_member(:dataset_import_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DatasetImportJobArn"))
    CreateDatasetImportJobResponse.type = Types::CreateDatasetImportJobResponse
    CreateDatasetRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DatasetName", traits: {"smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, name: "Domain", traits: {"smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:dataset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetType, name: "DatasetType", traits: {"smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:data_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: Frequency, name: "DataFrequency"))
    CreateDatasetRequest.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: Schema, name: "Schema", traits: {"smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:encryption_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfig, name: "EncryptionConfig"))
    CreateDatasetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateDatasetRequest.type = Types::CreateDatasetRequest
    CreateDatasetResponse.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DatasetArn"))
    CreateDatasetResponse.type = Types::CreateDatasetResponse
    CreateExplainabilityExportRequest.add_member(:explainability_export_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ExplainabilityExportName", traits: {"smithy.api#required" => {}}))
    CreateExplainabilityExportRequest.add_member(:explainability_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ExplainabilityArn", traits: {"smithy.api#required" => {}}))
    CreateExplainabilityExportRequest.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: DataDestination, name: "Destination", traits: {"smithy.api#required" => {}}))
    CreateExplainabilityExportRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateExplainabilityExportRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: Format, name: "Format"))
    CreateExplainabilityExportRequest.type = Types::CreateExplainabilityExportRequest
    CreateExplainabilityExportResponse.add_member(:explainability_export_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ExplainabilityExportArn"))
    CreateExplainabilityExportResponse.type = Types::CreateExplainabilityExportResponse
    CreateExplainabilityRequest.add_member(:explainability_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ExplainabilityName", traits: {"smithy.api#required" => {}}))
    CreateExplainabilityRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    CreateExplainabilityRequest.add_member(:explainability_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ExplainabilityConfig, name: "ExplainabilityConfig", traits: {"smithy.api#required" => {}}))
    CreateExplainabilityRequest.add_member(:data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSource, name: "DataSource"))
    CreateExplainabilityRequest.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: Schema, name: "Schema"))
    CreateExplainabilityRequest.add_member(:enable_visualization, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnableVisualization"))
    CreateExplainabilityRequest.add_member(:start_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalDateTime, name: "StartDateTime"))
    CreateExplainabilityRequest.add_member(:end_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalDateTime, name: "EndDateTime"))
    CreateExplainabilityRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateExplainabilityRequest.type = Types::CreateExplainabilityRequest
    CreateExplainabilityResponse.add_member(:explainability_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ExplainabilityArn"))
    CreateExplainabilityResponse.type = Types::CreateExplainabilityResponse
    CreateForecastExportJobRequest.add_member(:forecast_export_job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ForecastExportJobName", traits: {"smithy.api#required" => {}}))
    CreateForecastExportJobRequest.add_member(:forecast_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ForecastArn", traits: {"smithy.api#required" => {}}))
    CreateForecastExportJobRequest.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: DataDestination, name: "Destination", traits: {"smithy.api#required" => {}}))
    CreateForecastExportJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateForecastExportJobRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: Format, name: "Format"))
    CreateForecastExportJobRequest.type = Types::CreateForecastExportJobRequest
    CreateForecastExportJobResponse.add_member(:forecast_export_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ForecastExportJobArn"))
    CreateForecastExportJobResponse.type = Types::CreateForecastExportJobResponse
    CreateForecastRequest.add_member(:forecast_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ForecastName", traits: {"smithy.api#required" => {}}))
    CreateForecastRequest.add_member(:predictor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "PredictorArn", traits: {"smithy.api#required" => {}}))
    CreateForecastRequest.add_member(:forecast_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ForecastTypes, name: "ForecastTypes"))
    CreateForecastRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateForecastRequest.add_member(:time_series_selector, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeSeriesSelector, name: "TimeSeriesSelector"))
    CreateForecastRequest.type = Types::CreateForecastRequest
    CreateForecastResponse.add_member(:forecast_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ForecastArn"))
    CreateForecastResponse.type = Types::CreateForecastResponse
    CreateMonitorRequest.add_member(:monitor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "MonitorName", traits: {"smithy.api#required" => {}}))
    CreateMonitorRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    CreateMonitorRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateMonitorRequest.type = Types::CreateMonitorRequest
    CreateMonitorResponse.add_member(:monitor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "MonitorArn"))
    CreateMonitorResponse.type = Types::CreateMonitorResponse
    CreatePredictorBacktestExportJobRequest.add_member(:predictor_backtest_export_job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "PredictorBacktestExportJobName", traits: {"smithy.api#required" => {}}))
    CreatePredictorBacktestExportJobRequest.add_member(:predictor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "PredictorArn", traits: {"smithy.api#required" => {}}))
    CreatePredictorBacktestExportJobRequest.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: DataDestination, name: "Destination", traits: {"smithy.api#required" => {}}))
    CreatePredictorBacktestExportJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreatePredictorBacktestExportJobRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: Format, name: "Format"))
    CreatePredictorBacktestExportJobRequest.type = Types::CreatePredictorBacktestExportJobRequest
    CreatePredictorBacktestExportJobResponse.add_member(:predictor_backtest_export_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "PredictorBacktestExportJobArn"))
    CreatePredictorBacktestExportJobResponse.type = Types::CreatePredictorBacktestExportJobResponse
    CreatePredictorRequest.add_member(:predictor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "PredictorName", traits: {"smithy.api#required" => {}}))
    CreatePredictorRequest.add_member(:algorithm_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "AlgorithmArn"))
    CreatePredictorRequest.add_member(:forecast_horizon, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ForecastHorizon", traits: {"smithy.api#required" => {}}))
    CreatePredictorRequest.add_member(:forecast_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ForecastTypes, name: "ForecastTypes"))
    CreatePredictorRequest.add_member(:perform_auto_ml, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "PerformAutoML"))
    CreatePredictorRequest.add_member(:auto_ml_override_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoMLOverrideStrategy, name: "AutoMLOverrideStrategy"))
    CreatePredictorRequest.add_member(:perform_hpo, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "PerformHPO"))
    CreatePredictorRequest.add_member(:training_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: TrainingParameters, name: "TrainingParameters"))
    CreatePredictorRequest.add_member(:evaluation_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationParameters, name: "EvaluationParameters"))
    CreatePredictorRequest.add_member(:hpo_config, ::Smithy::Schema::Shapes::MemberShape.new(target: HyperParameterTuningJobConfig, name: "HPOConfig"))
    CreatePredictorRequest.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDataConfig, name: "InputDataConfig", traits: {"smithy.api#required" => {}}))
    CreatePredictorRequest.add_member(:featurization_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturizationConfig, name: "FeaturizationConfig", traits: {"smithy.api#required" => {}}))
    CreatePredictorRequest.add_member(:encryption_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfig, name: "EncryptionConfig"))
    CreatePredictorRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreatePredictorRequest.add_member(:optimization_metric, ::Smithy::Schema::Shapes::MemberShape.new(target: OptimizationMetric, name: "OptimizationMetric"))
    CreatePredictorRequest.type = Types::CreatePredictorRequest
    CreatePredictorResponse.add_member(:predictor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "PredictorArn"))
    CreatePredictorResponse.type = Types::CreatePredictorResponse
    CreateWhatIfAnalysisRequest.add_member(:what_if_analysis_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "WhatIfAnalysisName", traits: {"smithy.api#required" => {}}))
    CreateWhatIfAnalysisRequest.add_member(:forecast_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ForecastArn", traits: {"smithy.api#required" => {}}))
    CreateWhatIfAnalysisRequest.add_member(:time_series_selector, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeSeriesSelector, name: "TimeSeriesSelector"))
    CreateWhatIfAnalysisRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateWhatIfAnalysisRequest.type = Types::CreateWhatIfAnalysisRequest
    CreateWhatIfAnalysisResponse.add_member(:what_if_analysis_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "WhatIfAnalysisArn"))
    CreateWhatIfAnalysisResponse.type = Types::CreateWhatIfAnalysisResponse
    CreateWhatIfForecastExportRequest.add_member(:what_if_forecast_export_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "WhatIfForecastExportName", traits: {"smithy.api#required" => {}}))
    CreateWhatIfForecastExportRequest.add_member(:what_if_forecast_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatIfForecastArnListForExport, name: "WhatIfForecastArns", traits: {"smithy.api#required" => {}}))
    CreateWhatIfForecastExportRequest.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: DataDestination, name: "Destination", traits: {"smithy.api#required" => {}}))
    CreateWhatIfForecastExportRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateWhatIfForecastExportRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: Format, name: "Format"))
    CreateWhatIfForecastExportRequest.type = Types::CreateWhatIfForecastExportRequest
    CreateWhatIfForecastExportResponse.add_member(:what_if_forecast_export_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongArn, name: "WhatIfForecastExportArn"))
    CreateWhatIfForecastExportResponse.type = Types::CreateWhatIfForecastExportResponse
    CreateWhatIfForecastRequest.add_member(:what_if_forecast_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "WhatIfForecastName", traits: {"smithy.api#required" => {}}))
    CreateWhatIfForecastRequest.add_member(:what_if_analysis_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "WhatIfAnalysisArn", traits: {"smithy.api#required" => {}}))
    CreateWhatIfForecastRequest.add_member(:time_series_transformations, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeSeriesTransformations, name: "TimeSeriesTransformations"))
    CreateWhatIfForecastRequest.add_member(:time_series_replacements_data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeSeriesReplacementsDataSource, name: "TimeSeriesReplacementsDataSource"))
    CreateWhatIfForecastRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateWhatIfForecastRequest.type = Types::CreateWhatIfForecastRequest
    CreateWhatIfForecastResponse.add_member(:what_if_forecast_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongArn, name: "WhatIfForecastArn"))
    CreateWhatIfForecastResponse.type = Types::CreateWhatIfForecastResponse
    DataConfig.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DatasetGroupArn", traits: {"smithy.api#required" => {}}))
    DataConfig.add_member(:attribute_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeConfigs, name: "AttributeConfigs"))
    DataConfig.add_member(:additional_datasets, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalDatasets, name: "AdditionalDatasets"))
    DataConfig.type = Types::DataConfig
    DataDestination.add_member(:s3_config, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Config, name: "S3Config", traits: {"smithy.api#required" => {}}))
    DataDestination.type = Types::DataDestination
    DataSource.add_member(:s3_config, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Config, name: "S3Config", traits: {"smithy.api#required" => {}}))
    DataSource.type = Types::DataSource
    DatasetGroupSummary.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DatasetGroupArn"))
    DatasetGroupSummary.add_member(:dataset_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DatasetGroupName"))
    DatasetGroupSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DatasetGroupSummary.add_member(:last_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModificationTime"))
    DatasetGroupSummary.type = Types::DatasetGroupSummary
    DatasetGroups.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetGroupSummary, name: "member")
    DatasetImportJobSummary.add_member(:dataset_import_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DatasetImportJobArn"))
    DatasetImportJobSummary.add_member(:dataset_import_job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DatasetImportJobName"))
    DatasetImportJobSummary.add_member(:data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSource, name: "DataSource"))
    DatasetImportJobSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    DatasetImportJobSummary.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    DatasetImportJobSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DatasetImportJobSummary.add_member(:last_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModificationTime"))
    DatasetImportJobSummary.add_member(:import_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportMode, name: "ImportMode"))
    DatasetImportJobSummary.type = Types::DatasetImportJobSummary
    DatasetImportJobs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetImportJobSummary, name: "member")
    DatasetSummary.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DatasetArn"))
    DatasetSummary.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DatasetName"))
    DatasetSummary.add_member(:dataset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetType, name: "DatasetType"))
    DatasetSummary.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, name: "Domain"))
    DatasetSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DatasetSummary.add_member(:last_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModificationTime"))
    DatasetSummary.type = Types::DatasetSummary
    DatasetType.add_member(:target_time_series, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TARGET_TIME_SERIES", traits: {"smithy.api#enumValue" => "TARGET_TIME_SERIES"}))
    DatasetType.add_member(:related_time_series, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RELATED_TIME_SERIES", traits: {"smithy.api#enumValue" => "RELATED_TIME_SERIES"}))
    DatasetType.add_member(:item_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ITEM_METADATA", traits: {"smithy.api#enumValue" => "ITEM_METADATA"}))
    Datasets.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetSummary, name: "member")
    DayOfWeek.add_member(:monday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONDAY", traits: {"smithy.api#enumValue" => "MONDAY"}))
    DayOfWeek.add_member(:tuesday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TUESDAY", traits: {"smithy.api#enumValue" => "TUESDAY"}))
    DayOfWeek.add_member(:wednesday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEDNESDAY", traits: {"smithy.api#enumValue" => "WEDNESDAY"}))
    DayOfWeek.add_member(:thursday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THURSDAY", traits: {"smithy.api#enumValue" => "THURSDAY"}))
    DayOfWeek.add_member(:friday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FRIDAY", traits: {"smithy.api#enumValue" => "FRIDAY"}))
    DayOfWeek.add_member(:saturday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SATURDAY", traits: {"smithy.api#enumValue" => "SATURDAY"}))
    DayOfWeek.add_member(:sunday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUNDAY", traits: {"smithy.api#enumValue" => "SUNDAY"}))
    DeleteDatasetGroupRequest.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DatasetGroupArn", traits: {"smithy.api#required" => {}}))
    DeleteDatasetGroupRequest.type = Types::DeleteDatasetGroupRequest
    DeleteDatasetImportJobRequest.add_member(:dataset_import_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DatasetImportJobArn", traits: {"smithy.api#required" => {}}))
    DeleteDatasetImportJobRequest.type = Types::DeleteDatasetImportJobRequest
    DeleteDatasetRequest.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DatasetArn", traits: {"smithy.api#required" => {}}))
    DeleteDatasetRequest.type = Types::DeleteDatasetRequest
    DeleteExplainabilityExportRequest.add_member(:explainability_export_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ExplainabilityExportArn", traits: {"smithy.api#required" => {}}))
    DeleteExplainabilityExportRequest.type = Types::DeleteExplainabilityExportRequest
    DeleteExplainabilityRequest.add_member(:explainability_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ExplainabilityArn", traits: {"smithy.api#required" => {}}))
    DeleteExplainabilityRequest.type = Types::DeleteExplainabilityRequest
    DeleteForecastExportJobRequest.add_member(:forecast_export_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ForecastExportJobArn", traits: {"smithy.api#required" => {}}))
    DeleteForecastExportJobRequest.type = Types::DeleteForecastExportJobRequest
    DeleteForecastRequest.add_member(:forecast_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ForecastArn", traits: {"smithy.api#required" => {}}))
    DeleteForecastRequest.type = Types::DeleteForecastRequest
    DeleteMonitorRequest.add_member(:monitor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "MonitorArn", traits: {"smithy.api#required" => {}}))
    DeleteMonitorRequest.type = Types::DeleteMonitorRequest
    DeletePredictorBacktestExportJobRequest.add_member(:predictor_backtest_export_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "PredictorBacktestExportJobArn", traits: {"smithy.api#required" => {}}))
    DeletePredictorBacktestExportJobRequest.type = Types::DeletePredictorBacktestExportJobRequest
    DeletePredictorRequest.add_member(:predictor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "PredictorArn", traits: {"smithy.api#required" => {}}))
    DeletePredictorRequest.type = Types::DeletePredictorRequest
    DeleteResourceTreeRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DeleteResourceTreeRequest.type = Types::DeleteResourceTreeRequest
    DeleteWhatIfAnalysisRequest.add_member(:what_if_analysis_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "WhatIfAnalysisArn", traits: {"smithy.api#required" => {}}))
    DeleteWhatIfAnalysisRequest.type = Types::DeleteWhatIfAnalysisRequest
    DeleteWhatIfForecastExportRequest.add_member(:what_if_forecast_export_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongArn, name: "WhatIfForecastExportArn", traits: {"smithy.api#required" => {}}))
    DeleteWhatIfForecastExportRequest.type = Types::DeleteWhatIfForecastExportRequest
    DeleteWhatIfForecastRequest.add_member(:what_if_forecast_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongArn, name: "WhatIfForecastArn", traits: {"smithy.api#required" => {}}))
    DeleteWhatIfForecastRequest.type = Types::DeleteWhatIfForecastRequest
    DescribeAutoPredictorRequest.add_member(:predictor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "PredictorArn", traits: {"smithy.api#required" => {}}))
    DescribeAutoPredictorRequest.type = Types::DescribeAutoPredictorRequest
    DescribeAutoPredictorResponse.add_member(:predictor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "PredictorArn"))
    DescribeAutoPredictorResponse.add_member(:predictor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "PredictorName"))
    DescribeAutoPredictorResponse.add_member(:forecast_horizon, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ForecastHorizon"))
    DescribeAutoPredictorResponse.add_member(:forecast_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ForecastTypes, name: "ForecastTypes"))
    DescribeAutoPredictorResponse.add_member(:forecast_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: Frequency, name: "ForecastFrequency"))
    DescribeAutoPredictorResponse.add_member(:forecast_dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: ForecastDimensions, name: "ForecastDimensions"))
    DescribeAutoPredictorResponse.add_member(:dataset_import_job_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "DatasetImportJobArns"))
    DescribeAutoPredictorResponse.add_member(:data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DataConfig, name: "DataConfig"))
    DescribeAutoPredictorResponse.add_member(:encryption_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfig, name: "EncryptionConfig"))
    DescribeAutoPredictorResponse.add_member(:reference_predictor_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferencePredictorSummary, name: "ReferencePredictorSummary"))
    DescribeAutoPredictorResponse.add_member(:estimated_time_remaining_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "EstimatedTimeRemainingInMinutes"))
    DescribeAutoPredictorResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    DescribeAutoPredictorResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    DescribeAutoPredictorResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DescribeAutoPredictorResponse.add_member(:last_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModificationTime"))
    DescribeAutoPredictorResponse.add_member(:optimization_metric, ::Smithy::Schema::Shapes::MemberShape.new(target: OptimizationMetric, name: "OptimizationMetric"))
    DescribeAutoPredictorResponse.add_member(:explainability_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ExplainabilityInfo, name: "ExplainabilityInfo"))
    DescribeAutoPredictorResponse.add_member(:monitor_info, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorInfo, name: "MonitorInfo"))
    DescribeAutoPredictorResponse.add_member(:time_alignment_boundary, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeAlignmentBoundary, name: "TimeAlignmentBoundary"))
    DescribeAutoPredictorResponse.type = Types::DescribeAutoPredictorResponse
    DescribeDatasetGroupRequest.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DatasetGroupArn", traits: {"smithy.api#required" => {}}))
    DescribeDatasetGroupRequest.type = Types::DescribeDatasetGroupRequest
    DescribeDatasetGroupResponse.add_member(:dataset_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DatasetGroupName"))
    DescribeDatasetGroupResponse.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DatasetGroupArn"))
    DescribeDatasetGroupResponse.add_member(:dataset_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "DatasetArns"))
    DescribeDatasetGroupResponse.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, name: "Domain"))
    DescribeDatasetGroupResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    DescribeDatasetGroupResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DescribeDatasetGroupResponse.add_member(:last_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModificationTime"))
    DescribeDatasetGroupResponse.type = Types::DescribeDatasetGroupResponse
    DescribeDatasetImportJobRequest.add_member(:dataset_import_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DatasetImportJobArn", traits: {"smithy.api#required" => {}}))
    DescribeDatasetImportJobRequest.type = Types::DescribeDatasetImportJobRequest
    DescribeDatasetImportJobResponse.add_member(:dataset_import_job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DatasetImportJobName"))
    DescribeDatasetImportJobResponse.add_member(:dataset_import_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DatasetImportJobArn"))
    DescribeDatasetImportJobResponse.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DatasetArn"))
    DescribeDatasetImportJobResponse.add_member(:timestamp_format, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "TimestampFormat"))
    DescribeDatasetImportJobResponse.add_member(:time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeZone, name: "TimeZone"))
    DescribeDatasetImportJobResponse.add_member(:use_geolocation_for_time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: UseGeolocationForTimeZone, name: "UseGeolocationForTimeZone", traits: {"smithy.api#default" => false}))
    DescribeDatasetImportJobResponse.add_member(:geolocation_format, ::Smithy::Schema::Shapes::MemberShape.new(target: GeolocationFormat, name: "GeolocationFormat"))
    DescribeDatasetImportJobResponse.add_member(:data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSource, name: "DataSource"))
    DescribeDatasetImportJobResponse.add_member(:estimated_time_remaining_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "EstimatedTimeRemainingInMinutes"))
    DescribeDatasetImportJobResponse.add_member(:field_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldStatistics, name: "FieldStatistics"))
    DescribeDatasetImportJobResponse.add_member(:data_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "DataSize"))
    DescribeDatasetImportJobResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    DescribeDatasetImportJobResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    DescribeDatasetImportJobResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DescribeDatasetImportJobResponse.add_member(:last_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModificationTime"))
    DescribeDatasetImportJobResponse.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: Format, name: "Format"))
    DescribeDatasetImportJobResponse.add_member(:import_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportMode, name: "ImportMode"))
    DescribeDatasetImportJobResponse.type = Types::DescribeDatasetImportJobResponse
    DescribeDatasetRequest.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DatasetArn", traits: {"smithy.api#required" => {}}))
    DescribeDatasetRequest.type = Types::DescribeDatasetRequest
    DescribeDatasetResponse.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DatasetArn"))
    DescribeDatasetResponse.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DatasetName"))
    DescribeDatasetResponse.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, name: "Domain"))
    DescribeDatasetResponse.add_member(:dataset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetType, name: "DatasetType"))
    DescribeDatasetResponse.add_member(:data_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: Frequency, name: "DataFrequency"))
    DescribeDatasetResponse.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: Schema, name: "Schema"))
    DescribeDatasetResponse.add_member(:encryption_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfig, name: "EncryptionConfig"))
    DescribeDatasetResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    DescribeDatasetResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DescribeDatasetResponse.add_member(:last_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModificationTime"))
    DescribeDatasetResponse.type = Types::DescribeDatasetResponse
    DescribeExplainabilityExportRequest.add_member(:explainability_export_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ExplainabilityExportArn", traits: {"smithy.api#required" => {}}))
    DescribeExplainabilityExportRequest.type = Types::DescribeExplainabilityExportRequest
    DescribeExplainabilityExportResponse.add_member(:explainability_export_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ExplainabilityExportArn"))
    DescribeExplainabilityExportResponse.add_member(:explainability_export_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ExplainabilityExportName"))
    DescribeExplainabilityExportResponse.add_member(:explainability_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ExplainabilityArn"))
    DescribeExplainabilityExportResponse.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: DataDestination, name: "Destination"))
    DescribeExplainabilityExportResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    DescribeExplainabilityExportResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    DescribeExplainabilityExportResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DescribeExplainabilityExportResponse.add_member(:last_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModificationTime"))
    DescribeExplainabilityExportResponse.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: Format, name: "Format"))
    DescribeExplainabilityExportResponse.type = Types::DescribeExplainabilityExportResponse
    DescribeExplainabilityRequest.add_member(:explainability_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ExplainabilityArn", traits: {"smithy.api#required" => {}}))
    DescribeExplainabilityRequest.type = Types::DescribeExplainabilityRequest
    DescribeExplainabilityResponse.add_member(:explainability_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ExplainabilityArn"))
    DescribeExplainabilityResponse.add_member(:explainability_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ExplainabilityName"))
    DescribeExplainabilityResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn"))
    DescribeExplainabilityResponse.add_member(:explainability_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ExplainabilityConfig, name: "ExplainabilityConfig"))
    DescribeExplainabilityResponse.add_member(:enable_visualization, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnableVisualization"))
    DescribeExplainabilityResponse.add_member(:data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSource, name: "DataSource"))
    DescribeExplainabilityResponse.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: Schema, name: "Schema"))
    DescribeExplainabilityResponse.add_member(:start_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalDateTime, name: "StartDateTime"))
    DescribeExplainabilityResponse.add_member(:end_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalDateTime, name: "EndDateTime"))
    DescribeExplainabilityResponse.add_member(:estimated_time_remaining_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "EstimatedTimeRemainingInMinutes"))
    DescribeExplainabilityResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    DescribeExplainabilityResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    DescribeExplainabilityResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DescribeExplainabilityResponse.add_member(:last_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModificationTime"))
    DescribeExplainabilityResponse.type = Types::DescribeExplainabilityResponse
    DescribeForecastExportJobRequest.add_member(:forecast_export_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ForecastExportJobArn", traits: {"smithy.api#required" => {}}))
    DescribeForecastExportJobRequest.type = Types::DescribeForecastExportJobRequest
    DescribeForecastExportJobResponse.add_member(:forecast_export_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ForecastExportJobArn"))
    DescribeForecastExportJobResponse.add_member(:forecast_export_job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ForecastExportJobName"))
    DescribeForecastExportJobResponse.add_member(:forecast_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ForecastArn"))
    DescribeForecastExportJobResponse.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: DataDestination, name: "Destination"))
    DescribeForecastExportJobResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    DescribeForecastExportJobResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    DescribeForecastExportJobResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DescribeForecastExportJobResponse.add_member(:last_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModificationTime"))
    DescribeForecastExportJobResponse.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: Format, name: "Format"))
    DescribeForecastExportJobResponse.type = Types::DescribeForecastExportJobResponse
    DescribeForecastRequest.add_member(:forecast_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ForecastArn", traits: {"smithy.api#required" => {}}))
    DescribeForecastRequest.type = Types::DescribeForecastRequest
    DescribeForecastResponse.add_member(:forecast_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ForecastArn"))
    DescribeForecastResponse.add_member(:forecast_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ForecastName"))
    DescribeForecastResponse.add_member(:forecast_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ForecastTypes, name: "ForecastTypes"))
    DescribeForecastResponse.add_member(:predictor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "PredictorArn"))
    DescribeForecastResponse.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DatasetGroupArn"))
    DescribeForecastResponse.add_member(:estimated_time_remaining_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "EstimatedTimeRemainingInMinutes"))
    DescribeForecastResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DescribeForecastResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    DescribeForecastResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DescribeForecastResponse.add_member(:last_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModificationTime"))
    DescribeForecastResponse.add_member(:time_series_selector, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeSeriesSelector, name: "TimeSeriesSelector"))
    DescribeForecastResponse.type = Types::DescribeForecastResponse
    DescribeMonitorRequest.add_member(:monitor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "MonitorArn", traits: {"smithy.api#required" => {}}))
    DescribeMonitorRequest.type = Types::DescribeMonitorRequest
    DescribeMonitorResponse.add_member(:monitor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "MonitorName"))
    DescribeMonitorResponse.add_member(:monitor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "MonitorArn"))
    DescribeMonitorResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn"))
    DescribeMonitorResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    DescribeMonitorResponse.add_member(:last_evaluation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastEvaluationTime"))
    DescribeMonitorResponse.add_member(:last_evaluation_state, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationState, name: "LastEvaluationState"))
    DescribeMonitorResponse.add_member(:baseline, ::Smithy::Schema::Shapes::MemberShape.new(target: Baseline, name: "Baseline"))
    DescribeMonitorResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    DescribeMonitorResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DescribeMonitorResponse.add_member(:last_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModificationTime"))
    DescribeMonitorResponse.add_member(:estimated_evaluation_time_remaining_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "EstimatedEvaluationTimeRemainingInMinutes"))
    DescribeMonitorResponse.type = Types::DescribeMonitorResponse
    DescribePredictorBacktestExportJobRequest.add_member(:predictor_backtest_export_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "PredictorBacktestExportJobArn", traits: {"smithy.api#required" => {}}))
    DescribePredictorBacktestExportJobRequest.type = Types::DescribePredictorBacktestExportJobRequest
    DescribePredictorBacktestExportJobResponse.add_member(:predictor_backtest_export_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "PredictorBacktestExportJobArn"))
    DescribePredictorBacktestExportJobResponse.add_member(:predictor_backtest_export_job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "PredictorBacktestExportJobName"))
    DescribePredictorBacktestExportJobResponse.add_member(:predictor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "PredictorArn"))
    DescribePredictorBacktestExportJobResponse.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: DataDestination, name: "Destination"))
    DescribePredictorBacktestExportJobResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    DescribePredictorBacktestExportJobResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    DescribePredictorBacktestExportJobResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DescribePredictorBacktestExportJobResponse.add_member(:last_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModificationTime"))
    DescribePredictorBacktestExportJobResponse.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: Format, name: "Format"))
    DescribePredictorBacktestExportJobResponse.type = Types::DescribePredictorBacktestExportJobResponse
    DescribePredictorRequest.add_member(:predictor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "PredictorArn", traits: {"smithy.api#required" => {}}))
    DescribePredictorRequest.type = Types::DescribePredictorRequest
    DescribePredictorResponse.add_member(:predictor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "PredictorArn"))
    DescribePredictorResponse.add_member(:predictor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "PredictorName"))
    DescribePredictorResponse.add_member(:algorithm_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "AlgorithmArn"))
    DescribePredictorResponse.add_member(:auto_ml_algorithm_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "AutoMLAlgorithmArns"))
    DescribePredictorResponse.add_member(:forecast_horizon, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ForecastHorizon"))
    DescribePredictorResponse.add_member(:forecast_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ForecastTypes, name: "ForecastTypes"))
    DescribePredictorResponse.add_member(:perform_auto_ml, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "PerformAutoML"))
    DescribePredictorResponse.add_member(:auto_ml_override_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoMLOverrideStrategy, name: "AutoMLOverrideStrategy"))
    DescribePredictorResponse.add_member(:perform_hpo, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "PerformHPO"))
    DescribePredictorResponse.add_member(:training_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: TrainingParameters, name: "TrainingParameters"))
    DescribePredictorResponse.add_member(:evaluation_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationParameters, name: "EvaluationParameters"))
    DescribePredictorResponse.add_member(:hpo_config, ::Smithy::Schema::Shapes::MemberShape.new(target: HyperParameterTuningJobConfig, name: "HPOConfig"))
    DescribePredictorResponse.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDataConfig, name: "InputDataConfig"))
    DescribePredictorResponse.add_member(:featurization_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturizationConfig, name: "FeaturizationConfig"))
    DescribePredictorResponse.add_member(:encryption_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfig, name: "EncryptionConfig"))
    DescribePredictorResponse.add_member(:predictor_execution_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictorExecutionDetails, name: "PredictorExecutionDetails"))
    DescribePredictorResponse.add_member(:estimated_time_remaining_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "EstimatedTimeRemainingInMinutes"))
    DescribePredictorResponse.add_member(:is_auto_predictor, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsAutoPredictor"))
    DescribePredictorResponse.add_member(:dataset_import_job_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "DatasetImportJobArns"))
    DescribePredictorResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    DescribePredictorResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    DescribePredictorResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DescribePredictorResponse.add_member(:last_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModificationTime"))
    DescribePredictorResponse.add_member(:optimization_metric, ::Smithy::Schema::Shapes::MemberShape.new(target: OptimizationMetric, name: "OptimizationMetric"))
    DescribePredictorResponse.type = Types::DescribePredictorResponse
    DescribeWhatIfAnalysisRequest.add_member(:what_if_analysis_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "WhatIfAnalysisArn", traits: {"smithy.api#required" => {}}))
    DescribeWhatIfAnalysisRequest.type = Types::DescribeWhatIfAnalysisRequest
    DescribeWhatIfAnalysisResponse.add_member(:what_if_analysis_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "WhatIfAnalysisName"))
    DescribeWhatIfAnalysisResponse.add_member(:what_if_analysis_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "WhatIfAnalysisArn"))
    DescribeWhatIfAnalysisResponse.add_member(:forecast_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ForecastArn"))
    DescribeWhatIfAnalysisResponse.add_member(:estimated_time_remaining_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "EstimatedTimeRemainingInMinutes"))
    DescribeWhatIfAnalysisResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DescribeWhatIfAnalysisResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    DescribeWhatIfAnalysisResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DescribeWhatIfAnalysisResponse.add_member(:last_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModificationTime"))
    DescribeWhatIfAnalysisResponse.add_member(:time_series_selector, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeSeriesSelector, name: "TimeSeriesSelector"))
    DescribeWhatIfAnalysisResponse.type = Types::DescribeWhatIfAnalysisResponse
    DescribeWhatIfForecastExportRequest.add_member(:what_if_forecast_export_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongArn, name: "WhatIfForecastExportArn", traits: {"smithy.api#required" => {}}))
    DescribeWhatIfForecastExportRequest.type = Types::DescribeWhatIfForecastExportRequest
    DescribeWhatIfForecastExportResponse.add_member(:what_if_forecast_export_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongArn, name: "WhatIfForecastExportArn"))
    DescribeWhatIfForecastExportResponse.add_member(:what_if_forecast_export_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "WhatIfForecastExportName"))
    DescribeWhatIfForecastExportResponse.add_member(:what_if_forecast_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: LongArnList, name: "WhatIfForecastArns"))
    DescribeWhatIfForecastExportResponse.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: DataDestination, name: "Destination"))
    DescribeWhatIfForecastExportResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    DescribeWhatIfForecastExportResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    DescribeWhatIfForecastExportResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DescribeWhatIfForecastExportResponse.add_member(:estimated_time_remaining_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "EstimatedTimeRemainingInMinutes"))
    DescribeWhatIfForecastExportResponse.add_member(:last_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModificationTime"))
    DescribeWhatIfForecastExportResponse.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: Format, name: "Format"))
    DescribeWhatIfForecastExportResponse.type = Types::DescribeWhatIfForecastExportResponse
    DescribeWhatIfForecastRequest.add_member(:what_if_forecast_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongArn, name: "WhatIfForecastArn", traits: {"smithy.api#required" => {}}))
    DescribeWhatIfForecastRequest.type = Types::DescribeWhatIfForecastRequest
    DescribeWhatIfForecastResponse.add_member(:what_if_forecast_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "WhatIfForecastName"))
    DescribeWhatIfForecastResponse.add_member(:what_if_forecast_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongArn, name: "WhatIfForecastArn"))
    DescribeWhatIfForecastResponse.add_member(:what_if_analysis_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "WhatIfAnalysisArn"))
    DescribeWhatIfForecastResponse.add_member(:estimated_time_remaining_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "EstimatedTimeRemainingInMinutes"))
    DescribeWhatIfForecastResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DescribeWhatIfForecastResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    DescribeWhatIfForecastResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DescribeWhatIfForecastResponse.add_member(:last_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModificationTime"))
    DescribeWhatIfForecastResponse.add_member(:time_series_transformations, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeSeriesTransformations, name: "TimeSeriesTransformations"))
    DescribeWhatIfForecastResponse.add_member(:time_series_replacements_data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeSeriesReplacementsDataSource, name: "TimeSeriesReplacementsDataSource"))
    DescribeWhatIfForecastResponse.add_member(:forecast_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ForecastTypes, name: "ForecastTypes"))
    DescribeWhatIfForecastResponse.type = Types::DescribeWhatIfForecastResponse
    Domain.add_member(:retail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETAIL", traits: {"smithy.api#enumValue" => "RETAIL"}))
    Domain.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    Domain.add_member(:inventory_planning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVENTORY_PLANNING", traits: {"smithy.api#enumValue" => "INVENTORY_PLANNING"}))
    Domain.add_member(:ec2_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_CAPACITY", traits: {"smithy.api#enumValue" => "EC2_CAPACITY"}))
    Domain.add_member(:work_force, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WORK_FORCE", traits: {"smithy.api#enumValue" => "WORK_FORCE"}))
    Domain.add_member(:web_traffic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEB_TRAFFIC", traits: {"smithy.api#enumValue" => "WEB_TRAFFIC"}))
    Domain.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "METRICS", traits: {"smithy.api#enumValue" => "METRICS"}))
    EncryptionConfig.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    EncryptionConfig.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn", traits: {"smithy.api#required" => {}}))
    EncryptionConfig.type = Types::EncryptionConfig
    ErrorMetric.add_member(:forecast_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ForecastType, name: "ForecastType"))
    ErrorMetric.add_member(:wape, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "WAPE"))
    ErrorMetric.add_member(:rmse, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "RMSE"))
    ErrorMetric.add_member(:mase, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "MASE"))
    ErrorMetric.add_member(:mape, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "MAPE"))
    ErrorMetric.type = Types::ErrorMetric
    ErrorMetrics.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMetric, name: "member")
    EvaluationParameters.add_member(:number_of_backtest_windows, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumberOfBacktestWindows"))
    EvaluationParameters.add_member(:back_test_window_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "BackTestWindowOffset"))
    EvaluationParameters.type = Types::EvaluationParameters
    EvaluationResult.add_member(:algorithm_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "AlgorithmArn"))
    EvaluationResult.add_member(:test_windows, ::Smithy::Schema::Shapes::MemberShape.new(target: TestWindows, name: "TestWindows"))
    EvaluationResult.type = Types::EvaluationResult
    EvaluationType.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUMMARY", traits: {"smithy.api#enumValue" => "SUMMARY"}))
    EvaluationType.add_member(:computed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPUTED", traits: {"smithy.api#enumValue" => "COMPUTED"}))
    Explainabilities.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExplainabilitySummary, name: "member")
    ExplainabilityConfig.add_member(:time_series_granularity, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeSeriesGranularity, name: "TimeSeriesGranularity", traits: {"smithy.api#required" => {}}))
    ExplainabilityConfig.add_member(:time_point_granularity, ::Smithy::Schema::Shapes::MemberShape.new(target: TimePointGranularity, name: "TimePointGranularity", traits: {"smithy.api#required" => {}}))
    ExplainabilityConfig.type = Types::ExplainabilityConfig
    ExplainabilityExportSummary.add_member(:explainability_export_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ExplainabilityExportArn"))
    ExplainabilityExportSummary.add_member(:explainability_export_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ExplainabilityExportName"))
    ExplainabilityExportSummary.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: DataDestination, name: "Destination"))
    ExplainabilityExportSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    ExplainabilityExportSummary.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ExplainabilityExportSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    ExplainabilityExportSummary.add_member(:last_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModificationTime"))
    ExplainabilityExportSummary.type = Types::ExplainabilityExportSummary
    ExplainabilityExports.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExplainabilityExportSummary, name: "member")
    ExplainabilityInfo.add_member(:explainability_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ExplainabilityArn"))
    ExplainabilityInfo.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    ExplainabilityInfo.type = Types::ExplainabilityInfo
    ExplainabilitySummary.add_member(:explainability_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ExplainabilityArn"))
    ExplainabilitySummary.add_member(:explainability_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ExplainabilityName"))
    ExplainabilitySummary.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn"))
    ExplainabilitySummary.add_member(:explainability_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ExplainabilityConfig, name: "ExplainabilityConfig"))
    ExplainabilitySummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    ExplainabilitySummary.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ExplainabilitySummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    ExplainabilitySummary.add_member(:last_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModificationTime"))
    ExplainabilitySummary.type = Types::ExplainabilitySummary
    Featurization.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "AttributeName", traits: {"smithy.api#required" => {}}))
    Featurization.add_member(:featurization_pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturizationPipeline, name: "FeaturizationPipeline"))
    Featurization.type = Types::Featurization
    FeaturizationConfig.add_member(:forecast_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: Frequency, name: "ForecastFrequency", traits: {"smithy.api#required" => {}}))
    FeaturizationConfig.add_member(:forecast_dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: ForecastDimensions, name: "ForecastDimensions"))
    FeaturizationConfig.add_member(:featurizations, ::Smithy::Schema::Shapes::MemberShape.new(target: Featurizations, name: "Featurizations"))
    FeaturizationConfig.type = Types::FeaturizationConfig
    FeaturizationMethod.add_member(:featurization_method_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturizationMethodName, name: "FeaturizationMethodName", traits: {"smithy.api#required" => {}}))
    FeaturizationMethod.add_member(:featurization_method_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturizationMethodParameters, name: "FeaturizationMethodParameters"))
    FeaturizationMethod.type = Types::FeaturizationMethod
    FeaturizationMethodName.add_member(:filling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "filling", traits: {"smithy.api#enumValue" => "filling"}))
    FeaturizationMethodParameters.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterKey, name: "key")
    FeaturizationMethodParameters.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValue, name: "value")
    FeaturizationPipeline.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturizationMethod, name: "member")
    Featurizations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Featurization, name: "member")
    FieldStatistics.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key")
    FieldStatistics.value = ::Smithy::Schema::Shapes::MemberShape.new(target: Statistics, name: "value")
    Filter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Key", traits: {"smithy.api#required" => {}}))
    Filter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Value", traits: {"smithy.api#required" => {}}))
    Filter.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterConditionString, name: "Condition", traits: {"smithy.api#required" => {}}))
    Filter.type = Types::Filter
    FilterConditionString.add_member(:is, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IS", traits: {"smithy.api#enumValue" => "IS"}))
    FilterConditionString.add_member(:is_not, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IS_NOT", traits: {"smithy.api#enumValue" => "IS_NOT"}))
    Filters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member")
    ForecastDimensions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "member")
    ForecastExportJobSummary.add_member(:forecast_export_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ForecastExportJobArn"))
    ForecastExportJobSummary.add_member(:forecast_export_job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ForecastExportJobName"))
    ForecastExportJobSummary.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: DataDestination, name: "Destination"))
    ForecastExportJobSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    ForecastExportJobSummary.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ForecastExportJobSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    ForecastExportJobSummary.add_member(:last_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModificationTime"))
    ForecastExportJobSummary.type = Types::ForecastExportJobSummary
    ForecastExportJobs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ForecastExportJobSummary, name: "member")
    ForecastSummary.add_member(:forecast_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ForecastArn"))
    ForecastSummary.add_member(:forecast_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ForecastName"))
    ForecastSummary.add_member(:predictor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PredictorArn"))
    ForecastSummary.add_member(:created_using_auto_predictor, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CreatedUsingAutoPredictor"))
    ForecastSummary.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatasetGroupArn"))
    ForecastSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    ForecastSummary.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ForecastSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    ForecastSummary.add_member(:last_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModificationTime"))
    ForecastSummary.type = Types::ForecastSummary
    ForecastTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ForecastType, name: "member")
    Forecasts.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ForecastSummary, name: "member")
    GetAccuracyMetricsRequest.add_member(:predictor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "PredictorArn", traits: {"smithy.api#required" => {}}))
    GetAccuracyMetricsRequest.type = Types::GetAccuracyMetricsRequest
    GetAccuracyMetricsResponse.add_member(:predictor_evaluation_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictorEvaluationResults, name: "PredictorEvaluationResults"))
    GetAccuracyMetricsResponse.add_member(:is_auto_predictor, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsAutoPredictor"))
    GetAccuracyMetricsResponse.add_member(:auto_ml_override_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoMLOverrideStrategy, name: "AutoMLOverrideStrategy"))
    GetAccuracyMetricsResponse.add_member(:optimization_metric, ::Smithy::Schema::Shapes::MemberShape.new(target: OptimizationMetric, name: "OptimizationMetric"))
    GetAccuracyMetricsResponse.type = Types::GetAccuracyMetricsResponse
    HyperParameterTuningJobConfig.add_member(:parameter_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterRanges, name: "ParameterRanges"))
    HyperParameterTuningJobConfig.type = Types::HyperParameterTuningJobConfig
    ImportMode.add_member(:full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL", traits: {"smithy.api#enumValue" => "FULL"}))
    ImportMode.add_member(:incremental, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCREMENTAL", traits: {"smithy.api#enumValue" => "INCREMENTAL"}))
    InputDataConfig.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DatasetGroupArn", traits: {"smithy.api#required" => {}}))
    InputDataConfig.add_member(:supplementary_features, ::Smithy::Schema::Shapes::MemberShape.new(target: SupplementaryFeatures, name: "SupplementaryFeatures"))
    InputDataConfig.type = Types::InputDataConfig
    IntegerParameterRange.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#required" => {}}))
    IntegerParameterRange.add_member(:max_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxValue", traits: {"smithy.api#required" => {}}))
    IntegerParameterRange.add_member(:min_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MinValue", traits: {"smithy.api#required" => {}}))
    IntegerParameterRange.add_member(:scaling_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingType, name: "ScalingType"))
    IntegerParameterRange.type = Types::IntegerParameterRange
    IntegerParameterRanges.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerParameterRange, name: "member")
    InvalidInputException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidInputException.type = Types::InvalidInputException
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    LimitExceededException.type = Types::LimitExceededException
    ListDatasetGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDatasetGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListDatasetGroupsRequest.type = Types::ListDatasetGroupsRequest
    ListDatasetGroupsResponse.add_member(:dataset_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetGroups, name: "DatasetGroups"))
    ListDatasetGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDatasetGroupsResponse.type = Types::ListDatasetGroupsResponse
    ListDatasetImportJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDatasetImportJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListDatasetImportJobsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters"))
    ListDatasetImportJobsRequest.type = Types::ListDatasetImportJobsRequest
    ListDatasetImportJobsResponse.add_member(:dataset_import_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetImportJobs, name: "DatasetImportJobs"))
    ListDatasetImportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDatasetImportJobsResponse.type = Types::ListDatasetImportJobsResponse
    ListDatasetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDatasetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListDatasetsRequest.type = Types::ListDatasetsRequest
    ListDatasetsResponse.add_member(:datasets, ::Smithy::Schema::Shapes::MemberShape.new(target: Datasets, name: "Datasets"))
    ListDatasetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDatasetsResponse.type = Types::ListDatasetsResponse
    ListExplainabilitiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListExplainabilitiesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListExplainabilitiesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters"))
    ListExplainabilitiesRequest.type = Types::ListExplainabilitiesRequest
    ListExplainabilitiesResponse.add_member(:explainabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: Explainabilities, name: "Explainabilities"))
    ListExplainabilitiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListExplainabilitiesResponse.type = Types::ListExplainabilitiesResponse
    ListExplainabilityExportsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListExplainabilityExportsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListExplainabilityExportsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters"))
    ListExplainabilityExportsRequest.type = Types::ListExplainabilityExportsRequest
    ListExplainabilityExportsResponse.add_member(:explainability_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: ExplainabilityExports, name: "ExplainabilityExports"))
    ListExplainabilityExportsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListExplainabilityExportsResponse.type = Types::ListExplainabilityExportsResponse
    ListForecastExportJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListForecastExportJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListForecastExportJobsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters"))
    ListForecastExportJobsRequest.type = Types::ListForecastExportJobsRequest
    ListForecastExportJobsResponse.add_member(:forecast_export_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: ForecastExportJobs, name: "ForecastExportJobs"))
    ListForecastExportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListForecastExportJobsResponse.type = Types::ListForecastExportJobsResponse
    ListForecastsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListForecastsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListForecastsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters"))
    ListForecastsRequest.type = Types::ListForecastsRequest
    ListForecastsResponse.add_member(:forecasts, ::Smithy::Schema::Shapes::MemberShape.new(target: Forecasts, name: "Forecasts"))
    ListForecastsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListForecastsResponse.type = Types::ListForecastsResponse
    ListMonitorEvaluationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListMonitorEvaluationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListMonitorEvaluationsRequest.add_member(:monitor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "MonitorArn", traits: {"smithy.api#required" => {}}))
    ListMonitorEvaluationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters"))
    ListMonitorEvaluationsRequest.type = Types::ListMonitorEvaluationsRequest
    ListMonitorEvaluationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListMonitorEvaluationsResponse.add_member(:predictor_monitor_evaluations, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictorMonitorEvaluations, name: "PredictorMonitorEvaluations"))
    ListMonitorEvaluationsResponse.type = Types::ListMonitorEvaluationsResponse
    ListMonitorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListMonitorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListMonitorsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters"))
    ListMonitorsRequest.type = Types::ListMonitorsRequest
    ListMonitorsResponse.add_member(:monitors, ::Smithy::Schema::Shapes::MemberShape.new(target: Monitors, name: "Monitors"))
    ListMonitorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListMonitorsResponse.type = Types::ListMonitorsResponse
    ListPredictorBacktestExportJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPredictorBacktestExportJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListPredictorBacktestExportJobsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters"))
    ListPredictorBacktestExportJobsRequest.type = Types::ListPredictorBacktestExportJobsRequest
    ListPredictorBacktestExportJobsResponse.add_member(:predictor_backtest_export_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictorBacktestExportJobs, name: "PredictorBacktestExportJobs"))
    ListPredictorBacktestExportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPredictorBacktestExportJobsResponse.type = Types::ListPredictorBacktestExportJobsResponse
    ListPredictorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPredictorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListPredictorsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters"))
    ListPredictorsRequest.type = Types::ListPredictorsRequest
    ListPredictorsResponse.add_member(:predictors, ::Smithy::Schema::Shapes::MemberShape.new(target: Predictors, name: "Predictors"))
    ListPredictorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPredictorsResponse.type = Types::ListPredictorsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListWhatIfAnalysesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListWhatIfAnalysesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListWhatIfAnalysesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters"))
    ListWhatIfAnalysesRequest.type = Types::ListWhatIfAnalysesRequest
    ListWhatIfAnalysesResponse.add_member(:what_if_analyses, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatIfAnalyses, name: "WhatIfAnalyses"))
    ListWhatIfAnalysesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListWhatIfAnalysesResponse.type = Types::ListWhatIfAnalysesResponse
    ListWhatIfForecastExportsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListWhatIfForecastExportsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListWhatIfForecastExportsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters"))
    ListWhatIfForecastExportsRequest.type = Types::ListWhatIfForecastExportsRequest
    ListWhatIfForecastExportsResponse.add_member(:what_if_forecast_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatIfForecastExports, name: "WhatIfForecastExports"))
    ListWhatIfForecastExportsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListWhatIfForecastExportsResponse.type = Types::ListWhatIfForecastExportsResponse
    ListWhatIfForecastsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListWhatIfForecastsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListWhatIfForecastsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters"))
    ListWhatIfForecastsRequest.type = Types::ListWhatIfForecastsRequest
    ListWhatIfForecastsResponse.add_member(:what_if_forecasts, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatIfForecasts, name: "WhatIfForecasts"))
    ListWhatIfForecastsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListWhatIfForecastsResponse.type = Types::ListWhatIfForecastsResponse
    LongArnList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LongArn, name: "member")
    MetricResult.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName"))
    MetricResult.add_member(:metric_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "MetricValue"))
    MetricResult.type = Types::MetricResult
    MetricResults.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MetricResult, name: "member")
    Metrics.add_member(:rmse, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "RMSE", traits: {"smithy.api#deprecated" => {"message" => "This property is deprecated, please refer to ErrorMetrics for both RMSE and WAPE"}}))
    Metrics.add_member(:weighted_quantile_losses, ::Smithy::Schema::Shapes::MemberShape.new(target: WeightedQuantileLosses, name: "WeightedQuantileLosses"))
    Metrics.add_member(:error_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMetrics, name: "ErrorMetrics"))
    Metrics.add_member(:average_weighted_quantile_loss, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "AverageWeightedQuantileLoss"))
    Metrics.type = Types::Metrics
    MonitorConfig.add_member(:monitor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "MonitorName", traits: {"smithy.api#required" => {}}))
    MonitorConfig.type = Types::MonitorConfig
    MonitorDataSource.add_member(:dataset_import_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DatasetImportJobArn"))
    MonitorDataSource.add_member(:forecast_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ForecastArn"))
    MonitorDataSource.add_member(:predictor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "PredictorArn"))
    MonitorDataSource.type = Types::MonitorDataSource
    MonitorInfo.add_member(:monitor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "MonitorArn"))
    MonitorInfo.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    MonitorInfo.type = Types::MonitorInfo
    MonitorSummary.add_member(:monitor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "MonitorArn"))
    MonitorSummary.add_member(:monitor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "MonitorName"))
    MonitorSummary.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn"))
    MonitorSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    MonitorSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    MonitorSummary.add_member(:last_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModificationTime"))
    MonitorSummary.type = Types::MonitorSummary
    Monitors.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorSummary, name: "member")
    Month.add_member(:january, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JANUARY", traits: {"smithy.api#enumValue" => "JANUARY"}))
    Month.add_member(:february, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FEBRUARY", traits: {"smithy.api#enumValue" => "FEBRUARY"}))
    Month.add_member(:march, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MARCH", traits: {"smithy.api#enumValue" => "MARCH"}))
    Month.add_member(:april, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APRIL", traits: {"smithy.api#enumValue" => "APRIL"}))
    Month.add_member(:may, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAY", traits: {"smithy.api#enumValue" => "MAY"}))
    Month.add_member(:june, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JUNE", traits: {"smithy.api#enumValue" => "JUNE"}))
    Month.add_member(:july, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JULY", traits: {"smithy.api#enumValue" => "JULY"}))
    Month.add_member(:august, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUGUST", traits: {"smithy.api#enumValue" => "AUGUST"}))
    Month.add_member(:september, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEPTEMBER", traits: {"smithy.api#enumValue" => "SEPTEMBER"}))
    Month.add_member(:october, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OCTOBER", traits: {"smithy.api#enumValue" => "OCTOBER"}))
    Month.add_member(:november, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOVEMBER", traits: {"smithy.api#enumValue" => "NOVEMBER"}))
    Month.add_member(:december, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DECEMBER", traits: {"smithy.api#enumValue" => "DECEMBER"}))
    Operation.add_member(:add, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADD", traits: {"smithy.api#enumValue" => "ADD"}))
    Operation.add_member(:subtract, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBTRACT", traits: {"smithy.api#enumValue" => "SUBTRACT"}))
    Operation.add_member(:multiply, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTIPLY", traits: {"smithy.api#enumValue" => "MULTIPLY"}))
    Operation.add_member(:divide, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIVIDE", traits: {"smithy.api#enumValue" => "DIVIDE"}))
    OptimizationMetric.add_member(:wape, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WAPE", traits: {"smithy.api#enumValue" => "WAPE"}))
    OptimizationMetric.add_member(:rmse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RMSE", traits: {"smithy.api#enumValue" => "RMSE"}))
    OptimizationMetric.add_member(:average_weighted_quantile_loss, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AverageWeightedQuantileLoss", traits: {"smithy.api#enumValue" => "AverageWeightedQuantileLoss"}))
    OptimizationMetric.add_member(:mase, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASE", traits: {"smithy.api#enumValue" => "MASE"}))
    OptimizationMetric.add_member(:mape, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAPE", traits: {"smithy.api#enumValue" => "MAPE"}))
    ParameterRanges.add_member(:categorical_parameter_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: CategoricalParameterRanges, name: "CategoricalParameterRanges"))
    ParameterRanges.add_member(:continuous_parameter_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousParameterRanges, name: "ContinuousParameterRanges"))
    ParameterRanges.add_member(:integer_parameter_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerParameterRanges, name: "IntegerParameterRanges"))
    ParameterRanges.type = Types::ParameterRanges
    PredictorBacktestExportJobSummary.add_member(:predictor_backtest_export_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "PredictorBacktestExportJobArn"))
    PredictorBacktestExportJobSummary.add_member(:predictor_backtest_export_job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "PredictorBacktestExportJobName"))
    PredictorBacktestExportJobSummary.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: DataDestination, name: "Destination"))
    PredictorBacktestExportJobSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    PredictorBacktestExportJobSummary.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    PredictorBacktestExportJobSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    PredictorBacktestExportJobSummary.add_member(:last_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModificationTime"))
    PredictorBacktestExportJobSummary.type = Types::PredictorBacktestExportJobSummary
    PredictorBacktestExportJobs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PredictorBacktestExportJobSummary, name: "member")
    PredictorBaseline.add_member(:baseline_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineMetrics, name: "BaselineMetrics"))
    PredictorBaseline.type = Types::PredictorBaseline
    PredictorEvaluationResults.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationResult, name: "member")
    PredictorEvent.add_member(:detail, ::Smithy::Schema::Shapes::MemberShape.new(target: Detail, name: "Detail"))
    PredictorEvent.add_member(:datetime, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Datetime"))
    PredictorEvent.type = Types::PredictorEvent
    PredictorExecution.add_member(:algorithm_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "AlgorithmArn"))
    PredictorExecution.add_member(:test_windows, ::Smithy::Schema::Shapes::MemberShape.new(target: TestWindowDetails, name: "TestWindows"))
    PredictorExecution.type = Types::PredictorExecution
    PredictorExecutionDetails.add_member(:predictor_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictorExecutions, name: "PredictorExecutions"))
    PredictorExecutionDetails.type = Types::PredictorExecutionDetails
    PredictorExecutions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PredictorExecution, name: "member")
    PredictorMonitorEvaluation.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn"))
    PredictorMonitorEvaluation.add_member(:monitor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "MonitorArn"))
    PredictorMonitorEvaluation.add_member(:evaluation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EvaluationTime"))
    PredictorMonitorEvaluation.add_member(:evaluation_state, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationState, name: "EvaluationState"))
    PredictorMonitorEvaluation.add_member(:window_start_datetime, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "WindowStartDatetime"))
    PredictorMonitorEvaluation.add_member(:window_end_datetime, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "WindowEndDatetime"))
    PredictorMonitorEvaluation.add_member(:predictor_event, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictorEvent, name: "PredictorEvent"))
    PredictorMonitorEvaluation.add_member(:monitor_data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorDataSource, name: "MonitorDataSource"))
    PredictorMonitorEvaluation.add_member(:metric_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricResults, name: "MetricResults"))
    PredictorMonitorEvaluation.add_member(:num_items_evaluated, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "NumItemsEvaluated"))
    PredictorMonitorEvaluation.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    PredictorMonitorEvaluation.type = Types::PredictorMonitorEvaluation
    PredictorMonitorEvaluations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PredictorMonitorEvaluation, name: "member")
    PredictorSummary.add_member(:predictor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "PredictorArn"))
    PredictorSummary.add_member(:predictor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "PredictorName"))
    PredictorSummary.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DatasetGroupArn"))
    PredictorSummary.add_member(:is_auto_predictor, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsAutoPredictor"))
    PredictorSummary.add_member(:reference_predictor_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferencePredictorSummary, name: "ReferencePredictorSummary"))
    PredictorSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    PredictorSummary.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    PredictorSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    PredictorSummary.add_member(:last_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModificationTime"))
    PredictorSummary.type = Types::PredictorSummary
    Predictors.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PredictorSummary, name: "member")
    ReferencePredictorSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    ReferencePredictorSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "State"))
    ReferencePredictorSummary.type = Types::ReferencePredictorSummary
    ResourceAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResumeResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ResumeResourceRequest.type = Types::ResumeResourceRequest
    S3Config.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Path, name: "Path", traits: {"smithy.api#required" => {}}))
    S3Config.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    S3Config.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn"))
    S3Config.type = Types::S3Config
    ScalingType.add_member(:auto, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Auto", traits: {"smithy.api#enumValue" => "Auto"}))
    ScalingType.add_member(:linear, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Linear", traits: {"smithy.api#enumValue" => "Linear"}))
    ScalingType.add_member(:logarithmic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Logarithmic", traits: {"smithy.api#enumValue" => "Logarithmic"}))
    ScalingType.add_member(:reverse_logarithmic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ReverseLogarithmic", traits: {"smithy.api#enumValue" => "ReverseLogarithmic"}))
    Schema.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaAttributes, name: "Attributes"))
    Schema.type = Types::Schema
    SchemaAttribute.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "AttributeName"))
    SchemaAttribute.add_member(:attribute_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeType, name: "AttributeType"))
    SchemaAttribute.type = Types::SchemaAttribute
    SchemaAttributes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaAttribute, name: "member")
    State.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Active", traits: {"smithy.api#enumValue" => "Active"}))
    State.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deleted", traits: {"smithy.api#enumValue" => "Deleted"}))
    Statistics.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Count"))
    Statistics.add_member(:count_distinct, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "CountDistinct"))
    Statistics.add_member(:count_null, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "CountNull"))
    Statistics.add_member(:count_nan, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "CountNan"))
    Statistics.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Min"))
    Statistics.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Max"))
    Statistics.add_member(:avg, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Avg"))
    Statistics.add_member(:stddev, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Stddev"))
    Statistics.add_member(:count_long, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CountLong"))
    Statistics.add_member(:count_distinct_long, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CountDistinctLong"))
    Statistics.add_member(:count_null_long, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CountNullLong"))
    Statistics.add_member(:count_nan_long, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CountNanLong"))
    Statistics.type = Types::Statistics
    StopResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    StopResourceRequest.type = Types::StopResourceRequest
    SupplementaryFeature.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#required" => {}}))
    SupplementaryFeature.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Value, name: "Value", traits: {"smithy.api#required" => {}}))
    SupplementaryFeature.type = Types::SupplementaryFeature
    SupplementaryFeatures.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SupplementaryFeature, name: "member")
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    TestWindowDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TestWindowSummary, name: "member")
    TestWindowSummary.add_member(:test_window_start, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "TestWindowStart"))
    TestWindowSummary.add_member(:test_window_end, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "TestWindowEnd"))
    TestWindowSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    TestWindowSummary.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    TestWindowSummary.type = Types::TestWindowSummary
    TestWindows.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WindowSummary, name: "member")
    TimeAlignmentBoundary.add_member(:month, ::Smithy::Schema::Shapes::MemberShape.new(target: Month, name: "Month"))
    TimeAlignmentBoundary.add_member(:day_of_month, ::Smithy::Schema::Shapes::MemberShape.new(target: DayOfMonth, name: "DayOfMonth"))
    TimeAlignmentBoundary.add_member(:day_of_week, ::Smithy::Schema::Shapes::MemberShape.new(target: DayOfWeek, name: "DayOfWeek"))
    TimeAlignmentBoundary.add_member(:hour, ::Smithy::Schema::Shapes::MemberShape.new(target: Hour, name: "Hour"))
    TimeAlignmentBoundary.type = Types::TimeAlignmentBoundary
    TimePointGranularity.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    TimePointGranularity.add_member(:specific, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPECIFIC", traits: {"smithy.api#enumValue" => "SPECIFIC"}))
    TimeSeriesCondition.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "AttributeName", traits: {"smithy.api#required" => {}}))
    TimeSeriesCondition.add_member(:attribute_value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "AttributeValue", traits: {"smithy.api#required" => {}}))
    TimeSeriesCondition.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: Condition, name: "Condition", traits: {"smithy.api#required" => {}}))
    TimeSeriesCondition.type = Types::TimeSeriesCondition
    TimeSeriesConditions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TimeSeriesCondition, name: "member")
    TimeSeriesGranularity.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    TimeSeriesGranularity.add_member(:specific, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPECIFIC", traits: {"smithy.api#enumValue" => "SPECIFIC"}))
    TimeSeriesIdentifiers.add_member(:data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSource, name: "DataSource"))
    TimeSeriesIdentifiers.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: Schema, name: "Schema"))
    TimeSeriesIdentifiers.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: Format, name: "Format"))
    TimeSeriesIdentifiers.type = Types::TimeSeriesIdentifiers
    TimeSeriesReplacementsDataSource.add_member(:s3_config, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Config, name: "S3Config", traits: {"smithy.api#required" => {}}))
    TimeSeriesReplacementsDataSource.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: Schema, name: "Schema", traits: {"smithy.api#required" => {}}))
    TimeSeriesReplacementsDataSource.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: Format, name: "Format"))
    TimeSeriesReplacementsDataSource.add_member(:timestamp_format, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "TimestampFormat"))
    TimeSeriesReplacementsDataSource.type = Types::TimeSeriesReplacementsDataSource
    TimeSeriesSelector.add_member(:time_series_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeSeriesIdentifiers, name: "TimeSeriesIdentifiers"))
    TimeSeriesSelector.type = Types::TimeSeriesSelector
    TimeSeriesTransformation.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "Action"))
    TimeSeriesTransformation.add_member(:time_series_conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeSeriesConditions, name: "TimeSeriesConditions"))
    TimeSeriesTransformation.type = Types::TimeSeriesTransformation
    TimeSeriesTransformations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TimeSeriesTransformation, name: "member")
    TrainingParameters.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterKey, name: "key")
    TrainingParameters.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValue, name: "value")
    Transformations.key = ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "key")
    Transformations.value = ::Smithy::Schema::Shapes::MemberShape.new(target: Value, name: "value")
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateDatasetGroupRequest.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DatasetGroupArn", traits: {"smithy.api#required" => {}}))
    UpdateDatasetGroupRequest.add_member(:dataset_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "DatasetArns", traits: {"smithy.api#required" => {}}))
    UpdateDatasetGroupRequest.type = Types::UpdateDatasetGroupRequest
    UpdateDatasetGroupResponse.type = Types::UpdateDatasetGroupResponse
    Values.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Value, name: "member")
    WeightedQuantileLoss.add_member(:quantile, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Quantile"))
    WeightedQuantileLoss.add_member(:loss_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "LossValue"))
    WeightedQuantileLoss.type = Types::WeightedQuantileLoss
    WeightedQuantileLosses.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WeightedQuantileLoss, name: "member")
    WhatIfAnalyses.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WhatIfAnalysisSummary, name: "member")
    WhatIfAnalysisSummary.add_member(:what_if_analysis_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "WhatIfAnalysisArn"))
    WhatIfAnalysisSummary.add_member(:what_if_analysis_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "WhatIfAnalysisName"))
    WhatIfAnalysisSummary.add_member(:forecast_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ForecastArn"))
    WhatIfAnalysisSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    WhatIfAnalysisSummary.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    WhatIfAnalysisSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    WhatIfAnalysisSummary.add_member(:last_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModificationTime"))
    WhatIfAnalysisSummary.type = Types::WhatIfAnalysisSummary
    WhatIfForecastArnListForExport.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LongArn, name: "member")
    WhatIfForecastExportSummary.add_member(:what_if_forecast_export_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongArn, name: "WhatIfForecastExportArn"))
    WhatIfForecastExportSummary.add_member(:what_if_forecast_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatIfForecastArnListForExport, name: "WhatIfForecastArns"))
    WhatIfForecastExportSummary.add_member(:what_if_forecast_export_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "WhatIfForecastExportName"))
    WhatIfForecastExportSummary.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: DataDestination, name: "Destination"))
    WhatIfForecastExportSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    WhatIfForecastExportSummary.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    WhatIfForecastExportSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    WhatIfForecastExportSummary.add_member(:last_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModificationTime"))
    WhatIfForecastExportSummary.type = Types::WhatIfForecastExportSummary
    WhatIfForecastExports.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WhatIfForecastExportSummary, name: "member")
    WhatIfForecastSummary.add_member(:what_if_forecast_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongArn, name: "WhatIfForecastArn"))
    WhatIfForecastSummary.add_member(:what_if_forecast_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "WhatIfForecastName"))
    WhatIfForecastSummary.add_member(:what_if_analysis_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "WhatIfAnalysisArn"))
    WhatIfForecastSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    WhatIfForecastSummary.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    WhatIfForecastSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    WhatIfForecastSummary.add_member(:last_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModificationTime"))
    WhatIfForecastSummary.type = Types::WhatIfForecastSummary
    WhatIfForecasts.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WhatIfForecastSummary, name: "member")
    WindowSummary.add_member(:test_window_start, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "TestWindowStart"))
    WindowSummary.add_member(:test_window_end, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "TestWindowEnd"))
    WindowSummary.add_member(:item_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ItemCount"))
    WindowSummary.add_member(:evaluation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationType, name: "EvaluationType"))
    WindowSummary.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: Metrics, name: "Metrics"))
    WindowSummary.type = Types::WindowSummary

    AmazonForecast = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.forecast#AmazonForecast"
      service.name = "AmazonForecast"
      service.version = "2018-06-26"
      service.traits = {"aws.api#service" => {"sdkId" => "forecast", "arnNamespace" => "forecast", "cloudFormationName" => "Forecast", "cloudTrailEventSource" => "forecast.amazonaws.com", "endpointPrefix" => "forecast"}, "aws.auth#sigv4" => {"name" => "forecast"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Forecast Service"}
      service.add_operation(:create_auto_predictor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#CreateAutoPredictor"
        operation.name = "CreateAutoPredictor"
        operation.input = CreateAutoPredictorRequest
        operation.output = CreateAutoPredictorResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#CreateDataset"
        operation.name = "CreateDataset"
        operation.input = CreateDatasetRequest
        operation.output = CreateDatasetResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.traits = {}
      end)
      service.add_operation(:create_dataset_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#CreateDatasetGroup"
        operation.name = "CreateDatasetGroup"
        operation.input = CreateDatasetGroupRequest
        operation.output = CreateDatasetGroupResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_dataset_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#CreateDatasetImportJob"
        operation.name = "CreateDatasetImportJob"
        operation.input = CreateDatasetImportJobRequest
        operation.output = CreateDatasetImportJobResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_explainability, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#CreateExplainability"
        operation.name = "CreateExplainability"
        operation.input = CreateExplainabilityRequest
        operation.output = CreateExplainabilityResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_explainability_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#CreateExplainabilityExport"
        operation.name = "CreateExplainabilityExport"
        operation.input = CreateExplainabilityExportRequest
        operation.output = CreateExplainabilityExportResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_forecast, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#CreateForecast"
        operation.name = "CreateForecast"
        operation.input = CreateForecastRequest
        operation.output = CreateForecastResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_forecast_export_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#CreateForecastExportJob"
        operation.name = "CreateForecastExportJob"
        operation.input = CreateForecastExportJobRequest
        operation.output = CreateForecastExportJobResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_monitor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#CreateMonitor"
        operation.name = "CreateMonitor"
        operation.input = CreateMonitorRequest
        operation.output = CreateMonitorResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_predictor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#CreatePredictor"
        operation.name = "CreatePredictor"
        operation.input = CreatePredictorRequest
        operation.output = CreatePredictorResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_predictor_backtest_export_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#CreatePredictorBacktestExportJob"
        operation.name = "CreatePredictorBacktestExportJob"
        operation.input = CreatePredictorBacktestExportJobRequest
        operation.output = CreatePredictorBacktestExportJobResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_what_if_analysis, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#CreateWhatIfAnalysis"
        operation.name = "CreateWhatIfAnalysis"
        operation.input = CreateWhatIfAnalysisRequest
        operation.output = CreateWhatIfAnalysisResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_what_if_forecast, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#CreateWhatIfForecast"
        operation.name = "CreateWhatIfForecast"
        operation.input = CreateWhatIfForecastRequest
        operation.output = CreateWhatIfForecastResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_what_if_forecast_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#CreateWhatIfForecastExport"
        operation.name = "CreateWhatIfForecastExport"
        operation.input = CreateWhatIfForecastExportRequest
        operation.output = CreateWhatIfForecastExportResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#DeleteDataset"
        operation.name = "DeleteDataset"
        operation.input = DeleteDatasetRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_dataset_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#DeleteDatasetGroup"
        operation.name = "DeleteDatasetGroup"
        operation.input = DeleteDatasetGroupRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_dataset_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#DeleteDatasetImportJob"
        operation.name = "DeleteDatasetImportJob"
        operation.input = DeleteDatasetImportJobRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_explainability, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#DeleteExplainability"
        operation.name = "DeleteExplainability"
        operation.input = DeleteExplainabilityRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_explainability_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#DeleteExplainabilityExport"
        operation.name = "DeleteExplainabilityExport"
        operation.input = DeleteExplainabilityExportRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_forecast, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#DeleteForecast"
        operation.name = "DeleteForecast"
        operation.input = DeleteForecastRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_forecast_export_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#DeleteForecastExportJob"
        operation.name = "DeleteForecastExportJob"
        operation.input = DeleteForecastExportJobRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_monitor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#DeleteMonitor"
        operation.name = "DeleteMonitor"
        operation.input = DeleteMonitorRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_predictor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#DeletePredictor"
        operation.name = "DeletePredictor"
        operation.input = DeletePredictorRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_predictor_backtest_export_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#DeletePredictorBacktestExportJob"
        operation.name = "DeletePredictorBacktestExportJob"
        operation.input = DeletePredictorBacktestExportJobRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_resource_tree, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#DeleteResourceTree"
        operation.name = "DeleteResourceTree"
        operation.input = DeleteResourceTreeRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_what_if_analysis, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#DeleteWhatIfAnalysis"
        operation.name = "DeleteWhatIfAnalysis"
        operation.input = DeleteWhatIfAnalysisRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_what_if_forecast, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#DeleteWhatIfForecast"
        operation.name = "DeleteWhatIfForecast"
        operation.input = DeleteWhatIfForecastRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_what_if_forecast_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#DeleteWhatIfForecastExport"
        operation.name = "DeleteWhatIfForecastExport"
        operation.input = DeleteWhatIfForecastExportRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_auto_predictor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#DescribeAutoPredictor"
        operation.name = "DescribeAutoPredictor"
        operation.input = DescribeAutoPredictorRequest
        operation.output = DescribeAutoPredictorResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#DescribeDataset"
        operation.name = "DescribeDataset"
        operation.input = DescribeDatasetRequest
        operation.output = DescribeDatasetResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_dataset_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#DescribeDatasetGroup"
        operation.name = "DescribeDatasetGroup"
        operation.input = DescribeDatasetGroupRequest
        operation.output = DescribeDatasetGroupResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_dataset_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#DescribeDatasetImportJob"
        operation.name = "DescribeDatasetImportJob"
        operation.input = DescribeDatasetImportJobRequest
        operation.output = DescribeDatasetImportJobResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_explainability, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#DescribeExplainability"
        operation.name = "DescribeExplainability"
        operation.input = DescribeExplainabilityRequest
        operation.output = DescribeExplainabilityResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_explainability_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#DescribeExplainabilityExport"
        operation.name = "DescribeExplainabilityExport"
        operation.input = DescribeExplainabilityExportRequest
        operation.output = DescribeExplainabilityExportResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_forecast, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#DescribeForecast"
        operation.name = "DescribeForecast"
        operation.input = DescribeForecastRequest
        operation.output = DescribeForecastResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_forecast_export_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#DescribeForecastExportJob"
        operation.name = "DescribeForecastExportJob"
        operation.input = DescribeForecastExportJobRequest
        operation.output = DescribeForecastExportJobResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_monitor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#DescribeMonitor"
        operation.name = "DescribeMonitor"
        operation.input = DescribeMonitorRequest
        operation.output = DescribeMonitorResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_predictor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#DescribePredictor"
        operation.name = "DescribePredictor"
        operation.input = DescribePredictorRequest
        operation.output = DescribePredictorResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_predictor_backtest_export_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#DescribePredictorBacktestExportJob"
        operation.name = "DescribePredictorBacktestExportJob"
        operation.input = DescribePredictorBacktestExportJobRequest
        operation.output = DescribePredictorBacktestExportJobResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_what_if_analysis, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#DescribeWhatIfAnalysis"
        operation.name = "DescribeWhatIfAnalysis"
        operation.input = DescribeWhatIfAnalysisRequest
        operation.output = DescribeWhatIfAnalysisResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_what_if_forecast, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#DescribeWhatIfForecast"
        operation.name = "DescribeWhatIfForecast"
        operation.input = DescribeWhatIfForecastRequest
        operation.output = DescribeWhatIfForecastResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_what_if_forecast_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#DescribeWhatIfForecastExport"
        operation.name = "DescribeWhatIfForecastExport"
        operation.input = DescribeWhatIfForecastExportRequest
        operation.output = DescribeWhatIfForecastExportResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_accuracy_metrics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#GetAccuracyMetrics"
        operation.name = "GetAccuracyMetrics"
        operation.input = GetAccuracyMetricsRequest
        operation.output = GetAccuracyMetricsResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:list_dataset_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#ListDatasetGroups"
        operation.name = "ListDatasetGroups"
        operation.input = ListDatasetGroupsRequest
        operation.output = ListDatasetGroupsResponse
        operation.errors << InvalidNextTokenException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListDatasetGroups.new
      end)
      service.add_operation(:list_dataset_import_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#ListDatasetImportJobs"
        operation.name = "ListDatasetImportJobs"
        operation.input = ListDatasetImportJobsRequest
        operation.output = ListDatasetImportJobsResponse
        operation.errors << InvalidInputException
        operation.errors << InvalidNextTokenException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListDatasetImportJobs.new
      end)
      service.add_operation(:list_datasets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#ListDatasets"
        operation.name = "ListDatasets"
        operation.input = ListDatasetsRequest
        operation.output = ListDatasetsResponse
        operation.errors << InvalidNextTokenException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListDatasets.new
      end)
      service.add_operation(:list_explainabilities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#ListExplainabilities"
        operation.name = "ListExplainabilities"
        operation.input = ListExplainabilitiesRequest
        operation.output = ListExplainabilitiesResponse
        operation.errors << InvalidInputException
        operation.errors << InvalidNextTokenException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListExplainabilities.new
      end)
      service.add_operation(:list_explainability_exports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#ListExplainabilityExports"
        operation.name = "ListExplainabilityExports"
        operation.input = ListExplainabilityExportsRequest
        operation.output = ListExplainabilityExportsResponse
        operation.errors << InvalidInputException
        operation.errors << InvalidNextTokenException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListExplainabilityExports.new
      end)
      service.add_operation(:list_forecast_export_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#ListForecastExportJobs"
        operation.name = "ListForecastExportJobs"
        operation.input = ListForecastExportJobsRequest
        operation.output = ListForecastExportJobsResponse
        operation.errors << InvalidInputException
        operation.errors << InvalidNextTokenException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListForecastExportJobs.new
      end)
      service.add_operation(:list_forecasts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#ListForecasts"
        operation.name = "ListForecasts"
        operation.input = ListForecastsRequest
        operation.output = ListForecastsResponse
        operation.errors << InvalidInputException
        operation.errors << InvalidNextTokenException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListForecasts.new
      end)
      service.add_operation(:list_monitor_evaluations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#ListMonitorEvaluations"
        operation.name = "ListMonitorEvaluations"
        operation.input = ListMonitorEvaluationsRequest
        operation.output = ListMonitorEvaluationsResponse
        operation.errors << InvalidInputException
        operation.errors << InvalidNextTokenException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListMonitorEvaluations.new
      end)
      service.add_operation(:list_monitors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#ListMonitors"
        operation.name = "ListMonitors"
        operation.input = ListMonitorsRequest
        operation.output = ListMonitorsResponse
        operation.errors << InvalidInputException
        operation.errors << InvalidNextTokenException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListMonitors.new
      end)
      service.add_operation(:list_predictor_backtest_export_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#ListPredictorBacktestExportJobs"
        operation.name = "ListPredictorBacktestExportJobs"
        operation.input = ListPredictorBacktestExportJobsRequest
        operation.output = ListPredictorBacktestExportJobsResponse
        operation.errors << InvalidInputException
        operation.errors << InvalidNextTokenException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListPredictorBacktestExportJobs.new
      end)
      service.add_operation(:list_predictors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#ListPredictors"
        operation.name = "ListPredictors"
        operation.input = ListPredictorsRequest
        operation.output = ListPredictorsResponse
        operation.errors << InvalidInputException
        operation.errors << InvalidNextTokenException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListPredictors.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_what_if_analyses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#ListWhatIfAnalyses"
        operation.name = "ListWhatIfAnalyses"
        operation.input = ListWhatIfAnalysesRequest
        operation.output = ListWhatIfAnalysesResponse
        operation.errors << InvalidInputException
        operation.errors << InvalidNextTokenException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListWhatIfAnalyses.new
      end)
      service.add_operation(:list_what_if_forecast_exports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#ListWhatIfForecastExports"
        operation.name = "ListWhatIfForecastExports"
        operation.input = ListWhatIfForecastExportsRequest
        operation.output = ListWhatIfForecastExportsResponse
        operation.errors << InvalidInputException
        operation.errors << InvalidNextTokenException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListWhatIfForecastExports.new
      end)
      service.add_operation(:list_what_if_forecasts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#ListWhatIfForecasts"
        operation.name = "ListWhatIfForecasts"
        operation.input = ListWhatIfForecastsRequest
        operation.output = ListWhatIfForecastsResponse
        operation.errors << InvalidInputException
        operation.errors << InvalidNextTokenException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListWhatIfForecasts.new
      end)
      service.add_operation(:resume_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#ResumeResource"
        operation.name = "ResumeResource"
        operation.input = ResumeResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#StopResource"
        operation.name = "StopResource"
        operation.input = StopResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_dataset_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecast#UpdateDatasetGroup"
        operation.name = "UpdateDatasetGroup"
        operation.input = UpdateDatasetGroupRequest
        operation.output = UpdateDatasetGroupResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
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
