# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudWatchEvidently
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AppConfigResourceId = Shapes::StringShape.new(name: 'AppConfigResourceId')
    Arn = Shapes::StringShape.new(name: 'Arn')
    BatchEvaluateFeatureRequest = Shapes::StructureShape.new(name: 'BatchEvaluateFeatureRequest')
    BatchEvaluateFeatureResponse = Shapes::StructureShape.new(name: 'BatchEvaluateFeatureResponse')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ChangeDirectionEnum = Shapes::StringShape.new(name: 'ChangeDirectionEnum')
    CloudWatchLogsDestination = Shapes::StructureShape.new(name: 'CloudWatchLogsDestination')
    CloudWatchLogsDestinationConfig = Shapes::StructureShape.new(name: 'CloudWatchLogsDestinationConfig')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateExperimentRequest = Shapes::StructureShape.new(name: 'CreateExperimentRequest')
    CreateExperimentResponse = Shapes::StructureShape.new(name: 'CreateExperimentResponse')
    CreateFeatureRequest = Shapes::StructureShape.new(name: 'CreateFeatureRequest')
    CreateFeatureResponse = Shapes::StructureShape.new(name: 'CreateFeatureResponse')
    CreateLaunchRequest = Shapes::StructureShape.new(name: 'CreateLaunchRequest')
    CreateLaunchResponse = Shapes::StructureShape.new(name: 'CreateLaunchResponse')
    CreateProjectRequest = Shapes::StructureShape.new(name: 'CreateProjectRequest')
    CreateProjectResponse = Shapes::StructureShape.new(name: 'CreateProjectResponse')
    CreateSegmentRequest = Shapes::StructureShape.new(name: 'CreateSegmentRequest')
    CreateSegmentResponse = Shapes::StructureShape.new(name: 'CreateSegmentResponse')
    CwDimensionSafeName = Shapes::StringShape.new(name: 'CwDimensionSafeName')
    CwLogGroupSafeName = Shapes::StringShape.new(name: 'CwLogGroupSafeName')
    DeleteExperimentRequest = Shapes::StructureShape.new(name: 'DeleteExperimentRequest')
    DeleteExperimentResponse = Shapes::StructureShape.new(name: 'DeleteExperimentResponse')
    DeleteFeatureRequest = Shapes::StructureShape.new(name: 'DeleteFeatureRequest')
    DeleteFeatureResponse = Shapes::StructureShape.new(name: 'DeleteFeatureResponse')
    DeleteLaunchRequest = Shapes::StructureShape.new(name: 'DeleteLaunchRequest')
    DeleteLaunchResponse = Shapes::StructureShape.new(name: 'DeleteLaunchResponse')
    DeleteProjectRequest = Shapes::StructureShape.new(name: 'DeleteProjectRequest')
    DeleteProjectResponse = Shapes::StructureShape.new(name: 'DeleteProjectResponse')
    DeleteSegmentRequest = Shapes::StructureShape.new(name: 'DeleteSegmentRequest')
    DeleteSegmentResponse = Shapes::StructureShape.new(name: 'DeleteSegmentResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    Double = Shapes::FloatShape.new(name: 'Double')
    DoubleValueList = Shapes::ListShape.new(name: 'DoubleValueList')
    EntityId = Shapes::StringShape.new(name: 'EntityId')
    EntityOverrideMap = Shapes::MapShape.new(name: 'EntityOverrideMap')
    ErrorCodeEnum = Shapes::StringShape.new(name: 'ErrorCodeEnum')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EvaluateFeatureRequest = Shapes::StructureShape.new(name: 'EvaluateFeatureRequest')
    EvaluateFeatureResponse = Shapes::StructureShape.new(name: 'EvaluateFeatureResponse')
    EvaluationRequest = Shapes::StructureShape.new(name: 'EvaluationRequest')
    EvaluationRequestsList = Shapes::ListShape.new(name: 'EvaluationRequestsList')
    EvaluationResult = Shapes::StructureShape.new(name: 'EvaluationResult')
    EvaluationResultsList = Shapes::ListShape.new(name: 'EvaluationResultsList')
    EvaluationRule = Shapes::StructureShape.new(name: 'EvaluationRule')
    EvaluationRulesList = Shapes::ListShape.new(name: 'EvaluationRulesList')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventList = Shapes::ListShape.new(name: 'EventList')
    EventType = Shapes::StringShape.new(name: 'EventType')
    Experiment = Shapes::StructureShape.new(name: 'Experiment')
    ExperimentArn = Shapes::StringShape.new(name: 'ExperimentArn')
    ExperimentBaseStat = Shapes::StringShape.new(name: 'ExperimentBaseStat')
    ExperimentExecution = Shapes::StructureShape.new(name: 'ExperimentExecution')
    ExperimentList = Shapes::ListShape.new(name: 'ExperimentList')
    ExperimentName = Shapes::StringShape.new(name: 'ExperimentName')
    ExperimentReport = Shapes::StructureShape.new(name: 'ExperimentReport')
    ExperimentReportList = Shapes::ListShape.new(name: 'ExperimentReportList')
    ExperimentReportName = Shapes::StringShape.new(name: 'ExperimentReportName')
    ExperimentReportNameList = Shapes::ListShape.new(name: 'ExperimentReportNameList')
    ExperimentResultRequestType = Shapes::StringShape.new(name: 'ExperimentResultRequestType')
    ExperimentResultRequestTypeList = Shapes::ListShape.new(name: 'ExperimentResultRequestTypeList')
    ExperimentResultResponseType = Shapes::StringShape.new(name: 'ExperimentResultResponseType')
    ExperimentResultsData = Shapes::StructureShape.new(name: 'ExperimentResultsData')
    ExperimentResultsDataList = Shapes::ListShape.new(name: 'ExperimentResultsDataList')
    ExperimentSchedule = Shapes::StructureShape.new(name: 'ExperimentSchedule')
    ExperimentStatus = Shapes::StringShape.new(name: 'ExperimentStatus')
    ExperimentStopDesiredState = Shapes::StringShape.new(name: 'ExperimentStopDesiredState')
    ExperimentType = Shapes::StringShape.new(name: 'ExperimentType')
    Feature = Shapes::StructureShape.new(name: 'Feature')
    FeatureArn = Shapes::StringShape.new(name: 'FeatureArn')
    FeatureEvaluationStrategy = Shapes::StringShape.new(name: 'FeatureEvaluationStrategy')
    FeatureName = Shapes::StringShape.new(name: 'FeatureName')
    FeatureStatus = Shapes::StringShape.new(name: 'FeatureStatus')
    FeatureSummariesList = Shapes::ListShape.new(name: 'FeatureSummariesList')
    FeatureSummary = Shapes::StructureShape.new(name: 'FeatureSummary')
    FeatureToVariationMap = Shapes::MapShape.new(name: 'FeatureToVariationMap')
    GetExperimentRequest = Shapes::StructureShape.new(name: 'GetExperimentRequest')
    GetExperimentResponse = Shapes::StructureShape.new(name: 'GetExperimentResponse')
    GetExperimentResultsRequest = Shapes::StructureShape.new(name: 'GetExperimentResultsRequest')
    GetExperimentResultsResponse = Shapes::StructureShape.new(name: 'GetExperimentResultsResponse')
    GetFeatureRequest = Shapes::StructureShape.new(name: 'GetFeatureRequest')
    GetFeatureResponse = Shapes::StructureShape.new(name: 'GetFeatureResponse')
    GetLaunchRequest = Shapes::StructureShape.new(name: 'GetLaunchRequest')
    GetLaunchResponse = Shapes::StructureShape.new(name: 'GetLaunchResponse')
    GetProjectRequest = Shapes::StructureShape.new(name: 'GetProjectRequest')
    GetProjectResponse = Shapes::StructureShape.new(name: 'GetProjectResponse')
    GetSegmentRequest = Shapes::StructureShape.new(name: 'GetSegmentRequest')
    GetSegmentResponse = Shapes::StructureShape.new(name: 'GetSegmentResponse')
    GroupName = Shapes::StringShape.new(name: 'GroupName')
    GroupToWeightMap = Shapes::MapShape.new(name: 'GroupToWeightMap')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    JsonPath = Shapes::StringShape.new(name: 'JsonPath')
    JsonValue = Shapes::StringShape.new(name: 'JsonValue')
    Launch = Shapes::StructureShape.new(name: 'Launch')
    LaunchArn = Shapes::StringShape.new(name: 'LaunchArn')
    LaunchExecution = Shapes::StructureShape.new(name: 'LaunchExecution')
    LaunchGroup = Shapes::StructureShape.new(name: 'LaunchGroup')
    LaunchGroupConfig = Shapes::StructureShape.new(name: 'LaunchGroupConfig')
    LaunchGroupConfigList = Shapes::ListShape.new(name: 'LaunchGroupConfigList')
    LaunchGroupList = Shapes::ListShape.new(name: 'LaunchGroupList')
    LaunchName = Shapes::StringShape.new(name: 'LaunchName')
    LaunchStatus = Shapes::StringShape.new(name: 'LaunchStatus')
    LaunchStopDesiredState = Shapes::StringShape.new(name: 'LaunchStopDesiredState')
    LaunchType = Shapes::StringShape.new(name: 'LaunchType')
    LaunchesList = Shapes::ListShape.new(name: 'LaunchesList')
    ListExperimentsRequest = Shapes::StructureShape.new(name: 'ListExperimentsRequest')
    ListExperimentsResponse = Shapes::StructureShape.new(name: 'ListExperimentsResponse')
    ListFeaturesRequest = Shapes::StructureShape.new(name: 'ListFeaturesRequest')
    ListFeaturesResponse = Shapes::StructureShape.new(name: 'ListFeaturesResponse')
    ListLaunchesRequest = Shapes::StructureShape.new(name: 'ListLaunchesRequest')
    ListLaunchesResponse = Shapes::StructureShape.new(name: 'ListLaunchesResponse')
    ListProjectsRequest = Shapes::StructureShape.new(name: 'ListProjectsRequest')
    ListProjectsResponse = Shapes::StructureShape.new(name: 'ListProjectsResponse')
    ListSegmentReferencesRequest = Shapes::StructureShape.new(name: 'ListSegmentReferencesRequest')
    ListSegmentReferencesResponse = Shapes::StructureShape.new(name: 'ListSegmentReferencesResponse')
    ListSegmentsRequest = Shapes::StructureShape.new(name: 'ListSegmentsRequest')
    ListSegmentsResponse = Shapes::StructureShape.new(name: 'ListSegmentsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxExperiments = Shapes::IntegerShape.new(name: 'MaxExperiments')
    MaxFeatures = Shapes::IntegerShape.new(name: 'MaxFeatures')
    MaxLaunches = Shapes::IntegerShape.new(name: 'MaxLaunches')
    MaxProjects = Shapes::IntegerShape.new(name: 'MaxProjects')
    MaxReferences = Shapes::IntegerShape.new(name: 'MaxReferences')
    MaxSegments = Shapes::IntegerShape.new(name: 'MaxSegments')
    MetricDefinition = Shapes::StructureShape.new(name: 'MetricDefinition')
    MetricDefinitionConfig = Shapes::StructureShape.new(name: 'MetricDefinitionConfig')
    MetricDefinitionConfigEventPatternString = Shapes::StringShape.new(name: 'MetricDefinitionConfigEventPatternString')
    MetricGoal = Shapes::StructureShape.new(name: 'MetricGoal')
    MetricGoalConfig = Shapes::StructureShape.new(name: 'MetricGoalConfig')
    MetricGoalConfigList = Shapes::ListShape.new(name: 'MetricGoalConfigList')
    MetricGoalsList = Shapes::ListShape.new(name: 'MetricGoalsList')
    MetricMonitor = Shapes::StructureShape.new(name: 'MetricMonitor')
    MetricMonitorConfig = Shapes::StructureShape.new(name: 'MetricMonitorConfig')
    MetricMonitorConfigList = Shapes::ListShape.new(name: 'MetricMonitorConfigList')
    MetricMonitorList = Shapes::ListShape.new(name: 'MetricMonitorList')
    MetricNameList = Shapes::ListShape.new(name: 'MetricNameList')
    MetricUnitLabel = Shapes::StringShape.new(name: 'MetricUnitLabel')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OnlineAbConfig = Shapes::StructureShape.new(name: 'OnlineAbConfig')
    OnlineAbDefinition = Shapes::StructureShape.new(name: 'OnlineAbDefinition')
    PrimitiveBoolean = Shapes::BooleanShape.new(name: 'PrimitiveBoolean')
    Project = Shapes::StructureShape.new(name: 'Project')
    ProjectAppConfigResource = Shapes::StructureShape.new(name: 'ProjectAppConfigResource')
    ProjectAppConfigResourceConfig = Shapes::StructureShape.new(name: 'ProjectAppConfigResourceConfig')
    ProjectArn = Shapes::StringShape.new(name: 'ProjectArn')
    ProjectDataDelivery = Shapes::StructureShape.new(name: 'ProjectDataDelivery')
    ProjectDataDeliveryConfig = Shapes::StructureShape.new(name: 'ProjectDataDeliveryConfig')
    ProjectName = Shapes::StringShape.new(name: 'ProjectName')
    ProjectRef = Shapes::StringShape.new(name: 'ProjectRef')
    ProjectStatus = Shapes::StringShape.new(name: 'ProjectStatus')
    ProjectSummariesList = Shapes::ListShape.new(name: 'ProjectSummariesList')
    ProjectSummary = Shapes::StructureShape.new(name: 'ProjectSummary')
    PutProjectEventsRequest = Shapes::StructureShape.new(name: 'PutProjectEventsRequest')
    PutProjectEventsResponse = Shapes::StructureShape.new(name: 'PutProjectEventsResponse')
    PutProjectEventsResultEntry = Shapes::StructureShape.new(name: 'PutProjectEventsResultEntry')
    PutProjectEventsResultEntryList = Shapes::ListShape.new(name: 'PutProjectEventsResultEntryList')
    RandomizationSalt = Shapes::StringShape.new(name: 'RandomizationSalt')
    RefResource = Shapes::StructureShape.new(name: 'RefResource')
    RefResourceList = Shapes::ListShape.new(name: 'RefResourceList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResultsPeriod = Shapes::IntegerShape.new(name: 'ResultsPeriod')
    RuleName = Shapes::StringShape.new(name: 'RuleName')
    RuleType = Shapes::StringShape.new(name: 'RuleType')
    S3BucketSafeName = Shapes::StringShape.new(name: 'S3BucketSafeName')
    S3Destination = Shapes::StructureShape.new(name: 'S3Destination')
    S3DestinationConfig = Shapes::StructureShape.new(name: 'S3DestinationConfig')
    S3PrefixSafeName = Shapes::StringShape.new(name: 'S3PrefixSafeName')
    ScheduledSplit = Shapes::StructureShape.new(name: 'ScheduledSplit')
    ScheduledSplitConfig = Shapes::StructureShape.new(name: 'ScheduledSplitConfig')
    ScheduledSplitConfigList = Shapes::ListShape.new(name: 'ScheduledSplitConfigList')
    ScheduledSplitsLaunchConfig = Shapes::StructureShape.new(name: 'ScheduledSplitsLaunchConfig')
    ScheduledSplitsLaunchDefinition = Shapes::StructureShape.new(name: 'ScheduledSplitsLaunchDefinition')
    ScheduledStepList = Shapes::ListShape.new(name: 'ScheduledStepList')
    Segment = Shapes::StructureShape.new(name: 'Segment')
    SegmentArn = Shapes::StringShape.new(name: 'SegmentArn')
    SegmentList = Shapes::ListShape.new(name: 'SegmentList')
    SegmentName = Shapes::StringShape.new(name: 'SegmentName')
    SegmentOverride = Shapes::StructureShape.new(name: 'SegmentOverride')
    SegmentOverridesList = Shapes::ListShape.new(name: 'SegmentOverridesList')
    SegmentPattern = Shapes::StringShape.new(name: 'SegmentPattern')
    SegmentRef = Shapes::StringShape.new(name: 'SegmentRef')
    SegmentReferenceResourceType = Shapes::StringShape.new(name: 'SegmentReferenceResourceType')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SplitWeight = Shapes::IntegerShape.new(name: 'SplitWeight')
    StartExperimentRequest = Shapes::StructureShape.new(name: 'StartExperimentRequest')
    StartExperimentResponse = Shapes::StructureShape.new(name: 'StartExperimentResponse')
    StartLaunchRequest = Shapes::StructureShape.new(name: 'StartLaunchRequest')
    StartLaunchResponse = Shapes::StructureShape.new(name: 'StartLaunchResponse')
    StopExperimentRequest = Shapes::StructureShape.new(name: 'StopExperimentRequest')
    StopExperimentResponse = Shapes::StructureShape.new(name: 'StopExperimentResponse')
    StopLaunchRequest = Shapes::StructureShape.new(name: 'StopLaunchRequest')
    StopLaunchResponse = Shapes::StructureShape.new(name: 'StopLaunchResponse')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TestSegmentPatternRequest = Shapes::StructureShape.new(name: 'TestSegmentPatternRequest')
    TestSegmentPatternResponse = Shapes::StructureShape.new(name: 'TestSegmentPatternResponse')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TimestampList = Shapes::ListShape.new(name: 'TimestampList')
    Treatment = Shapes::StructureShape.new(name: 'Treatment')
    TreatmentConfig = Shapes::StructureShape.new(name: 'TreatmentConfig')
    TreatmentConfigList = Shapes::ListShape.new(name: 'TreatmentConfigList')
    TreatmentList = Shapes::ListShape.new(name: 'TreatmentList')
    TreatmentName = Shapes::StringShape.new(name: 'TreatmentName')
    TreatmentNameList = Shapes::ListShape.new(name: 'TreatmentNameList')
    TreatmentToWeightMap = Shapes::MapShape.new(name: 'TreatmentToWeightMap')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateExperimentRequest = Shapes::StructureShape.new(name: 'UpdateExperimentRequest')
    UpdateExperimentResponse = Shapes::StructureShape.new(name: 'UpdateExperimentResponse')
    UpdateFeatureRequest = Shapes::StructureShape.new(name: 'UpdateFeatureRequest')
    UpdateFeatureResponse = Shapes::StructureShape.new(name: 'UpdateFeatureResponse')
    UpdateLaunchRequest = Shapes::StructureShape.new(name: 'UpdateLaunchRequest')
    UpdateLaunchResponse = Shapes::StructureShape.new(name: 'UpdateLaunchResponse')
    UpdateProjectDataDeliveryRequest = Shapes::StructureShape.new(name: 'UpdateProjectDataDeliveryRequest')
    UpdateProjectDataDeliveryResponse = Shapes::StructureShape.new(name: 'UpdateProjectDataDeliveryResponse')
    UpdateProjectRequest = Shapes::StructureShape.new(name: 'UpdateProjectRequest')
    UpdateProjectResponse = Shapes::StructureShape.new(name: 'UpdateProjectResponse')
    Uuid = Shapes::StringShape.new(name: 'Uuid')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VariableValue = Shapes::UnionShape.new(name: 'VariableValue')
    VariableValueLongValueLong = Shapes::IntegerShape.new(name: 'VariableValueLongValueLong')
    VariableValueStringValueString = Shapes::StringShape.new(name: 'VariableValueStringValueString')
    Variation = Shapes::StructureShape.new(name: 'Variation')
    VariationConfig = Shapes::StructureShape.new(name: 'VariationConfig')
    VariationConfigsList = Shapes::ListShape.new(name: 'VariationConfigsList')
    VariationName = Shapes::StringShape.new(name: 'VariationName')
    VariationNameList = Shapes::ListShape.new(name: 'VariationNameList')
    VariationValueType = Shapes::StringShape.new(name: 'VariationValueType')
    VariationsList = Shapes::ListShape.new(name: 'VariationsList')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    BatchEvaluateFeatureRequest.add_member(:project, Shapes::ShapeRef.new(shape: ProjectRef, required: true, location: "uri", location_name: "project"))
    BatchEvaluateFeatureRequest.add_member(:requests, Shapes::ShapeRef.new(shape: EvaluationRequestsList, required: true, location_name: "requests"))
    BatchEvaluateFeatureRequest.struct_class = Types::BatchEvaluateFeatureRequest

    BatchEvaluateFeatureResponse.add_member(:results, Shapes::ShapeRef.new(shape: EvaluationResultsList, location_name: "results"))
    BatchEvaluateFeatureResponse.struct_class = Types::BatchEvaluateFeatureResponse

    CloudWatchLogsDestination.add_member(:log_group, Shapes::ShapeRef.new(shape: CwLogGroupSafeName, location_name: "logGroup"))
    CloudWatchLogsDestination.struct_class = Types::CloudWatchLogsDestination

    CloudWatchLogsDestinationConfig.add_member(:log_group, Shapes::ShapeRef.new(shape: CwLogGroupSafeName, location_name: "logGroup"))
    CloudWatchLogsDestinationConfig.struct_class = Types::CloudWatchLogsDestinationConfig

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateExperimentRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateExperimentRequest.add_member(:metric_goals, Shapes::ShapeRef.new(shape: MetricGoalConfigList, required: true, location_name: "metricGoals"))
    CreateExperimentRequest.add_member(:name, Shapes::ShapeRef.new(shape: ExperimentName, required: true, location_name: "name"))
    CreateExperimentRequest.add_member(:online_ab_config, Shapes::ShapeRef.new(shape: OnlineAbConfig, location_name: "onlineAbConfig"))
    CreateExperimentRequest.add_member(:project, Shapes::ShapeRef.new(shape: ProjectRef, required: true, location: "uri", location_name: "project"))
    CreateExperimentRequest.add_member(:randomization_salt, Shapes::ShapeRef.new(shape: RandomizationSalt, location_name: "randomizationSalt"))
    CreateExperimentRequest.add_member(:sampling_rate, Shapes::ShapeRef.new(shape: SplitWeight, location_name: "samplingRate", metadata: {"box"=>true}))
    CreateExperimentRequest.add_member(:segment, Shapes::ShapeRef.new(shape: SegmentRef, location_name: "segment"))
    CreateExperimentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateExperimentRequest.add_member(:treatments, Shapes::ShapeRef.new(shape: TreatmentConfigList, required: true, location_name: "treatments"))
    CreateExperimentRequest.struct_class = Types::CreateExperimentRequest

    CreateExperimentResponse.add_member(:experiment, Shapes::ShapeRef.new(shape: Experiment, required: true, location_name: "experiment"))
    CreateExperimentResponse.struct_class = Types::CreateExperimentResponse

    CreateFeatureRequest.add_member(:default_variation, Shapes::ShapeRef.new(shape: VariationName, location_name: "defaultVariation"))
    CreateFeatureRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateFeatureRequest.add_member(:entity_overrides, Shapes::ShapeRef.new(shape: EntityOverrideMap, location_name: "entityOverrides"))
    CreateFeatureRequest.add_member(:evaluation_strategy, Shapes::ShapeRef.new(shape: FeatureEvaluationStrategy, location_name: "evaluationStrategy"))
    CreateFeatureRequest.add_member(:name, Shapes::ShapeRef.new(shape: FeatureName, required: true, location_name: "name"))
    CreateFeatureRequest.add_member(:project, Shapes::ShapeRef.new(shape: ProjectRef, required: true, location: "uri", location_name: "project"))
    CreateFeatureRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateFeatureRequest.add_member(:variations, Shapes::ShapeRef.new(shape: VariationConfigsList, required: true, location_name: "variations"))
    CreateFeatureRequest.struct_class = Types::CreateFeatureRequest

    CreateFeatureResponse.add_member(:feature, Shapes::ShapeRef.new(shape: Feature, location_name: "feature"))
    CreateFeatureResponse.struct_class = Types::CreateFeatureResponse

    CreateLaunchRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateLaunchRequest.add_member(:groups, Shapes::ShapeRef.new(shape: LaunchGroupConfigList, required: true, location_name: "groups"))
    CreateLaunchRequest.add_member(:metric_monitors, Shapes::ShapeRef.new(shape: MetricMonitorConfigList, location_name: "metricMonitors"))
    CreateLaunchRequest.add_member(:name, Shapes::ShapeRef.new(shape: LaunchName, required: true, location_name: "name"))
    CreateLaunchRequest.add_member(:project, Shapes::ShapeRef.new(shape: ProjectRef, required: true, location: "uri", location_name: "project"))
    CreateLaunchRequest.add_member(:randomization_salt, Shapes::ShapeRef.new(shape: RandomizationSalt, location_name: "randomizationSalt"))
    CreateLaunchRequest.add_member(:scheduled_splits_config, Shapes::ShapeRef.new(shape: ScheduledSplitsLaunchConfig, location_name: "scheduledSplitsConfig"))
    CreateLaunchRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateLaunchRequest.struct_class = Types::CreateLaunchRequest

    CreateLaunchResponse.add_member(:launch, Shapes::ShapeRef.new(shape: Launch, required: true, location_name: "launch"))
    CreateLaunchResponse.struct_class = Types::CreateLaunchResponse

    CreateProjectRequest.add_member(:app_config_resource, Shapes::ShapeRef.new(shape: ProjectAppConfigResourceConfig, location_name: "appConfigResource"))
    CreateProjectRequest.add_member(:data_delivery, Shapes::ShapeRef.new(shape: ProjectDataDeliveryConfig, location_name: "dataDelivery"))
    CreateProjectRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateProjectRequest.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location_name: "name"))
    CreateProjectRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateProjectRequest.struct_class = Types::CreateProjectRequest

    CreateProjectResponse.add_member(:project, Shapes::ShapeRef.new(shape: Project, required: true, location_name: "project"))
    CreateProjectResponse.struct_class = Types::CreateProjectResponse

    CreateSegmentRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateSegmentRequest.add_member(:name, Shapes::ShapeRef.new(shape: SegmentName, required: true, location_name: "name"))
    CreateSegmentRequest.add_member(:pattern, Shapes::ShapeRef.new(shape: SegmentPattern, required: true, location_name: "pattern", metadata: {"jsonvalue"=>true}))
    CreateSegmentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSegmentRequest.struct_class = Types::CreateSegmentRequest

    CreateSegmentResponse.add_member(:segment, Shapes::ShapeRef.new(shape: Segment, required: true, location_name: "segment"))
    CreateSegmentResponse.struct_class = Types::CreateSegmentResponse

    DeleteExperimentRequest.add_member(:experiment, Shapes::ShapeRef.new(shape: ExperimentName, required: true, location: "uri", location_name: "experiment"))
    DeleteExperimentRequest.add_member(:project, Shapes::ShapeRef.new(shape: ProjectRef, required: true, location: "uri", location_name: "project"))
    DeleteExperimentRequest.struct_class = Types::DeleteExperimentRequest

    DeleteExperimentResponse.struct_class = Types::DeleteExperimentResponse

    DeleteFeatureRequest.add_member(:feature, Shapes::ShapeRef.new(shape: FeatureName, required: true, location: "uri", location_name: "feature"))
    DeleteFeatureRequest.add_member(:project, Shapes::ShapeRef.new(shape: ProjectRef, required: true, location: "uri", location_name: "project"))
    DeleteFeatureRequest.struct_class = Types::DeleteFeatureRequest

    DeleteFeatureResponse.struct_class = Types::DeleteFeatureResponse

    DeleteLaunchRequest.add_member(:launch, Shapes::ShapeRef.new(shape: LaunchName, required: true, location: "uri", location_name: "launch"))
    DeleteLaunchRequest.add_member(:project, Shapes::ShapeRef.new(shape: ProjectRef, required: true, location: "uri", location_name: "project"))
    DeleteLaunchRequest.struct_class = Types::DeleteLaunchRequest

    DeleteLaunchResponse.struct_class = Types::DeleteLaunchResponse

    DeleteProjectRequest.add_member(:project, Shapes::ShapeRef.new(shape: ProjectRef, required: true, location: "uri", location_name: "project"))
    DeleteProjectRequest.struct_class = Types::DeleteProjectRequest

    DeleteProjectResponse.struct_class = Types::DeleteProjectResponse

    DeleteSegmentRequest.add_member(:segment, Shapes::ShapeRef.new(shape: SegmentRef, required: true, location: "uri", location_name: "segment"))
    DeleteSegmentRequest.struct_class = Types::DeleteSegmentRequest

    DeleteSegmentResponse.struct_class = Types::DeleteSegmentResponse

    DoubleValueList.member = Shapes::ShapeRef.new(shape: Double)

    EntityOverrideMap.key = Shapes::ShapeRef.new(shape: EntityId)
    EntityOverrideMap.value = Shapes::ShapeRef.new(shape: VariationName)

    EvaluateFeatureRequest.add_member(:entity_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "entityId"))
    EvaluateFeatureRequest.add_member(:evaluation_context, Shapes::ShapeRef.new(shape: JsonValue, location_name: "evaluationContext", metadata: {"jsonvalue"=>true}))
    EvaluateFeatureRequest.add_member(:feature, Shapes::ShapeRef.new(shape: FeatureName, required: true, location: "uri", location_name: "feature"))
    EvaluateFeatureRequest.add_member(:project, Shapes::ShapeRef.new(shape: ProjectRef, required: true, location: "uri", location_name: "project"))
    EvaluateFeatureRequest.struct_class = Types::EvaluateFeatureRequest

    EvaluateFeatureResponse.add_member(:details, Shapes::ShapeRef.new(shape: JsonValue, location_name: "details", metadata: {"jsonvalue"=>true}))
    EvaluateFeatureResponse.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    EvaluateFeatureResponse.add_member(:value, Shapes::ShapeRef.new(shape: VariableValue, location_name: "value"))
    EvaluateFeatureResponse.add_member(:variation, Shapes::ShapeRef.new(shape: String, location_name: "variation"))
    EvaluateFeatureResponse.struct_class = Types::EvaluateFeatureResponse

    EvaluationRequest.add_member(:entity_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "entityId"))
    EvaluationRequest.add_member(:evaluation_context, Shapes::ShapeRef.new(shape: JsonValue, location_name: "evaluationContext", metadata: {"jsonvalue"=>true}))
    EvaluationRequest.add_member(:feature, Shapes::ShapeRef.new(shape: FeatureName, required: true, location_name: "feature"))
    EvaluationRequest.struct_class = Types::EvaluationRequest

    EvaluationRequestsList.member = Shapes::ShapeRef.new(shape: EvaluationRequest)

    EvaluationResult.add_member(:details, Shapes::ShapeRef.new(shape: JsonValue, location_name: "details", metadata: {"jsonvalue"=>true}))
    EvaluationResult.add_member(:entity_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "entityId"))
    EvaluationResult.add_member(:feature, Shapes::ShapeRef.new(shape: FeatureName, required: true, location_name: "feature"))
    EvaluationResult.add_member(:project, Shapes::ShapeRef.new(shape: Arn, location_name: "project"))
    EvaluationResult.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    EvaluationResult.add_member(:value, Shapes::ShapeRef.new(shape: VariableValue, location_name: "value"))
    EvaluationResult.add_member(:variation, Shapes::ShapeRef.new(shape: String, location_name: "variation"))
    EvaluationResult.struct_class = Types::EvaluationResult

    EvaluationResultsList.member = Shapes::ShapeRef.new(shape: EvaluationResult)

    EvaluationRule.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, location_name: "name"))
    EvaluationRule.add_member(:type, Shapes::ShapeRef.new(shape: RuleType, required: true, location_name: "type"))
    EvaluationRule.struct_class = Types::EvaluationRule

    EvaluationRulesList.member = Shapes::ShapeRef.new(shape: EvaluationRule)

    Event.add_member(:data, Shapes::ShapeRef.new(shape: JsonValue, required: true, location_name: "data", metadata: {"jsonvalue"=>true}))
    Event.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "timestamp"))
    Event.add_member(:type, Shapes::ShapeRef.new(shape: EventType, required: true, location_name: "type"))
    Event.struct_class = Types::Event

    EventList.member = Shapes::ShapeRef.new(shape: Event)

    Experiment.add_member(:arn, Shapes::ShapeRef.new(shape: ExperimentArn, required: true, location_name: "arn"))
    Experiment.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdTime"))
    Experiment.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    Experiment.add_member(:execution, Shapes::ShapeRef.new(shape: ExperimentExecution, location_name: "execution"))
    Experiment.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedTime"))
    Experiment.add_member(:metric_goals, Shapes::ShapeRef.new(shape: MetricGoalsList, location_name: "metricGoals"))
    Experiment.add_member(:name, Shapes::ShapeRef.new(shape: ExperimentName, required: true, location_name: "name"))
    Experiment.add_member(:online_ab_definition, Shapes::ShapeRef.new(shape: OnlineAbDefinition, location_name: "onlineAbDefinition"))
    Experiment.add_member(:project, Shapes::ShapeRef.new(shape: ProjectArn, location_name: "project"))
    Experiment.add_member(:randomization_salt, Shapes::ShapeRef.new(shape: RandomizationSalt, location_name: "randomizationSalt"))
    Experiment.add_member(:sampling_rate, Shapes::ShapeRef.new(shape: SplitWeight, location_name: "samplingRate"))
    Experiment.add_member(:schedule, Shapes::ShapeRef.new(shape: ExperimentSchedule, location_name: "schedule"))
    Experiment.add_member(:segment, Shapes::ShapeRef.new(shape: SegmentArn, location_name: "segment"))
    Experiment.add_member(:status, Shapes::ShapeRef.new(shape: ExperimentStatus, required: true, location_name: "status"))
    Experiment.add_member(:status_reason, Shapes::ShapeRef.new(shape: Description, location_name: "statusReason"))
    Experiment.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Experiment.add_member(:treatments, Shapes::ShapeRef.new(shape: TreatmentList, location_name: "treatments"))
    Experiment.add_member(:type, Shapes::ShapeRef.new(shape: ExperimentType, required: true, location_name: "type"))
    Experiment.struct_class = Types::Experiment

    ExperimentExecution.add_member(:ended_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endedTime"))
    ExperimentExecution.add_member(:started_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startedTime"))
    ExperimentExecution.struct_class = Types::ExperimentExecution

    ExperimentList.member = Shapes::ShapeRef.new(shape: Experiment)

    ExperimentReport.add_member(:content, Shapes::ShapeRef.new(shape: JsonValue, location_name: "content", metadata: {"jsonvalue"=>true}))
    ExperimentReport.add_member(:metric_name, Shapes::ShapeRef.new(shape: CwDimensionSafeName, location_name: "metricName"))
    ExperimentReport.add_member(:report_name, Shapes::ShapeRef.new(shape: ExperimentReportName, location_name: "reportName"))
    ExperimentReport.add_member(:treatment_name, Shapes::ShapeRef.new(shape: TreatmentName, location_name: "treatmentName"))
    ExperimentReport.struct_class = Types::ExperimentReport

    ExperimentReportList.member = Shapes::ShapeRef.new(shape: ExperimentReport)

    ExperimentReportNameList.member = Shapes::ShapeRef.new(shape: ExperimentReportName)

    ExperimentResultRequestTypeList.member = Shapes::ShapeRef.new(shape: ExperimentResultRequestType)

    ExperimentResultsData.add_member(:metric_name, Shapes::ShapeRef.new(shape: CwDimensionSafeName, location_name: "metricName"))
    ExperimentResultsData.add_member(:result_stat, Shapes::ShapeRef.new(shape: ExperimentResultResponseType, location_name: "resultStat"))
    ExperimentResultsData.add_member(:treatment_name, Shapes::ShapeRef.new(shape: TreatmentName, location_name: "treatmentName"))
    ExperimentResultsData.add_member(:values, Shapes::ShapeRef.new(shape: DoubleValueList, location_name: "values"))
    ExperimentResultsData.struct_class = Types::ExperimentResultsData

    ExperimentResultsDataList.member = Shapes::ShapeRef.new(shape: ExperimentResultsData)

    ExperimentSchedule.add_member(:analysis_complete_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "analysisCompleteTime"))
    ExperimentSchedule.struct_class = Types::ExperimentSchedule

    Feature.add_member(:arn, Shapes::ShapeRef.new(shape: FeatureArn, required: true, location_name: "arn"))
    Feature.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdTime"))
    Feature.add_member(:default_variation, Shapes::ShapeRef.new(shape: VariationName, location_name: "defaultVariation"))
    Feature.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    Feature.add_member(:entity_overrides, Shapes::ShapeRef.new(shape: EntityOverrideMap, location_name: "entityOverrides"))
    Feature.add_member(:evaluation_rules, Shapes::ShapeRef.new(shape: EvaluationRulesList, location_name: "evaluationRules"))
    Feature.add_member(:evaluation_strategy, Shapes::ShapeRef.new(shape: FeatureEvaluationStrategy, required: true, location_name: "evaluationStrategy"))
    Feature.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedTime"))
    Feature.add_member(:name, Shapes::ShapeRef.new(shape: FeatureName, required: true, location_name: "name"))
    Feature.add_member(:project, Shapes::ShapeRef.new(shape: ProjectArn, location_name: "project"))
    Feature.add_member(:status, Shapes::ShapeRef.new(shape: FeatureStatus, required: true, location_name: "status"))
    Feature.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Feature.add_member(:value_type, Shapes::ShapeRef.new(shape: VariationValueType, required: true, location_name: "valueType"))
    Feature.add_member(:variations, Shapes::ShapeRef.new(shape: VariationsList, required: true, location_name: "variations"))
    Feature.struct_class = Types::Feature

    FeatureSummariesList.member = Shapes::ShapeRef.new(shape: FeatureSummary)

    FeatureSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    FeatureSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdTime"))
    FeatureSummary.add_member(:default_variation, Shapes::ShapeRef.new(shape: VariationName, location_name: "defaultVariation"))
    FeatureSummary.add_member(:evaluation_rules, Shapes::ShapeRef.new(shape: EvaluationRulesList, location_name: "evaluationRules"))
    FeatureSummary.add_member(:evaluation_strategy, Shapes::ShapeRef.new(shape: FeatureEvaluationStrategy, required: true, location_name: "evaluationStrategy"))
    FeatureSummary.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedTime"))
    FeatureSummary.add_member(:name, Shapes::ShapeRef.new(shape: FeatureName, required: true, location_name: "name"))
    FeatureSummary.add_member(:project, Shapes::ShapeRef.new(shape: ProjectRef, location_name: "project"))
    FeatureSummary.add_member(:status, Shapes::ShapeRef.new(shape: FeatureStatus, required: true, location_name: "status"))
    FeatureSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    FeatureSummary.struct_class = Types::FeatureSummary

    FeatureToVariationMap.key = Shapes::ShapeRef.new(shape: FeatureName)
    FeatureToVariationMap.value = Shapes::ShapeRef.new(shape: VariationName)

    GetExperimentRequest.add_member(:experiment, Shapes::ShapeRef.new(shape: ExperimentName, required: true, location: "uri", location_name: "experiment"))
    GetExperimentRequest.add_member(:project, Shapes::ShapeRef.new(shape: ProjectRef, required: true, location: "uri", location_name: "project"))
    GetExperimentRequest.struct_class = Types::GetExperimentRequest

    GetExperimentResponse.add_member(:experiment, Shapes::ShapeRef.new(shape: Experiment, location_name: "experiment"))
    GetExperimentResponse.struct_class = Types::GetExperimentResponse

    GetExperimentResultsRequest.add_member(:base_stat, Shapes::ShapeRef.new(shape: ExperimentBaseStat, location_name: "baseStat"))
    GetExperimentResultsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    GetExperimentResultsRequest.add_member(:experiment, Shapes::ShapeRef.new(shape: ExperimentName, required: true, location: "uri", location_name: "experiment"))
    GetExperimentResultsRequest.add_member(:metric_names, Shapes::ShapeRef.new(shape: MetricNameList, required: true, location_name: "metricNames"))
    GetExperimentResultsRequest.add_member(:period, Shapes::ShapeRef.new(shape: ResultsPeriod, location_name: "period"))
    GetExperimentResultsRequest.add_member(:project, Shapes::ShapeRef.new(shape: ProjectRef, required: true, location: "uri", location_name: "project"))
    GetExperimentResultsRequest.add_member(:report_names, Shapes::ShapeRef.new(shape: ExperimentReportNameList, location_name: "reportNames"))
    GetExperimentResultsRequest.add_member(:result_stats, Shapes::ShapeRef.new(shape: ExperimentResultRequestTypeList, location_name: "resultStats"))
    GetExperimentResultsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    GetExperimentResultsRequest.add_member(:treatment_names, Shapes::ShapeRef.new(shape: TreatmentNameList, required: true, location_name: "treatmentNames"))
    GetExperimentResultsRequest.struct_class = Types::GetExperimentResultsRequest

    GetExperimentResultsResponse.add_member(:details, Shapes::ShapeRef.new(shape: String, location_name: "details"))
    GetExperimentResultsResponse.add_member(:reports, Shapes::ShapeRef.new(shape: ExperimentReportList, location_name: "reports"))
    GetExperimentResultsResponse.add_member(:results_data, Shapes::ShapeRef.new(shape: ExperimentResultsDataList, location_name: "resultsData"))
    GetExperimentResultsResponse.add_member(:timestamps, Shapes::ShapeRef.new(shape: TimestampList, location_name: "timestamps"))
    GetExperimentResultsResponse.struct_class = Types::GetExperimentResultsResponse

    GetFeatureRequest.add_member(:feature, Shapes::ShapeRef.new(shape: FeatureName, required: true, location: "uri", location_name: "feature"))
    GetFeatureRequest.add_member(:project, Shapes::ShapeRef.new(shape: ProjectRef, required: true, location: "uri", location_name: "project"))
    GetFeatureRequest.struct_class = Types::GetFeatureRequest

    GetFeatureResponse.add_member(:feature, Shapes::ShapeRef.new(shape: Feature, required: true, location_name: "feature"))
    GetFeatureResponse.struct_class = Types::GetFeatureResponse

    GetLaunchRequest.add_member(:launch, Shapes::ShapeRef.new(shape: LaunchName, required: true, location: "uri", location_name: "launch"))
    GetLaunchRequest.add_member(:project, Shapes::ShapeRef.new(shape: ProjectRef, required: true, location: "uri", location_name: "project"))
    GetLaunchRequest.struct_class = Types::GetLaunchRequest

    GetLaunchResponse.add_member(:launch, Shapes::ShapeRef.new(shape: Launch, location_name: "launch"))
    GetLaunchResponse.struct_class = Types::GetLaunchResponse

    GetProjectRequest.add_member(:project, Shapes::ShapeRef.new(shape: ProjectRef, required: true, location: "uri", location_name: "project"))
    GetProjectRequest.struct_class = Types::GetProjectRequest

    GetProjectResponse.add_member(:project, Shapes::ShapeRef.new(shape: Project, required: true, location_name: "project"))
    GetProjectResponse.struct_class = Types::GetProjectResponse

    GetSegmentRequest.add_member(:segment, Shapes::ShapeRef.new(shape: SegmentRef, required: true, location: "uri", location_name: "segment"))
    GetSegmentRequest.struct_class = Types::GetSegmentRequest

    GetSegmentResponse.add_member(:segment, Shapes::ShapeRef.new(shape: Segment, required: true, location_name: "segment"))
    GetSegmentResponse.struct_class = Types::GetSegmentResponse

    GroupToWeightMap.key = Shapes::ShapeRef.new(shape: GroupName)
    GroupToWeightMap.value = Shapes::ShapeRef.new(shape: SplitWeight)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    Launch.add_member(:arn, Shapes::ShapeRef.new(shape: LaunchArn, required: true, location_name: "arn"))
    Launch.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdTime"))
    Launch.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    Launch.add_member(:execution, Shapes::ShapeRef.new(shape: LaunchExecution, location_name: "execution"))
    Launch.add_member(:groups, Shapes::ShapeRef.new(shape: LaunchGroupList, location_name: "groups"))
    Launch.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedTime"))
    Launch.add_member(:metric_monitors, Shapes::ShapeRef.new(shape: MetricMonitorList, location_name: "metricMonitors"))
    Launch.add_member(:name, Shapes::ShapeRef.new(shape: LaunchName, required: true, location_name: "name"))
    Launch.add_member(:project, Shapes::ShapeRef.new(shape: ProjectRef, location_name: "project"))
    Launch.add_member(:randomization_salt, Shapes::ShapeRef.new(shape: RandomizationSalt, location_name: "randomizationSalt"))
    Launch.add_member(:scheduled_splits_definition, Shapes::ShapeRef.new(shape: ScheduledSplitsLaunchDefinition, location_name: "scheduledSplitsDefinition"))
    Launch.add_member(:status, Shapes::ShapeRef.new(shape: LaunchStatus, required: true, location_name: "status"))
    Launch.add_member(:status_reason, Shapes::ShapeRef.new(shape: Description, location_name: "statusReason"))
    Launch.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Launch.add_member(:type, Shapes::ShapeRef.new(shape: LaunchType, required: true, location_name: "type"))
    Launch.struct_class = Types::Launch

    LaunchExecution.add_member(:ended_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endedTime"))
    LaunchExecution.add_member(:started_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startedTime"))
    LaunchExecution.struct_class = Types::LaunchExecution

    LaunchGroup.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    LaunchGroup.add_member(:feature_variations, Shapes::ShapeRef.new(shape: FeatureToVariationMap, required: true, location_name: "featureVariations"))
    LaunchGroup.add_member(:name, Shapes::ShapeRef.new(shape: GroupName, required: true, location_name: "name"))
    LaunchGroup.struct_class = Types::LaunchGroup

    LaunchGroupConfig.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    LaunchGroupConfig.add_member(:feature, Shapes::ShapeRef.new(shape: FeatureName, required: true, location_name: "feature"))
    LaunchGroupConfig.add_member(:name, Shapes::ShapeRef.new(shape: GroupName, required: true, location_name: "name"))
    LaunchGroupConfig.add_member(:variation, Shapes::ShapeRef.new(shape: VariationName, required: true, location_name: "variation"))
    LaunchGroupConfig.struct_class = Types::LaunchGroupConfig

    LaunchGroupConfigList.member = Shapes::ShapeRef.new(shape: LaunchGroupConfig)

    LaunchGroupList.member = Shapes::ShapeRef.new(shape: LaunchGroup)

    LaunchesList.member = Shapes::ShapeRef.new(shape: Launch)

    ListExperimentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxExperiments, location: "querystring", location_name: "maxResults"))
    ListExperimentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListExperimentsRequest.add_member(:project, Shapes::ShapeRef.new(shape: ProjectRef, required: true, location: "uri", location_name: "project"))
    ListExperimentsRequest.add_member(:status, Shapes::ShapeRef.new(shape: ExperimentStatus, location: "querystring", location_name: "status"))
    ListExperimentsRequest.struct_class = Types::ListExperimentsRequest

    ListExperimentsResponse.add_member(:experiments, Shapes::ShapeRef.new(shape: ExperimentList, location_name: "experiments"))
    ListExperimentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListExperimentsResponse.struct_class = Types::ListExperimentsResponse

    ListFeaturesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxFeatures, location: "querystring", location_name: "maxResults"))
    ListFeaturesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListFeaturesRequest.add_member(:project, Shapes::ShapeRef.new(shape: ProjectRef, required: true, location: "uri", location_name: "project"))
    ListFeaturesRequest.struct_class = Types::ListFeaturesRequest

    ListFeaturesResponse.add_member(:features, Shapes::ShapeRef.new(shape: FeatureSummariesList, location_name: "features"))
    ListFeaturesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFeaturesResponse.struct_class = Types::ListFeaturesResponse

    ListLaunchesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxLaunches, location: "querystring", location_name: "maxResults"))
    ListLaunchesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListLaunchesRequest.add_member(:project, Shapes::ShapeRef.new(shape: ProjectRef, required: true, location: "uri", location_name: "project"))
    ListLaunchesRequest.add_member(:status, Shapes::ShapeRef.new(shape: LaunchStatus, location: "querystring", location_name: "status"))
    ListLaunchesRequest.struct_class = Types::ListLaunchesRequest

    ListLaunchesResponse.add_member(:launches, Shapes::ShapeRef.new(shape: LaunchesList, location_name: "launches"))
    ListLaunchesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListLaunchesResponse.struct_class = Types::ListLaunchesResponse

    ListProjectsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxProjects, location: "querystring", location_name: "maxResults"))
    ListProjectsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListProjectsRequest.struct_class = Types::ListProjectsRequest

    ListProjectsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListProjectsResponse.add_member(:projects, Shapes::ShapeRef.new(shape: ProjectSummariesList, location_name: "projects"))
    ListProjectsResponse.struct_class = Types::ListProjectsResponse

    ListSegmentReferencesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxReferences, location: "querystring", location_name: "maxResults"))
    ListSegmentReferencesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListSegmentReferencesRequest.add_member(:segment, Shapes::ShapeRef.new(shape: SegmentRef, required: true, location: "uri", location_name: "segment"))
    ListSegmentReferencesRequest.add_member(:type, Shapes::ShapeRef.new(shape: SegmentReferenceResourceType, required: true, location: "querystring", location_name: "type"))
    ListSegmentReferencesRequest.struct_class = Types::ListSegmentReferencesRequest

    ListSegmentReferencesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSegmentReferencesResponse.add_member(:referenced_by, Shapes::ShapeRef.new(shape: RefResourceList, location_name: "referencedBy"))
    ListSegmentReferencesResponse.struct_class = Types::ListSegmentReferencesResponse

    ListSegmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSegments, location: "querystring", location_name: "maxResults"))
    ListSegmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListSegmentsRequest.struct_class = Types::ListSegmentsRequest

    ListSegmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSegmentsResponse.add_member(:segments, Shapes::ShapeRef.new(shape: SegmentList, location_name: "segments"))
    ListSegmentsResponse.struct_class = Types::ListSegmentsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MetricDefinition.add_member(:entity_id_key, Shapes::ShapeRef.new(shape: JsonPath, location_name: "entityIdKey"))
    MetricDefinition.add_member(:event_pattern, Shapes::ShapeRef.new(shape: JsonValue, location_name: "eventPattern", metadata: {"jsonvalue"=>true}))
    MetricDefinition.add_member(:name, Shapes::ShapeRef.new(shape: CwDimensionSafeName, location_name: "name"))
    MetricDefinition.add_member(:unit_label, Shapes::ShapeRef.new(shape: MetricUnitLabel, location_name: "unitLabel"))
    MetricDefinition.add_member(:value_key, Shapes::ShapeRef.new(shape: JsonPath, location_name: "valueKey"))
    MetricDefinition.struct_class = Types::MetricDefinition

    MetricDefinitionConfig.add_member(:entity_id_key, Shapes::ShapeRef.new(shape: JsonPath, required: true, location_name: "entityIdKey"))
    MetricDefinitionConfig.add_member(:event_pattern, Shapes::ShapeRef.new(shape: MetricDefinitionConfigEventPatternString, location_name: "eventPattern", metadata: {"jsonvalue"=>true}))
    MetricDefinitionConfig.add_member(:name, Shapes::ShapeRef.new(shape: CwDimensionSafeName, required: true, location_name: "name"))
    MetricDefinitionConfig.add_member(:unit_label, Shapes::ShapeRef.new(shape: MetricUnitLabel, location_name: "unitLabel"))
    MetricDefinitionConfig.add_member(:value_key, Shapes::ShapeRef.new(shape: JsonPath, required: true, location_name: "valueKey"))
    MetricDefinitionConfig.struct_class = Types::MetricDefinitionConfig

    MetricGoal.add_member(:desired_change, Shapes::ShapeRef.new(shape: ChangeDirectionEnum, location_name: "desiredChange"))
    MetricGoal.add_member(:metric_definition, Shapes::ShapeRef.new(shape: MetricDefinition, required: true, location_name: "metricDefinition"))
    MetricGoal.struct_class = Types::MetricGoal

    MetricGoalConfig.add_member(:desired_change, Shapes::ShapeRef.new(shape: ChangeDirectionEnum, location_name: "desiredChange"))
    MetricGoalConfig.add_member(:metric_definition, Shapes::ShapeRef.new(shape: MetricDefinitionConfig, required: true, location_name: "metricDefinition"))
    MetricGoalConfig.struct_class = Types::MetricGoalConfig

    MetricGoalConfigList.member = Shapes::ShapeRef.new(shape: MetricGoalConfig)

    MetricGoalsList.member = Shapes::ShapeRef.new(shape: MetricGoal)

    MetricMonitor.add_member(:metric_definition, Shapes::ShapeRef.new(shape: MetricDefinition, required: true, location_name: "metricDefinition"))
    MetricMonitor.struct_class = Types::MetricMonitor

    MetricMonitorConfig.add_member(:metric_definition, Shapes::ShapeRef.new(shape: MetricDefinitionConfig, required: true, location_name: "metricDefinition"))
    MetricMonitorConfig.struct_class = Types::MetricMonitorConfig

    MetricMonitorConfigList.member = Shapes::ShapeRef.new(shape: MetricMonitorConfig)

    MetricMonitorList.member = Shapes::ShapeRef.new(shape: MetricMonitor)

    MetricNameList.member = Shapes::ShapeRef.new(shape: CwDimensionSafeName)

    OnlineAbConfig.add_member(:control_treatment_name, Shapes::ShapeRef.new(shape: TreatmentName, location_name: "controlTreatmentName"))
    OnlineAbConfig.add_member(:treatment_weights, Shapes::ShapeRef.new(shape: TreatmentToWeightMap, location_name: "treatmentWeights"))
    OnlineAbConfig.struct_class = Types::OnlineAbConfig

    OnlineAbDefinition.add_member(:control_treatment_name, Shapes::ShapeRef.new(shape: TreatmentName, location_name: "controlTreatmentName"))
    OnlineAbDefinition.add_member(:treatment_weights, Shapes::ShapeRef.new(shape: TreatmentToWeightMap, location_name: "treatmentWeights"))
    OnlineAbDefinition.struct_class = Types::OnlineAbDefinition

    Project.add_member(:active_experiment_count, Shapes::ShapeRef.new(shape: Long, location_name: "activeExperimentCount"))
    Project.add_member(:active_launch_count, Shapes::ShapeRef.new(shape: Long, location_name: "activeLaunchCount"))
    Project.add_member(:app_config_resource, Shapes::ShapeRef.new(shape: ProjectAppConfigResource, location_name: "appConfigResource"))
    Project.add_member(:arn, Shapes::ShapeRef.new(shape: ProjectArn, required: true, location_name: "arn"))
    Project.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdTime"))
    Project.add_member(:data_delivery, Shapes::ShapeRef.new(shape: ProjectDataDelivery, location_name: "dataDelivery"))
    Project.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    Project.add_member(:experiment_count, Shapes::ShapeRef.new(shape: Long, location_name: "experimentCount"))
    Project.add_member(:feature_count, Shapes::ShapeRef.new(shape: Long, location_name: "featureCount"))
    Project.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedTime"))
    Project.add_member(:launch_count, Shapes::ShapeRef.new(shape: Long, location_name: "launchCount"))
    Project.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location_name: "name"))
    Project.add_member(:status, Shapes::ShapeRef.new(shape: ProjectStatus, required: true, location_name: "status"))
    Project.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Project.struct_class = Types::Project

    ProjectAppConfigResource.add_member(:application_id, Shapes::ShapeRef.new(shape: AppConfigResourceId, required: true, location_name: "applicationId"))
    ProjectAppConfigResource.add_member(:configuration_profile_id, Shapes::ShapeRef.new(shape: AppConfigResourceId, required: true, location_name: "configurationProfileId"))
    ProjectAppConfigResource.add_member(:environment_id, Shapes::ShapeRef.new(shape: AppConfigResourceId, required: true, location_name: "environmentId"))
    ProjectAppConfigResource.struct_class = Types::ProjectAppConfigResource

    ProjectAppConfigResourceConfig.add_member(:application_id, Shapes::ShapeRef.new(shape: AppConfigResourceId, location_name: "applicationId"))
    ProjectAppConfigResourceConfig.add_member(:environment_id, Shapes::ShapeRef.new(shape: AppConfigResourceId, location_name: "environmentId"))
    ProjectAppConfigResourceConfig.struct_class = Types::ProjectAppConfigResourceConfig

    ProjectDataDelivery.add_member(:cloud_watch_logs, Shapes::ShapeRef.new(shape: CloudWatchLogsDestination, location_name: "cloudWatchLogs"))
    ProjectDataDelivery.add_member(:s3_destination, Shapes::ShapeRef.new(shape: S3Destination, location_name: "s3Destination"))
    ProjectDataDelivery.struct_class = Types::ProjectDataDelivery

    ProjectDataDeliveryConfig.add_member(:cloud_watch_logs, Shapes::ShapeRef.new(shape: CloudWatchLogsDestinationConfig, location_name: "cloudWatchLogs"))
    ProjectDataDeliveryConfig.add_member(:s3_destination, Shapes::ShapeRef.new(shape: S3DestinationConfig, location_name: "s3Destination"))
    ProjectDataDeliveryConfig.struct_class = Types::ProjectDataDeliveryConfig

    ProjectSummariesList.member = Shapes::ShapeRef.new(shape: ProjectSummary)

    ProjectSummary.add_member(:active_experiment_count, Shapes::ShapeRef.new(shape: Long, location_name: "activeExperimentCount"))
    ProjectSummary.add_member(:active_launch_count, Shapes::ShapeRef.new(shape: Long, location_name: "activeLaunchCount"))
    ProjectSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ProjectArn, required: true, location_name: "arn"))
    ProjectSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdTime"))
    ProjectSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ProjectSummary.add_member(:experiment_count, Shapes::ShapeRef.new(shape: Long, location_name: "experimentCount"))
    ProjectSummary.add_member(:feature_count, Shapes::ShapeRef.new(shape: Long, location_name: "featureCount"))
    ProjectSummary.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedTime"))
    ProjectSummary.add_member(:launch_count, Shapes::ShapeRef.new(shape: Long, location_name: "launchCount"))
    ProjectSummary.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location_name: "name"))
    ProjectSummary.add_member(:status, Shapes::ShapeRef.new(shape: ProjectStatus, required: true, location_name: "status"))
    ProjectSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ProjectSummary.struct_class = Types::ProjectSummary

    PutProjectEventsRequest.add_member(:events, Shapes::ShapeRef.new(shape: EventList, required: true, location_name: "events"))
    PutProjectEventsRequest.add_member(:project, Shapes::ShapeRef.new(shape: ProjectRef, required: true, location: "uri", location_name: "project"))
    PutProjectEventsRequest.struct_class = Types::PutProjectEventsRequest

    PutProjectEventsResponse.add_member(:event_results, Shapes::ShapeRef.new(shape: PutProjectEventsResultEntryList, location_name: "eventResults"))
    PutProjectEventsResponse.add_member(:failed_event_count, Shapes::ShapeRef.new(shape: Integer, location_name: "failedEventCount"))
    PutProjectEventsResponse.struct_class = Types::PutProjectEventsResponse

    PutProjectEventsResultEntry.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCodeEnum, location_name: "errorCode"))
    PutProjectEventsResultEntry.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "errorMessage"))
    PutProjectEventsResultEntry.add_member(:event_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "eventId"))
    PutProjectEventsResultEntry.struct_class = Types::PutProjectEventsResultEntry

    PutProjectEventsResultEntryList.member = Shapes::ShapeRef.new(shape: PutProjectEventsResultEntry)

    RefResource.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    RefResource.add_member(:end_time, Shapes::ShapeRef.new(shape: String, location_name: "endTime"))
    RefResource.add_member(:last_updated_on, Shapes::ShapeRef.new(shape: String, location_name: "lastUpdatedOn"))
    RefResource.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    RefResource.add_member(:start_time, Shapes::ShapeRef.new(shape: String, location_name: "startTime"))
    RefResource.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    RefResource.add_member(:type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "type"))
    RefResource.struct_class = Types::RefResource

    RefResourceList.member = Shapes::ShapeRef.new(shape: RefResource)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3Destination.add_member(:bucket, Shapes::ShapeRef.new(shape: S3BucketSafeName, location_name: "bucket"))
    S3Destination.add_member(:prefix, Shapes::ShapeRef.new(shape: S3PrefixSafeName, location_name: "prefix"))
    S3Destination.struct_class = Types::S3Destination

    S3DestinationConfig.add_member(:bucket, Shapes::ShapeRef.new(shape: S3BucketSafeName, location_name: "bucket"))
    S3DestinationConfig.add_member(:prefix, Shapes::ShapeRef.new(shape: S3PrefixSafeName, location_name: "prefix"))
    S3DestinationConfig.struct_class = Types::S3DestinationConfig

    ScheduledSplit.add_member(:group_weights, Shapes::ShapeRef.new(shape: GroupToWeightMap, location_name: "groupWeights"))
    ScheduledSplit.add_member(:segment_overrides, Shapes::ShapeRef.new(shape: SegmentOverridesList, location_name: "segmentOverrides"))
    ScheduledSplit.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startTime"))
    ScheduledSplit.struct_class = Types::ScheduledSplit

    ScheduledSplitConfig.add_member(:group_weights, Shapes::ShapeRef.new(shape: GroupToWeightMap, required: true, location_name: "groupWeights"))
    ScheduledSplitConfig.add_member(:segment_overrides, Shapes::ShapeRef.new(shape: SegmentOverridesList, location_name: "segmentOverrides"))
    ScheduledSplitConfig.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startTime"))
    ScheduledSplitConfig.struct_class = Types::ScheduledSplitConfig

    ScheduledSplitConfigList.member = Shapes::ShapeRef.new(shape: ScheduledSplitConfig)

    ScheduledSplitsLaunchConfig.add_member(:steps, Shapes::ShapeRef.new(shape: ScheduledSplitConfigList, required: true, location_name: "steps"))
    ScheduledSplitsLaunchConfig.struct_class = Types::ScheduledSplitsLaunchConfig

    ScheduledSplitsLaunchDefinition.add_member(:steps, Shapes::ShapeRef.new(shape: ScheduledStepList, location_name: "steps"))
    ScheduledSplitsLaunchDefinition.struct_class = Types::ScheduledSplitsLaunchDefinition

    ScheduledStepList.member = Shapes::ShapeRef.new(shape: ScheduledSplit)

    Segment.add_member(:arn, Shapes::ShapeRef.new(shape: SegmentArn, required: true, location_name: "arn"))
    Segment.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdTime"))
    Segment.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    Segment.add_member(:experiment_count, Shapes::ShapeRef.new(shape: Long, location_name: "experimentCount"))
    Segment.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedTime"))
    Segment.add_member(:launch_count, Shapes::ShapeRef.new(shape: Long, location_name: "launchCount"))
    Segment.add_member(:name, Shapes::ShapeRef.new(shape: SegmentName, required: true, location_name: "name"))
    Segment.add_member(:pattern, Shapes::ShapeRef.new(shape: SegmentPattern, required: true, location_name: "pattern", metadata: {"jsonvalue"=>true}))
    Segment.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Segment.struct_class = Types::Segment

    SegmentList.member = Shapes::ShapeRef.new(shape: Segment)

    SegmentOverride.add_member(:evaluation_order, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "evaluationOrder"))
    SegmentOverride.add_member(:segment, Shapes::ShapeRef.new(shape: SegmentRef, required: true, location_name: "segment"))
    SegmentOverride.add_member(:weights, Shapes::ShapeRef.new(shape: GroupToWeightMap, required: true, location_name: "weights"))
    SegmentOverride.struct_class = Types::SegmentOverride

    SegmentOverridesList.member = Shapes::ShapeRef.new(shape: SegmentOverride)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    StartExperimentRequest.add_member(:analysis_complete_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "analysisCompleteTime"))
    StartExperimentRequest.add_member(:experiment, Shapes::ShapeRef.new(shape: ExperimentName, required: true, location: "uri", location_name: "experiment"))
    StartExperimentRequest.add_member(:project, Shapes::ShapeRef.new(shape: ProjectRef, required: true, location: "uri", location_name: "project"))
    StartExperimentRequest.struct_class = Types::StartExperimentRequest

    StartExperimentResponse.add_member(:started_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startedTime"))
    StartExperimentResponse.struct_class = Types::StartExperimentResponse

    StartLaunchRequest.add_member(:launch, Shapes::ShapeRef.new(shape: LaunchName, required: true, location: "uri", location_name: "launch"))
    StartLaunchRequest.add_member(:project, Shapes::ShapeRef.new(shape: ProjectRef, required: true, location: "uri", location_name: "project"))
    StartLaunchRequest.struct_class = Types::StartLaunchRequest

    StartLaunchResponse.add_member(:launch, Shapes::ShapeRef.new(shape: Launch, required: true, location_name: "launch"))
    StartLaunchResponse.struct_class = Types::StartLaunchResponse

    StopExperimentRequest.add_member(:desired_state, Shapes::ShapeRef.new(shape: ExperimentStopDesiredState, location_name: "desiredState"))
    StopExperimentRequest.add_member(:experiment, Shapes::ShapeRef.new(shape: ExperimentName, required: true, location: "uri", location_name: "experiment"))
    StopExperimentRequest.add_member(:project, Shapes::ShapeRef.new(shape: ProjectRef, required: true, location: "uri", location_name: "project"))
    StopExperimentRequest.add_member(:reason, Shapes::ShapeRef.new(shape: Description, location_name: "reason"))
    StopExperimentRequest.struct_class = Types::StopExperimentRequest

    StopExperimentResponse.add_member(:ended_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endedTime"))
    StopExperimentResponse.struct_class = Types::StopExperimentResponse

    StopLaunchRequest.add_member(:desired_state, Shapes::ShapeRef.new(shape: LaunchStopDesiredState, location_name: "desiredState"))
    StopLaunchRequest.add_member(:launch, Shapes::ShapeRef.new(shape: LaunchName, required: true, location: "uri", location_name: "launch"))
    StopLaunchRequest.add_member(:project, Shapes::ShapeRef.new(shape: ProjectRef, required: true, location: "uri", location_name: "project"))
    StopLaunchRequest.add_member(:reason, Shapes::ShapeRef.new(shape: Description, location_name: "reason"))
    StopLaunchRequest.struct_class = Types::StopLaunchRequest

    StopLaunchResponse.add_member(:ended_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endedTime"))
    StopLaunchResponse.struct_class = Types::StopLaunchResponse

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TestSegmentPatternRequest.add_member(:pattern, Shapes::ShapeRef.new(shape: SegmentPattern, required: true, location_name: "pattern", metadata: {"jsonvalue"=>true}))
    TestSegmentPatternRequest.add_member(:payload, Shapes::ShapeRef.new(shape: JsonValue, required: true, location_name: "payload", metadata: {"jsonvalue"=>true}))
    TestSegmentPatternRequest.struct_class = Types::TestSegmentPatternRequest

    TestSegmentPatternResponse.add_member(:match, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "match"))
    TestSegmentPatternResponse.struct_class = Types::TestSegmentPatternResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TimestampList.member = Shapes::ShapeRef.new(shape: Timestamp)

    Treatment.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    Treatment.add_member(:feature_variations, Shapes::ShapeRef.new(shape: FeatureToVariationMap, location_name: "featureVariations"))
    Treatment.add_member(:name, Shapes::ShapeRef.new(shape: TreatmentName, required: true, location_name: "name"))
    Treatment.struct_class = Types::Treatment

    TreatmentConfig.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    TreatmentConfig.add_member(:feature, Shapes::ShapeRef.new(shape: FeatureName, required: true, location_name: "feature"))
    TreatmentConfig.add_member(:name, Shapes::ShapeRef.new(shape: TreatmentName, required: true, location_name: "name"))
    TreatmentConfig.add_member(:variation, Shapes::ShapeRef.new(shape: VariationName, required: true, location_name: "variation"))
    TreatmentConfig.struct_class = Types::TreatmentConfig

    TreatmentConfigList.member = Shapes::ShapeRef.new(shape: TreatmentConfig)

    TreatmentList.member = Shapes::ShapeRef.new(shape: Treatment)

    TreatmentNameList.member = Shapes::ShapeRef.new(shape: TreatmentName)

    TreatmentToWeightMap.key = Shapes::ShapeRef.new(shape: TreatmentName)
    TreatmentToWeightMap.value = Shapes::ShapeRef.new(shape: SplitWeight)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateExperimentRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateExperimentRequest.add_member(:experiment, Shapes::ShapeRef.new(shape: ExperimentName, required: true, location: "uri", location_name: "experiment"))
    UpdateExperimentRequest.add_member(:metric_goals, Shapes::ShapeRef.new(shape: MetricGoalConfigList, location_name: "metricGoals"))
    UpdateExperimentRequest.add_member(:online_ab_config, Shapes::ShapeRef.new(shape: OnlineAbConfig, location_name: "onlineAbConfig"))
    UpdateExperimentRequest.add_member(:project, Shapes::ShapeRef.new(shape: ProjectRef, required: true, location: "uri", location_name: "project"))
    UpdateExperimentRequest.add_member(:randomization_salt, Shapes::ShapeRef.new(shape: RandomizationSalt, location_name: "randomizationSalt"))
    UpdateExperimentRequest.add_member(:remove_segment, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "removeSegment"))
    UpdateExperimentRequest.add_member(:sampling_rate, Shapes::ShapeRef.new(shape: SplitWeight, location_name: "samplingRate", metadata: {"box"=>true}))
    UpdateExperimentRequest.add_member(:segment, Shapes::ShapeRef.new(shape: SegmentRef, location_name: "segment"))
    UpdateExperimentRequest.add_member(:treatments, Shapes::ShapeRef.new(shape: TreatmentConfigList, location_name: "treatments"))
    UpdateExperimentRequest.struct_class = Types::UpdateExperimentRequest

    UpdateExperimentResponse.add_member(:experiment, Shapes::ShapeRef.new(shape: Experiment, required: true, location_name: "experiment"))
    UpdateExperimentResponse.struct_class = Types::UpdateExperimentResponse

    UpdateFeatureRequest.add_member(:add_or_update_variations, Shapes::ShapeRef.new(shape: VariationConfigsList, location_name: "addOrUpdateVariations"))
    UpdateFeatureRequest.add_member(:default_variation, Shapes::ShapeRef.new(shape: VariationName, location_name: "defaultVariation"))
    UpdateFeatureRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateFeatureRequest.add_member(:entity_overrides, Shapes::ShapeRef.new(shape: EntityOverrideMap, location_name: "entityOverrides"))
    UpdateFeatureRequest.add_member(:evaluation_strategy, Shapes::ShapeRef.new(shape: FeatureEvaluationStrategy, location_name: "evaluationStrategy"))
    UpdateFeatureRequest.add_member(:feature, Shapes::ShapeRef.new(shape: FeatureName, required: true, location: "uri", location_name: "feature"))
    UpdateFeatureRequest.add_member(:project, Shapes::ShapeRef.new(shape: ProjectRef, required: true, location: "uri", location_name: "project"))
    UpdateFeatureRequest.add_member(:remove_variations, Shapes::ShapeRef.new(shape: VariationNameList, location_name: "removeVariations"))
    UpdateFeatureRequest.struct_class = Types::UpdateFeatureRequest

    UpdateFeatureResponse.add_member(:feature, Shapes::ShapeRef.new(shape: Feature, required: true, location_name: "feature"))
    UpdateFeatureResponse.struct_class = Types::UpdateFeatureResponse

    UpdateLaunchRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateLaunchRequest.add_member(:groups, Shapes::ShapeRef.new(shape: LaunchGroupConfigList, location_name: "groups"))
    UpdateLaunchRequest.add_member(:launch, Shapes::ShapeRef.new(shape: LaunchName, required: true, location: "uri", location_name: "launch"))
    UpdateLaunchRequest.add_member(:metric_monitors, Shapes::ShapeRef.new(shape: MetricMonitorConfigList, location_name: "metricMonitors"))
    UpdateLaunchRequest.add_member(:project, Shapes::ShapeRef.new(shape: ProjectRef, required: true, location: "uri", location_name: "project"))
    UpdateLaunchRequest.add_member(:randomization_salt, Shapes::ShapeRef.new(shape: RandomizationSalt, location_name: "randomizationSalt"))
    UpdateLaunchRequest.add_member(:scheduled_splits_config, Shapes::ShapeRef.new(shape: ScheduledSplitsLaunchConfig, location_name: "scheduledSplitsConfig"))
    UpdateLaunchRequest.struct_class = Types::UpdateLaunchRequest

    UpdateLaunchResponse.add_member(:launch, Shapes::ShapeRef.new(shape: Launch, required: true, location_name: "launch"))
    UpdateLaunchResponse.struct_class = Types::UpdateLaunchResponse

    UpdateProjectDataDeliveryRequest.add_member(:cloud_watch_logs, Shapes::ShapeRef.new(shape: CloudWatchLogsDestinationConfig, location_name: "cloudWatchLogs"))
    UpdateProjectDataDeliveryRequest.add_member(:project, Shapes::ShapeRef.new(shape: ProjectRef, required: true, location: "uri", location_name: "project"))
    UpdateProjectDataDeliveryRequest.add_member(:s3_destination, Shapes::ShapeRef.new(shape: S3DestinationConfig, location_name: "s3Destination"))
    UpdateProjectDataDeliveryRequest.struct_class = Types::UpdateProjectDataDeliveryRequest

    UpdateProjectDataDeliveryResponse.add_member(:project, Shapes::ShapeRef.new(shape: Project, required: true, location_name: "project"))
    UpdateProjectDataDeliveryResponse.struct_class = Types::UpdateProjectDataDeliveryResponse

    UpdateProjectRequest.add_member(:app_config_resource, Shapes::ShapeRef.new(shape: ProjectAppConfigResourceConfig, location_name: "appConfigResource"))
    UpdateProjectRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateProjectRequest.add_member(:project, Shapes::ShapeRef.new(shape: ProjectRef, required: true, location: "uri", location_name: "project"))
    UpdateProjectRequest.struct_class = Types::UpdateProjectRequest

    UpdateProjectResponse.add_member(:project, Shapes::ShapeRef.new(shape: Project, required: true, location_name: "project"))
    UpdateProjectResponse.struct_class = Types::UpdateProjectResponse

    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    VariableValue.add_member(:bool_value, Shapes::ShapeRef.new(shape: Boolean, location_name: "boolValue"))
    VariableValue.add_member(:double_value, Shapes::ShapeRef.new(shape: Double, location_name: "doubleValue"))
    VariableValue.add_member(:long_value, Shapes::ShapeRef.new(shape: VariableValueLongValueLong, location_name: "longValue"))
    VariableValue.add_member(:string_value, Shapes::ShapeRef.new(shape: VariableValueStringValueString, location_name: "stringValue"))
    VariableValue.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    VariableValue.add_member_subclass(:bool_value, Types::VariableValue::BoolValue)
    VariableValue.add_member_subclass(:double_value, Types::VariableValue::DoubleValue)
    VariableValue.add_member_subclass(:long_value, Types::VariableValue::LongValue)
    VariableValue.add_member_subclass(:string_value, Types::VariableValue::StringValue)
    VariableValue.add_member_subclass(:unknown, Types::VariableValue::Unknown)
    VariableValue.struct_class = Types::VariableValue

    Variation.add_member(:name, Shapes::ShapeRef.new(shape: VariationName, location_name: "name"))
    Variation.add_member(:value, Shapes::ShapeRef.new(shape: VariableValue, location_name: "value"))
    Variation.struct_class = Types::Variation

    VariationConfig.add_member(:name, Shapes::ShapeRef.new(shape: VariationName, required: true, location_name: "name"))
    VariationConfig.add_member(:value, Shapes::ShapeRef.new(shape: VariableValue, required: true, location_name: "value"))
    VariationConfig.struct_class = Types::VariationConfig

    VariationConfigsList.member = Shapes::ShapeRef.new(shape: VariationConfig)

    VariationNameList.member = Shapes::ShapeRef.new(shape: VariationName)

    VariationsList.member = Shapes::ShapeRef.new(shape: Variation)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-02-01"

      api.metadata = {
        "apiVersion" => "2021-02-01",
        "endpointPrefix" => "evidently",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon CloudWatch Evidently",
        "serviceId" => "Evidently",
        "signatureVersion" => "v4",
        "signingName" => "evidently",
        "uid" => "evidently-2021-02-01",
      }

      api.add_operation(:batch_evaluate_feature, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchEvaluateFeature"
        o.http_method = "POST"
        o.http_request_uri = "/projects/{project}/evaluations"
        o.endpoint_pattern = {
          "hostPrefix" => "dataplane.",
        }
        o.input = Shapes::ShapeRef.new(shape: BatchEvaluateFeatureRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchEvaluateFeatureResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_experiment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateExperiment"
        o.http_method = "POST"
        o.http_request_uri = "/projects/{project}/experiments"
        o.input = Shapes::ShapeRef.new(shape: CreateExperimentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateExperimentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_feature, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFeature"
        o.http_method = "POST"
        o.http_request_uri = "/projects/{project}/features"
        o.input = Shapes::ShapeRef.new(shape: CreateFeatureRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFeatureResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_launch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLaunch"
        o.http_method = "POST"
        o.http_request_uri = "/projects/{project}/launches"
        o.input = Shapes::ShapeRef.new(shape: CreateLaunchRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLaunchResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProject"
        o.http_method = "POST"
        o.http_request_uri = "/projects"
        o.input = Shapes::ShapeRef.new(shape: CreateProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_segment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSegment"
        o.http_method = "POST"
        o.http_request_uri = "/segments"
        o.input = Shapes::ShapeRef.new(shape: CreateSegmentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSegmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_experiment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteExperiment"
        o.http_method = "DELETE"
        o.http_request_uri = "/projects/{project}/experiments/{experiment}"
        o.input = Shapes::ShapeRef.new(shape: DeleteExperimentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteExperimentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_feature, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFeature"
        o.http_method = "DELETE"
        o.http_request_uri = "/projects/{project}/features/{feature}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFeatureRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFeatureResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_launch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLaunch"
        o.http_method = "DELETE"
        o.http_request_uri = "/projects/{project}/launches/{launch}"
        o.input = Shapes::ShapeRef.new(shape: DeleteLaunchRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteLaunchResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProject"
        o.http_method = "DELETE"
        o.http_request_uri = "/projects/{project}"
        o.input = Shapes::ShapeRef.new(shape: DeleteProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_segment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSegment"
        o.http_method = "DELETE"
        o.http_request_uri = "/segments/{segment}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSegmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSegmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:evaluate_feature, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EvaluateFeature"
        o.http_method = "POST"
        o.http_request_uri = "/projects/{project}/evaluations/{feature}"
        o.endpoint_pattern = {
          "hostPrefix" => "dataplane.",
        }
        o.input = Shapes::ShapeRef.new(shape: EvaluateFeatureRequest)
        o.output = Shapes::ShapeRef.new(shape: EvaluateFeatureResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_experiment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetExperiment"
        o.http_method = "GET"
        o.http_request_uri = "/projects/{project}/experiments/{experiment}"
        o.input = Shapes::ShapeRef.new(shape: GetExperimentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetExperimentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_experiment_results, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetExperimentResults"
        o.http_method = "POST"
        o.http_request_uri = "/projects/{project}/experiments/{experiment}/results"
        o.input = Shapes::ShapeRef.new(shape: GetExperimentResultsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetExperimentResultsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_feature, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFeature"
        o.http_method = "GET"
        o.http_request_uri = "/projects/{project}/features/{feature}"
        o.input = Shapes::ShapeRef.new(shape: GetFeatureRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFeatureResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_launch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLaunch"
        o.http_method = "GET"
        o.http_request_uri = "/projects/{project}/launches/{launch}"
        o.input = Shapes::ShapeRef.new(shape: GetLaunchRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLaunchResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProject"
        o.http_method = "GET"
        o.http_request_uri = "/projects/{project}"
        o.input = Shapes::ShapeRef.new(shape: GetProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_segment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSegment"
        o.http_method = "GET"
        o.http_request_uri = "/segments/{segment}"
        o.input = Shapes::ShapeRef.new(shape: GetSegmentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSegmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_experiments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExperiments"
        o.http_method = "GET"
        o.http_request_uri = "/projects/{project}/experiments"
        o.input = Shapes::ShapeRef.new(shape: ListExperimentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListExperimentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_features, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFeatures"
        o.http_method = "GET"
        o.http_request_uri = "/projects/{project}/features"
        o.input = Shapes::ShapeRef.new(shape: ListFeaturesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFeaturesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_launches, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLaunches"
        o.http_method = "GET"
        o.http_request_uri = "/projects/{project}/launches"
        o.input = Shapes::ShapeRef.new(shape: ListLaunchesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLaunchesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_projects, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProjects"
        o.http_method = "GET"
        o.http_request_uri = "/projects"
        o.input = Shapes::ShapeRef.new(shape: ListProjectsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProjectsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_segment_references, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSegmentReferences"
        o.http_method = "GET"
        o.http_request_uri = "/segments/{segment}/references"
        o.input = Shapes::ShapeRef.new(shape: ListSegmentReferencesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSegmentReferencesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_segments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSegments"
        o.http_method = "GET"
        o.http_request_uri = "/segments"
        o.input = Shapes::ShapeRef.new(shape: ListSegmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSegmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:put_project_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutProjectEvents"
        o.http_method = "POST"
        o.http_request_uri = "/events/projects/{project}"
        o.endpoint_pattern = {
          "hostPrefix" => "dataplane.",
        }
        o.input = Shapes::ShapeRef.new(shape: PutProjectEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutProjectEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:start_experiment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartExperiment"
        o.http_method = "POST"
        o.http_request_uri = "/projects/{project}/experiments/{experiment}/start"
        o.input = Shapes::ShapeRef.new(shape: StartExperimentRequest)
        o.output = Shapes::ShapeRef.new(shape: StartExperimentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:start_launch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartLaunch"
        o.http_method = "POST"
        o.http_request_uri = "/projects/{project}/launches/{launch}/start"
        o.input = Shapes::ShapeRef.new(shape: StartLaunchRequest)
        o.output = Shapes::ShapeRef.new(shape: StartLaunchResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:stop_experiment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopExperiment"
        o.http_method = "POST"
        o.http_request_uri = "/projects/{project}/experiments/{experiment}/cancel"
        o.input = Shapes::ShapeRef.new(shape: StopExperimentRequest)
        o.output = Shapes::ShapeRef.new(shape: StopExperimentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:stop_launch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopLaunch"
        o.http_method = "POST"
        o.http_request_uri = "/projects/{project}/launches/{launch}/cancel"
        o.input = Shapes::ShapeRef.new(shape: StopLaunchRequest)
        o.output = Shapes::ShapeRef.new(shape: StopLaunchResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:test_segment_pattern, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TestSegmentPattern"
        o.http_method = "POST"
        o.http_request_uri = "/test-segment-pattern"
        o.input = Shapes::ShapeRef.new(shape: TestSegmentPatternRequest)
        o.output = Shapes::ShapeRef.new(shape: TestSegmentPatternResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_experiment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateExperiment"
        o.http_method = "PATCH"
        o.http_request_uri = "/projects/{project}/experiments/{experiment}"
        o.input = Shapes::ShapeRef.new(shape: UpdateExperimentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateExperimentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_feature, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFeature"
        o.http_method = "PATCH"
        o.http_request_uri = "/projects/{project}/features/{feature}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFeatureRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFeatureResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_launch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLaunch"
        o.http_method = "PATCH"
        o.http_request_uri = "/projects/{project}/launches/{launch}"
        o.input = Shapes::ShapeRef.new(shape: UpdateLaunchRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLaunchResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProject"
        o.http_method = "PATCH"
        o.http_request_uri = "/projects/{project}"
        o.input = Shapes::ShapeRef.new(shape: UpdateProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_project_data_delivery, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProjectDataDelivery"
        o.http_method = "PATCH"
        o.http_request_uri = "/projects/{project}/data-delivery"
        o.input = Shapes::ShapeRef.new(shape: UpdateProjectDataDeliveryRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProjectDataDeliveryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
