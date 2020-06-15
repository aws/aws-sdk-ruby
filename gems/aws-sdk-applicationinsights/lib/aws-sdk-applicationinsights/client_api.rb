# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ApplicationInsights
  # @api private
  module ClientApi

    include Seahorse::Model

    AffectedResource = Shapes::StringShape.new(name: 'AffectedResource')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    ApplicationComponent = Shapes::StructureShape.new(name: 'ApplicationComponent')
    ApplicationComponentList = Shapes::ListShape.new(name: 'ApplicationComponentList')
    ApplicationInfo = Shapes::StructureShape.new(name: 'ApplicationInfo')
    ApplicationInfoList = Shapes::ListShape.new(name: 'ApplicationInfoList')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    CWEMonitorEnabled = Shapes::BooleanShape.new(name: 'CWEMonitorEnabled')
    CloudWatchEventDetailType = Shapes::StringShape.new(name: 'CloudWatchEventDetailType')
    CloudWatchEventId = Shapes::StringShape.new(name: 'CloudWatchEventId')
    CloudWatchEventSource = Shapes::StringShape.new(name: 'CloudWatchEventSource')
    CodeDeployApplication = Shapes::StringShape.new(name: 'CodeDeployApplication')
    CodeDeployDeploymentGroup = Shapes::StringShape.new(name: 'CodeDeployDeploymentGroup')
    CodeDeployDeploymentId = Shapes::StringShape.new(name: 'CodeDeployDeploymentId')
    CodeDeployInstanceGroupId = Shapes::StringShape.new(name: 'CodeDeployInstanceGroupId')
    CodeDeployState = Shapes::StringShape.new(name: 'CodeDeployState')
    ComponentConfiguration = Shapes::StringShape.new(name: 'ComponentConfiguration')
    ComponentName = Shapes::StringShape.new(name: 'ComponentName')
    ConfigurationEvent = Shapes::StructureShape.new(name: 'ConfigurationEvent')
    ConfigurationEventDetail = Shapes::StringShape.new(name: 'ConfigurationEventDetail')
    ConfigurationEventList = Shapes::ListShape.new(name: 'ConfigurationEventList')
    ConfigurationEventMonitoredResourceARN = Shapes::StringShape.new(name: 'ConfigurationEventMonitoredResourceARN')
    ConfigurationEventResourceName = Shapes::StringShape.new(name: 'ConfigurationEventResourceName')
    ConfigurationEventResourceType = Shapes::StringShape.new(name: 'ConfigurationEventResourceType')
    ConfigurationEventStatus = Shapes::StringShape.new(name: 'ConfigurationEventStatus')
    ConfigurationEventTime = Shapes::TimestampShape.new(name: 'ConfigurationEventTime')
    CreateApplicationRequest = Shapes::StructureShape.new(name: 'CreateApplicationRequest')
    CreateApplicationResponse = Shapes::StructureShape.new(name: 'CreateApplicationResponse')
    CreateComponentRequest = Shapes::StructureShape.new(name: 'CreateComponentRequest')
    CreateComponentResponse = Shapes::StructureShape.new(name: 'CreateComponentResponse')
    CreateLogPatternRequest = Shapes::StructureShape.new(name: 'CreateLogPatternRequest')
    CreateLogPatternResponse = Shapes::StructureShape.new(name: 'CreateLogPatternResponse')
    DeleteApplicationRequest = Shapes::StructureShape.new(name: 'DeleteApplicationRequest')
    DeleteApplicationResponse = Shapes::StructureShape.new(name: 'DeleteApplicationResponse')
    DeleteComponentRequest = Shapes::StructureShape.new(name: 'DeleteComponentRequest')
    DeleteComponentResponse = Shapes::StructureShape.new(name: 'DeleteComponentResponse')
    DeleteLogPatternRequest = Shapes::StructureShape.new(name: 'DeleteLogPatternRequest')
    DeleteLogPatternResponse = Shapes::StructureShape.new(name: 'DeleteLogPatternResponse')
    DescribeApplicationRequest = Shapes::StructureShape.new(name: 'DescribeApplicationRequest')
    DescribeApplicationResponse = Shapes::StructureShape.new(name: 'DescribeApplicationResponse')
    DescribeComponentConfigurationRecommendationRequest = Shapes::StructureShape.new(name: 'DescribeComponentConfigurationRecommendationRequest')
    DescribeComponentConfigurationRecommendationResponse = Shapes::StructureShape.new(name: 'DescribeComponentConfigurationRecommendationResponse')
    DescribeComponentConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeComponentConfigurationRequest')
    DescribeComponentConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeComponentConfigurationResponse')
    DescribeComponentRequest = Shapes::StructureShape.new(name: 'DescribeComponentRequest')
    DescribeComponentResponse = Shapes::StructureShape.new(name: 'DescribeComponentResponse')
    DescribeLogPatternRequest = Shapes::StructureShape.new(name: 'DescribeLogPatternRequest')
    DescribeLogPatternResponse = Shapes::StructureShape.new(name: 'DescribeLogPatternResponse')
    DescribeObservationRequest = Shapes::StructureShape.new(name: 'DescribeObservationRequest')
    DescribeObservationResponse = Shapes::StructureShape.new(name: 'DescribeObservationResponse')
    DescribeProblemObservationsRequest = Shapes::StructureShape.new(name: 'DescribeProblemObservationsRequest')
    DescribeProblemObservationsResponse = Shapes::StructureShape.new(name: 'DescribeProblemObservationsResponse')
    DescribeProblemRequest = Shapes::StructureShape.new(name: 'DescribeProblemRequest')
    DescribeProblemResponse = Shapes::StructureShape.new(name: 'DescribeProblemResponse')
    Ec2State = Shapes::StringShape.new(name: 'Ec2State')
    EndTime = Shapes::TimestampShape.new(name: 'EndTime')
    ErrorMsg = Shapes::StringShape.new(name: 'ErrorMsg')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    Feedback = Shapes::MapShape.new(name: 'Feedback')
    FeedbackKey = Shapes::StringShape.new(name: 'FeedbackKey')
    FeedbackValue = Shapes::StringShape.new(name: 'FeedbackValue')
    HealthEventArn = Shapes::StringShape.new(name: 'HealthEventArn')
    HealthEventDescription = Shapes::StringShape.new(name: 'HealthEventDescription')
    HealthEventTypeCategory = Shapes::StringShape.new(name: 'HealthEventTypeCategory')
    HealthEventTypeCode = Shapes::StringShape.new(name: 'HealthEventTypeCode')
    HealthService = Shapes::StringShape.new(name: 'HealthService')
    Insights = Shapes::StringShape.new(name: 'Insights')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LifeCycle = Shapes::StringShape.new(name: 'LifeCycle')
    LineTime = Shapes::TimestampShape.new(name: 'LineTime')
    ListApplicationsRequest = Shapes::StructureShape.new(name: 'ListApplicationsRequest')
    ListApplicationsResponse = Shapes::StructureShape.new(name: 'ListApplicationsResponse')
    ListComponentsRequest = Shapes::StructureShape.new(name: 'ListComponentsRequest')
    ListComponentsResponse = Shapes::StructureShape.new(name: 'ListComponentsResponse')
    ListConfigurationHistoryRequest = Shapes::StructureShape.new(name: 'ListConfigurationHistoryRequest')
    ListConfigurationHistoryResponse = Shapes::StructureShape.new(name: 'ListConfigurationHistoryResponse')
    ListLogPatternSetsRequest = Shapes::StructureShape.new(name: 'ListLogPatternSetsRequest')
    ListLogPatternSetsResponse = Shapes::StructureShape.new(name: 'ListLogPatternSetsResponse')
    ListLogPatternsRequest = Shapes::StructureShape.new(name: 'ListLogPatternsRequest')
    ListLogPatternsResponse = Shapes::StructureShape.new(name: 'ListLogPatternsResponse')
    ListProblemsRequest = Shapes::StructureShape.new(name: 'ListProblemsRequest')
    ListProblemsResponse = Shapes::StructureShape.new(name: 'ListProblemsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LogFilter = Shapes::StringShape.new(name: 'LogFilter')
    LogGroup = Shapes::StringShape.new(name: 'LogGroup')
    LogPattern = Shapes::StructureShape.new(name: 'LogPattern')
    LogPatternList = Shapes::ListShape.new(name: 'LogPatternList')
    LogPatternName = Shapes::StringShape.new(name: 'LogPatternName')
    LogPatternRank = Shapes::IntegerShape.new(name: 'LogPatternRank')
    LogPatternRegex = Shapes::StringShape.new(name: 'LogPatternRegex')
    LogPatternSetList = Shapes::ListShape.new(name: 'LogPatternSetList')
    LogPatternSetName = Shapes::StringShape.new(name: 'LogPatternSetName')
    LogText = Shapes::StringShape.new(name: 'LogText')
    MaxEntities = Shapes::IntegerShape.new(name: 'MaxEntities')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    MetricNamespace = Shapes::StringShape.new(name: 'MetricNamespace')
    Monitor = Shapes::BooleanShape.new(name: 'Monitor')
    NewComponentName = Shapes::StringShape.new(name: 'NewComponentName')
    Observation = Shapes::StructureShape.new(name: 'Observation')
    ObservationId = Shapes::StringShape.new(name: 'ObservationId')
    ObservationList = Shapes::ListShape.new(name: 'ObservationList')
    OpsCenterEnabled = Shapes::BooleanShape.new(name: 'OpsCenterEnabled')
    OpsItemSNSTopicArn = Shapes::StringShape.new(name: 'OpsItemSNSTopicArn')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    Problem = Shapes::StructureShape.new(name: 'Problem')
    ProblemId = Shapes::StringShape.new(name: 'ProblemId')
    ProblemList = Shapes::ListShape.new(name: 'ProblemList')
    RelatedObservations = Shapes::StructureShape.new(name: 'RelatedObservations')
    Remarks = Shapes::StringShape.new(name: 'Remarks')
    RemoveSNSTopic = Shapes::BooleanShape.new(name: 'RemoveSNSTopic')
    ResourceARN = Shapes::StringShape.new(name: 'ResourceARN')
    ResourceGroupName = Shapes::StringShape.new(name: 'ResourceGroupName')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceList = Shapes::ListShape.new(name: 'ResourceList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    SeverityLevel = Shapes::StringShape.new(name: 'SeverityLevel')
    SourceARN = Shapes::StringShape.new(name: 'SourceARN')
    SourceType = Shapes::StringShape.new(name: 'SourceType')
    StartTime = Shapes::TimestampShape.new(name: 'StartTime')
    Status = Shapes::StringShape.new(name: 'Status')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagsAlreadyExistException = Shapes::StructureShape.new(name: 'TagsAlreadyExistException')
    Tier = Shapes::StringShape.new(name: 'Tier')
    Title = Shapes::StringShape.new(name: 'Title')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    Unit = Shapes::StringShape.new(name: 'Unit')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateApplicationRequest = Shapes::StructureShape.new(name: 'UpdateApplicationRequest')
    UpdateApplicationResponse = Shapes::StructureShape.new(name: 'UpdateApplicationResponse')
    UpdateComponentConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateComponentConfigurationRequest')
    UpdateComponentConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateComponentConfigurationResponse')
    UpdateComponentRequest = Shapes::StructureShape.new(name: 'UpdateComponentRequest')
    UpdateComponentResponse = Shapes::StructureShape.new(name: 'UpdateComponentResponse')
    UpdateLogPatternRequest = Shapes::StructureShape.new(name: 'UpdateLogPatternRequest')
    UpdateLogPatternResponse = Shapes::StructureShape.new(name: 'UpdateLogPatternResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    Value = Shapes::FloatShape.new(name: 'Value')
    XRayErrorPercent = Shapes::IntegerShape.new(name: 'XRayErrorPercent')
    XRayFaultPercent = Shapes::IntegerShape.new(name: 'XRayFaultPercent')
    XRayNodeName = Shapes::StringShape.new(name: 'XRayNodeName')
    XRayNodeType = Shapes::StringShape.new(name: 'XRayNodeType')
    XRayRequestAverageLatency = Shapes::IntegerShape.new(name: 'XRayRequestAverageLatency')
    XRayRequestCount = Shapes::IntegerShape.new(name: 'XRayRequestCount')
    XRayThrottlePercent = Shapes::IntegerShape.new(name: 'XRayThrottlePercent')

    ApplicationComponent.add_member(:component_name, Shapes::ShapeRef.new(shape: ComponentName, location_name: "ComponentName"))
    ApplicationComponent.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ApplicationComponent.add_member(:tier, Shapes::ShapeRef.new(shape: Tier, location_name: "Tier"))
    ApplicationComponent.add_member(:monitor, Shapes::ShapeRef.new(shape: Monitor, location_name: "Monitor"))
    ApplicationComponent.struct_class = Types::ApplicationComponent

    ApplicationComponentList.member = Shapes::ShapeRef.new(shape: ApplicationComponent)

    ApplicationInfo.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: "ResourceGroupName"))
    ApplicationInfo.add_member(:life_cycle, Shapes::ShapeRef.new(shape: LifeCycle, location_name: "LifeCycle"))
    ApplicationInfo.add_member(:ops_item_sns_topic_arn, Shapes::ShapeRef.new(shape: OpsItemSNSTopicArn, location_name: "OpsItemSNSTopicArn"))
    ApplicationInfo.add_member(:ops_center_enabled, Shapes::ShapeRef.new(shape: OpsCenterEnabled, location_name: "OpsCenterEnabled"))
    ApplicationInfo.add_member(:cwe_monitor_enabled, Shapes::ShapeRef.new(shape: CWEMonitorEnabled, location_name: "CWEMonitorEnabled"))
    ApplicationInfo.add_member(:remarks, Shapes::ShapeRef.new(shape: Remarks, location_name: "Remarks"))
    ApplicationInfo.struct_class = Types::ApplicationInfo

    ApplicationInfoList.member = Shapes::ShapeRef.new(shape: ApplicationInfo)

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMsg, location_name: "Message"))
    BadRequestException.struct_class = Types::BadRequestException

    ConfigurationEvent.add_member(:monitored_resource_arn, Shapes::ShapeRef.new(shape: ConfigurationEventMonitoredResourceARN, location_name: "MonitoredResourceARN"))
    ConfigurationEvent.add_member(:event_status, Shapes::ShapeRef.new(shape: ConfigurationEventStatus, location_name: "EventStatus"))
    ConfigurationEvent.add_member(:event_resource_type, Shapes::ShapeRef.new(shape: ConfigurationEventResourceType, location_name: "EventResourceType"))
    ConfigurationEvent.add_member(:event_time, Shapes::ShapeRef.new(shape: ConfigurationEventTime, location_name: "EventTime"))
    ConfigurationEvent.add_member(:event_detail, Shapes::ShapeRef.new(shape: ConfigurationEventDetail, location_name: "EventDetail"))
    ConfigurationEvent.add_member(:event_resource_name, Shapes::ShapeRef.new(shape: ConfigurationEventResourceName, location_name: "EventResourceName"))
    ConfigurationEvent.struct_class = Types::ConfigurationEvent

    ConfigurationEventList.member = Shapes::ShapeRef.new(shape: ConfigurationEvent)

    CreateApplicationRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, required: true, location_name: "ResourceGroupName"))
    CreateApplicationRequest.add_member(:ops_center_enabled, Shapes::ShapeRef.new(shape: OpsCenterEnabled, location_name: "OpsCenterEnabled"))
    CreateApplicationRequest.add_member(:cwe_monitor_enabled, Shapes::ShapeRef.new(shape: CWEMonitorEnabled, location_name: "CWEMonitorEnabled"))
    CreateApplicationRequest.add_member(:ops_item_sns_topic_arn, Shapes::ShapeRef.new(shape: OpsItemSNSTopicArn, location_name: "OpsItemSNSTopicArn"))
    CreateApplicationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateApplicationRequest.struct_class = Types::CreateApplicationRequest

    CreateApplicationResponse.add_member(:application_info, Shapes::ShapeRef.new(shape: ApplicationInfo, location_name: "ApplicationInfo"))
    CreateApplicationResponse.struct_class = Types::CreateApplicationResponse

    CreateComponentRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, required: true, location_name: "ResourceGroupName"))
    CreateComponentRequest.add_member(:component_name, Shapes::ShapeRef.new(shape: ComponentName, required: true, location_name: "ComponentName"))
    CreateComponentRequest.add_member(:resource_list, Shapes::ShapeRef.new(shape: ResourceList, required: true, location_name: "ResourceList"))
    CreateComponentRequest.struct_class = Types::CreateComponentRequest

    CreateComponentResponse.struct_class = Types::CreateComponentResponse

    CreateLogPatternRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, required: true, location_name: "ResourceGroupName"))
    CreateLogPatternRequest.add_member(:pattern_set_name, Shapes::ShapeRef.new(shape: LogPatternSetName, required: true, location_name: "PatternSetName"))
    CreateLogPatternRequest.add_member(:pattern_name, Shapes::ShapeRef.new(shape: LogPatternName, required: true, location_name: "PatternName"))
    CreateLogPatternRequest.add_member(:pattern, Shapes::ShapeRef.new(shape: LogPatternRegex, required: true, location_name: "Pattern"))
    CreateLogPatternRequest.add_member(:rank, Shapes::ShapeRef.new(shape: LogPatternRank, required: true, location_name: "Rank"))
    CreateLogPatternRequest.struct_class = Types::CreateLogPatternRequest

    CreateLogPatternResponse.add_member(:log_pattern, Shapes::ShapeRef.new(shape: LogPattern, location_name: "LogPattern"))
    CreateLogPatternResponse.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: "ResourceGroupName"))
    CreateLogPatternResponse.struct_class = Types::CreateLogPatternResponse

    DeleteApplicationRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, required: true, location_name: "ResourceGroupName"))
    DeleteApplicationRequest.struct_class = Types::DeleteApplicationRequest

    DeleteApplicationResponse.struct_class = Types::DeleteApplicationResponse

    DeleteComponentRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, required: true, location_name: "ResourceGroupName"))
    DeleteComponentRequest.add_member(:component_name, Shapes::ShapeRef.new(shape: ComponentName, required: true, location_name: "ComponentName"))
    DeleteComponentRequest.struct_class = Types::DeleteComponentRequest

    DeleteComponentResponse.struct_class = Types::DeleteComponentResponse

    DeleteLogPatternRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, required: true, location_name: "ResourceGroupName"))
    DeleteLogPatternRequest.add_member(:pattern_set_name, Shapes::ShapeRef.new(shape: LogPatternSetName, required: true, location_name: "PatternSetName"))
    DeleteLogPatternRequest.add_member(:pattern_name, Shapes::ShapeRef.new(shape: LogPatternName, required: true, location_name: "PatternName"))
    DeleteLogPatternRequest.struct_class = Types::DeleteLogPatternRequest

    DeleteLogPatternResponse.struct_class = Types::DeleteLogPatternResponse

    DescribeApplicationRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, required: true, location_name: "ResourceGroupName"))
    DescribeApplicationRequest.struct_class = Types::DescribeApplicationRequest

    DescribeApplicationResponse.add_member(:application_info, Shapes::ShapeRef.new(shape: ApplicationInfo, location_name: "ApplicationInfo"))
    DescribeApplicationResponse.struct_class = Types::DescribeApplicationResponse

    DescribeComponentConfigurationRecommendationRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, required: true, location_name: "ResourceGroupName"))
    DescribeComponentConfigurationRecommendationRequest.add_member(:component_name, Shapes::ShapeRef.new(shape: ComponentName, required: true, location_name: "ComponentName"))
    DescribeComponentConfigurationRecommendationRequest.add_member(:tier, Shapes::ShapeRef.new(shape: Tier, required: true, location_name: "Tier"))
    DescribeComponentConfigurationRecommendationRequest.struct_class = Types::DescribeComponentConfigurationRecommendationRequest

    DescribeComponentConfigurationRecommendationResponse.add_member(:component_configuration, Shapes::ShapeRef.new(shape: ComponentConfiguration, location_name: "ComponentConfiguration"))
    DescribeComponentConfigurationRecommendationResponse.struct_class = Types::DescribeComponentConfigurationRecommendationResponse

    DescribeComponentConfigurationRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, required: true, location_name: "ResourceGroupName"))
    DescribeComponentConfigurationRequest.add_member(:component_name, Shapes::ShapeRef.new(shape: ComponentName, required: true, location_name: "ComponentName"))
    DescribeComponentConfigurationRequest.struct_class = Types::DescribeComponentConfigurationRequest

    DescribeComponentConfigurationResponse.add_member(:monitor, Shapes::ShapeRef.new(shape: Monitor, location_name: "Monitor"))
    DescribeComponentConfigurationResponse.add_member(:tier, Shapes::ShapeRef.new(shape: Tier, location_name: "Tier"))
    DescribeComponentConfigurationResponse.add_member(:component_configuration, Shapes::ShapeRef.new(shape: ComponentConfiguration, location_name: "ComponentConfiguration"))
    DescribeComponentConfigurationResponse.struct_class = Types::DescribeComponentConfigurationResponse

    DescribeComponentRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, required: true, location_name: "ResourceGroupName"))
    DescribeComponentRequest.add_member(:component_name, Shapes::ShapeRef.new(shape: ComponentName, required: true, location_name: "ComponentName"))
    DescribeComponentRequest.struct_class = Types::DescribeComponentRequest

    DescribeComponentResponse.add_member(:application_component, Shapes::ShapeRef.new(shape: ApplicationComponent, location_name: "ApplicationComponent"))
    DescribeComponentResponse.add_member(:resource_list, Shapes::ShapeRef.new(shape: ResourceList, location_name: "ResourceList"))
    DescribeComponentResponse.struct_class = Types::DescribeComponentResponse

    DescribeLogPatternRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, required: true, location_name: "ResourceGroupName"))
    DescribeLogPatternRequest.add_member(:pattern_set_name, Shapes::ShapeRef.new(shape: LogPatternSetName, required: true, location_name: "PatternSetName"))
    DescribeLogPatternRequest.add_member(:pattern_name, Shapes::ShapeRef.new(shape: LogPatternName, required: true, location_name: "PatternName"))
    DescribeLogPatternRequest.struct_class = Types::DescribeLogPatternRequest

    DescribeLogPatternResponse.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: "ResourceGroupName"))
    DescribeLogPatternResponse.add_member(:log_pattern, Shapes::ShapeRef.new(shape: LogPattern, location_name: "LogPattern"))
    DescribeLogPatternResponse.struct_class = Types::DescribeLogPatternResponse

    DescribeObservationRequest.add_member(:observation_id, Shapes::ShapeRef.new(shape: ObservationId, required: true, location_name: "ObservationId"))
    DescribeObservationRequest.struct_class = Types::DescribeObservationRequest

    DescribeObservationResponse.add_member(:observation, Shapes::ShapeRef.new(shape: Observation, location_name: "Observation"))
    DescribeObservationResponse.struct_class = Types::DescribeObservationResponse

    DescribeProblemObservationsRequest.add_member(:problem_id, Shapes::ShapeRef.new(shape: ProblemId, required: true, location_name: "ProblemId"))
    DescribeProblemObservationsRequest.struct_class = Types::DescribeProblemObservationsRequest

    DescribeProblemObservationsResponse.add_member(:related_observations, Shapes::ShapeRef.new(shape: RelatedObservations, location_name: "RelatedObservations"))
    DescribeProblemObservationsResponse.struct_class = Types::DescribeProblemObservationsResponse

    DescribeProblemRequest.add_member(:problem_id, Shapes::ShapeRef.new(shape: ProblemId, required: true, location_name: "ProblemId"))
    DescribeProblemRequest.struct_class = Types::DescribeProblemRequest

    DescribeProblemResponse.add_member(:problem, Shapes::ShapeRef.new(shape: Problem, location_name: "Problem"))
    DescribeProblemResponse.struct_class = Types::DescribeProblemResponse

    Feedback.key = Shapes::ShapeRef.new(shape: FeedbackKey)
    Feedback.value = Shapes::ShapeRef.new(shape: FeedbackValue)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMsg, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListApplicationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxEntities, location_name: "MaxResults"))
    ListApplicationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListApplicationsRequest.struct_class = Types::ListApplicationsRequest

    ListApplicationsResponse.add_member(:application_info_list, Shapes::ShapeRef.new(shape: ApplicationInfoList, location_name: "ApplicationInfoList"))
    ListApplicationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListApplicationsResponse.struct_class = Types::ListApplicationsResponse

    ListComponentsRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, required: true, location_name: "ResourceGroupName"))
    ListComponentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxEntities, location_name: "MaxResults"))
    ListComponentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListComponentsRequest.struct_class = Types::ListComponentsRequest

    ListComponentsResponse.add_member(:application_component_list, Shapes::ShapeRef.new(shape: ApplicationComponentList, location_name: "ApplicationComponentList"))
    ListComponentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListComponentsResponse.struct_class = Types::ListComponentsResponse

    ListConfigurationHistoryRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: "ResourceGroupName"))
    ListConfigurationHistoryRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: StartTime, location_name: "StartTime"))
    ListConfigurationHistoryRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: EndTime, location_name: "EndTime"))
    ListConfigurationHistoryRequest.add_member(:event_status, Shapes::ShapeRef.new(shape: ConfigurationEventStatus, location_name: "EventStatus"))
    ListConfigurationHistoryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxEntities, location_name: "MaxResults"))
    ListConfigurationHistoryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListConfigurationHistoryRequest.struct_class = Types::ListConfigurationHistoryRequest

    ListConfigurationHistoryResponse.add_member(:event_list, Shapes::ShapeRef.new(shape: ConfigurationEventList, location_name: "EventList"))
    ListConfigurationHistoryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListConfigurationHistoryResponse.struct_class = Types::ListConfigurationHistoryResponse

    ListLogPatternSetsRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, required: true, location_name: "ResourceGroupName"))
    ListLogPatternSetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxEntities, location_name: "MaxResults"))
    ListLogPatternSetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListLogPatternSetsRequest.struct_class = Types::ListLogPatternSetsRequest

    ListLogPatternSetsResponse.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: "ResourceGroupName"))
    ListLogPatternSetsResponse.add_member(:log_pattern_sets, Shapes::ShapeRef.new(shape: LogPatternSetList, location_name: "LogPatternSets"))
    ListLogPatternSetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListLogPatternSetsResponse.struct_class = Types::ListLogPatternSetsResponse

    ListLogPatternsRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, required: true, location_name: "ResourceGroupName"))
    ListLogPatternsRequest.add_member(:pattern_set_name, Shapes::ShapeRef.new(shape: LogPatternSetName, location_name: "PatternSetName"))
    ListLogPatternsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxEntities, location_name: "MaxResults"))
    ListLogPatternsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListLogPatternsRequest.struct_class = Types::ListLogPatternsRequest

    ListLogPatternsResponse.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: "ResourceGroupName"))
    ListLogPatternsResponse.add_member(:log_patterns, Shapes::ShapeRef.new(shape: LogPatternList, location_name: "LogPatterns"))
    ListLogPatternsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListLogPatternsResponse.struct_class = Types::ListLogPatternsResponse

    ListProblemsRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: "ResourceGroupName"))
    ListProblemsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: StartTime, location_name: "StartTime"))
    ListProblemsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: EndTime, location_name: "EndTime"))
    ListProblemsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxEntities, location_name: "MaxResults"))
    ListProblemsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListProblemsRequest.struct_class = Types::ListProblemsRequest

    ListProblemsResponse.add_member(:problem_list, Shapes::ShapeRef.new(shape: ProblemList, location_name: "ProblemList"))
    ListProblemsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListProblemsResponse.struct_class = Types::ListProblemsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    LogPattern.add_member(:pattern_set_name, Shapes::ShapeRef.new(shape: LogPatternSetName, location_name: "PatternSetName"))
    LogPattern.add_member(:pattern_name, Shapes::ShapeRef.new(shape: LogPatternName, location_name: "PatternName"))
    LogPattern.add_member(:pattern, Shapes::ShapeRef.new(shape: LogPatternRegex, location_name: "Pattern"))
    LogPattern.add_member(:rank, Shapes::ShapeRef.new(shape: LogPatternRank, location_name: "Rank"))
    LogPattern.struct_class = Types::LogPattern

    LogPatternList.member = Shapes::ShapeRef.new(shape: LogPattern)

    LogPatternSetList.member = Shapes::ShapeRef.new(shape: LogPatternSetName)

    Observation.add_member(:id, Shapes::ShapeRef.new(shape: ObservationId, location_name: "Id"))
    Observation.add_member(:start_time, Shapes::ShapeRef.new(shape: StartTime, location_name: "StartTime"))
    Observation.add_member(:end_time, Shapes::ShapeRef.new(shape: EndTime, location_name: "EndTime"))
    Observation.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "SourceType"))
    Observation.add_member(:source_arn, Shapes::ShapeRef.new(shape: SourceARN, location_name: "SourceARN"))
    Observation.add_member(:log_group, Shapes::ShapeRef.new(shape: LogGroup, location_name: "LogGroup"))
    Observation.add_member(:line_time, Shapes::ShapeRef.new(shape: LineTime, location_name: "LineTime"))
    Observation.add_member(:log_text, Shapes::ShapeRef.new(shape: LogText, location_name: "LogText"))
    Observation.add_member(:log_filter, Shapes::ShapeRef.new(shape: LogFilter, location_name: "LogFilter"))
    Observation.add_member(:metric_namespace, Shapes::ShapeRef.new(shape: MetricNamespace, location_name: "MetricNamespace"))
    Observation.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    Observation.add_member(:unit, Shapes::ShapeRef.new(shape: Unit, location_name: "Unit"))
    Observation.add_member(:value, Shapes::ShapeRef.new(shape: Value, location_name: "Value"))
    Observation.add_member(:cloud_watch_event_id, Shapes::ShapeRef.new(shape: CloudWatchEventId, location_name: "CloudWatchEventId"))
    Observation.add_member(:cloud_watch_event_source, Shapes::ShapeRef.new(shape: CloudWatchEventSource, location_name: "CloudWatchEventSource"))
    Observation.add_member(:cloud_watch_event_detail_type, Shapes::ShapeRef.new(shape: CloudWatchEventDetailType, location_name: "CloudWatchEventDetailType"))
    Observation.add_member(:health_event_arn, Shapes::ShapeRef.new(shape: HealthEventArn, location_name: "HealthEventArn"))
    Observation.add_member(:health_service, Shapes::ShapeRef.new(shape: HealthService, location_name: "HealthService"))
    Observation.add_member(:health_event_type_code, Shapes::ShapeRef.new(shape: HealthEventTypeCode, location_name: "HealthEventTypeCode"))
    Observation.add_member(:health_event_type_category, Shapes::ShapeRef.new(shape: HealthEventTypeCategory, location_name: "HealthEventTypeCategory"))
    Observation.add_member(:health_event_description, Shapes::ShapeRef.new(shape: HealthEventDescription, location_name: "HealthEventDescription"))
    Observation.add_member(:code_deploy_deployment_id, Shapes::ShapeRef.new(shape: CodeDeployDeploymentId, location_name: "CodeDeployDeploymentId"))
    Observation.add_member(:code_deploy_deployment_group, Shapes::ShapeRef.new(shape: CodeDeployDeploymentGroup, location_name: "CodeDeployDeploymentGroup"))
    Observation.add_member(:code_deploy_state, Shapes::ShapeRef.new(shape: CodeDeployState, location_name: "CodeDeployState"))
    Observation.add_member(:code_deploy_application, Shapes::ShapeRef.new(shape: CodeDeployApplication, location_name: "CodeDeployApplication"))
    Observation.add_member(:code_deploy_instance_group_id, Shapes::ShapeRef.new(shape: CodeDeployInstanceGroupId, location_name: "CodeDeployInstanceGroupId"))
    Observation.add_member(:ec2_state, Shapes::ShapeRef.new(shape: Ec2State, location_name: "Ec2State"))
    Observation.add_member(:x_ray_fault_percent, Shapes::ShapeRef.new(shape: XRayFaultPercent, location_name: "XRayFaultPercent"))
    Observation.add_member(:x_ray_throttle_percent, Shapes::ShapeRef.new(shape: XRayThrottlePercent, location_name: "XRayThrottlePercent"))
    Observation.add_member(:x_ray_error_percent, Shapes::ShapeRef.new(shape: XRayErrorPercent, location_name: "XRayErrorPercent"))
    Observation.add_member(:x_ray_request_count, Shapes::ShapeRef.new(shape: XRayRequestCount, location_name: "XRayRequestCount"))
    Observation.add_member(:x_ray_request_average_latency, Shapes::ShapeRef.new(shape: XRayRequestAverageLatency, location_name: "XRayRequestAverageLatency"))
    Observation.add_member(:x_ray_node_name, Shapes::ShapeRef.new(shape: XRayNodeName, location_name: "XRayNodeName"))
    Observation.add_member(:x_ray_node_type, Shapes::ShapeRef.new(shape: XRayNodeType, location_name: "XRayNodeType"))
    Observation.struct_class = Types::Observation

    ObservationList.member = Shapes::ShapeRef.new(shape: Observation)

    Problem.add_member(:id, Shapes::ShapeRef.new(shape: ProblemId, location_name: "Id"))
    Problem.add_member(:title, Shapes::ShapeRef.new(shape: Title, location_name: "Title"))
    Problem.add_member(:insights, Shapes::ShapeRef.new(shape: Insights, location_name: "Insights"))
    Problem.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    Problem.add_member(:affected_resource, Shapes::ShapeRef.new(shape: AffectedResource, location_name: "AffectedResource"))
    Problem.add_member(:start_time, Shapes::ShapeRef.new(shape: StartTime, location_name: "StartTime"))
    Problem.add_member(:end_time, Shapes::ShapeRef.new(shape: EndTime, location_name: "EndTime"))
    Problem.add_member(:severity_level, Shapes::ShapeRef.new(shape: SeverityLevel, location_name: "SeverityLevel"))
    Problem.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: "ResourceGroupName"))
    Problem.add_member(:feedback, Shapes::ShapeRef.new(shape: Feedback, location_name: "Feedback"))
    Problem.struct_class = Types::Problem

    ProblemList.member = Shapes::ShapeRef.new(shape: Problem)

    RelatedObservations.add_member(:observation_list, Shapes::ShapeRef.new(shape: ObservationList, location_name: "ObservationList"))
    RelatedObservations.struct_class = Types::RelatedObservations

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMsg, location_name: "Message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceList.member = Shapes::ShapeRef.new(shape: ResourceARN)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMsg, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagsAlreadyExistException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    TagsAlreadyExistException.struct_class = Types::TagsAlreadyExistException

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    TooManyTagsException.add_member(:resource_name, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceName"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateApplicationRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, required: true, location_name: "ResourceGroupName"))
    UpdateApplicationRequest.add_member(:ops_center_enabled, Shapes::ShapeRef.new(shape: OpsCenterEnabled, location_name: "OpsCenterEnabled"))
    UpdateApplicationRequest.add_member(:cwe_monitor_enabled, Shapes::ShapeRef.new(shape: CWEMonitorEnabled, location_name: "CWEMonitorEnabled"))
    UpdateApplicationRequest.add_member(:ops_item_sns_topic_arn, Shapes::ShapeRef.new(shape: OpsItemSNSTopicArn, location_name: "OpsItemSNSTopicArn"))
    UpdateApplicationRequest.add_member(:remove_sns_topic, Shapes::ShapeRef.new(shape: RemoveSNSTopic, location_name: "RemoveSNSTopic"))
    UpdateApplicationRequest.struct_class = Types::UpdateApplicationRequest

    UpdateApplicationResponse.add_member(:application_info, Shapes::ShapeRef.new(shape: ApplicationInfo, location_name: "ApplicationInfo"))
    UpdateApplicationResponse.struct_class = Types::UpdateApplicationResponse

    UpdateComponentConfigurationRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, required: true, location_name: "ResourceGroupName"))
    UpdateComponentConfigurationRequest.add_member(:component_name, Shapes::ShapeRef.new(shape: ComponentName, required: true, location_name: "ComponentName"))
    UpdateComponentConfigurationRequest.add_member(:monitor, Shapes::ShapeRef.new(shape: Monitor, location_name: "Monitor"))
    UpdateComponentConfigurationRequest.add_member(:tier, Shapes::ShapeRef.new(shape: Tier, location_name: "Tier"))
    UpdateComponentConfigurationRequest.add_member(:component_configuration, Shapes::ShapeRef.new(shape: ComponentConfiguration, location_name: "ComponentConfiguration"))
    UpdateComponentConfigurationRequest.struct_class = Types::UpdateComponentConfigurationRequest

    UpdateComponentConfigurationResponse.struct_class = Types::UpdateComponentConfigurationResponse

    UpdateComponentRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, required: true, location_name: "ResourceGroupName"))
    UpdateComponentRequest.add_member(:component_name, Shapes::ShapeRef.new(shape: ComponentName, required: true, location_name: "ComponentName"))
    UpdateComponentRequest.add_member(:new_component_name, Shapes::ShapeRef.new(shape: NewComponentName, location_name: "NewComponentName"))
    UpdateComponentRequest.add_member(:resource_list, Shapes::ShapeRef.new(shape: ResourceList, location_name: "ResourceList"))
    UpdateComponentRequest.struct_class = Types::UpdateComponentRequest

    UpdateComponentResponse.struct_class = Types::UpdateComponentResponse

    UpdateLogPatternRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, required: true, location_name: "ResourceGroupName"))
    UpdateLogPatternRequest.add_member(:pattern_set_name, Shapes::ShapeRef.new(shape: LogPatternSetName, required: true, location_name: "PatternSetName"))
    UpdateLogPatternRequest.add_member(:pattern_name, Shapes::ShapeRef.new(shape: LogPatternName, required: true, location_name: "PatternName"))
    UpdateLogPatternRequest.add_member(:pattern, Shapes::ShapeRef.new(shape: LogPatternRegex, location_name: "Pattern"))
    UpdateLogPatternRequest.add_member(:rank, Shapes::ShapeRef.new(shape: LogPatternRank, location_name: "Rank"))
    UpdateLogPatternRequest.struct_class = Types::UpdateLogPatternRequest

    UpdateLogPatternResponse.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: "ResourceGroupName"))
    UpdateLogPatternResponse.add_member(:log_pattern, Shapes::ShapeRef.new(shape: LogPattern, location_name: "LogPattern"))
    UpdateLogPatternResponse.struct_class = Types::UpdateLogPatternResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMsg, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-11-25"

      api.metadata = {
        "apiVersion" => "2018-11-25",
        "endpointPrefix" => "applicationinsights",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "Application Insights",
        "serviceFullName" => "Amazon CloudWatch Application Insights",
        "serviceId" => "Application Insights",
        "signatureVersion" => "v4",
        "signingName" => "applicationinsights",
        "targetPrefix" => "EC2WindowsBarleyService",
        "uid" => "application-insights-2018-11-25",
      }

      api.add_operation(:create_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TagsAlreadyExistException)
      end)

      api.add_operation(:create_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateComponent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_log_pattern, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLogPattern"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLogPatternRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLogPatternResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteComponent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_log_pattern, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLogPattern"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLogPatternRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteLogPatternResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeComponent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_component_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeComponentConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeComponentConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeComponentConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_component_configuration_recommendation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeComponentConfigurationRecommendation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeComponentConfigurationRecommendationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeComponentConfigurationRecommendationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_log_pattern, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLogPattern"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLogPatternRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLogPatternResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_observation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeObservation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeObservationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeObservationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_problem, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProblem"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeProblemRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeProblemResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_problem_observations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProblemObservations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeProblemObservationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeProblemObservationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplications"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_components, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListComponents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListComponentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListComponentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_configuration_history, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConfigurationHistory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListConfigurationHistoryRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConfigurationHistoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_log_pattern_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLogPatternSets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListLogPatternSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLogPatternSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_log_patterns, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLogPatterns"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListLogPatternsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLogPatternsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_problems, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProblems"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListProblemsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProblemsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateComponent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_component_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateComponentConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateComponentConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateComponentConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_log_pattern, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLogPattern"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateLogPatternRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLogPatternResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
