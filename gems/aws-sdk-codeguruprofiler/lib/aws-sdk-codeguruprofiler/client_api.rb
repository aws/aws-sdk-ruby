# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeGuruProfiler
  # @api private
  module ClientApi

    include Seahorse::Model

    ActionGroup = Shapes::StringShape.new(name: 'ActionGroup')
    AddNotificationChannelsRequest = Shapes::StructureShape.new(name: 'AddNotificationChannelsRequest')
    AddNotificationChannelsResponse = Shapes::StructureShape.new(name: 'AddNotificationChannelsResponse')
    AgentConfiguration = Shapes::StructureShape.new(name: 'AgentConfiguration')
    AgentOrchestrationConfig = Shapes::StructureShape.new(name: 'AgentOrchestrationConfig')
    AgentParameterField = Shapes::StringShape.new(name: 'AgentParameterField')
    AgentParameters = Shapes::MapShape.new(name: 'AgentParameters')
    AgentProfile = Shapes::BlobShape.new(name: 'AgentProfile')
    AggregatedProfile = Shapes::BlobShape.new(name: 'AggregatedProfile')
    AggregatedProfileTime = Shapes::StructureShape.new(name: 'AggregatedProfileTime')
    AggregationPeriod = Shapes::StringShape.new(name: 'AggregationPeriod')
    Anomalies = Shapes::ListShape.new(name: 'Anomalies')
    Anomaly = Shapes::StructureShape.new(name: 'Anomaly')
    AnomalyInstance = Shapes::StructureShape.new(name: 'AnomalyInstance')
    AnomalyInstanceId = Shapes::StringShape.new(name: 'AnomalyInstanceId')
    AnomalyInstances = Shapes::ListShape.new(name: 'AnomalyInstances')
    BatchGetFrameMetricDataRequest = Shapes::StructureShape.new(name: 'BatchGetFrameMetricDataRequest')
    BatchGetFrameMetricDataResponse = Shapes::StructureShape.new(name: 'BatchGetFrameMetricDataResponse')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Channel = Shapes::StructureShape.new(name: 'Channel')
    ChannelId = Shapes::StringShape.new(name: 'ChannelId')
    ChannelUri = Shapes::StringShape.new(name: 'ChannelUri')
    Channels = Shapes::ListShape.new(name: 'Channels')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ComputePlatform = Shapes::StringShape.new(name: 'ComputePlatform')
    ConfigureAgentRequest = Shapes::StructureShape.new(name: 'ConfigureAgentRequest')
    ConfigureAgentResponse = Shapes::StructureShape.new(name: 'ConfigureAgentResponse')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateProfilingGroupRequest = Shapes::StructureShape.new(name: 'CreateProfilingGroupRequest')
    CreateProfilingGroupResponse = Shapes::StructureShape.new(name: 'CreateProfilingGroupResponse')
    DeleteProfilingGroupRequest = Shapes::StructureShape.new(name: 'DeleteProfilingGroupRequest')
    DeleteProfilingGroupResponse = Shapes::StructureShape.new(name: 'DeleteProfilingGroupResponse')
    DescribeProfilingGroupRequest = Shapes::StructureShape.new(name: 'DescribeProfilingGroupRequest')
    DescribeProfilingGroupResponse = Shapes::StructureShape.new(name: 'DescribeProfilingGroupResponse')
    Double = Shapes::FloatShape.new(name: 'Double')
    EventPublisher = Shapes::StringShape.new(name: 'EventPublisher')
    EventPublishers = Shapes::ListShape.new(name: 'EventPublishers')
    FeedbackType = Shapes::StringShape.new(name: 'FeedbackType')
    FindingsReportId = Shapes::StringShape.new(name: 'FindingsReportId')
    FindingsReportSummaries = Shapes::ListShape.new(name: 'FindingsReportSummaries')
    FindingsReportSummary = Shapes::StructureShape.new(name: 'FindingsReportSummary')
    FleetInstanceId = Shapes::StringShape.new(name: 'FleetInstanceId')
    FrameMetric = Shapes::StructureShape.new(name: 'FrameMetric')
    FrameMetricData = Shapes::ListShape.new(name: 'FrameMetricData')
    FrameMetricDatum = Shapes::StructureShape.new(name: 'FrameMetricDatum')
    FrameMetricValues = Shapes::ListShape.new(name: 'FrameMetricValues')
    FrameMetrics = Shapes::ListShape.new(name: 'FrameMetrics')
    GetFindingsReportAccountSummaryRequest = Shapes::StructureShape.new(name: 'GetFindingsReportAccountSummaryRequest')
    GetFindingsReportAccountSummaryResponse = Shapes::StructureShape.new(name: 'GetFindingsReportAccountSummaryResponse')
    GetNotificationConfigurationRequest = Shapes::StructureShape.new(name: 'GetNotificationConfigurationRequest')
    GetNotificationConfigurationResponse = Shapes::StructureShape.new(name: 'GetNotificationConfigurationResponse')
    GetPolicyRequest = Shapes::StructureShape.new(name: 'GetPolicyRequest')
    GetPolicyResponse = Shapes::StructureShape.new(name: 'GetPolicyResponse')
    GetProfileRequest = Shapes::StructureShape.new(name: 'GetProfileRequest')
    GetProfileResponse = Shapes::StructureShape.new(name: 'GetProfileResponse')
    GetRecommendationsRequest = Shapes::StructureShape.new(name: 'GetRecommendationsRequest')
    GetRecommendationsResponse = Shapes::StructureShape.new(name: 'GetRecommendationsResponse')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListFindingsReportsRequest = Shapes::StructureShape.new(name: 'ListFindingsReportsRequest')
    ListFindingsReportsResponse = Shapes::StructureShape.new(name: 'ListFindingsReportsResponse')
    ListOfTimestamps = Shapes::ListShape.new(name: 'ListOfTimestamps')
    ListProfileTimesRequest = Shapes::StructureShape.new(name: 'ListProfileTimesRequest')
    ListProfileTimesResponse = Shapes::StructureShape.new(name: 'ListProfileTimesResponse')
    ListProfilingGroupsRequest = Shapes::StructureShape.new(name: 'ListProfilingGroupsRequest')
    ListProfilingGroupsResponse = Shapes::StructureShape.new(name: 'ListProfilingGroupsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Locale = Shapes::StringShape.new(name: 'Locale')
    Match = Shapes::StructureShape.new(name: 'Match')
    Matches = Shapes::ListShape.new(name: 'Matches')
    MaxDepth = Shapes::IntegerShape.new(name: 'MaxDepth')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Metadata = Shapes::MapShape.new(name: 'Metadata')
    MetadataField = Shapes::StringShape.new(name: 'MetadataField')
    Metric = Shapes::StructureShape.new(name: 'Metric')
    MetricType = Shapes::StringShape.new(name: 'MetricType')
    NotificationConfiguration = Shapes::StructureShape.new(name: 'NotificationConfiguration')
    OrderBy = Shapes::StringShape.new(name: 'OrderBy')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    Pattern = Shapes::StructureShape.new(name: 'Pattern')
    Percentage = Shapes::FloatShape.new(name: 'Percentage')
    Period = Shapes::StringShape.new(name: 'Period')
    PostAgentProfileRequest = Shapes::StructureShape.new(name: 'PostAgentProfileRequest')
    PostAgentProfileResponse = Shapes::StructureShape.new(name: 'PostAgentProfileResponse')
    Principal = Shapes::StringShape.new(name: 'Principal')
    Principals = Shapes::ListShape.new(name: 'Principals')
    ProfileTime = Shapes::StructureShape.new(name: 'ProfileTime')
    ProfileTimes = Shapes::ListShape.new(name: 'ProfileTimes')
    ProfilingGroupArn = Shapes::StringShape.new(name: 'ProfilingGroupArn')
    ProfilingGroupDescription = Shapes::StructureShape.new(name: 'ProfilingGroupDescription')
    ProfilingGroupDescriptions = Shapes::ListShape.new(name: 'ProfilingGroupDescriptions')
    ProfilingGroupName = Shapes::StringShape.new(name: 'ProfilingGroupName')
    ProfilingGroupNames = Shapes::ListShape.new(name: 'ProfilingGroupNames')
    ProfilingStatus = Shapes::StructureShape.new(name: 'ProfilingStatus')
    PutPermissionRequest = Shapes::StructureShape.new(name: 'PutPermissionRequest')
    PutPermissionResponse = Shapes::StructureShape.new(name: 'PutPermissionResponse')
    Recommendation = Shapes::StructureShape.new(name: 'Recommendation')
    Recommendations = Shapes::ListShape.new(name: 'Recommendations')
    RemoveNotificationChannelRequest = Shapes::StructureShape.new(name: 'RemoveNotificationChannelRequest')
    RemoveNotificationChannelResponse = Shapes::StructureShape.new(name: 'RemoveNotificationChannelResponse')
    RemovePermissionRequest = Shapes::StructureShape.new(name: 'RemovePermissionRequest')
    RemovePermissionResponse = Shapes::StructureShape.new(name: 'RemovePermissionResponse')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RevisionId = Shapes::StringShape.new(name: 'RevisionId')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    Strings = Shapes::ListShape.new(name: 'Strings')
    SubmitFeedbackRequest = Shapes::StructureShape.new(name: 'SubmitFeedbackRequest')
    SubmitFeedbackResponse = Shapes::StructureShape.new(name: 'SubmitFeedbackResponse')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    TargetFrame = Shapes::ListShape.new(name: 'TargetFrame')
    TargetFrames = Shapes::ListShape.new(name: 'TargetFrames')
    ThreadStates = Shapes::ListShape.new(name: 'ThreadStates')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp', timestampFormat: "iso8601")
    TimestampStructure = Shapes::StructureShape.new(name: 'TimestampStructure')
    UnprocessedEndTimeMap = Shapes::MapShape.new(name: 'UnprocessedEndTimeMap')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateProfilingGroupRequest = Shapes::StructureShape.new(name: 'UpdateProfilingGroupRequest')
    UpdateProfilingGroupResponse = Shapes::StructureShape.new(name: 'UpdateProfilingGroupResponse')
    UserFeedback = Shapes::StructureShape.new(name: 'UserFeedback')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AddNotificationChannelsRequest.add_member(:channels, Shapes::ShapeRef.new(shape: Channels, required: true, location_name: "channels"))
    AddNotificationChannelsRequest.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: ProfilingGroupName, required: true, location: "uri", location_name: "profilingGroupName"))
    AddNotificationChannelsRequest.struct_class = Types::AddNotificationChannelsRequest

    AddNotificationChannelsResponse.add_member(:notification_configuration, Shapes::ShapeRef.new(shape: NotificationConfiguration, location_name: "notificationConfiguration"))
    AddNotificationChannelsResponse.struct_class = Types::AddNotificationChannelsResponse

    AgentConfiguration.add_member(:agent_parameters, Shapes::ShapeRef.new(shape: AgentParameters, location_name: "agentParameters"))
    AgentConfiguration.add_member(:period_in_seconds, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "periodInSeconds"))
    AgentConfiguration.add_member(:should_profile, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "shouldProfile"))
    AgentConfiguration.struct_class = Types::AgentConfiguration

    AgentOrchestrationConfig.add_member(:profiling_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "profilingEnabled"))
    AgentOrchestrationConfig.struct_class = Types::AgentOrchestrationConfig

    AgentParameters.key = Shapes::ShapeRef.new(shape: AgentParameterField)
    AgentParameters.value = Shapes::ShapeRef.new(shape: String)

    AggregatedProfileTime.add_member(:period, Shapes::ShapeRef.new(shape: AggregationPeriod, location_name: "period"))
    AggregatedProfileTime.add_member(:start, Shapes::ShapeRef.new(shape: Timestamp, location_name: "start"))
    AggregatedProfileTime.struct_class = Types::AggregatedProfileTime

    Anomalies.member = Shapes::ShapeRef.new(shape: Anomaly)

    Anomaly.add_member(:instances, Shapes::ShapeRef.new(shape: AnomalyInstances, required: true, location_name: "instances"))
    Anomaly.add_member(:metric, Shapes::ShapeRef.new(shape: Metric, required: true, location_name: "metric"))
    Anomaly.add_member(:reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "reason"))
    Anomaly.struct_class = Types::Anomaly

    AnomalyInstance.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    AnomalyInstance.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    AnomalyInstance.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startTime"))
    AnomalyInstance.add_member(:user_feedback, Shapes::ShapeRef.new(shape: UserFeedback, location_name: "userFeedback"))
    AnomalyInstance.struct_class = Types::AnomalyInstance

    AnomalyInstances.member = Shapes::ShapeRef.new(shape: AnomalyInstance)

    BatchGetFrameMetricDataRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "endTime"))
    BatchGetFrameMetricDataRequest.add_member(:frame_metrics, Shapes::ShapeRef.new(shape: FrameMetrics, location_name: "frameMetrics"))
    BatchGetFrameMetricDataRequest.add_member(:period, Shapes::ShapeRef.new(shape: Period, location: "querystring", location_name: "period"))
    BatchGetFrameMetricDataRequest.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: ProfilingGroupName, required: true, location: "uri", location_name: "profilingGroupName"))
    BatchGetFrameMetricDataRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "startTime"))
    BatchGetFrameMetricDataRequest.add_member(:target_resolution, Shapes::ShapeRef.new(shape: AggregationPeriod, location: "querystring", location_name: "targetResolution"))
    BatchGetFrameMetricDataRequest.struct_class = Types::BatchGetFrameMetricDataRequest

    BatchGetFrameMetricDataResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "endTime"))
    BatchGetFrameMetricDataResponse.add_member(:end_times, Shapes::ShapeRef.new(shape: ListOfTimestamps, required: true, location_name: "endTimes"))
    BatchGetFrameMetricDataResponse.add_member(:frame_metric_data, Shapes::ShapeRef.new(shape: FrameMetricData, required: true, location_name: "frameMetricData"))
    BatchGetFrameMetricDataResponse.add_member(:resolution, Shapes::ShapeRef.new(shape: AggregationPeriod, required: true, location_name: "resolution"))
    BatchGetFrameMetricDataResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startTime"))
    BatchGetFrameMetricDataResponse.add_member(:unprocessed_end_times, Shapes::ShapeRef.new(shape: UnprocessedEndTimeMap, required: true, location_name: "unprocessedEndTimes"))
    BatchGetFrameMetricDataResponse.struct_class = Types::BatchGetFrameMetricDataResponse

    Channel.add_member(:event_publishers, Shapes::ShapeRef.new(shape: EventPublishers, required: true, location_name: "eventPublishers"))
    Channel.add_member(:id, Shapes::ShapeRef.new(shape: ChannelId, location_name: "id"))
    Channel.add_member(:uri, Shapes::ShapeRef.new(shape: ChannelUri, required: true, location_name: "uri"))
    Channel.struct_class = Types::Channel

    Channels.member = Shapes::ShapeRef.new(shape: Channel)

    ConfigureAgentRequest.add_member(:fleet_instance_id, Shapes::ShapeRef.new(shape: FleetInstanceId, location_name: "fleetInstanceId"))
    ConfigureAgentRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "metadata"))
    ConfigureAgentRequest.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: ProfilingGroupName, required: true, location: "uri", location_name: "profilingGroupName"))
    ConfigureAgentRequest.struct_class = Types::ConfigureAgentRequest

    ConfigureAgentResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: AgentConfiguration, required: true, location_name: "configuration"))
    ConfigureAgentResponse.struct_class = Types::ConfigureAgentResponse
    ConfigureAgentResponse[:payload] = :configuration
    ConfigureAgentResponse[:payload_member] = ConfigureAgentResponse.member(:configuration)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateProfilingGroupRequest.add_member(:agent_orchestration_config, Shapes::ShapeRef.new(shape: AgentOrchestrationConfig, location_name: "agentOrchestrationConfig"))
    CreateProfilingGroupRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateProfilingGroupRequest.add_member(:compute_platform, Shapes::ShapeRef.new(shape: ComputePlatform, location_name: "computePlatform"))
    CreateProfilingGroupRequest.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: ProfilingGroupName, required: true, location_name: "profilingGroupName"))
    CreateProfilingGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateProfilingGroupRequest.struct_class = Types::CreateProfilingGroupRequest

    CreateProfilingGroupResponse.add_member(:profiling_group, Shapes::ShapeRef.new(shape: ProfilingGroupDescription, required: true, location_name: "profilingGroup"))
    CreateProfilingGroupResponse.struct_class = Types::CreateProfilingGroupResponse
    CreateProfilingGroupResponse[:payload] = :profiling_group
    CreateProfilingGroupResponse[:payload_member] = CreateProfilingGroupResponse.member(:profiling_group)

    DeleteProfilingGroupRequest.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: ProfilingGroupName, required: true, location: "uri", location_name: "profilingGroupName"))
    DeleteProfilingGroupRequest.struct_class = Types::DeleteProfilingGroupRequest

    DeleteProfilingGroupResponse.struct_class = Types::DeleteProfilingGroupResponse

    DescribeProfilingGroupRequest.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: ProfilingGroupName, required: true, location: "uri", location_name: "profilingGroupName"))
    DescribeProfilingGroupRequest.struct_class = Types::DescribeProfilingGroupRequest

    DescribeProfilingGroupResponse.add_member(:profiling_group, Shapes::ShapeRef.new(shape: ProfilingGroupDescription, required: true, location_name: "profilingGroup"))
    DescribeProfilingGroupResponse.struct_class = Types::DescribeProfilingGroupResponse
    DescribeProfilingGroupResponse[:payload] = :profiling_group
    DescribeProfilingGroupResponse[:payload_member] = DescribeProfilingGroupResponse.member(:profiling_group)

    EventPublishers.member = Shapes::ShapeRef.new(shape: EventPublisher)

    FindingsReportSummaries.member = Shapes::ShapeRef.new(shape: FindingsReportSummary)

    FindingsReportSummary.add_member(:id, Shapes::ShapeRef.new(shape: FindingsReportId, location_name: "id"))
    FindingsReportSummary.add_member(:profile_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "profileEndTime"))
    FindingsReportSummary.add_member(:profile_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "profileStartTime"))
    FindingsReportSummary.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: String, location_name: "profilingGroupName"))
    FindingsReportSummary.add_member(:total_number_of_findings, Shapes::ShapeRef.new(shape: Integer, location_name: "totalNumberOfFindings"))
    FindingsReportSummary.struct_class = Types::FindingsReportSummary

    FrameMetric.add_member(:frame_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "frameName"))
    FrameMetric.add_member(:thread_states, Shapes::ShapeRef.new(shape: ThreadStates, required: true, location_name: "threadStates"))
    FrameMetric.add_member(:type, Shapes::ShapeRef.new(shape: MetricType, required: true, location_name: "type"))
    FrameMetric.struct_class = Types::FrameMetric

    FrameMetricData.member = Shapes::ShapeRef.new(shape: FrameMetricDatum)

    FrameMetricDatum.add_member(:frame_metric, Shapes::ShapeRef.new(shape: FrameMetric, required: true, location_name: "frameMetric"))
    FrameMetricDatum.add_member(:values, Shapes::ShapeRef.new(shape: FrameMetricValues, required: true, location_name: "values"))
    FrameMetricDatum.struct_class = Types::FrameMetricDatum

    FrameMetricValues.member = Shapes::ShapeRef.new(shape: Double)

    FrameMetrics.member = Shapes::ShapeRef.new(shape: FrameMetric)

    GetFindingsReportAccountSummaryRequest.add_member(:daily_reports_only, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "dailyReportsOnly"))
    GetFindingsReportAccountSummaryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetFindingsReportAccountSummaryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    GetFindingsReportAccountSummaryRequest.struct_class = Types::GetFindingsReportAccountSummaryRequest

    GetFindingsReportAccountSummaryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    GetFindingsReportAccountSummaryResponse.add_member(:report_summaries, Shapes::ShapeRef.new(shape: FindingsReportSummaries, required: true, location_name: "reportSummaries"))
    GetFindingsReportAccountSummaryResponse.struct_class = Types::GetFindingsReportAccountSummaryResponse

    GetNotificationConfigurationRequest.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: ProfilingGroupName, required: true, location: "uri", location_name: "profilingGroupName"))
    GetNotificationConfigurationRequest.struct_class = Types::GetNotificationConfigurationRequest

    GetNotificationConfigurationResponse.add_member(:notification_configuration, Shapes::ShapeRef.new(shape: NotificationConfiguration, required: true, location_name: "notificationConfiguration"))
    GetNotificationConfigurationResponse.struct_class = Types::GetNotificationConfigurationResponse

    GetPolicyRequest.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: ProfilingGroupName, required: true, location: "uri", location_name: "profilingGroupName"))
    GetPolicyRequest.struct_class = Types::GetPolicyRequest

    GetPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: String, required: true, location_name: "policy"))
    GetPolicyResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, required: true, location_name: "revisionId"))
    GetPolicyResponse.struct_class = Types::GetPolicyResponse

    GetProfileRequest.add_member(:accept, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Accept"))
    GetProfileRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "endTime"))
    GetProfileRequest.add_member(:max_depth, Shapes::ShapeRef.new(shape: MaxDepth, location: "querystring", location_name: "maxDepth"))
    GetProfileRequest.add_member(:period, Shapes::ShapeRef.new(shape: Period, location: "querystring", location_name: "period"))
    GetProfileRequest.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: ProfilingGroupName, required: true, location: "uri", location_name: "profilingGroupName"))
    GetProfileRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "startTime"))
    GetProfileRequest.struct_class = Types::GetProfileRequest

    GetProfileResponse.add_member(:content_encoding, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Encoding"))
    GetProfileResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: String, required: true, location: "header", location_name: "Content-Type"))
    GetProfileResponse.add_member(:profile, Shapes::ShapeRef.new(shape: AggregatedProfile, required: true, location_name: "profile"))
    GetProfileResponse.struct_class = Types::GetProfileResponse
    GetProfileResponse[:payload] = :profile
    GetProfileResponse[:payload_member] = GetProfileResponse.member(:profile)

    GetRecommendationsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "endTime"))
    GetRecommendationsRequest.add_member(:locale, Shapes::ShapeRef.new(shape: Locale, location: "querystring", location_name: "locale"))
    GetRecommendationsRequest.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: ProfilingGroupName, required: true, location: "uri", location_name: "profilingGroupName"))
    GetRecommendationsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "startTime"))
    GetRecommendationsRequest.struct_class = Types::GetRecommendationsRequest

    GetRecommendationsResponse.add_member(:anomalies, Shapes::ShapeRef.new(shape: Anomalies, required: true, location_name: "anomalies"))
    GetRecommendationsResponse.add_member(:profile_end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "profileEndTime"))
    GetRecommendationsResponse.add_member(:profile_start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "profileStartTime"))
    GetRecommendationsResponse.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: ProfilingGroupName, required: true, location_name: "profilingGroupName"))
    GetRecommendationsResponse.add_member(:recommendations, Shapes::ShapeRef.new(shape: Recommendations, required: true, location_name: "recommendations"))
    GetRecommendationsResponse.struct_class = Types::GetRecommendationsResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListFindingsReportsRequest.add_member(:daily_reports_only, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "dailyReportsOnly"))
    ListFindingsReportsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "endTime"))
    ListFindingsReportsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListFindingsReportsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListFindingsReportsRequest.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: ProfilingGroupName, required: true, location: "uri", location_name: "profilingGroupName"))
    ListFindingsReportsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "startTime"))
    ListFindingsReportsRequest.struct_class = Types::ListFindingsReportsRequest

    ListFindingsReportsResponse.add_member(:findings_report_summaries, Shapes::ShapeRef.new(shape: FindingsReportSummaries, required: true, location_name: "findingsReportSummaries"))
    ListFindingsReportsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListFindingsReportsResponse.struct_class = Types::ListFindingsReportsResponse

    ListOfTimestamps.member = Shapes::ShapeRef.new(shape: TimestampStructure)

    ListProfileTimesRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "endTime"))
    ListProfileTimesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListProfileTimesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListProfileTimesRequest.add_member(:order_by, Shapes::ShapeRef.new(shape: OrderBy, location: "querystring", location_name: "orderBy"))
    ListProfileTimesRequest.add_member(:period, Shapes::ShapeRef.new(shape: AggregationPeriod, required: true, location: "querystring", location_name: "period"))
    ListProfileTimesRequest.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: ProfilingGroupName, required: true, location: "uri", location_name: "profilingGroupName"))
    ListProfileTimesRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "startTime"))
    ListProfileTimesRequest.struct_class = Types::ListProfileTimesRequest

    ListProfileTimesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListProfileTimesResponse.add_member(:profile_times, Shapes::ShapeRef.new(shape: ProfileTimes, required: true, location_name: "profileTimes"))
    ListProfileTimesResponse.struct_class = Types::ListProfileTimesResponse

    ListProfilingGroupsRequest.add_member(:include_description, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "includeDescription"))
    ListProfilingGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListProfilingGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListProfilingGroupsRequest.struct_class = Types::ListProfilingGroupsRequest

    ListProfilingGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListProfilingGroupsResponse.add_member(:profiling_group_names, Shapes::ShapeRef.new(shape: ProfilingGroupNames, required: true, location_name: "profilingGroupNames"))
    ListProfilingGroupsResponse.add_member(:profiling_groups, Shapes::ShapeRef.new(shape: ProfilingGroupDescriptions, location_name: "profilingGroups"))
    ListProfilingGroupsResponse.struct_class = Types::ListProfilingGroupsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ProfilingGroupArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    Match.add_member(:frame_address, Shapes::ShapeRef.new(shape: String, location_name: "frameAddress"))
    Match.add_member(:target_frames_index, Shapes::ShapeRef.new(shape: Integer, location_name: "targetFramesIndex"))
    Match.add_member(:threshold_breach_value, Shapes::ShapeRef.new(shape: Double, location_name: "thresholdBreachValue"))
    Match.struct_class = Types::Match

    Matches.member = Shapes::ShapeRef.new(shape: Match)

    Metadata.key = Shapes::ShapeRef.new(shape: MetadataField)
    Metadata.value = Shapes::ShapeRef.new(shape: String)

    Metric.add_member(:frame_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "frameName"))
    Metric.add_member(:thread_states, Shapes::ShapeRef.new(shape: Strings, required: true, location_name: "threadStates"))
    Metric.add_member(:type, Shapes::ShapeRef.new(shape: MetricType, required: true, location_name: "type"))
    Metric.struct_class = Types::Metric

    NotificationConfiguration.add_member(:channels, Shapes::ShapeRef.new(shape: Channels, location_name: "channels"))
    NotificationConfiguration.struct_class = Types::NotificationConfiguration

    Pattern.add_member(:counters_to_aggregate, Shapes::ShapeRef.new(shape: Strings, location_name: "countersToAggregate"))
    Pattern.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    Pattern.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    Pattern.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    Pattern.add_member(:resolution_steps, Shapes::ShapeRef.new(shape: String, location_name: "resolutionSteps"))
    Pattern.add_member(:target_frames, Shapes::ShapeRef.new(shape: TargetFrames, location_name: "targetFrames"))
    Pattern.add_member(:threshold_percent, Shapes::ShapeRef.new(shape: Percentage, location_name: "thresholdPercent"))
    Pattern.struct_class = Types::Pattern

    PostAgentProfileRequest.add_member(:agent_profile, Shapes::ShapeRef.new(shape: AgentProfile, required: true, location_name: "agentProfile"))
    PostAgentProfileRequest.add_member(:content_type, Shapes::ShapeRef.new(shape: String, required: true, location: "header", location_name: "Content-Type"))
    PostAgentProfileRequest.add_member(:profile_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "profileToken", metadata: {"idempotencyToken"=>true}))
    PostAgentProfileRequest.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: ProfilingGroupName, required: true, location: "uri", location_name: "profilingGroupName"))
    PostAgentProfileRequest.struct_class = Types::PostAgentProfileRequest
    PostAgentProfileRequest[:payload] = :agent_profile
    PostAgentProfileRequest[:payload_member] = PostAgentProfileRequest.member(:agent_profile)

    PostAgentProfileResponse.struct_class = Types::PostAgentProfileResponse

    Principals.member = Shapes::ShapeRef.new(shape: Principal)

    ProfileTime.add_member(:start, Shapes::ShapeRef.new(shape: Timestamp, location_name: "start"))
    ProfileTime.struct_class = Types::ProfileTime

    ProfileTimes.member = Shapes::ShapeRef.new(shape: ProfileTime)

    ProfilingGroupDescription.add_member(:agent_orchestration_config, Shapes::ShapeRef.new(shape: AgentOrchestrationConfig, location_name: "agentOrchestrationConfig"))
    ProfilingGroupDescription.add_member(:arn, Shapes::ShapeRef.new(shape: ProfilingGroupArn, location_name: "arn"))
    ProfilingGroupDescription.add_member(:compute_platform, Shapes::ShapeRef.new(shape: ComputePlatform, location_name: "computePlatform"))
    ProfilingGroupDescription.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    ProfilingGroupDescription.add_member(:name, Shapes::ShapeRef.new(shape: ProfilingGroupName, location_name: "name"))
    ProfilingGroupDescription.add_member(:profiling_status, Shapes::ShapeRef.new(shape: ProfilingStatus, location_name: "profilingStatus"))
    ProfilingGroupDescription.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ProfilingGroupDescription.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    ProfilingGroupDescription.struct_class = Types::ProfilingGroupDescription

    ProfilingGroupDescriptions.member = Shapes::ShapeRef.new(shape: ProfilingGroupDescription)

    ProfilingGroupNames.member = Shapes::ShapeRef.new(shape: ProfilingGroupName)

    ProfilingStatus.add_member(:latest_agent_orchestrated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "latestAgentOrchestratedAt"))
    ProfilingStatus.add_member(:latest_agent_profile_reported_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "latestAgentProfileReportedAt"))
    ProfilingStatus.add_member(:latest_aggregated_profile, Shapes::ShapeRef.new(shape: AggregatedProfileTime, location_name: "latestAggregatedProfile"))
    ProfilingStatus.struct_class = Types::ProfilingStatus

    PutPermissionRequest.add_member(:action_group, Shapes::ShapeRef.new(shape: ActionGroup, required: true, location: "uri", location_name: "actionGroup"))
    PutPermissionRequest.add_member(:principals, Shapes::ShapeRef.new(shape: Principals, required: true, location_name: "principals"))
    PutPermissionRequest.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: ProfilingGroupName, required: true, location: "uri", location_name: "profilingGroupName"))
    PutPermissionRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, location_name: "revisionId"))
    PutPermissionRequest.struct_class = Types::PutPermissionRequest

    PutPermissionResponse.add_member(:policy, Shapes::ShapeRef.new(shape: String, required: true, location_name: "policy"))
    PutPermissionResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, required: true, location_name: "revisionId"))
    PutPermissionResponse.struct_class = Types::PutPermissionResponse

    Recommendation.add_member(:all_matches_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "allMatchesCount"))
    Recommendation.add_member(:all_matches_sum, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "allMatchesSum"))
    Recommendation.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "endTime"))
    Recommendation.add_member(:pattern, Shapes::ShapeRef.new(shape: Pattern, required: true, location_name: "pattern"))
    Recommendation.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startTime"))
    Recommendation.add_member(:top_matches, Shapes::ShapeRef.new(shape: Matches, required: true, location_name: "topMatches"))
    Recommendation.struct_class = Types::Recommendation

    Recommendations.member = Shapes::ShapeRef.new(shape: Recommendation)

    RemoveNotificationChannelRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: ChannelId, required: true, location: "uri", location_name: "channelId"))
    RemoveNotificationChannelRequest.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: ProfilingGroupName, required: true, location: "uri", location_name: "profilingGroupName"))
    RemoveNotificationChannelRequest.struct_class = Types::RemoveNotificationChannelRequest

    RemoveNotificationChannelResponse.add_member(:notification_configuration, Shapes::ShapeRef.new(shape: NotificationConfiguration, location_name: "notificationConfiguration"))
    RemoveNotificationChannelResponse.struct_class = Types::RemoveNotificationChannelResponse

    RemovePermissionRequest.add_member(:action_group, Shapes::ShapeRef.new(shape: ActionGroup, required: true, location: "uri", location_name: "actionGroup"))
    RemovePermissionRequest.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: ProfilingGroupName, required: true, location: "uri", location_name: "profilingGroupName"))
    RemovePermissionRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, required: true, location: "querystring", location_name: "revisionId"))
    RemovePermissionRequest.struct_class = Types::RemovePermissionRequest

    RemovePermissionResponse.add_member(:policy, Shapes::ShapeRef.new(shape: String, required: true, location_name: "policy"))
    RemovePermissionResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, required: true, location_name: "revisionId"))
    RemovePermissionResponse.struct_class = Types::RemovePermissionResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Strings.member = Shapes::ShapeRef.new(shape: String)

    SubmitFeedbackRequest.add_member(:anomaly_instance_id, Shapes::ShapeRef.new(shape: AnomalyInstanceId, required: true, location: "uri", location_name: "anomalyInstanceId"))
    SubmitFeedbackRequest.add_member(:comment, Shapes::ShapeRef.new(shape: String, location_name: "comment"))
    SubmitFeedbackRequest.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: ProfilingGroupName, required: true, location: "uri", location_name: "profilingGroupName"))
    SubmitFeedbackRequest.add_member(:type, Shapes::ShapeRef.new(shape: FeedbackType, required: true, location_name: "type"))
    SubmitFeedbackRequest.struct_class = Types::SubmitFeedbackRequest

    SubmitFeedbackResponse.struct_class = Types::SubmitFeedbackResponse

    TagKeys.member = Shapes::ShapeRef.new(shape: String)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ProfilingGroupArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagsMap.key = Shapes::ShapeRef.new(shape: String)
    TagsMap.value = Shapes::ShapeRef.new(shape: String)

    TargetFrame.member = Shapes::ShapeRef.new(shape: String)

    TargetFrames.member = Shapes::ShapeRef.new(shape: TargetFrame)

    ThreadStates.member = Shapes::ShapeRef.new(shape: String)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TimestampStructure.add_member(:value, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "value"))
    TimestampStructure.struct_class = Types::TimestampStructure

    UnprocessedEndTimeMap.key = Shapes::ShapeRef.new(shape: String)
    UnprocessedEndTimeMap.value = Shapes::ShapeRef.new(shape: ListOfTimestamps)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ProfilingGroupArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateProfilingGroupRequest.add_member(:agent_orchestration_config, Shapes::ShapeRef.new(shape: AgentOrchestrationConfig, required: true, location_name: "agentOrchestrationConfig"))
    UpdateProfilingGroupRequest.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: ProfilingGroupName, required: true, location: "uri", location_name: "profilingGroupName"))
    UpdateProfilingGroupRequest.struct_class = Types::UpdateProfilingGroupRequest

    UpdateProfilingGroupResponse.add_member(:profiling_group, Shapes::ShapeRef.new(shape: ProfilingGroupDescription, required: true, location_name: "profilingGroup"))
    UpdateProfilingGroupResponse.struct_class = Types::UpdateProfilingGroupResponse
    UpdateProfilingGroupResponse[:payload] = :profiling_group
    UpdateProfilingGroupResponse[:payload_member] = UpdateProfilingGroupResponse.member(:profiling_group)

    UserFeedback.add_member(:type, Shapes::ShapeRef.new(shape: FeedbackType, required: true, location_name: "type"))
    UserFeedback.struct_class = Types::UserFeedback

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-07-18"

      api.metadata = {
        "apiVersion" => "2019-07-18",
        "endpointPrefix" => "codeguru-profiler",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon CodeGuru Profiler",
        "serviceId" => "CodeGuruProfiler",
        "signatureVersion" => "v4",
        "signingName" => "codeguru-profiler",
        "uid" => "codeguruprofiler-2019-07-18",
      }

      api.add_operation(:add_notification_channels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddNotificationChannels"
        o.http_method = "POST"
        o.http_request_uri = "/profilingGroups/{profilingGroupName}/notificationConfiguration"
        o.input = Shapes::ShapeRef.new(shape: AddNotificationChannelsRequest)
        o.output = Shapes::ShapeRef.new(shape: AddNotificationChannelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:batch_get_frame_metric_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetFrameMetricData"
        o.http_method = "POST"
        o.http_request_uri = "/profilingGroups/{profilingGroupName}/frames/-/metrics"
        o.input = Shapes::ShapeRef.new(shape: BatchGetFrameMetricDataRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetFrameMetricDataResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:configure_agent, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ConfigureAgent"
        o.http_method = "POST"
        o.http_request_uri = "/profilingGroups/{profilingGroupName}/configureAgent"
        o.input = Shapes::ShapeRef.new(shape: ConfigureAgentRequest)
        o.output = Shapes::ShapeRef.new(shape: ConfigureAgentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_profiling_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProfilingGroup"
        o.http_method = "POST"
        o.http_request_uri = "/profilingGroups"
        o.input = Shapes::ShapeRef.new(shape: CreateProfilingGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProfilingGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_profiling_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProfilingGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/profilingGroups/{profilingGroupName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteProfilingGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProfilingGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_profiling_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProfilingGroup"
        o.http_method = "GET"
        o.http_request_uri = "/profilingGroups/{profilingGroupName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeProfilingGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeProfilingGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_findings_report_account_summary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFindingsReportAccountSummary"
        o.http_method = "GET"
        o.http_request_uri = "/internal/findingsReports"
        o.input = Shapes::ShapeRef.new(shape: GetFindingsReportAccountSummaryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFindingsReportAccountSummaryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_notification_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNotificationConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/profilingGroups/{profilingGroupName}/notificationConfiguration"
        o.input = Shapes::ShapeRef.new(shape: GetNotificationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetNotificationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/profilingGroups/{profilingGroupName}/policy"
        o.input = Shapes::ShapeRef.new(shape: GetPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProfile"
        o.http_method = "GET"
        o.http_request_uri = "/profilingGroups/{profilingGroupName}/profile"
        o.input = Shapes::ShapeRef.new(shape: GetProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_recommendations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRecommendations"
        o.http_method = "GET"
        o.http_request_uri = "/internal/profilingGroups/{profilingGroupName}/recommendations"
        o.input = Shapes::ShapeRef.new(shape: GetRecommendationsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRecommendationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_findings_reports, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFindingsReports"
        o.http_method = "GET"
        o.http_request_uri = "/internal/profilingGroups/{profilingGroupName}/findingsReports"
        o.input = Shapes::ShapeRef.new(shape: ListFindingsReportsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFindingsReportsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_profile_times, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProfileTimes"
        o.http_method = "GET"
        o.http_request_uri = "/profilingGroups/{profilingGroupName}/profileTimes"
        o.input = Shapes::ShapeRef.new(shape: ListProfileTimesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProfileTimesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_profiling_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProfilingGroups"
        o.http_method = "GET"
        o.http_request_uri = "/profilingGroups"
        o.input = Shapes::ShapeRef.new(shape: ListProfilingGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProfilingGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:post_agent_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PostAgentProfile"
        o.http_method = "POST"
        o.http_request_uri = "/profilingGroups/{profilingGroupName}/agentProfile"
        o.input = Shapes::ShapeRef.new(shape: PostAgentProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: PostAgentProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:put_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutPermission"
        o.http_method = "PUT"
        o.http_request_uri = "/profilingGroups/{profilingGroupName}/policy/{actionGroup}"
        o.input = Shapes::ShapeRef.new(shape: PutPermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: PutPermissionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:remove_notification_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveNotificationChannel"
        o.http_method = "DELETE"
        o.http_request_uri = "/profilingGroups/{profilingGroupName}/notificationConfiguration/{channelId}"
        o.input = Shapes::ShapeRef.new(shape: RemoveNotificationChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveNotificationChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:remove_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemovePermission"
        o.http_method = "DELETE"
        o.http_request_uri = "/profilingGroups/{profilingGroupName}/policy/{actionGroup}"
        o.input = Shapes::ShapeRef.new(shape: RemovePermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: RemovePermissionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:submit_feedback, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SubmitFeedback"
        o.http_method = "POST"
        o.http_request_uri = "/internal/profilingGroups/{profilingGroupName}/anomalies/{anomalyInstanceId}/feedback"
        o.input = Shapes::ShapeRef.new(shape: SubmitFeedbackRequest)
        o.output = Shapes::ShapeRef.new(shape: SubmitFeedbackResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:update_profiling_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProfilingGroup"
        o.http_method = "PUT"
        o.http_request_uri = "/profilingGroups/{profilingGroupName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateProfilingGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProfilingGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
