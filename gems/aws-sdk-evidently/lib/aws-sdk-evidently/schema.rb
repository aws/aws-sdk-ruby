# frozen_string_literal: true

# This is generated code!

module Aws::Evidently
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AppConfigResourceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#AppConfigResourceId', name: 'AppConfigResourceId', traits: {"smithy.api#pattern" => "[a-z0-9]{4,7}"})
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "arn:[^:]*:[^:]*:[^:]*:[^:]*:.*"})
    BatchEvaluateFeatureInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#BatchEvaluateFeatureInput', name: 'BatchEvaluateFeatureInput')
    BatchEvaluateFeatureOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#BatchEvaluateFeatureOutput', name: 'BatchEvaluateFeatureOutput')
    ChangeDirectionEnum = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ChangeDirectionEnum', name: 'ChangeDirectionEnum', traits: {"smithy.api#enum" => [{"value" => "INCREASE", "name" => "INCREASE"}, {"value" => "DECREASE", "name" => "DECREASE"}]})
    CloudWatchLogsDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#CloudWatchLogsDestination', name: 'CloudWatchLogsDestination')
    CloudWatchLogsDestinationConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#CloudWatchLogsDestinationConfig', name: 'CloudWatchLogsDestinationConfig')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateExperimentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#CreateExperimentInput', name: 'CreateExperimentInput')
    CreateExperimentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#CreateExperimentOutput', name: 'CreateExperimentOutput')
    CreateFeatureInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#CreateFeatureInput', name: 'CreateFeatureInput')
    CreateFeatureOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#CreateFeatureOutput', name: 'CreateFeatureOutput')
    CreateLaunchInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#CreateLaunchInput', name: 'CreateLaunchInput')
    CreateLaunchOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#CreateLaunchOutput', name: 'CreateLaunchOutput')
    CreateProjectInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#CreateProjectInput', name: 'CreateProjectInput')
    CreateProjectOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#CreateProjectOutput', name: 'CreateProjectOutput')
    CreateSegmentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#CreateSegmentInput', name: 'CreateSegmentInput')
    CreateSegmentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#CreateSegmentOutput', name: 'CreateSegmentOutput')
    CwDimensionSafeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#CwDimensionSafeName', name: 'CwDimensionSafeName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\S]+$"})
    CwLogGroupSafeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#CwLogGroupSafeName', name: 'CwLogGroupSafeName', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[-a-zA-Z0-9._/]+$"})
    DeleteExperimentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#DeleteExperimentInput', name: 'DeleteExperimentInput')
    DeleteExperimentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#DeleteExperimentOutput', name: 'DeleteExperimentOutput')
    DeleteFeatureInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#DeleteFeatureInput', name: 'DeleteFeatureInput')
    DeleteFeatureOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#DeleteFeatureOutput', name: 'DeleteFeatureOutput')
    DeleteLaunchInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#DeleteLaunchInput', name: 'DeleteLaunchInput')
    DeleteLaunchOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#DeleteLaunchOutput', name: 'DeleteLaunchOutput')
    DeleteProjectInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#DeleteProjectInput', name: 'DeleteProjectInput')
    DeleteProjectOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#DeleteProjectOutput', name: 'DeleteProjectOutput')
    DeleteSegmentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#DeleteSegmentInput', name: 'DeleteSegmentInput')
    DeleteSegmentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#DeleteSegmentOutput', name: 'DeleteSegmentOutput')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 160}, "smithy.api#pattern" => ".*"})
    DoubleValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#DoubleValueList', name: 'DoubleValueList', traits: {"smithy.api#length" => {"max" => 100800}})
    EntityId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#EntityId', name: 'EntityId', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => ".*"})
    EntityOverrideMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.evidently#EntityOverrideMap', name: 'EntityOverrideMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 2500}})
    ErrorCodeEnum = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ErrorCodeEnum', name: 'ErrorCodeEnum', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ErrorMessage', name: 'ErrorMessage', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => ".*"})
    EvaluateFeatureInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#EvaluateFeatureInput', name: 'EvaluateFeatureInput')
    EvaluateFeatureOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#EvaluateFeatureOutput', name: 'EvaluateFeatureOutput')
    EvaluationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#EvaluationRequest', name: 'EvaluationRequest')
    EvaluationRequestsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#EvaluationRequestsList', name: 'EvaluationRequestsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    EvaluationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#EvaluationResult', name: 'EvaluationResult')
    EvaluationResultsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#EvaluationResultsList', name: 'EvaluationResultsList')
    EvaluationRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#EvaluationRule', name: 'EvaluationRule')
    EvaluationRulesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#EvaluationRulesList', name: 'EvaluationRulesList')
    Event = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#Event', name: 'Event')
    EventList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#EventList', name: 'EventList', traits: {"smithy.api#length" => {"max" => 50}})
    EventType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#EventType', name: 'EventType', traits: {"smithy.api#enum" => [{"value" => "aws.evidently.evaluation", "name" => "EVALUATION"}, {"value" => "aws.evidently.custom", "name" => "CUSTOM"}]})
    Experiment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#Experiment', name: 'Experiment')
    ExperimentArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ExperimentArn', name: 'ExperimentArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "arn:[^:]*:[^:]*:[^:]*:[^:]*:project/[-a-zA-Z0-9._]*/experiment/[-a-zA-Z0-9._]*"})
    ExperimentBaseStat = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ExperimentBaseStat', name: 'ExperimentBaseStat', traits: {"smithy.api#enum" => [{"value" => "Mean", "name" => "MEAN"}]})
    ExperimentExecution = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ExperimentExecution', name: 'ExperimentExecution')
    ExperimentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#ExperimentList', name: 'ExperimentList')
    ExperimentName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ExperimentName', name: 'ExperimentName', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[-a-zA-Z0-9._]*$"})
    ExperimentReport = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ExperimentReport', name: 'ExperimentReport')
    ExperimentReportList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#ExperimentReportList', name: 'ExperimentReportList', traits: {"smithy.api#length" => {"max" => 1000}})
    ExperimentReportName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ExperimentReportName', name: 'ExperimentReportName', traits: {"smithy.api#enum" => [{"value" => "BayesianInference", "name" => "BAYESIAN_INFERENCE"}]})
    ExperimentReportNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#ExperimentReportNameList', name: 'ExperimentReportNameList', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    ExperimentResultRequestType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ExperimentResultRequestType', name: 'ExperimentResultRequestType', traits: {"smithy.api#enum" => [{"value" => "BaseStat", "name" => "BASE_STAT"}, {"value" => "TreatmentEffect", "name" => "TREATMENT_EFFECT"}, {"value" => "ConfidenceInterval", "name" => "CONFIDENCE_INTERVAL"}, {"value" => "PValue", "name" => "P_VALUE"}]})
    ExperimentResultRequestTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#ExperimentResultRequestTypeList', name: 'ExperimentResultRequestTypeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    ExperimentResultResponseType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ExperimentResultResponseType', name: 'ExperimentResultResponseType', traits: {"smithy.api#enum" => [{"value" => "Mean", "name" => "MEAN"}, {"value" => "TreatmentEffect", "name" => "TREATMENT_EFFECT"}, {"value" => "ConfidenceIntervalUpperBound", "name" => "CONFIDENCE_INTERVAL_UPPERBOUND"}, {"value" => "ConfidenceIntervalLowerBound", "name" => "CONFIDENCE_INTERVAL_LOWERBOUND"}, {"value" => "PValue", "name" => "P_VALUE"}]})
    ExperimentResultsData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ExperimentResultsData', name: 'ExperimentResultsData')
    ExperimentResultsDataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#ExperimentResultsDataList', name: 'ExperimentResultsDataList', traits: {"smithy.api#length" => {"max" => 1000}})
    ExperimentSchedule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ExperimentSchedule', name: 'ExperimentSchedule')
    ExperimentStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ExperimentStatus', name: 'ExperimentStatus', traits: {"smithy.api#enum" => [{"value" => "CREATED", "name" => "CREATED"}, {"value" => "UPDATING", "name" => "UPDATING"}, {"value" => "RUNNING", "name" => "RUNNING"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "CANCELLED", "name" => "CANCELLED"}]})
    ExperimentStopDesiredState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ExperimentStopDesiredState', name: 'ExperimentStopDesiredState', traits: {"smithy.api#enum" => [{"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "CANCELLED", "name" => "CANCELLED"}]})
    ExperimentType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ExperimentType', name: 'ExperimentType', traits: {"smithy.api#enum" => [{"value" => "aws.evidently.onlineab", "name" => "ONLINE_AB_EXPERIMENT"}]})
    Feature = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#Feature', name: 'Feature')
    FeatureArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#FeatureArn', name: 'FeatureArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "arn:[^:]*:[^:]*:[^:]*:[^:]*:project/[-a-zA-Z0-9._]*/feature/[-a-zA-Z0-9._]*"})
    FeatureEvaluationStrategy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#FeatureEvaluationStrategy', name: 'FeatureEvaluationStrategy', traits: {"smithy.api#enum" => [{"value" => "ALL_RULES", "name" => "ALL_RULES"}, {"value" => "DEFAULT_VARIATION", "name" => "DEFAULT_VARIATION"}]})
    FeatureName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#FeatureName', name: 'FeatureName', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[-a-zA-Z0-9._]*$"})
    FeatureStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#FeatureStatus', name: 'FeatureStatus', traits: {"smithy.api#enum" => [{"value" => "AVAILABLE", "name" => "AVAILABLE"}, {"value" => "UPDATING", "name" => "UPDATING"}]})
    FeatureSummariesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#FeatureSummariesList', name: 'FeatureSummariesList')
    FeatureSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#FeatureSummary', name: 'FeatureSummary')
    FeatureToVariationMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.evidently#FeatureToVariationMap', name: 'FeatureToVariationMap')
    GetExperimentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#GetExperimentInput', name: 'GetExperimentInput')
    GetExperimentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#GetExperimentOutput', name: 'GetExperimentOutput')
    GetExperimentResultsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#GetExperimentResultsInput', name: 'GetExperimentResultsInput')
    GetExperimentResultsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#GetExperimentResultsOutput', name: 'GetExperimentResultsOutput')
    GetFeatureInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#GetFeatureInput', name: 'GetFeatureInput')
    GetFeatureOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#GetFeatureOutput', name: 'GetFeatureOutput')
    GetLaunchInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#GetLaunchInput', name: 'GetLaunchInput')
    GetLaunchOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#GetLaunchOutput', name: 'GetLaunchOutput')
    GetProjectInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#GetProjectInput', name: 'GetProjectInput')
    GetProjectOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#GetProjectOutput', name: 'GetProjectOutput')
    GetSegmentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#GetSegmentInput', name: 'GetSegmentInput')
    GetSegmentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#GetSegmentOutput', name: 'GetSegmentOutput')
    GroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#GroupName', name: 'GroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[-a-zA-Z0-9._]*$"})
    GroupToWeightMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.evidently#GroupToWeightMap', name: 'GroupToWeightMap', traits: {"smithy.api#length" => {"max" => 5}})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    JsonPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#JsonPath', name: 'JsonPath', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => ".*"})
    JsonValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#JsonValue', name: 'JsonValue', traits: {"smithy.api#mediaType" => "application/json"})
    Launch = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#Launch', name: 'Launch')
    LaunchArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#LaunchArn', name: 'LaunchArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "arn:[^:]*:[^:]*:[^:]*:[^:]*:project/[-a-zA-Z0-9._]*/launch/[-a-zA-Z0-9._]*"})
    LaunchExecution = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#LaunchExecution', name: 'LaunchExecution')
    LaunchGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#LaunchGroup', name: 'LaunchGroup')
    LaunchGroupConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#LaunchGroupConfig', name: 'LaunchGroupConfig')
    LaunchGroupConfigList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#LaunchGroupConfigList', name: 'LaunchGroupConfigList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    LaunchGroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#LaunchGroupList', name: 'LaunchGroupList')
    LaunchName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#LaunchName', name: 'LaunchName', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[-a-zA-Z0-9._]*$"})
    LaunchStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#LaunchStatus', name: 'LaunchStatus', traits: {"smithy.api#enum" => [{"value" => "CREATED", "name" => "CREATED"}, {"value" => "UPDATING", "name" => "UPDATING"}, {"value" => "RUNNING", "name" => "RUNNING"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "CANCELLED", "name" => "CANCELLED"}]})
    LaunchStopDesiredState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#LaunchStopDesiredState', name: 'LaunchStopDesiredState', traits: {"smithy.api#enum" => [{"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "CANCELLED", "name" => "CANCELLED"}]})
    LaunchType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#LaunchType', name: 'LaunchType', traits: {"smithy.api#enum" => [{"value" => "aws.evidently.splits", "name" => "SCHEDULED_SPLITS_LAUNCH"}]})
    LaunchesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#LaunchesList', name: 'LaunchesList')
    ListExperimentsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ListExperimentsInput', name: 'ListExperimentsInput')
    ListExperimentsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ListExperimentsOutput', name: 'ListExperimentsOutput')
    ListFeaturesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ListFeaturesInput', name: 'ListFeaturesInput')
    ListFeaturesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ListFeaturesOutput', name: 'ListFeaturesOutput')
    ListLaunchesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ListLaunchesInput', name: 'ListLaunchesInput')
    ListLaunchesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ListLaunchesOutput', name: 'ListLaunchesOutput')
    ListProjectsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ListProjectsInput', name: 'ListProjectsInput')
    ListProjectsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ListProjectsOutput', name: 'ListProjectsOutput')
    ListSegmentReferencesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ListSegmentReferencesInput', name: 'ListSegmentReferencesInput')
    ListSegmentReferencesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ListSegmentReferencesOutput', name: 'ListSegmentReferencesOutput')
    ListSegmentsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ListSegmentsInput', name: 'ListSegmentsInput')
    ListSegmentsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ListSegmentsOutput', name: 'ListSegmentsOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    MaxExperiments = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.evidently#MaxExperiments', name: 'MaxExperiments', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxFeatures = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.evidently#MaxFeatures', name: 'MaxFeatures', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxLaunches = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.evidently#MaxLaunches', name: 'MaxLaunches', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxProjects = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.evidently#MaxProjects', name: 'MaxProjects', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxReferences = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.evidently#MaxReferences', name: 'MaxReferences', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxSegments = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.evidently#MaxSegments', name: 'MaxSegments', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MetricDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#MetricDefinition', name: 'MetricDefinition')
    MetricDefinitionConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#MetricDefinitionConfig', name: 'MetricDefinitionConfig')
    MetricGoal = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#MetricGoal', name: 'MetricGoal')
    MetricGoalConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#MetricGoalConfig', name: 'MetricGoalConfig')
    MetricGoalConfigList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#MetricGoalConfigList', name: 'MetricGoalConfigList', traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    MetricGoalsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#MetricGoalsList', name: 'MetricGoalsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    MetricMonitor = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#MetricMonitor', name: 'MetricMonitor')
    MetricMonitorConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#MetricMonitorConfig', name: 'MetricMonitorConfig')
    MetricMonitorConfigList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#MetricMonitorConfigList', name: 'MetricMonitorConfigList', traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    MetricMonitorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#MetricMonitorList', name: 'MetricMonitorList', traits: {"smithy.api#length" => {"max" => 3}})
    MetricNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#MetricNameList', name: 'MetricNameList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    MetricUnitLabel = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#MetricUnitLabel', name: 'MetricUnitLabel', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => ".*"})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}, "smithy.api#pattern" => ".*"})
    OnlineAbConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#OnlineAbConfig', name: 'OnlineAbConfig')
    OnlineAbDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#OnlineAbDefinition', name: 'OnlineAbDefinition')
    Project = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#Project', name: 'Project')
    ProjectAppConfigResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ProjectAppConfigResource', name: 'ProjectAppConfigResource')
    ProjectAppConfigResourceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ProjectAppConfigResourceConfig', name: 'ProjectAppConfigResourceConfig')
    ProjectArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ProjectArn', name: 'ProjectArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "arn:[^:]*:[^:]*:[^:]*:[^:]*:project/[-a-zA-Z0-9._]*"})
    ProjectDataDelivery = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ProjectDataDelivery', name: 'ProjectDataDelivery')
    ProjectDataDeliveryConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ProjectDataDeliveryConfig', name: 'ProjectDataDeliveryConfig')
    ProjectName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ProjectName', name: 'ProjectName', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[-a-zA-Z0-9._]*$"})
    ProjectRef = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ProjectRef', name: 'ProjectRef', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "(^[a-zA-Z0-9._-]*$)|(arn:[^:]*:[^:]*:[^:]*:[^:]*:project/[a-zA-Z0-9._-]*)"})
    ProjectStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ProjectStatus', name: 'ProjectStatus', traits: {"smithy.api#enum" => [{"value" => "AVAILABLE", "name" => "AVAILABLE"}, {"value" => "UPDATING", "name" => "UPDATING"}]})
    ProjectSummariesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#ProjectSummariesList', name: 'ProjectSummariesList')
    ProjectSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ProjectSummary', name: 'ProjectSummary')
    PutProjectEventsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#PutProjectEventsInput', name: 'PutProjectEventsInput')
    PutProjectEventsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#PutProjectEventsOutput', name: 'PutProjectEventsOutput')
    PutProjectEventsResultEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#PutProjectEventsResultEntry', name: 'PutProjectEventsResultEntry')
    PutProjectEventsResultEntryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#PutProjectEventsResultEntryList', name: 'PutProjectEventsResultEntryList')
    RandomizationSalt = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#RandomizationSalt', name: 'RandomizationSalt', traits: {"smithy.api#length" => {"min" => 0, "max" => 127}, "smithy.api#pattern" => ".*"})
    RefResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#RefResource', name: 'RefResource')
    RefResourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#RefResourceList', name: 'RefResourceList')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResultsPeriod = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.evidently#ResultsPeriod', name: 'ResultsPeriod', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 300, "max" => 90000}})
    RuleName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#RuleName', name: 'RuleName', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    RuleType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#RuleType', name: 'RuleType', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    S3BucketSafeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#S3BucketSafeName', name: 'S3BucketSafeName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9][-a-z0-9]*[a-z0-9]$"})
    S3Destination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#S3Destination', name: 'S3Destination')
    S3DestinationConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#S3DestinationConfig', name: 'S3DestinationConfig')
    S3PrefixSafeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#S3PrefixSafeName', name: 'S3PrefixSafeName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[-a-zA-Z0-9!_.*'()/]*$"})
    ScheduledSplit = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ScheduledSplit', name: 'ScheduledSplit')
    ScheduledSplitConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ScheduledSplitConfig', name: 'ScheduledSplitConfig')
    ScheduledSplitConfigList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#ScheduledSplitConfigList', name: 'ScheduledSplitConfigList', traits: {"smithy.api#length" => {"min" => 1, "max" => 6}})
    ScheduledSplitsLaunchConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ScheduledSplitsLaunchConfig', name: 'ScheduledSplitsLaunchConfig')
    ScheduledSplitsLaunchDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ScheduledSplitsLaunchDefinition', name: 'ScheduledSplitsLaunchDefinition')
    ScheduledStepList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#ScheduledStepList', name: 'ScheduledStepList', traits: {"smithy.api#length" => {"min" => 1, "max" => 6}})
    Segment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#Segment', name: 'Segment')
    SegmentArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#SegmentArn', name: 'SegmentArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "arn:[^:]*:[^:]*:[^:]*:[^:]*:segment/[-a-zA-Z0-9._]*"})
    SegmentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#SegmentList', name: 'SegmentList')
    SegmentName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#SegmentName', name: 'SegmentName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[-a-zA-Z0-9._]*$"})
    SegmentOverride = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#SegmentOverride', name: 'SegmentOverride')
    SegmentOverridesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#SegmentOverridesList', name: 'SegmentOverridesList', traits: {"smithy.api#length" => {"min" => 0, "max" => 6}})
    SegmentPattern = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#SegmentPattern', name: 'SegmentPattern', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#mediaType" => "application/json"})
    SegmentRef = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#SegmentRef', name: 'SegmentRef', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "(^[-a-zA-Z0-9._]*$)|(arn:[^:]*:[^:]*:[^:]*:[^:]*:segment/[-a-zA-Z0-9._]*)"})
    SegmentReferenceResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#SegmentReferenceResourceType', name: 'SegmentReferenceResourceType', traits: {"smithy.api#enum" => [{"value" => "EXPERIMENT", "name" => "EXPERIMENT"}, {"value" => "LAUNCH", "name" => "LAUNCH"}]})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SplitWeight = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.evidently#SplitWeight', name: 'SplitWeight', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100000}})
    StartExperimentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#StartExperimentInput', name: 'StartExperimentInput')
    StartExperimentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#StartExperimentOutput', name: 'StartExperimentOutput')
    StartLaunchInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#StartLaunchInput', name: 'StartLaunchInput')
    StartLaunchOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#StartLaunchOutput', name: 'StartLaunchOutput')
    StopExperimentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#StopExperimentInput', name: 'StopExperimentInput')
    StopExperimentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#StopExperimentOutput', name: 'StopExperimentOutput')
    StopLaunchInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#StopLaunchInput', name: 'StopLaunchInput')
    StopLaunchOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#StopLaunchOutput', name: 'StopLaunchOutput')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.evidently#TagMap', name: 'TagMap')
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TestSegmentPatternInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#TestSegmentPatternInput', name: 'TestSegmentPatternInput')
    TestSegmentPatternOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#TestSegmentPatternOutput', name: 'TestSegmentPatternOutput')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimestampList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#TimestampList', name: 'TimestampList', traits: {"smithy.api#length" => {"max" => 100800}})
    Treatment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#Treatment', name: 'Treatment')
    TreatmentConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#TreatmentConfig', name: 'TreatmentConfig')
    TreatmentConfigList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#TreatmentConfigList', name: 'TreatmentConfigList', traits: {"smithy.api#length" => {"max" => 5}})
    TreatmentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#TreatmentList', name: 'TreatmentList', traits: {"smithy.api#length" => {"min" => 2, "max" => 5}})
    TreatmentName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#TreatmentName', name: 'TreatmentName', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[-a-zA-Z0-9._]*$"})
    TreatmentNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#TreatmentNameList', name: 'TreatmentNameList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    TreatmentToWeightMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.evidently#TreatmentToWeightMap', name: 'TreatmentToWeightMap')
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateExperimentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#UpdateExperimentInput', name: 'UpdateExperimentInput')
    UpdateExperimentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#UpdateExperimentOutput', name: 'UpdateExperimentOutput')
    UpdateFeatureInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#UpdateFeatureInput', name: 'UpdateFeatureInput')
    UpdateFeatureOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#UpdateFeatureOutput', name: 'UpdateFeatureOutput')
    UpdateLaunchInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#UpdateLaunchInput', name: 'UpdateLaunchInput')
    UpdateLaunchOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#UpdateLaunchOutput', name: 'UpdateLaunchOutput')
    UpdateProjectDataDeliveryInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#UpdateProjectDataDeliveryInput', name: 'UpdateProjectDataDeliveryInput')
    UpdateProjectDataDeliveryOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#UpdateProjectDataDeliveryOutput', name: 'UpdateProjectDataDeliveryOutput')
    UpdateProjectInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#UpdateProjectInput', name: 'UpdateProjectInput')
    UpdateProjectOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#UpdateProjectOutput', name: 'UpdateProjectOutput')
    Uuid = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#Uuid', name: 'Uuid', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}"})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#ValidationExceptionReason', name: 'ValidationExceptionReason', traits: {"smithy.api#enum" => [{"value" => "unknownOperation", "name" => "UNKNOWN_OPERATION"}, {"value" => "cannotParse", "name" => "CANNOT_PARSE"}, {"value" => "fieldValidationFailed", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "other", "name" => "OTHER"}]})
    VariableValue = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.evidently#VariableValue', name: 'VariableValue')
    Variation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#Variation', name: 'Variation')
    VariationConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evidently#VariationConfig', name: 'VariationConfig')
    VariationConfigsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#VariationConfigsList', name: 'VariationConfigsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    VariationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#VariationName', name: 'VariationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[-a-zA-Z0-9._]*$"})
    VariationNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#VariationNameList', name: 'VariationNameList', traits: {"smithy.api#length" => {"max" => 5}})
    VariationValueType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evidently#VariationValueType', name: 'VariationValueType', traits: {"smithy.api#enum" => [{"value" => "STRING", "name" => "STRING"}, {"value" => "LONG", "name" => "LONG"}, {"value" => "DOUBLE", "name" => "DOUBLE"}, {"value" => "BOOLEAN", "name" => "BOOLEAN"}]})
    VariationsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evidently#VariationsList', name: 'VariationsList')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    BatchEvaluateFeatureInput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project that contains the feature being evaluated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchEvaluateFeatureInput.add_member(:requests, Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationRequestsList, location_name: 'requests', traits: {"smithy.api#documentation" => "<p>An array of structures, where each structure assigns a feature variation to one user session.</p>", "smithy.api#required" => {}}))
    BatchEvaluateFeatureInput.type = Types::BatchEvaluateFeatureInput
    BatchEvaluateFeatureOutput.add_member(:results, Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationResultsList, location_name: 'results', traits: {"smithy.api#documentation" => "<p>An array of structures, where each structure displays the results of one feature evaluation\n       assignment to one user session.</p>"}))
    BatchEvaluateFeatureOutput.type = Types::BatchEvaluateFeatureOutput
    CloudWatchLogsDestination.add_member(:log_group, Smithy::Schema::Shapes::ShapeRef.new(shape: CwLogGroupSafeName, location_name: 'logGroup', traits: {"smithy.api#documentation" => "<p>The name of the log group where the project stores evaluation\n       events.</p>"}))
    CloudWatchLogsDestination.type = Types::CloudWatchLogsDestination
    CloudWatchLogsDestinationConfig.add_member(:log_group, Smithy::Schema::Shapes::ShapeRef.new(shape: CwLogGroupSafeName, location_name: 'logGroup', traits: {"smithy.api#documentation" => "<p>The name of the log group where the project stores evaluation\n       events.</p>"}))
    CloudWatchLogsDestinationConfig.type = Types::CloudWatchLogsDestinationConfig
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource that caused the exception.</p>"}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource that is associated with the error.</p>"}))
    ConflictException.type = Types::ConflictException
    CreateExperimentInput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project that you want to create the new experiment in.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateExperimentInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the new experiment.</p>", "smithy.api#required" => {}}))
    CreateExperimentInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>An optional description of the experiment.</p>"}))
    CreateExperimentInput.add_member(:treatments, Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentConfigList, location_name: 'treatments', traits: {"smithy.api#documentation" => "<p>An array of structures that describe the configuration of each feature variation used in the experiment.</p>", "smithy.api#required" => {}}))
    CreateExperimentInput.add_member(:metric_goals, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricGoalConfigList, location_name: 'metricGoals', traits: {"smithy.api#documentation" => "<p>An array of structures that defines the metrics used for the experiment, and whether a higher\n      or lower value for each metric is the goal.</p>", "smithy.api#required" => {}}))
    CreateExperimentInput.add_member(:randomization_salt, Smithy::Schema::Shapes::ShapeRef.new(shape: RandomizationSalt, location_name: 'randomizationSalt', traits: {"smithy.api#documentation" => "<p>When Evidently assigns a particular user session to an experiment, it must use a randomization ID\n       to determine which variation the user session is served. This randomization ID is a combination of the entity ID\n       and <code>randomizationSalt</code>. If you omit <code>randomizationSalt</code>, Evidently uses\n       the experiment name as the <code>randomizationSalt</code>.</p>"}))
    CreateExperimentInput.add_member(:sampling_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: SplitWeight, location_name: 'samplingRate', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The portion of the available audience that you want to allocate to this experiment, in thousandths of a percent. The available audience\n      is the total audience minus the audience that you have allocated to overrides or current launches of\n      this feature.</p>\n         <p>This is represented in thousandths of a percent. For example, specify 10,000 to allocate 10% of the available audience.</p>"}))
    CreateExperimentInput.add_member(:online_ab_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OnlineAbConfig, location_name: 'onlineAbConfig', traits: {"smithy.api#documentation" => "<p>A structure that contains the configuration of which variation to use as the \"control\"\n      version. tThe \"control\" version is used for comparison with other variations. This structure\n      also specifies how much experiment traffic is allocated to each variation.</p>"}))
    CreateExperimentInput.add_member(:segment, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentRef, location_name: 'segment', traits: {"smithy.api#documentation" => "<p>Specifies an audience <i>segment</i> to use in the experiment. When a segment is used in an experiment, only\n      user sessions that match the segment pattern are used in the experiment.</p>"}))
    CreateExperimentInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Assigns one or more tags (key-value pairs) to the experiment.</p>\n         <p>Tags can help you organize and categorize your resources. You can also use them to scope user\n       permissions by granting a user\n       permission to access or change only resources with certain tag values.</p>\n         <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>\n         <p>You can associate as many as 50 tags with an experiment.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging Amazon Web Services resources</a>.</p>"}))
    CreateExperimentInput.type = Types::CreateExperimentInput
    CreateExperimentOutput.add_member(:experiment, Smithy::Schema::Shapes::ShapeRef.new(shape: Experiment, location_name: 'experiment', traits: {"smithy.api#documentation" => "<p>A structure containing the configuration details of the experiment\n       that you created.</p>", "smithy.api#required" => {}}))
    CreateExperimentOutput.type = Types::CreateExperimentOutput
    CreateFeatureInput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project that is to contain the new feature.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateFeatureInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name for the new feature.</p>", "smithy.api#required" => {}}))
    CreateFeatureInput.add_member(:evaluation_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureEvaluationStrategy, location_name: 'evaluationStrategy', traits: {"smithy.api#documentation" => "<p>Specify <code>ALL_RULES</code> to activate the traffic allocation specified by any\n      ongoing launches or experiments. Specify <code>DEFAULT_VARIATION</code> to serve the default\n      variation to all users instead.</p>"}))
    CreateFeatureInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>An optional description of the feature.</p>"}))
    CreateFeatureInput.add_member(:variations, Smithy::Schema::Shapes::ShapeRef.new(shape: VariationConfigsList, location_name: 'variations', traits: {"smithy.api#documentation" => "<p>An array of structures that contain the configuration of the feature's different variations.</p>", "smithy.api#required" => {}}))
    CreateFeatureInput.add_member(:default_variation, Smithy::Schema::Shapes::ShapeRef.new(shape: VariationName, location_name: 'defaultVariation', traits: {"smithy.api#documentation" => "<p>The name of the variation to use as the default variation. The default\n      variation is served to users who are not allocated to any ongoing launches\n      or experiments of this feature.</p>\n         <p>This variation must also be listed in the <code>variations</code> structure.</p>\n         <p>If you omit <code>defaultVariation</code>, the first variation listed in\n       the <code>variations</code> structure is used as the default variation.</p>"}))
    CreateFeatureInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Assigns one or more tags (key-value pairs) to the feature.</p>\n         <p>Tags can help you organize and categorize your resources. You can also use them to scope user\n       permissions by granting a user\n       permission to access or change only resources with certain tag values.</p>\n         <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>\n         <p>You can associate as many as 50 tags with a feature.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging Amazon Web Services resources</a>.</p>"}))
    CreateFeatureInput.add_member(:entity_overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityOverrideMap, location_name: 'entityOverrides', traits: {"smithy.api#documentation" => "<p>Specify users that should always be served a specific variation of a feature. Each user\n      is specified by a key-value pair . For each key, specify a user by entering their user ID,\n      account ID, or some other identifier. For the value, specify the name of the variation that\n      they are to be served.</p>\n         <p>This parameter is limited to 2500 overrides or a total of 40KB. The 40KB limit includes an overhead of 6 bytes\n     per override.</p>"}))
    CreateFeatureInput.type = Types::CreateFeatureInput
    CreateFeatureOutput.add_member(:feature, Smithy::Schema::Shapes::ShapeRef.new(shape: Feature, location_name: 'feature', traits: {"smithy.api#documentation" => "<p>A structure that contains information about the new feature.</p>"}))
    CreateFeatureOutput.type = Types::CreateFeatureOutput
    CreateLaunchInput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project that you want to create the launch in.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateLaunchInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name for the new launch.</p>", "smithy.api#required" => {}}))
    CreateLaunchInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>An optional description for the launch.</p>"}))
    CreateLaunchInput.add_member(:scheduled_splits_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledSplitsLaunchConfig, location_name: 'scheduledSplitsConfig', traits: {"smithy.api#documentation" => "<p>An array of structures that define the traffic allocation percentages among the feature\n      variations during each step of the launch.</p>"}))
    CreateLaunchInput.add_member(:metric_monitors, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricMonitorConfigList, location_name: 'metricMonitors', traits: {"smithy.api#documentation" => "<p>An array of structures that define the metrics that will be used to monitor \n       the launch performance.</p>"}))
    CreateLaunchInput.add_member(:groups, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchGroupConfigList, location_name: 'groups', traits: {"smithy.api#documentation" => "<p>An array of structures that contains the feature and variations that are to be used for the launch.</p>", "smithy.api#required" => {}}))
    CreateLaunchInput.add_member(:randomization_salt, Smithy::Schema::Shapes::ShapeRef.new(shape: RandomizationSalt, location_name: 'randomizationSalt', traits: {"smithy.api#documentation" => "<p>When Evidently assigns a particular user session to a launch, it must use a randomization ID\n        to determine which variation the user session is served. This randomization ID is a combination of the entity ID\n        and <code>randomizationSalt</code>. If you omit <code>randomizationSalt</code>, Evidently uses\n      the launch name as the <code>randomizationSalt</code>.</p>"}))
    CreateLaunchInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Assigns one or more tags (key-value pairs) to the launch.</p>\n         <p>Tags can help you organize and categorize your resources. You can also use them to scope user\n       permissions by granting a user\n       permission to access or change only resources with certain tag values.</p>\n         <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>\n         <p>You can associate as many as 50 tags with a launch.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging Amazon Web Services resources</a>.</p>"}))
    CreateLaunchInput.type = Types::CreateLaunchInput
    CreateLaunchOutput.add_member(:launch, Smithy::Schema::Shapes::ShapeRef.new(shape: Launch, location_name: 'launch', traits: {"smithy.api#documentation" => "<p>A structure that contains the configuration of the launch that was created.</p>", "smithy.api#required" => {}}))
    CreateLaunchOutput.type = Types::CreateLaunchOutput
    CreateProjectInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name for the project.</p>", "smithy.api#required" => {}}))
    CreateProjectInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>An optional description of the project.</p>"}))
    CreateProjectInput.add_member(:data_delivery, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectDataDeliveryConfig, location_name: 'dataDelivery', traits: {"smithy.api#documentation" => "<p>A structure that contains information about where Evidently is to store\n      evaluation events for longer term storage, if you choose to do so. If you choose\n      not to store these events, Evidently deletes them after using them to produce metrics and other experiment\n      results that you can view.</p>"}))
    CreateProjectInput.add_member(:app_config_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectAppConfigResourceConfig, location_name: 'appConfigResource', traits: {"smithy.api#documentation" => "<p>Use this parameter if the project will use <i>client-side evaluation powered by AppConfig</i>. Client-side\n      evaluation allows your application to assign variations to user\n      sessions locally instead of by calling the <a href=\"https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_EvaluateFeature.html\">EvaluateFeature</a> operation. This \n      mitigates the latency and availability risks that come with an API call. For more information, \n      see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-client-side-evaluation.html\">\n        Client-side evaluation - powered by AppConfig.</a>\n         </p>\n         <p>This parameter is a structure that\n      contains information about the AppConfig application and environment that will be used as for client-side evaluation.</p>\n         <p>To create a project that uses client-side evaluation, you must have the\n      <code>evidently:ExportProjectAsConfiguration</code> permission.</p>"}))
    CreateProjectInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Assigns one or more tags (key-value pairs) to the project.</p>\n         <p>Tags can help you organize and categorize your resources. You can also use them to scope user\n       permissions by granting a user\n       permission to access or change only resources with certain tag values.</p>\n         <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>\n         <p>You can associate as many as 50 tags with a project.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging Amazon Web Services resources</a>.</p>"}))
    CreateProjectInput.type = Types::CreateProjectInput
    CreateProjectOutput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: Project, location_name: 'project', traits: {"smithy.api#documentation" => "<p>A structure that contains information about the created project.</p>", "smithy.api#required" => {}}))
    CreateProjectOutput.type = Types::CreateProjectOutput
    CreateSegmentInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the segment.</p>", "smithy.api#required" => {}}))
    CreateSegmentInput.add_member(:pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentPattern, location_name: 'pattern', traits: {"smithy.api#documentation" => "<p>The pattern to use for the segment. For more information about pattern syntax, \n      see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html#CloudWatch-Evidently-segments-syntax.html\">\n        Segment rule pattern syntax</a>.</p>", "smithy.api#required" => {}}))
    CreateSegmentInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>An optional description for this segment.</p>"}))
    CreateSegmentInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Assigns one or more tags (key-value pairs) to the segment.</p>\n         <p>Tags can help you organize and categorize your resources. You can also use them to scope user\n      permissions by granting a user\n      permission to access or change only resources with certain tag values.</p>\n         <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>\n         <p>You can associate as many as 50 tags with a segment.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging Amazon Web Services resources</a>.</p>"}))
    CreateSegmentInput.type = Types::CreateSegmentInput
    CreateSegmentOutput.add_member(:segment, Smithy::Schema::Shapes::ShapeRef.new(shape: Segment, location_name: 'segment', traits: {"smithy.api#documentation" => "<p>A structure that contains the complete information about the segment that was just created.</p>", "smithy.api#required" => {}}))
    CreateSegmentOutput.type = Types::CreateSegmentOutput
    DeleteExperimentInput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project that contains the experiment to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteExperimentInput.add_member(:experiment, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentName, location_name: 'experiment', traits: {"smithy.api#documentation" => "<p>The name of the experiment to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteExperimentInput.type = Types::DeleteExperimentInput
    DeleteExperimentOutput.type = Types::DeleteExperimentOutput
    DeleteFeatureInput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project that contains the feature to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFeatureInput.add_member(:feature, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureName, location_name: 'feature', traits: {"smithy.api#documentation" => "<p>The name of the feature to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFeatureInput.type = Types::DeleteFeatureInput
    DeleteFeatureOutput.type = Types::DeleteFeatureOutput
    DeleteLaunchInput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project that contains the launch to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLaunchInput.add_member(:launch, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchName, location_name: 'launch', traits: {"smithy.api#documentation" => "<p>The name of the launch to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLaunchInput.type = Types::DeleteLaunchInput
    DeleteLaunchOutput.type = Types::DeleteLaunchOutput
    DeleteProjectInput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProjectInput.type = Types::DeleteProjectInput
    DeleteProjectOutput.type = Types::DeleteProjectOutput
    DeleteSegmentInput.add_member(:segment, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentRef, location_name: 'segment', traits: {"smithy.api#documentation" => "<p>Specifies the segment to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSegmentInput.type = Types::DeleteSegmentInput
    DeleteSegmentOutput.type = Types::DeleteSegmentOutput
    DoubleValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Double)
    EntityOverrideMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId)
    EntityOverrideMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: VariationName)
    EvaluateFeatureInput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project that contains this feature.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    EvaluateFeatureInput.add_member(:feature, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureName, location_name: 'feature', traits: {"smithy.api#documentation" => "<p>The name of the feature being evaluated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    EvaluateFeatureInput.add_member(:entity_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'entityId', traits: {"smithy.api#documentation" => "<p>An internal ID that represents a unique user of the application. This\n        <code>entityID</code> is checked against any override rules assigned for this\n      feature.</p>", "smithy.api#required" => {}}))
    EvaluateFeatureInput.add_member(:evaluation_context, Smithy::Schema::Shapes::ShapeRef.new(shape: JsonValue, location_name: 'evaluationContext', traits: {"smithy.api#documentation" => "<p>A JSON object of attributes that you can optionally pass in as part of the evaluation event\n      sent to Evidently from the user session. Evidently can use \n      this value to match user sessions with defined audience segments. For more information, see\n      <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html\">Use segments to focus your \n        audience</a>.</p>\n         <p>If you include this parameter, the value must be a JSON object. A JSON array is not supported.</p>"}))
    EvaluateFeatureInput.type = Types::EvaluateFeatureInput
    EvaluateFeatureOutput.add_member(:variation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'variation', traits: {"smithy.api#documentation" => "<p>The name of the variation that was served to the user session.</p>"}))
    EvaluateFeatureOutput.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: VariableValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value assigned to this variation to differentiate it from the other variations of this feature.</p>"}))
    EvaluateFeatureOutput.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>Specifies the reason that the user session was assigned this variation. Possible values\n      include <code>DEFAULT</code>, meaning the user was served the default variation;\n        <code>LAUNCH_RULE_MATCH</code>, if the user session was enrolled in a launch;\n        <code>EXPERIMENT_RULE_MATCH</code>, if the user session was enrolled in an experiment; or\n        <code>ENTITY_OVERRIDES_MATCH</code>, if the user's <code>entityId</code> matches an override\n      rule.</p>"}))
    EvaluateFeatureOutput.add_member(:details, Smithy::Schema::Shapes::ShapeRef.new(shape: JsonValue, location_name: 'details', traits: {"smithy.api#documentation" => "<p>If this user was assigned to a launch or experiment, this field lists the launch or experiment name.</p>"}))
    EvaluateFeatureOutput.type = Types::EvaluateFeatureOutput
    EvaluationRequest.add_member(:feature, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureName, location_name: 'feature', traits: {"smithy.api#documentation" => "<p>The name of the feature being evaluated.</p>", "smithy.api#required" => {}}))
    EvaluationRequest.add_member(:entity_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'entityId', traits: {"smithy.api#documentation" => "<p>An internal ID that represents a unique user session of the application. This\n        <code>entityID</code> is checked against any override rules assigned for this\n      feature.</p>", "smithy.api#required" => {}}))
    EvaluationRequest.add_member(:evaluation_context, Smithy::Schema::Shapes::ShapeRef.new(shape: JsonValue, location_name: 'evaluationContext', traits: {"smithy.api#documentation" => "<p>A JSON block of attributes that you can optionally pass in. This JSON block is included\n       in the evaluation events sent to Evidently from the user session. </p>"}))
    EvaluationRequest.type = Types::EvaluationRequest
    EvaluationRequestsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationRequest)
    EvaluationResult.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project that contains the feature being evaluated.</p>"}))
    EvaluationResult.add_member(:feature, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureName, location_name: 'feature', traits: {"smithy.api#documentation" => "<p>The name of the feature being evaluated.</p>", "smithy.api#required" => {}}))
    EvaluationResult.add_member(:variation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'variation', traits: {"smithy.api#documentation" => "<p>The name of the variation that was served to the user session.</p>"}))
    EvaluationResult.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: VariableValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value assigned to this variation to differentiate it from the other variations of this feature.</p>"}))
    EvaluationResult.add_member(:entity_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'entityId', traits: {"smithy.api#documentation" => "<p>An internal ID that represents a unique user session of the application.</p>", "smithy.api#required" => {}}))
    EvaluationResult.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>Specifies the reason that the user session was assigned this variation. Possible values\n      include <code>DEFAULT</code>, meaning the user was served the default variation;\n        <code>LAUNCH_RULE_MATCH</code>, if the user session was enrolled in a launch; or\n        <code>EXPERIMENT_RULE_MATCH</code>, if the user session was enrolled in an\n      experiment.</p>"}))
    EvaluationResult.add_member(:details, Smithy::Schema::Shapes::ShapeRef.new(shape: JsonValue, location_name: 'details', traits: {"smithy.api#documentation" => "<p>If this user was assigned to a launch or experiment, this field lists the launch or experiment name.</p>"}))
    EvaluationResult.type = Types::EvaluationResult
    EvaluationResultsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationResult)
    EvaluationRule.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the experiment or launch.</p>"}))
    EvaluationRule.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>This value is <code>aws.evidently.splits</code> if this is an evaluation rule for a launch, and it is\n       <code>aws.evidently.onlineab</code> if this is an evaluation rule for an experiment.</p>", "smithy.api#required" => {}}))
    EvaluationRule.type = Types::EvaluationRule
    EvaluationRulesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationRule)
    Event.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'timestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of the event.</p>", "smithy.api#required" => {}}))
    Event.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: EventType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>\n            <code>aws.evidently.evaluation</code> specifies an evaluation event, which determines\n      which feature variation that a user sees. <code>aws.evidently.custom</code> specifies a custom\n      event, which generates metrics from user actions such as clicks and checkouts.</p>", "smithy.api#required" => {}}))
    Event.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: JsonValue, location_name: 'data', traits: {"smithy.api#documentation" => "<p>The event data.</p>", "smithy.api#required" => {}}))
    Event.type = Types::Event
    EventList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Event)
    Experiment.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the experiment.</p>", "smithy.api#required" => {}}))
    Experiment.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the experiment.</p>", "smithy.api#required" => {}}))
    Experiment.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project that contains this experiment.</p>"}))
    Experiment.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current state of the experiment.</p>", "smithy.api#required" => {}}))
    Experiment.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>If the experiment was stopped, this is the string that was entered by the person who \n      stopped the experiment, to explain why it was stopped.</p>"}))
    Experiment.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the experiment.</p>"}))
    Experiment.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>The date and time that the experiment is first created.</p>", "smithy.api#required" => {}}))
    Experiment.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The date and time that the experiment was most recently updated.</p>", "smithy.api#required" => {}}))
    Experiment.add_member(:schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentSchedule, location_name: 'schedule', traits: {"smithy.api#documentation" => "<p>A structure that contains the time and date that Evidently completed the analysis of the experiment.</p>"}))
    Experiment.add_member(:execution, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentExecution, location_name: 'execution', traits: {"smithy.api#documentation" => "<p>A structure that contains the date and time that the experiment started and ended.</p>"}))
    Experiment.add_member(:treatments, Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentList, location_name: 'treatments', traits: {"smithy.api#documentation" => "<p>An array of structures that describe the configuration of each feature variation used in the experiment.</p>"}))
    Experiment.add_member(:metric_goals, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricGoalsList, location_name: 'metricGoals', traits: {"smithy.api#documentation" => "<p>An array of structures that defines the metrics used for the experiment, and whether a higher\n      or lower value for each metric is the goal.</p>"}))
    Experiment.add_member(:randomization_salt, Smithy::Schema::Shapes::ShapeRef.new(shape: RandomizationSalt, location_name: 'randomizationSalt', traits: {"smithy.api#documentation" => "<p>This value is used when Evidently assigns a particular user session to the experiment. It\n      helps create a randomization ID to determine which variation the user session is served. This\n      randomization ID is a combination of the entity ID and <code>randomizationSalt</code>.</p>"}))
    Experiment.add_member(:sampling_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: SplitWeight, location_name: 'samplingRate', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>In thousandths of a percent, the amount of the available audience that is allocated to this experiment. \n      The available audience\n      is the total audience minus the audience that you have allocated to overrides or current launches of\n      this feature.</p>\n         <p>This is represented in thousandths of a percent, so a value of 10,000 is 10% of the available audience.</p>"}))
    Experiment.add_member(:segment, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentArn, location_name: 'segment', traits: {"smithy.api#documentation" => "<p>The audience segment being used for the experiment, if a segment is being used.</p>"}))
    Experiment.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of this experiment. Currently, this value must be <code>aws.experiment.onlineab</code>.</p>", "smithy.api#required" => {}}))
    Experiment.add_member(:online_ab_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: OnlineAbDefinition, location_name: 'onlineAbDefinition', traits: {"smithy.api#documentation" => "<p>A structure that contains the configuration of which variation to use as the \"control\"\n      version. The \"control\" version is used for comparison with other variations. This structure\n      also specifies how much experiment traffic is allocated to each variation.</p>"}))
    Experiment.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tag keys and values associated with this experiment.</p>"}))
    Experiment.type = Types::Experiment
    ExperimentExecution.add_member(:started_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startedTime', traits: {"smithy.api#documentation" => "<p>The date and time that the experiment started.</p>"}))
    ExperimentExecution.add_member(:ended_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endedTime', traits: {"smithy.api#documentation" => "<p>The date and time that the experiment ended.</p>"}))
    ExperimentExecution.type = Types::ExperimentExecution
    ExperimentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Experiment)
    ExperimentReport.add_member(:metric_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CwDimensionSafeName, location_name: 'metricName', traits: {"smithy.api#documentation" => "<p>The name of the metric that is analyzed in this experiment report.</p>"}))
    ExperimentReport.add_member(:treatment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentName, location_name: 'treatmentName', traits: {"smithy.api#documentation" => "<p>The name of the variation that this report pertains to.</p>"}))
    ExperimentReport.add_member(:report_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentReportName, location_name: 'reportName', traits: {"smithy.api#documentation" => "<p>The type of analysis used for this report.</p>"}))
    ExperimentReport.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: JsonValue, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The content of the report.</p>"}))
    ExperimentReport.type = Types::ExperimentReport
    ExperimentReportList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentReport)
    ExperimentReportNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentReportName)
    ExperimentResultRequestTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentResultRequestType)
    ExperimentResultsData.add_member(:metric_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CwDimensionSafeName, location_name: 'metricName', traits: {"smithy.api#documentation" => "<p>The name of the metric.</p>"}))
    ExperimentResultsData.add_member(:treatment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentName, location_name: 'treatmentName', traits: {"smithy.api#documentation" => "<p>The treatment, or variation, that returned the <code>values</code> in this structure.</p>"}))
    ExperimentResultsData.add_member(:result_stat, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentResultResponseType, location_name: 'resultStat', traits: {"smithy.api#documentation" => "<p>The experiment statistic that these results pertain to.</p>"}))
    ExperimentResultsData.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleValueList, location_name: 'values', traits: {"smithy.api#documentation" => "<p>The values for the <code>metricName</code> that were recorded in the experiment.</p>"}))
    ExperimentResultsData.type = Types::ExperimentResultsData
    ExperimentResultsDataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentResultsData)
    ExperimentSchedule.add_member(:analysis_complete_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'analysisCompleteTime', traits: {"smithy.api#documentation" => "<p>The time and date that Evidently completed the analysis of the experiment.</p>"}))
    ExperimentSchedule.type = Types::ExperimentSchedule
    Feature.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the feature.</p>", "smithy.api#required" => {}}))
    Feature.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the feature.</p>", "smithy.api#required" => {}}))
    Feature.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project that contains the feature.</p>"}))
    Feature.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current state of the feature.</p>", "smithy.api#required" => {}}))
    Feature.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>The date and time that the feature is created.</p>", "smithy.api#required" => {}}))
    Feature.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The date and time that the feature was most recently updated.</p>", "smithy.api#required" => {}}))
    Feature.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the feature.</p>"}))
    Feature.add_member(:evaluation_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureEvaluationStrategy, location_name: 'evaluationStrategy', traits: {"smithy.api#documentation" => "<p>If this value is <code>ALL_RULES</code>, the traffic allocation specified by\n      any ongoing launches or experiments is being used. If this is <code>DEFAULT_VARIATION</code>,\n      the default variation is being served to all users.</p>", "smithy.api#required" => {}}))
    Feature.add_member(:value_type, Smithy::Schema::Shapes::ShapeRef.new(shape: VariationValueType, location_name: 'valueType', traits: {"smithy.api#documentation" => "<p>Defines the type of value used to define the different feature variations. \n      For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-variationtypes.html\">Variation types</a>\n         </p>", "smithy.api#required" => {}}))
    Feature.add_member(:variations, Smithy::Schema::Shapes::ShapeRef.new(shape: VariationsList, location_name: 'variations', traits: {"smithy.api#documentation" => "<p>An array of structures that contain the configuration of the feature's different variations.</p>", "smithy.api#required" => {}}))
    Feature.add_member(:default_variation, Smithy::Schema::Shapes::ShapeRef.new(shape: VariationName, location_name: 'defaultVariation', traits: {"smithy.api#documentation" => "<p>The name of the variation that is used as the default variation. The default\n      variation is served to users who are not allocated to any ongoing launches\n      or experiments of this feature.</p>\n         <p>This variation must also be listed in the <code>variations</code> structure.</p>\n         <p>If you omit <code>defaultVariation</code>, the first variation listed in\n    the <code>variations</code> structure is used as the default variation.</p>"}))
    Feature.add_member(:evaluation_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationRulesList, location_name: 'evaluationRules', traits: {"smithy.api#documentation" => "<p>An array of structures that define the evaluation rules for the feature.</p>"}))
    Feature.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tag keys and values associated with this feature.</p>"}))
    Feature.add_member(:entity_overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityOverrideMap, location_name: 'entityOverrides', traits: {"smithy.api#documentation" => "<p>A set of key-value pairs  that specify users who should always be served a specific\n      variation of a feature. Each key specifies a user using their user ID, account ID, or some\n      other identifier. The value specifies the name of the variation that the user is to be\n      served.</p>\n         <p>For the override to be successful, the value of the key must match the <code>entityId</code> used \n      in the <a href=\"https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_EvaluateFeature.html\">EvaluateFeature</a> operation.</p>"}))
    Feature.type = Types::Feature
    FeatureSummariesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureSummary)
    FeatureSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the feature.</p>", "smithy.api#required" => {}}))
    FeatureSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the feature.</p>", "smithy.api#required" => {}}))
    FeatureSummary.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project that contains the feature.</p>"}))
    FeatureSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current state of the feature.</p>", "smithy.api#required" => {}}))
    FeatureSummary.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>The date and time that the feature is created.</p>", "smithy.api#required" => {}}))
    FeatureSummary.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The date and time that the feature was most recently updated.</p>", "smithy.api#required" => {}}))
    FeatureSummary.add_member(:evaluation_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureEvaluationStrategy, location_name: 'evaluationStrategy', traits: {"smithy.api#documentation" => "<p>If this value is <code>ALL_RULES</code>, the traffic allocation specified by\n      any ongoing launches or experiments is being used. If this is <code>DEFAULT_VARIATION</code>,\n      the default variation is being served to all users.</p>", "smithy.api#required" => {}}))
    FeatureSummary.add_member(:evaluation_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationRulesList, location_name: 'evaluationRules', traits: {"smithy.api#documentation" => "<p>An array of structures that define</p>"}))
    FeatureSummary.add_member(:default_variation, Smithy::Schema::Shapes::ShapeRef.new(shape: VariationName, location_name: 'defaultVariation', traits: {"smithy.api#documentation" => "<p>The name of the variation that is used as the default variation. The default\n      variation is served to users who are not allocated to any ongoing launches\n      or experiments of this feature.</p>"}))
    FeatureSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tag keys and values associated with this feature.</p>"}))
    FeatureSummary.type = Types::FeatureSummary
    FeatureToVariationMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureName)
    FeatureToVariationMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: VariationName)
    GetExperimentInput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project that contains the experiment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExperimentInput.add_member(:experiment, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentName, location_name: 'experiment', traits: {"smithy.api#documentation" => "<p>The name of the experiment that you want to see the details of.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExperimentInput.type = Types::GetExperimentInput
    GetExperimentOutput.add_member(:experiment, Smithy::Schema::Shapes::ShapeRef.new(shape: Experiment, location_name: 'experiment', traits: {"smithy.api#documentation" => "<p>A structure containing the configuration details of the experiment.</p>"}))
    GetExperimentOutput.type = Types::GetExperimentOutput
    GetExperimentResultsInput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project that contains the experiment that you want to see the results of.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExperimentResultsInput.add_member(:experiment, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentName, location_name: 'experiment', traits: {"smithy.api#documentation" => "<p>The name of the experiment to retrieve the results of.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExperimentResultsInput.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The date and time that the experiment started.</p>"}))
    GetExperimentResultsInput.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The date and time that the experiment ended, if it is completed. This must be no longer than 30 days \n      after the experiment start time.</p>"}))
    GetExperimentResultsInput.add_member(:metric_names, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricNameList, location_name: 'metricNames', traits: {"smithy.api#documentation" => "<p>The names of the experiment metrics that you want to see the results of.</p>", "smithy.api#required" => {}}))
    GetExperimentResultsInput.add_member(:treatment_names, Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentNameList, location_name: 'treatmentNames', traits: {"smithy.api#documentation" => "<p>The names of the experiment treatments that you want to see the results for.</p>", "smithy.api#required" => {}}))
    GetExperimentResultsInput.add_member(:base_stat, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentBaseStat, location_name: 'baseStat', traits: {"smithy.api#documentation" => "<p>The statistic used to calculate experiment results. Currently the only valid value is <code>mean</code>, \n      which uses the mean of the collected values as the statistic.</p>"}))
    GetExperimentResultsInput.add_member(:result_stats, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentResultRequestTypeList, location_name: 'resultStats', traits: {"smithy.api#documentation" => "<p>The statistics that you want to see in the returned results.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PValue</code> specifies to use p-values for the results. A p-value is used in hypothesis\n          testing to measure how often you are willing to make a mistake in rejecting the null\n          hypothesis. A general practice is to reject the null hypothesis and declare that the\n          results are statistically significant when the p-value is less than 0.05.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ConfidenceInterval</code> specifies a confidence interval for the results. The\n          confidence interval represents the range of values for the chosen metric that is likely to\n          contain the true difference between the <code>baseStat</code> of a variation and the\n          baseline. Evidently returns the 95% confidence interval. </p>\n            </li>\n            <li>\n               <p>\n                  <code>TreatmentEffect</code> is the difference in the statistic specified by the\n            <code>baseStat</code> parameter between each variation and the default variation. </p>\n            </li>\n            <li>\n               <p>\n                  <code>BaseStat</code> returns the statistical values collected for the metric for each\n          variation. The statistic uses the same statistic specified in the <code>baseStat</code>\n          parameter. Therefore, if <code>baseStat</code> is <code>mean</code>, this returns the mean\n          of the values collected for each variation.</p>\n            </li>\n         </ul>"}))
    GetExperimentResultsInput.add_member(:report_names, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentReportNameList, location_name: 'reportNames', traits: {"smithy.api#documentation" => "<p>The names of the report types that you want to see. Currently, <code>BayesianInference</code>\n       is the only valid value.</p>"}))
    GetExperimentResultsInput.add_member(:period, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultsPeriod, location_name: 'period', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>In seconds, the amount of time to aggregate results together. </p>"}))
    GetExperimentResultsInput.type = Types::GetExperimentResultsInput
    GetExperimentResultsOutput.add_member(:results_data, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentResultsDataList, location_name: 'resultsData', traits: {"smithy.api#documentation" => "<p>An array of structures that include experiment results including metric names and values. </p>"}))
    GetExperimentResultsOutput.add_member(:reports, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentReportList, location_name: 'reports', traits: {"smithy.api#documentation" => "<p>An array of structures that include the reports that you requested.</p>"}))
    GetExperimentResultsOutput.add_member(:timestamps, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampList, location_name: 'timestamps', traits: {"smithy.api#documentation" => "<p>The timestamps of each result returned.</p>"}))
    GetExperimentResultsOutput.add_member(:details, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'details', traits: {"smithy.api#documentation" => "<p>If the experiment doesn't yet have enough events to provide valid results, this \n      field is returned with the message <code>Not enough events to generate results</code>. If there are \n      enough events to provide valid results, this field is not returned.</p>"}))
    GetExperimentResultsOutput.type = Types::GetExperimentResultsOutput
    GetFeatureInput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project that contains the feature.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFeatureInput.add_member(:feature, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureName, location_name: 'feature', traits: {"smithy.api#documentation" => "<p>The name of the feature that you want to retrieve information for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFeatureInput.type = Types::GetFeatureInput
    GetFeatureOutput.add_member(:feature, Smithy::Schema::Shapes::ShapeRef.new(shape: Feature, location_name: 'feature', traits: {"smithy.api#documentation" => "<p>A structure containing the configuration details of the feature.</p>", "smithy.api#required" => {}}))
    GetFeatureOutput.type = Types::GetFeatureOutput
    GetLaunchInput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project that contains the launch.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLaunchInput.add_member(:launch, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchName, location_name: 'launch', traits: {"smithy.api#documentation" => "<p>The name of the launch that you want to see the details of.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLaunchInput.type = Types::GetLaunchInput
    GetLaunchOutput.add_member(:launch, Smithy::Schema::Shapes::ShapeRef.new(shape: Launch, location_name: 'launch', traits: {"smithy.api#documentation" => "<p>A structure containing the configuration details of the launch.</p>"}))
    GetLaunchOutput.type = Types::GetLaunchOutput
    GetProjectInput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project that you want to see the details of.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProjectInput.type = Types::GetProjectInput
    GetProjectOutput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: Project, location_name: 'project', traits: {"smithy.api#documentation" => "<p>A structure containing the configuration details of the project.</p>", "smithy.api#required" => {}}))
    GetProjectOutput.type = Types::GetProjectOutput
    GetSegmentInput.add_member(:segment, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentRef, location_name: 'segment', traits: {"smithy.api#documentation" => "<p>The ARN of the segment to return information for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentInput.type = Types::GetSegmentInput
    GetSegmentOutput.add_member(:segment, Smithy::Schema::Shapes::ShapeRef.new(shape: Segment, location_name: 'segment', traits: {"smithy.api#documentation" => "<p>A structure that contains the complete information about the segment.</p>", "smithy.api#required" => {}}))
    GetSegmentOutput.type = Types::GetSegmentOutput
    GroupToWeightMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName)
    GroupToWeightMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: SplitWeight)
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    Launch.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the launch.</p>", "smithy.api#required" => {}}))
    Launch.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the launch.</p>", "smithy.api#required" => {}}))
    Launch.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project that contains the launch.</p>"}))
    Launch.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current state of the launch.</p>", "smithy.api#required" => {}}))
    Launch.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>If the launch was stopped, this is the string that was entered by the person who \n      stopped the launch, to explain why it was stopped.</p>"}))
    Launch.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the launch.</p>"}))
    Launch.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>The date and time that the launch is created.</p>", "smithy.api#required" => {}}))
    Launch.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The date and time that the launch was most recently updated.</p>", "smithy.api#required" => {}}))
    Launch.add_member(:execution, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchExecution, location_name: 'execution', traits: {"smithy.api#documentation" => "<p>A structure that contains information about the start and end times of the launch.</p>"}))
    Launch.add_member(:groups, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchGroupList, location_name: 'groups', traits: {"smithy.api#documentation" => "<p>An array of structures that define the feature variations that are being used in the launch.</p>"}))
    Launch.add_member(:metric_monitors, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricMonitorList, location_name: 'metricMonitors', traits: {"smithy.api#documentation" => "<p>An array of structures that define the metrics that are being used to monitor the launch performance.</p>"}))
    Launch.add_member(:randomization_salt, Smithy::Schema::Shapes::ShapeRef.new(shape: RandomizationSalt, location_name: 'randomizationSalt', traits: {"smithy.api#documentation" => "<p>This value is used when Evidently assigns a particular user session to the launch, to help create a randomization ID\n      to determine which variation the user session is served. This randomization ID is a combination of the entity ID\n      and <code>randomizationSalt</code>.</p>"}))
    Launch.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of launch.</p>", "smithy.api#required" => {}}))
    Launch.add_member(:scheduled_splits_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledSplitsLaunchDefinition, location_name: 'scheduledSplitsDefinition', traits: {"smithy.api#documentation" => "<p>An array of structures that define the traffic allocation percentages among the feature\n      variations during each step of the launch.</p>"}))
    Launch.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tag keys and values associated with this launch.</p>"}))
    Launch.type = Types::Launch
    LaunchExecution.add_member(:started_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startedTime', traits: {"smithy.api#documentation" => "<p>The date and time that the launch started.</p>"}))
    LaunchExecution.add_member(:ended_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endedTime', traits: {"smithy.api#documentation" => "<p>The date and time that the launch ended.</p>"}))
    LaunchExecution.type = Types::LaunchExecution
    LaunchGroup.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the launch group.</p>", "smithy.api#required" => {}}))
    LaunchGroup.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the launch group.</p>"}))
    LaunchGroup.add_member(:feature_variations, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureToVariationMap, location_name: 'featureVariations', traits: {"smithy.api#documentation" => "<p>The feature variation for this launch group. This is a key-value pair.</p>", "smithy.api#required" => {}}))
    LaunchGroup.type = Types::LaunchGroup
    LaunchGroupConfig.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for this launch group.</p>", "smithy.api#required" => {}}))
    LaunchGroupConfig.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the launch group.</p>"}))
    LaunchGroupConfig.add_member(:feature, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureName, location_name: 'feature', traits: {"smithy.api#documentation" => "<p>The feature that this launch is using.</p>", "smithy.api#required" => {}}))
    LaunchGroupConfig.add_member(:variation, Smithy::Schema::Shapes::ShapeRef.new(shape: VariationName, location_name: 'variation', traits: {"smithy.api#documentation" => "<p>The feature variation to use for this launch group.</p>", "smithy.api#required" => {}}))
    LaunchGroupConfig.type = Types::LaunchGroupConfig
    LaunchGroupConfigList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchGroupConfig)
    LaunchGroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchGroup)
    LaunchesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Launch)
    ListExperimentsInput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project to return the experiment list from.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListExperimentsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxExperiments, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in the response.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListExperimentsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to use when requesting the next set of results. You received this token from a previous \n       <code>ListExperiments</code> operation.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListExperimentsInput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Use this optional parameter to limit the returned results to only the experiments with the status that you specify here.</p>", "smithy.api#httpQuery" => "status"}))
    ListExperimentsInput.type = Types::ListExperimentsInput
    ListExperimentsOutput.add_member(:experiments, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentList, location_name: 'experiments', traits: {"smithy.api#documentation" => "<p>An array of structures that contain the configuration details of the experiments in the\n      specified project.</p>"}))
    ListExperimentsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to use in a subsequent <code>ListExperiments</code> operation to return\n       the next set of results.</p>"}))
    ListExperimentsOutput.type = Types::ListExperimentsOutput
    ListFeaturesInput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project to return the feature list from.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFeaturesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxFeatures, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in the response.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListFeaturesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to use when requesting the next set of results. You received this token from a previous \n       <code>ListFeatures</code> operation.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListFeaturesInput.type = Types::ListFeaturesInput
    ListFeaturesOutput.add_member(:features, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureSummariesList, location_name: 'features', traits: {"smithy.api#documentation" => "<p>An array of structures that contain the configuration details of the features in the\n       specified project.</p>"}))
    ListFeaturesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to use in a subsequent <code>ListFeatures</code> operation to return\n       the next set of results.</p>"}))
    ListFeaturesOutput.type = Types::ListFeaturesOutput
    ListLaunchesInput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project to return the launch list from.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListLaunchesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxLaunches, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in the response.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListLaunchesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to use when requesting the next set of results. You received this token from a previous \n       <code>ListLaunches</code> operation.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListLaunchesInput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Use this optional parameter to limit the returned results to only the launches with the status that you specify here.</p>", "smithy.api#httpQuery" => "status"}))
    ListLaunchesInput.type = Types::ListLaunchesInput
    ListLaunchesOutput.add_member(:launches, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchesList, location_name: 'launches', traits: {"smithy.api#documentation" => "<p>An array of structures that contain the configuration details of the launches in the\n       specified project.</p>"}))
    ListLaunchesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to use in a subsequent <code>ListLaunches</code> operation to return\n       the next set of results.</p>"}))
    ListLaunchesOutput.type = Types::ListLaunchesOutput
    ListProjectsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxProjects, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in the response.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListProjectsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to use when requesting the next set of results. You received this token from a previous \n       <code>ListProjects</code> operation.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListProjectsInput.type = Types::ListProjectsInput
    ListProjectsOutput.add_member(:projects, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSummariesList, location_name: 'projects', traits: {"smithy.api#documentation" => "<p>An array of structures that contain the configuration details of the projects in the Region.</p>"}))
    ListProjectsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to use in a subsequent <code>ListProjects</code> operation to return\n       the next set of results.</p>"}))
    ListProjectsOutput.type = Types::ListProjectsOutput
    ListSegmentReferencesInput.add_member(:segment, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentRef, location_name: 'segment', traits: {"smithy.api#documentation" => "<p>The ARN of the segment that you want to view information for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSegmentReferencesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxReferences, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in the response. If you omit this, the default of 50 is used.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListSegmentReferencesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to use when requesting the next set of results. You received this token from a previous \n      <code>ListSegmentReferences</code> operation.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListSegmentReferencesInput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentReferenceResourceType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Specifies whether to return information about launches or experiments that use this segment.</p>", "smithy.api#httpQuery" => "type", "smithy.api#required" => {}}))
    ListSegmentReferencesInput.type = Types::ListSegmentReferencesInput
    ListSegmentReferencesOutput.add_member(:referenced_by, Smithy::Schema::Shapes::ShapeRef.new(shape: RefResourceList, location_name: 'referencedBy', traits: {"smithy.api#documentation" => "<p>An array of structures, where each structure contains information about one experiment or launch that\n      uses this segment.  </p>"}))
    ListSegmentReferencesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to use in a subsequent <code>ListSegmentReferences</code> operation to return\n      the next set of results.</p>"}))
    ListSegmentReferencesOutput.type = Types::ListSegmentReferencesOutput
    ListSegmentsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSegments, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in the response. If you omit this, the default of 50 is used.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListSegmentsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to use when requesting the next set of results. You received this token from a previous \n      <code>ListSegments</code> operation.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListSegmentsInput.type = Types::ListSegmentsInput
    ListSegmentsOutput.add_member(:segments, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentList, location_name: 'segments', traits: {"smithy.api#documentation" => "<p>An array of structures that contain information about the segments in this Region.</p>"}))
    ListSegmentsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to use in a subsequent <code>ListSegments</code> operation to return\n      the next set of results.</p>"}))
    ListSegmentsOutput.type = Types::ListSegmentsOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource that you want to see the tags of.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tag keys and values associated with the resource you specified.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    MetricDefinition.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CwDimensionSafeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the metric.</p>"}))
    MetricDefinition.add_member(:entity_id_key, Smithy::Schema::Shapes::ShapeRef.new(shape: JsonPath, location_name: 'entityIdKey', traits: {"smithy.api#documentation" => "<p>The entity, such as a user or session, that does an action that causes a metric\n      value to be recorded.</p>"}))
    MetricDefinition.add_member(:value_key, Smithy::Schema::Shapes::ShapeRef.new(shape: JsonPath, location_name: 'valueKey', traits: {"smithy.api#documentation" => "<p>The value that is tracked to produce the metric.</p>"}))
    MetricDefinition.add_member(:event_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: JsonValue, location_name: 'eventPattern', traits: {"smithy.api#documentation" => "<p>The EventBridge event pattern that defines how the metric is recorded.</p>\n         <p>For more information about EventBridge event patterns, see \n       <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html\">Amazon EventBridge event patterns</a>.</p>"}))
    MetricDefinition.add_member(:unit_label, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricUnitLabel, location_name: 'unitLabel', traits: {"smithy.api#documentation" => "<p>The label for the units that the metric is measuring.</p>"}))
    MetricDefinition.type = Types::MetricDefinition
    MetricDefinitionConfig.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CwDimensionSafeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the metric.</p>", "smithy.api#required" => {}}))
    MetricDefinitionConfig.add_member(:entity_id_key, Smithy::Schema::Shapes::ShapeRef.new(shape: JsonPath, location_name: 'entityIdKey', traits: {"smithy.api#documentation" => "<p>The entity, such as a user or session, that does an action that causes a metric\n       value to be recorded. An example is <code>userDetails.userID</code>.</p>", "smithy.api#required" => {}}))
    MetricDefinitionConfig.add_member(:value_key, Smithy::Schema::Shapes::ShapeRef.new(shape: JsonPath, location_name: 'valueKey', traits: {"smithy.api#documentation" => "<p>The value that is tracked to produce the metric.</p>", "smithy.api#required" => {}}))
    MetricDefinitionConfig.add_member(:event_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: JsonValue, location_name: 'eventPattern', traits: {"smithy.api#documentation" => "<p>The EventBridge event pattern that defines how the metric is recorded.</p>\n         <p>For more information about EventBridge event patterns, see \n       <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html\">Amazon EventBridge event patterns</a>.</p>", "smithy.api#length" => {"max" => 1024}}))
    MetricDefinitionConfig.add_member(:unit_label, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricUnitLabel, location_name: 'unitLabel', traits: {"smithy.api#documentation" => "<p>A label for the units that the metric is measuring.</p>"}))
    MetricDefinitionConfig.type = Types::MetricDefinitionConfig
    MetricGoal.add_member(:metric_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinition, location_name: 'metricDefinition', traits: {"smithy.api#documentation" => "<p>A structure that contains details about the metric.</p>", "smithy.api#required" => {}}))
    MetricGoal.add_member(:desired_change, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeDirectionEnum, location_name: 'desiredChange', traits: {"smithy.api#documentation" => "<p>\n            <code>INCREASE</code> means that a variation with a higher number for this metric is performing \n      better.</p>\n         <p>\n            <code>DECREASE</code> means that a variation with a lower number for this metric is performing \n     better.</p>"}))
    MetricGoal.type = Types::MetricGoal
    MetricGoalConfig.add_member(:metric_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinitionConfig, location_name: 'metricDefinition', traits: {"smithy.api#documentation" => "<p>A structure that contains details about the metric.</p>", "smithy.api#required" => {}}))
    MetricGoalConfig.add_member(:desired_change, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeDirectionEnum, location_name: 'desiredChange', traits: {"smithy.api#documentation" => "<p>\n            <code>INCREASE</code> means that a variation with a higher number for this metric is performing \n       better.</p>\n         <p>\n            <code>DECREASE</code> means that a variation with a lower number for this metric is performing \n       better.</p>"}))
    MetricGoalConfig.type = Types::MetricGoalConfig
    MetricGoalConfigList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricGoalConfig)
    MetricGoalsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricGoal)
    MetricMonitor.add_member(:metric_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinition, location_name: 'metricDefinition', traits: {"smithy.api#documentation" => "<p>A structure that defines the metric.</p>", "smithy.api#required" => {}}))
    MetricMonitor.type = Types::MetricMonitor
    MetricMonitorConfig.add_member(:metric_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinitionConfig, location_name: 'metricDefinition', traits: {"smithy.api#documentation" => "<p>A structure that defines the metric.</p>", "smithy.api#required" => {}}))
    MetricMonitorConfig.type = Types::MetricMonitorConfig
    MetricMonitorConfigList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricMonitorConfig)
    MetricMonitorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricMonitor)
    MetricNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CwDimensionSafeName)
    OnlineAbConfig.add_member(:control_treatment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentName, location_name: 'controlTreatmentName', traits: {"smithy.api#documentation" => "<p>The name of the variation that is to be the default variation that the other variations are compared to.</p>"}))
    OnlineAbConfig.add_member(:treatment_weights, Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentToWeightMap, location_name: 'treatmentWeights', traits: {"smithy.api#documentation" => "<p>A set of key-value pairs. The keys are variation names, and the values are the portion\n      of experiment traffic to be assigned to that variation. Specify the traffic portion in\n      thousandths of a percent, so 20,000 for a variation would allocate 20% of the experiment\n      traffic to that variation.</p>"}))
    OnlineAbConfig.type = Types::OnlineAbConfig
    OnlineAbDefinition.add_member(:control_treatment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentName, location_name: 'controlTreatmentName', traits: {"smithy.api#documentation" => "<p>The name of the variation that is the default variation that the other variations are compared to.</p>"}))
    OnlineAbDefinition.add_member(:treatment_weights, Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentToWeightMap, location_name: 'treatmentWeights', traits: {"smithy.api#documentation" => "<p>A set of key-value pairs.  The keys are variation names, and the values are the portion\n      of experiment traffic to be assigned to that variation. The traffic portion is specified in\n      thousandths of a percent, so 20,000 for a variation would allocate 20% of the experiment\n      traffic to that variation.</p>"}))
    OnlineAbDefinition.type = Types::OnlineAbDefinition
    Project.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project.</p>", "smithy.api#required" => {}}))
    Project.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the project.</p>", "smithy.api#required" => {}}))
    Project.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current state of the project.</p>", "smithy.api#required" => {}}))
    Project.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The user-entered description of the project.</p>"}))
    Project.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>The date and time that the project is created.</p>", "smithy.api#required" => {}}))
    Project.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The date and time that the project was most recently updated.</p>", "smithy.api#required" => {}}))
    Project.add_member(:feature_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'featureCount', traits: {"smithy.api#documentation" => "<p>The number of features currently in the project.</p>"}))
    Project.add_member(:launch_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'launchCount', traits: {"smithy.api#documentation" => "<p>The number of launches currently in the project. This includes all launches that have been created\n       and not deleted, whether they are ongoing or not.</p>"}))
    Project.add_member(:active_launch_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'activeLaunchCount', traits: {"smithy.api#documentation" => "<p>The number of ongoing launches currently in the project.</p>"}))
    Project.add_member(:experiment_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'experimentCount', traits: {"smithy.api#documentation" => "<p>The number of experiments currently in the project. This includes all experiments that have been created\n      and not deleted, whether they are ongoing or not.</p>"}))
    Project.add_member(:active_experiment_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'activeExperimentCount', traits: {"smithy.api#documentation" => "<p>The number of ongoing experiments currently in the project.</p>"}))
    Project.add_member(:data_delivery, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectDataDelivery, location_name: 'dataDelivery', traits: {"smithy.api#documentation" => "<p>A structure that contains information about where Evidently is to store\n       evaluation events for longer term storage.</p>"}))
    Project.add_member(:app_config_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectAppConfigResource, location_name: 'appConfigResource', traits: {"smithy.api#documentation" => "<p>This structure defines the configuration of how your application \n      integrates with AppConfig to run client-side evaluation.</p>"}))
    Project.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tag keys and values associated with this project.</p>"}))
    Project.type = Types::Project
    ProjectAppConfigResource.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppConfigResourceId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The ID of the AppConfig application to use for client-side evaluation. </p>", "smithy.api#required" => {}}))
    ProjectAppConfigResource.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppConfigResourceId, location_name: 'environmentId', traits: {"smithy.api#documentation" => "<p>The ID of the AppConfig environment to use for client-side evaluation. This must be an \n    environment that is within the application that you specify for <code>applicationId</code>.</p>", "smithy.api#required" => {}}))
    ProjectAppConfigResource.add_member(:configuration_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppConfigResourceId, location_name: 'configurationProfileId', traits: {"smithy.api#documentation" => "<p>The ID of the AppConfig profile to use for client-side evaluation. </p>", "smithy.api#required" => {}}))
    ProjectAppConfigResource.type = Types::ProjectAppConfigResource
    ProjectAppConfigResourceConfig.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppConfigResourceId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The ID of the AppConfig application to use for client-side evaluation. </p>"}))
    ProjectAppConfigResourceConfig.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppConfigResourceId, location_name: 'environmentId', traits: {"smithy.api#documentation" => "<p>The ID of the AppConfig environment to use for client-side evaluation. This must be an \n      environment that is within the application that you specify for <code>applicationId</code>.</p>"}))
    ProjectAppConfigResourceConfig.type = Types::ProjectAppConfigResourceConfig
    ProjectDataDelivery.add_member(:s3_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Destination, location_name: 's3Destination', traits: {"smithy.api#documentation" => "<p>If the project stores evaluation events in an Amazon S3 bucket, this structure\n       stores the bucket name and bucket prefix.</p>"}))
    ProjectDataDelivery.add_member(:cloud_watch_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsDestination, location_name: 'cloudWatchLogs', traits: {"smithy.api#documentation" => "<p>If the project stores evaluation events in CloudWatch Logs, this structure\n      stores the log group name.</p>"}))
    ProjectDataDelivery.type = Types::ProjectDataDelivery
    ProjectDataDeliveryConfig.add_member(:s3_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: S3DestinationConfig, location_name: 's3Destination', traits: {"smithy.api#documentation" => "<p>If the project stores evaluation events in an Amazon S3 bucket, this structure\n       stores the bucket name and bucket prefix.</p>"}))
    ProjectDataDeliveryConfig.add_member(:cloud_watch_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsDestinationConfig, location_name: 'cloudWatchLogs', traits: {"smithy.api#documentation" => "<p>If the project stores evaluation events in CloudWatch Logs, this structure\n       stores the log group name.</p>"}))
    ProjectDataDeliveryConfig.type = Types::ProjectDataDeliveryConfig
    ProjectSummariesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSummary)
    ProjectSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project.</p>", "smithy.api#required" => {}}))
    ProjectSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the project.</p>", "smithy.api#required" => {}}))
    ProjectSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current state of the project.</p>", "smithy.api#required" => {}}))
    ProjectSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the project.</p>"}))
    ProjectSummary.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>The date and time that the project is created.</p>", "smithy.api#required" => {}}))
    ProjectSummary.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The date and time that the project was most recently updated.</p>", "smithy.api#required" => {}}))
    ProjectSummary.add_member(:feature_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'featureCount', traits: {"smithy.api#documentation" => "<p>The number of features currently in the project.</p>"}))
    ProjectSummary.add_member(:launch_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'launchCount', traits: {"smithy.api#documentation" => "<p>The number of launches currently in the project, including launches that are ongoing, completed, and not started yet.</p>"}))
    ProjectSummary.add_member(:active_launch_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'activeLaunchCount', traits: {"smithy.api#documentation" => "<p>The number of ongoing launches currently in the project.</p>"}))
    ProjectSummary.add_member(:experiment_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'experimentCount', traits: {"smithy.api#documentation" => "<p>The number of experiments currently in the project.</p>"}))
    ProjectSummary.add_member(:active_experiment_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'activeExperimentCount', traits: {"smithy.api#documentation" => "<p>The number of experiments currently in the project.</p>"}))
    ProjectSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tag keys and values associated with this project.</p>"}))
    ProjectSummary.type = Types::ProjectSummary
    PutProjectEventsInput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project to write the events to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutProjectEventsInput.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: EventList, location_name: 'events', traits: {"smithy.api#documentation" => "<p>An array of event structures that contain the performance data that is being sent to\n      Evidently.</p>", "smithy.api#required" => {}}))
    PutProjectEventsInput.type = Types::PutProjectEventsInput
    PutProjectEventsOutput.add_member(:failed_event_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'failedEventCount', traits: {"smithy.api#documentation" => "<p>The number of events in the operation that could not be used by Evidently.</p>"}))
    PutProjectEventsOutput.add_member(:event_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PutProjectEventsResultEntryList, location_name: 'eventResults', traits: {"smithy.api#documentation" => "<p>A structure that contains Evidently's response to the sent events, including an event ID and \n      error codes, if any.</p>"}))
    PutProjectEventsOutput.type = Types::PutProjectEventsOutput
    PutProjectEventsResultEntry.add_member(:event_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'eventId', traits: {"smithy.api#documentation" => "<p>A unique ID assigned to this <code>PutProjectEvents</code> operation. </p>"}))
    PutProjectEventsResultEntry.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCodeEnum, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>If the <code>PutProjectEvents</code> operation has an error, the error code is returned\n      here.</p>"}))
    PutProjectEventsResultEntry.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>If the <code>PutProjectEvents</code> operation has an error, the error message is\n      returned here.</p>"}))
    PutProjectEventsResultEntry.type = Types::PutProjectEventsResultEntry
    PutProjectEventsResultEntryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PutProjectEventsResultEntry)
    RefResource.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the experiment or launch.</p>", "smithy.api#required" => {}}))
    RefResource.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Specifies whether the resource that this structure contains information about is an experiment or a launch.</p>", "smithy.api#required" => {}}))
    RefResource.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the experiment or launch.</p>"}))
    RefResource.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the experiment or launch.</p>"}))
    RefResource.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The day and time that this experiment or launch started.</p>"}))
    RefResource.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The day and time that this experiment or launch ended.</p>"}))
    RefResource.add_member(:last_updated_on, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'lastUpdatedOn', traits: {"smithy.api#documentation" => "<p>The day and time that this experiment or launch was most recently updated.</p>"}))
    RefResource.type = Types::RefResource
    RefResourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RefResource)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource that caused the exception.</p>"}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource that is associated with the error.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3Destination.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketSafeName, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p>The name of the bucket in which Evidently stores evaluation events.</p>"}))
    S3Destination.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3PrefixSafeName, location_name: 'prefix', traits: {"smithy.api#documentation" => "<p>The bucket prefix in which Evidently stores evaluation events.</p>"}))
    S3Destination.type = Types::S3Destination
    S3DestinationConfig.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketSafeName, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p>The name of the bucket in which Evidently stores evaluation events.</p>"}))
    S3DestinationConfig.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3PrefixSafeName, location_name: 'prefix', traits: {"smithy.api#documentation" => "<p>The bucket prefix in which Evidently stores evaluation events.</p>"}))
    S3DestinationConfig.type = Types::S3DestinationConfig
    ScheduledSplit.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The date and time that this step of the launch starts.</p>", "smithy.api#required" => {}}))
    ScheduledSplit.add_member(:group_weights, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupToWeightMap, location_name: 'groupWeights', traits: {"smithy.api#documentation" => "<p>The traffic allocation percentages among the feature variations during one step of a\n      launch. This is a set of key-value pairs.   The keys are variation names. The values represent\n      the percentage of traffic to allocate to that variation during this step.</p>\n         <p>The values is expressed in thousandths of a percent,\n       so assigning a weight of 50000 assigns 50% of traffic to that variation.</p>\n         <p>If the sum of the weights for all the variations in a segment override does not add up to 100,000, \n     then the remaining traffic that matches this segment is not assigned by this segment override, and instead moves\n     on to the next segment override or the default traffic split.</p>"}))
    ScheduledSplit.add_member(:segment_overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentOverridesList, location_name: 'segmentOverrides', traits: {"smithy.api#documentation" => "<p>Use this parameter to specify different traffic splits for one or more audience <i>segments</i>. \n      A segment\n      is a portion of your audience that share one or more characteristics. Examples could be Chrome browser users, \n      users in Europe, or Firefox browser users in Europe who also fit other criteria that your application collects,\n      such as age.</p>\n         <p>This parameter is an array of up to six segment override objects. Each of these objects specifies a segment\n    that you have already created, and defines the traffic split for that segment.</p>"}))
    ScheduledSplit.type = Types::ScheduledSplit
    ScheduledSplitConfig.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The date and time that this step of the launch starts.</p>", "smithy.api#required" => {}}))
    ScheduledSplitConfig.add_member(:group_weights, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupToWeightMap, location_name: 'groupWeights', traits: {"smithy.api#documentation" => "<p>The traffic allocation percentages among the feature variations during one step of a\n      launch. This is a set of key-value pairs. The keys are variation names. The values represent\n      the percentage of traffic to allocate to that variation during this step.</p>\n         <p>The values is expressed in thousandths of a percent,\n       so assigning a weight of 50000 assigns 50% of traffic to that variation.</p>\n         <p>If the sum of the weights for all the variations in a segment override does not add up to 100,000, \n       then the remaining traffic that matches this segment is not assigned by this segment override, and instead moves\n       on to the next segment override or the default traffic split.</p>", "smithy.api#required" => {}}))
    ScheduledSplitConfig.add_member(:segment_overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentOverridesList, location_name: 'segmentOverrides', traits: {"smithy.api#documentation" => "<p>Use this parameter to specify different traffic splits for one or more audience <i>segments</i>. \n      A segment\n      is a portion of your audience that share one or more characteristics. Examples could be Chrome browser users, \n      users in Europe, or Firefox browser users in Europe who also fit other criteria that your application collects,\n      such as age.</p>\n         <p>This parameter is an array of up to six segment override objects. Each of these objects specifies a segment\n      that you have already created, and defines the traffic split for that segment.</p>"}))
    ScheduledSplitConfig.type = Types::ScheduledSplitConfig
    ScheduledSplitConfigList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledSplitConfig)
    ScheduledSplitsLaunchConfig.add_member(:steps, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledSplitConfigList, location_name: 'steps', traits: {"smithy.api#documentation" => "<p>An array of structures that define the traffic allocation percentages among the feature\n      variations during each step of the launch. This also defines the start time of each\n      step.</p>", "smithy.api#required" => {}}))
    ScheduledSplitsLaunchConfig.type = Types::ScheduledSplitsLaunchConfig
    ScheduledSplitsLaunchDefinition.add_member(:steps, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledStepList, location_name: 'steps', traits: {"smithy.api#documentation" => "<p>An array of structures that define the traffic allocation percentages among the feature\n      variations during each step of the launch. This also defines the start time of each\n      step.</p>"}))
    ScheduledSplitsLaunchDefinition.type = Types::ScheduledSplitsLaunchDefinition
    ScheduledStepList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledSplit)
    Segment.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the segment.</p>", "smithy.api#required" => {}}))
    Segment.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the segment.</p>", "smithy.api#required" => {}}))
    Segment.add_member(:pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentPattern, location_name: 'pattern', traits: {"smithy.api#documentation" => "<p>The pattern that defines the attributes to use to evalute whether a user session will be in the segment. \n    For more information about the pattern syntax, see \n      <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html\">Segment rule pattern syntax</a>.</p>", "smithy.api#required" => {}}))
    Segment.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>The date and time that this segment was created.</p>", "smithy.api#required" => {}}))
    Segment.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The date and time that this segment was most recently updated.</p>", "smithy.api#required" => {}}))
    Segment.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The customer-created description for this segment.</p>"}))
    Segment.add_member(:experiment_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'experimentCount', traits: {"smithy.api#documentation" => "<p>The number of experiments that this segment is used in. This count includes all current experiments, not just\n    those that are currently running.</p>"}))
    Segment.add_member(:launch_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'launchCount', traits: {"smithy.api#documentation" => "<p>The number of launches that this segment is used in. This count includes all current launches, not just\n      those that are currently running.</p>"}))
    Segment.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tag keys and values associated with this launch.</p>"}))
    Segment.type = Types::Segment
    SegmentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Segment)
    SegmentOverride.add_member(:segment, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentRef, location_name: 'segment', traits: {"smithy.api#documentation" => "<p>The ARN of the segment to use.</p>", "smithy.api#required" => {}}))
    SegmentOverride.add_member(:evaluation_order, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'evaluationOrder', traits: {"smithy.api#documentation" => "<p>A number indicating the order to use to evaluate segment overrides, if there are more\n    than one. Segment overrides with lower numbers are evaluated first.</p>", "smithy.api#required" => {}}))
    SegmentOverride.add_member(:weights, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupToWeightMap, location_name: 'weights', traits: {"smithy.api#documentation" => "<p>The traffic allocation percentages among the feature variations to assign to this \n      segment. This is a set of key-value pairs.   The keys are variation names. The values represent\n      the amount of traffic to allocate to that variation for this segment. This is expressed in thousandths of a percent,\n    so a weight of 50000 represents 50% of traffic.</p>", "smithy.api#required" => {}}))
    SegmentOverride.type = Types::SegmentOverride
    SegmentOverridesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentOverride)
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ServiceQuotaExceededException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource that caused the exception.</p>"}))
    ServiceQuotaExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource that is associated with the error.</p>"}))
    ServiceQuotaExceededException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>The ID of the service that is associated with the error.</p>"}))
    ServiceQuotaExceededException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode', traits: {"smithy.api#documentation" => "<p>The ID of the service quota that was exceeded.</p>"}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    StartExperimentInput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project that contains the experiment to start.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartExperimentInput.add_member(:experiment, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentName, location_name: 'experiment', traits: {"smithy.api#documentation" => "<p>The name of the experiment to start.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartExperimentInput.add_member(:analysis_complete_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'analysisCompleteTime', traits: {"smithy.api#documentation" => "<p>The date and time to end the experiment. This must be no more than 30 days after\n      the experiment starts.</p>", "smithy.api#required" => {}}))
    StartExperimentInput.type = Types::StartExperimentInput
    StartExperimentOutput.add_member(:started_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startedTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the experiment started.</p>"}))
    StartExperimentOutput.type = Types::StartExperimentOutput
    StartLaunchInput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project that contains the launch to start.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartLaunchInput.add_member(:launch, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchName, location_name: 'launch', traits: {"smithy.api#documentation" => "<p>The name of the launch to start.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartLaunchInput.type = Types::StartLaunchInput
    StartLaunchOutput.add_member(:launch, Smithy::Schema::Shapes::ShapeRef.new(shape: Launch, location_name: 'launch', traits: {"smithy.api#documentation" => "<p>A structure that contains information about the launch that was started.</p>", "smithy.api#required" => {}}))
    StartLaunchOutput.type = Types::StartLaunchOutput
    StopExperimentInput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project that contains the experiment to stop.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopExperimentInput.add_member(:experiment, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentName, location_name: 'experiment', traits: {"smithy.api#documentation" => "<p>The name of the experiment to stop.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopExperimentInput.add_member(:desired_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentStopDesiredState, location_name: 'desiredState', traits: {"smithy.api#documentation" => "<p>Specify whether the experiment is to be considered <code>COMPLETED</code> or \n      <code>CANCELLED</code> after it stops.</p>"}))
    StopExperimentInput.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>A string that describes why you are stopping the experiment.</p>"}))
    StopExperimentInput.type = Types::StopExperimentInput
    StopExperimentOutput.add_member(:ended_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endedTime', traits: {"smithy.api#documentation" => "<p>The date and time that the experiment stopped.</p>"}))
    StopExperimentOutput.type = Types::StopExperimentOutput
    StopLaunchInput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project that contains the launch that you want to stop.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopLaunchInput.add_member(:launch, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchName, location_name: 'launch', traits: {"smithy.api#documentation" => "<p>The name of the launch to stop.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopLaunchInput.add_member(:desired_state, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchStopDesiredState, location_name: 'desiredState', traits: {"smithy.api#documentation" => "<p>Specify whether to consider the launch as <code>COMPLETED</code> or\n        <code>CANCELLED</code> after it stops.</p>"}))
    StopLaunchInput.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>A string that describes why you are stopping the launch.</p>"}))
    StopLaunchInput.type = Types::StopLaunchInput
    StopLaunchOutput.add_member(:ended_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endedTime', traits: {"smithy.api#documentation" => "<p>The date and time that the launch stopped.</p>"}))
    StopLaunchOutput.type = Types::StopLaunchOutput
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the CloudWatch Evidently resource that you're adding tags to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of key-value pairs to associate with the resource.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TestSegmentPatternInput.add_member(:pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentPattern, location_name: 'pattern', traits: {"smithy.api#documentation" => "<p>The pattern to test.</p>", "smithy.api#required" => {}}))
    TestSegmentPatternInput.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: JsonValue, location_name: 'payload', traits: {"smithy.api#documentation" => "<p>A sample <code>evaluationContext</code> JSON block to test against the specified pattern.</p>", "smithy.api#required" => {}}))
    TestSegmentPatternInput.type = Types::TestSegmentPatternInput
    TestSegmentPatternOutput.add_member(:match, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'match', traits: {"smithy.api#documentation" => "<p>Returns <code>true</code> if the pattern matches the payload.</p>", "smithy.api#required" => {}}))
    TestSegmentPatternOutput.type = Types::TestSegmentPatternOutput
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ThrottlingException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>The ID of the service that is associated with the error.</p>"}))
    ThrottlingException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode', traits: {"smithy.api#documentation" => "<p>The ID of the service quota that was exceeded.</p>"}))
    ThrottlingException.type = Types::ThrottlingException
    TimestampList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp)
    Treatment.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of this treatment.</p>", "smithy.api#required" => {}}))
    Treatment.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the treatment.</p>"}))
    Treatment.add_member(:feature_variations, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureToVariationMap, location_name: 'featureVariations', traits: {"smithy.api#documentation" => "<p>The feature variation used for this treatment. This is a key-value pair. The key is the\n      feature name, and the value is the variation name.</p>"}))
    Treatment.type = Types::Treatment
    TreatmentConfig.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for this treatment.</p>", "smithy.api#required" => {}}))
    TreatmentConfig.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for this treatment.</p>"}))
    TreatmentConfig.add_member(:feature, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureName, location_name: 'feature', traits: {"smithy.api#documentation" => "<p>The feature that this experiment is testing.</p>", "smithy.api#required" => {}}))
    TreatmentConfig.add_member(:variation, Smithy::Schema::Shapes::ShapeRef.new(shape: VariationName, location_name: 'variation', traits: {"smithy.api#documentation" => "<p>The name of the variation to use as this treatment in the experiment.</p>", "smithy.api#required" => {}}))
    TreatmentConfig.type = Types::TreatmentConfig
    TreatmentConfigList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentConfig)
    TreatmentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Treatment)
    TreatmentNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentName)
    TreatmentToWeightMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentName)
    TreatmentToWeightMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: SplitWeight)
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the CloudWatch Evidently resource that you're removing tags from.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The list of tag keys to remove from the resource.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateExperimentInput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project that contains the experiment that you want to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateExperimentInput.add_member(:experiment, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentName, location_name: 'experiment', traits: {"smithy.api#documentation" => "<p>The name of the experiment to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateExperimentInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>An optional description of the experiment.</p>"}))
    UpdateExperimentInput.add_member(:treatments, Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentConfigList, location_name: 'treatments', traits: {"smithy.api#documentation" => "<p>An array of structures that define the variations being tested in the experiment.</p>"}))
    UpdateExperimentInput.add_member(:metric_goals, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricGoalConfigList, location_name: 'metricGoals', traits: {"smithy.api#documentation" => "<p>An array of structures that defines the metrics used for the experiment, and whether a higher\n      or lower value for each metric is the goal.</p>"}))
    UpdateExperimentInput.add_member(:randomization_salt, Smithy::Schema::Shapes::ShapeRef.new(shape: RandomizationSalt, location_name: 'randomizationSalt', traits: {"smithy.api#documentation" => "<p>When Evidently assigns a particular user session to an experiment, it must use a randomization ID\n      to determine which variation the user session is served. This randomization ID is a combination of the entity ID\n      and <code>randomizationSalt</code>. If you omit <code>randomizationSalt</code>, Evidently uses\n      the experiment name as the <code>randomizationSalt</code>.</p>"}))
    UpdateExperimentInput.add_member(:sampling_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: SplitWeight, location_name: 'samplingRate', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The portion of the available audience that you want to allocate to this experiment, in thousandths of a percent. The available audience\n      is the total audience minus the audience that you have allocated to overrides or current launches of\n      this feature.</p>\n         <p>This is represented in thousandths of a percent. For example, specify 20,000 to allocate 20% of the available audience.</p>"}))
    UpdateExperimentInput.add_member(:segment, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentRef, location_name: 'segment', traits: {"smithy.api#documentation" => "<p>Adds an audience <i>segment</i> to an experiment. When a segment is used in an experiment, only\n      user sessions that match the segment pattern are used in the experiment. You can't use this parameter if the \n      experiment is currently\n      running.</p>"}))
    UpdateExperimentInput.add_member(:remove_segment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'removeSegment', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Removes a segment from being used in an experiment. You can't use this parameter if the experiment is currently\n      running.</p>"}))
    UpdateExperimentInput.add_member(:online_ab_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OnlineAbConfig, location_name: 'onlineAbConfig', traits: {"smithy.api#documentation" => "<p>A structure that contains the configuration of which variation o use as the \"control\"\n      version. The \"control\" version is used for comparison with other variations. This structure\n      also specifies how much experiment traffic is allocated to each variation.</p>"}))
    UpdateExperimentInput.type = Types::UpdateExperimentInput
    UpdateExperimentOutput.add_member(:experiment, Smithy::Schema::Shapes::ShapeRef.new(shape: Experiment, location_name: 'experiment', traits: {"smithy.api#documentation" => "<p>A structure containing the configuration details of the experiment\n    that was updated.</p>", "smithy.api#required" => {}}))
    UpdateExperimentOutput.type = Types::UpdateExperimentOutput
    UpdateFeatureInput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project that contains the feature to be updated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFeatureInput.add_member(:feature, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureName, location_name: 'feature', traits: {"smithy.api#documentation" => "<p>The name of the feature to be updated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFeatureInput.add_member(:evaluation_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureEvaluationStrategy, location_name: 'evaluationStrategy', traits: {"smithy.api#documentation" => "<p>Specify <code>ALL_RULES</code> to activate the traffic allocation specified by any ongoing\n      launches or experiments. Specify <code>DEFAULT_VARIATION</code> to serve the default variation\n      to all users instead.</p>"}))
    UpdateFeatureInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>An optional description of the feature.</p>"}))
    UpdateFeatureInput.add_member(:add_or_update_variations, Smithy::Schema::Shapes::ShapeRef.new(shape: VariationConfigsList, location_name: 'addOrUpdateVariations', traits: {"smithy.api#documentation" => "<p>To update variation configurations for this feature, or add new ones, specify this structure.\n      In this array, include any variations that you want to add or update. If the array includes a variation name that\n      already exists for this feature, it is updated. If it includes a new variation name, it is added\n      as a new variation.</p>"}))
    UpdateFeatureInput.add_member(:remove_variations, Smithy::Schema::Shapes::ShapeRef.new(shape: VariationNameList, location_name: 'removeVariations', traits: {"smithy.api#documentation" => "<p>Removes a variation from the feature. If the variation you specify doesn't exist, then this \n    makes no change and does not report an error.</p>\n         <p>This operation fails if you try to remove a variation that is part of an \n    ongoing launch or experiment.</p>"}))
    UpdateFeatureInput.add_member(:default_variation, Smithy::Schema::Shapes::ShapeRef.new(shape: VariationName, location_name: 'defaultVariation', traits: {"smithy.api#documentation" => "<p>The name of the variation to use as the default variation. The default\n      variation is served to users who are not allocated to any ongoing launches\n      or experiments of this feature.</p>"}))
    UpdateFeatureInput.add_member(:entity_overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityOverrideMap, location_name: 'entityOverrides', traits: {"smithy.api#documentation" => "<p>Specified users that should always be served a specific variation of a feature. Each user\n      is specified by a key-value pair . For each key, specify a user by entering their user ID,\n      account ID, or some other identifier. For the value, specify the name of the variation that\n      they are to be served.</p>\n         <p>This parameter is limited to 2500 overrides or a total of 40KB. The 40KB limit includes an overhead of 6 bytes\n      per override.</p>"}))
    UpdateFeatureInput.type = Types::UpdateFeatureInput
    UpdateFeatureOutput.add_member(:feature, Smithy::Schema::Shapes::ShapeRef.new(shape: Feature, location_name: 'feature', traits: {"smithy.api#documentation" => "<p>A structure that contains information about the updated feature.</p>", "smithy.api#required" => {}}))
    UpdateFeatureOutput.type = Types::UpdateFeatureOutput
    UpdateLaunchInput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project that contains the launch that you want to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLaunchInput.add_member(:launch, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchName, location_name: 'launch', traits: {"smithy.api#documentation" => "<p>The name of the launch that is to be updated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLaunchInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>An optional description for the launch.</p>"}))
    UpdateLaunchInput.add_member(:groups, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchGroupConfigList, location_name: 'groups', traits: {"smithy.api#documentation" => "<p>An array of structures that contains the feature and variations that are to be used for\n      the launch.</p>"}))
    UpdateLaunchInput.add_member(:metric_monitors, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricMonitorConfigList, location_name: 'metricMonitors', traits: {"smithy.api#documentation" => "<p>An array of structures that define the metrics that will be used to monitor \n    the launch performance.</p>"}))
    UpdateLaunchInput.add_member(:randomization_salt, Smithy::Schema::Shapes::ShapeRef.new(shape: RandomizationSalt, location_name: 'randomizationSalt', traits: {"smithy.api#documentation" => "<p>When Evidently assigns a particular user session to a launch, it must use a randomization ID\n      to determine which variation the user session is served. This randomization ID is a combination of the entity ID\n      and <code>randomizationSalt</code>. If you omit <code>randomizationSalt</code>, Evidently uses\n      the launch name as the <code>randomizationSalt</code>.</p>"}))
    UpdateLaunchInput.add_member(:scheduled_splits_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledSplitsLaunchConfig, location_name: 'scheduledSplitsConfig', traits: {"smithy.api#documentation" => "<p>An array of structures that define the traffic allocation percentages among the feature\n      variations during each step of the launch.</p>"}))
    UpdateLaunchInput.type = Types::UpdateLaunchInput
    UpdateLaunchOutput.add_member(:launch, Smithy::Schema::Shapes::ShapeRef.new(shape: Launch, location_name: 'launch', traits: {"smithy.api#documentation" => "<p>A structure that contains the new configuration of the launch that was updated.</p>", "smithy.api#required" => {}}))
    UpdateLaunchOutput.type = Types::UpdateLaunchOutput
    UpdateProjectDataDeliveryInput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project that you want to modify the data storage options for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProjectDataDeliveryInput.add_member(:s3_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: S3DestinationConfig, location_name: 's3Destination', traits: {"smithy.api#documentation" => "<p>A structure containing the S3 bucket name and bucket prefix where you want to store evaluation events.</p>"}))
    UpdateProjectDataDeliveryInput.add_member(:cloud_watch_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsDestinationConfig, location_name: 'cloudWatchLogs', traits: {"smithy.api#documentation" => "<p>A structure containing the CloudWatch Logs log group where you want to store evaluation\n      events.</p>"}))
    UpdateProjectDataDeliveryInput.type = Types::UpdateProjectDataDeliveryInput
    UpdateProjectDataDeliveryOutput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: Project, location_name: 'project', traits: {"smithy.api#documentation" => "<p>A structure containing details about the project that you updated.</p>", "smithy.api#required" => {}}))
    UpdateProjectDataDeliveryOutput.type = Types::UpdateProjectDataDeliveryOutput
    UpdateProjectInput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectRef, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The name or ARN of the project to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProjectInput.add_member(:app_config_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectAppConfigResourceConfig, location_name: 'appConfigResource', traits: {"smithy.api#documentation" => "<p>Use this parameter if the project will use client-side evaluation powered by AppConfig. Client-side\n     evaluation allows your application to assign variations to user\n     sessions locally instead of by calling the <a href=\"https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_EvaluateFeature.html\">EvaluateFeature</a> operation. This \n     mitigates the latency and availability risks that come with an API call. allows\n      you to</p>\n         <p>This parameter is a structure that\n      contains information about the AppConfig application that will be used for client-side evaluation.</p>"}))
    UpdateProjectInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>An optional description of the project.</p>"}))
    UpdateProjectInput.type = Types::UpdateProjectInput
    UpdateProjectOutput.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: Project, location_name: 'project', traits: {"smithy.api#documentation" => "<p>A structure containing information about the updated project.</p>", "smithy.api#required" => {}}))
    UpdateProjectOutput.type = Types::UpdateProjectOutput
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>A reason for the error.</p>"}))
    ValidationException.add_member(:field_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList', traits: {"smithy.api#documentation" => "<p>The parameter that caused the exception.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The error name.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    VariableValue.add_member(:bool_value, Types::VariableValue::BoolValue, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'boolValue', traits: {"smithy.api#documentation" => "<p>If this feature uses the Boolean variation type, this field contains the Boolean value of\n      this variation.</p>"}))
    VariableValue.add_member(:string_value, Types::VariableValue::StringValue, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'stringValue', traits: {"smithy.api#documentation" => "<p>If this feature uses the string variation type, this field contains the string value of\n       this variation.</p>", "smithy.api#length" => {"max" => 512}}))
    VariableValue.add_member(:long_value, Types::VariableValue::LongValue, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'longValue', traits: {"smithy.api#documentation" => "<p>If this feature uses the long variation type, this field contains the long value of\n       this variation.</p>", "smithy.api#range" => {"min" => -9007199254740991, "max" => 9007199254740991}}))
    VariableValue.add_member(:double_value, Types::VariableValue::DoubleValue, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Double, location_name: 'doubleValue', traits: {"smithy.api#documentation" => "<p>If this feature uses the double integer variation type, this field contains the double integer value of\n       this variation.</p>"}))
    VariableValue.add_member(:unknown, Types::VariableValue::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    VariableValue.type = Types::VariableValue
    Variation.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: VariationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the variation.</p>"}))
    Variation.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: VariableValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value assigned to this variation.</p>"}))
    Variation.type = Types::Variation
    VariationConfig.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: VariationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the variation.</p>", "smithy.api#required" => {}}))
    VariationConfig.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: VariableValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value assigned to this variation.</p>", "smithy.api#required" => {}}))
    VariationConfig.type = Types::VariationConfig
    VariationConfigsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VariationConfig)
    VariationNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VariationName)
    VariationsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Variation)

    Evidently = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.evidently#Evidently"
      service.name = "Evidently"
      service.version = "2021-02-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Evidently", "arnNamespace" => "evidently"}, "aws.auth#sigv4" => {"name" => "evidently"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["Content-Type", "X-Amz-Date", "Authorization", "X-Api-Key", "X-Amz-Security-Token", "x-amz-content-sha256", "X-Amz-User-Agent"]}, "smithy.api#title" => "Amazon CloudWatch Evidently"}
      service.add_operation(:batch_evaluate_feature, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#BatchEvaluateFeature"
        operation.name = "BatchEvaluateFeature"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchEvaluateFeatureInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchEvaluateFeatureOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "dataplane."}, "smithy.api#http" => {"method" => "POST", "uri" => "/projects/{project}/evaluations", "code" => 200}, "smithy.api#tags" => ["dataplane"]}
      end)
      service.add_operation(:create_experiment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#CreateExperiment"
        operation.name = "CreateExperiment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExperimentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExperimentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/projects/{project}/experiments", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_feature, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#CreateFeature"
        operation.name = "CreateFeature"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFeatureInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFeatureOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/projects/{project}/features", "code" => 200}}
      end)
      service.add_operation(:create_launch, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#CreateLaunch"
        operation.name = "CreateLaunch"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLaunchInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLaunchOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/projects/{project}/launches", "code" => 200}}
      end)
      service.add_operation(:create_project, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#CreateProject"
        operation.name = "CreateProject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProjectInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProjectOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/projects", "code" => 200}}
      end)
      service.add_operation(:create_segment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#CreateSegment"
        operation.name = "CreateSegment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSegmentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSegmentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/segments", "code" => 200}}
      end)
      service.add_operation(:delete_experiment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#DeleteExperiment"
        operation.name = "DeleteExperiment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteExperimentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteExperimentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/projects/{project}/experiments/{experiment}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_feature, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#DeleteFeature"
        operation.name = "DeleteFeature"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFeatureInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFeatureOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/projects/{project}/features/{feature}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_launch, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#DeleteLaunch"
        operation.name = "DeleteLaunch"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLaunchInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLaunchOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/projects/{project}/launches/{launch}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_project, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#DeleteProject"
        operation.name = "DeleteProject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProjectInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProjectOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/projects/{project}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_segment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#DeleteSegment"
        operation.name = "DeleteSegment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSegmentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSegmentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/segments/{segment}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:evaluate_feature, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#EvaluateFeature"
        operation.name = "EvaluateFeature"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluateFeatureInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluateFeatureOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "dataplane."}, "smithy.api#http" => {"method" => "POST", "uri" => "/projects/{project}/evaluations/{feature}", "code" => 200}, "smithy.api#tags" => ["dataplane"]}
      end)
      service.add_operation(:get_experiment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#GetExperiment"
        operation.name = "GetExperiment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExperimentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExperimentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/projects/{project}/experiments/{experiment}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_experiment_results, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#GetExperimentResults"
        operation.name = "GetExperimentResults"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExperimentResultsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExperimentResultsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/projects/{project}/experiments/{experiment}/results", "code" => 200}}
      end)
      service.add_operation(:get_feature, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#GetFeature"
        operation.name = "GetFeature"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFeatureInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFeatureOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/projects/{project}/features/{feature}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_launch, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#GetLaunch"
        operation.name = "GetLaunch"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLaunchInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLaunchOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/projects/{project}/launches/{launch}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_project, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#GetProject"
        operation.name = "GetProject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetProjectInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetProjectOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/projects/{project}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_segment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#GetSegment"
        operation.name = "GetSegment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/segments/{segment}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_experiments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#ListExperiments"
        operation.name = "ListExperiments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExperimentsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExperimentsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/projects/{project}/experiments", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListExperiments.new
      end)
      service.add_operation(:list_features, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#ListFeatures"
        operation.name = "ListFeatures"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFeaturesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFeaturesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/projects/{project}/features", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFeatures.new
      end)
      service.add_operation(:list_launches, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#ListLaunches"
        operation.name = "ListLaunches"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLaunchesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLaunchesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/projects/{project}/launches", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListLaunches.new
      end)
      service.add_operation(:list_projects, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#ListProjects"
        operation.name = "ListProjects"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProjectsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProjectsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/projects", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListProjects.new
      end)
      service.add_operation(:list_segment_references, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#ListSegmentReferences"
        operation.name = "ListSegmentReferences"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSegmentReferencesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSegmentReferencesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/segments/{segment}/references", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSegmentReferences.new
      end)
      service.add_operation(:list_segments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#ListSegments"
        operation.name = "ListSegments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSegmentsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSegmentsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/segments", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSegments.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:put_project_events, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#PutProjectEvents"
        operation.name = "PutProjectEvents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutProjectEventsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutProjectEventsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "dataplane."}, "smithy.api#http" => {"method" => "POST", "uri" => "/events/projects/{project}", "code" => 200}, "smithy.api#tags" => ["dataplane"]}
      end)
      service.add_operation(:start_experiment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#StartExperiment"
        operation.name = "StartExperiment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartExperimentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartExperimentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/projects/{project}/experiments/{experiment}/start", "code" => 200}}
      end)
      service.add_operation(:start_launch, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#StartLaunch"
        operation.name = "StartLaunch"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartLaunchInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartLaunchOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/projects/{project}/launches/{launch}/start", "code" => 200}}
      end)
      service.add_operation(:stop_experiment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#StopExperiment"
        operation.name = "StopExperiment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopExperimentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopExperimentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/projects/{project}/experiments/{experiment}/cancel", "code" => 200}}
      end)
      service.add_operation(:stop_launch, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#StopLaunch"
        operation.name = "StopLaunch"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopLaunchInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopLaunchOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/projects/{project}/launches/{launch}/cancel", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:test_segment_pattern, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#TestSegmentPattern"
        operation.name = "TestSegmentPattern"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TestSegmentPatternInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TestSegmentPatternOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/test-segment-pattern", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_experiment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#UpdateExperiment"
        operation.name = "UpdateExperiment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateExperimentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateExperimentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/projects/{project}/experiments/{experiment}", "code" => 200}}
      end)
      service.add_operation(:update_feature, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#UpdateFeature"
        operation.name = "UpdateFeature"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFeatureInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFeatureOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/projects/{project}/features/{feature}", "code" => 200}}
      end)
      service.add_operation(:update_launch, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#UpdateLaunch"
        operation.name = "UpdateLaunch"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLaunchInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLaunchOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/projects/{project}/launches/{launch}", "code" => 200}}
      end)
      service.add_operation(:update_project, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#UpdateProject"
        operation.name = "UpdateProject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProjectInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProjectOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/projects/{project}", "code" => 200}}
      end)
      service.add_operation(:update_project_data_delivery, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evidently#UpdateProjectDataDelivery"
        operation.name = "UpdateProjectDataDelivery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProjectDataDeliveryInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProjectDataDeliveryOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/projects/{project}/data-delivery", "code" => 200}}
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
