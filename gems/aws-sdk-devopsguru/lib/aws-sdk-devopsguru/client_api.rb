# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DevOpsGuru
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AddNotificationChannelRequest = Shapes::StructureShape.new(name: 'AddNotificationChannelRequest')
    AddNotificationChannelResponse = Shapes::StructureShape.new(name: 'AddNotificationChannelResponse')
    AnomalyId = Shapes::StringShape.new(name: 'AnomalyId')
    AnomalyLimit = Shapes::FloatShape.new(name: 'AnomalyLimit')
    AnomalySeverity = Shapes::StringShape.new(name: 'AnomalySeverity')
    AnomalySourceDetails = Shapes::StructureShape.new(name: 'AnomalySourceDetails')
    AnomalyStatus = Shapes::StringShape.new(name: 'AnomalyStatus')
    AnomalyTimeRange = Shapes::StructureShape.new(name: 'AnomalyTimeRange')
    Channels = Shapes::ListShape.new(name: 'Channels')
    CloudFormationCollection = Shapes::StructureShape.new(name: 'CloudFormationCollection')
    CloudFormationCollectionFilter = Shapes::StructureShape.new(name: 'CloudFormationCollectionFilter')
    CloudFormationHealth = Shapes::StructureShape.new(name: 'CloudFormationHealth')
    CloudFormationHealths = Shapes::ListShape.new(name: 'CloudFormationHealths')
    CloudWatchMetricsDetail = Shapes::StructureShape.new(name: 'CloudWatchMetricsDetail')
    CloudWatchMetricsDetails = Shapes::ListShape.new(name: 'CloudWatchMetricsDetails')
    CloudWatchMetricsDimension = Shapes::StructureShape.new(name: 'CloudWatchMetricsDimension')
    CloudWatchMetricsDimensionName = Shapes::StringShape.new(name: 'CloudWatchMetricsDimensionName')
    CloudWatchMetricsDimensionValue = Shapes::StringShape.new(name: 'CloudWatchMetricsDimensionValue')
    CloudWatchMetricsDimensions = Shapes::ListShape.new(name: 'CloudWatchMetricsDimensions')
    CloudWatchMetricsMetricName = Shapes::StringShape.new(name: 'CloudWatchMetricsMetricName')
    CloudWatchMetricsNamespace = Shapes::StringShape.new(name: 'CloudWatchMetricsNamespace')
    CloudWatchMetricsPeriod = Shapes::IntegerShape.new(name: 'CloudWatchMetricsPeriod')
    CloudWatchMetricsStat = Shapes::StringShape.new(name: 'CloudWatchMetricsStat')
    CloudWatchMetricsUnit = Shapes::StringShape.new(name: 'CloudWatchMetricsUnit')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    DescribeAccountHealthRequest = Shapes::StructureShape.new(name: 'DescribeAccountHealthRequest')
    DescribeAccountHealthResponse = Shapes::StructureShape.new(name: 'DescribeAccountHealthResponse')
    DescribeAccountOverviewRequest = Shapes::StructureShape.new(name: 'DescribeAccountOverviewRequest')
    DescribeAccountOverviewResponse = Shapes::StructureShape.new(name: 'DescribeAccountOverviewResponse')
    DescribeAnomalyRequest = Shapes::StructureShape.new(name: 'DescribeAnomalyRequest')
    DescribeAnomalyResponse = Shapes::StructureShape.new(name: 'DescribeAnomalyResponse')
    DescribeFeedbackRequest = Shapes::StructureShape.new(name: 'DescribeFeedbackRequest')
    DescribeFeedbackResponse = Shapes::StructureShape.new(name: 'DescribeFeedbackResponse')
    DescribeInsightRequest = Shapes::StructureShape.new(name: 'DescribeInsightRequest')
    DescribeInsightResponse = Shapes::StructureShape.new(name: 'DescribeInsightResponse')
    DescribeResourceCollectionHealthRequest = Shapes::StructureShape.new(name: 'DescribeResourceCollectionHealthRequest')
    DescribeResourceCollectionHealthResponse = Shapes::StructureShape.new(name: 'DescribeResourceCollectionHealthResponse')
    DescribeServiceIntegrationRequest = Shapes::StructureShape.new(name: 'DescribeServiceIntegrationRequest')
    DescribeServiceIntegrationResponse = Shapes::StructureShape.new(name: 'DescribeServiceIntegrationResponse')
    EndTimeRange = Shapes::StructureShape.new(name: 'EndTimeRange')
    ErrorMessageString = Shapes::StringShape.new(name: 'ErrorMessageString')
    ErrorNameString = Shapes::StringShape.new(name: 'ErrorNameString')
    ErrorQuotaCodeString = Shapes::StringShape.new(name: 'ErrorQuotaCodeString')
    ErrorServiceCodeString = Shapes::StringShape.new(name: 'ErrorServiceCodeString')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventClass = Shapes::StringShape.new(name: 'EventClass')
    EventDataSource = Shapes::StringShape.new(name: 'EventDataSource')
    EventId = Shapes::StringShape.new(name: 'EventId')
    EventName = Shapes::StringShape.new(name: 'EventName')
    EventResource = Shapes::StructureShape.new(name: 'EventResource')
    EventResourceArn = Shapes::StringShape.new(name: 'EventResourceArn')
    EventResourceName = Shapes::StringShape.new(name: 'EventResourceName')
    EventResourceType = Shapes::StringShape.new(name: 'EventResourceType')
    EventResources = Shapes::ListShape.new(name: 'EventResources')
    EventSource = Shapes::StringShape.new(name: 'EventSource')
    EventTimeRange = Shapes::StructureShape.new(name: 'EventTimeRange')
    Events = Shapes::ListShape.new(name: 'Events')
    GetResourceCollectionRequest = Shapes::StructureShape.new(name: 'GetResourceCollectionRequest')
    GetResourceCollectionResponse = Shapes::StructureShape.new(name: 'GetResourceCollectionResponse')
    InsightFeedback = Shapes::StructureShape.new(name: 'InsightFeedback')
    InsightFeedbackOption = Shapes::StringShape.new(name: 'InsightFeedbackOption')
    InsightHealth = Shapes::StructureShape.new(name: 'InsightHealth')
    InsightId = Shapes::StringShape.new(name: 'InsightId')
    InsightName = Shapes::StringShape.new(name: 'InsightName')
    InsightSeverities = Shapes::ListShape.new(name: 'InsightSeverities')
    InsightSeverity = Shapes::StringShape.new(name: 'InsightSeverity')
    InsightStatus = Shapes::StringShape.new(name: 'InsightStatus')
    InsightStatuses = Shapes::ListShape.new(name: 'InsightStatuses')
    InsightTimeRange = Shapes::StructureShape.new(name: 'InsightTimeRange')
    InsightType = Shapes::StringShape.new(name: 'InsightType')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListAnomaliesForInsightMaxResults = Shapes::IntegerShape.new(name: 'ListAnomaliesForInsightMaxResults')
    ListAnomaliesForInsightRequest = Shapes::StructureShape.new(name: 'ListAnomaliesForInsightRequest')
    ListAnomaliesForInsightResponse = Shapes::StructureShape.new(name: 'ListAnomaliesForInsightResponse')
    ListEventsFilters = Shapes::StructureShape.new(name: 'ListEventsFilters')
    ListEventsMaxResults = Shapes::IntegerShape.new(name: 'ListEventsMaxResults')
    ListEventsRequest = Shapes::StructureShape.new(name: 'ListEventsRequest')
    ListEventsResponse = Shapes::StructureShape.new(name: 'ListEventsResponse')
    ListInsightsAnyStatusFilter = Shapes::StructureShape.new(name: 'ListInsightsAnyStatusFilter')
    ListInsightsClosedStatusFilter = Shapes::StructureShape.new(name: 'ListInsightsClosedStatusFilter')
    ListInsightsMaxResults = Shapes::IntegerShape.new(name: 'ListInsightsMaxResults')
    ListInsightsOngoingStatusFilter = Shapes::StructureShape.new(name: 'ListInsightsOngoingStatusFilter')
    ListInsightsRequest = Shapes::StructureShape.new(name: 'ListInsightsRequest')
    ListInsightsResponse = Shapes::StructureShape.new(name: 'ListInsightsResponse')
    ListInsightsStatusFilter = Shapes::StructureShape.new(name: 'ListInsightsStatusFilter')
    ListNotificationChannelsRequest = Shapes::StructureShape.new(name: 'ListNotificationChannelsRequest')
    ListNotificationChannelsResponse = Shapes::StructureShape.new(name: 'ListNotificationChannelsResponse')
    ListRecommendationsRequest = Shapes::StructureShape.new(name: 'ListRecommendationsRequest')
    ListRecommendationsResponse = Shapes::StructureShape.new(name: 'ListRecommendationsResponse')
    MeanTimeToRecoverInMilliseconds = Shapes::IntegerShape.new(name: 'MeanTimeToRecoverInMilliseconds')
    NotificationChannel = Shapes::StructureShape.new(name: 'NotificationChannel')
    NotificationChannelConfig = Shapes::StructureShape.new(name: 'NotificationChannelConfig')
    NotificationChannelId = Shapes::StringShape.new(name: 'NotificationChannelId')
    NumMetricsAnalyzed = Shapes::IntegerShape.new(name: 'NumMetricsAnalyzed')
    NumOpenProactiveInsights = Shapes::IntegerShape.new(name: 'NumOpenProactiveInsights')
    NumOpenReactiveInsights = Shapes::IntegerShape.new(name: 'NumOpenReactiveInsights')
    NumProactiveInsights = Shapes::IntegerShape.new(name: 'NumProactiveInsights')
    NumReactiveInsights = Shapes::IntegerShape.new(name: 'NumReactiveInsights')
    OpsCenterIntegration = Shapes::StructureShape.new(name: 'OpsCenterIntegration')
    OpsCenterIntegrationConfig = Shapes::StructureShape.new(name: 'OpsCenterIntegrationConfig')
    OptInStatus = Shapes::StringShape.new(name: 'OptInStatus')
    PredictionTimeRange = Shapes::StructureShape.new(name: 'PredictionTimeRange')
    ProactiveAnomalies = Shapes::ListShape.new(name: 'ProactiveAnomalies')
    ProactiveAnomaly = Shapes::StructureShape.new(name: 'ProactiveAnomaly')
    ProactiveAnomalySummary = Shapes::StructureShape.new(name: 'ProactiveAnomalySummary')
    ProactiveInsight = Shapes::StructureShape.new(name: 'ProactiveInsight')
    ProactiveInsightSummary = Shapes::StructureShape.new(name: 'ProactiveInsightSummary')
    ProactiveInsights = Shapes::ListShape.new(name: 'ProactiveInsights')
    PutFeedbackRequest = Shapes::StructureShape.new(name: 'PutFeedbackRequest')
    PutFeedbackResponse = Shapes::StructureShape.new(name: 'PutFeedbackResponse')
    ReactiveAnomalies = Shapes::ListShape.new(name: 'ReactiveAnomalies')
    ReactiveAnomaly = Shapes::StructureShape.new(name: 'ReactiveAnomaly')
    ReactiveAnomalySummary = Shapes::StructureShape.new(name: 'ReactiveAnomalySummary')
    ReactiveInsight = Shapes::StructureShape.new(name: 'ReactiveInsight')
    ReactiveInsightSummary = Shapes::StructureShape.new(name: 'ReactiveInsightSummary')
    ReactiveInsights = Shapes::ListShape.new(name: 'ReactiveInsights')
    Recommendation = Shapes::StructureShape.new(name: 'Recommendation')
    RecommendationDescription = Shapes::StringShape.new(name: 'RecommendationDescription')
    RecommendationLink = Shapes::StringShape.new(name: 'RecommendationLink')
    RecommendationName = Shapes::StringShape.new(name: 'RecommendationName')
    RecommendationReason = Shapes::StringShape.new(name: 'RecommendationReason')
    RecommendationRelatedAnomalies = Shapes::ListShape.new(name: 'RecommendationRelatedAnomalies')
    RecommendationRelatedAnomaly = Shapes::StructureShape.new(name: 'RecommendationRelatedAnomaly')
    RecommendationRelatedAnomalyResource = Shapes::StructureShape.new(name: 'RecommendationRelatedAnomalyResource')
    RecommendationRelatedAnomalyResourceName = Shapes::StringShape.new(name: 'RecommendationRelatedAnomalyResourceName')
    RecommendationRelatedAnomalyResourceType = Shapes::StringShape.new(name: 'RecommendationRelatedAnomalyResourceType')
    RecommendationRelatedAnomalyResources = Shapes::ListShape.new(name: 'RecommendationRelatedAnomalyResources')
    RecommendationRelatedAnomalySourceDetail = Shapes::StructureShape.new(name: 'RecommendationRelatedAnomalySourceDetail')
    RecommendationRelatedCloudWatchMetricsSourceDetail = Shapes::StructureShape.new(name: 'RecommendationRelatedCloudWatchMetricsSourceDetail')
    RecommendationRelatedCloudWatchMetricsSourceDetails = Shapes::ListShape.new(name: 'RecommendationRelatedCloudWatchMetricsSourceDetails')
    RecommendationRelatedCloudWatchMetricsSourceMetricName = Shapes::StringShape.new(name: 'RecommendationRelatedCloudWatchMetricsSourceMetricName')
    RecommendationRelatedCloudWatchMetricsSourceNamespace = Shapes::StringShape.new(name: 'RecommendationRelatedCloudWatchMetricsSourceNamespace')
    RecommendationRelatedEvent = Shapes::StructureShape.new(name: 'RecommendationRelatedEvent')
    RecommendationRelatedEventName = Shapes::StringShape.new(name: 'RecommendationRelatedEventName')
    RecommendationRelatedEventResource = Shapes::StructureShape.new(name: 'RecommendationRelatedEventResource')
    RecommendationRelatedEventResourceName = Shapes::StringShape.new(name: 'RecommendationRelatedEventResourceName')
    RecommendationRelatedEventResourceType = Shapes::StringShape.new(name: 'RecommendationRelatedEventResourceType')
    RecommendationRelatedEventResources = Shapes::ListShape.new(name: 'RecommendationRelatedEventResources')
    RecommendationRelatedEvents = Shapes::ListShape.new(name: 'RecommendationRelatedEvents')
    Recommendations = Shapes::ListShape.new(name: 'Recommendations')
    RelatedAnomalySourceDetails = Shapes::ListShape.new(name: 'RelatedAnomalySourceDetails')
    RemoveNotificationChannelRequest = Shapes::StructureShape.new(name: 'RemoveNotificationChannelRequest')
    RemoveNotificationChannelResponse = Shapes::StructureShape.new(name: 'RemoveNotificationChannelResponse')
    ResourceCollection = Shapes::StructureShape.new(name: 'ResourceCollection')
    ResourceCollectionFilter = Shapes::StructureShape.new(name: 'ResourceCollectionFilter')
    ResourceCollectionType = Shapes::StringShape.new(name: 'ResourceCollectionType')
    ResourceHours = Shapes::IntegerShape.new(name: 'ResourceHours')
    ResourceIdString = Shapes::StringShape.new(name: 'ResourceIdString')
    ResourceIdType = Shapes::StringShape.new(name: 'ResourceIdType')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RetryAfterSeconds = Shapes::IntegerShape.new(name: 'RetryAfterSeconds')
    SearchInsightsFilters = Shapes::StructureShape.new(name: 'SearchInsightsFilters')
    SearchInsightsMaxResults = Shapes::IntegerShape.new(name: 'SearchInsightsMaxResults')
    SearchInsightsRequest = Shapes::StructureShape.new(name: 'SearchInsightsRequest')
    SearchInsightsResponse = Shapes::StructureShape.new(name: 'SearchInsightsResponse')
    ServiceIntegrationConfig = Shapes::StructureShape.new(name: 'ServiceIntegrationConfig')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SnsChannelConfig = Shapes::StructureShape.new(name: 'SnsChannelConfig')
    SsmOpsItemId = Shapes::StringShape.new(name: 'SsmOpsItemId')
    StackName = Shapes::StringShape.new(name: 'StackName')
    StackNames = Shapes::ListShape.new(name: 'StackNames')
    StartTimeRange = Shapes::StructureShape.new(name: 'StartTimeRange')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TopicArn = Shapes::StringShape.new(name: 'TopicArn')
    UpdateCloudFormationCollectionFilter = Shapes::StructureShape.new(name: 'UpdateCloudFormationCollectionFilter')
    UpdateResourceCollectionAction = Shapes::StringShape.new(name: 'UpdateResourceCollectionAction')
    UpdateResourceCollectionFilter = Shapes::StructureShape.new(name: 'UpdateResourceCollectionFilter')
    UpdateResourceCollectionRequest = Shapes::StructureShape.new(name: 'UpdateResourceCollectionRequest')
    UpdateResourceCollectionResponse = Shapes::StructureShape.new(name: 'UpdateResourceCollectionResponse')
    UpdateServiceIntegrationConfig = Shapes::StructureShape.new(name: 'UpdateServiceIntegrationConfig')
    UpdateServiceIntegrationRequest = Shapes::StructureShape.new(name: 'UpdateServiceIntegrationRequest')
    UpdateServiceIntegrationResponse = Shapes::StructureShape.new(name: 'UpdateServiceIntegrationResponse')
    UpdateStackNames = Shapes::ListShape.new(name: 'UpdateStackNames')
    UuidNextToken = Shapes::StringShape.new(name: 'UuidNextToken')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFields = Shapes::ListShape.new(name: 'ValidationExceptionFields')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessageString, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AddNotificationChannelRequest.add_member(:config, Shapes::ShapeRef.new(shape: NotificationChannelConfig, required: true, location_name: "Config"))
    AddNotificationChannelRequest.struct_class = Types::AddNotificationChannelRequest

    AddNotificationChannelResponse.add_member(:id, Shapes::ShapeRef.new(shape: NotificationChannelId, required: true, location_name: "Id"))
    AddNotificationChannelResponse.struct_class = Types::AddNotificationChannelResponse

    AnomalySourceDetails.add_member(:cloud_watch_metrics, Shapes::ShapeRef.new(shape: CloudWatchMetricsDetails, location_name: "CloudWatchMetrics"))
    AnomalySourceDetails.struct_class = Types::AnomalySourceDetails

    AnomalyTimeRange.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTime"))
    AnomalyTimeRange.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    AnomalyTimeRange.struct_class = Types::AnomalyTimeRange

    Channels.member = Shapes::ShapeRef.new(shape: NotificationChannel)

    CloudFormationCollection.add_member(:stack_names, Shapes::ShapeRef.new(shape: StackNames, location_name: "StackNames"))
    CloudFormationCollection.struct_class = Types::CloudFormationCollection

    CloudFormationCollectionFilter.add_member(:stack_names, Shapes::ShapeRef.new(shape: StackNames, location_name: "StackNames"))
    CloudFormationCollectionFilter.struct_class = Types::CloudFormationCollectionFilter

    CloudFormationHealth.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, location_name: "StackName"))
    CloudFormationHealth.add_member(:insight, Shapes::ShapeRef.new(shape: InsightHealth, location_name: "Insight"))
    CloudFormationHealth.struct_class = Types::CloudFormationHealth

    CloudFormationHealths.member = Shapes::ShapeRef.new(shape: CloudFormationHealth)

    CloudWatchMetricsDetail.add_member(:metric_name, Shapes::ShapeRef.new(shape: CloudWatchMetricsMetricName, location_name: "MetricName"))
    CloudWatchMetricsDetail.add_member(:namespace, Shapes::ShapeRef.new(shape: CloudWatchMetricsNamespace, location_name: "Namespace"))
    CloudWatchMetricsDetail.add_member(:dimensions, Shapes::ShapeRef.new(shape: CloudWatchMetricsDimensions, location_name: "Dimensions"))
    CloudWatchMetricsDetail.add_member(:stat, Shapes::ShapeRef.new(shape: CloudWatchMetricsStat, location_name: "Stat"))
    CloudWatchMetricsDetail.add_member(:unit, Shapes::ShapeRef.new(shape: CloudWatchMetricsUnit, location_name: "Unit"))
    CloudWatchMetricsDetail.add_member(:period, Shapes::ShapeRef.new(shape: CloudWatchMetricsPeriod, location_name: "Period"))
    CloudWatchMetricsDetail.struct_class = Types::CloudWatchMetricsDetail

    CloudWatchMetricsDetails.member = Shapes::ShapeRef.new(shape: CloudWatchMetricsDetail)

    CloudWatchMetricsDimension.add_member(:name, Shapes::ShapeRef.new(shape: CloudWatchMetricsDimensionName, location_name: "Name"))
    CloudWatchMetricsDimension.add_member(:value, Shapes::ShapeRef.new(shape: CloudWatchMetricsDimensionValue, location_name: "Value"))
    CloudWatchMetricsDimension.struct_class = Types::CloudWatchMetricsDimension

    CloudWatchMetricsDimensions.member = Shapes::ShapeRef.new(shape: CloudWatchMetricsDimension)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessageString, required: true, location_name: "Message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location_name: "ResourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceIdType, required: true, location_name: "ResourceType"))
    ConflictException.struct_class = Types::ConflictException

    DescribeAccountHealthRequest.struct_class = Types::DescribeAccountHealthRequest

    DescribeAccountHealthResponse.add_member(:open_reactive_insights, Shapes::ShapeRef.new(shape: NumOpenReactiveInsights, required: true, location_name: "OpenReactiveInsights"))
    DescribeAccountHealthResponse.add_member(:open_proactive_insights, Shapes::ShapeRef.new(shape: NumOpenProactiveInsights, required: true, location_name: "OpenProactiveInsights"))
    DescribeAccountHealthResponse.add_member(:metrics_analyzed, Shapes::ShapeRef.new(shape: NumMetricsAnalyzed, required: true, location_name: "MetricsAnalyzed"))
    DescribeAccountHealthResponse.add_member(:resource_hours, Shapes::ShapeRef.new(shape: ResourceHours, required: true, location_name: "ResourceHours"))
    DescribeAccountHealthResponse.struct_class = Types::DescribeAccountHealthResponse

    DescribeAccountOverviewRequest.add_member(:from_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "FromTime"))
    DescribeAccountOverviewRequest.add_member(:to_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ToTime"))
    DescribeAccountOverviewRequest.struct_class = Types::DescribeAccountOverviewRequest

    DescribeAccountOverviewResponse.add_member(:reactive_insights, Shapes::ShapeRef.new(shape: NumReactiveInsights, required: true, location_name: "ReactiveInsights"))
    DescribeAccountOverviewResponse.add_member(:proactive_insights, Shapes::ShapeRef.new(shape: NumProactiveInsights, required: true, location_name: "ProactiveInsights"))
    DescribeAccountOverviewResponse.add_member(:mean_time_to_recover_in_milliseconds, Shapes::ShapeRef.new(shape: MeanTimeToRecoverInMilliseconds, required: true, location_name: "MeanTimeToRecoverInMilliseconds"))
    DescribeAccountOverviewResponse.struct_class = Types::DescribeAccountOverviewResponse

    DescribeAnomalyRequest.add_member(:id, Shapes::ShapeRef.new(shape: AnomalyId, required: true, location: "uri", location_name: "Id"))
    DescribeAnomalyRequest.struct_class = Types::DescribeAnomalyRequest

    DescribeAnomalyResponse.add_member(:proactive_anomaly, Shapes::ShapeRef.new(shape: ProactiveAnomaly, location_name: "ProactiveAnomaly"))
    DescribeAnomalyResponse.add_member(:reactive_anomaly, Shapes::ShapeRef.new(shape: ReactiveAnomaly, location_name: "ReactiveAnomaly"))
    DescribeAnomalyResponse.struct_class = Types::DescribeAnomalyResponse

    DescribeFeedbackRequest.add_member(:insight_id, Shapes::ShapeRef.new(shape: InsightId, location_name: "InsightId"))
    DescribeFeedbackRequest.struct_class = Types::DescribeFeedbackRequest

    DescribeFeedbackResponse.add_member(:insight_feedback, Shapes::ShapeRef.new(shape: InsightFeedback, location_name: "InsightFeedback"))
    DescribeFeedbackResponse.struct_class = Types::DescribeFeedbackResponse

    DescribeInsightRequest.add_member(:id, Shapes::ShapeRef.new(shape: InsightId, required: true, location: "uri", location_name: "Id"))
    DescribeInsightRequest.struct_class = Types::DescribeInsightRequest

    DescribeInsightResponse.add_member(:proactive_insight, Shapes::ShapeRef.new(shape: ProactiveInsight, location_name: "ProactiveInsight"))
    DescribeInsightResponse.add_member(:reactive_insight, Shapes::ShapeRef.new(shape: ReactiveInsight, location_name: "ReactiveInsight"))
    DescribeInsightResponse.struct_class = Types::DescribeInsightResponse

    DescribeResourceCollectionHealthRequest.add_member(:resource_collection_type, Shapes::ShapeRef.new(shape: ResourceCollectionType, required: true, location: "uri", location_name: "ResourceCollectionType"))
    DescribeResourceCollectionHealthRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location: "querystring", location_name: "NextToken"))
    DescribeResourceCollectionHealthRequest.struct_class = Types::DescribeResourceCollectionHealthRequest

    DescribeResourceCollectionHealthResponse.add_member(:cloud_formation, Shapes::ShapeRef.new(shape: CloudFormationHealths, required: true, location_name: "CloudFormation"))
    DescribeResourceCollectionHealthResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    DescribeResourceCollectionHealthResponse.struct_class = Types::DescribeResourceCollectionHealthResponse

    DescribeServiceIntegrationRequest.struct_class = Types::DescribeServiceIntegrationRequest

    DescribeServiceIntegrationResponse.add_member(:service_integration, Shapes::ShapeRef.new(shape: ServiceIntegrationConfig, location_name: "ServiceIntegration"))
    DescribeServiceIntegrationResponse.struct_class = Types::DescribeServiceIntegrationResponse

    EndTimeRange.add_member(:from_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "FromTime"))
    EndTimeRange.add_member(:to_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ToTime"))
    EndTimeRange.struct_class = Types::EndTimeRange

    Event.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    Event.add_member(:id, Shapes::ShapeRef.new(shape: EventId, location_name: "Id"))
    Event.add_member(:time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Time"))
    Event.add_member(:event_source, Shapes::ShapeRef.new(shape: EventSource, location_name: "EventSource"))
    Event.add_member(:name, Shapes::ShapeRef.new(shape: EventName, location_name: "Name"))
    Event.add_member(:data_source, Shapes::ShapeRef.new(shape: EventDataSource, location_name: "DataSource"))
    Event.add_member(:event_class, Shapes::ShapeRef.new(shape: EventClass, location_name: "EventClass"))
    Event.add_member(:resources, Shapes::ShapeRef.new(shape: EventResources, location_name: "Resources"))
    Event.struct_class = Types::Event

    EventResource.add_member(:type, Shapes::ShapeRef.new(shape: EventResourceType, location_name: "Type"))
    EventResource.add_member(:name, Shapes::ShapeRef.new(shape: EventResourceName, location_name: "Name"))
    EventResource.add_member(:arn, Shapes::ShapeRef.new(shape: EventResourceArn, location_name: "Arn"))
    EventResource.struct_class = Types::EventResource

    EventResources.member = Shapes::ShapeRef.new(shape: EventResource)

    EventTimeRange.add_member(:from_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "FromTime"))
    EventTimeRange.add_member(:to_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ToTime"))
    EventTimeRange.struct_class = Types::EventTimeRange

    Events.member = Shapes::ShapeRef.new(shape: Event)

    GetResourceCollectionRequest.add_member(:resource_collection_type, Shapes::ShapeRef.new(shape: ResourceCollectionType, required: true, location: "uri", location_name: "ResourceCollectionType"))
    GetResourceCollectionRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location: "querystring", location_name: "NextToken"))
    GetResourceCollectionRequest.struct_class = Types::GetResourceCollectionRequest

    GetResourceCollectionResponse.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollectionFilter, location_name: "ResourceCollection"))
    GetResourceCollectionResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    GetResourceCollectionResponse.struct_class = Types::GetResourceCollectionResponse

    InsightFeedback.add_member(:id, Shapes::ShapeRef.new(shape: InsightId, location_name: "Id"))
    InsightFeedback.add_member(:feedback, Shapes::ShapeRef.new(shape: InsightFeedbackOption, location_name: "Feedback"))
    InsightFeedback.struct_class = Types::InsightFeedback

    InsightHealth.add_member(:open_proactive_insights, Shapes::ShapeRef.new(shape: NumOpenProactiveInsights, location_name: "OpenProactiveInsights"))
    InsightHealth.add_member(:open_reactive_insights, Shapes::ShapeRef.new(shape: NumOpenReactiveInsights, location_name: "OpenReactiveInsights"))
    InsightHealth.add_member(:mean_time_to_recover_in_milliseconds, Shapes::ShapeRef.new(shape: MeanTimeToRecoverInMilliseconds, location_name: "MeanTimeToRecoverInMilliseconds"))
    InsightHealth.struct_class = Types::InsightHealth

    InsightSeverities.member = Shapes::ShapeRef.new(shape: InsightSeverity)

    InsightStatuses.member = Shapes::ShapeRef.new(shape: InsightStatus)

    InsightTimeRange.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTime"))
    InsightTimeRange.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    InsightTimeRange.struct_class = Types::InsightTimeRange

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessageString, required: true, location_name: "Message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    ListAnomaliesForInsightRequest.add_member(:insight_id, Shapes::ShapeRef.new(shape: InsightId, required: true, location: "uri", location_name: "InsightId"))
    ListAnomaliesForInsightRequest.add_member(:start_time_range, Shapes::ShapeRef.new(shape: StartTimeRange, location_name: "StartTimeRange"))
    ListAnomaliesForInsightRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAnomaliesForInsightMaxResults, location_name: "MaxResults"))
    ListAnomaliesForInsightRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    ListAnomaliesForInsightRequest.struct_class = Types::ListAnomaliesForInsightRequest

    ListAnomaliesForInsightResponse.add_member(:proactive_anomalies, Shapes::ShapeRef.new(shape: ProactiveAnomalies, location_name: "ProactiveAnomalies"))
    ListAnomaliesForInsightResponse.add_member(:reactive_anomalies, Shapes::ShapeRef.new(shape: ReactiveAnomalies, location_name: "ReactiveAnomalies"))
    ListAnomaliesForInsightResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    ListAnomaliesForInsightResponse.struct_class = Types::ListAnomaliesForInsightResponse

    ListEventsFilters.add_member(:insight_id, Shapes::ShapeRef.new(shape: InsightId, location_name: "InsightId"))
    ListEventsFilters.add_member(:event_time_range, Shapes::ShapeRef.new(shape: EventTimeRange, location_name: "EventTimeRange"))
    ListEventsFilters.add_member(:event_class, Shapes::ShapeRef.new(shape: EventClass, location_name: "EventClass"))
    ListEventsFilters.add_member(:event_source, Shapes::ShapeRef.new(shape: EventSource, location_name: "EventSource"))
    ListEventsFilters.add_member(:data_source, Shapes::ShapeRef.new(shape: EventDataSource, location_name: "DataSource"))
    ListEventsFilters.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    ListEventsFilters.struct_class = Types::ListEventsFilters

    ListEventsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListEventsFilters, required: true, location_name: "Filters"))
    ListEventsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListEventsMaxResults, location_name: "MaxResults"))
    ListEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    ListEventsRequest.struct_class = Types::ListEventsRequest

    ListEventsResponse.add_member(:events, Shapes::ShapeRef.new(shape: Events, required: true, location_name: "Events"))
    ListEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    ListEventsResponse.struct_class = Types::ListEventsResponse

    ListInsightsAnyStatusFilter.add_member(:type, Shapes::ShapeRef.new(shape: InsightType, required: true, location_name: "Type"))
    ListInsightsAnyStatusFilter.add_member(:start_time_range, Shapes::ShapeRef.new(shape: StartTimeRange, required: true, location_name: "StartTimeRange"))
    ListInsightsAnyStatusFilter.struct_class = Types::ListInsightsAnyStatusFilter

    ListInsightsClosedStatusFilter.add_member(:type, Shapes::ShapeRef.new(shape: InsightType, required: true, location_name: "Type"))
    ListInsightsClosedStatusFilter.add_member(:end_time_range, Shapes::ShapeRef.new(shape: EndTimeRange, required: true, location_name: "EndTimeRange"))
    ListInsightsClosedStatusFilter.struct_class = Types::ListInsightsClosedStatusFilter

    ListInsightsOngoingStatusFilter.add_member(:type, Shapes::ShapeRef.new(shape: InsightType, required: true, location_name: "Type"))
    ListInsightsOngoingStatusFilter.struct_class = Types::ListInsightsOngoingStatusFilter

    ListInsightsRequest.add_member(:status_filter, Shapes::ShapeRef.new(shape: ListInsightsStatusFilter, required: true, location_name: "StatusFilter"))
    ListInsightsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListInsightsMaxResults, location_name: "MaxResults"))
    ListInsightsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    ListInsightsRequest.struct_class = Types::ListInsightsRequest

    ListInsightsResponse.add_member(:proactive_insights, Shapes::ShapeRef.new(shape: ProactiveInsights, location_name: "ProactiveInsights"))
    ListInsightsResponse.add_member(:reactive_insights, Shapes::ShapeRef.new(shape: ReactiveInsights, location_name: "ReactiveInsights"))
    ListInsightsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    ListInsightsResponse.struct_class = Types::ListInsightsResponse

    ListInsightsStatusFilter.add_member(:ongoing, Shapes::ShapeRef.new(shape: ListInsightsOngoingStatusFilter, location_name: "Ongoing"))
    ListInsightsStatusFilter.add_member(:closed, Shapes::ShapeRef.new(shape: ListInsightsClosedStatusFilter, location_name: "Closed"))
    ListInsightsStatusFilter.add_member(:any, Shapes::ShapeRef.new(shape: ListInsightsAnyStatusFilter, location_name: "Any"))
    ListInsightsStatusFilter.struct_class = Types::ListInsightsStatusFilter

    ListNotificationChannelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    ListNotificationChannelsRequest.struct_class = Types::ListNotificationChannelsRequest

    ListNotificationChannelsResponse.add_member(:channels, Shapes::ShapeRef.new(shape: Channels, location_name: "Channels"))
    ListNotificationChannelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    ListNotificationChannelsResponse.struct_class = Types::ListNotificationChannelsResponse

    ListRecommendationsRequest.add_member(:insight_id, Shapes::ShapeRef.new(shape: InsightId, required: true, location_name: "InsightId"))
    ListRecommendationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    ListRecommendationsRequest.struct_class = Types::ListRecommendationsRequest

    ListRecommendationsResponse.add_member(:recommendations, Shapes::ShapeRef.new(shape: Recommendations, location_name: "Recommendations"))
    ListRecommendationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    ListRecommendationsResponse.struct_class = Types::ListRecommendationsResponse

    NotificationChannel.add_member(:id, Shapes::ShapeRef.new(shape: NotificationChannelId, location_name: "Id"))
    NotificationChannel.add_member(:config, Shapes::ShapeRef.new(shape: NotificationChannelConfig, location_name: "Config"))
    NotificationChannel.struct_class = Types::NotificationChannel

    NotificationChannelConfig.add_member(:sns, Shapes::ShapeRef.new(shape: SnsChannelConfig, required: true, location_name: "Sns"))
    NotificationChannelConfig.struct_class = Types::NotificationChannelConfig

    OpsCenterIntegration.add_member(:opt_in_status, Shapes::ShapeRef.new(shape: OptInStatus, location_name: "OptInStatus"))
    OpsCenterIntegration.struct_class = Types::OpsCenterIntegration

    OpsCenterIntegrationConfig.add_member(:opt_in_status, Shapes::ShapeRef.new(shape: OptInStatus, location_name: "OptInStatus"))
    OpsCenterIntegrationConfig.struct_class = Types::OpsCenterIntegrationConfig

    PredictionTimeRange.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTime"))
    PredictionTimeRange.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    PredictionTimeRange.struct_class = Types::PredictionTimeRange

    ProactiveAnomalies.member = Shapes::ShapeRef.new(shape: ProactiveAnomalySummary)

    ProactiveAnomaly.add_member(:id, Shapes::ShapeRef.new(shape: AnomalyId, location_name: "Id"))
    ProactiveAnomaly.add_member(:severity, Shapes::ShapeRef.new(shape: AnomalySeverity, location_name: "Severity"))
    ProactiveAnomaly.add_member(:status, Shapes::ShapeRef.new(shape: AnomalyStatus, location_name: "Status"))
    ProactiveAnomaly.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdateTime"))
    ProactiveAnomaly.add_member(:anomaly_time_range, Shapes::ShapeRef.new(shape: AnomalyTimeRange, location_name: "AnomalyTimeRange"))
    ProactiveAnomaly.add_member(:prediction_time_range, Shapes::ShapeRef.new(shape: PredictionTimeRange, location_name: "PredictionTimeRange"))
    ProactiveAnomaly.add_member(:source_details, Shapes::ShapeRef.new(shape: AnomalySourceDetails, location_name: "SourceDetails"))
    ProactiveAnomaly.add_member(:associated_insight_id, Shapes::ShapeRef.new(shape: InsightId, location_name: "AssociatedInsightId"))
    ProactiveAnomaly.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    ProactiveAnomaly.add_member(:limit, Shapes::ShapeRef.new(shape: AnomalyLimit, location_name: "Limit"))
    ProactiveAnomaly.struct_class = Types::ProactiveAnomaly

    ProactiveAnomalySummary.add_member(:id, Shapes::ShapeRef.new(shape: AnomalyId, location_name: "Id"))
    ProactiveAnomalySummary.add_member(:severity, Shapes::ShapeRef.new(shape: AnomalySeverity, location_name: "Severity"))
    ProactiveAnomalySummary.add_member(:status, Shapes::ShapeRef.new(shape: AnomalyStatus, location_name: "Status"))
    ProactiveAnomalySummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdateTime"))
    ProactiveAnomalySummary.add_member(:anomaly_time_range, Shapes::ShapeRef.new(shape: AnomalyTimeRange, location_name: "AnomalyTimeRange"))
    ProactiveAnomalySummary.add_member(:prediction_time_range, Shapes::ShapeRef.new(shape: PredictionTimeRange, location_name: "PredictionTimeRange"))
    ProactiveAnomalySummary.add_member(:source_details, Shapes::ShapeRef.new(shape: AnomalySourceDetails, location_name: "SourceDetails"))
    ProactiveAnomalySummary.add_member(:associated_insight_id, Shapes::ShapeRef.new(shape: InsightId, location_name: "AssociatedInsightId"))
    ProactiveAnomalySummary.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    ProactiveAnomalySummary.add_member(:limit, Shapes::ShapeRef.new(shape: AnomalyLimit, location_name: "Limit"))
    ProactiveAnomalySummary.struct_class = Types::ProactiveAnomalySummary

    ProactiveInsight.add_member(:id, Shapes::ShapeRef.new(shape: InsightId, location_name: "Id"))
    ProactiveInsight.add_member(:name, Shapes::ShapeRef.new(shape: InsightName, location_name: "Name"))
    ProactiveInsight.add_member(:severity, Shapes::ShapeRef.new(shape: InsightSeverity, location_name: "Severity"))
    ProactiveInsight.add_member(:status, Shapes::ShapeRef.new(shape: InsightStatus, location_name: "Status"))
    ProactiveInsight.add_member(:insight_time_range, Shapes::ShapeRef.new(shape: InsightTimeRange, location_name: "InsightTimeRange"))
    ProactiveInsight.add_member(:prediction_time_range, Shapes::ShapeRef.new(shape: PredictionTimeRange, location_name: "PredictionTimeRange"))
    ProactiveInsight.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    ProactiveInsight.add_member(:ssm_ops_item_id, Shapes::ShapeRef.new(shape: SsmOpsItemId, location_name: "SsmOpsItemId"))
    ProactiveInsight.struct_class = Types::ProactiveInsight

    ProactiveInsightSummary.add_member(:id, Shapes::ShapeRef.new(shape: InsightId, location_name: "Id"))
    ProactiveInsightSummary.add_member(:name, Shapes::ShapeRef.new(shape: InsightName, location_name: "Name"))
    ProactiveInsightSummary.add_member(:severity, Shapes::ShapeRef.new(shape: InsightSeverity, location_name: "Severity"))
    ProactiveInsightSummary.add_member(:status, Shapes::ShapeRef.new(shape: InsightStatus, location_name: "Status"))
    ProactiveInsightSummary.add_member(:insight_time_range, Shapes::ShapeRef.new(shape: InsightTimeRange, location_name: "InsightTimeRange"))
    ProactiveInsightSummary.add_member(:prediction_time_range, Shapes::ShapeRef.new(shape: PredictionTimeRange, location_name: "PredictionTimeRange"))
    ProactiveInsightSummary.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    ProactiveInsightSummary.struct_class = Types::ProactiveInsightSummary

    ProactiveInsights.member = Shapes::ShapeRef.new(shape: ProactiveInsightSummary)

    PutFeedbackRequest.add_member(:insight_feedback, Shapes::ShapeRef.new(shape: InsightFeedback, location_name: "InsightFeedback"))
    PutFeedbackRequest.struct_class = Types::PutFeedbackRequest

    PutFeedbackResponse.struct_class = Types::PutFeedbackResponse

    ReactiveAnomalies.member = Shapes::ShapeRef.new(shape: ReactiveAnomalySummary)

    ReactiveAnomaly.add_member(:id, Shapes::ShapeRef.new(shape: AnomalyId, location_name: "Id"))
    ReactiveAnomaly.add_member(:severity, Shapes::ShapeRef.new(shape: AnomalySeverity, location_name: "Severity"))
    ReactiveAnomaly.add_member(:status, Shapes::ShapeRef.new(shape: AnomalyStatus, location_name: "Status"))
    ReactiveAnomaly.add_member(:anomaly_time_range, Shapes::ShapeRef.new(shape: AnomalyTimeRange, location_name: "AnomalyTimeRange"))
    ReactiveAnomaly.add_member(:source_details, Shapes::ShapeRef.new(shape: AnomalySourceDetails, location_name: "SourceDetails"))
    ReactiveAnomaly.add_member(:associated_insight_id, Shapes::ShapeRef.new(shape: InsightId, location_name: "AssociatedInsightId"))
    ReactiveAnomaly.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    ReactiveAnomaly.struct_class = Types::ReactiveAnomaly

    ReactiveAnomalySummary.add_member(:id, Shapes::ShapeRef.new(shape: AnomalyId, location_name: "Id"))
    ReactiveAnomalySummary.add_member(:severity, Shapes::ShapeRef.new(shape: AnomalySeverity, location_name: "Severity"))
    ReactiveAnomalySummary.add_member(:status, Shapes::ShapeRef.new(shape: AnomalyStatus, location_name: "Status"))
    ReactiveAnomalySummary.add_member(:anomaly_time_range, Shapes::ShapeRef.new(shape: AnomalyTimeRange, location_name: "AnomalyTimeRange"))
    ReactiveAnomalySummary.add_member(:source_details, Shapes::ShapeRef.new(shape: AnomalySourceDetails, location_name: "SourceDetails"))
    ReactiveAnomalySummary.add_member(:associated_insight_id, Shapes::ShapeRef.new(shape: InsightId, location_name: "AssociatedInsightId"))
    ReactiveAnomalySummary.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    ReactiveAnomalySummary.struct_class = Types::ReactiveAnomalySummary

    ReactiveInsight.add_member(:id, Shapes::ShapeRef.new(shape: InsightId, location_name: "Id"))
    ReactiveInsight.add_member(:name, Shapes::ShapeRef.new(shape: InsightName, location_name: "Name"))
    ReactiveInsight.add_member(:severity, Shapes::ShapeRef.new(shape: InsightSeverity, location_name: "Severity"))
    ReactiveInsight.add_member(:status, Shapes::ShapeRef.new(shape: InsightStatus, location_name: "Status"))
    ReactiveInsight.add_member(:insight_time_range, Shapes::ShapeRef.new(shape: InsightTimeRange, location_name: "InsightTimeRange"))
    ReactiveInsight.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    ReactiveInsight.add_member(:ssm_ops_item_id, Shapes::ShapeRef.new(shape: SsmOpsItemId, location_name: "SsmOpsItemId"))
    ReactiveInsight.struct_class = Types::ReactiveInsight

    ReactiveInsightSummary.add_member(:id, Shapes::ShapeRef.new(shape: InsightId, location_name: "Id"))
    ReactiveInsightSummary.add_member(:name, Shapes::ShapeRef.new(shape: InsightName, location_name: "Name"))
    ReactiveInsightSummary.add_member(:severity, Shapes::ShapeRef.new(shape: InsightSeverity, location_name: "Severity"))
    ReactiveInsightSummary.add_member(:status, Shapes::ShapeRef.new(shape: InsightStatus, location_name: "Status"))
    ReactiveInsightSummary.add_member(:insight_time_range, Shapes::ShapeRef.new(shape: InsightTimeRange, location_name: "InsightTimeRange"))
    ReactiveInsightSummary.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    ReactiveInsightSummary.struct_class = Types::ReactiveInsightSummary

    ReactiveInsights.member = Shapes::ShapeRef.new(shape: ReactiveInsightSummary)

    Recommendation.add_member(:description, Shapes::ShapeRef.new(shape: RecommendationDescription, location_name: "Description"))
    Recommendation.add_member(:link, Shapes::ShapeRef.new(shape: RecommendationLink, location_name: "Link"))
    Recommendation.add_member(:name, Shapes::ShapeRef.new(shape: RecommendationName, location_name: "Name"))
    Recommendation.add_member(:reason, Shapes::ShapeRef.new(shape: RecommendationReason, location_name: "Reason"))
    Recommendation.add_member(:related_events, Shapes::ShapeRef.new(shape: RecommendationRelatedEvents, location_name: "RelatedEvents"))
    Recommendation.add_member(:related_anomalies, Shapes::ShapeRef.new(shape: RecommendationRelatedAnomalies, location_name: "RelatedAnomalies"))
    Recommendation.struct_class = Types::Recommendation

    RecommendationRelatedAnomalies.member = Shapes::ShapeRef.new(shape: RecommendationRelatedAnomaly)

    RecommendationRelatedAnomaly.add_member(:resources, Shapes::ShapeRef.new(shape: RecommendationRelatedAnomalyResources, location_name: "Resources"))
    RecommendationRelatedAnomaly.add_member(:source_details, Shapes::ShapeRef.new(shape: RelatedAnomalySourceDetails, location_name: "SourceDetails"))
    RecommendationRelatedAnomaly.struct_class = Types::RecommendationRelatedAnomaly

    RecommendationRelatedAnomalyResource.add_member(:name, Shapes::ShapeRef.new(shape: RecommendationRelatedAnomalyResourceName, location_name: "Name"))
    RecommendationRelatedAnomalyResource.add_member(:type, Shapes::ShapeRef.new(shape: RecommendationRelatedAnomalyResourceType, location_name: "Type"))
    RecommendationRelatedAnomalyResource.struct_class = Types::RecommendationRelatedAnomalyResource

    RecommendationRelatedAnomalyResources.member = Shapes::ShapeRef.new(shape: RecommendationRelatedAnomalyResource)

    RecommendationRelatedAnomalySourceDetail.add_member(:cloud_watch_metrics, Shapes::ShapeRef.new(shape: RecommendationRelatedCloudWatchMetricsSourceDetails, location_name: "CloudWatchMetrics"))
    RecommendationRelatedAnomalySourceDetail.struct_class = Types::RecommendationRelatedAnomalySourceDetail

    RecommendationRelatedCloudWatchMetricsSourceDetail.add_member(:metric_name, Shapes::ShapeRef.new(shape: RecommendationRelatedCloudWatchMetricsSourceMetricName, location_name: "MetricName"))
    RecommendationRelatedCloudWatchMetricsSourceDetail.add_member(:namespace, Shapes::ShapeRef.new(shape: RecommendationRelatedCloudWatchMetricsSourceNamespace, location_name: "Namespace"))
    RecommendationRelatedCloudWatchMetricsSourceDetail.struct_class = Types::RecommendationRelatedCloudWatchMetricsSourceDetail

    RecommendationRelatedCloudWatchMetricsSourceDetails.member = Shapes::ShapeRef.new(shape: RecommendationRelatedCloudWatchMetricsSourceDetail)

    RecommendationRelatedEvent.add_member(:name, Shapes::ShapeRef.new(shape: RecommendationRelatedEventName, location_name: "Name"))
    RecommendationRelatedEvent.add_member(:resources, Shapes::ShapeRef.new(shape: RecommendationRelatedEventResources, location_name: "Resources"))
    RecommendationRelatedEvent.struct_class = Types::RecommendationRelatedEvent

    RecommendationRelatedEventResource.add_member(:name, Shapes::ShapeRef.new(shape: RecommendationRelatedEventResourceName, location_name: "Name"))
    RecommendationRelatedEventResource.add_member(:type, Shapes::ShapeRef.new(shape: RecommendationRelatedEventResourceType, location_name: "Type"))
    RecommendationRelatedEventResource.struct_class = Types::RecommendationRelatedEventResource

    RecommendationRelatedEventResources.member = Shapes::ShapeRef.new(shape: RecommendationRelatedEventResource)

    RecommendationRelatedEvents.member = Shapes::ShapeRef.new(shape: RecommendationRelatedEvent)

    Recommendations.member = Shapes::ShapeRef.new(shape: Recommendation)

    RelatedAnomalySourceDetails.member = Shapes::ShapeRef.new(shape: RecommendationRelatedAnomalySourceDetail)

    RemoveNotificationChannelRequest.add_member(:id, Shapes::ShapeRef.new(shape: NotificationChannelId, required: true, location: "uri", location_name: "Id"))
    RemoveNotificationChannelRequest.struct_class = Types::RemoveNotificationChannelRequest

    RemoveNotificationChannelResponse.struct_class = Types::RemoveNotificationChannelResponse

    ResourceCollection.add_member(:cloud_formation, Shapes::ShapeRef.new(shape: CloudFormationCollection, location_name: "CloudFormation"))
    ResourceCollection.struct_class = Types::ResourceCollection

    ResourceCollectionFilter.add_member(:cloud_formation, Shapes::ShapeRef.new(shape: CloudFormationCollectionFilter, location_name: "CloudFormation"))
    ResourceCollectionFilter.struct_class = Types::ResourceCollectionFilter

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessageString, required: true, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceIdType, required: true, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SearchInsightsFilters.add_member(:severities, Shapes::ShapeRef.new(shape: InsightSeverities, location_name: "Severities"))
    SearchInsightsFilters.add_member(:statuses, Shapes::ShapeRef.new(shape: InsightStatuses, location_name: "Statuses"))
    SearchInsightsFilters.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    SearchInsightsFilters.struct_class = Types::SearchInsightsFilters

    SearchInsightsRequest.add_member(:start_time_range, Shapes::ShapeRef.new(shape: StartTimeRange, required: true, location_name: "StartTimeRange"))
    SearchInsightsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: SearchInsightsFilters, location_name: "Filters"))
    SearchInsightsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: SearchInsightsMaxResults, location_name: "MaxResults"))
    SearchInsightsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    SearchInsightsRequest.add_member(:type, Shapes::ShapeRef.new(shape: InsightType, required: true, location_name: "Type"))
    SearchInsightsRequest.struct_class = Types::SearchInsightsRequest

    SearchInsightsResponse.add_member(:proactive_insights, Shapes::ShapeRef.new(shape: ProactiveInsights, location_name: "ProactiveInsights"))
    SearchInsightsResponse.add_member(:reactive_insights, Shapes::ShapeRef.new(shape: ReactiveInsights, location_name: "ReactiveInsights"))
    SearchInsightsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    SearchInsightsResponse.struct_class = Types::SearchInsightsResponse

    ServiceIntegrationConfig.add_member(:ops_center, Shapes::ShapeRef.new(shape: OpsCenterIntegration, location_name: "OpsCenter"))
    ServiceIntegrationConfig.struct_class = Types::ServiceIntegrationConfig

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessageString, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SnsChannelConfig.add_member(:topic_arn, Shapes::ShapeRef.new(shape: TopicArn, location_name: "TopicArn"))
    SnsChannelConfig.struct_class = Types::SnsChannelConfig

    StackNames.member = Shapes::ShapeRef.new(shape: StackName)

    StartTimeRange.add_member(:from_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "FromTime"))
    StartTimeRange.add_member(:to_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ToTime"))
    StartTimeRange.struct_class = Types::StartTimeRange

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessageString, required: true, location_name: "Message"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: ErrorQuotaCodeString, location_name: "QuotaCode"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: ErrorServiceCodeString, location_name: "ServiceCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UpdateCloudFormationCollectionFilter.add_member(:stack_names, Shapes::ShapeRef.new(shape: UpdateStackNames, location_name: "StackNames"))
    UpdateCloudFormationCollectionFilter.struct_class = Types::UpdateCloudFormationCollectionFilter

    UpdateResourceCollectionFilter.add_member(:cloud_formation, Shapes::ShapeRef.new(shape: UpdateCloudFormationCollectionFilter, location_name: "CloudFormation"))
    UpdateResourceCollectionFilter.struct_class = Types::UpdateResourceCollectionFilter

    UpdateResourceCollectionRequest.add_member(:action, Shapes::ShapeRef.new(shape: UpdateResourceCollectionAction, required: true, location_name: "Action"))
    UpdateResourceCollectionRequest.add_member(:resource_collection, Shapes::ShapeRef.new(shape: UpdateResourceCollectionFilter, required: true, location_name: "ResourceCollection"))
    UpdateResourceCollectionRequest.struct_class = Types::UpdateResourceCollectionRequest

    UpdateResourceCollectionResponse.struct_class = Types::UpdateResourceCollectionResponse

    UpdateServiceIntegrationConfig.add_member(:ops_center, Shapes::ShapeRef.new(shape: OpsCenterIntegrationConfig, location_name: "OpsCenter"))
    UpdateServiceIntegrationConfig.struct_class = Types::UpdateServiceIntegrationConfig

    UpdateServiceIntegrationRequest.add_member(:service_integration, Shapes::ShapeRef.new(shape: UpdateServiceIntegrationConfig, required: true, location_name: "ServiceIntegration"))
    UpdateServiceIntegrationRequest.struct_class = Types::UpdateServiceIntegrationRequest

    UpdateServiceIntegrationResponse.struct_class = Types::UpdateServiceIntegrationResponse

    UpdateStackNames.member = Shapes::ShapeRef.new(shape: StackName)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessageString, required: true, location_name: "Message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "Reason"))
    ValidationException.add_member(:fields, Shapes::ShapeRef.new(shape: ValidationExceptionFields, location_name: "Fields"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: ErrorNameString, required: true, location_name: "Name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessageString, required: true, location_name: "Message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFields.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-12-01"

      api.metadata = {
        "apiVersion" => "2020-12-01",
        "endpointPrefix" => "devops-guru",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon DevOps Guru",
        "serviceId" => "DevOps Guru",
        "signatureVersion" => "v4",
        "signingName" => "devops-guru",
        "uid" => "devops-guru-2020-12-01",
      }

      api.add_operation(:add_notification_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddNotificationChannel"
        o.http_method = "PUT"
        o.http_request_uri = "/channels"
        o.input = Shapes::ShapeRef.new(shape: AddNotificationChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: AddNotificationChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_account_health, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountHealth"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/health"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccountHealthRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountHealthResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_account_overview, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountOverview"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/overview"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccountOverviewRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountOverviewResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_anomaly, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAnomaly"
        o.http_method = "GET"
        o.http_request_uri = "/anomalies/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DescribeAnomalyRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAnomalyResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_feedback, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFeedback"
        o.http_method = "POST"
        o.http_request_uri = "/feedback"
        o.input = Shapes::ShapeRef.new(shape: DescribeFeedbackRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFeedbackResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_insight, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInsight"
        o.http_method = "GET"
        o.http_request_uri = "/insights/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DescribeInsightRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInsightResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_resource_collection_health, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeResourceCollectionHealth"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/health/resource-collection/{ResourceCollectionType}"
        o.input = Shapes::ShapeRef.new(shape: DescribeResourceCollectionHealthRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeResourceCollectionHealthResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_service_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeServiceIntegration"
        o.http_method = "GET"
        o.http_request_uri = "/service-integrations"
        o.input = Shapes::ShapeRef.new(shape: DescribeServiceIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeServiceIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_resource_collection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourceCollection"
        o.http_method = "GET"
        o.http_request_uri = "/resource-collections/{ResourceCollectionType}"
        o.input = Shapes::ShapeRef.new(shape: GetResourceCollectionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourceCollectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_anomalies_for_insight, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAnomaliesForInsight"
        o.http_method = "POST"
        o.http_request_uri = "/anomalies/insight/{InsightId}"
        o.input = Shapes::ShapeRef.new(shape: ListAnomaliesForInsightRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAnomaliesForInsightResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEvents"
        o.http_method = "POST"
        o.http_request_uri = "/events"
        o.input = Shapes::ShapeRef.new(shape: ListEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_insights, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInsights"
        o.http_method = "POST"
        o.http_request_uri = "/insights"
        o.input = Shapes::ShapeRef.new(shape: ListInsightsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInsightsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_notification_channels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNotificationChannels"
        o.http_method = "POST"
        o.http_request_uri = "/channels"
        o.input = Shapes::ShapeRef.new(shape: ListNotificationChannelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNotificationChannelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_recommendations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRecommendations"
        o.http_method = "POST"
        o.http_request_uri = "/recommendations"
        o.input = Shapes::ShapeRef.new(shape: ListRecommendationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRecommendationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_feedback, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutFeedback"
        o.http_method = "PUT"
        o.http_request_uri = "/feedback"
        o.input = Shapes::ShapeRef.new(shape: PutFeedbackRequest)
        o.output = Shapes::ShapeRef.new(shape: PutFeedbackResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:remove_notification_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveNotificationChannel"
        o.http_method = "DELETE"
        o.http_request_uri = "/channels/{Id}"
        o.input = Shapes::ShapeRef.new(shape: RemoveNotificationChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveNotificationChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:search_insights, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchInsights"
        o.http_method = "POST"
        o.http_request_uri = "/insights/search"
        o.input = Shapes::ShapeRef.new(shape: SearchInsightsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchInsightsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:update_resource_collection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateResourceCollection"
        o.http_method = "PUT"
        o.http_request_uri = "/resource-collections"
        o.input = Shapes::ShapeRef.new(shape: UpdateResourceCollectionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateResourceCollectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_service_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateServiceIntegration"
        o.http_method = "PUT"
        o.http_request_uri = "/service-integrations"
        o.input = Shapes::ShapeRef.new(shape: UpdateServiceIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateServiceIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
