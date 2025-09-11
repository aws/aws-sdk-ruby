# frozen_string_literal: true

# This is generated code!

module Aws::Evidently
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AppConfigResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#AppConfigResourceId', name: 'AppConfigResourceId', traits: {"smithy.api#pattern" => "[a-z0-9]{4,7}"})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "arn:[^:]*:[^:]*:[^:]*:[^:]*:.*"})
    BatchEvaluateFeatureInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#BatchEvaluateFeatureInput', name: 'BatchEvaluateFeatureInput')
    BatchEvaluateFeatureOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#BatchEvaluateFeatureOutput', name: 'BatchEvaluateFeatureOutput')
    ChangeDirectionEnum = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ChangeDirectionEnum', name: 'ChangeDirectionEnum', traits: {"smithy.api#enum" => [{"value" => "INCREASE", "name" => "INCREASE"}, {"value" => "DECREASE", "name" => "DECREASE"}]})
    CloudWatchLogsDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#CloudWatchLogsDestination', name: 'CloudWatchLogsDestination')
    CloudWatchLogsDestinationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#CloudWatchLogsDestinationConfig', name: 'CloudWatchLogsDestinationConfig')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateExperimentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#CreateExperimentInput', name: 'CreateExperimentInput')
    CreateExperimentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#CreateExperimentOutput', name: 'CreateExperimentOutput')
    CreateFeatureInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#CreateFeatureInput', name: 'CreateFeatureInput')
    CreateFeatureOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#CreateFeatureOutput', name: 'CreateFeatureOutput')
    CreateLaunchInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#CreateLaunchInput', name: 'CreateLaunchInput')
    CreateLaunchOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#CreateLaunchOutput', name: 'CreateLaunchOutput')
    CreateProjectInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#CreateProjectInput', name: 'CreateProjectInput')
    CreateProjectOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#CreateProjectOutput', name: 'CreateProjectOutput')
    CreateSegmentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#CreateSegmentInput', name: 'CreateSegmentInput')
    CreateSegmentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#CreateSegmentOutput', name: 'CreateSegmentOutput')
    CwDimensionSafeName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#CwDimensionSafeName', name: 'CwDimensionSafeName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\S]+$"})
    CwLogGroupSafeName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#CwLogGroupSafeName', name: 'CwLogGroupSafeName', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[-a-zA-Z0-9._/]+$"})
    DeleteExperimentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#DeleteExperimentInput', name: 'DeleteExperimentInput')
    DeleteExperimentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#DeleteExperimentOutput', name: 'DeleteExperimentOutput')
    DeleteFeatureInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#DeleteFeatureInput', name: 'DeleteFeatureInput')
    DeleteFeatureOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#DeleteFeatureOutput', name: 'DeleteFeatureOutput')
    DeleteLaunchInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#DeleteLaunchInput', name: 'DeleteLaunchInput')
    DeleteLaunchOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#DeleteLaunchOutput', name: 'DeleteLaunchOutput')
    DeleteProjectInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#DeleteProjectInput', name: 'DeleteProjectInput')
    DeleteProjectOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#DeleteProjectOutput', name: 'DeleteProjectOutput')
    DeleteSegmentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#DeleteSegmentInput', name: 'DeleteSegmentInput')
    DeleteSegmentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#DeleteSegmentOutput', name: 'DeleteSegmentOutput')
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 160}, "smithy.api#pattern" => ".*"})
    DoubleValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#DoubleValueList', name: 'DoubleValueList', traits: {"smithy.api#length" => {"max" => 100800}})
    EntityId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#EntityId', name: 'EntityId', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => ".*"})
    EntityOverrideMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.evidently#EntityOverrideMap', name: 'EntityOverrideMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 2500}})
    ErrorCodeEnum = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ErrorCodeEnum', name: 'ErrorCodeEnum', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ErrorMessage', name: 'ErrorMessage', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => ".*"})
    EvaluateFeatureInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#EvaluateFeatureInput', name: 'EvaluateFeatureInput')
    EvaluateFeatureOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#EvaluateFeatureOutput', name: 'EvaluateFeatureOutput')
    EvaluationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#EvaluationRequest', name: 'EvaluationRequest')
    EvaluationRequestsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#EvaluationRequestsList', name: 'EvaluationRequestsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    EvaluationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#EvaluationResult', name: 'EvaluationResult')
    EvaluationResultsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#EvaluationResultsList', name: 'EvaluationResultsList')
    EvaluationRule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#EvaluationRule', name: 'EvaluationRule')
    EvaluationRulesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#EvaluationRulesList', name: 'EvaluationRulesList')
    Event = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#Event', name: 'Event')
    EventList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#EventList', name: 'EventList', traits: {"smithy.api#length" => {"max" => 50}})
    EventType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#EventType', name: 'EventType', traits: {"smithy.api#enum" => [{"value" => "aws.evidently.evaluation", "name" => "EVALUATION"}, {"value" => "aws.evidently.custom", "name" => "CUSTOM"}]})
    Experiment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#Experiment', name: 'Experiment')
    ExperimentArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ExperimentArn', name: 'ExperimentArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "arn:[^:]*:[^:]*:[^:]*:[^:]*:project/[-a-zA-Z0-9._]*/experiment/[-a-zA-Z0-9._]*"})
    ExperimentBaseStat = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ExperimentBaseStat', name: 'ExperimentBaseStat', traits: {"smithy.api#enum" => [{"value" => "Mean", "name" => "MEAN"}]})
    ExperimentExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ExperimentExecution', name: 'ExperimentExecution')
    ExperimentList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#ExperimentList', name: 'ExperimentList')
    ExperimentName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ExperimentName', name: 'ExperimentName', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[-a-zA-Z0-9._]*$"})
    ExperimentReport = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ExperimentReport', name: 'ExperimentReport')
    ExperimentReportList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#ExperimentReportList', name: 'ExperimentReportList', traits: {"smithy.api#length" => {"max" => 1000}})
    ExperimentReportName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ExperimentReportName', name: 'ExperimentReportName', traits: {"smithy.api#enum" => [{"value" => "BayesianInference", "name" => "BAYESIAN_INFERENCE"}]})
    ExperimentReportNameList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#ExperimentReportNameList', name: 'ExperimentReportNameList', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    ExperimentResultRequestType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ExperimentResultRequestType', name: 'ExperimentResultRequestType', traits: {"smithy.api#enum" => [{"value" => "BaseStat", "name" => "BASE_STAT"}, {"value" => "TreatmentEffect", "name" => "TREATMENT_EFFECT"}, {"value" => "ConfidenceInterval", "name" => "CONFIDENCE_INTERVAL"}, {"value" => "PValue", "name" => "P_VALUE"}]})
    ExperimentResultRequestTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#ExperimentResultRequestTypeList', name: 'ExperimentResultRequestTypeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    ExperimentResultResponseType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ExperimentResultResponseType', name: 'ExperimentResultResponseType', traits: {"smithy.api#enum" => [{"value" => "Mean", "name" => "MEAN"}, {"value" => "TreatmentEffect", "name" => "TREATMENT_EFFECT"}, {"value" => "ConfidenceIntervalUpperBound", "name" => "CONFIDENCE_INTERVAL_UPPERBOUND"}, {"value" => "ConfidenceIntervalLowerBound", "name" => "CONFIDENCE_INTERVAL_LOWERBOUND"}, {"value" => "PValue", "name" => "P_VALUE"}]})
    ExperimentResultsData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ExperimentResultsData', name: 'ExperimentResultsData')
    ExperimentResultsDataList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#ExperimentResultsDataList', name: 'ExperimentResultsDataList', traits: {"smithy.api#length" => {"max" => 1000}})
    ExperimentSchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ExperimentSchedule', name: 'ExperimentSchedule')
    ExperimentStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ExperimentStatus', name: 'ExperimentStatus', traits: {"smithy.api#enum" => [{"value" => "CREATED", "name" => "CREATED"}, {"value" => "UPDATING", "name" => "UPDATING"}, {"value" => "RUNNING", "name" => "RUNNING"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "CANCELLED", "name" => "CANCELLED"}]})
    ExperimentStopDesiredState = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ExperimentStopDesiredState', name: 'ExperimentStopDesiredState', traits: {"smithy.api#enum" => [{"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "CANCELLED", "name" => "CANCELLED"}]})
    ExperimentType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ExperimentType', name: 'ExperimentType', traits: {"smithy.api#enum" => [{"value" => "aws.evidently.onlineab", "name" => "ONLINE_AB_EXPERIMENT"}]})
    Feature = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#Feature', name: 'Feature')
    FeatureArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#FeatureArn', name: 'FeatureArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "arn:[^:]*:[^:]*:[^:]*:[^:]*:project/[-a-zA-Z0-9._]*/feature/[-a-zA-Z0-9._]*"})
    FeatureEvaluationStrategy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#FeatureEvaluationStrategy', name: 'FeatureEvaluationStrategy', traits: {"smithy.api#enum" => [{"value" => "ALL_RULES", "name" => "ALL_RULES"}, {"value" => "DEFAULT_VARIATION", "name" => "DEFAULT_VARIATION"}]})
    FeatureName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#FeatureName', name: 'FeatureName', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[-a-zA-Z0-9._]*$"})
    FeatureStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#FeatureStatus', name: 'FeatureStatus', traits: {"smithy.api#enum" => [{"value" => "AVAILABLE", "name" => "AVAILABLE"}, {"value" => "UPDATING", "name" => "UPDATING"}]})
    FeatureSummariesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#FeatureSummariesList', name: 'FeatureSummariesList')
    FeatureSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#FeatureSummary', name: 'FeatureSummary')
    FeatureToVariationMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.evidently#FeatureToVariationMap', name: 'FeatureToVariationMap')
    GetExperimentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#GetExperimentInput', name: 'GetExperimentInput')
    GetExperimentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#GetExperimentOutput', name: 'GetExperimentOutput')
    GetExperimentResultsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#GetExperimentResultsInput', name: 'GetExperimentResultsInput')
    GetExperimentResultsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#GetExperimentResultsOutput', name: 'GetExperimentResultsOutput')
    GetFeatureInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#GetFeatureInput', name: 'GetFeatureInput')
    GetFeatureOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#GetFeatureOutput', name: 'GetFeatureOutput')
    GetLaunchInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#GetLaunchInput', name: 'GetLaunchInput')
    GetLaunchOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#GetLaunchOutput', name: 'GetLaunchOutput')
    GetProjectInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#GetProjectInput', name: 'GetProjectInput')
    GetProjectOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#GetProjectOutput', name: 'GetProjectOutput')
    GetSegmentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#GetSegmentInput', name: 'GetSegmentInput')
    GetSegmentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#GetSegmentOutput', name: 'GetSegmentOutput')
    GroupName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#GroupName', name: 'GroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[-a-zA-Z0-9._]*$"})
    GroupToWeightMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.evidently#GroupToWeightMap', name: 'GroupToWeightMap', traits: {"smithy.api#length" => {"max" => 5}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    JsonPath = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#JsonPath', name: 'JsonPath', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => ".*"})
    JsonValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#JsonValue', name: 'JsonValue', traits: {"smithy.api#mediaType" => "application/json"})
    Launch = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#Launch', name: 'Launch')
    LaunchArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#LaunchArn', name: 'LaunchArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "arn:[^:]*:[^:]*:[^:]*:[^:]*:project/[-a-zA-Z0-9._]*/launch/[-a-zA-Z0-9._]*"})
    LaunchExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#LaunchExecution', name: 'LaunchExecution')
    LaunchGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#LaunchGroup', name: 'LaunchGroup')
    LaunchGroupConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#LaunchGroupConfig', name: 'LaunchGroupConfig')
    LaunchGroupConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#LaunchGroupConfigList', name: 'LaunchGroupConfigList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    LaunchGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#LaunchGroupList', name: 'LaunchGroupList')
    LaunchName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#LaunchName', name: 'LaunchName', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[-a-zA-Z0-9._]*$"})
    LaunchStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#LaunchStatus', name: 'LaunchStatus', traits: {"smithy.api#enum" => [{"value" => "CREATED", "name" => "CREATED"}, {"value" => "UPDATING", "name" => "UPDATING"}, {"value" => "RUNNING", "name" => "RUNNING"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "CANCELLED", "name" => "CANCELLED"}]})
    LaunchStopDesiredState = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#LaunchStopDesiredState', name: 'LaunchStopDesiredState', traits: {"smithy.api#enum" => [{"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "CANCELLED", "name" => "CANCELLED"}]})
    LaunchType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#LaunchType', name: 'LaunchType', traits: {"smithy.api#enum" => [{"value" => "aws.evidently.splits", "name" => "SCHEDULED_SPLITS_LAUNCH"}]})
    LaunchesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#LaunchesList', name: 'LaunchesList')
    ListExperimentsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ListExperimentsInput', name: 'ListExperimentsInput')
    ListExperimentsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ListExperimentsOutput', name: 'ListExperimentsOutput')
    ListFeaturesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ListFeaturesInput', name: 'ListFeaturesInput')
    ListFeaturesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ListFeaturesOutput', name: 'ListFeaturesOutput')
    ListLaunchesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ListLaunchesInput', name: 'ListLaunchesInput')
    ListLaunchesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ListLaunchesOutput', name: 'ListLaunchesOutput')
    ListProjectsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ListProjectsInput', name: 'ListProjectsInput')
    ListProjectsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ListProjectsOutput', name: 'ListProjectsOutput')
    ListSegmentReferencesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ListSegmentReferencesInput', name: 'ListSegmentReferencesInput')
    ListSegmentReferencesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ListSegmentReferencesOutput', name: 'ListSegmentReferencesOutput')
    ListSegmentsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ListSegmentsInput', name: 'ListSegmentsInput')
    ListSegmentsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ListSegmentsOutput', name: 'ListSegmentsOutput')
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    MaxExperiments = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.evidently#MaxExperiments', name: 'MaxExperiments', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxFeatures = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.evidently#MaxFeatures', name: 'MaxFeatures', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxLaunches = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.evidently#MaxLaunches', name: 'MaxLaunches', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxProjects = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.evidently#MaxProjects', name: 'MaxProjects', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxReferences = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.evidently#MaxReferences', name: 'MaxReferences', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxSegments = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.evidently#MaxSegments', name: 'MaxSegments', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MetricDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#MetricDefinition', name: 'MetricDefinition')
    MetricDefinitionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#MetricDefinitionConfig', name: 'MetricDefinitionConfig')
    MetricGoal = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#MetricGoal', name: 'MetricGoal')
    MetricGoalConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#MetricGoalConfig', name: 'MetricGoalConfig')
    MetricGoalConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#MetricGoalConfigList', name: 'MetricGoalConfigList', traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    MetricGoalsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#MetricGoalsList', name: 'MetricGoalsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    MetricMonitor = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#MetricMonitor', name: 'MetricMonitor')
    MetricMonitorConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#MetricMonitorConfig', name: 'MetricMonitorConfig')
    MetricMonitorConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#MetricMonitorConfigList', name: 'MetricMonitorConfigList', traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    MetricMonitorList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#MetricMonitorList', name: 'MetricMonitorList', traits: {"smithy.api#length" => {"max" => 3}})
    MetricNameList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#MetricNameList', name: 'MetricNameList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    MetricUnitLabel = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#MetricUnitLabel', name: 'MetricUnitLabel', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => ".*"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}, "smithy.api#pattern" => ".*"})
    OnlineAbConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#OnlineAbConfig', name: 'OnlineAbConfig')
    OnlineAbDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#OnlineAbDefinition', name: 'OnlineAbDefinition')
    Project = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#Project', name: 'Project')
    ProjectAppConfigResource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ProjectAppConfigResource', name: 'ProjectAppConfigResource')
    ProjectAppConfigResourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ProjectAppConfigResourceConfig', name: 'ProjectAppConfigResourceConfig')
    ProjectArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ProjectArn', name: 'ProjectArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "arn:[^:]*:[^:]*:[^:]*:[^:]*:project/[-a-zA-Z0-9._]*"})
    ProjectDataDelivery = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ProjectDataDelivery', name: 'ProjectDataDelivery')
    ProjectDataDeliveryConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ProjectDataDeliveryConfig', name: 'ProjectDataDeliveryConfig')
    ProjectName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ProjectName', name: 'ProjectName', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[-a-zA-Z0-9._]*$"})
    ProjectRef = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ProjectRef', name: 'ProjectRef', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "(^[a-zA-Z0-9._-]*$)|(arn:[^:]*:[^:]*:[^:]*:[^:]*:project/[a-zA-Z0-9._-]*)"})
    ProjectStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ProjectStatus', name: 'ProjectStatus', traits: {"smithy.api#enum" => [{"value" => "AVAILABLE", "name" => "AVAILABLE"}, {"value" => "UPDATING", "name" => "UPDATING"}]})
    ProjectSummariesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#ProjectSummariesList', name: 'ProjectSummariesList')
    ProjectSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ProjectSummary', name: 'ProjectSummary')
    PutProjectEventsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#PutProjectEventsInput', name: 'PutProjectEventsInput')
    PutProjectEventsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#PutProjectEventsOutput', name: 'PutProjectEventsOutput')
    PutProjectEventsResultEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#PutProjectEventsResultEntry', name: 'PutProjectEventsResultEntry')
    PutProjectEventsResultEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#PutProjectEventsResultEntryList', name: 'PutProjectEventsResultEntryList')
    RandomizationSalt = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#RandomizationSalt', name: 'RandomizationSalt', traits: {"smithy.api#length" => {"min" => 0, "max" => 127}, "smithy.api#pattern" => ".*"})
    RefResource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#RefResource', name: 'RefResource')
    RefResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#RefResourceList', name: 'RefResourceList')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResultsPeriod = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.evidently#ResultsPeriod', name: 'ResultsPeriod', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 300, "max" => 90000}})
    RuleName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#RuleName', name: 'RuleName', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    RuleType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#RuleType', name: 'RuleType', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    S3BucketSafeName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#S3BucketSafeName', name: 'S3BucketSafeName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9][-a-z0-9]*[a-z0-9]$"})
    S3Destination = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#S3Destination', name: 'S3Destination')
    S3DestinationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#S3DestinationConfig', name: 'S3DestinationConfig')
    S3PrefixSafeName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#S3PrefixSafeName', name: 'S3PrefixSafeName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[-a-zA-Z0-9!_.*'()/]*$"})
    ScheduledSplit = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ScheduledSplit', name: 'ScheduledSplit')
    ScheduledSplitConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ScheduledSplitConfig', name: 'ScheduledSplitConfig')
    ScheduledSplitConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#ScheduledSplitConfigList', name: 'ScheduledSplitConfigList', traits: {"smithy.api#length" => {"min" => 1, "max" => 6}})
    ScheduledSplitsLaunchConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ScheduledSplitsLaunchConfig', name: 'ScheduledSplitsLaunchConfig')
    ScheduledSplitsLaunchDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ScheduledSplitsLaunchDefinition', name: 'ScheduledSplitsLaunchDefinition')
    ScheduledStepList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#ScheduledStepList', name: 'ScheduledStepList', traits: {"smithy.api#length" => {"min" => 1, "max" => 6}})
    Segment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#Segment', name: 'Segment')
    SegmentArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#SegmentArn', name: 'SegmentArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "arn:[^:]*:[^:]*:[^:]*:[^:]*:segment/[-a-zA-Z0-9._]*"})
    SegmentList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#SegmentList', name: 'SegmentList')
    SegmentName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#SegmentName', name: 'SegmentName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[-a-zA-Z0-9._]*$"})
    SegmentOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#SegmentOverride', name: 'SegmentOverride')
    SegmentOverridesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#SegmentOverridesList', name: 'SegmentOverridesList', traits: {"smithy.api#length" => {"min" => 0, "max" => 6}})
    SegmentPattern = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#SegmentPattern', name: 'SegmentPattern', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#mediaType" => "application/json"})
    SegmentRef = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#SegmentRef', name: 'SegmentRef', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "(^[-a-zA-Z0-9._]*$)|(arn:[^:]*:[^:]*:[^:]*:[^:]*:segment/[-a-zA-Z0-9._]*)"})
    SegmentReferenceResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#SegmentReferenceResourceType', name: 'SegmentReferenceResourceType', traits: {"smithy.api#enum" => [{"value" => "EXPERIMENT", "name" => "EXPERIMENT"}, {"value" => "LAUNCH", "name" => "LAUNCH"}]})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SplitWeight = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.evidently#SplitWeight', name: 'SplitWeight', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100000}})
    StartExperimentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#StartExperimentInput', name: 'StartExperimentInput')
    StartExperimentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#StartExperimentOutput', name: 'StartExperimentOutput')
    StartLaunchInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#StartLaunchInput', name: 'StartLaunchInput')
    StartLaunchOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#StartLaunchOutput', name: 'StartLaunchOutput')
    StopExperimentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#StopExperimentInput', name: 'StopExperimentInput')
    StopExperimentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#StopExperimentOutput', name: 'StopExperimentOutput')
    StopLaunchInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#StopLaunchInput', name: 'StopLaunchInput')
    StopLaunchOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#StopLaunchOutput', name: 'StopLaunchOutput')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.evidently#TagMap', name: 'TagMap')
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TestSegmentPatternInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#TestSegmentPatternInput', name: 'TestSegmentPatternInput')
    TestSegmentPatternOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#TestSegmentPatternOutput', name: 'TestSegmentPatternOutput')
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimestampList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#TimestampList', name: 'TimestampList', traits: {"smithy.api#length" => {"max" => 100800}})
    Treatment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#Treatment', name: 'Treatment')
    TreatmentConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#TreatmentConfig', name: 'TreatmentConfig')
    TreatmentConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#TreatmentConfigList', name: 'TreatmentConfigList', traits: {"smithy.api#length" => {"max" => 5}})
    TreatmentList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#TreatmentList', name: 'TreatmentList', traits: {"smithy.api#length" => {"min" => 2, "max" => 5}})
    TreatmentName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#TreatmentName', name: 'TreatmentName', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[-a-zA-Z0-9._]*$"})
    TreatmentNameList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#TreatmentNameList', name: 'TreatmentNameList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    TreatmentToWeightMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.evidently#TreatmentToWeightMap', name: 'TreatmentToWeightMap')
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateExperimentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#UpdateExperimentInput', name: 'UpdateExperimentInput')
    UpdateExperimentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#UpdateExperimentOutput', name: 'UpdateExperimentOutput')
    UpdateFeatureInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#UpdateFeatureInput', name: 'UpdateFeatureInput')
    UpdateFeatureOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#UpdateFeatureOutput', name: 'UpdateFeatureOutput')
    UpdateLaunchInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#UpdateLaunchInput', name: 'UpdateLaunchInput')
    UpdateLaunchOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#UpdateLaunchOutput', name: 'UpdateLaunchOutput')
    UpdateProjectDataDeliveryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#UpdateProjectDataDeliveryInput', name: 'UpdateProjectDataDeliveryInput')
    UpdateProjectDataDeliveryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#UpdateProjectDataDeliveryOutput', name: 'UpdateProjectDataDeliveryOutput')
    UpdateProjectInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#UpdateProjectInput', name: 'UpdateProjectInput')
    UpdateProjectOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#UpdateProjectOutput', name: 'UpdateProjectOutput')
    Uuid = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#Uuid', name: 'Uuid', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ValidationExceptionReason', name: 'ValidationExceptionReason', traits: {"smithy.api#enum" => [{"value" => "unknownOperation", "name" => "UNKNOWN_OPERATION"}, {"value" => "cannotParse", "name" => "CANNOT_PARSE"}, {"value" => "fieldValidationFailed", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "other", "name" => "OTHER"}]})
    VariableValue = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.evidently#VariableValue', name: 'VariableValue')
    Variation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#Variation', name: 'Variation')
    VariationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#VariationConfig', name: 'VariationConfig')
    VariationConfigsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#VariationConfigsList', name: 'VariationConfigsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    VariationName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#VariationName', name: 'VariationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[-a-zA-Z0-9._]*$"})
    VariationNameList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#VariationNameList', name: 'VariationNameList', traits: {"smithy.api#length" => {"max" => 5}})
    VariationValueType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#VariationValueType', name: 'VariationValueType', traits: {"smithy.api#enum" => [{"value" => "STRING", "name" => "STRING"}, {"value" => "LONG", "name" => "LONG"}, {"value" => "DOUBLE", "name" => "DOUBLE"}, {"value" => "BOOLEAN", "name" => "BOOLEAN"}]})
    VariationsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#VariationsList', name: 'VariationsList')

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    BatchEvaluateFeatureInput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchEvaluateFeatureInput.add_member(:requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationRequestsList, location_name: 'requests', traits: {"smithy.api#required" => {}}))
    BatchEvaluateFeatureInput.type = Types::BatchEvaluateFeatureInput
    BatchEvaluateFeatureOutput.add_member(:results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationResultsList, location_name: 'results'))
    BatchEvaluateFeatureOutput.type = Types::BatchEvaluateFeatureOutput
    CloudWatchLogsDestination.add_member(:log_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CwLogGroupSafeName, location_name: 'logGroup'))
    CloudWatchLogsDestination.type = Types::CloudWatchLogsDestination
    CloudWatchLogsDestinationConfig.add_member(:log_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CwLogGroupSafeName, location_name: 'logGroup'))
    CloudWatchLogsDestinationConfig.type = Types::CloudWatchLogsDestinationConfig
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId'))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType'))
    ConflictException.type = Types::ConflictException
    CreateExperimentInput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateExperimentInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateExperimentInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateExperimentInput.add_member(:treatments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentConfigList, location_name: 'treatments', traits: {"smithy.api#required" => {}}))
    CreateExperimentInput.add_member(:metric_goals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricGoalConfigList, location_name: 'metricGoals', traits: {"smithy.api#required" => {}}))
    CreateExperimentInput.add_member(:randomization_salt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RandomizationSalt, location_name: 'randomizationSalt'))
    CreateExperimentInput.add_member(:sampling_rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SplitWeight, location_name: 'samplingRate', traits: {"smithy.api#default" => nil}))
    CreateExperimentInput.add_member(:online_ab_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnlineAbConfig, location_name: 'onlineAbConfig'))
    CreateExperimentInput.add_member(:segment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentRef, location_name: 'segment'))
    CreateExperimentInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateExperimentInput.type = Types::CreateExperimentInput
    CreateExperimentOutput.add_member(:experiment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Experiment, location_name: 'experiment', traits: {"smithy.api#required" => {}}))
    CreateExperimentOutput.type = Types::CreateExperimentOutput
    CreateFeatureInput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateFeatureInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateFeatureInput.add_member(:evaluation_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureEvaluationStrategy, location_name: 'evaluationStrategy'))
    CreateFeatureInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateFeatureInput.add_member(:variations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariationConfigsList, location_name: 'variations', traits: {"smithy.api#required" => {}}))
    CreateFeatureInput.add_member(:default_variation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariationName, location_name: 'defaultVariation'))
    CreateFeatureInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateFeatureInput.add_member(:entity_overrides, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityOverrideMap, location_name: 'entityOverrides'))
    CreateFeatureInput.type = Types::CreateFeatureInput
    CreateFeatureOutput.add_member(:feature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Feature, location_name: 'feature'))
    CreateFeatureOutput.type = Types::CreateFeatureOutput
    CreateLaunchInput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateLaunchInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateLaunchInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateLaunchInput.add_member(:scheduled_splits_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledSplitsLaunchConfig, location_name: 'scheduledSplitsConfig'))
    CreateLaunchInput.add_member(:metric_monitors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricMonitorConfigList, location_name: 'metricMonitors'))
    CreateLaunchInput.add_member(:groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchGroupConfigList, location_name: 'groups', traits: {"smithy.api#required" => {}}))
    CreateLaunchInput.add_member(:randomization_salt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RandomizationSalt, location_name: 'randomizationSalt'))
    CreateLaunchInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateLaunchInput.type = Types::CreateLaunchInput
    CreateLaunchOutput.add_member(:launch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Launch, location_name: 'launch', traits: {"smithy.api#required" => {}}))
    CreateLaunchOutput.type = Types::CreateLaunchOutput
    CreateProjectInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateProjectInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateProjectInput.add_member(:data_delivery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectDataDeliveryConfig, location_name: 'dataDelivery'))
    CreateProjectInput.add_member(:app_config_resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectAppConfigResourceConfig, location_name: 'appConfigResource'))
    CreateProjectInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateProjectInput.type = Types::CreateProjectInput
    CreateProjectOutput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Project, location_name: 'project', traits: {"smithy.api#required" => {}}))
    CreateProjectOutput.type = Types::CreateProjectOutput
    CreateSegmentInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateSegmentInput.add_member(:pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentPattern, location_name: 'pattern', traits: {"smithy.api#required" => {}}))
    CreateSegmentInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateSegmentInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateSegmentInput.type = Types::CreateSegmentInput
    CreateSegmentOutput.add_member(:segment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Segment, location_name: 'segment', traits: {"smithy.api#required" => {}}))
    CreateSegmentOutput.type = Types::CreateSegmentOutput
    DeleteExperimentInput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteExperimentInput.add_member(:experiment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentName, location_name: 'experiment', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteExperimentInput.type = Types::DeleteExperimentInput
    DeleteExperimentOutput.type = Types::DeleteExperimentOutput
    DeleteFeatureInput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFeatureInput.add_member(:feature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureName, location_name: 'feature', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFeatureInput.type = Types::DeleteFeatureInput
    DeleteFeatureOutput.type = Types::DeleteFeatureOutput
    DeleteLaunchInput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLaunchInput.add_member(:launch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchName, location_name: 'launch', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLaunchInput.type = Types::DeleteLaunchInput
    DeleteLaunchOutput.type = Types::DeleteLaunchOutput
    DeleteProjectInput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProjectInput.type = Types::DeleteProjectInput
    DeleteProjectOutput.type = Types::DeleteProjectOutput
    DeleteSegmentInput.add_member(:segment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentRef, location_name: 'segment', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSegmentInput.type = Types::DeleteSegmentInput
    DeleteSegmentOutput.type = Types::DeleteSegmentOutput
    DoubleValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double)
    EntityOverrideMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId)
    EntityOverrideMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariationName)
    EvaluateFeatureInput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    EvaluateFeatureInput.add_member(:feature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureName, location_name: 'feature', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    EvaluateFeatureInput.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'entityId', traits: {"smithy.api#required" => {}}))
    EvaluateFeatureInput.add_member(:evaluation_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JsonValue, location_name: 'evaluationContext'))
    EvaluateFeatureInput.type = Types::EvaluateFeatureInput
    EvaluateFeatureOutput.add_member(:variation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'variation'))
    EvaluateFeatureOutput.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariableValue, location_name: 'value'))
    EvaluateFeatureOutput.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'reason'))
    EvaluateFeatureOutput.add_member(:details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JsonValue, location_name: 'details'))
    EvaluateFeatureOutput.type = Types::EvaluateFeatureOutput
    EvaluationRequest.add_member(:feature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureName, location_name: 'feature', traits: {"smithy.api#required" => {}}))
    EvaluationRequest.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'entityId', traits: {"smithy.api#required" => {}}))
    EvaluationRequest.add_member(:evaluation_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JsonValue, location_name: 'evaluationContext'))
    EvaluationRequest.type = Types::EvaluationRequest
    EvaluationRequestsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationRequest)
    EvaluationResult.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'project'))
    EvaluationResult.add_member(:feature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureName, location_name: 'feature', traits: {"smithy.api#required" => {}}))
    EvaluationResult.add_member(:variation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'variation'))
    EvaluationResult.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariableValue, location_name: 'value'))
    EvaluationResult.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'entityId', traits: {"smithy.api#required" => {}}))
    EvaluationResult.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'reason'))
    EvaluationResult.add_member(:details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JsonValue, location_name: 'details'))
    EvaluationResult.type = Types::EvaluationResult
    EvaluationResultsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationResult)
    EvaluationRule.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'name'))
    EvaluationRule.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    EvaluationRule.type = Types::EvaluationRule
    EvaluationRulesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationRule)
    Event.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'timestamp', traits: {"smithy.api#required" => {}}))
    Event.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    Event.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JsonValue, location_name: 'data', traits: {"smithy.api#required" => {}}))
    Event.type = Types::Event
    EventList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Event)
    Experiment.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    Experiment.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    Experiment.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: 'project'))
    Experiment.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    Experiment.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'statusReason'))
    Experiment.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    Experiment.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#required" => {}}))
    Experiment.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#required" => {}}))
    Experiment.add_member(:schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentSchedule, location_name: 'schedule'))
    Experiment.add_member(:execution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentExecution, location_name: 'execution'))
    Experiment.add_member(:treatments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentList, location_name: 'treatments'))
    Experiment.add_member(:metric_goals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricGoalsList, location_name: 'metricGoals'))
    Experiment.add_member(:randomization_salt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RandomizationSalt, location_name: 'randomizationSalt'))
    Experiment.add_member(:sampling_rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SplitWeight, location_name: 'samplingRate', traits: {"smithy.api#default" => 0}))
    Experiment.add_member(:segment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentArn, location_name: 'segment'))
    Experiment.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    Experiment.add_member(:online_ab_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnlineAbDefinition, location_name: 'onlineAbDefinition'))
    Experiment.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    Experiment.type = Types::Experiment
    ExperimentExecution.add_member(:started_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startedTime'))
    ExperimentExecution.add_member(:ended_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endedTime'))
    ExperimentExecution.type = Types::ExperimentExecution
    ExperimentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Experiment)
    ExperimentReport.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CwDimensionSafeName, location_name: 'metricName'))
    ExperimentReport.add_member(:treatment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentName, location_name: 'treatmentName'))
    ExperimentReport.add_member(:report_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentReportName, location_name: 'reportName'))
    ExperimentReport.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JsonValue, location_name: 'content'))
    ExperimentReport.type = Types::ExperimentReport
    ExperimentReportList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentReport)
    ExperimentReportNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentReportName)
    ExperimentResultRequestTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentResultRequestType)
    ExperimentResultsData.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CwDimensionSafeName, location_name: 'metricName'))
    ExperimentResultsData.add_member(:treatment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentName, location_name: 'treatmentName'))
    ExperimentResultsData.add_member(:result_stat, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentResultResponseType, location_name: 'resultStat'))
    ExperimentResultsData.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleValueList, location_name: 'values'))
    ExperimentResultsData.type = Types::ExperimentResultsData
    ExperimentResultsDataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentResultsData)
    ExperimentSchedule.add_member(:analysis_complete_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'analysisCompleteTime'))
    ExperimentSchedule.type = Types::ExperimentSchedule
    Feature.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    Feature.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    Feature.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: 'project'))
    Feature.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    Feature.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#required" => {}}))
    Feature.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#required" => {}}))
    Feature.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    Feature.add_member(:evaluation_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureEvaluationStrategy, location_name: 'evaluationStrategy', traits: {"smithy.api#required" => {}}))
    Feature.add_member(:value_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariationValueType, location_name: 'valueType', traits: {"smithy.api#required" => {}}))
    Feature.add_member(:variations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariationsList, location_name: 'variations', traits: {"smithy.api#required" => {}}))
    Feature.add_member(:default_variation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariationName, location_name: 'defaultVariation'))
    Feature.add_member(:evaluation_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationRulesList, location_name: 'evaluationRules'))
    Feature.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    Feature.add_member(:entity_overrides, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityOverrideMap, location_name: 'entityOverrides'))
    Feature.type = Types::Feature
    FeatureSummariesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureSummary)
    FeatureSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    FeatureSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    FeatureSummary.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project'))
    FeatureSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    FeatureSummary.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#required" => {}}))
    FeatureSummary.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#required" => {}}))
    FeatureSummary.add_member(:evaluation_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureEvaluationStrategy, location_name: 'evaluationStrategy', traits: {"smithy.api#required" => {}}))
    FeatureSummary.add_member(:evaluation_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationRulesList, location_name: 'evaluationRules'))
    FeatureSummary.add_member(:default_variation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariationName, location_name: 'defaultVariation'))
    FeatureSummary.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    FeatureSummary.type = Types::FeatureSummary
    FeatureToVariationMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureName)
    FeatureToVariationMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariationName)
    GetExperimentInput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExperimentInput.add_member(:experiment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentName, location_name: 'experiment', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExperimentInput.type = Types::GetExperimentInput
    GetExperimentOutput.add_member(:experiment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Experiment, location_name: 'experiment'))
    GetExperimentOutput.type = Types::GetExperimentOutput
    GetExperimentResultsInput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExperimentResultsInput.add_member(:experiment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentName, location_name: 'experiment', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExperimentResultsInput.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime'))
    GetExperimentResultsInput.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endTime'))
    GetExperimentResultsInput.add_member(:metric_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricNameList, location_name: 'metricNames', traits: {"smithy.api#required" => {}}))
    GetExperimentResultsInput.add_member(:treatment_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentNameList, location_name: 'treatmentNames', traits: {"smithy.api#required" => {}}))
    GetExperimentResultsInput.add_member(:base_stat, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentBaseStat, location_name: 'baseStat'))
    GetExperimentResultsInput.add_member(:result_stats, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentResultRequestTypeList, location_name: 'resultStats'))
    GetExperimentResultsInput.add_member(:report_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentReportNameList, location_name: 'reportNames'))
    GetExperimentResultsInput.add_member(:period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultsPeriod, location_name: 'period', traits: {"smithy.api#default" => 0}))
    GetExperimentResultsInput.type = Types::GetExperimentResultsInput
    GetExperimentResultsOutput.add_member(:results_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentResultsDataList, location_name: 'resultsData'))
    GetExperimentResultsOutput.add_member(:reports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentReportList, location_name: 'reports'))
    GetExperimentResultsOutput.add_member(:timestamps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampList, location_name: 'timestamps'))
    GetExperimentResultsOutput.add_member(:details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'details'))
    GetExperimentResultsOutput.type = Types::GetExperimentResultsOutput
    GetFeatureInput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFeatureInput.add_member(:feature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureName, location_name: 'feature', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFeatureInput.type = Types::GetFeatureInput
    GetFeatureOutput.add_member(:feature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Feature, location_name: 'feature', traits: {"smithy.api#required" => {}}))
    GetFeatureOutput.type = Types::GetFeatureOutput
    GetLaunchInput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLaunchInput.add_member(:launch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchName, location_name: 'launch', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLaunchInput.type = Types::GetLaunchInput
    GetLaunchOutput.add_member(:launch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Launch, location_name: 'launch'))
    GetLaunchOutput.type = Types::GetLaunchOutput
    GetProjectInput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProjectInput.type = Types::GetProjectInput
    GetProjectOutput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Project, location_name: 'project', traits: {"smithy.api#required" => {}}))
    GetProjectOutput.type = Types::GetProjectOutput
    GetSegmentInput.add_member(:segment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentRef, location_name: 'segment', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentInput.type = Types::GetSegmentInput
    GetSegmentOutput.add_member(:segment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Segment, location_name: 'segment', traits: {"smithy.api#required" => {}}))
    GetSegmentOutput.type = Types::GetSegmentOutput
    GroupToWeightMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName)
    GroupToWeightMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SplitWeight)
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    Launch.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    Launch.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    Launch.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project'))
    Launch.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    Launch.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'statusReason'))
    Launch.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    Launch.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#required" => {}}))
    Launch.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#required" => {}}))
    Launch.add_member(:execution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchExecution, location_name: 'execution'))
    Launch.add_member(:groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchGroupList, location_name: 'groups'))
    Launch.add_member(:metric_monitors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricMonitorList, location_name: 'metricMonitors'))
    Launch.add_member(:randomization_salt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RandomizationSalt, location_name: 'randomizationSalt'))
    Launch.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    Launch.add_member(:scheduled_splits_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledSplitsLaunchDefinition, location_name: 'scheduledSplitsDefinition'))
    Launch.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    Launch.type = Types::Launch
    LaunchExecution.add_member(:started_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startedTime'))
    LaunchExecution.add_member(:ended_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endedTime'))
    LaunchExecution.type = Types::LaunchExecution
    LaunchGroup.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    LaunchGroup.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    LaunchGroup.add_member(:feature_variations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureToVariationMap, location_name: 'featureVariations', traits: {"smithy.api#required" => {}}))
    LaunchGroup.type = Types::LaunchGroup
    LaunchGroupConfig.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    LaunchGroupConfig.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    LaunchGroupConfig.add_member(:feature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureName, location_name: 'feature', traits: {"smithy.api#required" => {}}))
    LaunchGroupConfig.add_member(:variation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariationName, location_name: 'variation', traits: {"smithy.api#required" => {}}))
    LaunchGroupConfig.type = Types::LaunchGroupConfig
    LaunchGroupConfigList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchGroupConfig)
    LaunchGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchGroup)
    LaunchesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Launch)
    ListExperimentsInput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListExperimentsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxExperiments, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListExperimentsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListExperimentsInput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentStatus, location_name: 'status', traits: {"smithy.api#httpQuery" => "status"}))
    ListExperimentsInput.type = Types::ListExperimentsInput
    ListExperimentsOutput.add_member(:experiments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentList, location_name: 'experiments'))
    ListExperimentsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListExperimentsOutput.type = Types::ListExperimentsOutput
    ListFeaturesInput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFeaturesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxFeatures, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListFeaturesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListFeaturesInput.type = Types::ListFeaturesInput
    ListFeaturesOutput.add_member(:features, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureSummariesList, location_name: 'features'))
    ListFeaturesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListFeaturesOutput.type = Types::ListFeaturesOutput
    ListLaunchesInput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListLaunchesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxLaunches, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListLaunchesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListLaunchesInput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchStatus, location_name: 'status', traits: {"smithy.api#httpQuery" => "status"}))
    ListLaunchesInput.type = Types::ListLaunchesInput
    ListLaunchesOutput.add_member(:launches, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchesList, location_name: 'launches'))
    ListLaunchesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListLaunchesOutput.type = Types::ListLaunchesOutput
    ListProjectsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxProjects, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListProjectsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListProjectsInput.type = Types::ListProjectsInput
    ListProjectsOutput.add_member(:projects, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSummariesList, location_name: 'projects'))
    ListProjectsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListProjectsOutput.type = Types::ListProjectsOutput
    ListSegmentReferencesInput.add_member(:segment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentRef, location_name: 'segment', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSegmentReferencesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxReferences, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSegmentReferencesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSegmentReferencesInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentReferenceResourceType, location_name: 'type', traits: {"smithy.api#httpQuery" => "type", "smithy.api#required" => {}}))
    ListSegmentReferencesInput.type = Types::ListSegmentReferencesInput
    ListSegmentReferencesOutput.add_member(:referenced_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RefResourceList, location_name: 'referencedBy'))
    ListSegmentReferencesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListSegmentReferencesOutput.type = Types::ListSegmentReferencesOutput
    ListSegmentsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSegments, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSegmentsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSegmentsInput.type = Types::ListSegmentsInput
    ListSegmentsOutput.add_member(:segments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentList, location_name: 'segments'))
    ListSegmentsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListSegmentsOutput.type = Types::ListSegmentsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    MetricDefinition.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CwDimensionSafeName, location_name: 'name'))
    MetricDefinition.add_member(:entity_id_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JsonPath, location_name: 'entityIdKey'))
    MetricDefinition.add_member(:value_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JsonPath, location_name: 'valueKey'))
    MetricDefinition.add_member(:event_pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JsonValue, location_name: 'eventPattern'))
    MetricDefinition.add_member(:unit_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricUnitLabel, location_name: 'unitLabel'))
    MetricDefinition.type = Types::MetricDefinition
    MetricDefinitionConfig.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CwDimensionSafeName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    MetricDefinitionConfig.add_member(:entity_id_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JsonPath, location_name: 'entityIdKey', traits: {"smithy.api#required" => {}}))
    MetricDefinitionConfig.add_member(:value_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JsonPath, location_name: 'valueKey', traits: {"smithy.api#required" => {}}))
    MetricDefinitionConfig.add_member(:event_pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JsonValue, location_name: 'eventPattern', traits: {"smithy.api#length" => {"max" => 1024}}))
    MetricDefinitionConfig.add_member(:unit_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricUnitLabel, location_name: 'unitLabel'))
    MetricDefinitionConfig.type = Types::MetricDefinitionConfig
    MetricGoal.add_member(:metric_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinition, location_name: 'metricDefinition', traits: {"smithy.api#required" => {}}))
    MetricGoal.add_member(:desired_change, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeDirectionEnum, location_name: 'desiredChange'))
    MetricGoal.type = Types::MetricGoal
    MetricGoalConfig.add_member(:metric_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinitionConfig, location_name: 'metricDefinition', traits: {"smithy.api#required" => {}}))
    MetricGoalConfig.add_member(:desired_change, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeDirectionEnum, location_name: 'desiredChange'))
    MetricGoalConfig.type = Types::MetricGoalConfig
    MetricGoalConfigList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricGoalConfig)
    MetricGoalsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricGoal)
    MetricMonitor.add_member(:metric_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinition, location_name: 'metricDefinition', traits: {"smithy.api#required" => {}}))
    MetricMonitor.type = Types::MetricMonitor
    MetricMonitorConfig.add_member(:metric_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinitionConfig, location_name: 'metricDefinition', traits: {"smithy.api#required" => {}}))
    MetricMonitorConfig.type = Types::MetricMonitorConfig
    MetricMonitorConfigList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricMonitorConfig)
    MetricMonitorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricMonitor)
    MetricNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CwDimensionSafeName)
    OnlineAbConfig.add_member(:control_treatment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentName, location_name: 'controlTreatmentName'))
    OnlineAbConfig.add_member(:treatment_weights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentToWeightMap, location_name: 'treatmentWeights'))
    OnlineAbConfig.type = Types::OnlineAbConfig
    OnlineAbDefinition.add_member(:control_treatment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentName, location_name: 'controlTreatmentName'))
    OnlineAbDefinition.add_member(:treatment_weights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentToWeightMap, location_name: 'treatmentWeights'))
    OnlineAbDefinition.type = Types::OnlineAbDefinition
    Project.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    Project.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    Project.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    Project.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    Project.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#required" => {}}))
    Project.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#required" => {}}))
    Project.add_member(:feature_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'featureCount'))
    Project.add_member(:launch_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'launchCount'))
    Project.add_member(:active_launch_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'activeLaunchCount'))
    Project.add_member(:experiment_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'experimentCount'))
    Project.add_member(:active_experiment_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'activeExperimentCount'))
    Project.add_member(:data_delivery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectDataDelivery, location_name: 'dataDelivery'))
    Project.add_member(:app_config_resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectAppConfigResource, location_name: 'appConfigResource'))
    Project.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    Project.type = Types::Project
    ProjectAppConfigResource.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppConfigResourceId, location_name: 'applicationId', traits: {"smithy.api#required" => {}}))
    ProjectAppConfigResource.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppConfigResourceId, location_name: 'environmentId', traits: {"smithy.api#required" => {}}))
    ProjectAppConfigResource.add_member(:configuration_profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppConfigResourceId, location_name: 'configurationProfileId', traits: {"smithy.api#required" => {}}))
    ProjectAppConfigResource.type = Types::ProjectAppConfigResource
    ProjectAppConfigResourceConfig.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppConfigResourceId, location_name: 'applicationId'))
    ProjectAppConfigResourceConfig.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppConfigResourceId, location_name: 'environmentId'))
    ProjectAppConfigResourceConfig.type = Types::ProjectAppConfigResourceConfig
    ProjectDataDelivery.add_member(:s3_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Destination, location_name: 's3Destination'))
    ProjectDataDelivery.add_member(:cloud_watch_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsDestination, location_name: 'cloudWatchLogs'))
    ProjectDataDelivery.type = Types::ProjectDataDelivery
    ProjectDataDeliveryConfig.add_member(:s3_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3DestinationConfig, location_name: 's3Destination'))
    ProjectDataDeliveryConfig.add_member(:cloud_watch_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsDestinationConfig, location_name: 'cloudWatchLogs'))
    ProjectDataDeliveryConfig.type = Types::ProjectDataDeliveryConfig
    ProjectSummariesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSummary)
    ProjectSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ProjectSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ProjectSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    ProjectSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    ProjectSummary.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#required" => {}}))
    ProjectSummary.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#required" => {}}))
    ProjectSummary.add_member(:feature_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'featureCount'))
    ProjectSummary.add_member(:launch_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'launchCount'))
    ProjectSummary.add_member(:active_launch_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'activeLaunchCount'))
    ProjectSummary.add_member(:experiment_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'experimentCount'))
    ProjectSummary.add_member(:active_experiment_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'activeExperimentCount'))
    ProjectSummary.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    ProjectSummary.type = Types::ProjectSummary
    PutProjectEventsInput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutProjectEventsInput.add_member(:events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventList, location_name: 'events', traits: {"smithy.api#required" => {}}))
    PutProjectEventsInput.type = Types::PutProjectEventsInput
    PutProjectEventsOutput.add_member(:failed_event_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'failedEventCount'))
    PutProjectEventsOutput.add_member(:event_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutProjectEventsResultEntryList, location_name: 'eventResults'))
    PutProjectEventsOutput.type = Types::PutProjectEventsOutput
    PutProjectEventsResultEntry.add_member(:event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'eventId'))
    PutProjectEventsResultEntry.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCodeEnum, location_name: 'errorCode'))
    PutProjectEventsResultEntry.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage'))
    PutProjectEventsResultEntry.type = Types::PutProjectEventsResultEntry
    PutProjectEventsResultEntryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutProjectEventsResultEntry)
    RefResource.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    RefResource.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'type', traits: {"smithy.api#required" => {}}))
    RefResource.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'arn'))
    RefResource.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'status'))
    RefResource.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'startTime'))
    RefResource.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'endTime'))
    RefResource.add_member(:last_updated_on, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'lastUpdatedOn'))
    RefResource.type = Types::RefResource
    RefResourceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RefResource)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId'))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3Destination.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketSafeName, location_name: 'bucket'))
    S3Destination.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3PrefixSafeName, location_name: 'prefix'))
    S3Destination.type = Types::S3Destination
    S3DestinationConfig.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketSafeName, location_name: 'bucket'))
    S3DestinationConfig.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3PrefixSafeName, location_name: 'prefix'))
    S3DestinationConfig.type = Types::S3DestinationConfig
    ScheduledSplit.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#required" => {}}))
    ScheduledSplit.add_member(:group_weights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupToWeightMap, location_name: 'groupWeights'))
    ScheduledSplit.add_member(:segment_overrides, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentOverridesList, location_name: 'segmentOverrides'))
    ScheduledSplit.type = Types::ScheduledSplit
    ScheduledSplitConfig.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#required" => {}}))
    ScheduledSplitConfig.add_member(:group_weights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupToWeightMap, location_name: 'groupWeights', traits: {"smithy.api#required" => {}}))
    ScheduledSplitConfig.add_member(:segment_overrides, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentOverridesList, location_name: 'segmentOverrides'))
    ScheduledSplitConfig.type = Types::ScheduledSplitConfig
    ScheduledSplitConfigList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledSplitConfig)
    ScheduledSplitsLaunchConfig.add_member(:steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledSplitConfigList, location_name: 'steps', traits: {"smithy.api#required" => {}}))
    ScheduledSplitsLaunchConfig.type = Types::ScheduledSplitsLaunchConfig
    ScheduledSplitsLaunchDefinition.add_member(:steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledStepList, location_name: 'steps'))
    ScheduledSplitsLaunchDefinition.type = Types::ScheduledSplitsLaunchDefinition
    ScheduledStepList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledSplit)
    Segment.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    Segment.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    Segment.add_member(:pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentPattern, location_name: 'pattern', traits: {"smithy.api#required" => {}}))
    Segment.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#required" => {}}))
    Segment.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#required" => {}}))
    Segment.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    Segment.add_member(:experiment_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'experimentCount'))
    Segment.add_member(:launch_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'launchCount'))
    Segment.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    Segment.type = Types::Segment
    SegmentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Segment)
    SegmentOverride.add_member(:segment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentRef, location_name: 'segment', traits: {"smithy.api#required" => {}}))
    SegmentOverride.add_member(:evaluation_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'evaluationOrder', traits: {"smithy.api#required" => {}}))
    SegmentOverride.add_member(:weights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupToWeightMap, location_name: 'weights', traits: {"smithy.api#required" => {}}))
    SegmentOverride.type = Types::SegmentOverride
    SegmentOverridesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentOverride)
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId'))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType'))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode'))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    StartExperimentInput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartExperimentInput.add_member(:experiment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentName, location_name: 'experiment', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartExperimentInput.add_member(:analysis_complete_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'analysisCompleteTime', traits: {"smithy.api#required" => {}}))
    StartExperimentInput.type = Types::StartExperimentInput
    StartExperimentOutput.add_member(:started_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startedTime'))
    StartExperimentOutput.type = Types::StartExperimentOutput
    StartLaunchInput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartLaunchInput.add_member(:launch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchName, location_name: 'launch', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartLaunchInput.type = Types::StartLaunchInput
    StartLaunchOutput.add_member(:launch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Launch, location_name: 'launch', traits: {"smithy.api#required" => {}}))
    StartLaunchOutput.type = Types::StartLaunchOutput
    StopExperimentInput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopExperimentInput.add_member(:experiment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentName, location_name: 'experiment', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopExperimentInput.add_member(:desired_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentStopDesiredState, location_name: 'desiredState'))
    StopExperimentInput.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'reason'))
    StopExperimentInput.type = Types::StopExperimentInput
    StopExperimentOutput.add_member(:ended_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endedTime'))
    StopExperimentOutput.type = Types::StopExperimentOutput
    StopLaunchInput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopLaunchInput.add_member(:launch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchName, location_name: 'launch', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopLaunchInput.add_member(:desired_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchStopDesiredState, location_name: 'desiredState'))
    StopLaunchInput.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'reason'))
    StopLaunchInput.type = Types::StopLaunchInput
    StopLaunchOutput.add_member(:ended_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endedTime'))
    StopLaunchOutput.type = Types::StopLaunchOutput
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TestSegmentPatternInput.add_member(:pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentPattern, location_name: 'pattern', traits: {"smithy.api#required" => {}}))
    TestSegmentPatternInput.add_member(:payload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JsonValue, location_name: 'payload', traits: {"smithy.api#required" => {}}))
    TestSegmentPatternInput.type = Types::TestSegmentPatternInput
    TestSegmentPatternOutput.add_member(:match, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'match', traits: {"smithy.api#required" => {}}))
    TestSegmentPatternOutput.type = Types::TestSegmentPatternOutput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode'))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode'))
    ThrottlingException.type = Types::ThrottlingException
    TimestampList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp)
    Treatment.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    Treatment.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    Treatment.add_member(:feature_variations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureToVariationMap, location_name: 'featureVariations'))
    Treatment.type = Types::Treatment
    TreatmentConfig.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    TreatmentConfig.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    TreatmentConfig.add_member(:feature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureName, location_name: 'feature', traits: {"smithy.api#required" => {}}))
    TreatmentConfig.add_member(:variation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariationName, location_name: 'variation', traits: {"smithy.api#required" => {}}))
    TreatmentConfig.type = Types::TreatmentConfig
    TreatmentConfigList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentConfig)
    TreatmentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Treatment)
    TreatmentNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentName)
    TreatmentToWeightMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentName)
    TreatmentToWeightMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SplitWeight)
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateExperimentInput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateExperimentInput.add_member(:experiment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentName, location_name: 'experiment', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateExperimentInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateExperimentInput.add_member(:treatments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentConfigList, location_name: 'treatments'))
    UpdateExperimentInput.add_member(:metric_goals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricGoalConfigList, location_name: 'metricGoals'))
    UpdateExperimentInput.add_member(:randomization_salt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RandomizationSalt, location_name: 'randomizationSalt'))
    UpdateExperimentInput.add_member(:sampling_rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SplitWeight, location_name: 'samplingRate', traits: {"smithy.api#default" => nil}))
    UpdateExperimentInput.add_member(:segment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentRef, location_name: 'segment'))
    UpdateExperimentInput.add_member(:remove_segment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'removeSegment', traits: {"smithy.api#default" => false}))
    UpdateExperimentInput.add_member(:online_ab_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnlineAbConfig, location_name: 'onlineAbConfig'))
    UpdateExperimentInput.type = Types::UpdateExperimentInput
    UpdateExperimentOutput.add_member(:experiment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Experiment, location_name: 'experiment', traits: {"smithy.api#required" => {}}))
    UpdateExperimentOutput.type = Types::UpdateExperimentOutput
    UpdateFeatureInput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFeatureInput.add_member(:feature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureName, location_name: 'feature', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFeatureInput.add_member(:evaluation_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureEvaluationStrategy, location_name: 'evaluationStrategy'))
    UpdateFeatureInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateFeatureInput.add_member(:add_or_update_variations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariationConfigsList, location_name: 'addOrUpdateVariations'))
    UpdateFeatureInput.add_member(:remove_variations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariationNameList, location_name: 'removeVariations'))
    UpdateFeatureInput.add_member(:default_variation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariationName, location_name: 'defaultVariation'))
    UpdateFeatureInput.add_member(:entity_overrides, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityOverrideMap, location_name: 'entityOverrides'))
    UpdateFeatureInput.type = Types::UpdateFeatureInput
    UpdateFeatureOutput.add_member(:feature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Feature, location_name: 'feature', traits: {"smithy.api#required" => {}}))
    UpdateFeatureOutput.type = Types::UpdateFeatureOutput
    UpdateLaunchInput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLaunchInput.add_member(:launch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchName, location_name: 'launch', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLaunchInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateLaunchInput.add_member(:groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchGroupConfigList, location_name: 'groups'))
    UpdateLaunchInput.add_member(:metric_monitors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricMonitorConfigList, location_name: 'metricMonitors'))
    UpdateLaunchInput.add_member(:randomization_salt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RandomizationSalt, location_name: 'randomizationSalt'))
    UpdateLaunchInput.add_member(:scheduled_splits_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledSplitsLaunchConfig, location_name: 'scheduledSplitsConfig'))
    UpdateLaunchInput.type = Types::UpdateLaunchInput
    UpdateLaunchOutput.add_member(:launch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Launch, location_name: 'launch', traits: {"smithy.api#required" => {}}))
    UpdateLaunchOutput.type = Types::UpdateLaunchOutput
    UpdateProjectDataDeliveryInput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProjectDataDeliveryInput.add_member(:s3_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3DestinationConfig, location_name: 's3Destination'))
    UpdateProjectDataDeliveryInput.add_member(:cloud_watch_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsDestinationConfig, location_name: 'cloudWatchLogs'))
    UpdateProjectDataDeliveryInput.type = Types::UpdateProjectDataDeliveryInput
    UpdateProjectDataDeliveryOutput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Project, location_name: 'project', traits: {"smithy.api#required" => {}}))
    UpdateProjectDataDeliveryOutput.type = Types::UpdateProjectDataDeliveryOutput
    UpdateProjectInput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProjectInput.add_member(:app_config_resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectAppConfigResourceConfig, location_name: 'appConfigResource'))
    UpdateProjectInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateProjectInput.type = Types::UpdateProjectInput
    UpdateProjectOutput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Project, location_name: 'project', traits: {"smithy.api#required" => {}}))
    UpdateProjectOutput.type = Types::UpdateProjectOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason'))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList'))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    VariableValue.add_member(:bool_value, Types::VariableValue::BoolValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'boolValue'))
    VariableValue.add_member(:string_value, Types::VariableValue::StringValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'stringValue', traits: {"smithy.api#length" => {"max" => 512}}))
    VariableValue.add_member(:long_value, Types::VariableValue::LongValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'longValue', traits: {"smithy.api#range" => {"min" => -9007199254740991, "max" => 9007199254740991}}))
    VariableValue.add_member(:double_value, Types::VariableValue::DoubleValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'doubleValue'))
    VariableValue.add_member(:unknown, Types::VariableValue::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    VariableValue.type = Types::VariableValue
    Variation.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariationName, location_name: 'name'))
    Variation.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariableValue, location_name: 'value'))
    Variation.type = Types::Variation
    VariationConfig.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariationName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    VariationConfig.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariableValue, location_name: 'value', traits: {"smithy.api#required" => {}}))
    VariationConfig.type = Types::VariationConfig
    VariationConfigsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariationConfig)
    VariationNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariationName)
    VariationsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Variation)

    Evidently = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.evidently#Evidently"
      service.name = "Evidently"
      service.version = "2021-02-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Evidently", "arnNamespace" => "evidently"}, "aws.auth#sigv4" => {"name" => "evidently"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["Content-Type", "X-Amz-Date", "Authorization", "X-Api-Key", "X-Amz-Security-Token", "x-amz-content-sha256", "X-Amz-User-Agent"]}, "smithy.api#title" => "Amazon CloudWatch Evidently"}
      service.add_operation(:batch_evaluate_feature, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#BatchEvaluateFeature"
        operation.name = "BatchEvaluateFeature"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchEvaluateFeatureInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchEvaluateFeatureOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "dataplane."}, "smithy.api#http" => {"method" => "POST", "uri" => "/projects/{project}/evaluations", "code" => 200}, "smithy.api#tags" => ["dataplane"]}
      end)
      service.add_operation(:create_experiment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#CreateExperiment"
        operation.name = "CreateExperiment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExperimentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExperimentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/projects/{project}/experiments", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_feature, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#CreateFeature"
        operation.name = "CreateFeature"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFeatureInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFeatureOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/projects/{project}/features", "code" => 200}}
      end)
      service.add_operation(:create_launch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#CreateLaunch"
        operation.name = "CreateLaunch"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLaunchInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLaunchOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/projects/{project}/launches", "code" => 200}}
      end)
      service.add_operation(:create_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#CreateProject"
        operation.name = "CreateProject"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProjectInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProjectOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/projects", "code" => 200}}
      end)
      service.add_operation(:create_segment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#CreateSegment"
        operation.name = "CreateSegment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSegmentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSegmentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/segments", "code" => 200}}
      end)
      service.add_operation(:delete_experiment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#DeleteExperiment"
        operation.name = "DeleteExperiment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteExperimentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteExperimentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/projects/{project}/experiments/{experiment}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_feature, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#DeleteFeature"
        operation.name = "DeleteFeature"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFeatureInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFeatureOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/projects/{project}/features/{feature}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_launch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#DeleteLaunch"
        operation.name = "DeleteLaunch"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLaunchInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLaunchOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/projects/{project}/launches/{launch}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#DeleteProject"
        operation.name = "DeleteProject"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProjectInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProjectOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/projects/{project}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_segment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#DeleteSegment"
        operation.name = "DeleteSegment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSegmentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSegmentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/segments/{segment}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:evaluate_feature, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#EvaluateFeature"
        operation.name = "EvaluateFeature"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluateFeatureInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluateFeatureOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "dataplane."}, "smithy.api#http" => {"method" => "POST", "uri" => "/projects/{project}/evaluations/{feature}", "code" => 200}, "smithy.api#tags" => ["dataplane"]}
      end)
      service.add_operation(:get_experiment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#GetExperiment"
        operation.name = "GetExperiment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetExperimentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetExperimentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/projects/{project}/experiments/{experiment}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_experiment_results, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#GetExperimentResults"
        operation.name = "GetExperimentResults"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetExperimentResultsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetExperimentResultsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/projects/{project}/experiments/{experiment}/results", "code" => 200}}
      end)
      service.add_operation(:get_feature, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#GetFeature"
        operation.name = "GetFeature"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFeatureInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFeatureOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/projects/{project}/features/{feature}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_launch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#GetLaunch"
        operation.name = "GetLaunch"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLaunchInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLaunchOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/projects/{project}/launches/{launch}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#GetProject"
        operation.name = "GetProject"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetProjectInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetProjectOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/projects/{project}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_segment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#GetSegment"
        operation.name = "GetSegment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/segments/{segment}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_experiments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#ListExperiments"
        operation.name = "ListExperiments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListExperimentsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListExperimentsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/projects/{project}/experiments", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListExperiments.new
      end)
      service.add_operation(:list_features, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#ListFeatures"
        operation.name = "ListFeatures"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFeaturesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFeaturesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/projects/{project}/features", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFeatures.new
      end)
      service.add_operation(:list_launches, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#ListLaunches"
        operation.name = "ListLaunches"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLaunchesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLaunchesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/projects/{project}/launches", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListLaunches.new
      end)
      service.add_operation(:list_projects, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#ListProjects"
        operation.name = "ListProjects"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProjectsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProjectsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/projects", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListProjects.new
      end)
      service.add_operation(:list_segment_references, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#ListSegmentReferences"
        operation.name = "ListSegmentReferences"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSegmentReferencesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSegmentReferencesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/segments/{segment}/references", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSegmentReferences.new
      end)
      service.add_operation(:list_segments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#ListSegments"
        operation.name = "ListSegments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSegmentsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSegmentsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/segments", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSegments.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:put_project_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#PutProjectEvents"
        operation.name = "PutProjectEvents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutProjectEventsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutProjectEventsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "dataplane."}, "smithy.api#http" => {"method" => "POST", "uri" => "/events/projects/{project}", "code" => 200}, "smithy.api#tags" => ["dataplane"]}
      end)
      service.add_operation(:start_experiment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#StartExperiment"
        operation.name = "StartExperiment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartExperimentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartExperimentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/projects/{project}/experiments/{experiment}/start", "code" => 200}}
      end)
      service.add_operation(:start_launch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#StartLaunch"
        operation.name = "StartLaunch"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartLaunchInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartLaunchOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/projects/{project}/launches/{launch}/start", "code" => 200}}
      end)
      service.add_operation(:stop_experiment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#StopExperiment"
        operation.name = "StopExperiment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopExperimentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopExperimentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/projects/{project}/experiments/{experiment}/cancel", "code" => 200}}
      end)
      service.add_operation(:stop_launch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#StopLaunch"
        operation.name = "StopLaunch"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopLaunchInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopLaunchOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/projects/{project}/launches/{launch}/cancel", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:test_segment_pattern, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#TestSegmentPattern"
        operation.name = "TestSegmentPattern"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestSegmentPatternInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestSegmentPatternOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/test-segment-pattern", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_experiment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#UpdateExperiment"
        operation.name = "UpdateExperiment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateExperimentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateExperimentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/projects/{project}/experiments/{experiment}", "code" => 200}}
      end)
      service.add_operation(:update_feature, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#UpdateFeature"
        operation.name = "UpdateFeature"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFeatureInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFeatureOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/projects/{project}/features/{feature}", "code" => 200}}
      end)
      service.add_operation(:update_launch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#UpdateLaunch"
        operation.name = "UpdateLaunch"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLaunchInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLaunchOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/projects/{project}/launches/{launch}", "code" => 200}}
      end)
      service.add_operation(:update_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#UpdateProject"
        operation.name = "UpdateProject"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProjectInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProjectOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/projects/{project}", "code" => 200}}
      end)
      service.add_operation(:update_project_data_delivery, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#UpdateProjectDataDelivery"
        operation.name = "UpdateProjectDataDelivery"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProjectDataDeliveryInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProjectDataDeliveryOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/projects/{project}/data-delivery", "code" => 200}}
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
