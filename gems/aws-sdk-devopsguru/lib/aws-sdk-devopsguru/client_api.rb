# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DevOpsGuru
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountHealth = Shapes::StructureShape.new(name: 'AccountHealth')
    AccountHealths = Shapes::ListShape.new(name: 'AccountHealths')
    AccountIdList = Shapes::ListShape.new(name: 'AccountIdList')
    AccountInsightHealth = Shapes::StructureShape.new(name: 'AccountInsightHealth')
    AddNotificationChannelRequest = Shapes::StructureShape.new(name: 'AddNotificationChannelRequest')
    AddNotificationChannelResponse = Shapes::StructureShape.new(name: 'AddNotificationChannelResponse')
    AmazonCodeGuruProfilerIntegration = Shapes::StructureShape.new(name: 'AmazonCodeGuruProfilerIntegration')
    AnalyzedResourceCount = Shapes::IntegerShape.new(name: 'AnalyzedResourceCount')
    AnomalousLogGroup = Shapes::StructureShape.new(name: 'AnomalousLogGroup')
    AnomalousLogGroups = Shapes::ListShape.new(name: 'AnomalousLogGroups')
    AnomalyDescription = Shapes::StringShape.new(name: 'AnomalyDescription')
    AnomalyId = Shapes::StringShape.new(name: 'AnomalyId')
    AnomalyLimit = Shapes::FloatShape.new(name: 'AnomalyLimit')
    AnomalyName = Shapes::StringShape.new(name: 'AnomalyName')
    AnomalyReportedTimeRange = Shapes::StructureShape.new(name: 'AnomalyReportedTimeRange')
    AnomalyResource = Shapes::StructureShape.new(name: 'AnomalyResource')
    AnomalyResources = Shapes::ListShape.new(name: 'AnomalyResources')
    AnomalySeverity = Shapes::StringShape.new(name: 'AnomalySeverity')
    AnomalySource = Shapes::StringShape.new(name: 'AnomalySource')
    AnomalySourceDetails = Shapes::StructureShape.new(name: 'AnomalySourceDetails')
    AnomalySourceMetadata = Shapes::StructureShape.new(name: 'AnomalySourceMetadata')
    AnomalyStatus = Shapes::StringShape.new(name: 'AnomalyStatus')
    AnomalyTimeRange = Shapes::StructureShape.new(name: 'AnomalyTimeRange')
    AnomalyType = Shapes::StringShape.new(name: 'AnomalyType')
    AppBoundaryKey = Shapes::StringShape.new(name: 'AppBoundaryKey')
    AssociatedResourceArns = Shapes::ListShape.new(name: 'AssociatedResourceArns')
    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    Channels = Shapes::ListShape.new(name: 'Channels')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CloudFormationCollection = Shapes::StructureShape.new(name: 'CloudFormationCollection')
    CloudFormationCollectionFilter = Shapes::StructureShape.new(name: 'CloudFormationCollectionFilter')
    CloudFormationCostEstimationResourceCollectionFilter = Shapes::StructureShape.new(name: 'CloudFormationCostEstimationResourceCollectionFilter')
    CloudFormationHealth = Shapes::StructureShape.new(name: 'CloudFormationHealth')
    CloudFormationHealths = Shapes::ListShape.new(name: 'CloudFormationHealths')
    CloudWatchMetricDataStatusCode = Shapes::StringShape.new(name: 'CloudWatchMetricDataStatusCode')
    CloudWatchMetricsDataSummary = Shapes::StructureShape.new(name: 'CloudWatchMetricsDataSummary')
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
    Cost = Shapes::FloatShape.new(name: 'Cost')
    CostEstimationResourceCollectionFilter = Shapes::StructureShape.new(name: 'CostEstimationResourceCollectionFilter')
    CostEstimationServiceResourceCount = Shapes::IntegerShape.new(name: 'CostEstimationServiceResourceCount')
    CostEstimationServiceResourceState = Shapes::StringShape.new(name: 'CostEstimationServiceResourceState')
    CostEstimationStackNames = Shapes::ListShape.new(name: 'CostEstimationStackNames')
    CostEstimationStatus = Shapes::StringShape.new(name: 'CostEstimationStatus')
    CostEstimationTagValues = Shapes::ListShape.new(name: 'CostEstimationTagValues')
    CostEstimationTimeRange = Shapes::StructureShape.new(name: 'CostEstimationTimeRange')
    DeleteInsightRequest = Shapes::StructureShape.new(name: 'DeleteInsightRequest')
    DeleteInsightResponse = Shapes::StructureShape.new(name: 'DeleteInsightResponse')
    DescribeAccountHealthRequest = Shapes::StructureShape.new(name: 'DescribeAccountHealthRequest')
    DescribeAccountHealthResponse = Shapes::StructureShape.new(name: 'DescribeAccountHealthResponse')
    DescribeAccountOverviewRequest = Shapes::StructureShape.new(name: 'DescribeAccountOverviewRequest')
    DescribeAccountOverviewResponse = Shapes::StructureShape.new(name: 'DescribeAccountOverviewResponse')
    DescribeAnomalyRequest = Shapes::StructureShape.new(name: 'DescribeAnomalyRequest')
    DescribeAnomalyResponse = Shapes::StructureShape.new(name: 'DescribeAnomalyResponse')
    DescribeEventSourcesConfigRequest = Shapes::StructureShape.new(name: 'DescribeEventSourcesConfigRequest')
    DescribeEventSourcesConfigResponse = Shapes::StructureShape.new(name: 'DescribeEventSourcesConfigResponse')
    DescribeFeedbackRequest = Shapes::StructureShape.new(name: 'DescribeFeedbackRequest')
    DescribeFeedbackResponse = Shapes::StructureShape.new(name: 'DescribeFeedbackResponse')
    DescribeInsightRequest = Shapes::StructureShape.new(name: 'DescribeInsightRequest')
    DescribeInsightResponse = Shapes::StructureShape.new(name: 'DescribeInsightResponse')
    DescribeOrganizationHealthRequest = Shapes::StructureShape.new(name: 'DescribeOrganizationHealthRequest')
    DescribeOrganizationHealthResponse = Shapes::StructureShape.new(name: 'DescribeOrganizationHealthResponse')
    DescribeOrganizationOverviewRequest = Shapes::StructureShape.new(name: 'DescribeOrganizationOverviewRequest')
    DescribeOrganizationOverviewResponse = Shapes::StructureShape.new(name: 'DescribeOrganizationOverviewResponse')
    DescribeOrganizationResourceCollectionHealthRequest = Shapes::StructureShape.new(name: 'DescribeOrganizationResourceCollectionHealthRequest')
    DescribeOrganizationResourceCollectionHealthResponse = Shapes::StructureShape.new(name: 'DescribeOrganizationResourceCollectionHealthResponse')
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
    EventSourceOptInStatus = Shapes::StringShape.new(name: 'EventSourceOptInStatus')
    EventSourcesConfig = Shapes::StructureShape.new(name: 'EventSourcesConfig')
    EventTimeRange = Shapes::StructureShape.new(name: 'EventTimeRange')
    Events = Shapes::ListShape.new(name: 'Events')
    Explanation = Shapes::StringShape.new(name: 'Explanation')
    GetCostEstimationRequest = Shapes::StructureShape.new(name: 'GetCostEstimationRequest')
    GetCostEstimationResponse = Shapes::StructureShape.new(name: 'GetCostEstimationResponse')
    GetResourceCollectionRequest = Shapes::StructureShape.new(name: 'GetResourceCollectionRequest')
    GetResourceCollectionResponse = Shapes::StructureShape.new(name: 'GetResourceCollectionResponse')
    InsightDescription = Shapes::StringShape.new(name: 'InsightDescription')
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
    KMSKeyId = Shapes::StringShape.new(name: 'KMSKeyId')
    KMSServerSideEncryptionIntegration = Shapes::StructureShape.new(name: 'KMSServerSideEncryptionIntegration')
    KMSServerSideEncryptionIntegrationConfig = Shapes::StructureShape.new(name: 'KMSServerSideEncryptionIntegrationConfig')
    ListAnomaliesForInsightFilters = Shapes::StructureShape.new(name: 'ListAnomaliesForInsightFilters')
    ListAnomaliesForInsightMaxResults = Shapes::IntegerShape.new(name: 'ListAnomaliesForInsightMaxResults')
    ListAnomaliesForInsightRequest = Shapes::StructureShape.new(name: 'ListAnomaliesForInsightRequest')
    ListAnomaliesForInsightResponse = Shapes::StructureShape.new(name: 'ListAnomaliesForInsightResponse')
    ListAnomalousLogGroupsMaxResults = Shapes::IntegerShape.new(name: 'ListAnomalousLogGroupsMaxResults')
    ListAnomalousLogGroupsRequest = Shapes::StructureShape.new(name: 'ListAnomalousLogGroupsRequest')
    ListAnomalousLogGroupsResponse = Shapes::StructureShape.new(name: 'ListAnomalousLogGroupsResponse')
    ListEventsFilters = Shapes::StructureShape.new(name: 'ListEventsFilters')
    ListEventsMaxResults = Shapes::IntegerShape.new(name: 'ListEventsMaxResults')
    ListEventsRequest = Shapes::StructureShape.new(name: 'ListEventsRequest')
    ListEventsResponse = Shapes::StructureShape.new(name: 'ListEventsResponse')
    ListInsightsAccountIdList = Shapes::ListShape.new(name: 'ListInsightsAccountIdList')
    ListInsightsAnyStatusFilter = Shapes::StructureShape.new(name: 'ListInsightsAnyStatusFilter')
    ListInsightsClosedStatusFilter = Shapes::StructureShape.new(name: 'ListInsightsClosedStatusFilter')
    ListInsightsMaxResults = Shapes::IntegerShape.new(name: 'ListInsightsMaxResults')
    ListInsightsOngoingStatusFilter = Shapes::StructureShape.new(name: 'ListInsightsOngoingStatusFilter')
    ListInsightsOrganizationalUnitIdList = Shapes::ListShape.new(name: 'ListInsightsOrganizationalUnitIdList')
    ListInsightsRequest = Shapes::StructureShape.new(name: 'ListInsightsRequest')
    ListInsightsResponse = Shapes::StructureShape.new(name: 'ListInsightsResponse')
    ListInsightsStatusFilter = Shapes::StructureShape.new(name: 'ListInsightsStatusFilter')
    ListMonitoredResourcesFilters = Shapes::StructureShape.new(name: 'ListMonitoredResourcesFilters')
    ListMonitoredResourcesMaxResults = Shapes::IntegerShape.new(name: 'ListMonitoredResourcesMaxResults')
    ListMonitoredResourcesRequest = Shapes::StructureShape.new(name: 'ListMonitoredResourcesRequest')
    ListMonitoredResourcesResponse = Shapes::StructureShape.new(name: 'ListMonitoredResourcesResponse')
    ListNotificationChannelsRequest = Shapes::StructureShape.new(name: 'ListNotificationChannelsRequest')
    ListNotificationChannelsResponse = Shapes::StructureShape.new(name: 'ListNotificationChannelsResponse')
    ListOrganizationInsightsRequest = Shapes::StructureShape.new(name: 'ListOrganizationInsightsRequest')
    ListOrganizationInsightsResponse = Shapes::StructureShape.new(name: 'ListOrganizationInsightsResponse')
    ListRecommendationsRequest = Shapes::StructureShape.new(name: 'ListRecommendationsRequest')
    ListRecommendationsResponse = Shapes::StructureShape.new(name: 'ListRecommendationsResponse')
    Locale = Shapes::StringShape.new(name: 'Locale')
    LogAnomalyClass = Shapes::StructureShape.new(name: 'LogAnomalyClass')
    LogAnomalyClasses = Shapes::ListShape.new(name: 'LogAnomalyClasses')
    LogAnomalyShowcase = Shapes::StructureShape.new(name: 'LogAnomalyShowcase')
    LogAnomalyShowcases = Shapes::ListShape.new(name: 'LogAnomalyShowcases')
    LogAnomalyToken = Shapes::StringShape.new(name: 'LogAnomalyToken')
    LogAnomalyType = Shapes::StringShape.new(name: 'LogAnomalyType')
    LogEventId = Shapes::StringShape.new(name: 'LogEventId')
    LogGroupName = Shapes::StringShape.new(name: 'LogGroupName')
    LogStreamName = Shapes::StringShape.new(name: 'LogStreamName')
    LogsAnomalyDetectionIntegration = Shapes::StructureShape.new(name: 'LogsAnomalyDetectionIntegration')
    LogsAnomalyDetectionIntegrationConfig = Shapes::StructureShape.new(name: 'LogsAnomalyDetectionIntegrationConfig')
    MeanTimeToRecoverInMilliseconds = Shapes::IntegerShape.new(name: 'MeanTimeToRecoverInMilliseconds')
    MetricValue = Shapes::FloatShape.new(name: 'MetricValue')
    MonitoredResourceIdentifier = Shapes::StructureShape.new(name: 'MonitoredResourceIdentifier')
    MonitoredResourceIdentifiers = Shapes::ListShape.new(name: 'MonitoredResourceIdentifiers')
    MonitoredResourceName = Shapes::StringShape.new(name: 'MonitoredResourceName')
    NotificationChannel = Shapes::StructureShape.new(name: 'NotificationChannel')
    NotificationChannelConfig = Shapes::StructureShape.new(name: 'NotificationChannelConfig')
    NotificationChannelId = Shapes::StringShape.new(name: 'NotificationChannelId')
    NotificationFilterConfig = Shapes::StructureShape.new(name: 'NotificationFilterConfig')
    NotificationMessageType = Shapes::StringShape.new(name: 'NotificationMessageType')
    NotificationMessageTypes = Shapes::ListShape.new(name: 'NotificationMessageTypes')
    NumMetricsAnalyzed = Shapes::IntegerShape.new(name: 'NumMetricsAnalyzed')
    NumOpenProactiveInsights = Shapes::IntegerShape.new(name: 'NumOpenProactiveInsights')
    NumOpenReactiveInsights = Shapes::IntegerShape.new(name: 'NumOpenReactiveInsights')
    NumProactiveInsights = Shapes::IntegerShape.new(name: 'NumProactiveInsights')
    NumReactiveInsights = Shapes::IntegerShape.new(name: 'NumReactiveInsights')
    NumberOfLogLinesOccurrences = Shapes::IntegerShape.new(name: 'NumberOfLogLinesOccurrences')
    NumberOfLogLinesScanned = Shapes::IntegerShape.new(name: 'NumberOfLogLinesScanned')
    OpsCenterIntegration = Shapes::StructureShape.new(name: 'OpsCenterIntegration')
    OpsCenterIntegrationConfig = Shapes::StructureShape.new(name: 'OpsCenterIntegrationConfig')
    OptInStatus = Shapes::StringShape.new(name: 'OptInStatus')
    OrganizationResourceCollectionMaxResults = Shapes::IntegerShape.new(name: 'OrganizationResourceCollectionMaxResults')
    OrganizationResourceCollectionType = Shapes::StringShape.new(name: 'OrganizationResourceCollectionType')
    OrganizationalUnitId = Shapes::StringShape.new(name: 'OrganizationalUnitId')
    OrganizationalUnitIdList = Shapes::ListShape.new(name: 'OrganizationalUnitIdList')
    PerformanceInsightsMetricDimension = Shapes::StringShape.new(name: 'PerformanceInsightsMetricDimension')
    PerformanceInsightsMetricDimensionGroup = Shapes::StructureShape.new(name: 'PerformanceInsightsMetricDimensionGroup')
    PerformanceInsightsMetricDimensions = Shapes::ListShape.new(name: 'PerformanceInsightsMetricDimensions')
    PerformanceInsightsMetricDisplayName = Shapes::StringShape.new(name: 'PerformanceInsightsMetricDisplayName')
    PerformanceInsightsMetricFilterKey = Shapes::StringShape.new(name: 'PerformanceInsightsMetricFilterKey')
    PerformanceInsightsMetricFilterMap = Shapes::MapShape.new(name: 'PerformanceInsightsMetricFilterMap')
    PerformanceInsightsMetricFilterValue = Shapes::StringShape.new(name: 'PerformanceInsightsMetricFilterValue')
    PerformanceInsightsMetricGroup = Shapes::StringShape.new(name: 'PerformanceInsightsMetricGroup')
    PerformanceInsightsMetricLimitInteger = Shapes::IntegerShape.new(name: 'PerformanceInsightsMetricLimitInteger')
    PerformanceInsightsMetricName = Shapes::StringShape.new(name: 'PerformanceInsightsMetricName')
    PerformanceInsightsMetricQuery = Shapes::StructureShape.new(name: 'PerformanceInsightsMetricQuery')
    PerformanceInsightsMetricUnit = Shapes::StringShape.new(name: 'PerformanceInsightsMetricUnit')
    PerformanceInsightsMetricsDetail = Shapes::StructureShape.new(name: 'PerformanceInsightsMetricsDetail')
    PerformanceInsightsMetricsDetails = Shapes::ListShape.new(name: 'PerformanceInsightsMetricsDetails')
    PerformanceInsightsReferenceComparisonValues = Shapes::StructureShape.new(name: 'PerformanceInsightsReferenceComparisonValues')
    PerformanceInsightsReferenceData = Shapes::StructureShape.new(name: 'PerformanceInsightsReferenceData')
    PerformanceInsightsReferenceDataList = Shapes::ListShape.new(name: 'PerformanceInsightsReferenceDataList')
    PerformanceInsightsReferenceMetric = Shapes::StructureShape.new(name: 'PerformanceInsightsReferenceMetric')
    PerformanceInsightsReferenceName = Shapes::StringShape.new(name: 'PerformanceInsightsReferenceName')
    PerformanceInsightsReferenceScalar = Shapes::StructureShape.new(name: 'PerformanceInsightsReferenceScalar')
    PerformanceInsightsStat = Shapes::StructureShape.new(name: 'PerformanceInsightsStat')
    PerformanceInsightsStatType = Shapes::StringShape.new(name: 'PerformanceInsightsStatType')
    PerformanceInsightsStats = Shapes::ListShape.new(name: 'PerformanceInsightsStats')
    PerformanceInsightsValueDouble = Shapes::FloatShape.new(name: 'PerformanceInsightsValueDouble')
    PredictionTimeRange = Shapes::StructureShape.new(name: 'PredictionTimeRange')
    ProactiveAnomalies = Shapes::ListShape.new(name: 'ProactiveAnomalies')
    ProactiveAnomaly = Shapes::StructureShape.new(name: 'ProactiveAnomaly')
    ProactiveAnomalySummary = Shapes::StructureShape.new(name: 'ProactiveAnomalySummary')
    ProactiveInsight = Shapes::StructureShape.new(name: 'ProactiveInsight')
    ProactiveInsightSummary = Shapes::StructureShape.new(name: 'ProactiveInsightSummary')
    ProactiveInsights = Shapes::ListShape.new(name: 'ProactiveInsights')
    ProactiveOrganizationInsightSummary = Shapes::StructureShape.new(name: 'ProactiveOrganizationInsightSummary')
    ProactiveOrganizationInsights = Shapes::ListShape.new(name: 'ProactiveOrganizationInsights')
    PutFeedbackRequest = Shapes::StructureShape.new(name: 'PutFeedbackRequest')
    PutFeedbackResponse = Shapes::StructureShape.new(name: 'PutFeedbackResponse')
    ReactiveAnomalies = Shapes::ListShape.new(name: 'ReactiveAnomalies')
    ReactiveAnomaly = Shapes::StructureShape.new(name: 'ReactiveAnomaly')
    ReactiveAnomalySummary = Shapes::StructureShape.new(name: 'ReactiveAnomalySummary')
    ReactiveInsight = Shapes::StructureShape.new(name: 'ReactiveInsight')
    ReactiveInsightSummary = Shapes::StructureShape.new(name: 'ReactiveInsightSummary')
    ReactiveInsights = Shapes::ListShape.new(name: 'ReactiveInsights')
    ReactiveOrganizationInsightSummary = Shapes::StructureShape.new(name: 'ReactiveOrganizationInsightSummary')
    ReactiveOrganizationInsights = Shapes::ListShape.new(name: 'ReactiveOrganizationInsights')
    Recommendation = Shapes::StructureShape.new(name: 'Recommendation')
    RecommendationCategory = Shapes::StringShape.new(name: 'RecommendationCategory')
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
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceCollection = Shapes::StructureShape.new(name: 'ResourceCollection')
    ResourceCollectionFilter = Shapes::StructureShape.new(name: 'ResourceCollectionFilter')
    ResourceCollectionType = Shapes::StringShape.new(name: 'ResourceCollectionType')
    ResourceHours = Shapes::IntegerShape.new(name: 'ResourceHours')
    ResourceIdString = Shapes::StringShape.new(name: 'ResourceIdString')
    ResourceIdType = Shapes::StringShape.new(name: 'ResourceIdType')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourcePermission = Shapes::StringShape.new(name: 'ResourcePermission')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResourceTypeFilter = Shapes::StringShape.new(name: 'ResourceTypeFilter')
    ResourceTypeFilters = Shapes::ListShape.new(name: 'ResourceTypeFilters')
    RetryAfterSeconds = Shapes::IntegerShape.new(name: 'RetryAfterSeconds')
    SearchInsightsAccountIdList = Shapes::ListShape.new(name: 'SearchInsightsAccountIdList')
    SearchInsightsFilters = Shapes::StructureShape.new(name: 'SearchInsightsFilters')
    SearchInsightsMaxResults = Shapes::IntegerShape.new(name: 'SearchInsightsMaxResults')
    SearchInsightsRequest = Shapes::StructureShape.new(name: 'SearchInsightsRequest')
    SearchInsightsResponse = Shapes::StructureShape.new(name: 'SearchInsightsResponse')
    SearchOrganizationInsightsFilters = Shapes::StructureShape.new(name: 'SearchOrganizationInsightsFilters')
    SearchOrganizationInsightsMaxResults = Shapes::IntegerShape.new(name: 'SearchOrganizationInsightsMaxResults')
    SearchOrganizationInsightsRequest = Shapes::StructureShape.new(name: 'SearchOrganizationInsightsRequest')
    SearchOrganizationInsightsResponse = Shapes::StructureShape.new(name: 'SearchOrganizationInsightsResponse')
    ServerSideEncryptionType = Shapes::StringShape.new(name: 'ServerSideEncryptionType')
    ServiceCollection = Shapes::StructureShape.new(name: 'ServiceCollection')
    ServiceHealth = Shapes::StructureShape.new(name: 'ServiceHealth')
    ServiceHealths = Shapes::ListShape.new(name: 'ServiceHealths')
    ServiceInsightHealth = Shapes::StructureShape.new(name: 'ServiceInsightHealth')
    ServiceIntegrationConfig = Shapes::StructureShape.new(name: 'ServiceIntegrationConfig')
    ServiceName = Shapes::StringShape.new(name: 'ServiceName')
    ServiceNames = Shapes::ListShape.new(name: 'ServiceNames')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceResourceCost = Shapes::StructureShape.new(name: 'ServiceResourceCost')
    ServiceResourceCosts = Shapes::ListShape.new(name: 'ServiceResourceCosts')
    SnsChannelConfig = Shapes::StructureShape.new(name: 'SnsChannelConfig')
    SsmOpsItemId = Shapes::StringShape.new(name: 'SsmOpsItemId')
    StackName = Shapes::StringShape.new(name: 'StackName')
    StackNames = Shapes::ListShape.new(name: 'StackNames')
    StartCostEstimationRequest = Shapes::StructureShape.new(name: 'StartCostEstimationRequest')
    StartCostEstimationResponse = Shapes::StructureShape.new(name: 'StartCostEstimationResponse')
    StartTimeRange = Shapes::StructureShape.new(name: 'StartTimeRange')
    TagCollection = Shapes::StructureShape.new(name: 'TagCollection')
    TagCollectionFilter = Shapes::StructureShape.new(name: 'TagCollectionFilter')
    TagCollectionFilters = Shapes::ListShape.new(name: 'TagCollectionFilters')
    TagCollections = Shapes::ListShape.new(name: 'TagCollections')
    TagCostEstimationResourceCollectionFilter = Shapes::StructureShape.new(name: 'TagCostEstimationResourceCollectionFilter')
    TagCostEstimationResourceCollectionFilters = Shapes::ListShape.new(name: 'TagCostEstimationResourceCollectionFilters')
    TagHealth = Shapes::StructureShape.new(name: 'TagHealth')
    TagHealths = Shapes::ListShape.new(name: 'TagHealths')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagValues = Shapes::ListShape.new(name: 'TagValues')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TimestampMetricValuePair = Shapes::StructureShape.new(name: 'TimestampMetricValuePair')
    TimestampMetricValuePairList = Shapes::ListShape.new(name: 'TimestampMetricValuePairList')
    TopicArn = Shapes::StringShape.new(name: 'TopicArn')
    UpdateCloudFormationCollectionFilter = Shapes::StructureShape.new(name: 'UpdateCloudFormationCollectionFilter')
    UpdateEventSourcesConfigRequest = Shapes::StructureShape.new(name: 'UpdateEventSourcesConfigRequest')
    UpdateEventSourcesConfigResponse = Shapes::StructureShape.new(name: 'UpdateEventSourcesConfigResponse')
    UpdateResourceCollectionAction = Shapes::StringShape.new(name: 'UpdateResourceCollectionAction')
    UpdateResourceCollectionFilter = Shapes::StructureShape.new(name: 'UpdateResourceCollectionFilter')
    UpdateResourceCollectionRequest = Shapes::StructureShape.new(name: 'UpdateResourceCollectionRequest')
    UpdateResourceCollectionResponse = Shapes::StructureShape.new(name: 'UpdateResourceCollectionResponse')
    UpdateServiceIntegrationConfig = Shapes::StructureShape.new(name: 'UpdateServiceIntegrationConfig')
    UpdateServiceIntegrationRequest = Shapes::StructureShape.new(name: 'UpdateServiceIntegrationRequest')
    UpdateServiceIntegrationResponse = Shapes::StructureShape.new(name: 'UpdateServiceIntegrationResponse')
    UpdateStackNames = Shapes::ListShape.new(name: 'UpdateStackNames')
    UpdateTagCollectionFilter = Shapes::StructureShape.new(name: 'UpdateTagCollectionFilter')
    UpdateTagCollectionFilters = Shapes::ListShape.new(name: 'UpdateTagCollectionFilters')
    UpdateTagValues = Shapes::ListShape.new(name: 'UpdateTagValues')
    UuidNextToken = Shapes::StringShape.new(name: 'UuidNextToken')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFields = Shapes::ListShape.new(name: 'ValidationExceptionFields')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessageString, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountHealth.add_member(:account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "AccountId"))
    AccountHealth.add_member(:insight, Shapes::ShapeRef.new(shape: AccountInsightHealth, location_name: "Insight"))
    AccountHealth.struct_class = Types::AccountHealth

    AccountHealths.member = Shapes::ShapeRef.new(shape: AccountHealth)

    AccountIdList.member = Shapes::ShapeRef.new(shape: AwsAccountId)

    AccountInsightHealth.add_member(:open_proactive_insights, Shapes::ShapeRef.new(shape: NumOpenProactiveInsights, location_name: "OpenProactiveInsights"))
    AccountInsightHealth.add_member(:open_reactive_insights, Shapes::ShapeRef.new(shape: NumOpenReactiveInsights, location_name: "OpenReactiveInsights"))
    AccountInsightHealth.struct_class = Types::AccountInsightHealth

    AddNotificationChannelRequest.add_member(:config, Shapes::ShapeRef.new(shape: NotificationChannelConfig, required: true, location_name: "Config"))
    AddNotificationChannelRequest.struct_class = Types::AddNotificationChannelRequest

    AddNotificationChannelResponse.add_member(:id, Shapes::ShapeRef.new(shape: NotificationChannelId, required: true, location_name: "Id"))
    AddNotificationChannelResponse.struct_class = Types::AddNotificationChannelResponse

    AmazonCodeGuruProfilerIntegration.add_member(:status, Shapes::ShapeRef.new(shape: EventSourceOptInStatus, location_name: "Status"))
    AmazonCodeGuruProfilerIntegration.struct_class = Types::AmazonCodeGuruProfilerIntegration

    AnomalousLogGroup.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "LogGroupName"))
    AnomalousLogGroup.add_member(:impact_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ImpactStartTime"))
    AnomalousLogGroup.add_member(:impact_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ImpactEndTime"))
    AnomalousLogGroup.add_member(:number_of_log_lines_scanned, Shapes::ShapeRef.new(shape: NumberOfLogLinesScanned, location_name: "NumberOfLogLinesScanned"))
    AnomalousLogGroup.add_member(:log_anomaly_showcases, Shapes::ShapeRef.new(shape: LogAnomalyShowcases, location_name: "LogAnomalyShowcases"))
    AnomalousLogGroup.struct_class = Types::AnomalousLogGroup

    AnomalousLogGroups.member = Shapes::ShapeRef.new(shape: AnomalousLogGroup)

    AnomalyReportedTimeRange.add_member(:open_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "OpenTime"))
    AnomalyReportedTimeRange.add_member(:close_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CloseTime"))
    AnomalyReportedTimeRange.struct_class = Types::AnomalyReportedTimeRange

    AnomalyResource.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    AnomalyResource.add_member(:type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "Type"))
    AnomalyResource.struct_class = Types::AnomalyResource

    AnomalyResources.member = Shapes::ShapeRef.new(shape: AnomalyResource)

    AnomalySourceDetails.add_member(:cloud_watch_metrics, Shapes::ShapeRef.new(shape: CloudWatchMetricsDetails, location_name: "CloudWatchMetrics"))
    AnomalySourceDetails.add_member(:performance_insights_metrics, Shapes::ShapeRef.new(shape: PerformanceInsightsMetricsDetails, location_name: "PerformanceInsightsMetrics"))
    AnomalySourceDetails.struct_class = Types::AnomalySourceDetails

    AnomalySourceMetadata.add_member(:source, Shapes::ShapeRef.new(shape: AnomalySource, location_name: "Source"))
    AnomalySourceMetadata.add_member(:source_resource_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "SourceResourceName"))
    AnomalySourceMetadata.add_member(:source_resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "SourceResourceType"))
    AnomalySourceMetadata.struct_class = Types::AnomalySourceMetadata

    AnomalyTimeRange.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTime"))
    AnomalyTimeRange.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    AnomalyTimeRange.struct_class = Types::AnomalyTimeRange

    AssociatedResourceArns.member = Shapes::ShapeRef.new(shape: ResourceArn)

    Channels.member = Shapes::ShapeRef.new(shape: NotificationChannel)

    CloudFormationCollection.add_member(:stack_names, Shapes::ShapeRef.new(shape: StackNames, location_name: "StackNames"))
    CloudFormationCollection.struct_class = Types::CloudFormationCollection

    CloudFormationCollectionFilter.add_member(:stack_names, Shapes::ShapeRef.new(shape: StackNames, location_name: "StackNames"))
    CloudFormationCollectionFilter.struct_class = Types::CloudFormationCollectionFilter

    CloudFormationCostEstimationResourceCollectionFilter.add_member(:stack_names, Shapes::ShapeRef.new(shape: CostEstimationStackNames, location_name: "StackNames"))
    CloudFormationCostEstimationResourceCollectionFilter.struct_class = Types::CloudFormationCostEstimationResourceCollectionFilter

    CloudFormationHealth.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, location_name: "StackName"))
    CloudFormationHealth.add_member(:insight, Shapes::ShapeRef.new(shape: InsightHealth, location_name: "Insight"))
    CloudFormationHealth.add_member(:analyzed_resource_count, Shapes::ShapeRef.new(shape: AnalyzedResourceCount, location_name: "AnalyzedResourceCount"))
    CloudFormationHealth.struct_class = Types::CloudFormationHealth

    CloudFormationHealths.member = Shapes::ShapeRef.new(shape: CloudFormationHealth)

    CloudWatchMetricsDataSummary.add_member(:timestamp_metric_value_pair_list, Shapes::ShapeRef.new(shape: TimestampMetricValuePairList, location_name: "TimestampMetricValuePairList"))
    CloudWatchMetricsDataSummary.add_member(:status_code, Shapes::ShapeRef.new(shape: CloudWatchMetricDataStatusCode, location_name: "StatusCode"))
    CloudWatchMetricsDataSummary.struct_class = Types::CloudWatchMetricsDataSummary

    CloudWatchMetricsDetail.add_member(:metric_name, Shapes::ShapeRef.new(shape: CloudWatchMetricsMetricName, location_name: "MetricName"))
    CloudWatchMetricsDetail.add_member(:namespace, Shapes::ShapeRef.new(shape: CloudWatchMetricsNamespace, location_name: "Namespace"))
    CloudWatchMetricsDetail.add_member(:dimensions, Shapes::ShapeRef.new(shape: CloudWatchMetricsDimensions, location_name: "Dimensions"))
    CloudWatchMetricsDetail.add_member(:stat, Shapes::ShapeRef.new(shape: CloudWatchMetricsStat, location_name: "Stat"))
    CloudWatchMetricsDetail.add_member(:unit, Shapes::ShapeRef.new(shape: CloudWatchMetricsUnit, location_name: "Unit"))
    CloudWatchMetricsDetail.add_member(:period, Shapes::ShapeRef.new(shape: CloudWatchMetricsPeriod, location_name: "Period"))
    CloudWatchMetricsDetail.add_member(:metric_data_summary, Shapes::ShapeRef.new(shape: CloudWatchMetricsDataSummary, location_name: "MetricDataSummary"))
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

    CostEstimationResourceCollectionFilter.add_member(:cloud_formation, Shapes::ShapeRef.new(shape: CloudFormationCostEstimationResourceCollectionFilter, location_name: "CloudFormation"))
    CostEstimationResourceCollectionFilter.add_member(:tags, Shapes::ShapeRef.new(shape: TagCostEstimationResourceCollectionFilters, location_name: "Tags"))
    CostEstimationResourceCollectionFilter.struct_class = Types::CostEstimationResourceCollectionFilter

    CostEstimationStackNames.member = Shapes::ShapeRef.new(shape: StackName)

    CostEstimationTagValues.member = Shapes::ShapeRef.new(shape: TagValue)

    CostEstimationTimeRange.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    CostEstimationTimeRange.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    CostEstimationTimeRange.struct_class = Types::CostEstimationTimeRange

    DeleteInsightRequest.add_member(:id, Shapes::ShapeRef.new(shape: InsightId, required: true, location: "uri", location_name: "Id"))
    DeleteInsightRequest.struct_class = Types::DeleteInsightRequest

    DeleteInsightResponse.struct_class = Types::DeleteInsightResponse

    DescribeAccountHealthRequest.struct_class = Types::DescribeAccountHealthRequest

    DescribeAccountHealthResponse.add_member(:open_reactive_insights, Shapes::ShapeRef.new(shape: NumOpenReactiveInsights, required: true, location_name: "OpenReactiveInsights"))
    DescribeAccountHealthResponse.add_member(:open_proactive_insights, Shapes::ShapeRef.new(shape: NumOpenProactiveInsights, required: true, location_name: "OpenProactiveInsights"))
    DescribeAccountHealthResponse.add_member(:metrics_analyzed, Shapes::ShapeRef.new(shape: NumMetricsAnalyzed, required: true, location_name: "MetricsAnalyzed"))
    DescribeAccountHealthResponse.add_member(:resource_hours, Shapes::ShapeRef.new(shape: ResourceHours, required: true, location_name: "ResourceHours"))
    DescribeAccountHealthResponse.add_member(:analyzed_resource_count, Shapes::ShapeRef.new(shape: AnalyzedResourceCount, location_name: "AnalyzedResourceCount"))
    DescribeAccountHealthResponse.struct_class = Types::DescribeAccountHealthResponse

    DescribeAccountOverviewRequest.add_member(:from_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "FromTime"))
    DescribeAccountOverviewRequest.add_member(:to_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ToTime"))
    DescribeAccountOverviewRequest.struct_class = Types::DescribeAccountOverviewRequest

    DescribeAccountOverviewResponse.add_member(:reactive_insights, Shapes::ShapeRef.new(shape: NumReactiveInsights, required: true, location_name: "ReactiveInsights"))
    DescribeAccountOverviewResponse.add_member(:proactive_insights, Shapes::ShapeRef.new(shape: NumProactiveInsights, required: true, location_name: "ProactiveInsights"))
    DescribeAccountOverviewResponse.add_member(:mean_time_to_recover_in_milliseconds, Shapes::ShapeRef.new(shape: MeanTimeToRecoverInMilliseconds, required: true, location_name: "MeanTimeToRecoverInMilliseconds"))
    DescribeAccountOverviewResponse.struct_class = Types::DescribeAccountOverviewResponse

    DescribeAnomalyRequest.add_member(:id, Shapes::ShapeRef.new(shape: AnomalyId, required: true, location: "uri", location_name: "Id"))
    DescribeAnomalyRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location: "querystring", location_name: "AccountId"))
    DescribeAnomalyRequest.struct_class = Types::DescribeAnomalyRequest

    DescribeAnomalyResponse.add_member(:proactive_anomaly, Shapes::ShapeRef.new(shape: ProactiveAnomaly, location_name: "ProactiveAnomaly"))
    DescribeAnomalyResponse.add_member(:reactive_anomaly, Shapes::ShapeRef.new(shape: ReactiveAnomaly, location_name: "ReactiveAnomaly"))
    DescribeAnomalyResponse.struct_class = Types::DescribeAnomalyResponse

    DescribeEventSourcesConfigRequest.struct_class = Types::DescribeEventSourcesConfigRequest

    DescribeEventSourcesConfigResponse.add_member(:event_sources, Shapes::ShapeRef.new(shape: EventSourcesConfig, location_name: "EventSources"))
    DescribeEventSourcesConfigResponse.struct_class = Types::DescribeEventSourcesConfigResponse

    DescribeFeedbackRequest.add_member(:insight_id, Shapes::ShapeRef.new(shape: InsightId, location_name: "InsightId"))
    DescribeFeedbackRequest.struct_class = Types::DescribeFeedbackRequest

    DescribeFeedbackResponse.add_member(:insight_feedback, Shapes::ShapeRef.new(shape: InsightFeedback, location_name: "InsightFeedback"))
    DescribeFeedbackResponse.struct_class = Types::DescribeFeedbackResponse

    DescribeInsightRequest.add_member(:id, Shapes::ShapeRef.new(shape: InsightId, required: true, location: "uri", location_name: "Id"))
    DescribeInsightRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location: "querystring", location_name: "AccountId"))
    DescribeInsightRequest.struct_class = Types::DescribeInsightRequest

    DescribeInsightResponse.add_member(:proactive_insight, Shapes::ShapeRef.new(shape: ProactiveInsight, location_name: "ProactiveInsight"))
    DescribeInsightResponse.add_member(:reactive_insight, Shapes::ShapeRef.new(shape: ReactiveInsight, location_name: "ReactiveInsight"))
    DescribeInsightResponse.struct_class = Types::DescribeInsightResponse

    DescribeOrganizationHealthRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "AccountIds"))
    DescribeOrganizationHealthRequest.add_member(:organizational_unit_ids, Shapes::ShapeRef.new(shape: OrganizationalUnitIdList, location_name: "OrganizationalUnitIds"))
    DescribeOrganizationHealthRequest.struct_class = Types::DescribeOrganizationHealthRequest

    DescribeOrganizationHealthResponse.add_member(:open_reactive_insights, Shapes::ShapeRef.new(shape: NumOpenReactiveInsights, required: true, location_name: "OpenReactiveInsights"))
    DescribeOrganizationHealthResponse.add_member(:open_proactive_insights, Shapes::ShapeRef.new(shape: NumOpenProactiveInsights, required: true, location_name: "OpenProactiveInsights"))
    DescribeOrganizationHealthResponse.add_member(:metrics_analyzed, Shapes::ShapeRef.new(shape: NumMetricsAnalyzed, required: true, location_name: "MetricsAnalyzed"))
    DescribeOrganizationHealthResponse.add_member(:resource_hours, Shapes::ShapeRef.new(shape: ResourceHours, required: true, location_name: "ResourceHours"))
    DescribeOrganizationHealthResponse.struct_class = Types::DescribeOrganizationHealthResponse

    DescribeOrganizationOverviewRequest.add_member(:from_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "FromTime"))
    DescribeOrganizationOverviewRequest.add_member(:to_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ToTime"))
    DescribeOrganizationOverviewRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "AccountIds"))
    DescribeOrganizationOverviewRequest.add_member(:organizational_unit_ids, Shapes::ShapeRef.new(shape: OrganizationalUnitIdList, location_name: "OrganizationalUnitIds"))
    DescribeOrganizationOverviewRequest.struct_class = Types::DescribeOrganizationOverviewRequest

    DescribeOrganizationOverviewResponse.add_member(:reactive_insights, Shapes::ShapeRef.new(shape: NumReactiveInsights, required: true, location_name: "ReactiveInsights"))
    DescribeOrganizationOverviewResponse.add_member(:proactive_insights, Shapes::ShapeRef.new(shape: NumProactiveInsights, required: true, location_name: "ProactiveInsights"))
    DescribeOrganizationOverviewResponse.struct_class = Types::DescribeOrganizationOverviewResponse

    DescribeOrganizationResourceCollectionHealthRequest.add_member(:organization_resource_collection_type, Shapes::ShapeRef.new(shape: OrganizationResourceCollectionType, required: true, location_name: "OrganizationResourceCollectionType"))
    DescribeOrganizationResourceCollectionHealthRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "AccountIds"))
    DescribeOrganizationResourceCollectionHealthRequest.add_member(:organizational_unit_ids, Shapes::ShapeRef.new(shape: OrganizationalUnitIdList, location_name: "OrganizationalUnitIds"))
    DescribeOrganizationResourceCollectionHealthRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    DescribeOrganizationResourceCollectionHealthRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: OrganizationResourceCollectionMaxResults, location_name: "MaxResults"))
    DescribeOrganizationResourceCollectionHealthRequest.struct_class = Types::DescribeOrganizationResourceCollectionHealthRequest

    DescribeOrganizationResourceCollectionHealthResponse.add_member(:cloud_formation, Shapes::ShapeRef.new(shape: CloudFormationHealths, location_name: "CloudFormation"))
    DescribeOrganizationResourceCollectionHealthResponse.add_member(:service, Shapes::ShapeRef.new(shape: ServiceHealths, location_name: "Service"))
    DescribeOrganizationResourceCollectionHealthResponse.add_member(:account, Shapes::ShapeRef.new(shape: AccountHealths, location_name: "Account"))
    DescribeOrganizationResourceCollectionHealthResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    DescribeOrganizationResourceCollectionHealthResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagHealths, location_name: "Tags"))
    DescribeOrganizationResourceCollectionHealthResponse.struct_class = Types::DescribeOrganizationResourceCollectionHealthResponse

    DescribeResourceCollectionHealthRequest.add_member(:resource_collection_type, Shapes::ShapeRef.new(shape: ResourceCollectionType, required: true, location: "uri", location_name: "ResourceCollectionType"))
    DescribeResourceCollectionHealthRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location: "querystring", location_name: "NextToken"))
    DescribeResourceCollectionHealthRequest.struct_class = Types::DescribeResourceCollectionHealthRequest

    DescribeResourceCollectionHealthResponse.add_member(:cloud_formation, Shapes::ShapeRef.new(shape: CloudFormationHealths, location_name: "CloudFormation"))
    DescribeResourceCollectionHealthResponse.add_member(:service, Shapes::ShapeRef.new(shape: ServiceHealths, location_name: "Service"))
    DescribeResourceCollectionHealthResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    DescribeResourceCollectionHealthResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagHealths, location_name: "Tags"))
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

    EventSourcesConfig.add_member(:amazon_code_guru_profiler, Shapes::ShapeRef.new(shape: AmazonCodeGuruProfilerIntegration, location_name: "AmazonCodeGuruProfiler"))
    EventSourcesConfig.struct_class = Types::EventSourcesConfig

    EventTimeRange.add_member(:from_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "FromTime"))
    EventTimeRange.add_member(:to_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ToTime"))
    EventTimeRange.struct_class = Types::EventTimeRange

    Events.member = Shapes::ShapeRef.new(shape: Event)

    GetCostEstimationRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location: "querystring", location_name: "NextToken"))
    GetCostEstimationRequest.struct_class = Types::GetCostEstimationRequest

    GetCostEstimationResponse.add_member(:resource_collection, Shapes::ShapeRef.new(shape: CostEstimationResourceCollectionFilter, location_name: "ResourceCollection"))
    GetCostEstimationResponse.add_member(:status, Shapes::ShapeRef.new(shape: CostEstimationStatus, location_name: "Status"))
    GetCostEstimationResponse.add_member(:costs, Shapes::ShapeRef.new(shape: ServiceResourceCosts, location_name: "Costs"))
    GetCostEstimationResponse.add_member(:time_range, Shapes::ShapeRef.new(shape: CostEstimationTimeRange, location_name: "TimeRange"))
    GetCostEstimationResponse.add_member(:total_cost, Shapes::ShapeRef.new(shape: Cost, location_name: "TotalCost"))
    GetCostEstimationResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    GetCostEstimationResponse.struct_class = Types::GetCostEstimationResponse

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

    KMSServerSideEncryptionIntegration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KMSKeyId, location_name: "KMSKeyId"))
    KMSServerSideEncryptionIntegration.add_member(:opt_in_status, Shapes::ShapeRef.new(shape: OptInStatus, location_name: "OptInStatus"))
    KMSServerSideEncryptionIntegration.add_member(:type, Shapes::ShapeRef.new(shape: ServerSideEncryptionType, location_name: "Type"))
    KMSServerSideEncryptionIntegration.struct_class = Types::KMSServerSideEncryptionIntegration

    KMSServerSideEncryptionIntegrationConfig.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KMSKeyId, location_name: "KMSKeyId"))
    KMSServerSideEncryptionIntegrationConfig.add_member(:opt_in_status, Shapes::ShapeRef.new(shape: OptInStatus, location_name: "OptInStatus"))
    KMSServerSideEncryptionIntegrationConfig.add_member(:type, Shapes::ShapeRef.new(shape: ServerSideEncryptionType, location_name: "Type"))
    KMSServerSideEncryptionIntegrationConfig.struct_class = Types::KMSServerSideEncryptionIntegrationConfig

    ListAnomaliesForInsightFilters.add_member(:service_collection, Shapes::ShapeRef.new(shape: ServiceCollection, location_name: "ServiceCollection"))
    ListAnomaliesForInsightFilters.struct_class = Types::ListAnomaliesForInsightFilters

    ListAnomaliesForInsightRequest.add_member(:insight_id, Shapes::ShapeRef.new(shape: InsightId, required: true, location: "uri", location_name: "InsightId"))
    ListAnomaliesForInsightRequest.add_member(:start_time_range, Shapes::ShapeRef.new(shape: StartTimeRange, location_name: "StartTimeRange"))
    ListAnomaliesForInsightRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAnomaliesForInsightMaxResults, location_name: "MaxResults"))
    ListAnomaliesForInsightRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    ListAnomaliesForInsightRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "AccountId"))
    ListAnomaliesForInsightRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListAnomaliesForInsightFilters, location_name: "Filters"))
    ListAnomaliesForInsightRequest.struct_class = Types::ListAnomaliesForInsightRequest

    ListAnomaliesForInsightResponse.add_member(:proactive_anomalies, Shapes::ShapeRef.new(shape: ProactiveAnomalies, location_name: "ProactiveAnomalies"))
    ListAnomaliesForInsightResponse.add_member(:reactive_anomalies, Shapes::ShapeRef.new(shape: ReactiveAnomalies, location_name: "ReactiveAnomalies"))
    ListAnomaliesForInsightResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    ListAnomaliesForInsightResponse.struct_class = Types::ListAnomaliesForInsightResponse

    ListAnomalousLogGroupsRequest.add_member(:insight_id, Shapes::ShapeRef.new(shape: InsightId, required: true, location_name: "InsightId"))
    ListAnomalousLogGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAnomalousLogGroupsMaxResults, location_name: "MaxResults"))
    ListAnomalousLogGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    ListAnomalousLogGroupsRequest.struct_class = Types::ListAnomalousLogGroupsRequest

    ListAnomalousLogGroupsResponse.add_member(:insight_id, Shapes::ShapeRef.new(shape: InsightId, required: true, location_name: "InsightId"))
    ListAnomalousLogGroupsResponse.add_member(:anomalous_log_groups, Shapes::ShapeRef.new(shape: AnomalousLogGroups, required: true, location_name: "AnomalousLogGroups"))
    ListAnomalousLogGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    ListAnomalousLogGroupsResponse.struct_class = Types::ListAnomalousLogGroupsResponse

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
    ListEventsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "AccountId"))
    ListEventsRequest.struct_class = Types::ListEventsRequest

    ListEventsResponse.add_member(:events, Shapes::ShapeRef.new(shape: Events, required: true, location_name: "Events"))
    ListEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    ListEventsResponse.struct_class = Types::ListEventsResponse

    ListInsightsAccountIdList.member = Shapes::ShapeRef.new(shape: AwsAccountId)

    ListInsightsAnyStatusFilter.add_member(:type, Shapes::ShapeRef.new(shape: InsightType, required: true, location_name: "Type"))
    ListInsightsAnyStatusFilter.add_member(:start_time_range, Shapes::ShapeRef.new(shape: StartTimeRange, required: true, location_name: "StartTimeRange"))
    ListInsightsAnyStatusFilter.struct_class = Types::ListInsightsAnyStatusFilter

    ListInsightsClosedStatusFilter.add_member(:type, Shapes::ShapeRef.new(shape: InsightType, required: true, location_name: "Type"))
    ListInsightsClosedStatusFilter.add_member(:end_time_range, Shapes::ShapeRef.new(shape: EndTimeRange, required: true, location_name: "EndTimeRange"))
    ListInsightsClosedStatusFilter.struct_class = Types::ListInsightsClosedStatusFilter

    ListInsightsOngoingStatusFilter.add_member(:type, Shapes::ShapeRef.new(shape: InsightType, required: true, location_name: "Type"))
    ListInsightsOngoingStatusFilter.struct_class = Types::ListInsightsOngoingStatusFilter

    ListInsightsOrganizationalUnitIdList.member = Shapes::ShapeRef.new(shape: OrganizationalUnitId)

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

    ListMonitoredResourcesFilters.add_member(:resource_permission, Shapes::ShapeRef.new(shape: ResourcePermission, required: true, location_name: "ResourcePermission"))
    ListMonitoredResourcesFilters.add_member(:resource_type_filters, Shapes::ShapeRef.new(shape: ResourceTypeFilters, required: true, location_name: "ResourceTypeFilters"))
    ListMonitoredResourcesFilters.struct_class = Types::ListMonitoredResourcesFilters

    ListMonitoredResourcesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListMonitoredResourcesFilters, location_name: "Filters"))
    ListMonitoredResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListMonitoredResourcesMaxResults, location_name: "MaxResults"))
    ListMonitoredResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    ListMonitoredResourcesRequest.struct_class = Types::ListMonitoredResourcesRequest

    ListMonitoredResourcesResponse.add_member(:monitored_resource_identifiers, Shapes::ShapeRef.new(shape: MonitoredResourceIdentifiers, required: true, location_name: "MonitoredResourceIdentifiers"))
    ListMonitoredResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    ListMonitoredResourcesResponse.struct_class = Types::ListMonitoredResourcesResponse

    ListNotificationChannelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    ListNotificationChannelsRequest.struct_class = Types::ListNotificationChannelsRequest

    ListNotificationChannelsResponse.add_member(:channels, Shapes::ShapeRef.new(shape: Channels, location_name: "Channels"))
    ListNotificationChannelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    ListNotificationChannelsResponse.struct_class = Types::ListNotificationChannelsResponse

    ListOrganizationInsightsRequest.add_member(:status_filter, Shapes::ShapeRef.new(shape: ListInsightsStatusFilter, required: true, location_name: "StatusFilter"))
    ListOrganizationInsightsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListInsightsMaxResults, location_name: "MaxResults"))
    ListOrganizationInsightsRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: ListInsightsAccountIdList, location_name: "AccountIds"))
    ListOrganizationInsightsRequest.add_member(:organizational_unit_ids, Shapes::ShapeRef.new(shape: ListInsightsOrganizationalUnitIdList, location_name: "OrganizationalUnitIds"))
    ListOrganizationInsightsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    ListOrganizationInsightsRequest.struct_class = Types::ListOrganizationInsightsRequest

    ListOrganizationInsightsResponse.add_member(:proactive_insights, Shapes::ShapeRef.new(shape: ProactiveOrganizationInsights, location_name: "ProactiveInsights"))
    ListOrganizationInsightsResponse.add_member(:reactive_insights, Shapes::ShapeRef.new(shape: ReactiveOrganizationInsights, location_name: "ReactiveInsights"))
    ListOrganizationInsightsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    ListOrganizationInsightsResponse.struct_class = Types::ListOrganizationInsightsResponse

    ListRecommendationsRequest.add_member(:insight_id, Shapes::ShapeRef.new(shape: InsightId, required: true, location_name: "InsightId"))
    ListRecommendationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    ListRecommendationsRequest.add_member(:locale, Shapes::ShapeRef.new(shape: Locale, location_name: "Locale"))
    ListRecommendationsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "AccountId"))
    ListRecommendationsRequest.struct_class = Types::ListRecommendationsRequest

    ListRecommendationsResponse.add_member(:recommendations, Shapes::ShapeRef.new(shape: Recommendations, location_name: "Recommendations"))
    ListRecommendationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    ListRecommendationsResponse.struct_class = Types::ListRecommendationsResponse

    LogAnomalyClass.add_member(:log_stream_name, Shapes::ShapeRef.new(shape: LogStreamName, location_name: "LogStreamName"))
    LogAnomalyClass.add_member(:log_anomaly_type, Shapes::ShapeRef.new(shape: LogAnomalyType, location_name: "LogAnomalyType"))
    LogAnomalyClass.add_member(:log_anomaly_token, Shapes::ShapeRef.new(shape: LogAnomalyToken, location_name: "LogAnomalyToken"))
    LogAnomalyClass.add_member(:log_event_id, Shapes::ShapeRef.new(shape: LogEventId, location_name: "LogEventId"))
    LogAnomalyClass.add_member(:explanation, Shapes::ShapeRef.new(shape: Explanation, location_name: "Explanation"))
    LogAnomalyClass.add_member(:number_of_log_lines_occurrences, Shapes::ShapeRef.new(shape: NumberOfLogLinesOccurrences, location_name: "NumberOfLogLinesOccurrences"))
    LogAnomalyClass.add_member(:log_event_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LogEventTimestamp"))
    LogAnomalyClass.struct_class = Types::LogAnomalyClass

    LogAnomalyClasses.member = Shapes::ShapeRef.new(shape: LogAnomalyClass)

    LogAnomalyShowcase.add_member(:log_anomaly_classes, Shapes::ShapeRef.new(shape: LogAnomalyClasses, location_name: "LogAnomalyClasses"))
    LogAnomalyShowcase.struct_class = Types::LogAnomalyShowcase

    LogAnomalyShowcases.member = Shapes::ShapeRef.new(shape: LogAnomalyShowcase)

    LogsAnomalyDetectionIntegration.add_member(:opt_in_status, Shapes::ShapeRef.new(shape: OptInStatus, location_name: "OptInStatus"))
    LogsAnomalyDetectionIntegration.struct_class = Types::LogsAnomalyDetectionIntegration

    LogsAnomalyDetectionIntegrationConfig.add_member(:opt_in_status, Shapes::ShapeRef.new(shape: OptInStatus, location_name: "OptInStatus"))
    LogsAnomalyDetectionIntegrationConfig.struct_class = Types::LogsAnomalyDetectionIntegrationConfig

    MonitoredResourceIdentifier.add_member(:monitored_resource_name, Shapes::ShapeRef.new(shape: MonitoredResourceName, location_name: "MonitoredResourceName"))
    MonitoredResourceIdentifier.add_member(:type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "Type"))
    MonitoredResourceIdentifier.add_member(:resource_permission, Shapes::ShapeRef.new(shape: ResourcePermission, location_name: "ResourcePermission"))
    MonitoredResourceIdentifier.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdated"))
    MonitoredResourceIdentifier.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    MonitoredResourceIdentifier.struct_class = Types::MonitoredResourceIdentifier

    MonitoredResourceIdentifiers.member = Shapes::ShapeRef.new(shape: MonitoredResourceIdentifier)

    NotificationChannel.add_member(:id, Shapes::ShapeRef.new(shape: NotificationChannelId, location_name: "Id"))
    NotificationChannel.add_member(:config, Shapes::ShapeRef.new(shape: NotificationChannelConfig, location_name: "Config"))
    NotificationChannel.struct_class = Types::NotificationChannel

    NotificationChannelConfig.add_member(:sns, Shapes::ShapeRef.new(shape: SnsChannelConfig, required: true, location_name: "Sns"))
    NotificationChannelConfig.add_member(:filters, Shapes::ShapeRef.new(shape: NotificationFilterConfig, location_name: "Filters"))
    NotificationChannelConfig.struct_class = Types::NotificationChannelConfig

    NotificationFilterConfig.add_member(:severities, Shapes::ShapeRef.new(shape: InsightSeverities, location_name: "Severities"))
    NotificationFilterConfig.add_member(:message_types, Shapes::ShapeRef.new(shape: NotificationMessageTypes, location_name: "MessageTypes"))
    NotificationFilterConfig.struct_class = Types::NotificationFilterConfig

    NotificationMessageTypes.member = Shapes::ShapeRef.new(shape: NotificationMessageType)

    OpsCenterIntegration.add_member(:opt_in_status, Shapes::ShapeRef.new(shape: OptInStatus, location_name: "OptInStatus"))
    OpsCenterIntegration.struct_class = Types::OpsCenterIntegration

    OpsCenterIntegrationConfig.add_member(:opt_in_status, Shapes::ShapeRef.new(shape: OptInStatus, location_name: "OptInStatus"))
    OpsCenterIntegrationConfig.struct_class = Types::OpsCenterIntegrationConfig

    OrganizationalUnitIdList.member = Shapes::ShapeRef.new(shape: OrganizationalUnitId)

    PerformanceInsightsMetricDimensionGroup.add_member(:group, Shapes::ShapeRef.new(shape: PerformanceInsightsMetricGroup, location_name: "Group"))
    PerformanceInsightsMetricDimensionGroup.add_member(:dimensions, Shapes::ShapeRef.new(shape: PerformanceInsightsMetricDimensions, location_name: "Dimensions"))
    PerformanceInsightsMetricDimensionGroup.add_member(:limit, Shapes::ShapeRef.new(shape: PerformanceInsightsMetricLimitInteger, location_name: "Limit"))
    PerformanceInsightsMetricDimensionGroup.struct_class = Types::PerformanceInsightsMetricDimensionGroup

    PerformanceInsightsMetricDimensions.member = Shapes::ShapeRef.new(shape: PerformanceInsightsMetricDimension)

    PerformanceInsightsMetricFilterMap.key = Shapes::ShapeRef.new(shape: PerformanceInsightsMetricFilterKey)
    PerformanceInsightsMetricFilterMap.value = Shapes::ShapeRef.new(shape: PerformanceInsightsMetricFilterValue)

    PerformanceInsightsMetricQuery.add_member(:metric, Shapes::ShapeRef.new(shape: PerformanceInsightsMetricName, location_name: "Metric"))
    PerformanceInsightsMetricQuery.add_member(:group_by, Shapes::ShapeRef.new(shape: PerformanceInsightsMetricDimensionGroup, location_name: "GroupBy"))
    PerformanceInsightsMetricQuery.add_member(:filter, Shapes::ShapeRef.new(shape: PerformanceInsightsMetricFilterMap, location_name: "Filter"))
    PerformanceInsightsMetricQuery.struct_class = Types::PerformanceInsightsMetricQuery

    PerformanceInsightsMetricsDetail.add_member(:metric_display_name, Shapes::ShapeRef.new(shape: PerformanceInsightsMetricDisplayName, location_name: "MetricDisplayName"))
    PerformanceInsightsMetricsDetail.add_member(:unit, Shapes::ShapeRef.new(shape: PerformanceInsightsMetricUnit, location_name: "Unit"))
    PerformanceInsightsMetricsDetail.add_member(:metric_query, Shapes::ShapeRef.new(shape: PerformanceInsightsMetricQuery, location_name: "MetricQuery"))
    PerformanceInsightsMetricsDetail.add_member(:reference_data, Shapes::ShapeRef.new(shape: PerformanceInsightsReferenceDataList, location_name: "ReferenceData"))
    PerformanceInsightsMetricsDetail.add_member(:stats_at_anomaly, Shapes::ShapeRef.new(shape: PerformanceInsightsStats, location_name: "StatsAtAnomaly"))
    PerformanceInsightsMetricsDetail.add_member(:stats_at_baseline, Shapes::ShapeRef.new(shape: PerformanceInsightsStats, location_name: "StatsAtBaseline"))
    PerformanceInsightsMetricsDetail.struct_class = Types::PerformanceInsightsMetricsDetail

    PerformanceInsightsMetricsDetails.member = Shapes::ShapeRef.new(shape: PerformanceInsightsMetricsDetail)

    PerformanceInsightsReferenceComparisonValues.add_member(:reference_scalar, Shapes::ShapeRef.new(shape: PerformanceInsightsReferenceScalar, location_name: "ReferenceScalar"))
    PerformanceInsightsReferenceComparisonValues.add_member(:reference_metric, Shapes::ShapeRef.new(shape: PerformanceInsightsReferenceMetric, location_name: "ReferenceMetric"))
    PerformanceInsightsReferenceComparisonValues.struct_class = Types::PerformanceInsightsReferenceComparisonValues

    PerformanceInsightsReferenceData.add_member(:name, Shapes::ShapeRef.new(shape: PerformanceInsightsReferenceName, location_name: "Name"))
    PerformanceInsightsReferenceData.add_member(:comparison_values, Shapes::ShapeRef.new(shape: PerformanceInsightsReferenceComparisonValues, location_name: "ComparisonValues"))
    PerformanceInsightsReferenceData.struct_class = Types::PerformanceInsightsReferenceData

    PerformanceInsightsReferenceDataList.member = Shapes::ShapeRef.new(shape: PerformanceInsightsReferenceData)

    PerformanceInsightsReferenceMetric.add_member(:metric_query, Shapes::ShapeRef.new(shape: PerformanceInsightsMetricQuery, location_name: "MetricQuery"))
    PerformanceInsightsReferenceMetric.struct_class = Types::PerformanceInsightsReferenceMetric

    PerformanceInsightsReferenceScalar.add_member(:value, Shapes::ShapeRef.new(shape: PerformanceInsightsValueDouble, location_name: "Value"))
    PerformanceInsightsReferenceScalar.struct_class = Types::PerformanceInsightsReferenceScalar

    PerformanceInsightsStat.add_member(:type, Shapes::ShapeRef.new(shape: PerformanceInsightsStatType, location_name: "Type"))
    PerformanceInsightsStat.add_member(:value, Shapes::ShapeRef.new(shape: PerformanceInsightsValueDouble, location_name: "Value"))
    PerformanceInsightsStat.struct_class = Types::PerformanceInsightsStat

    PerformanceInsightsStats.member = Shapes::ShapeRef.new(shape: PerformanceInsightsStat)

    PredictionTimeRange.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTime"))
    PredictionTimeRange.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    PredictionTimeRange.struct_class = Types::PredictionTimeRange

    ProactiveAnomalies.member = Shapes::ShapeRef.new(shape: ProactiveAnomalySummary)

    ProactiveAnomaly.add_member(:id, Shapes::ShapeRef.new(shape: AnomalyId, location_name: "Id"))
    ProactiveAnomaly.add_member(:severity, Shapes::ShapeRef.new(shape: AnomalySeverity, location_name: "Severity"))
    ProactiveAnomaly.add_member(:status, Shapes::ShapeRef.new(shape: AnomalyStatus, location_name: "Status"))
    ProactiveAnomaly.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdateTime"))
    ProactiveAnomaly.add_member(:anomaly_time_range, Shapes::ShapeRef.new(shape: AnomalyTimeRange, location_name: "AnomalyTimeRange"))
    ProactiveAnomaly.add_member(:anomaly_reported_time_range, Shapes::ShapeRef.new(shape: AnomalyReportedTimeRange, location_name: "AnomalyReportedTimeRange"))
    ProactiveAnomaly.add_member(:prediction_time_range, Shapes::ShapeRef.new(shape: PredictionTimeRange, location_name: "PredictionTimeRange"))
    ProactiveAnomaly.add_member(:source_details, Shapes::ShapeRef.new(shape: AnomalySourceDetails, location_name: "SourceDetails"))
    ProactiveAnomaly.add_member(:associated_insight_id, Shapes::ShapeRef.new(shape: InsightId, location_name: "AssociatedInsightId"))
    ProactiveAnomaly.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    ProactiveAnomaly.add_member(:limit, Shapes::ShapeRef.new(shape: AnomalyLimit, location_name: "Limit"))
    ProactiveAnomaly.add_member(:source_metadata, Shapes::ShapeRef.new(shape: AnomalySourceMetadata, location_name: "SourceMetadata"))
    ProactiveAnomaly.add_member(:anomaly_resources, Shapes::ShapeRef.new(shape: AnomalyResources, location_name: "AnomalyResources"))
    ProactiveAnomaly.add_member(:description, Shapes::ShapeRef.new(shape: AnomalyDescription, location_name: "Description"))
    ProactiveAnomaly.struct_class = Types::ProactiveAnomaly

    ProactiveAnomalySummary.add_member(:id, Shapes::ShapeRef.new(shape: AnomalyId, location_name: "Id"))
    ProactiveAnomalySummary.add_member(:severity, Shapes::ShapeRef.new(shape: AnomalySeverity, location_name: "Severity"))
    ProactiveAnomalySummary.add_member(:status, Shapes::ShapeRef.new(shape: AnomalyStatus, location_name: "Status"))
    ProactiveAnomalySummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdateTime"))
    ProactiveAnomalySummary.add_member(:anomaly_time_range, Shapes::ShapeRef.new(shape: AnomalyTimeRange, location_name: "AnomalyTimeRange"))
    ProactiveAnomalySummary.add_member(:anomaly_reported_time_range, Shapes::ShapeRef.new(shape: AnomalyReportedTimeRange, location_name: "AnomalyReportedTimeRange"))
    ProactiveAnomalySummary.add_member(:prediction_time_range, Shapes::ShapeRef.new(shape: PredictionTimeRange, location_name: "PredictionTimeRange"))
    ProactiveAnomalySummary.add_member(:source_details, Shapes::ShapeRef.new(shape: AnomalySourceDetails, location_name: "SourceDetails"))
    ProactiveAnomalySummary.add_member(:associated_insight_id, Shapes::ShapeRef.new(shape: InsightId, location_name: "AssociatedInsightId"))
    ProactiveAnomalySummary.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    ProactiveAnomalySummary.add_member(:limit, Shapes::ShapeRef.new(shape: AnomalyLimit, location_name: "Limit"))
    ProactiveAnomalySummary.add_member(:source_metadata, Shapes::ShapeRef.new(shape: AnomalySourceMetadata, location_name: "SourceMetadata"))
    ProactiveAnomalySummary.add_member(:anomaly_resources, Shapes::ShapeRef.new(shape: AnomalyResources, location_name: "AnomalyResources"))
    ProactiveAnomalySummary.add_member(:description, Shapes::ShapeRef.new(shape: AnomalyDescription, location_name: "Description"))
    ProactiveAnomalySummary.struct_class = Types::ProactiveAnomalySummary

    ProactiveInsight.add_member(:id, Shapes::ShapeRef.new(shape: InsightId, location_name: "Id"))
    ProactiveInsight.add_member(:name, Shapes::ShapeRef.new(shape: InsightName, location_name: "Name"))
    ProactiveInsight.add_member(:severity, Shapes::ShapeRef.new(shape: InsightSeverity, location_name: "Severity"))
    ProactiveInsight.add_member(:status, Shapes::ShapeRef.new(shape: InsightStatus, location_name: "Status"))
    ProactiveInsight.add_member(:insight_time_range, Shapes::ShapeRef.new(shape: InsightTimeRange, location_name: "InsightTimeRange"))
    ProactiveInsight.add_member(:prediction_time_range, Shapes::ShapeRef.new(shape: PredictionTimeRange, location_name: "PredictionTimeRange"))
    ProactiveInsight.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    ProactiveInsight.add_member(:ssm_ops_item_id, Shapes::ShapeRef.new(shape: SsmOpsItemId, location_name: "SsmOpsItemId"))
    ProactiveInsight.add_member(:description, Shapes::ShapeRef.new(shape: InsightDescription, location_name: "Description"))
    ProactiveInsight.struct_class = Types::ProactiveInsight

    ProactiveInsightSummary.add_member(:id, Shapes::ShapeRef.new(shape: InsightId, location_name: "Id"))
    ProactiveInsightSummary.add_member(:name, Shapes::ShapeRef.new(shape: InsightName, location_name: "Name"))
    ProactiveInsightSummary.add_member(:severity, Shapes::ShapeRef.new(shape: InsightSeverity, location_name: "Severity"))
    ProactiveInsightSummary.add_member(:status, Shapes::ShapeRef.new(shape: InsightStatus, location_name: "Status"))
    ProactiveInsightSummary.add_member(:insight_time_range, Shapes::ShapeRef.new(shape: InsightTimeRange, location_name: "InsightTimeRange"))
    ProactiveInsightSummary.add_member(:prediction_time_range, Shapes::ShapeRef.new(shape: PredictionTimeRange, location_name: "PredictionTimeRange"))
    ProactiveInsightSummary.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    ProactiveInsightSummary.add_member(:service_collection, Shapes::ShapeRef.new(shape: ServiceCollection, location_name: "ServiceCollection"))
    ProactiveInsightSummary.add_member(:associated_resource_arns, Shapes::ShapeRef.new(shape: AssociatedResourceArns, location_name: "AssociatedResourceArns"))
    ProactiveInsightSummary.struct_class = Types::ProactiveInsightSummary

    ProactiveInsights.member = Shapes::ShapeRef.new(shape: ProactiveInsightSummary)

    ProactiveOrganizationInsightSummary.add_member(:id, Shapes::ShapeRef.new(shape: InsightId, location_name: "Id"))
    ProactiveOrganizationInsightSummary.add_member(:account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "AccountId"))
    ProactiveOrganizationInsightSummary.add_member(:organizational_unit_id, Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: "OrganizationalUnitId"))
    ProactiveOrganizationInsightSummary.add_member(:name, Shapes::ShapeRef.new(shape: InsightName, location_name: "Name"))
    ProactiveOrganizationInsightSummary.add_member(:severity, Shapes::ShapeRef.new(shape: InsightSeverity, location_name: "Severity"))
    ProactiveOrganizationInsightSummary.add_member(:status, Shapes::ShapeRef.new(shape: InsightStatus, location_name: "Status"))
    ProactiveOrganizationInsightSummary.add_member(:insight_time_range, Shapes::ShapeRef.new(shape: InsightTimeRange, location_name: "InsightTimeRange"))
    ProactiveOrganizationInsightSummary.add_member(:prediction_time_range, Shapes::ShapeRef.new(shape: PredictionTimeRange, location_name: "PredictionTimeRange"))
    ProactiveOrganizationInsightSummary.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    ProactiveOrganizationInsightSummary.add_member(:service_collection, Shapes::ShapeRef.new(shape: ServiceCollection, location_name: "ServiceCollection"))
    ProactiveOrganizationInsightSummary.struct_class = Types::ProactiveOrganizationInsightSummary

    ProactiveOrganizationInsights.member = Shapes::ShapeRef.new(shape: ProactiveOrganizationInsightSummary)

    PutFeedbackRequest.add_member(:insight_feedback, Shapes::ShapeRef.new(shape: InsightFeedback, location_name: "InsightFeedback"))
    PutFeedbackRequest.struct_class = Types::PutFeedbackRequest

    PutFeedbackResponse.struct_class = Types::PutFeedbackResponse

    ReactiveAnomalies.member = Shapes::ShapeRef.new(shape: ReactiveAnomalySummary)

    ReactiveAnomaly.add_member(:id, Shapes::ShapeRef.new(shape: AnomalyId, location_name: "Id"))
    ReactiveAnomaly.add_member(:severity, Shapes::ShapeRef.new(shape: AnomalySeverity, location_name: "Severity"))
    ReactiveAnomaly.add_member(:status, Shapes::ShapeRef.new(shape: AnomalyStatus, location_name: "Status"))
    ReactiveAnomaly.add_member(:anomaly_time_range, Shapes::ShapeRef.new(shape: AnomalyTimeRange, location_name: "AnomalyTimeRange"))
    ReactiveAnomaly.add_member(:anomaly_reported_time_range, Shapes::ShapeRef.new(shape: AnomalyReportedTimeRange, location_name: "AnomalyReportedTimeRange"))
    ReactiveAnomaly.add_member(:source_details, Shapes::ShapeRef.new(shape: AnomalySourceDetails, location_name: "SourceDetails"))
    ReactiveAnomaly.add_member(:associated_insight_id, Shapes::ShapeRef.new(shape: InsightId, location_name: "AssociatedInsightId"))
    ReactiveAnomaly.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    ReactiveAnomaly.add_member(:type, Shapes::ShapeRef.new(shape: AnomalyType, location_name: "Type"))
    ReactiveAnomaly.add_member(:name, Shapes::ShapeRef.new(shape: AnomalyName, location_name: "Name"))
    ReactiveAnomaly.add_member(:description, Shapes::ShapeRef.new(shape: AnomalyDescription, location_name: "Description"))
    ReactiveAnomaly.add_member(:causal_anomaly_id, Shapes::ShapeRef.new(shape: AnomalyId, location_name: "CausalAnomalyId"))
    ReactiveAnomaly.add_member(:anomaly_resources, Shapes::ShapeRef.new(shape: AnomalyResources, location_name: "AnomalyResources"))
    ReactiveAnomaly.struct_class = Types::ReactiveAnomaly

    ReactiveAnomalySummary.add_member(:id, Shapes::ShapeRef.new(shape: AnomalyId, location_name: "Id"))
    ReactiveAnomalySummary.add_member(:severity, Shapes::ShapeRef.new(shape: AnomalySeverity, location_name: "Severity"))
    ReactiveAnomalySummary.add_member(:status, Shapes::ShapeRef.new(shape: AnomalyStatus, location_name: "Status"))
    ReactiveAnomalySummary.add_member(:anomaly_time_range, Shapes::ShapeRef.new(shape: AnomalyTimeRange, location_name: "AnomalyTimeRange"))
    ReactiveAnomalySummary.add_member(:anomaly_reported_time_range, Shapes::ShapeRef.new(shape: AnomalyReportedTimeRange, location_name: "AnomalyReportedTimeRange"))
    ReactiveAnomalySummary.add_member(:source_details, Shapes::ShapeRef.new(shape: AnomalySourceDetails, location_name: "SourceDetails"))
    ReactiveAnomalySummary.add_member(:associated_insight_id, Shapes::ShapeRef.new(shape: InsightId, location_name: "AssociatedInsightId"))
    ReactiveAnomalySummary.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    ReactiveAnomalySummary.add_member(:type, Shapes::ShapeRef.new(shape: AnomalyType, location_name: "Type"))
    ReactiveAnomalySummary.add_member(:name, Shapes::ShapeRef.new(shape: AnomalyName, location_name: "Name"))
    ReactiveAnomalySummary.add_member(:description, Shapes::ShapeRef.new(shape: AnomalyDescription, location_name: "Description"))
    ReactiveAnomalySummary.add_member(:causal_anomaly_id, Shapes::ShapeRef.new(shape: AnomalyId, location_name: "CausalAnomalyId"))
    ReactiveAnomalySummary.add_member(:anomaly_resources, Shapes::ShapeRef.new(shape: AnomalyResources, location_name: "AnomalyResources"))
    ReactiveAnomalySummary.struct_class = Types::ReactiveAnomalySummary

    ReactiveInsight.add_member(:id, Shapes::ShapeRef.new(shape: InsightId, location_name: "Id"))
    ReactiveInsight.add_member(:name, Shapes::ShapeRef.new(shape: InsightName, location_name: "Name"))
    ReactiveInsight.add_member(:severity, Shapes::ShapeRef.new(shape: InsightSeverity, location_name: "Severity"))
    ReactiveInsight.add_member(:status, Shapes::ShapeRef.new(shape: InsightStatus, location_name: "Status"))
    ReactiveInsight.add_member(:insight_time_range, Shapes::ShapeRef.new(shape: InsightTimeRange, location_name: "InsightTimeRange"))
    ReactiveInsight.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    ReactiveInsight.add_member(:ssm_ops_item_id, Shapes::ShapeRef.new(shape: SsmOpsItemId, location_name: "SsmOpsItemId"))
    ReactiveInsight.add_member(:description, Shapes::ShapeRef.new(shape: InsightDescription, location_name: "Description"))
    ReactiveInsight.struct_class = Types::ReactiveInsight

    ReactiveInsightSummary.add_member(:id, Shapes::ShapeRef.new(shape: InsightId, location_name: "Id"))
    ReactiveInsightSummary.add_member(:name, Shapes::ShapeRef.new(shape: InsightName, location_name: "Name"))
    ReactiveInsightSummary.add_member(:severity, Shapes::ShapeRef.new(shape: InsightSeverity, location_name: "Severity"))
    ReactiveInsightSummary.add_member(:status, Shapes::ShapeRef.new(shape: InsightStatus, location_name: "Status"))
    ReactiveInsightSummary.add_member(:insight_time_range, Shapes::ShapeRef.new(shape: InsightTimeRange, location_name: "InsightTimeRange"))
    ReactiveInsightSummary.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    ReactiveInsightSummary.add_member(:service_collection, Shapes::ShapeRef.new(shape: ServiceCollection, location_name: "ServiceCollection"))
    ReactiveInsightSummary.add_member(:associated_resource_arns, Shapes::ShapeRef.new(shape: AssociatedResourceArns, location_name: "AssociatedResourceArns"))
    ReactiveInsightSummary.struct_class = Types::ReactiveInsightSummary

    ReactiveInsights.member = Shapes::ShapeRef.new(shape: ReactiveInsightSummary)

    ReactiveOrganizationInsightSummary.add_member(:id, Shapes::ShapeRef.new(shape: InsightId, location_name: "Id"))
    ReactiveOrganizationInsightSummary.add_member(:account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "AccountId"))
    ReactiveOrganizationInsightSummary.add_member(:organizational_unit_id, Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: "OrganizationalUnitId"))
    ReactiveOrganizationInsightSummary.add_member(:name, Shapes::ShapeRef.new(shape: InsightName, location_name: "Name"))
    ReactiveOrganizationInsightSummary.add_member(:severity, Shapes::ShapeRef.new(shape: InsightSeverity, location_name: "Severity"))
    ReactiveOrganizationInsightSummary.add_member(:status, Shapes::ShapeRef.new(shape: InsightStatus, location_name: "Status"))
    ReactiveOrganizationInsightSummary.add_member(:insight_time_range, Shapes::ShapeRef.new(shape: InsightTimeRange, location_name: "InsightTimeRange"))
    ReactiveOrganizationInsightSummary.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    ReactiveOrganizationInsightSummary.add_member(:service_collection, Shapes::ShapeRef.new(shape: ServiceCollection, location_name: "ServiceCollection"))
    ReactiveOrganizationInsightSummary.struct_class = Types::ReactiveOrganizationInsightSummary

    ReactiveOrganizationInsights.member = Shapes::ShapeRef.new(shape: ReactiveOrganizationInsightSummary)

    Recommendation.add_member(:description, Shapes::ShapeRef.new(shape: RecommendationDescription, location_name: "Description"))
    Recommendation.add_member(:link, Shapes::ShapeRef.new(shape: RecommendationLink, location_name: "Link"))
    Recommendation.add_member(:name, Shapes::ShapeRef.new(shape: RecommendationName, location_name: "Name"))
    Recommendation.add_member(:reason, Shapes::ShapeRef.new(shape: RecommendationReason, location_name: "Reason"))
    Recommendation.add_member(:related_events, Shapes::ShapeRef.new(shape: RecommendationRelatedEvents, location_name: "RelatedEvents"))
    Recommendation.add_member(:related_anomalies, Shapes::ShapeRef.new(shape: RecommendationRelatedAnomalies, location_name: "RelatedAnomalies"))
    Recommendation.add_member(:category, Shapes::ShapeRef.new(shape: RecommendationCategory, location_name: "Category"))
    Recommendation.struct_class = Types::Recommendation

    RecommendationRelatedAnomalies.member = Shapes::ShapeRef.new(shape: RecommendationRelatedAnomaly)

    RecommendationRelatedAnomaly.add_member(:resources, Shapes::ShapeRef.new(shape: RecommendationRelatedAnomalyResources, location_name: "Resources"))
    RecommendationRelatedAnomaly.add_member(:source_details, Shapes::ShapeRef.new(shape: RelatedAnomalySourceDetails, location_name: "SourceDetails"))
    RecommendationRelatedAnomaly.add_member(:anomaly_id, Shapes::ShapeRef.new(shape: AnomalyId, location_name: "AnomalyId"))
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
    ResourceCollection.add_member(:tags, Shapes::ShapeRef.new(shape: TagCollections, location_name: "Tags"))
    ResourceCollection.struct_class = Types::ResourceCollection

    ResourceCollectionFilter.add_member(:cloud_formation, Shapes::ShapeRef.new(shape: CloudFormationCollectionFilter, location_name: "CloudFormation"))
    ResourceCollectionFilter.add_member(:tags, Shapes::ShapeRef.new(shape: TagCollectionFilters, location_name: "Tags"))
    ResourceCollectionFilter.struct_class = Types::ResourceCollectionFilter

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessageString, required: true, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceIdType, required: true, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceTypeFilters.member = Shapes::ShapeRef.new(shape: ResourceTypeFilter)

    SearchInsightsAccountIdList.member = Shapes::ShapeRef.new(shape: AwsAccountId)

    SearchInsightsFilters.add_member(:severities, Shapes::ShapeRef.new(shape: InsightSeverities, location_name: "Severities"))
    SearchInsightsFilters.add_member(:statuses, Shapes::ShapeRef.new(shape: InsightStatuses, location_name: "Statuses"))
    SearchInsightsFilters.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    SearchInsightsFilters.add_member(:service_collection, Shapes::ShapeRef.new(shape: ServiceCollection, location_name: "ServiceCollection"))
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

    SearchOrganizationInsightsFilters.add_member(:severities, Shapes::ShapeRef.new(shape: InsightSeverities, location_name: "Severities"))
    SearchOrganizationInsightsFilters.add_member(:statuses, Shapes::ShapeRef.new(shape: InsightStatuses, location_name: "Statuses"))
    SearchOrganizationInsightsFilters.add_member(:resource_collection, Shapes::ShapeRef.new(shape: ResourceCollection, location_name: "ResourceCollection"))
    SearchOrganizationInsightsFilters.add_member(:service_collection, Shapes::ShapeRef.new(shape: ServiceCollection, location_name: "ServiceCollection"))
    SearchOrganizationInsightsFilters.struct_class = Types::SearchOrganizationInsightsFilters

    SearchOrganizationInsightsRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: SearchInsightsAccountIdList, required: true, location_name: "AccountIds"))
    SearchOrganizationInsightsRequest.add_member(:start_time_range, Shapes::ShapeRef.new(shape: StartTimeRange, required: true, location_name: "StartTimeRange"))
    SearchOrganizationInsightsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: SearchOrganizationInsightsFilters, location_name: "Filters"))
    SearchOrganizationInsightsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: SearchOrganizationInsightsMaxResults, location_name: "MaxResults"))
    SearchOrganizationInsightsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    SearchOrganizationInsightsRequest.add_member(:type, Shapes::ShapeRef.new(shape: InsightType, required: true, location_name: "Type"))
    SearchOrganizationInsightsRequest.struct_class = Types::SearchOrganizationInsightsRequest

    SearchOrganizationInsightsResponse.add_member(:proactive_insights, Shapes::ShapeRef.new(shape: ProactiveInsights, location_name: "ProactiveInsights"))
    SearchOrganizationInsightsResponse.add_member(:reactive_insights, Shapes::ShapeRef.new(shape: ReactiveInsights, location_name: "ReactiveInsights"))
    SearchOrganizationInsightsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: UuidNextToken, location_name: "NextToken"))
    SearchOrganizationInsightsResponse.struct_class = Types::SearchOrganizationInsightsResponse

    ServiceCollection.add_member(:service_names, Shapes::ShapeRef.new(shape: ServiceNames, location_name: "ServiceNames"))
    ServiceCollection.struct_class = Types::ServiceCollection

    ServiceHealth.add_member(:service_name, Shapes::ShapeRef.new(shape: ServiceName, location_name: "ServiceName"))
    ServiceHealth.add_member(:insight, Shapes::ShapeRef.new(shape: ServiceInsightHealth, location_name: "Insight"))
    ServiceHealth.add_member(:analyzed_resource_count, Shapes::ShapeRef.new(shape: AnalyzedResourceCount, location_name: "AnalyzedResourceCount"))
    ServiceHealth.struct_class = Types::ServiceHealth

    ServiceHealths.member = Shapes::ShapeRef.new(shape: ServiceHealth)

    ServiceInsightHealth.add_member(:open_proactive_insights, Shapes::ShapeRef.new(shape: NumOpenProactiveInsights, location_name: "OpenProactiveInsights"))
    ServiceInsightHealth.add_member(:open_reactive_insights, Shapes::ShapeRef.new(shape: NumOpenReactiveInsights, location_name: "OpenReactiveInsights"))
    ServiceInsightHealth.struct_class = Types::ServiceInsightHealth

    ServiceIntegrationConfig.add_member(:ops_center, Shapes::ShapeRef.new(shape: OpsCenterIntegration, location_name: "OpsCenter"))
    ServiceIntegrationConfig.add_member(:logs_anomaly_detection, Shapes::ShapeRef.new(shape: LogsAnomalyDetectionIntegration, location_name: "LogsAnomalyDetection"))
    ServiceIntegrationConfig.add_member(:kms_server_side_encryption, Shapes::ShapeRef.new(shape: KMSServerSideEncryptionIntegration, location_name: "KMSServerSideEncryption"))
    ServiceIntegrationConfig.struct_class = Types::ServiceIntegrationConfig

    ServiceNames.member = Shapes::ShapeRef.new(shape: ServiceName)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessageString, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ServiceResourceCost.add_member(:type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "Type"))
    ServiceResourceCost.add_member(:state, Shapes::ShapeRef.new(shape: CostEstimationServiceResourceState, location_name: "State"))
    ServiceResourceCost.add_member(:count, Shapes::ShapeRef.new(shape: CostEstimationServiceResourceCount, location_name: "Count"))
    ServiceResourceCost.add_member(:unit_cost, Shapes::ShapeRef.new(shape: Cost, location_name: "UnitCost"))
    ServiceResourceCost.add_member(:cost, Shapes::ShapeRef.new(shape: Cost, location_name: "Cost"))
    ServiceResourceCost.struct_class = Types::ServiceResourceCost

    ServiceResourceCosts.member = Shapes::ShapeRef.new(shape: ServiceResourceCost)

    SnsChannelConfig.add_member(:topic_arn, Shapes::ShapeRef.new(shape: TopicArn, location_name: "TopicArn"))
    SnsChannelConfig.struct_class = Types::SnsChannelConfig

    StackNames.member = Shapes::ShapeRef.new(shape: StackName)

    StartCostEstimationRequest.add_member(:resource_collection, Shapes::ShapeRef.new(shape: CostEstimationResourceCollectionFilter, required: true, location_name: "ResourceCollection"))
    StartCostEstimationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    StartCostEstimationRequest.struct_class = Types::StartCostEstimationRequest

    StartCostEstimationResponse.struct_class = Types::StartCostEstimationResponse

    StartTimeRange.add_member(:from_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "FromTime"))
    StartTimeRange.add_member(:to_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ToTime"))
    StartTimeRange.struct_class = Types::StartTimeRange

    TagCollection.add_member(:app_boundary_key, Shapes::ShapeRef.new(shape: AppBoundaryKey, required: true, location_name: "AppBoundaryKey"))
    TagCollection.add_member(:tag_values, Shapes::ShapeRef.new(shape: TagValues, required: true, location_name: "TagValues"))
    TagCollection.struct_class = Types::TagCollection

    TagCollectionFilter.add_member(:app_boundary_key, Shapes::ShapeRef.new(shape: AppBoundaryKey, required: true, location_name: "AppBoundaryKey"))
    TagCollectionFilter.add_member(:tag_values, Shapes::ShapeRef.new(shape: TagValues, required: true, location_name: "TagValues"))
    TagCollectionFilter.struct_class = Types::TagCollectionFilter

    TagCollectionFilters.member = Shapes::ShapeRef.new(shape: TagCollectionFilter)

    TagCollections.member = Shapes::ShapeRef.new(shape: TagCollection)

    TagCostEstimationResourceCollectionFilter.add_member(:app_boundary_key, Shapes::ShapeRef.new(shape: AppBoundaryKey, required: true, location_name: "AppBoundaryKey"))
    TagCostEstimationResourceCollectionFilter.add_member(:tag_values, Shapes::ShapeRef.new(shape: CostEstimationTagValues, required: true, location_name: "TagValues"))
    TagCostEstimationResourceCollectionFilter.struct_class = Types::TagCostEstimationResourceCollectionFilter

    TagCostEstimationResourceCollectionFilters.member = Shapes::ShapeRef.new(shape: TagCostEstimationResourceCollectionFilter)

    TagHealth.add_member(:app_boundary_key, Shapes::ShapeRef.new(shape: AppBoundaryKey, location_name: "AppBoundaryKey"))
    TagHealth.add_member(:tag_value, Shapes::ShapeRef.new(shape: TagValue, location_name: "TagValue"))
    TagHealth.add_member(:insight, Shapes::ShapeRef.new(shape: InsightHealth, location_name: "Insight"))
    TagHealth.add_member(:analyzed_resource_count, Shapes::ShapeRef.new(shape: AnalyzedResourceCount, location_name: "AnalyzedResourceCount"))
    TagHealth.struct_class = Types::TagHealth

    TagHealths.member = Shapes::ShapeRef.new(shape: TagHealth)

    TagValues.member = Shapes::ShapeRef.new(shape: TagValue)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessageString, required: true, location_name: "Message"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: ErrorQuotaCodeString, location_name: "QuotaCode"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: ErrorServiceCodeString, location_name: "ServiceCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TimestampMetricValuePair.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    TimestampMetricValuePair.add_member(:metric_value, Shapes::ShapeRef.new(shape: MetricValue, location_name: "MetricValue"))
    TimestampMetricValuePair.struct_class = Types::TimestampMetricValuePair

    TimestampMetricValuePairList.member = Shapes::ShapeRef.new(shape: TimestampMetricValuePair)

    UpdateCloudFormationCollectionFilter.add_member(:stack_names, Shapes::ShapeRef.new(shape: UpdateStackNames, location_name: "StackNames"))
    UpdateCloudFormationCollectionFilter.struct_class = Types::UpdateCloudFormationCollectionFilter

    UpdateEventSourcesConfigRequest.add_member(:event_sources, Shapes::ShapeRef.new(shape: EventSourcesConfig, location_name: "EventSources"))
    UpdateEventSourcesConfigRequest.struct_class = Types::UpdateEventSourcesConfigRequest

    UpdateEventSourcesConfigResponse.struct_class = Types::UpdateEventSourcesConfigResponse

    UpdateResourceCollectionFilter.add_member(:cloud_formation, Shapes::ShapeRef.new(shape: UpdateCloudFormationCollectionFilter, location_name: "CloudFormation"))
    UpdateResourceCollectionFilter.add_member(:tags, Shapes::ShapeRef.new(shape: UpdateTagCollectionFilters, location_name: "Tags"))
    UpdateResourceCollectionFilter.struct_class = Types::UpdateResourceCollectionFilter

    UpdateResourceCollectionRequest.add_member(:action, Shapes::ShapeRef.new(shape: UpdateResourceCollectionAction, required: true, location_name: "Action"))
    UpdateResourceCollectionRequest.add_member(:resource_collection, Shapes::ShapeRef.new(shape: UpdateResourceCollectionFilter, required: true, location_name: "ResourceCollection"))
    UpdateResourceCollectionRequest.struct_class = Types::UpdateResourceCollectionRequest

    UpdateResourceCollectionResponse.struct_class = Types::UpdateResourceCollectionResponse

    UpdateServiceIntegrationConfig.add_member(:ops_center, Shapes::ShapeRef.new(shape: OpsCenterIntegrationConfig, location_name: "OpsCenter"))
    UpdateServiceIntegrationConfig.add_member(:logs_anomaly_detection, Shapes::ShapeRef.new(shape: LogsAnomalyDetectionIntegrationConfig, location_name: "LogsAnomalyDetection"))
    UpdateServiceIntegrationConfig.add_member(:kms_server_side_encryption, Shapes::ShapeRef.new(shape: KMSServerSideEncryptionIntegrationConfig, location_name: "KMSServerSideEncryption"))
    UpdateServiceIntegrationConfig.struct_class = Types::UpdateServiceIntegrationConfig

    UpdateServiceIntegrationRequest.add_member(:service_integration, Shapes::ShapeRef.new(shape: UpdateServiceIntegrationConfig, required: true, location_name: "ServiceIntegration"))
    UpdateServiceIntegrationRequest.struct_class = Types::UpdateServiceIntegrationRequest

    UpdateServiceIntegrationResponse.struct_class = Types::UpdateServiceIntegrationResponse

    UpdateStackNames.member = Shapes::ShapeRef.new(shape: StackName)

    UpdateTagCollectionFilter.add_member(:app_boundary_key, Shapes::ShapeRef.new(shape: AppBoundaryKey, required: true, location_name: "AppBoundaryKey"))
    UpdateTagCollectionFilter.add_member(:tag_values, Shapes::ShapeRef.new(shape: UpdateTagValues, required: true, location_name: "TagValues"))
    UpdateTagCollectionFilter.struct_class = Types::UpdateTagCollectionFilter

    UpdateTagCollectionFilters.member = Shapes::ShapeRef.new(shape: UpdateTagCollectionFilter)

    UpdateTagValues.member = Shapes::ShapeRef.new(shape: TagValue)

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

      api.add_operation(:delete_insight, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInsight"
        o.http_method = "DELETE"
        o.http_request_uri = "/insights/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteInsightRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInsightResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:describe_event_sources_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEventSourcesConfig"
        o.http_method = "POST"
        o.http_request_uri = "/event-sources"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventSourcesConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEventSourcesConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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

      api.add_operation(:describe_organization_health, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOrganizationHealth"
        o.http_method = "POST"
        o.http_request_uri = "/organization/health"
        o.input = Shapes::ShapeRef.new(shape: DescribeOrganizationHealthRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeOrganizationHealthResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_organization_overview, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOrganizationOverview"
        o.http_method = "POST"
        o.http_request_uri = "/organization/overview"
        o.input = Shapes::ShapeRef.new(shape: DescribeOrganizationOverviewRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeOrganizationOverviewResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_organization_resource_collection_health, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOrganizationResourceCollectionHealth"
        o.http_method = "POST"
        o.http_request_uri = "/organization/health/resource-collection"
        o.input = Shapes::ShapeRef.new(shape: DescribeOrganizationResourceCollectionHealthRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeOrganizationResourceCollectionHealthResponse)
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
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_cost_estimation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCostEstimation"
        o.http_method = "GET"
        o.http_request_uri = "/cost-estimation"
        o.input = Shapes::ShapeRef.new(shape: GetCostEstimationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCostEstimationResponse)
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

      api.add_operation(:list_anomalous_log_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAnomalousLogGroups"
        o.http_method = "POST"
        o.http_request_uri = "/list-log-anomalies"
        o.input = Shapes::ShapeRef.new(shape: ListAnomalousLogGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAnomalousLogGroupsResponse)
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

      api.add_operation(:list_monitored_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMonitoredResources"
        o.http_method = "POST"
        o.http_request_uri = "/monitoredResources"
        o.input = Shapes::ShapeRef.new(shape: ListMonitoredResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMonitoredResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:list_organization_insights, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOrganizationInsights"
        o.http_method = "POST"
        o.http_request_uri = "/organization/insights"
        o.input = Shapes::ShapeRef.new(shape: ListOrganizationInsightsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOrganizationInsightsResponse)
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

      api.add_operation(:search_organization_insights, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchOrganizationInsights"
        o.http_method = "POST"
        o.http_request_uri = "/organization/insights/search"
        o.input = Shapes::ShapeRef.new(shape: SearchOrganizationInsightsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchOrganizationInsightsResponse)
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

      api.add_operation(:start_cost_estimation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartCostEstimation"
        o.http_method = "PUT"
        o.http_request_uri = "/cost-estimation"
        o.input = Shapes::ShapeRef.new(shape: StartCostEstimationRequest)
        o.output = Shapes::ShapeRef.new(shape: StartCostEstimationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_event_sources_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEventSourcesConfig"
        o.http_method = "PUT"
        o.http_request_uri = "/event-sources"
        o.input = Shapes::ShapeRef.new(shape: UpdateEventSourcesConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEventSourcesConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
