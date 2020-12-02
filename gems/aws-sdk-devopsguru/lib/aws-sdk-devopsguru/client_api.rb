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
    AnomalySeverity = Shapes::StringShape.new(name: 'AnomalySeverity')
    AnomalySourceDetails = Shapes::StructureShape.new(name: 'AnomalySourceDetails')
    AnomalyStatus = Shapes::StringShape.new(name: 'AnomalyStatus')
    AnomalyTimeRange = Shapes::StructureShape.new(name: 'AnomalyTimeRange')
    CloudFormationCollection = Shapes::StructureShape.new(name: 'CloudFormationCollection')
    CloudFormationCollectionFilter = Shapes::StructureShape.new(name: 'CloudFormationCollectionFilter')
    CloudFormationHealth = Shapes::StructureShape.new(name: 'CloudFormationHealth')
    CloudWatchMetricsDetail = Shapes::StructureShape.new(name: 'CloudWatchMetricsDetail')
    CloudWatchMetricsDimension = Shapes::StructureShape.new(name: 'CloudWatchMetricsDimension')
    CloudWatchMetricsStat = Shapes::StringShape.new(name: 'CloudWatchMetricsStat')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    DescribeAccountHealthRequest = Shapes::StructureShape.new(name: 'DescribeAccountHealthRequest')
    DescribeAccountHealthResponse = Shapes::StructureShape.new(name: 'DescribeAccountHealthResponse')
    DescribeAccountOverviewRequest = Shapes::StructureShape.new(name: 'DescribeAccountOverviewRequest')
    DescribeAccountOverviewResponse = Shapes::StructureShape.new(name: 'DescribeAccountOverviewResponse')
    DescribeAnomalyRequest = Shapes::StructureShape.new(name: 'DescribeAnomalyRequest')
    DescribeAnomalyResponse = Shapes::StructureShape.new(name: 'DescribeAnomalyResponse')
    DescribeInsightRequest = Shapes::StructureShape.new(name: 'DescribeInsightRequest')
    DescribeInsightResponse = Shapes::StructureShape.new(name: 'DescribeInsightResponse')
    DescribeResourceCollectionHealthRequest = Shapes::StructureShape.new(name: 'DescribeResourceCollectionHealthRequest')
    DescribeResourceCollectionHealthResponse = Shapes::StructureShape.new(name: 'DescribeResourceCollectionHealthResponse')
    DescribeServiceIntegrationRequest = Shapes::StructureShape.new(name: 'DescribeServiceIntegrationRequest')
    DescribeServiceIntegrationResponse = Shapes::StructureShape.new(name: 'DescribeServiceIntegrationResponse')
    EndTimeRange = Shapes::StructureShape.new(name: 'EndTimeRange')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventClass = Shapes::StringShape.new(name: 'EventClass')
    EventDataSource = Shapes::StringShape.new(name: 'EventDataSource')
    EventResource = Shapes::StructureShape.new(name: 'EventResource')
    EventTimeRange = Shapes::StructureShape.new(name: 'EventTimeRange')
    GetResourceCollectionRequest = Shapes::StructureShape.new(name: 'GetResourceCollectionRequest')
    GetResourceCollectionResponse = Shapes::StructureShape.new(name: 'GetResourceCollectionResponse')
    InsightFeedback = Shapes::StructureShape.new(name: 'InsightFeedback')
    InsightFeedbackOption = Shapes::StringShape.new(name: 'InsightFeedbackOption')
    InsightHealth = Shapes::StructureShape.new(name: 'InsightHealth')
    InsightSeverity = Shapes::StringShape.new(name: 'InsightSeverity')
    InsightStatus = Shapes::StringShape.new(name: 'InsightStatus')
    InsightTimeRange = Shapes::StructureShape.new(name: 'InsightTimeRange')
    InsightType = Shapes::StringShape.new(name: 'InsightType')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListAnomaliesForInsightRequest = Shapes::StructureShape.new(name: 'ListAnomaliesForInsightRequest')
    ListAnomaliesForInsightResponse = Shapes::StructureShape.new(name: 'ListAnomaliesForInsightResponse')
    ListEventsFilters = Shapes::StructureShape.new(name: 'ListEventsFilters')
    ListEventsRequest = Shapes::StructureShape.new(name: 'ListEventsRequest')
    ListEventsResponse = Shapes::StructureShape.new(name: 'ListEventsResponse')
    ListInsightsAnyStatusFilter = Shapes::StructureShape.new(name: 'ListInsightsAnyStatusFilter')
    ListInsightsClosedStatusFilter = Shapes::StructureShape.new(name: 'ListInsightsClosedStatusFilter')
    ListInsightsOngoingStatusFilter = Shapes::StructureShape.new(name: 'ListInsightsOngoingStatusFilter')
    ListInsightsRequest = Shapes::StructureShape.new(name: 'ListInsightsRequest')
    ListInsightsResponse = Shapes::StructureShape.new(name: 'ListInsightsResponse')
    ListInsightsStatusFilter = Shapes::StructureShape.new(name: 'ListInsightsStatusFilter')
    ListNotificationChannelsRequest = Shapes::StructureShape.new(name: 'ListNotificationChannelsRequest')
    ListNotificationChannelsResponse = Shapes::StructureShape.new(name: 'ListNotificationChannelsResponse')
    ListRecommendationsRequest = Shapes::StructureShape.new(name: 'ListRecommendationsRequest')
    ListRecommendationsResponse = Shapes::StructureShape.new(name: 'ListRecommendationsResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NotificationChannel = Shapes::StructureShape.new(name: 'NotificationChannel')
    NotificationChannelConfig = Shapes::StructureShape.new(name: 'NotificationChannelConfig')
    OpsCenterIntegration = Shapes::StructureShape.new(name: 'OpsCenterIntegration')
    OpsCenterIntegrationConfig = Shapes::StructureShape.new(name: 'OpsCenterIntegrationConfig')
    OptInStatus = Shapes::StringShape.new(name: 'OptInStatus')
    PredictionTimeRange = Shapes::StructureShape.new(name: 'PredictionTimeRange')
    ProactiveAnomaly = Shapes::StructureShape.new(name: 'ProactiveAnomaly')
    ProactiveAnomalySummary = Shapes::StructureShape.new(name: 'ProactiveAnomalySummary')
    ProactiveInsight = Shapes::StructureShape.new(name: 'ProactiveInsight')
    ProactiveInsightSummary = Shapes::StructureShape.new(name: 'ProactiveInsightSummary')
    PutFeedbackRequest = Shapes::StructureShape.new(name: 'PutFeedbackRequest')
    PutFeedbackResponse = Shapes::StructureShape.new(name: 'PutFeedbackResponse')
    ReactiveAnomaly = Shapes::StructureShape.new(name: 'ReactiveAnomaly')
    ReactiveAnomalySummary = Shapes::StructureShape.new(name: 'ReactiveAnomalySummary')
    ReactiveInsight = Shapes::StructureShape.new(name: 'ReactiveInsight')
    ReactiveInsightSummary = Shapes::StructureShape.new(name: 'ReactiveInsightSummary')
    Recommendation = Shapes::StructureShape.new(name: 'Recommendation')
    RecommendationRelatedAnomaly = Shapes::StructureShape.new(name: 'RecommendationRelatedAnomaly')
    RecommendationRelatedAnomalyResource = Shapes::StructureShape.new(name: 'RecommendationRelatedAnomalyResource')
    RecommendationRelatedAnomalySourceDetail = Shapes::StructureShape.new(name: 'RecommendationRelatedAnomalySourceDetail')
    RecommendationRelatedCloudWatchMetricsSourceDetail = Shapes::StructureShape.new(name: 'RecommendationRelatedCloudWatchMetricsSourceDetail')
    RecommendationRelatedEvent = Shapes::StructureShape.new(name: 'RecommendationRelatedEvent')
    RecommendationRelatedEventResource = Shapes::StructureShape.new(name: 'RecommendationRelatedEventResource')
    RemoveNotificationChannelRequest = Shapes::StructureShape.new(name: 'RemoveNotificationChannelRequest')
    RemoveNotificationChannelResponse = Shapes::StructureShape.new(name: 'RemoveNotificationChannelResponse')
    ResourceCollection = Shapes::StructureShape.new(name: 'ResourceCollection')
    ResourceCollectionFilter = Shapes::StructureShape.new(name: 'ResourceCollectionFilter')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SearchInsightsFilters = Shapes::StructureShape.new(name: 'SearchInsightsFilters')
    SearchInsightsRequest = Shapes::StructureShape.new(name: 'SearchInsightsRequest')
    SearchInsightsResponse = Shapes::StructureShape.new(name: 'SearchInsightsResponse')
    ServiceIntegrationConfig = Shapes::StructureShape.new(name: 'ServiceIntegrationConfig')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SnsChannelConfig = Shapes::StructureShape.new(name: 'SnsChannelConfig')
    StartTimeRange = Shapes::StructureShape.new(name: 'StartTimeRange')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UpdateCloudFormationCollectionFilter = Shapes::StructureShape.new(name: 'UpdateCloudFormationCollectionFilter')
    UpdateResourceCollectionAction = Shapes::StringShape.new(name: 'UpdateResourceCollectionAction')
    UpdateResourceCollectionFilter = Shapes::StructureShape.new(name: 'UpdateResourceCollectionFilter')
    UpdateResourceCollectionRequest = Shapes::StructureShape.new(name: 'UpdateResourceCollectionRequest')
    UpdateResourceCollectionResponse = Shapes::StructureShape.new(name: 'UpdateResourceCollectionResponse')
    UpdateServiceIntegrationConfig = Shapes::StructureShape.new(name: 'UpdateServiceIntegrationConfig')
    UpdateServiceIntegrationRequest = Shapes::StructureShape.new(name: 'UpdateServiceIntegrationRequest')
    UpdateServiceIntegrationResponse = Shapes::StructureShape.new(name: 'UpdateServiceIntegrationResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    __boolean = Shapes::BooleanShape.new(name: '__boolean')
    __double = Shapes::FloatShape.new(name: '__double')
    __integer = Shapes::IntegerShape.new(name: '__integer')
    __integerMin1Max100 = Shapes::IntegerShape.new(name: '__integerMin1Max100')
    __integerMin1Max200 = Shapes::IntegerShape.new(name: '__integerMin1Max200')
    __integerMin1Max500 = Shapes::IntegerShape.new(name: '__integerMin1Max500')
    __listOfCloudFormationHealth = Shapes::ListShape.new(name: '__listOfCloudFormationHealth')
    __listOfCloudWatchMetricsDetail = Shapes::ListShape.new(name: '__listOfCloudWatchMetricsDetail')
    __listOfCloudWatchMetricsDimension = Shapes::ListShape.new(name: '__listOfCloudWatchMetricsDimension')
    __listOfEvent = Shapes::ListShape.new(name: '__listOfEvent')
    __listOfEventResource = Shapes::ListShape.new(name: '__listOfEventResource')
    __listOfInsightSeverity = Shapes::ListShape.new(name: '__listOfInsightSeverity')
    __listOfInsightStatus = Shapes::ListShape.new(name: '__listOfInsightStatus')
    __listOfNotificationChannel = Shapes::ListShape.new(name: '__listOfNotificationChannel')
    __listOfProactiveAnomalySummary = Shapes::ListShape.new(name: '__listOfProactiveAnomalySummary')
    __listOfProactiveInsightSummary = Shapes::ListShape.new(name: '__listOfProactiveInsightSummary')
    __listOfReactiveAnomalySummary = Shapes::ListShape.new(name: '__listOfReactiveAnomalySummary')
    __listOfReactiveInsightSummary = Shapes::ListShape.new(name: '__listOfReactiveInsightSummary')
    __listOfRecommendation = Shapes::ListShape.new(name: '__listOfRecommendation')
    __listOfRecommendationRelatedAnomaly = Shapes::ListShape.new(name: '__listOfRecommendationRelatedAnomaly')
    __listOfRecommendationRelatedAnomalyResource = Shapes::ListShape.new(name: '__listOfRecommendationRelatedAnomalyResource')
    __listOfRecommendationRelatedAnomalySourceDetail = Shapes::ListShape.new(name: '__listOfRecommendationRelatedAnomalySourceDetail')
    __listOfRecommendationRelatedCloudWatchMetricsSourceDetail = Shapes::ListShape.new(name: '__listOfRecommendationRelatedCloudWatchMetricsSourceDetail')
    __listOfRecommendationRelatedEvent = Shapes::ListShape.new(name: '__listOfRecommendationRelatedEvent')
    __listOfRecommendationRelatedEventResource = Shapes::ListShape.new(name: '__listOfRecommendationRelatedEventResource')
    __listOfValidationExceptionField = Shapes::ListShape.new(name: '__listOfValidationExceptionField')
    __listOf__stringMin1Max128PatternAZAZAZAZ09 = Shapes::ListShape.new(name: '__listOf__stringMin1Max128PatternAZAZAZAZ09')
    __long = Shapes::IntegerShape.new(name: '__long')
    __string = Shapes::StringShape.new(name: '__string')
    __stringMin0Max2048Pattern = Shapes::StringShape.new(name: '__stringMin0Max2048Pattern')
    __stringMin0Max50 = Shapes::StringShape.new(name: '__stringMin0Max50')
    __stringMin10Max50PatternAZAZ09AmazonawsComAwsEvents = Shapes::StringShape.new(name: '__stringMin10Max50PatternAZAZ09AmazonawsComAwsEvents')
    __stringMin1Max100Pattern = Shapes::StringShape.new(name: '__stringMin1Max100Pattern')
    __stringMin1Max100PatternW = Shapes::StringShape.new(name: '__stringMin1Max100PatternW')
    __stringMin1Max128PatternAZAZAZAZ09 = Shapes::StringShape.new(name: '__stringMin1Max128PatternAZAZAZAZ09')
    __stringMin1Max530PatternSS = Shapes::StringShape.new(name: '__stringMin1Max530PatternSS')
    __stringMin36Max1024PatternArnAwsAZ09SnsAZ09D12 = Shapes::StringShape.new(name: '__stringMin36Max1024PatternArnAwsAZ09SnsAZ09D12')
    __stringMin36Max2048PatternArnAwsAZAZ09AZ09D12 = Shapes::StringShape.new(name: '__stringMin36Max2048PatternArnAwsAZAZ09AZ09D12')
    __stringMin36Max36PatternAF098AF094AF094AF094AF0912 = Shapes::StringShape.new(name: '__stringMin36Max36PatternAF098AF094AF094AF094AF0912')
    __timestampIso8601 = Shapes::TimestampShape.new(name: '__timestampIso8601', timestampFormat: "iso8601")
    __timestampUnix = Shapes::TimestampShape.new(name: '__timestampUnix', timestampFormat: "unixTimestamp")

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AddNotificationChannelRequest.add_member(:config, Shapes::ShapeRef.new(shape: NotificationChannelConfig, required: true, location_name: "Config"))
    AddNotificationChannelRequest.struct_class = Types::AddNotificationChannelRequest

    AddNotificationChannelResponse.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin36Max36PatternAF098AF094AF094AF094AF0912, location_name: "Id"))
    AddNotificationChannelResponse.struct_class = Types::AddNotificationChannelResponse

    AnomalySourceDetails.add_member(:cloud_watch_metrics, Shapes::ShapeRef.new(shape: __listOfCloudWatchMetricsDetail, location_name: "CloudWatchMetrics"))
    AnomalySourceDetails.struct_class = Types::AnomalySourceDetails

    AnomalyTimeRange.add_member(:end_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "EndTime"))
    AnomalyTimeRange.add_member(:start_time, Shapes::ShapeRef.new(shape: __timestampUnix, required: true, location_name: "StartTime"))
    AnomalyTimeRange.struct_class = Types::AnomalyTimeRange

    CloudFormationCollection.add_member(:stack_names, Shapes::ShapeRef.new(shape: __listOf__stringMin1Max128PatternAZAZAZAZ09, location_name: "StackNames"))
    CloudFormationCollection.struct_class = Types::CloudFormationCollection

    CloudFormationCollectionFilter.add_member(:stack_names, Shapes::ShapeRef.new(shape: __listOf__stringMin1Max128PatternAZAZAZAZ09, location_name: "StackNames"))
    CloudFormationCollectionFilter.struct_class = Types::CloudFormationCollectionFilter

    CloudFormationHealth.add_member(:insight, Shapes::ShapeRef.new(shape: InsightHealth, location_name: "Insight"))
    CloudFormationHealth.add_member(:stack_name, Shapes::ShapeRef.new(shape: __stringMin1Max128PatternAZAZAZAZ09, location_name: "StackName"))
    CloudFormationHealth.struct_class = Types::CloudFormationHealth

    CloudWatchMetricsDetail.add_member(:dimensions, Shapes::ShapeRef.new(shape: __listOfCloudWatchMetricsDimension, location_name: "Dimensions"))
    CloudWatchMetricsDetail.add_member(:metric_name, Shapes::ShapeRef.new(shape: __string, location_name: "MetricName"))
    CloudWatchMetricsDetail.add_member(:namespace, Shapes::ShapeRef.new(shape: __string, location_name: "Namespace"))
    CloudWatchMetricsDetail.add_member(:period, Shapes::ShapeRef.new(shape: __integer, location_name: "Period"))
    CloudWatchMetricsDetail.add_member(:stat, Shapes::ShapeRef.new(shape: CloudWatchMetricsStat, location_name: "Stat"))
    CloudWatchMetricsDetail.add_member(:unit, Shapes::ShapeRef.new(shape: __string, location_name: "Unit"))
    CloudWatchMetricsDetail.struct_class = Types::CloudWatchMetricsDetail

    CloudWatchMetricsDimension.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    CloudWatchMetricsDimension.add_member(:value, Shapes::ShapeRef.new(shape: __string, location_name: "Value"))
    CloudWatchMetricsDimension.struct_class = Types::CloudWatchMetricsDimension

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ResourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ResourceType"))
    ConflictException.struct_class = Types::ConflictException

    DescribeAccountHealthRequest.struct_class = Types::DescribeAccountHealthRequest

    DescribeAccountHealthResponse.add_member(:metrics_analyzed, Shapes::ShapeRef.new(shape: __integer, location_name: "MetricsAnalyzed"))
    DescribeAccountHealthResponse.add_member(:open_proactive_insights, Shapes::ShapeRef.new(shape: __integer, location_name: "OpenProactiveInsights"))
    DescribeAccountHealthResponse.add_member(:open_reactive_insights, Shapes::ShapeRef.new(shape: __integer, location_name: "OpenReactiveInsights"))
    DescribeAccountHealthResponse.struct_class = Types::DescribeAccountHealthResponse

    DescribeAccountOverviewRequest.add_member(:from_time, Shapes::ShapeRef.new(shape: __timestampUnix, required: true, location_name: "FromTime"))
    DescribeAccountOverviewRequest.add_member(:to_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "ToTime"))
    DescribeAccountOverviewRequest.struct_class = Types::DescribeAccountOverviewRequest

    DescribeAccountOverviewResponse.add_member(:mean_time_to_recover_in_milliseconds, Shapes::ShapeRef.new(shape: __long, location_name: "MeanTimeToRecoverInMilliseconds"))
    DescribeAccountOverviewResponse.add_member(:proactive_insights, Shapes::ShapeRef.new(shape: __integer, location_name: "ProactiveInsights"))
    DescribeAccountOverviewResponse.add_member(:reactive_insights, Shapes::ShapeRef.new(shape: __integer, location_name: "ReactiveInsights"))
    DescribeAccountOverviewResponse.struct_class = Types::DescribeAccountOverviewResponse

    DescribeAnomalyRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "Id"))
    DescribeAnomalyRequest.struct_class = Types::DescribeAnomalyRequest

    DescribeAnomalyResponse.add_member(:proactive_anomaly, Shapes::ShapeRef.new(shape: ProactiveAnomaly, location_name: "ProactiveAnomaly"))
    DescribeAnomalyResponse.add_member(:reactive_anomaly, Shapes::ShapeRef.new(shape: ReactiveAnomaly, location_name: "ReactiveAnomaly"))
    DescribeAnomalyResponse.struct_class = Types::DescribeAnomalyResponse

    DescribeInsightRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "Id"))
    DescribeInsightRequest.struct_class = Types::DescribeInsightRequest

    DescribeInsightResponse.add_member(:proactive_insight, Shapes::ShapeRef.new(shape: ProactiveInsight, location_name: "ProactiveInsight"))
    DescribeInsightResponse.add_member(:reactive_insight, Shapes::ShapeRef.new(shape: ReactiveInsight, location_name: "ReactiveInsight"))
    DescribeInsightResponse.struct_class = Types::DescribeInsightResponse

    DescribeResourceCollectionHealthRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "NextToken"))
    DescribeResourceCollectionHealthRequest.add_member(:resource_collection_type, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ResourceCollectionType"))
    DescribeResourceCollectionHealthRequest.struct_class = Types::DescribeResourceCollectionHealthRequest

    DescribeResourceCollectionHealthResponse.add_member(:cloud_formation, Shapes::ShapeRef.new(shape: __listOfCloudFormationHealth, location_name: "CloudFormation"))
    DescribeResourceCollectionHealthResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin36Max36PatternAF098AF094AF094AF094AF0912, location_name: "NextToken"))
    DescribeResourceCollectionHealthResponse.struct_class = Types::DescribeResourceCollectionHealthResponse

    DescribeServiceIntegrationRequest.struct_class = Types::DescribeServiceIntegrationRequest

    DescribeServiceIntegrationResponse.add_member(:service_integration, Shapes::ShapeRef.new(shape: ServiceIntegrationConfig, location_name: "ServiceIntegration"))
    DescribeServiceIntegrationResponse.struct_class = Types::DescribeServiceIntegrationResponse

    EndTimeRange.add_member(:from_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "FromTime"))
    EndTimeRange.add_member(:to_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "ToTime"))
    EndTimeRange.struct_class = Types::EndTimeRange

    Event.add_member(:data_source, Shapes::ShapeRef.new(shape: EventDataSource, location_name: "DataSource"))
    Event.add_member(:event_class, Shapes::ShapeRef.new(shape: EventClass, location_name: "EventClass"))
    Event.add_member(:event_source, Shapes::ShapeRef.new(shape: __stringMin10Max50PatternAZAZ09AmazonawsComAwsEvents, location_name: "EventSource"))
    Event.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    Event.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin0Max50, location_name: "Name"))
    Event.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    Event.add_member(:resources, Shapes::ShapeRef.new(shape: __listOfEventResource, location_name: "Resources"))
    Event.add_member(:time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "Time"))
    Event.struct_class = Types::Event

    EventResource.add_member(:arn, Shapes::ShapeRef.new(shape: __stringMin36Max2048PatternArnAwsAZAZ09AZ09D12, location_name: "Arn"))
    EventResource.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin0Max2048Pattern, location_name: "Name"))
    EventResource.add_member(:type, Shapes::ShapeRef.new(shape: __stringMin0Max2048Pattern, location_name: "Type"))
    EventResource.struct_class = Types::EventResource

    EventTimeRange.add_member(:from_time, Shapes::ShapeRef.new(shape: __timestampUnix, required: true, location_name: "FromTime"))
    EventTimeRange.add_member(:to_time, Shapes::ShapeRef.new(shape: __timestampUnix, required: true, location_name: "ToTime"))
    EventTimeRange.struct_class = Types::EventTimeRange

    GetResourceCollectionRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "NextToken"))
    GetResourceCollectionRequest.add_member(:resource_collection_type, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ResourceCollectionType"))
    GetResourceCollectionRequest.struct_class = Types::GetResourceCollectionRequest

    GetResourceCollectionResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin36Max36PatternAF098AF094AF094AF094AF0912, location_name: "NextToken"))
    GetResourceCollectionResponse.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollectionFilter, location_name: "ResourceCollection"))
    GetResourceCollectionResponse.struct_class = Types::GetResourceCollectionResponse

    InsightFeedback.add_member(:feedback, Shapes::ShapeRef.new(shape: InsightFeedbackOption, location_name: "Feedback"))
    InsightFeedback.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin1Max100PatternW, location_name: "Id"))
    InsightFeedback.struct_class = Types::InsightFeedback

    InsightHealth.add_member(:mean_time_to_recover_in_milliseconds, Shapes::ShapeRef.new(shape: __long, location_name: "MeanTimeToRecoverInMilliseconds"))
    InsightHealth.add_member(:open_proactive_insights, Shapes::ShapeRef.new(shape: __integer, location_name: "OpenProactiveInsights"))
    InsightHealth.add_member(:open_reactive_insights, Shapes::ShapeRef.new(shape: __integer, location_name: "OpenReactiveInsights"))
    InsightHealth.struct_class = Types::InsightHealth

    InsightTimeRange.add_member(:end_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "EndTime"))
    InsightTimeRange.add_member(:start_time, Shapes::ShapeRef.new(shape: __timestampUnix, required: true, location_name: "StartTime"))
    InsightTimeRange.struct_class = Types::InsightTimeRange

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListAnomaliesForInsightRequest.add_member(:insight_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "InsightId"))
    ListAnomaliesForInsightRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __integerMin1Max500, location_name: "MaxResults"))
    ListAnomaliesForInsightRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin36Max36PatternAF098AF094AF094AF094AF0912, location_name: "NextToken"))
    ListAnomaliesForInsightRequest.add_member(:start_time_range, Shapes::ShapeRef.new(shape: StartTimeRange, location_name: "StartTimeRange"))
    ListAnomaliesForInsightRequest.struct_class = Types::ListAnomaliesForInsightRequest

    ListAnomaliesForInsightResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin36Max36PatternAF098AF094AF094AF094AF0912, location_name: "NextToken"))
    ListAnomaliesForInsightResponse.add_member(:proactive_anomalies, Shapes::ShapeRef.new(shape: __listOfProactiveAnomalySummary, location_name: "ProactiveAnomalies"))
    ListAnomaliesForInsightResponse.add_member(:reactive_anomalies, Shapes::ShapeRef.new(shape: __listOfReactiveAnomalySummary, location_name: "ReactiveAnomalies"))
    ListAnomaliesForInsightResponse.struct_class = Types::ListAnomaliesForInsightResponse

    ListEventsFilters.add_member(:data_source, Shapes::ShapeRef.new(shape: EventDataSource, location_name: "DataSource"))
    ListEventsFilters.add_member(:event_class, Shapes::ShapeRef.new(shape: EventClass, location_name: "EventClass"))
    ListEventsFilters.add_member(:event_source, Shapes::ShapeRef.new(shape: __stringMin10Max50PatternAZAZ09AmazonawsComAwsEvents, location_name: "EventSource"))
    ListEventsFilters.add_member(:event_time_range, Shapes::ShapeRef.new(shape: EventTimeRange, location_name: "EventTimeRange"))
    ListEventsFilters.add_member(:insight_id, Shapes::ShapeRef.new(shape: __stringMin1Max100PatternW, location_name: "InsightId"))
    ListEventsFilters.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    ListEventsFilters.struct_class = Types::ListEventsFilters

    ListEventsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListEventsFilters, required: true, location_name: "Filters"))
    ListEventsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __integerMin1Max200, location_name: "MaxResults"))
    ListEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin36Max36PatternAF098AF094AF094AF094AF0912, location_name: "NextToken"))
    ListEventsRequest.struct_class = Types::ListEventsRequest

    ListEventsResponse.add_member(:events, Shapes::ShapeRef.new(shape: __listOfEvent, location_name: "Events"))
    ListEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin36Max36PatternAF098AF094AF094AF094AF0912, location_name: "NextToken"))
    ListEventsResponse.struct_class = Types::ListEventsResponse

    ListInsightsAnyStatusFilter.add_member(:start_time_range, Shapes::ShapeRef.new(shape: StartTimeRange, required: true, location_name: "StartTimeRange"))
    ListInsightsAnyStatusFilter.add_member(:type, Shapes::ShapeRef.new(shape: InsightType, required: true, location_name: "Type"))
    ListInsightsAnyStatusFilter.struct_class = Types::ListInsightsAnyStatusFilter

    ListInsightsClosedStatusFilter.add_member(:end_time_range, Shapes::ShapeRef.new(shape: EndTimeRange, required: true, location_name: "EndTimeRange"))
    ListInsightsClosedStatusFilter.add_member(:type, Shapes::ShapeRef.new(shape: InsightType, required: true, location_name: "Type"))
    ListInsightsClosedStatusFilter.struct_class = Types::ListInsightsClosedStatusFilter

    ListInsightsOngoingStatusFilter.add_member(:type, Shapes::ShapeRef.new(shape: InsightType, required: true, location_name: "Type"))
    ListInsightsOngoingStatusFilter.struct_class = Types::ListInsightsOngoingStatusFilter

    ListInsightsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __integerMin1Max100, location_name: "MaxResults"))
    ListInsightsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin36Max36PatternAF098AF094AF094AF094AF0912, location_name: "NextToken"))
    ListInsightsRequest.add_member(:status_filter, Shapes::ShapeRef.new(shape: ListInsightsStatusFilter, required: true, location_name: "StatusFilter"))
    ListInsightsRequest.struct_class = Types::ListInsightsRequest

    ListInsightsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin36Max36PatternAF098AF094AF094AF094AF0912, location_name: "NextToken"))
    ListInsightsResponse.add_member(:proactive_insights, Shapes::ShapeRef.new(shape: __listOfProactiveInsightSummary, location_name: "ProactiveInsights"))
    ListInsightsResponse.add_member(:reactive_insights, Shapes::ShapeRef.new(shape: __listOfReactiveInsightSummary, location_name: "ReactiveInsights"))
    ListInsightsResponse.struct_class = Types::ListInsightsResponse

    ListInsightsStatusFilter.add_member(:any, Shapes::ShapeRef.new(shape: ListInsightsAnyStatusFilter, location_name: "Any"))
    ListInsightsStatusFilter.add_member(:closed, Shapes::ShapeRef.new(shape: ListInsightsClosedStatusFilter, location_name: "Closed"))
    ListInsightsStatusFilter.add_member(:ongoing, Shapes::ShapeRef.new(shape: ListInsightsOngoingStatusFilter, location_name: "Ongoing"))
    ListInsightsStatusFilter.struct_class = Types::ListInsightsStatusFilter

    ListNotificationChannelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin36Max36PatternAF098AF094AF094AF094AF0912, location_name: "NextToken"))
    ListNotificationChannelsRequest.struct_class = Types::ListNotificationChannelsRequest

    ListNotificationChannelsResponse.add_member(:channels, Shapes::ShapeRef.new(shape: __listOfNotificationChannel, location_name: "Channels"))
    ListNotificationChannelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin36Max36PatternAF098AF094AF094AF094AF0912, location_name: "NextToken"))
    ListNotificationChannelsResponse.struct_class = Types::ListNotificationChannelsResponse

    ListRecommendationsRequest.add_member(:insight_id, Shapes::ShapeRef.new(shape: __stringMin1Max100PatternW, required: true, location_name: "InsightId"))
    ListRecommendationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin36Max36PatternAF098AF094AF094AF094AF0912, location_name: "NextToken"))
    ListRecommendationsRequest.struct_class = Types::ListRecommendationsRequest

    ListRecommendationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin36Max36PatternAF098AF094AF094AF094AF0912, location_name: "NextToken"))
    ListRecommendationsResponse.add_member(:recommendations, Shapes::ShapeRef.new(shape: __listOfRecommendation, location_name: "Recommendations"))
    ListRecommendationsResponse.struct_class = Types::ListRecommendationsResponse

    NotificationChannel.add_member(:config, Shapes::ShapeRef.new(shape: NotificationChannelConfig, location_name: "Config"))
    NotificationChannel.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin36Max36PatternAF098AF094AF094AF094AF0912, location_name: "Id"))
    NotificationChannel.struct_class = Types::NotificationChannel

    NotificationChannelConfig.add_member(:sns, Shapes::ShapeRef.new(shape: SnsChannelConfig, required: true, location_name: "Sns"))
    NotificationChannelConfig.struct_class = Types::NotificationChannelConfig

    OpsCenterIntegration.add_member(:opt_in_status, Shapes::ShapeRef.new(shape: OptInStatus, location_name: "OptInStatus"))
    OpsCenterIntegration.struct_class = Types::OpsCenterIntegration

    OpsCenterIntegrationConfig.add_member(:opt_in_status, Shapes::ShapeRef.new(shape: OptInStatus, location_name: "OptInStatus"))
    OpsCenterIntegrationConfig.struct_class = Types::OpsCenterIntegrationConfig

    PredictionTimeRange.add_member(:end_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "EndTime"))
    PredictionTimeRange.add_member(:start_time, Shapes::ShapeRef.new(shape: __timestampUnix, required: true, location_name: "StartTime"))
    PredictionTimeRange.struct_class = Types::PredictionTimeRange

    ProactiveAnomaly.add_member(:anomaly_time_range, Shapes::ShapeRef.new(shape: AnomalyTimeRange, location_name: "AnomalyTimeRange"))
    ProactiveAnomaly.add_member(:associated_insight_id, Shapes::ShapeRef.new(shape: __stringMin1Max100PatternW, location_name: "AssociatedInsightId"))
    ProactiveAnomaly.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin1Max100PatternW, location_name: "Id"))
    ProactiveAnomaly.add_member(:limit, Shapes::ShapeRef.new(shape: __double, location_name: "Limit"))
    ProactiveAnomaly.add_member(:prediction_time_range, Shapes::ShapeRef.new(shape: PredictionTimeRange, location_name: "PredictionTimeRange"))
    ProactiveAnomaly.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    ProactiveAnomaly.add_member(:severity, Shapes::ShapeRef.new(shape: AnomalySeverity, location_name: "Severity"))
    ProactiveAnomaly.add_member(:source_details, Shapes::ShapeRef.new(shape: AnomalySourceDetails, location_name: "SourceDetails"))
    ProactiveAnomaly.add_member(:status, Shapes::ShapeRef.new(shape: AnomalyStatus, location_name: "Status"))
    ProactiveAnomaly.add_member(:update_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "UpdateTime"))
    ProactiveAnomaly.struct_class = Types::ProactiveAnomaly

    ProactiveAnomalySummary.add_member(:anomaly_time_range, Shapes::ShapeRef.new(shape: AnomalyTimeRange, location_name: "AnomalyTimeRange"))
    ProactiveAnomalySummary.add_member(:associated_insight_id, Shapes::ShapeRef.new(shape: __stringMin1Max100PatternW, location_name: "AssociatedInsightId"))
    ProactiveAnomalySummary.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin1Max100PatternW, location_name: "Id"))
    ProactiveAnomalySummary.add_member(:limit, Shapes::ShapeRef.new(shape: __double, location_name: "Limit"))
    ProactiveAnomalySummary.add_member(:prediction_time_range, Shapes::ShapeRef.new(shape: PredictionTimeRange, location_name: "PredictionTimeRange"))
    ProactiveAnomalySummary.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    ProactiveAnomalySummary.add_member(:severity, Shapes::ShapeRef.new(shape: AnomalySeverity, location_name: "Severity"))
    ProactiveAnomalySummary.add_member(:source_details, Shapes::ShapeRef.new(shape: AnomalySourceDetails, location_name: "SourceDetails"))
    ProactiveAnomalySummary.add_member(:status, Shapes::ShapeRef.new(shape: AnomalyStatus, location_name: "Status"))
    ProactiveAnomalySummary.add_member(:update_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "UpdateTime"))
    ProactiveAnomalySummary.struct_class = Types::ProactiveAnomalySummary

    ProactiveInsight.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin1Max100PatternW, location_name: "Id"))
    ProactiveInsight.add_member(:insight_time_range, Shapes::ShapeRef.new(shape: InsightTimeRange, location_name: "InsightTimeRange"))
    ProactiveInsight.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max530PatternSS, location_name: "Name"))
    ProactiveInsight.add_member(:prediction_time_range, Shapes::ShapeRef.new(shape: PredictionTimeRange, location_name: "PredictionTimeRange"))
    ProactiveInsight.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    ProactiveInsight.add_member(:severity, Shapes::ShapeRef.new(shape: InsightSeverity, location_name: "Severity"))
    ProactiveInsight.add_member(:ssm_ops_item_id, Shapes::ShapeRef.new(shape: __stringMin1Max100Pattern, location_name: "SsmOpsItemId"))
    ProactiveInsight.add_member(:status, Shapes::ShapeRef.new(shape: InsightStatus, location_name: "Status"))
    ProactiveInsight.struct_class = Types::ProactiveInsight

    ProactiveInsightSummary.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin1Max100PatternW, location_name: "Id"))
    ProactiveInsightSummary.add_member(:insight_time_range, Shapes::ShapeRef.new(shape: InsightTimeRange, location_name: "InsightTimeRange"))
    ProactiveInsightSummary.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max530PatternSS, location_name: "Name"))
    ProactiveInsightSummary.add_member(:prediction_time_range, Shapes::ShapeRef.new(shape: PredictionTimeRange, location_name: "PredictionTimeRange"))
    ProactiveInsightSummary.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    ProactiveInsightSummary.add_member(:severity, Shapes::ShapeRef.new(shape: InsightSeverity, location_name: "Severity"))
    ProactiveInsightSummary.add_member(:status, Shapes::ShapeRef.new(shape: InsightStatus, location_name: "Status"))
    ProactiveInsightSummary.struct_class = Types::ProactiveInsightSummary

    PutFeedbackRequest.add_member(:insight_feedback, Shapes::ShapeRef.new(shape: InsightFeedback, location_name: "InsightFeedback"))
    PutFeedbackRequest.struct_class = Types::PutFeedbackRequest

    PutFeedbackResponse.struct_class = Types::PutFeedbackResponse

    ReactiveAnomaly.add_member(:anomaly_time_range, Shapes::ShapeRef.new(shape: AnomalyTimeRange, location_name: "AnomalyTimeRange"))
    ReactiveAnomaly.add_member(:associated_insight_id, Shapes::ShapeRef.new(shape: __stringMin1Max100PatternW, location_name: "AssociatedInsightId"))
    ReactiveAnomaly.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin1Max100PatternW, location_name: "Id"))
    ReactiveAnomaly.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    ReactiveAnomaly.add_member(:severity, Shapes::ShapeRef.new(shape: AnomalySeverity, location_name: "Severity"))
    ReactiveAnomaly.add_member(:source_details, Shapes::ShapeRef.new(shape: AnomalySourceDetails, location_name: "SourceDetails"))
    ReactiveAnomaly.add_member(:status, Shapes::ShapeRef.new(shape: AnomalyStatus, location_name: "Status"))
    ReactiveAnomaly.struct_class = Types::ReactiveAnomaly

    ReactiveAnomalySummary.add_member(:anomaly_time_range, Shapes::ShapeRef.new(shape: AnomalyTimeRange, location_name: "AnomalyTimeRange"))
    ReactiveAnomalySummary.add_member(:associated_insight_id, Shapes::ShapeRef.new(shape: __stringMin1Max100PatternW, location_name: "AssociatedInsightId"))
    ReactiveAnomalySummary.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin1Max100PatternW, location_name: "Id"))
    ReactiveAnomalySummary.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    ReactiveAnomalySummary.add_member(:severity, Shapes::ShapeRef.new(shape: AnomalySeverity, location_name: "Severity"))
    ReactiveAnomalySummary.add_member(:source_details, Shapes::ShapeRef.new(shape: AnomalySourceDetails, location_name: "SourceDetails"))
    ReactiveAnomalySummary.add_member(:status, Shapes::ShapeRef.new(shape: AnomalyStatus, location_name: "Status"))
    ReactiveAnomalySummary.struct_class = Types::ReactiveAnomalySummary

    ReactiveInsight.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin1Max100PatternW, location_name: "Id"))
    ReactiveInsight.add_member(:insight_time_range, Shapes::ShapeRef.new(shape: InsightTimeRange, location_name: "InsightTimeRange"))
    ReactiveInsight.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max530PatternSS, location_name: "Name"))
    ReactiveInsight.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    ReactiveInsight.add_member(:severity, Shapes::ShapeRef.new(shape: InsightSeverity, location_name: "Severity"))
    ReactiveInsight.add_member(:ssm_ops_item_id, Shapes::ShapeRef.new(shape: __stringMin1Max100Pattern, location_name: "SsmOpsItemId"))
    ReactiveInsight.add_member(:status, Shapes::ShapeRef.new(shape: InsightStatus, location_name: "Status"))
    ReactiveInsight.struct_class = Types::ReactiveInsight

    ReactiveInsightSummary.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin1Max100PatternW, location_name: "Id"))
    ReactiveInsightSummary.add_member(:insight_time_range, Shapes::ShapeRef.new(shape: InsightTimeRange, location_name: "InsightTimeRange"))
    ReactiveInsightSummary.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max530PatternSS, location_name: "Name"))
    ReactiveInsightSummary.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    ReactiveInsightSummary.add_member(:severity, Shapes::ShapeRef.new(shape: InsightSeverity, location_name: "Severity"))
    ReactiveInsightSummary.add_member(:status, Shapes::ShapeRef.new(shape: InsightStatus, location_name: "Status"))
    ReactiveInsightSummary.struct_class = Types::ReactiveInsightSummary

    Recommendation.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "Description"))
    Recommendation.add_member(:link, Shapes::ShapeRef.new(shape: __string, location_name: "Link"))
    Recommendation.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    Recommendation.add_member(:reason, Shapes::ShapeRef.new(shape: __string, location_name: "Reason"))
    Recommendation.add_member(:related_anomalies, Shapes::ShapeRef.new(shape: __listOfRecommendationRelatedAnomaly, location_name: "RelatedAnomalies"))
    Recommendation.add_member(:related_events, Shapes::ShapeRef.new(shape: __listOfRecommendationRelatedEvent, location_name: "RelatedEvents"))
    Recommendation.struct_class = Types::Recommendation

    RecommendationRelatedAnomaly.add_member(:resources, Shapes::ShapeRef.new(shape: __listOfRecommendationRelatedAnomalyResource, location_name: "Resources"))
    RecommendationRelatedAnomaly.add_member(:source_details, Shapes::ShapeRef.new(shape: __listOfRecommendationRelatedAnomalySourceDetail, location_name: "SourceDetails"))
    RecommendationRelatedAnomaly.struct_class = Types::RecommendationRelatedAnomaly

    RecommendationRelatedAnomalyResource.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    RecommendationRelatedAnomalyResource.add_member(:type, Shapes::ShapeRef.new(shape: __string, location_name: "Type"))
    RecommendationRelatedAnomalyResource.struct_class = Types::RecommendationRelatedAnomalyResource

    RecommendationRelatedAnomalySourceDetail.add_member(:cloud_watch_metrics, Shapes::ShapeRef.new(shape: __listOfRecommendationRelatedCloudWatchMetricsSourceDetail, location_name: "CloudWatchMetrics"))
    RecommendationRelatedAnomalySourceDetail.struct_class = Types::RecommendationRelatedAnomalySourceDetail

    RecommendationRelatedCloudWatchMetricsSourceDetail.add_member(:metric_name, Shapes::ShapeRef.new(shape: __string, location_name: "MetricName"))
    RecommendationRelatedCloudWatchMetricsSourceDetail.add_member(:namespace, Shapes::ShapeRef.new(shape: __string, location_name: "Namespace"))
    RecommendationRelatedCloudWatchMetricsSourceDetail.struct_class = Types::RecommendationRelatedCloudWatchMetricsSourceDetail

    RecommendationRelatedEvent.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    RecommendationRelatedEvent.add_member(:resources, Shapes::ShapeRef.new(shape: __listOfRecommendationRelatedEventResource, location_name: "Resources"))
    RecommendationRelatedEvent.struct_class = Types::RecommendationRelatedEvent

    RecommendationRelatedEventResource.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    RecommendationRelatedEventResource.add_member(:type, Shapes::ShapeRef.new(shape: __string, location_name: "Type"))
    RecommendationRelatedEventResource.struct_class = Types::RecommendationRelatedEventResource

    RemoveNotificationChannelRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "Id"))
    RemoveNotificationChannelRequest.struct_class = Types::RemoveNotificationChannelRequest

    RemoveNotificationChannelResponse.struct_class = Types::RemoveNotificationChannelResponse

    ResourceCollection.add_member(:cloud_formation, Shapes::ShapeRef.new(shape: CloudFormationCollection, location_name: "CloudFormation"))
    ResourceCollection.struct_class = Types::ResourceCollection

    ResourceCollectionFilter.add_member(:cloud_formation, Shapes::ShapeRef.new(shape: CloudFormationCollectionFilter, location_name: "CloudFormation"))
    ResourceCollectionFilter.struct_class = Types::ResourceCollectionFilter

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SearchInsightsFilters.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    SearchInsightsFilters.add_member(:severities, Shapes::ShapeRef.new(shape: __listOfInsightSeverity, location_name: "Severities"))
    SearchInsightsFilters.add_member(:statuses, Shapes::ShapeRef.new(shape: __listOfInsightStatus, location_name: "Statuses"))
    SearchInsightsFilters.struct_class = Types::SearchInsightsFilters

    SearchInsightsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: SearchInsightsFilters, location_name: "Filters"))
    SearchInsightsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __integerMin1Max100, location_name: "MaxResults"))
    SearchInsightsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin36Max36PatternAF098AF094AF094AF094AF0912, location_name: "NextToken"))
    SearchInsightsRequest.add_member(:start_time_range, Shapes::ShapeRef.new(shape: StartTimeRange, required: true, location_name: "StartTimeRange"))
    SearchInsightsRequest.add_member(:type, Shapes::ShapeRef.new(shape: InsightType, required: true, location_name: "Type"))
    SearchInsightsRequest.struct_class = Types::SearchInsightsRequest

    SearchInsightsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin36Max36PatternAF098AF094AF094AF094AF0912, location_name: "NextToken"))
    SearchInsightsResponse.add_member(:proactive_insights, Shapes::ShapeRef.new(shape: __listOfProactiveInsightSummary, location_name: "ProactiveInsights"))
    SearchInsightsResponse.add_member(:reactive_insights, Shapes::ShapeRef.new(shape: __listOfReactiveInsightSummary, location_name: "ReactiveInsights"))
    SearchInsightsResponse.struct_class = Types::SearchInsightsResponse

    ServiceIntegrationConfig.add_member(:ops_center, Shapes::ShapeRef.new(shape: OpsCenterIntegration, location_name: "OpsCenter"))
    ServiceIntegrationConfig.struct_class = Types::ServiceIntegrationConfig

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SnsChannelConfig.add_member(:topic_arn, Shapes::ShapeRef.new(shape: __stringMin36Max1024PatternArnAwsAZ09SnsAZ09D12, location_name: "TopicArn"))
    SnsChannelConfig.struct_class = Types::SnsChannelConfig

    StartTimeRange.add_member(:from_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "FromTime"))
    StartTimeRange.add_member(:to_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "ToTime"))
    StartTimeRange.struct_class = Types::StartTimeRange

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Message"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: __string, location_name: "QuotaCode"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: __string, location_name: "ServiceCode"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UpdateCloudFormationCollectionFilter.add_member(:stack_names, Shapes::ShapeRef.new(shape: __listOf__stringMin1Max128PatternAZAZAZAZ09, location_name: "StackNames"))
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

    ValidationException.add_member(:fields, Shapes::ShapeRef.new(shape: __listOfValidationExceptionField, location_name: "Fields"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "Reason"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Message"))
    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Name"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    __listOfCloudFormationHealth.member = Shapes::ShapeRef.new(shape: CloudFormationHealth)

    __listOfCloudWatchMetricsDetail.member = Shapes::ShapeRef.new(shape: CloudWatchMetricsDetail)

    __listOfCloudWatchMetricsDimension.member = Shapes::ShapeRef.new(shape: CloudWatchMetricsDimension)

    __listOfEvent.member = Shapes::ShapeRef.new(shape: Event)

    __listOfEventResource.member = Shapes::ShapeRef.new(shape: EventResource)

    __listOfInsightSeverity.member = Shapes::ShapeRef.new(shape: InsightSeverity)

    __listOfInsightStatus.member = Shapes::ShapeRef.new(shape: InsightStatus)

    __listOfNotificationChannel.member = Shapes::ShapeRef.new(shape: NotificationChannel)

    __listOfProactiveAnomalySummary.member = Shapes::ShapeRef.new(shape: ProactiveAnomalySummary)

    __listOfProactiveInsightSummary.member = Shapes::ShapeRef.new(shape: ProactiveInsightSummary)

    __listOfReactiveAnomalySummary.member = Shapes::ShapeRef.new(shape: ReactiveAnomalySummary)

    __listOfReactiveInsightSummary.member = Shapes::ShapeRef.new(shape: ReactiveInsightSummary)

    __listOfRecommendation.member = Shapes::ShapeRef.new(shape: Recommendation)

    __listOfRecommendationRelatedAnomaly.member = Shapes::ShapeRef.new(shape: RecommendationRelatedAnomaly)

    __listOfRecommendationRelatedAnomalyResource.member = Shapes::ShapeRef.new(shape: RecommendationRelatedAnomalyResource)

    __listOfRecommendationRelatedAnomalySourceDetail.member = Shapes::ShapeRef.new(shape: RecommendationRelatedAnomalySourceDetail)

    __listOfRecommendationRelatedCloudWatchMetricsSourceDetail.member = Shapes::ShapeRef.new(shape: RecommendationRelatedCloudWatchMetricsSourceDetail)

    __listOfRecommendationRelatedEvent.member = Shapes::ShapeRef.new(shape: RecommendationRelatedEvent)

    __listOfRecommendationRelatedEventResource.member = Shapes::ShapeRef.new(shape: RecommendationRelatedEventResource)

    __listOfValidationExceptionField.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    __listOf__stringMin1Max128PatternAZAZAZAZ09.member = Shapes::ShapeRef.new(shape: __stringMin1Max128PatternAZAZAZAZ09)


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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:describe_account_health, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountHealth"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/health"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccountHealthRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountHealthResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_account_overview, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountOverview"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/overview"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccountOverviewRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountOverviewResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_anomaly, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAnomaly"
        o.http_method = "GET"
        o.http_request_uri = "/anomalies/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DescribeAnomalyRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAnomalyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_insight, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInsight"
        o.http_method = "GET"
        o.http_request_uri = "/insights/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DescribeInsightRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInsightResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_resource_collection_health, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeResourceCollectionHealth"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/health/resource-collection/{ResourceCollectionType}"
        o.input = Shapes::ShapeRef.new(shape: DescribeResourceCollectionHealthRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeResourceCollectionHealthResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_resource_collection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourceCollection"
        o.http_method = "GET"
        o.http_request_uri = "/resource-collections/{ResourceCollectionType}"
        o.input = Shapes::ShapeRef.new(shape: GetResourceCollectionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourceCollectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:remove_notification_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveNotificationChannel"
        o.http_method = "DELETE"
        o.http_request_uri = "/channels/{Id}"
        o.input = Shapes::ShapeRef.new(shape: RemoveNotificationChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveNotificationChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:search_insights, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchInsights"
        o.http_method = "POST"
        o.http_request_uri = "/insights/search"
        o.input = Shapes::ShapeRef.new(shape: SearchInsightsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchInsightsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_service_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateServiceIntegration"
        o.http_method = "PUT"
        o.http_request_uri = "/service-integrations"
        o.input = Shapes::ShapeRef.new(shape: UpdateServiceIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateServiceIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
