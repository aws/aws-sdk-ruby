# frozen_string_literal: true

# This is generated code!

module Aws::DevOpsGuru
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountHealth = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#AccountHealth", name: "AccountHealth")
    AccountHealths = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#AccountHealths", name: "AccountHealths")
    AccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#AccountIdList", name: "AccountIdList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    AccountInsightHealth = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#AccountInsightHealth", name: "AccountInsightHealth")
    AddNotificationChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#AddNotificationChannelRequest", name: "AddNotificationChannelRequest")
    AddNotificationChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#AddNotificationChannelResponse", name: "AddNotificationChannelResponse")
    AmazonCodeGuruProfilerIntegration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#AmazonCodeGuruProfilerIntegration", name: "AmazonCodeGuruProfilerIntegration")
    AnalyzedResourceCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.devopsguru#AnalyzedResourceCount", name: "AnalyzedResourceCount")
    AnomalousLogGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#AnomalousLogGroup", name: "AnomalousLogGroup")
    AnomalousLogGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#AnomalousLogGroups", name: "AnomalousLogGroups")
    AnomalyDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#AnomalyDescription", name: "AnomalyDescription")
    AnomalyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#AnomalyId", name: "AnomalyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[\\w~.-]*$"})
    AnomalyLimit = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.devopsguru#AnomalyLimit", name: "AnomalyLimit")
    AnomalyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#AnomalyName", name: "AnomalyName")
    AnomalyReportedTimeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#AnomalyReportedTimeRange", name: "AnomalyReportedTimeRange")
    AnomalyResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#AnomalyResource", name: "AnomalyResource")
    AnomalyResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#AnomalyResources", name: "AnomalyResources")
    AnomalySeverity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsguru#AnomalySeverity", name: "AnomalySeverity")
    AnomalySource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#AnomalySource", name: "AnomalySource")
    AnomalySourceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#AnomalySourceDetails", name: "AnomalySourceDetails")
    AnomalySourceMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#AnomalySourceMetadata", name: "AnomalySourceMetadata")
    AnomalyStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsguru#AnomalyStatus", name: "AnomalyStatus")
    AnomalyTimeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#AnomalyTimeRange", name: "AnomalyTimeRange")
    AnomalyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsguru#AnomalyType", name: "AnomalyType")
    AppBoundaryKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#AppBoundaryKey", name: "AppBoundaryKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    AssociatedResourceArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#AssociatedResourceArns", name: "AssociatedResourceArns")
    AwsAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#AwsAccountId", name: "AwsAccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    Channels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#Channels", name: "Channels")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9]+[a-zA-Z0-9-]*$"})
    CloudFormationCollection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#CloudFormationCollection", name: "CloudFormationCollection")
    CloudFormationCollectionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#CloudFormationCollectionFilter", name: "CloudFormationCollectionFilter")
    CloudFormationCostEstimationResourceCollectionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#CloudFormationCostEstimationResourceCollectionFilter", name: "CloudFormationCostEstimationResourceCollectionFilter")
    CloudFormationHealth = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#CloudFormationHealth", name: "CloudFormationHealth")
    CloudFormationHealths = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#CloudFormationHealths", name: "CloudFormationHealths")
    CloudWatchMetricDataStatusCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsguru#CloudWatchMetricDataStatusCode", name: "CloudWatchMetricDataStatusCode")
    CloudWatchMetricsDataSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#CloudWatchMetricsDataSummary", name: "CloudWatchMetricsDataSummary")
    CloudWatchMetricsDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#CloudWatchMetricsDetail", name: "CloudWatchMetricsDetail")
    CloudWatchMetricsDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#CloudWatchMetricsDetails", name: "CloudWatchMetricsDetails")
    CloudWatchMetricsDimension = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#CloudWatchMetricsDimension", name: "CloudWatchMetricsDimension")
    CloudWatchMetricsDimensionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#CloudWatchMetricsDimensionName", name: "CloudWatchMetricsDimensionName")
    CloudWatchMetricsDimensionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#CloudWatchMetricsDimensionValue", name: "CloudWatchMetricsDimensionValue")
    CloudWatchMetricsDimensions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#CloudWatchMetricsDimensions", name: "CloudWatchMetricsDimensions")
    CloudWatchMetricsMetricName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#CloudWatchMetricsMetricName", name: "CloudWatchMetricsMetricName")
    CloudWatchMetricsNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#CloudWatchMetricsNamespace", name: "CloudWatchMetricsNamespace")
    CloudWatchMetricsPeriod = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.devopsguru#CloudWatchMetricsPeriod", name: "CloudWatchMetricsPeriod", traits: {"smithy.api#default" => 0})
    CloudWatchMetricsStat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsguru#CloudWatchMetricsStat", name: "CloudWatchMetricsStat")
    CloudWatchMetricsUnit = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#CloudWatchMetricsUnit", name: "CloudWatchMetricsUnit")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Cost = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.devopsguru#Cost", name: "Cost", traits: {"smithy.api#default" => 0})
    CostEstimationResourceCollectionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#CostEstimationResourceCollectionFilter", name: "CostEstimationResourceCollectionFilter")
    CostEstimationServiceResourceCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.devopsguru#CostEstimationServiceResourceCount", name: "CostEstimationServiceResourceCount", traits: {"smithy.api#default" => 0})
    CostEstimationServiceResourceState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsguru#CostEstimationServiceResourceState", name: "CostEstimationServiceResourceState")
    CostEstimationStackNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#CostEstimationStackNames", name: "CostEstimationStackNames", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    CostEstimationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsguru#CostEstimationStatus", name: "CostEstimationStatus")
    CostEstimationTagValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#CostEstimationTagValues", name: "CostEstimationTagValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    CostEstimationTimeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#CostEstimationTimeRange", name: "CostEstimationTimeRange")
    DeleteInsightRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#DeleteInsightRequest", name: "DeleteInsightRequest")
    DeleteInsightResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#DeleteInsightResponse", name: "DeleteInsightResponse")
    DescribeAccountHealthRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#DescribeAccountHealthRequest", name: "DescribeAccountHealthRequest")
    DescribeAccountHealthResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#DescribeAccountHealthResponse", name: "DescribeAccountHealthResponse")
    DescribeAccountOverviewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#DescribeAccountOverviewRequest", name: "DescribeAccountOverviewRequest")
    DescribeAccountOverviewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#DescribeAccountOverviewResponse", name: "DescribeAccountOverviewResponse")
    DescribeAnomalyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#DescribeAnomalyRequest", name: "DescribeAnomalyRequest")
    DescribeAnomalyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#DescribeAnomalyResponse", name: "DescribeAnomalyResponse")
    DescribeEventSourcesConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#DescribeEventSourcesConfigRequest", name: "DescribeEventSourcesConfigRequest")
    DescribeEventSourcesConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#DescribeEventSourcesConfigResponse", name: "DescribeEventSourcesConfigResponse")
    DescribeFeedbackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#DescribeFeedbackRequest", name: "DescribeFeedbackRequest")
    DescribeFeedbackResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#DescribeFeedbackResponse", name: "DescribeFeedbackResponse")
    DescribeInsightRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#DescribeInsightRequest", name: "DescribeInsightRequest")
    DescribeInsightResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#DescribeInsightResponse", name: "DescribeInsightResponse")
    DescribeOrganizationHealthRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#DescribeOrganizationHealthRequest", name: "DescribeOrganizationHealthRequest")
    DescribeOrganizationHealthResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#DescribeOrganizationHealthResponse", name: "DescribeOrganizationHealthResponse")
    DescribeOrganizationOverviewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#DescribeOrganizationOverviewRequest", name: "DescribeOrganizationOverviewRequest")
    DescribeOrganizationOverviewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#DescribeOrganizationOverviewResponse", name: "DescribeOrganizationOverviewResponse")
    DescribeOrganizationResourceCollectionHealthRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#DescribeOrganizationResourceCollectionHealthRequest", name: "DescribeOrganizationResourceCollectionHealthRequest")
    DescribeOrganizationResourceCollectionHealthResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#DescribeOrganizationResourceCollectionHealthResponse", name: "DescribeOrganizationResourceCollectionHealthResponse")
    DescribeResourceCollectionHealthRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#DescribeResourceCollectionHealthRequest", name: "DescribeResourceCollectionHealthRequest")
    DescribeResourceCollectionHealthResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#DescribeResourceCollectionHealthResponse", name: "DescribeResourceCollectionHealthResponse")
    DescribeServiceIntegrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#DescribeServiceIntegrationRequest", name: "DescribeServiceIntegrationRequest")
    DescribeServiceIntegrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#DescribeServiceIntegrationResponse", name: "DescribeServiceIntegrationResponse")
    EndTimeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#EndTimeRange", name: "EndTimeRange")
    ErrorMessageString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#ErrorMessageString", name: "ErrorMessageString")
    ErrorNameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#ErrorNameString", name: "ErrorNameString")
    ErrorQuotaCodeString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#ErrorQuotaCodeString", name: "ErrorQuotaCodeString")
    ErrorServiceCodeString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#ErrorServiceCodeString", name: "ErrorServiceCodeString")
    Event = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#Event", name: "Event")
    EventClass = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsguru#EventClass", name: "EventClass")
    EventDataSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsguru#EventDataSource", name: "EventDataSource")
    EventId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#EventId", name: "EventId")
    EventName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#EventName", name: "EventName", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    EventResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#EventResource", name: "EventResource")
    EventResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#EventResourceArn", name: "EventResourceArn", traits: {"smithy.api#length" => {"min" => 36, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z]*:[a-z0-9-]*:[a-z0-9-]*:\\d{12}:.*$"})
    EventResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#EventResourceName", name: "EventResourceName", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^.*$"})
    EventResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#EventResourceType", name: "EventResourceType", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^.*$"})
    EventResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#EventResources", name: "EventResources")
    EventSource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#EventSource", name: "EventSource", traits: {"smithy.api#length" => {"min" => 10, "max" => 50}, "smithy.api#pattern" => "^[a-z]+[a-z0-9]*\\.amazonaws\\.com|aws\\.events$"})
    EventSourceOptInStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsguru#EventSourceOptInStatus", name: "EventSourceOptInStatus")
    EventSourcesConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#EventSourcesConfig", name: "EventSourcesConfig")
    EventTimeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#EventTimeRange", name: "EventTimeRange")
    Events = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#Events", name: "Events")
    Explanation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#Explanation", name: "Explanation", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    GetCostEstimationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#GetCostEstimationRequest", name: "GetCostEstimationRequest")
    GetCostEstimationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#GetCostEstimationResponse", name: "GetCostEstimationResponse")
    GetResourceCollectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#GetResourceCollectionRequest", name: "GetResourceCollectionRequest")
    GetResourceCollectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#GetResourceCollectionResponse", name: "GetResourceCollectionResponse")
    InsightDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#InsightDescription", name: "InsightDescription")
    InsightFeedback = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#InsightFeedback", name: "InsightFeedback")
    InsightFeedbackOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsguru#InsightFeedbackOption", name: "InsightFeedbackOption")
    InsightHealth = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#InsightHealth", name: "InsightHealth")
    InsightId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#InsightId", name: "InsightId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[\\w-]*$"})
    InsightName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#InsightName", name: "InsightName", traits: {"smithy.api#length" => {"min" => 1, "max" => 530}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    InsightSeverities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#InsightSeverities", name: "InsightSeverities", traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    InsightSeverity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsguru#InsightSeverity", name: "InsightSeverity")
    InsightStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsguru#InsightStatus", name: "InsightStatus")
    InsightStatuses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#InsightStatuses", name: "InsightStatuses", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    InsightTimeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#InsightTimeRange", name: "InsightTimeRange")
    InsightType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsguru#InsightType", name: "InsightType")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KMSKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#KMSKeyId", name: "KMSKeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^.*$"})
    KMSServerSideEncryptionIntegration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#KMSServerSideEncryptionIntegration", name: "KMSServerSideEncryptionIntegration")
    KMSServerSideEncryptionIntegrationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#KMSServerSideEncryptionIntegrationConfig", name: "KMSServerSideEncryptionIntegrationConfig")
    ListAnomaliesForInsightFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ListAnomaliesForInsightFilters", name: "ListAnomaliesForInsightFilters")
    ListAnomaliesForInsightMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.devopsguru#ListAnomaliesForInsightMaxResults", name: "ListAnomaliesForInsightMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    ListAnomaliesForInsightRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ListAnomaliesForInsightRequest", name: "ListAnomaliesForInsightRequest")
    ListAnomaliesForInsightResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ListAnomaliesForInsightResponse", name: "ListAnomaliesForInsightResponse")
    ListAnomalousLogGroupsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.devopsguru#ListAnomalousLogGroupsMaxResults", name: "ListAnomalousLogGroupsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 200}})
    ListAnomalousLogGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ListAnomalousLogGroupsRequest", name: "ListAnomalousLogGroupsRequest")
    ListAnomalousLogGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ListAnomalousLogGroupsResponse", name: "ListAnomalousLogGroupsResponse")
    ListEventsFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ListEventsFilters", name: "ListEventsFilters")
    ListEventsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.devopsguru#ListEventsMaxResults", name: "ListEventsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 200}})
    ListEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ListEventsRequest", name: "ListEventsRequest")
    ListEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ListEventsResponse", name: "ListEventsResponse")
    ListInsightsAccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#ListInsightsAccountIdList", name: "ListInsightsAccountIdList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    ListInsightsAnyStatusFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ListInsightsAnyStatusFilter", name: "ListInsightsAnyStatusFilter")
    ListInsightsClosedStatusFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ListInsightsClosedStatusFilter", name: "ListInsightsClosedStatusFilter")
    ListInsightsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.devopsguru#ListInsightsMaxResults", name: "ListInsightsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListInsightsOngoingStatusFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ListInsightsOngoingStatusFilter", name: "ListInsightsOngoingStatusFilter")
    ListInsightsOrganizationalUnitIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#ListInsightsOrganizationalUnitIdList", name: "ListInsightsOrganizationalUnitIdList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    ListInsightsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ListInsightsRequest", name: "ListInsightsRequest")
    ListInsightsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ListInsightsResponse", name: "ListInsightsResponse")
    ListInsightsStatusFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ListInsightsStatusFilter", name: "ListInsightsStatusFilter")
    ListMonitoredResourcesFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ListMonitoredResourcesFilters", name: "ListMonitoredResourcesFilters")
    ListMonitoredResourcesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.devopsguru#ListMonitoredResourcesMaxResults", name: "ListMonitoredResourcesMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListMonitoredResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ListMonitoredResourcesRequest", name: "ListMonitoredResourcesRequest")
    ListMonitoredResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ListMonitoredResourcesResponse", name: "ListMonitoredResourcesResponse")
    ListNotificationChannelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ListNotificationChannelsRequest", name: "ListNotificationChannelsRequest")
    ListNotificationChannelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ListNotificationChannelsResponse", name: "ListNotificationChannelsResponse")
    ListOrganizationInsightsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ListOrganizationInsightsRequest", name: "ListOrganizationInsightsRequest")
    ListOrganizationInsightsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ListOrganizationInsightsResponse", name: "ListOrganizationInsightsResponse")
    ListRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ListRecommendationsRequest", name: "ListRecommendationsRequest")
    ListRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ListRecommendationsResponse", name: "ListRecommendationsResponse")
    Locale = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsguru#Locale", name: "Locale")
    LogAnomalyClass = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#LogAnomalyClass", name: "LogAnomalyClass")
    LogAnomalyClasses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#LogAnomalyClasses", name: "LogAnomalyClasses", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    LogAnomalyShowcase = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#LogAnomalyShowcase", name: "LogAnomalyShowcase")
    LogAnomalyShowcases = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#LogAnomalyShowcases", name: "LogAnomalyShowcases", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    LogAnomalyToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#LogAnomalyToken", name: "LogAnomalyToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    LogAnomalyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsguru#LogAnomalyType", name: "LogAnomalyType")
    LogEventId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#LogEventId", name: "LogEventId", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    LogGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#LogGroupName", name: "LogGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    LogStreamName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#LogStreamName", name: "LogStreamName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    LogsAnomalyDetectionIntegration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#LogsAnomalyDetectionIntegration", name: "LogsAnomalyDetectionIntegration")
    LogsAnomalyDetectionIntegrationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#LogsAnomalyDetectionIntegrationConfig", name: "LogsAnomalyDetectionIntegrationConfig")
    MeanTimeToRecoverInMilliseconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.devopsguru#MeanTimeToRecoverInMilliseconds", name: "MeanTimeToRecoverInMilliseconds")
    MetricValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.devopsguru#MetricValue", name: "MetricValue")
    MonitoredResourceIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#MonitoredResourceIdentifier", name: "MonitoredResourceIdentifier")
    MonitoredResourceIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#MonitoredResourceIdentifiers", name: "MonitoredResourceIdentifiers")
    MonitoredResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#MonitoredResourceName", name: "MonitoredResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\.\\-_\\/#A-Za-z0-9]+$"})
    NotificationChannel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#NotificationChannel", name: "NotificationChannel")
    NotificationChannelConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#NotificationChannelConfig", name: "NotificationChannelConfig")
    NotificationChannelId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#NotificationChannelId", name: "NotificationChannelId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    NotificationFilterConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#NotificationFilterConfig", name: "NotificationFilterConfig")
    NotificationMessageType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsguru#NotificationMessageType", name: "NotificationMessageType")
    NotificationMessageTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#NotificationMessageTypes", name: "NotificationMessageTypes", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    NumMetricsAnalyzed = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.devopsguru#NumMetricsAnalyzed", name: "NumMetricsAnalyzed", traits: {"smithy.api#default" => 0})
    NumOpenProactiveInsights = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.devopsguru#NumOpenProactiveInsights", name: "NumOpenProactiveInsights", traits: {"smithy.api#default" => 0})
    NumOpenReactiveInsights = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.devopsguru#NumOpenReactiveInsights", name: "NumOpenReactiveInsights", traits: {"smithy.api#default" => 0})
    NumProactiveInsights = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.devopsguru#NumProactiveInsights", name: "NumProactiveInsights", traits: {"smithy.api#default" => 0})
    NumReactiveInsights = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.devopsguru#NumReactiveInsights", name: "NumReactiveInsights", traits: {"smithy.api#default" => 0})
    NumberOfLogLinesOccurrences = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.devopsguru#NumberOfLogLinesOccurrences", name: "NumberOfLogLinesOccurrences", traits: {"smithy.api#default" => 0})
    NumberOfLogLinesScanned = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.devopsguru#NumberOfLogLinesScanned", name: "NumberOfLogLinesScanned", traits: {"smithy.api#default" => 0})
    OpsCenterIntegration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#OpsCenterIntegration", name: "OpsCenterIntegration")
    OpsCenterIntegrationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#OpsCenterIntegrationConfig", name: "OpsCenterIntegrationConfig")
    OptInStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsguru#OptInStatus", name: "OptInStatus")
    OrganizationResourceCollectionMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.devopsguru#OrganizationResourceCollectionMaxResults", name: "OrganizationResourceCollectionMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    OrganizationResourceCollectionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsguru#OrganizationResourceCollectionType", name: "OrganizationResourceCollectionType")
    OrganizationalUnitId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#OrganizationalUnitId", name: "OrganizationalUnitId", traits: {"smithy.api#length" => {"min" => 0, "max" => 68}, "smithy.api#pattern" => "^ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}$"})
    OrganizationalUnitIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#OrganizationalUnitIdList", name: "OrganizationalUnitIdList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    PerformanceInsightsMetricDimension = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#PerformanceInsightsMetricDimension", name: "PerformanceInsightsMetricDimension")
    PerformanceInsightsMetricDimensionGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#PerformanceInsightsMetricDimensionGroup", name: "PerformanceInsightsMetricDimensionGroup")
    PerformanceInsightsMetricDimensions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#PerformanceInsightsMetricDimensions", name: "PerformanceInsightsMetricDimensions")
    PerformanceInsightsMetricDisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#PerformanceInsightsMetricDisplayName", name: "PerformanceInsightsMetricDisplayName")
    PerformanceInsightsMetricFilterKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#PerformanceInsightsMetricFilterKey", name: "PerformanceInsightsMetricFilterKey")
    PerformanceInsightsMetricFilterMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.devopsguru#PerformanceInsightsMetricFilterMap", name: "PerformanceInsightsMetricFilterMap")
    PerformanceInsightsMetricFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#PerformanceInsightsMetricFilterValue", name: "PerformanceInsightsMetricFilterValue")
    PerformanceInsightsMetricGroup = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#PerformanceInsightsMetricGroup", name: "PerformanceInsightsMetricGroup")
    PerformanceInsightsMetricLimitInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.devopsguru#PerformanceInsightsMetricLimitInteger", name: "PerformanceInsightsMetricLimitInteger", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    PerformanceInsightsMetricName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#PerformanceInsightsMetricName", name: "PerformanceInsightsMetricName")
    PerformanceInsightsMetricQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#PerformanceInsightsMetricQuery", name: "PerformanceInsightsMetricQuery")
    PerformanceInsightsMetricUnit = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#PerformanceInsightsMetricUnit", name: "PerformanceInsightsMetricUnit")
    PerformanceInsightsMetricsDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#PerformanceInsightsMetricsDetail", name: "PerformanceInsightsMetricsDetail")
    PerformanceInsightsMetricsDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#PerformanceInsightsMetricsDetails", name: "PerformanceInsightsMetricsDetails")
    PerformanceInsightsReferenceComparisonValues = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#PerformanceInsightsReferenceComparisonValues", name: "PerformanceInsightsReferenceComparisonValues")
    PerformanceInsightsReferenceData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#PerformanceInsightsReferenceData", name: "PerformanceInsightsReferenceData")
    PerformanceInsightsReferenceDataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#PerformanceInsightsReferenceDataList", name: "PerformanceInsightsReferenceDataList")
    PerformanceInsightsReferenceMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#PerformanceInsightsReferenceMetric", name: "PerformanceInsightsReferenceMetric")
    PerformanceInsightsReferenceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#PerformanceInsightsReferenceName", name: "PerformanceInsightsReferenceName")
    PerformanceInsightsReferenceScalar = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#PerformanceInsightsReferenceScalar", name: "PerformanceInsightsReferenceScalar")
    PerformanceInsightsStat = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#PerformanceInsightsStat", name: "PerformanceInsightsStat")
    PerformanceInsightsStatType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#PerformanceInsightsStatType", name: "PerformanceInsightsStatType")
    PerformanceInsightsStats = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#PerformanceInsightsStats", name: "PerformanceInsightsStats")
    PerformanceInsightsValueDouble = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.devopsguru#PerformanceInsightsValueDouble", name: "PerformanceInsightsValueDouble")
    PredictionTimeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#PredictionTimeRange", name: "PredictionTimeRange")
    ProactiveAnomalies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#ProactiveAnomalies", name: "ProactiveAnomalies")
    ProactiveAnomaly = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ProactiveAnomaly", name: "ProactiveAnomaly")
    ProactiveAnomalySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ProactiveAnomalySummary", name: "ProactiveAnomalySummary")
    ProactiveInsight = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ProactiveInsight", name: "ProactiveInsight")
    ProactiveInsightSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ProactiveInsightSummary", name: "ProactiveInsightSummary")
    ProactiveInsights = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#ProactiveInsights", name: "ProactiveInsights")
    ProactiveOrganizationInsightSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ProactiveOrganizationInsightSummary", name: "ProactiveOrganizationInsightSummary")
    ProactiveOrganizationInsights = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#ProactiveOrganizationInsights", name: "ProactiveOrganizationInsights")
    PutFeedbackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#PutFeedbackRequest", name: "PutFeedbackRequest")
    PutFeedbackResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#PutFeedbackResponse", name: "PutFeedbackResponse")
    ReactiveAnomalies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#ReactiveAnomalies", name: "ReactiveAnomalies")
    ReactiveAnomaly = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ReactiveAnomaly", name: "ReactiveAnomaly")
    ReactiveAnomalySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ReactiveAnomalySummary", name: "ReactiveAnomalySummary")
    ReactiveInsight = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ReactiveInsight", name: "ReactiveInsight")
    ReactiveInsightSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ReactiveInsightSummary", name: "ReactiveInsightSummary")
    ReactiveInsights = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#ReactiveInsights", name: "ReactiveInsights")
    ReactiveOrganizationInsightSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ReactiveOrganizationInsightSummary", name: "ReactiveOrganizationInsightSummary")
    ReactiveOrganizationInsights = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#ReactiveOrganizationInsights", name: "ReactiveOrganizationInsights")
    Recommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#Recommendation", name: "Recommendation")
    RecommendationCategory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#RecommendationCategory", name: "RecommendationCategory")
    RecommendationDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#RecommendationDescription", name: "RecommendationDescription")
    RecommendationLink = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#RecommendationLink", name: "RecommendationLink")
    RecommendationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#RecommendationName", name: "RecommendationName")
    RecommendationReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#RecommendationReason", name: "RecommendationReason")
    RecommendationRelatedAnomalies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#RecommendationRelatedAnomalies", name: "RecommendationRelatedAnomalies")
    RecommendationRelatedAnomaly = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#RecommendationRelatedAnomaly", name: "RecommendationRelatedAnomaly")
    RecommendationRelatedAnomalyResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#RecommendationRelatedAnomalyResource", name: "RecommendationRelatedAnomalyResource")
    RecommendationRelatedAnomalyResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#RecommendationRelatedAnomalyResourceName", name: "RecommendationRelatedAnomalyResourceName")
    RecommendationRelatedAnomalyResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#RecommendationRelatedAnomalyResourceType", name: "RecommendationRelatedAnomalyResourceType")
    RecommendationRelatedAnomalyResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#RecommendationRelatedAnomalyResources", name: "RecommendationRelatedAnomalyResources")
    RecommendationRelatedAnomalySourceDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#RecommendationRelatedAnomalySourceDetail", name: "RecommendationRelatedAnomalySourceDetail")
    RecommendationRelatedCloudWatchMetricsSourceDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#RecommendationRelatedCloudWatchMetricsSourceDetail", name: "RecommendationRelatedCloudWatchMetricsSourceDetail")
    RecommendationRelatedCloudWatchMetricsSourceDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#RecommendationRelatedCloudWatchMetricsSourceDetails", name: "RecommendationRelatedCloudWatchMetricsSourceDetails")
    RecommendationRelatedCloudWatchMetricsSourceMetricName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#RecommendationRelatedCloudWatchMetricsSourceMetricName", name: "RecommendationRelatedCloudWatchMetricsSourceMetricName")
    RecommendationRelatedCloudWatchMetricsSourceNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#RecommendationRelatedCloudWatchMetricsSourceNamespace", name: "RecommendationRelatedCloudWatchMetricsSourceNamespace")
    RecommendationRelatedEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#RecommendationRelatedEvent", name: "RecommendationRelatedEvent")
    RecommendationRelatedEventName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#RecommendationRelatedEventName", name: "RecommendationRelatedEventName")
    RecommendationRelatedEventResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#RecommendationRelatedEventResource", name: "RecommendationRelatedEventResource")
    RecommendationRelatedEventResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#RecommendationRelatedEventResourceName", name: "RecommendationRelatedEventResourceName")
    RecommendationRelatedEventResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#RecommendationRelatedEventResourceType", name: "RecommendationRelatedEventResourceType")
    RecommendationRelatedEventResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#RecommendationRelatedEventResources", name: "RecommendationRelatedEventResources")
    RecommendationRelatedEvents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#RecommendationRelatedEvents", name: "RecommendationRelatedEvents")
    Recommendations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#Recommendations", name: "Recommendations", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    RelatedAnomalySourceDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#RelatedAnomalySourceDetails", name: "RelatedAnomalySourceDetails")
    RemoveNotificationChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#RemoveNotificationChannelRequest", name: "RemoveNotificationChannelRequest")
    RemoveNotificationChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#RemoveNotificationChannelResponse", name: "RemoveNotificationChannelResponse")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    ResourceCollection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ResourceCollection", name: "ResourceCollection")
    ResourceCollectionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ResourceCollectionFilter", name: "ResourceCollectionFilter")
    ResourceCollectionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsguru#ResourceCollectionType", name: "ResourceCollectionType")
    ResourceHours = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.devopsguru#ResourceHours", name: "ResourceHours")
    ResourceIdString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#ResourceIdString", name: "ResourceIdString")
    ResourceIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#ResourceIdType", name: "ResourceIdType")
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#ResourceName", name: "ResourceName")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePermission = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsguru#ResourcePermission", name: "ResourcePermission")
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#ResourceType", name: "ResourceType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z]+[a-zA-Z0-9-_:]*$"})
    ResourceTypeFilter = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsguru#ResourceTypeFilter", name: "ResourceTypeFilter")
    ResourceTypeFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#ResourceTypeFilters", name: "ResourceTypeFilters")
    RetryAfterSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.devopsguru#RetryAfterSeconds", name: "RetryAfterSeconds", traits: {"smithy.api#default" => 0})
    SearchInsightsAccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#SearchInsightsAccountIdList", name: "SearchInsightsAccountIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    SearchInsightsFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#SearchInsightsFilters", name: "SearchInsightsFilters")
    SearchInsightsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.devopsguru#SearchInsightsMaxResults", name: "SearchInsightsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    SearchInsightsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#SearchInsightsRequest", name: "SearchInsightsRequest")
    SearchInsightsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#SearchInsightsResponse", name: "SearchInsightsResponse")
    SearchOrganizationInsightsFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#SearchOrganizationInsightsFilters", name: "SearchOrganizationInsightsFilters")
    SearchOrganizationInsightsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.devopsguru#SearchOrganizationInsightsMaxResults", name: "SearchOrganizationInsightsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    SearchOrganizationInsightsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#SearchOrganizationInsightsRequest", name: "SearchOrganizationInsightsRequest")
    SearchOrganizationInsightsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#SearchOrganizationInsightsResponse", name: "SearchOrganizationInsightsResponse")
    ServerSideEncryptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsguru#ServerSideEncryptionType", name: "ServerSideEncryptionType")
    ServiceCollection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ServiceCollection", name: "ServiceCollection")
    ServiceHealth = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ServiceHealth", name: "ServiceHealth")
    ServiceHealths = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#ServiceHealths", name: "ServiceHealths")
    ServiceInsightHealth = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ServiceInsightHealth", name: "ServiceInsightHealth")
    ServiceIntegrationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ServiceIntegrationConfig", name: "ServiceIntegrationConfig")
    ServiceName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsguru#ServiceName", name: "ServiceName")
    ServiceNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#ServiceNames", name: "ServiceNames")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceResourceCost = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ServiceResourceCost", name: "ServiceResourceCost")
    ServiceResourceCosts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#ServiceResourceCosts", name: "ServiceResourceCosts")
    SnsChannelConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#SnsChannelConfig", name: "SnsChannelConfig")
    SsmOpsItemId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#SsmOpsItemId", name: "SsmOpsItemId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^.*$"})
    StackName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#StackName", name: "StackName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z*]+[a-zA-Z0-9-]*$"})
    StackNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#StackNames", name: "StackNames")
    StartCostEstimationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#StartCostEstimationRequest", name: "StartCostEstimationRequest")
    StartCostEstimationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#StartCostEstimationResponse", name: "StartCostEstimationResponse")
    StartTimeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#StartTimeRange", name: "StartTimeRange")
    TagCollection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#TagCollection", name: "TagCollection")
    TagCollectionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#TagCollectionFilter", name: "TagCollectionFilter")
    TagCollectionFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#TagCollectionFilters", name: "TagCollectionFilters")
    TagCollections = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#TagCollections", name: "TagCollections")
    TagCostEstimationResourceCollectionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#TagCostEstimationResourceCollectionFilter", name: "TagCostEstimationResourceCollectionFilter")
    TagCostEstimationResourceCollectionFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#TagCostEstimationResourceCollectionFilters", name: "TagCostEstimationResourceCollectionFilters")
    TagHealth = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#TagHealth", name: "TagHealth")
    TagHealths = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#TagHealths", name: "TagHealths")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*|\\*)$"})
    TagValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#TagValues", name: "TagValues")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.devopsguru#Timestamp", name: "Timestamp")
    TimestampMetricValuePair = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#TimestampMetricValuePair", name: "TimestampMetricValuePair")
    TimestampMetricValuePairList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#TimestampMetricValuePairList", name: "TimestampMetricValuePairList")
    TopicArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#TopicArn", name: "TopicArn", traits: {"smithy.api#length" => {"min" => 36, "max" => 1024}, "smithy.api#pattern" => "^arn:aws[a-z0-9-]*:sns:[a-z0-9-]+:\\d{12}:[^:]+$"})
    UpdateCloudFormationCollectionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#UpdateCloudFormationCollectionFilter", name: "UpdateCloudFormationCollectionFilter")
    UpdateEventSourcesConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#UpdateEventSourcesConfigRequest", name: "UpdateEventSourcesConfigRequest")
    UpdateEventSourcesConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#UpdateEventSourcesConfigResponse", name: "UpdateEventSourcesConfigResponse")
    UpdateResourceCollectionAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsguru#UpdateResourceCollectionAction", name: "UpdateResourceCollectionAction")
    UpdateResourceCollectionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#UpdateResourceCollectionFilter", name: "UpdateResourceCollectionFilter")
    UpdateResourceCollectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#UpdateResourceCollectionRequest", name: "UpdateResourceCollectionRequest")
    UpdateResourceCollectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#UpdateResourceCollectionResponse", name: "UpdateResourceCollectionResponse")
    UpdateServiceIntegrationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#UpdateServiceIntegrationConfig", name: "UpdateServiceIntegrationConfig")
    UpdateServiceIntegrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#UpdateServiceIntegrationRequest", name: "UpdateServiceIntegrationRequest")
    UpdateServiceIntegrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#UpdateServiceIntegrationResponse", name: "UpdateServiceIntegrationResponse")
    UpdateStackNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#UpdateStackNames", name: "UpdateStackNames", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    UpdateTagCollectionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#UpdateTagCollectionFilter", name: "UpdateTagCollectionFilter")
    UpdateTagCollectionFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#UpdateTagCollectionFilters", name: "UpdateTagCollectionFilters")
    UpdateTagValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#UpdateTagValues", name: "UpdateTagValues", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    UuidNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsguru#UuidNextToken", name: "UuidNextToken", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsguru#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsguru#ValidationExceptionFields", name: "ValidationExceptionFields")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsguru#ValidationExceptionReason", name: "ValidationExceptionReason")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageString, name: "Message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountHealth.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "AccountId"))
    AccountHealth.add_member(:insight, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountInsightHealth, name: "Insight"))
    AccountHealth.type = Types::AccountHealth
    AccountHealths.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountHealth, name: "member"))
    AccountIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "member"))
    AccountInsightHealth.add_member(:open_proactive_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: NumOpenProactiveInsights, name: "OpenProactiveInsights", traits: {"smithy.api#default" => 0}))
    AccountInsightHealth.add_member(:open_reactive_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: NumOpenReactiveInsights, name: "OpenReactiveInsights", traits: {"smithy.api#default" => 0}))
    AccountInsightHealth.type = Types::AccountInsightHealth
    AddNotificationChannelRequest.add_member(:config, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationChannelConfig, name: "Config", traits: {"smithy.api#required" => {}}))
    AddNotificationChannelRequest.type = Types::AddNotificationChannelRequest
    AddNotificationChannelResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationChannelId, name: "Id", traits: {"smithy.api#required" => {}}))
    AddNotificationChannelResponse.type = Types::AddNotificationChannelResponse
    AmazonCodeGuruProfilerIntegration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceOptInStatus, name: "Status"))
    AmazonCodeGuruProfilerIntegration.type = Types::AmazonCodeGuruProfilerIntegration
    AnomalousLogGroup.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, name: "LogGroupName"))
    AnomalousLogGroup.add_member(:impact_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ImpactStartTime"))
    AnomalousLogGroup.add_member(:impact_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ImpactEndTime"))
    AnomalousLogGroup.add_member(:number_of_log_lines_scanned, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfLogLinesScanned, name: "NumberOfLogLinesScanned", traits: {"smithy.api#default" => 0}))
    AnomalousLogGroup.add_member(:log_anomaly_showcases, ::Smithy::Schema::Shapes::MemberShape.new(target: LogAnomalyShowcases, name: "LogAnomalyShowcases"))
    AnomalousLogGroup.type = Types::AnomalousLogGroup
    AnomalousLogGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalousLogGroup, name: "member"))
    AnomalyReportedTimeRange.add_member(:open_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "OpenTime", traits: {"smithy.api#required" => {}}))
    AnomalyReportedTimeRange.add_member(:close_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CloseTime"))
    AnomalyReportedTimeRange.type = Types::AnomalyReportedTimeRange
    AnomalyResource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name"))
    AnomalyResource.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "Type"))
    AnomalyResource.type = Types::AnomalyResource
    AnomalyResources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyResource, name: "member"))
    AnomalySeverity.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    AnomalySeverity.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    AnomalySeverity.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    AnomalySourceDetails.add_member(:cloud_watch_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchMetricsDetails, name: "CloudWatchMetrics"))
    AnomalySourceDetails.add_member(:performance_insights_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceInsightsMetricsDetails, name: "PerformanceInsightsMetrics"))
    AnomalySourceDetails.type = Types::AnomalySourceDetails
    AnomalySourceMetadata.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalySource, name: "Source"))
    AnomalySourceMetadata.add_member(:source_resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "SourceResourceName"))
    AnomalySourceMetadata.add_member(:source_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "SourceResourceType"))
    AnomalySourceMetadata.type = Types::AnomalySourceMetadata
    AnomalyStatus.add_member(:ongoing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONGOING", traits: {"smithy.api#enumValue" => "ONGOING"}))
    AnomalyStatus.add_member(:closed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOSED", traits: {"smithy.api#enumValue" => "CLOSED"}))
    AnomalyTimeRange.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime", traits: {"smithy.api#required" => {}}))
    AnomalyTimeRange.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    AnomalyTimeRange.type = Types::AnomalyTimeRange
    AnomalyType.add_member(:causal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAUSAL", traits: {"smithy.api#enumValue" => "CAUSAL"}))
    AnomalyType.add_member(:contextual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTEXTUAL", traits: {"smithy.api#enumValue" => "CONTEXTUAL"}))
    AssociatedResourceArns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "member"))
    Channels.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationChannel, name: "member"))
    CloudFormationCollection.add_member(:stack_names, ::Smithy::Schema::Shapes::MemberShape.new(target: StackNames, name: "StackNames"))
    CloudFormationCollection.type = Types::CloudFormationCollection
    CloudFormationCollectionFilter.add_member(:stack_names, ::Smithy::Schema::Shapes::MemberShape.new(target: StackNames, name: "StackNames"))
    CloudFormationCollectionFilter.type = Types::CloudFormationCollectionFilter
    CloudFormationCostEstimationResourceCollectionFilter.add_member(:stack_names, ::Smithy::Schema::Shapes::MemberShape.new(target: CostEstimationStackNames, name: "StackNames"))
    CloudFormationCostEstimationResourceCollectionFilter.type = Types::CloudFormationCostEstimationResourceCollectionFilter
    CloudFormationHealth.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackName, name: "StackName"))
    CloudFormationHealth.add_member(:insight, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightHealth, name: "Insight"))
    CloudFormationHealth.add_member(:analyzed_resource_count, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzedResourceCount, name: "AnalyzedResourceCount"))
    CloudFormationHealth.type = Types::CloudFormationHealth
    CloudFormationHealths.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudFormationHealth, name: "member"))
    CloudWatchMetricDataStatusCode.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "Complete"}))
    CloudWatchMetricDataStatusCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "InternalError"}))
    CloudWatchMetricDataStatusCode.add_member(:partial_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTIAL_DATA", traits: {"smithy.api#enumValue" => "PartialData"}))
    CloudWatchMetricsDataSummary.add_member(:timestamp_metric_value_pair_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampMetricValuePairList, name: "TimestampMetricValuePairList"))
    CloudWatchMetricsDataSummary.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchMetricDataStatusCode, name: "StatusCode"))
    CloudWatchMetricsDataSummary.type = Types::CloudWatchMetricsDataSummary
    CloudWatchMetricsDetail.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchMetricsMetricName, name: "MetricName"))
    CloudWatchMetricsDetail.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchMetricsNamespace, name: "Namespace"))
    CloudWatchMetricsDetail.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchMetricsDimensions, name: "Dimensions"))
    CloudWatchMetricsDetail.add_member(:stat, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchMetricsStat, name: "Stat"))
    CloudWatchMetricsDetail.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchMetricsUnit, name: "Unit"))
    CloudWatchMetricsDetail.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchMetricsPeriod, name: "Period", traits: {"smithy.api#default" => 0}))
    CloudWatchMetricsDetail.add_member(:metric_data_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchMetricsDataSummary, name: "MetricDataSummary"))
    CloudWatchMetricsDetail.type = Types::CloudWatchMetricsDetail
    CloudWatchMetricsDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchMetricsDetail, name: "member"))
    CloudWatchMetricsDimension.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchMetricsDimensionName, name: "Name"))
    CloudWatchMetricsDimension.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchMetricsDimensionValue, name: "Value"))
    CloudWatchMetricsDimension.type = Types::CloudWatchMetricsDimension
    CloudWatchMetricsDimensions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchMetricsDimension, name: "member"))
    CloudWatchMetricsStat.add_member(:sum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUM", traits: {"smithy.api#enumValue" => "Sum"}))
    CloudWatchMetricsStat.add_member(:average, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVERAGE", traits: {"smithy.api#enumValue" => "Average"}))
    CloudWatchMetricsStat.add_member(:sample_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAMPLE_COUNT", traits: {"smithy.api#enumValue" => "SampleCount"}))
    CloudWatchMetricsStat.add_member(:minimum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MINIMUM", traits: {"smithy.api#enumValue" => "Minimum"}))
    CloudWatchMetricsStat.add_member(:maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAXIMUM", traits: {"smithy.api#enumValue" => "Maximum"}))
    CloudWatchMetricsStat.add_member(:p99, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "P99", traits: {"smithy.api#enumValue" => "p99"}))
    CloudWatchMetricsStat.add_member(:p90, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "P90", traits: {"smithy.api#enumValue" => "p90"}))
    CloudWatchMetricsStat.add_member(:p50, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "P50", traits: {"smithy.api#enumValue" => "p50"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageString, name: "Message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CostEstimationResourceCollectionFilter.add_member(:cloud_formation, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudFormationCostEstimationResourceCollectionFilter, name: "CloudFormation"))
    CostEstimationResourceCollectionFilter.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagCostEstimationResourceCollectionFilters, name: "Tags"))
    CostEstimationResourceCollectionFilter.type = Types::CostEstimationResourceCollectionFilter
    CostEstimationServiceResourceState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    CostEstimationServiceResourceState.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    CostEstimationStackNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StackName, name: "member"))
    CostEstimationStatus.add_member(:ongoing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONGOING", traits: {"smithy.api#enumValue" => "ONGOING"}))
    CostEstimationStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    CostEstimationTagValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "member"))
    CostEstimationTimeRange.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime"))
    CostEstimationTimeRange.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    CostEstimationTimeRange.type = Types::CostEstimationTimeRange
    DeleteInsightRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteInsightRequest.type = Types::DeleteInsightRequest
    DeleteInsightResponse.type = Types::DeleteInsightResponse
    DescribeAccountHealthRequest.type = Types::DescribeAccountHealthRequest
    DescribeAccountHealthResponse.add_member(:open_reactive_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: NumOpenReactiveInsights, name: "OpenReactiveInsights", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DescribeAccountHealthResponse.add_member(:open_proactive_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: NumOpenProactiveInsights, name: "OpenProactiveInsights", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DescribeAccountHealthResponse.add_member(:metrics_analyzed, ::Smithy::Schema::Shapes::MemberShape.new(target: NumMetricsAnalyzed, name: "MetricsAnalyzed", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DescribeAccountHealthResponse.add_member(:resource_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceHours, name: "ResourceHours", traits: {"smithy.api#required" => {}}))
    DescribeAccountHealthResponse.add_member(:analyzed_resource_count, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzedResourceCount, name: "AnalyzedResourceCount"))
    DescribeAccountHealthResponse.type = Types::DescribeAccountHealthResponse
    DescribeAccountOverviewRequest.add_member(:from_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "FromTime", traits: {"smithy.api#required" => {}}))
    DescribeAccountOverviewRequest.add_member(:to_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ToTime"))
    DescribeAccountOverviewRequest.type = Types::DescribeAccountOverviewRequest
    DescribeAccountOverviewResponse.add_member(:reactive_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: NumReactiveInsights, name: "ReactiveInsights", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DescribeAccountOverviewResponse.add_member(:proactive_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: NumProactiveInsights, name: "ProactiveInsights", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DescribeAccountOverviewResponse.add_member(:mean_time_to_recover_in_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MeanTimeToRecoverInMilliseconds, name: "MeanTimeToRecoverInMilliseconds", traits: {"smithy.api#required" => {}}))
    DescribeAccountOverviewResponse.type = Types::DescribeAccountOverviewResponse
    DescribeAnomalyRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAnomalyRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "AccountId", traits: {"smithy.api#httpQuery" => "AccountId"}))
    DescribeAnomalyRequest.type = Types::DescribeAnomalyRequest
    DescribeAnomalyResponse.add_member(:proactive_anomaly, ::Smithy::Schema::Shapes::MemberShape.new(target: ProactiveAnomaly, name: "ProactiveAnomaly"))
    DescribeAnomalyResponse.add_member(:reactive_anomaly, ::Smithy::Schema::Shapes::MemberShape.new(target: ReactiveAnomaly, name: "ReactiveAnomaly"))
    DescribeAnomalyResponse.type = Types::DescribeAnomalyResponse
    DescribeEventSourcesConfigRequest.type = Types::DescribeEventSourcesConfigRequest
    DescribeEventSourcesConfigResponse.add_member(:event_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourcesConfig, name: "EventSources"))
    DescribeEventSourcesConfigResponse.type = Types::DescribeEventSourcesConfigResponse
    DescribeFeedbackRequest.add_member(:insight_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightId, name: "InsightId"))
    DescribeFeedbackRequest.type = Types::DescribeFeedbackRequest
    DescribeFeedbackResponse.add_member(:insight_feedback, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightFeedback, name: "InsightFeedback"))
    DescribeFeedbackResponse.type = Types::DescribeFeedbackResponse
    DescribeInsightRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeInsightRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "AccountId", traits: {"smithy.api#httpQuery" => "AccountId"}))
    DescribeInsightRequest.type = Types::DescribeInsightRequest
    DescribeInsightResponse.add_member(:proactive_insight, ::Smithy::Schema::Shapes::MemberShape.new(target: ProactiveInsight, name: "ProactiveInsight"))
    DescribeInsightResponse.add_member(:reactive_insight, ::Smithy::Schema::Shapes::MemberShape.new(target: ReactiveInsight, name: "ReactiveInsight"))
    DescribeInsightResponse.type = Types::DescribeInsightResponse
    DescribeOrganizationHealthRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "AccountIds"))
    DescribeOrganizationHealthRequest.add_member(:organizational_unit_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitIdList, name: "OrganizationalUnitIds"))
    DescribeOrganizationHealthRequest.type = Types::DescribeOrganizationHealthRequest
    DescribeOrganizationHealthResponse.add_member(:open_reactive_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: NumOpenReactiveInsights, name: "OpenReactiveInsights", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DescribeOrganizationHealthResponse.add_member(:open_proactive_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: NumOpenProactiveInsights, name: "OpenProactiveInsights", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DescribeOrganizationHealthResponse.add_member(:metrics_analyzed, ::Smithy::Schema::Shapes::MemberShape.new(target: NumMetricsAnalyzed, name: "MetricsAnalyzed", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DescribeOrganizationHealthResponse.add_member(:resource_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceHours, name: "ResourceHours", traits: {"smithy.api#required" => {}}))
    DescribeOrganizationHealthResponse.type = Types::DescribeOrganizationHealthResponse
    DescribeOrganizationOverviewRequest.add_member(:from_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "FromTime", traits: {"smithy.api#required" => {}}))
    DescribeOrganizationOverviewRequest.add_member(:to_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ToTime"))
    DescribeOrganizationOverviewRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "AccountIds"))
    DescribeOrganizationOverviewRequest.add_member(:organizational_unit_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitIdList, name: "OrganizationalUnitIds"))
    DescribeOrganizationOverviewRequest.type = Types::DescribeOrganizationOverviewRequest
    DescribeOrganizationOverviewResponse.add_member(:reactive_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: NumReactiveInsights, name: "ReactiveInsights", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DescribeOrganizationOverviewResponse.add_member(:proactive_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: NumProactiveInsights, name: "ProactiveInsights", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DescribeOrganizationOverviewResponse.type = Types::DescribeOrganizationOverviewResponse
    DescribeOrganizationResourceCollectionHealthRequest.add_member(:organization_resource_collection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationResourceCollectionType, name: "OrganizationResourceCollectionType", traits: {"smithy.api#required" => {}}))
    DescribeOrganizationResourceCollectionHealthRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "AccountIds"))
    DescribeOrganizationResourceCollectionHealthRequest.add_member(:organizational_unit_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitIdList, name: "OrganizationalUnitIds"))
    DescribeOrganizationResourceCollectionHealthRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidNextToken, name: "NextToken"))
    DescribeOrganizationResourceCollectionHealthRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationResourceCollectionMaxResults, name: "MaxResults"))
    DescribeOrganizationResourceCollectionHealthRequest.type = Types::DescribeOrganizationResourceCollectionHealthRequest
    DescribeOrganizationResourceCollectionHealthResponse.add_member(:cloud_formation, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudFormationHealths, name: "CloudFormation"))
    DescribeOrganizationResourceCollectionHealthResponse.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceHealths, name: "Service"))
    DescribeOrganizationResourceCollectionHealthResponse.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountHealths, name: "Account"))
    DescribeOrganizationResourceCollectionHealthResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidNextToken, name: "NextToken"))
    DescribeOrganizationResourceCollectionHealthResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagHealths, name: "Tags"))
    DescribeOrganizationResourceCollectionHealthResponse.type = Types::DescribeOrganizationResourceCollectionHealthResponse
    DescribeResourceCollectionHealthRequest.add_member(:resource_collection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCollectionType, name: "ResourceCollectionType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeResourceCollectionHealthRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidNextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    DescribeResourceCollectionHealthRequest.type = Types::DescribeResourceCollectionHealthRequest
    DescribeResourceCollectionHealthResponse.add_member(:cloud_formation, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudFormationHealths, name: "CloudFormation"))
    DescribeResourceCollectionHealthResponse.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceHealths, name: "Service"))
    DescribeResourceCollectionHealthResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidNextToken, name: "NextToken"))
    DescribeResourceCollectionHealthResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagHealths, name: "Tags"))
    DescribeResourceCollectionHealthResponse.type = Types::DescribeResourceCollectionHealthResponse
    DescribeServiceIntegrationRequest.type = Types::DescribeServiceIntegrationRequest
    DescribeServiceIntegrationResponse.add_member(:service_integration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceIntegrationConfig, name: "ServiceIntegration"))
    DescribeServiceIntegrationResponse.type = Types::DescribeServiceIntegrationResponse
    EndTimeRange.add_member(:from_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "FromTime"))
    EndTimeRange.add_member(:to_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ToTime"))
    EndTimeRange.type = Types::EndTimeRange
    Event.add_member(:resource_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCollection, name: "ResourceCollection"))
    Event.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "Id"))
    Event.add_member(:time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Time"))
    Event.add_member(:event_source, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSource, name: "EventSource"))
    Event.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventName, name: "Name"))
    Event.add_member(:data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataSource, name: "DataSource"))
    Event.add_member(:event_class, ::Smithy::Schema::Shapes::MemberShape.new(target: EventClass, name: "EventClass"))
    Event.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: EventResources, name: "Resources"))
    Event.type = Types::Event
    EventClass.add_member(:infrastructure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFRASTRUCTURE", traits: {"smithy.api#enumValue" => "INFRASTRUCTURE"}))
    EventClass.add_member(:deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPLOYMENT", traits: {"smithy.api#enumValue" => "DEPLOYMENT"}))
    EventClass.add_member(:security_change, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECURITY_CHANGE", traits: {"smithy.api#enumValue" => "SECURITY_CHANGE"}))
    EventClass.add_member(:config_change, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIG_CHANGE", traits: {"smithy.api#enumValue" => "CONFIG_CHANGE"}))
    EventClass.add_member(:schema_change, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEMA_CHANGE", traits: {"smithy.api#enumValue" => "SCHEMA_CHANGE"}))
    EventDataSource.add_member(:aws_cloud_trail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_CLOUD_TRAIL", traits: {"smithy.api#enumValue" => "AWS_CLOUD_TRAIL"}))
    EventDataSource.add_member(:aws_code_deploy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_CODE_DEPLOY", traits: {"smithy.api#enumValue" => "AWS_CODE_DEPLOY"}))
    EventResource.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventResourceType, name: "Type"))
    EventResource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventResourceName, name: "Name"))
    EventResource.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventResourceArn, name: "Arn"))
    EventResource.type = Types::EventResource
    EventResources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventResource, name: "member"))
    EventSourceOptInStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    EventSourceOptInStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    EventSourcesConfig.add_member(:amazon_code_guru_profiler, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonCodeGuruProfilerIntegration, name: "AmazonCodeGuruProfiler"))
    EventSourcesConfig.type = Types::EventSourcesConfig
    EventTimeRange.add_member(:from_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "FromTime", traits: {"smithy.api#required" => {}}))
    EventTimeRange.add_member(:to_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ToTime", traits: {"smithy.api#required" => {}}))
    EventTimeRange.type = Types::EventTimeRange
    Events.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Event, name: "member"))
    GetCostEstimationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidNextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    GetCostEstimationRequest.type = Types::GetCostEstimationRequest
    GetCostEstimationResponse.add_member(:resource_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: CostEstimationResourceCollectionFilter, name: "ResourceCollection"))
    GetCostEstimationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CostEstimationStatus, name: "Status"))
    GetCostEstimationResponse.add_member(:costs, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceResourceCosts, name: "Costs"))
    GetCostEstimationResponse.add_member(:time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: CostEstimationTimeRange, name: "TimeRange"))
    GetCostEstimationResponse.add_member(:total_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: Cost, name: "TotalCost", traits: {"smithy.api#default" => 0}))
    GetCostEstimationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidNextToken, name: "NextToken"))
    GetCostEstimationResponse.type = Types::GetCostEstimationResponse
    GetResourceCollectionRequest.add_member(:resource_collection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCollectionType, name: "ResourceCollectionType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourceCollectionRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidNextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    GetResourceCollectionRequest.type = Types::GetResourceCollectionRequest
    GetResourceCollectionResponse.add_member(:resource_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCollectionFilter, name: "ResourceCollection"))
    GetResourceCollectionResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidNextToken, name: "NextToken"))
    GetResourceCollectionResponse.type = Types::GetResourceCollectionResponse
    InsightFeedback.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightId, name: "Id"))
    InsightFeedback.add_member(:feedback, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightFeedbackOption, name: "Feedback"))
    InsightFeedback.type = Types::InsightFeedback
    InsightFeedbackOption.add_member(:valid_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALID_COLLECTION", traits: {"smithy.api#enumValue" => "VALID_COLLECTION"}))
    InsightFeedbackOption.add_member(:recommendation_useful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_USEFUL", traits: {"smithy.api#enumValue" => "RECOMMENDATION_USEFUL"}))
    InsightFeedbackOption.add_member(:alert_too_sensitive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALERT_TOO_SENSITIVE", traits: {"smithy.api#enumValue" => "ALERT_TOO_SENSITIVE"}))
    InsightFeedbackOption.add_member(:data_noisy_anomaly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA_NOISY_ANOMALY", traits: {"smithy.api#enumValue" => "DATA_NOISY_ANOMALY"}))
    InsightFeedbackOption.add_member(:data_incorrect, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA_INCORRECT", traits: {"smithy.api#enumValue" => "DATA_INCORRECT"}))
    InsightHealth.add_member(:open_proactive_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: NumOpenProactiveInsights, name: "OpenProactiveInsights", traits: {"smithy.api#default" => 0}))
    InsightHealth.add_member(:open_reactive_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: NumOpenReactiveInsights, name: "OpenReactiveInsights", traits: {"smithy.api#default" => 0}))
    InsightHealth.add_member(:mean_time_to_recover_in_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MeanTimeToRecoverInMilliseconds, name: "MeanTimeToRecoverInMilliseconds"))
    InsightHealth.type = Types::InsightHealth
    InsightSeverities.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightSeverity, name: "member"))
    InsightSeverity.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    InsightSeverity.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    InsightSeverity.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    InsightStatus.add_member(:ongoing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONGOING", traits: {"smithy.api#enumValue" => "ONGOING"}))
    InsightStatus.add_member(:closed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOSED", traits: {"smithy.api#enumValue" => "CLOSED"}))
    InsightStatuses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightStatus, name: "member"))
    InsightTimeRange.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime", traits: {"smithy.api#required" => {}}))
    InsightTimeRange.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    InsightTimeRange.type = Types::InsightTimeRange
    InsightType.add_member(:reactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REACTIVE", traits: {"smithy.api#enumValue" => "REACTIVE"}))
    InsightType.add_member(:proactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROACTIVE", traits: {"smithy.api#enumValue" => "PROACTIVE"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageString, name: "Message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryAfterSeconds, name: "RetryAfterSeconds", traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    KMSServerSideEncryptionIntegration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyId, name: "KMSKeyId"))
    KMSServerSideEncryptionIntegration.add_member(:opt_in_status, ::Smithy::Schema::Shapes::MemberShape.new(target: OptInStatus, name: "OptInStatus"))
    KMSServerSideEncryptionIntegration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryptionType, name: "Type"))
    KMSServerSideEncryptionIntegration.type = Types::KMSServerSideEncryptionIntegration
    KMSServerSideEncryptionIntegrationConfig.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyId, name: "KMSKeyId"))
    KMSServerSideEncryptionIntegrationConfig.add_member(:opt_in_status, ::Smithy::Schema::Shapes::MemberShape.new(target: OptInStatus, name: "OptInStatus"))
    KMSServerSideEncryptionIntegrationConfig.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryptionType, name: "Type"))
    KMSServerSideEncryptionIntegrationConfig.type = Types::KMSServerSideEncryptionIntegrationConfig
    ListAnomaliesForInsightFilters.add_member(:service_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCollection, name: "ServiceCollection"))
    ListAnomaliesForInsightFilters.type = Types::ListAnomaliesForInsightFilters
    ListAnomaliesForInsightRequest.add_member(:insight_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightId, name: "InsightId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAnomaliesForInsightRequest.add_member(:start_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTimeRange, name: "StartTimeRange"))
    ListAnomaliesForInsightRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAnomaliesForInsightMaxResults, name: "MaxResults"))
    ListAnomaliesForInsightRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidNextToken, name: "NextToken"))
    ListAnomaliesForInsightRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "AccountId"))
    ListAnomaliesForInsightRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAnomaliesForInsightFilters, name: "Filters"))
    ListAnomaliesForInsightRequest.type = Types::ListAnomaliesForInsightRequest
    ListAnomaliesForInsightResponse.add_member(:proactive_anomalies, ::Smithy::Schema::Shapes::MemberShape.new(target: ProactiveAnomalies, name: "ProactiveAnomalies"))
    ListAnomaliesForInsightResponse.add_member(:reactive_anomalies, ::Smithy::Schema::Shapes::MemberShape.new(target: ReactiveAnomalies, name: "ReactiveAnomalies"))
    ListAnomaliesForInsightResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidNextToken, name: "NextToken"))
    ListAnomaliesForInsightResponse.type = Types::ListAnomaliesForInsightResponse
    ListAnomalousLogGroupsRequest.add_member(:insight_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightId, name: "InsightId", traits: {"smithy.api#required" => {}}))
    ListAnomalousLogGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAnomalousLogGroupsMaxResults, name: "MaxResults"))
    ListAnomalousLogGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidNextToken, name: "NextToken"))
    ListAnomalousLogGroupsRequest.type = Types::ListAnomalousLogGroupsRequest
    ListAnomalousLogGroupsResponse.add_member(:insight_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightId, name: "InsightId", traits: {"smithy.api#required" => {}}))
    ListAnomalousLogGroupsResponse.add_member(:anomalous_log_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalousLogGroups, name: "AnomalousLogGroups", traits: {"smithy.api#required" => {}}))
    ListAnomalousLogGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidNextToken, name: "NextToken"))
    ListAnomalousLogGroupsResponse.type = Types::ListAnomalousLogGroupsResponse
    ListEventsFilters.add_member(:insight_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightId, name: "InsightId"))
    ListEventsFilters.add_member(:event_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTimeRange, name: "EventTimeRange"))
    ListEventsFilters.add_member(:event_class, ::Smithy::Schema::Shapes::MemberShape.new(target: EventClass, name: "EventClass"))
    ListEventsFilters.add_member(:event_source, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSource, name: "EventSource"))
    ListEventsFilters.add_member(:data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataSource, name: "DataSource"))
    ListEventsFilters.add_member(:resource_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCollection, name: "ResourceCollection"))
    ListEventsFilters.type = Types::ListEventsFilters
    ListEventsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListEventsFilters, name: "Filters", traits: {"smithy.api#required" => {}}))
    ListEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListEventsMaxResults, name: "MaxResults"))
    ListEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidNextToken, name: "NextToken"))
    ListEventsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "AccountId"))
    ListEventsRequest.type = Types::ListEventsRequest
    ListEventsResponse.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: Events, name: "Events", traits: {"smithy.api#required" => {}}))
    ListEventsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidNextToken, name: "NextToken"))
    ListEventsResponse.type = Types::ListEventsResponse
    ListInsightsAccountIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "member"))
    ListInsightsAnyStatusFilter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightType, name: "Type", traits: {"smithy.api#required" => {}}))
    ListInsightsAnyStatusFilter.add_member(:start_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTimeRange, name: "StartTimeRange", traits: {"smithy.api#required" => {}}))
    ListInsightsAnyStatusFilter.type = Types::ListInsightsAnyStatusFilter
    ListInsightsClosedStatusFilter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightType, name: "Type", traits: {"smithy.api#required" => {}}))
    ListInsightsClosedStatusFilter.add_member(:end_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: EndTimeRange, name: "EndTimeRange", traits: {"smithy.api#required" => {}}))
    ListInsightsClosedStatusFilter.type = Types::ListInsightsClosedStatusFilter
    ListInsightsOngoingStatusFilter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightType, name: "Type", traits: {"smithy.api#required" => {}}))
    ListInsightsOngoingStatusFilter.type = Types::ListInsightsOngoingStatusFilter
    ListInsightsOrganizationalUnitIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitId, name: "member"))
    ListInsightsRequest.add_member(:status_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ListInsightsStatusFilter, name: "StatusFilter", traits: {"smithy.api#required" => {}}))
    ListInsightsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListInsightsMaxResults, name: "MaxResults"))
    ListInsightsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidNextToken, name: "NextToken"))
    ListInsightsRequest.type = Types::ListInsightsRequest
    ListInsightsResponse.add_member(:proactive_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: ProactiveInsights, name: "ProactiveInsights"))
    ListInsightsResponse.add_member(:reactive_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: ReactiveInsights, name: "ReactiveInsights"))
    ListInsightsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidNextToken, name: "NextToken"))
    ListInsightsResponse.type = Types::ListInsightsResponse
    ListInsightsStatusFilter.add_member(:ongoing, ::Smithy::Schema::Shapes::MemberShape.new(target: ListInsightsOngoingStatusFilter, name: "Ongoing"))
    ListInsightsStatusFilter.add_member(:closed, ::Smithy::Schema::Shapes::MemberShape.new(target: ListInsightsClosedStatusFilter, name: "Closed"))
    ListInsightsStatusFilter.add_member(:any, ::Smithy::Schema::Shapes::MemberShape.new(target: ListInsightsAnyStatusFilter, name: "Any"))
    ListInsightsStatusFilter.type = Types::ListInsightsStatusFilter
    ListMonitoredResourcesFilters.add_member(:resource_permission, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePermission, name: "ResourcePermission", traits: {"smithy.api#required" => {}}))
    ListMonitoredResourcesFilters.add_member(:resource_type_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeFilters, name: "ResourceTypeFilters", traits: {"smithy.api#required" => {}}))
    ListMonitoredResourcesFilters.type = Types::ListMonitoredResourcesFilters
    ListMonitoredResourcesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListMonitoredResourcesFilters, name: "Filters"))
    ListMonitoredResourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListMonitoredResourcesMaxResults, name: "MaxResults"))
    ListMonitoredResourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidNextToken, name: "NextToken"))
    ListMonitoredResourcesRequest.type = Types::ListMonitoredResourcesRequest
    ListMonitoredResourcesResponse.add_member(:monitored_resource_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoredResourceIdentifiers, name: "MonitoredResourceIdentifiers", traits: {"smithy.api#required" => {}}))
    ListMonitoredResourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidNextToken, name: "NextToken"))
    ListMonitoredResourcesResponse.type = Types::ListMonitoredResourcesResponse
    ListNotificationChannelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidNextToken, name: "NextToken"))
    ListNotificationChannelsRequest.type = Types::ListNotificationChannelsRequest
    ListNotificationChannelsResponse.add_member(:channels, ::Smithy::Schema::Shapes::MemberShape.new(target: Channels, name: "Channels"))
    ListNotificationChannelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidNextToken, name: "NextToken"))
    ListNotificationChannelsResponse.type = Types::ListNotificationChannelsResponse
    ListOrganizationInsightsRequest.add_member(:status_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ListInsightsStatusFilter, name: "StatusFilter", traits: {"smithy.api#required" => {}}))
    ListOrganizationInsightsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListInsightsMaxResults, name: "MaxResults"))
    ListOrganizationInsightsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ListInsightsAccountIdList, name: "AccountIds"))
    ListOrganizationInsightsRequest.add_member(:organizational_unit_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ListInsightsOrganizationalUnitIdList, name: "OrganizationalUnitIds"))
    ListOrganizationInsightsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidNextToken, name: "NextToken"))
    ListOrganizationInsightsRequest.type = Types::ListOrganizationInsightsRequest
    ListOrganizationInsightsResponse.add_member(:proactive_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: ProactiveOrganizationInsights, name: "ProactiveInsights"))
    ListOrganizationInsightsResponse.add_member(:reactive_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: ReactiveOrganizationInsights, name: "ReactiveInsights"))
    ListOrganizationInsightsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidNextToken, name: "NextToken"))
    ListOrganizationInsightsResponse.type = Types::ListOrganizationInsightsResponse
    ListRecommendationsRequest.add_member(:insight_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightId, name: "InsightId", traits: {"smithy.api#required" => {}}))
    ListRecommendationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidNextToken, name: "NextToken"))
    ListRecommendationsRequest.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "Locale"))
    ListRecommendationsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "AccountId"))
    ListRecommendationsRequest.type = Types::ListRecommendationsRequest
    ListRecommendationsResponse.add_member(:recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: Recommendations, name: "Recommendations"))
    ListRecommendationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidNextToken, name: "NextToken"))
    ListRecommendationsResponse.type = Types::ListRecommendationsResponse
    Locale.add_member(:de_de, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DE_DE", traits: {"smithy.api#enumValue" => "DE_DE"}))
    Locale.add_member(:en_us, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EN_US", traits: {"smithy.api#enumValue" => "EN_US"}))
    Locale.add_member(:en_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EN_GB", traits: {"smithy.api#enumValue" => "EN_GB"}))
    Locale.add_member(:es_es, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ES_ES", traits: {"smithy.api#enumValue" => "ES_ES"}))
    Locale.add_member(:fr_fr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FR_FR", traits: {"smithy.api#enumValue" => "FR_FR"}))
    Locale.add_member(:it_it, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IT_IT", traits: {"smithy.api#enumValue" => "IT_IT"}))
    Locale.add_member(:ja_jp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JA_JP", traits: {"smithy.api#enumValue" => "JA_JP"}))
    Locale.add_member(:ko_kr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KO_KR", traits: {"smithy.api#enumValue" => "KO_KR"}))
    Locale.add_member(:pt_br, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PT_BR", traits: {"smithy.api#enumValue" => "PT_BR"}))
    Locale.add_member(:zh_cn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZH_CN", traits: {"smithy.api#enumValue" => "ZH_CN"}))
    Locale.add_member(:zh_tw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZH_TW", traits: {"smithy.api#enumValue" => "ZH_TW"}))
    LogAnomalyClass.add_member(:log_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogStreamName, name: "LogStreamName"))
    LogAnomalyClass.add_member(:log_anomaly_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LogAnomalyType, name: "LogAnomalyType"))
    LogAnomalyClass.add_member(:log_anomaly_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LogAnomalyToken, name: "LogAnomalyToken"))
    LogAnomalyClass.add_member(:log_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogEventId, name: "LogEventId"))
    LogAnomalyClass.add_member(:explanation, ::Smithy::Schema::Shapes::MemberShape.new(target: Explanation, name: "Explanation"))
    LogAnomalyClass.add_member(:number_of_log_lines_occurrences, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfLogLinesOccurrences, name: "NumberOfLogLinesOccurrences", traits: {"smithy.api#default" => 0}))
    LogAnomalyClass.add_member(:log_event_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LogEventTimestamp"))
    LogAnomalyClass.type = Types::LogAnomalyClass
    LogAnomalyClasses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LogAnomalyClass, name: "member"))
    LogAnomalyShowcase.add_member(:log_anomaly_classes, ::Smithy::Schema::Shapes::MemberShape.new(target: LogAnomalyClasses, name: "LogAnomalyClasses"))
    LogAnomalyShowcase.type = Types::LogAnomalyShowcase
    LogAnomalyShowcases.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LogAnomalyShowcase, name: "member"))
    LogAnomalyType.add_member(:keyword, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KEYWORD", traits: {"smithy.api#enumValue" => "KEYWORD"}))
    LogAnomalyType.add_member(:keyword_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KEYWORD_TOKEN", traits: {"smithy.api#enumValue" => "KEYWORD_TOKEN"}))
    LogAnomalyType.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FORMAT", traits: {"smithy.api#enumValue" => "FORMAT"}))
    LogAnomalyType.add_member(:http_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP_CODE", traits: {"smithy.api#enumValue" => "HTTP_CODE"}))
    LogAnomalyType.add_member(:block_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLOCK_FORMAT", traits: {"smithy.api#enumValue" => "BLOCK_FORMAT"}))
    LogAnomalyType.add_member(:numerical_point, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMERICAL_POINT", traits: {"smithy.api#enumValue" => "NUMERICAL_POINT"}))
    LogAnomalyType.add_member(:numerical_nan, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMERICAL_NAN", traits: {"smithy.api#enumValue" => "NUMERICAL_NAN"}))
    LogAnomalyType.add_member(:new_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW_FIELD_NAME", traits: {"smithy.api#enumValue" => "NEW_FIELD_NAME"}))
    LogsAnomalyDetectionIntegration.add_member(:opt_in_status, ::Smithy::Schema::Shapes::MemberShape.new(target: OptInStatus, name: "OptInStatus"))
    LogsAnomalyDetectionIntegration.type = Types::LogsAnomalyDetectionIntegration
    LogsAnomalyDetectionIntegrationConfig.add_member(:opt_in_status, ::Smithy::Schema::Shapes::MemberShape.new(target: OptInStatus, name: "OptInStatus"))
    LogsAnomalyDetectionIntegrationConfig.type = Types::LogsAnomalyDetectionIntegrationConfig
    MonitoredResourceIdentifier.add_member(:monitored_resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoredResourceName, name: "MonitoredResourceName"))
    MonitoredResourceIdentifier.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "Type"))
    MonitoredResourceIdentifier.add_member(:resource_permission, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePermission, name: "ResourcePermission"))
    MonitoredResourceIdentifier.add_member(:last_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdated"))
    MonitoredResourceIdentifier.add_member(:resource_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCollection, name: "ResourceCollection"))
    MonitoredResourceIdentifier.type = Types::MonitoredResourceIdentifier
    MonitoredResourceIdentifiers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoredResourceIdentifier, name: "member"))
    NotificationChannel.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationChannelId, name: "Id"))
    NotificationChannel.add_member(:config, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationChannelConfig, name: "Config"))
    NotificationChannel.type = Types::NotificationChannel
    NotificationChannelConfig.add_member(:sns, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsChannelConfig, name: "Sns", traits: {"smithy.api#required" => {}}))
    NotificationChannelConfig.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationFilterConfig, name: "Filters"))
    NotificationChannelConfig.type = Types::NotificationChannelConfig
    NotificationFilterConfig.add_member(:severities, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightSeverities, name: "Severities"))
    NotificationFilterConfig.add_member(:message_types, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationMessageTypes, name: "MessageTypes"))
    NotificationFilterConfig.type = Types::NotificationFilterConfig
    NotificationMessageType.add_member(:new_insight, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW_INSIGHT", traits: {"smithy.api#enumValue" => "NEW_INSIGHT"}))
    NotificationMessageType.add_member(:closed_insight, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOSED_INSIGHT", traits: {"smithy.api#enumValue" => "CLOSED_INSIGHT"}))
    NotificationMessageType.add_member(:new_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW_ASSOCIATION", traits: {"smithy.api#enumValue" => "NEW_ASSOCIATION"}))
    NotificationMessageType.add_member(:severity_upgraded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEVERITY_UPGRADED", traits: {"smithy.api#enumValue" => "SEVERITY_UPGRADED"}))
    NotificationMessageType.add_member(:new_recommendation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW_RECOMMENDATION", traits: {"smithy.api#enumValue" => "NEW_RECOMMENDATION"}))
    NotificationMessageTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationMessageType, name: "member"))
    OpsCenterIntegration.add_member(:opt_in_status, ::Smithy::Schema::Shapes::MemberShape.new(target: OptInStatus, name: "OptInStatus"))
    OpsCenterIntegration.type = Types::OpsCenterIntegration
    OpsCenterIntegrationConfig.add_member(:opt_in_status, ::Smithy::Schema::Shapes::MemberShape.new(target: OptInStatus, name: "OptInStatus"))
    OpsCenterIntegrationConfig.type = Types::OpsCenterIntegrationConfig
    OptInStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    OptInStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    OrganizationResourceCollectionType.add_member(:aws_cloud_formation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_CLOUD_FORMATION", traits: {"smithy.api#enumValue" => "AWS_CLOUD_FORMATION"}))
    OrganizationResourceCollectionType.add_member(:aws_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SERVICE", traits: {"smithy.api#enumValue" => "AWS_SERVICE"}))
    OrganizationResourceCollectionType.add_member(:aws_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_ACCOUNT", traits: {"smithy.api#enumValue" => "AWS_ACCOUNT"}))
    OrganizationResourceCollectionType.add_member(:aws_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_TAGS", traits: {"smithy.api#enumValue" => "AWS_TAGS"}))
    OrganizationalUnitIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitId, name: "member"))
    PerformanceInsightsMetricDimensionGroup.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceInsightsMetricGroup, name: "Group"))
    PerformanceInsightsMetricDimensionGroup.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceInsightsMetricDimensions, name: "Dimensions"))
    PerformanceInsightsMetricDimensionGroup.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceInsightsMetricLimitInteger, name: "Limit"))
    PerformanceInsightsMetricDimensionGroup.type = Types::PerformanceInsightsMetricDimensionGroup
    PerformanceInsightsMetricDimensions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceInsightsMetricDimension, name: "member"))
    PerformanceInsightsMetricFilterMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceInsightsMetricFilterKey, name: "key"))
    PerformanceInsightsMetricFilterMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceInsightsMetricFilterValue, name: "value"))
    PerformanceInsightsMetricQuery.add_member(:metric, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceInsightsMetricName, name: "Metric"))
    PerformanceInsightsMetricQuery.add_member(:group_by, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceInsightsMetricDimensionGroup, name: "GroupBy"))
    PerformanceInsightsMetricQuery.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceInsightsMetricFilterMap, name: "Filter"))
    PerformanceInsightsMetricQuery.type = Types::PerformanceInsightsMetricQuery
    PerformanceInsightsMetricsDetail.add_member(:metric_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceInsightsMetricDisplayName, name: "MetricDisplayName"))
    PerformanceInsightsMetricsDetail.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceInsightsMetricUnit, name: "Unit"))
    PerformanceInsightsMetricsDetail.add_member(:metric_query, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceInsightsMetricQuery, name: "MetricQuery"))
    PerformanceInsightsMetricsDetail.add_member(:reference_data, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceInsightsReferenceDataList, name: "ReferenceData"))
    PerformanceInsightsMetricsDetail.add_member(:stats_at_anomaly, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceInsightsStats, name: "StatsAtAnomaly"))
    PerformanceInsightsMetricsDetail.add_member(:stats_at_baseline, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceInsightsStats, name: "StatsAtBaseline"))
    PerformanceInsightsMetricsDetail.type = Types::PerformanceInsightsMetricsDetail
    PerformanceInsightsMetricsDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceInsightsMetricsDetail, name: "member"))
    PerformanceInsightsReferenceComparisonValues.add_member(:reference_scalar, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceInsightsReferenceScalar, name: "ReferenceScalar"))
    PerformanceInsightsReferenceComparisonValues.add_member(:reference_metric, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceInsightsReferenceMetric, name: "ReferenceMetric"))
    PerformanceInsightsReferenceComparisonValues.type = Types::PerformanceInsightsReferenceComparisonValues
    PerformanceInsightsReferenceData.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceInsightsReferenceName, name: "Name"))
    PerformanceInsightsReferenceData.add_member(:comparison_values, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceInsightsReferenceComparisonValues, name: "ComparisonValues"))
    PerformanceInsightsReferenceData.type = Types::PerformanceInsightsReferenceData
    PerformanceInsightsReferenceDataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceInsightsReferenceData, name: "member"))
    PerformanceInsightsReferenceMetric.add_member(:metric_query, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceInsightsMetricQuery, name: "MetricQuery"))
    PerformanceInsightsReferenceMetric.type = Types::PerformanceInsightsReferenceMetric
    PerformanceInsightsReferenceScalar.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceInsightsValueDouble, name: "Value"))
    PerformanceInsightsReferenceScalar.type = Types::PerformanceInsightsReferenceScalar
    PerformanceInsightsStat.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceInsightsStatType, name: "Type"))
    PerformanceInsightsStat.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceInsightsValueDouble, name: "Value"))
    PerformanceInsightsStat.type = Types::PerformanceInsightsStat
    PerformanceInsightsStats.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceInsightsStat, name: "member"))
    PredictionTimeRange.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime", traits: {"smithy.api#required" => {}}))
    PredictionTimeRange.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    PredictionTimeRange.type = Types::PredictionTimeRange
    ProactiveAnomalies.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProactiveAnomalySummary, name: "member"))
    ProactiveAnomaly.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyId, name: "Id"))
    ProactiveAnomaly.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalySeverity, name: "Severity"))
    ProactiveAnomaly.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyStatus, name: "Status"))
    ProactiveAnomaly.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdateTime"))
    ProactiveAnomaly.add_member(:anomaly_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyTimeRange, name: "AnomalyTimeRange"))
    ProactiveAnomaly.add_member(:anomaly_reported_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyReportedTimeRange, name: "AnomalyReportedTimeRange"))
    ProactiveAnomaly.add_member(:prediction_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictionTimeRange, name: "PredictionTimeRange"))
    ProactiveAnomaly.add_member(:source_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalySourceDetails, name: "SourceDetails"))
    ProactiveAnomaly.add_member(:associated_insight_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightId, name: "AssociatedInsightId"))
    ProactiveAnomaly.add_member(:resource_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCollection, name: "ResourceCollection"))
    ProactiveAnomaly.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyLimit, name: "Limit"))
    ProactiveAnomaly.add_member(:source_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalySourceMetadata, name: "SourceMetadata"))
    ProactiveAnomaly.add_member(:anomaly_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyResources, name: "AnomalyResources"))
    ProactiveAnomaly.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyDescription, name: "Description"))
    ProactiveAnomaly.type = Types::ProactiveAnomaly
    ProactiveAnomalySummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyId, name: "Id"))
    ProactiveAnomalySummary.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalySeverity, name: "Severity"))
    ProactiveAnomalySummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyStatus, name: "Status"))
    ProactiveAnomalySummary.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdateTime"))
    ProactiveAnomalySummary.add_member(:anomaly_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyTimeRange, name: "AnomalyTimeRange"))
    ProactiveAnomalySummary.add_member(:anomaly_reported_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyReportedTimeRange, name: "AnomalyReportedTimeRange"))
    ProactiveAnomalySummary.add_member(:prediction_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictionTimeRange, name: "PredictionTimeRange"))
    ProactiveAnomalySummary.add_member(:source_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalySourceDetails, name: "SourceDetails"))
    ProactiveAnomalySummary.add_member(:associated_insight_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightId, name: "AssociatedInsightId"))
    ProactiveAnomalySummary.add_member(:resource_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCollection, name: "ResourceCollection"))
    ProactiveAnomalySummary.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyLimit, name: "Limit"))
    ProactiveAnomalySummary.add_member(:source_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalySourceMetadata, name: "SourceMetadata"))
    ProactiveAnomalySummary.add_member(:anomaly_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyResources, name: "AnomalyResources"))
    ProactiveAnomalySummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyDescription, name: "Description"))
    ProactiveAnomalySummary.type = Types::ProactiveAnomalySummary
    ProactiveInsight.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightId, name: "Id"))
    ProactiveInsight.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightName, name: "Name"))
    ProactiveInsight.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightSeverity, name: "Severity"))
    ProactiveInsight.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightStatus, name: "Status"))
    ProactiveInsight.add_member(:insight_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightTimeRange, name: "InsightTimeRange"))
    ProactiveInsight.add_member(:prediction_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictionTimeRange, name: "PredictionTimeRange"))
    ProactiveInsight.add_member(:resource_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCollection, name: "ResourceCollection"))
    ProactiveInsight.add_member(:ssm_ops_item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmOpsItemId, name: "SsmOpsItemId"))
    ProactiveInsight.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightDescription, name: "Description"))
    ProactiveInsight.type = Types::ProactiveInsight
    ProactiveInsightSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightId, name: "Id"))
    ProactiveInsightSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightName, name: "Name"))
    ProactiveInsightSummary.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightSeverity, name: "Severity"))
    ProactiveInsightSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightStatus, name: "Status"))
    ProactiveInsightSummary.add_member(:insight_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightTimeRange, name: "InsightTimeRange"))
    ProactiveInsightSummary.add_member(:prediction_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictionTimeRange, name: "PredictionTimeRange"))
    ProactiveInsightSummary.add_member(:resource_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCollection, name: "ResourceCollection"))
    ProactiveInsightSummary.add_member(:service_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCollection, name: "ServiceCollection"))
    ProactiveInsightSummary.add_member(:associated_resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedResourceArns, name: "AssociatedResourceArns"))
    ProactiveInsightSummary.type = Types::ProactiveInsightSummary
    ProactiveInsights.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProactiveInsightSummary, name: "member"))
    ProactiveOrganizationInsightSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightId, name: "Id"))
    ProactiveOrganizationInsightSummary.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "AccountId"))
    ProactiveOrganizationInsightSummary.add_member(:organizational_unit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitId, name: "OrganizationalUnitId"))
    ProactiveOrganizationInsightSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightName, name: "Name"))
    ProactiveOrganizationInsightSummary.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightSeverity, name: "Severity"))
    ProactiveOrganizationInsightSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightStatus, name: "Status"))
    ProactiveOrganizationInsightSummary.add_member(:insight_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightTimeRange, name: "InsightTimeRange"))
    ProactiveOrganizationInsightSummary.add_member(:prediction_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictionTimeRange, name: "PredictionTimeRange"))
    ProactiveOrganizationInsightSummary.add_member(:resource_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCollection, name: "ResourceCollection"))
    ProactiveOrganizationInsightSummary.add_member(:service_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCollection, name: "ServiceCollection"))
    ProactiveOrganizationInsightSummary.type = Types::ProactiveOrganizationInsightSummary
    ProactiveOrganizationInsights.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProactiveOrganizationInsightSummary, name: "member"))
    PutFeedbackRequest.add_member(:insight_feedback, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightFeedback, name: "InsightFeedback"))
    PutFeedbackRequest.type = Types::PutFeedbackRequest
    PutFeedbackResponse.type = Types::PutFeedbackResponse
    ReactiveAnomalies.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReactiveAnomalySummary, name: "member"))
    ReactiveAnomaly.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyId, name: "Id"))
    ReactiveAnomaly.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalySeverity, name: "Severity"))
    ReactiveAnomaly.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyStatus, name: "Status"))
    ReactiveAnomaly.add_member(:anomaly_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyTimeRange, name: "AnomalyTimeRange"))
    ReactiveAnomaly.add_member(:anomaly_reported_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyReportedTimeRange, name: "AnomalyReportedTimeRange"))
    ReactiveAnomaly.add_member(:source_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalySourceDetails, name: "SourceDetails"))
    ReactiveAnomaly.add_member(:associated_insight_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightId, name: "AssociatedInsightId"))
    ReactiveAnomaly.add_member(:resource_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCollection, name: "ResourceCollection"))
    ReactiveAnomaly.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyType, name: "Type"))
    ReactiveAnomaly.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyName, name: "Name"))
    ReactiveAnomaly.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyDescription, name: "Description"))
    ReactiveAnomaly.add_member(:causal_anomaly_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyId, name: "CausalAnomalyId"))
    ReactiveAnomaly.add_member(:anomaly_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyResources, name: "AnomalyResources"))
    ReactiveAnomaly.type = Types::ReactiveAnomaly
    ReactiveAnomalySummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyId, name: "Id"))
    ReactiveAnomalySummary.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalySeverity, name: "Severity"))
    ReactiveAnomalySummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyStatus, name: "Status"))
    ReactiveAnomalySummary.add_member(:anomaly_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyTimeRange, name: "AnomalyTimeRange"))
    ReactiveAnomalySummary.add_member(:anomaly_reported_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyReportedTimeRange, name: "AnomalyReportedTimeRange"))
    ReactiveAnomalySummary.add_member(:source_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalySourceDetails, name: "SourceDetails"))
    ReactiveAnomalySummary.add_member(:associated_insight_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightId, name: "AssociatedInsightId"))
    ReactiveAnomalySummary.add_member(:resource_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCollection, name: "ResourceCollection"))
    ReactiveAnomalySummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyType, name: "Type"))
    ReactiveAnomalySummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyName, name: "Name"))
    ReactiveAnomalySummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyDescription, name: "Description"))
    ReactiveAnomalySummary.add_member(:causal_anomaly_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyId, name: "CausalAnomalyId"))
    ReactiveAnomalySummary.add_member(:anomaly_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyResources, name: "AnomalyResources"))
    ReactiveAnomalySummary.type = Types::ReactiveAnomalySummary
    ReactiveInsight.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightId, name: "Id"))
    ReactiveInsight.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightName, name: "Name"))
    ReactiveInsight.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightSeverity, name: "Severity"))
    ReactiveInsight.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightStatus, name: "Status"))
    ReactiveInsight.add_member(:insight_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightTimeRange, name: "InsightTimeRange"))
    ReactiveInsight.add_member(:resource_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCollection, name: "ResourceCollection"))
    ReactiveInsight.add_member(:ssm_ops_item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmOpsItemId, name: "SsmOpsItemId"))
    ReactiveInsight.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightDescription, name: "Description"))
    ReactiveInsight.type = Types::ReactiveInsight
    ReactiveInsightSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightId, name: "Id"))
    ReactiveInsightSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightName, name: "Name"))
    ReactiveInsightSummary.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightSeverity, name: "Severity"))
    ReactiveInsightSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightStatus, name: "Status"))
    ReactiveInsightSummary.add_member(:insight_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightTimeRange, name: "InsightTimeRange"))
    ReactiveInsightSummary.add_member(:resource_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCollection, name: "ResourceCollection"))
    ReactiveInsightSummary.add_member(:service_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCollection, name: "ServiceCollection"))
    ReactiveInsightSummary.add_member(:associated_resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedResourceArns, name: "AssociatedResourceArns"))
    ReactiveInsightSummary.type = Types::ReactiveInsightSummary
    ReactiveInsights.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReactiveInsightSummary, name: "member"))
    ReactiveOrganizationInsightSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightId, name: "Id"))
    ReactiveOrganizationInsightSummary.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "AccountId"))
    ReactiveOrganizationInsightSummary.add_member(:organizational_unit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitId, name: "OrganizationalUnitId"))
    ReactiveOrganizationInsightSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightName, name: "Name"))
    ReactiveOrganizationInsightSummary.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightSeverity, name: "Severity"))
    ReactiveOrganizationInsightSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightStatus, name: "Status"))
    ReactiveOrganizationInsightSummary.add_member(:insight_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightTimeRange, name: "InsightTimeRange"))
    ReactiveOrganizationInsightSummary.add_member(:resource_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCollection, name: "ResourceCollection"))
    ReactiveOrganizationInsightSummary.add_member(:service_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCollection, name: "ServiceCollection"))
    ReactiveOrganizationInsightSummary.type = Types::ReactiveOrganizationInsightSummary
    ReactiveOrganizationInsights.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReactiveOrganizationInsightSummary, name: "member"))
    Recommendation.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationDescription, name: "Description"))
    Recommendation.add_member(:link, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationLink, name: "Link"))
    Recommendation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationName, name: "Name"))
    Recommendation.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationReason, name: "Reason"))
    Recommendation.add_member(:related_events, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationRelatedEvents, name: "RelatedEvents"))
    Recommendation.add_member(:related_anomalies, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationRelatedAnomalies, name: "RelatedAnomalies"))
    Recommendation.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationCategory, name: "Category"))
    Recommendation.type = Types::Recommendation
    RecommendationRelatedAnomalies.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationRelatedAnomaly, name: "member"))
    RecommendationRelatedAnomaly.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationRelatedAnomalyResources, name: "Resources"))
    RecommendationRelatedAnomaly.add_member(:source_details, ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedAnomalySourceDetails, name: "SourceDetails"))
    RecommendationRelatedAnomaly.add_member(:anomaly_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyId, name: "AnomalyId"))
    RecommendationRelatedAnomaly.type = Types::RecommendationRelatedAnomaly
    RecommendationRelatedAnomalyResource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationRelatedAnomalyResourceName, name: "Name"))
    RecommendationRelatedAnomalyResource.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationRelatedAnomalyResourceType, name: "Type"))
    RecommendationRelatedAnomalyResource.type = Types::RecommendationRelatedAnomalyResource
    RecommendationRelatedAnomalyResources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationRelatedAnomalyResource, name: "member"))
    RecommendationRelatedAnomalySourceDetail.add_member(:cloud_watch_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationRelatedCloudWatchMetricsSourceDetails, name: "CloudWatchMetrics"))
    RecommendationRelatedAnomalySourceDetail.type = Types::RecommendationRelatedAnomalySourceDetail
    RecommendationRelatedCloudWatchMetricsSourceDetail.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationRelatedCloudWatchMetricsSourceMetricName, name: "MetricName"))
    RecommendationRelatedCloudWatchMetricsSourceDetail.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationRelatedCloudWatchMetricsSourceNamespace, name: "Namespace"))
    RecommendationRelatedCloudWatchMetricsSourceDetail.type = Types::RecommendationRelatedCloudWatchMetricsSourceDetail
    RecommendationRelatedCloudWatchMetricsSourceDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationRelatedCloudWatchMetricsSourceDetail, name: "member"))
    RecommendationRelatedEvent.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationRelatedEventName, name: "Name"))
    RecommendationRelatedEvent.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationRelatedEventResources, name: "Resources"))
    RecommendationRelatedEvent.type = Types::RecommendationRelatedEvent
    RecommendationRelatedEventResource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationRelatedEventResourceName, name: "Name"))
    RecommendationRelatedEventResource.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationRelatedEventResourceType, name: "Type"))
    RecommendationRelatedEventResource.type = Types::RecommendationRelatedEventResource
    RecommendationRelatedEventResources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationRelatedEventResource, name: "member"))
    RecommendationRelatedEvents.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationRelatedEvent, name: "member"))
    Recommendations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Recommendation, name: "member"))
    RelatedAnomalySourceDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationRelatedAnomalySourceDetail, name: "member"))
    RemoveNotificationChannelRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationChannelId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveNotificationChannelRequest.type = Types::RemoveNotificationChannelRequest
    RemoveNotificationChannelResponse.type = Types::RemoveNotificationChannelResponse
    ResourceCollection.add_member(:cloud_formation, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudFormationCollection, name: "CloudFormation"))
    ResourceCollection.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagCollections, name: "Tags"))
    ResourceCollection.type = Types::ResourceCollection
    ResourceCollectionFilter.add_member(:cloud_formation, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudFormationCollectionFilter, name: "CloudFormation"))
    ResourceCollectionFilter.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagCollectionFilters, name: "Tags"))
    ResourceCollectionFilter.type = Types::ResourceCollectionFilter
    ResourceCollectionType.add_member(:aws_cloud_formation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_CLOUD_FORMATION", traits: {"smithy.api#enumValue" => "AWS_CLOUD_FORMATION"}))
    ResourceCollectionType.add_member(:aws_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SERVICE", traits: {"smithy.api#enumValue" => "AWS_SERVICE"}))
    ResourceCollectionType.add_member(:aws_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_TAGS", traits: {"smithy.api#enumValue" => "AWS_TAGS"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageString, name: "Message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourcePermission.add_member(:full_permission, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL_PERMISSION", traits: {"smithy.api#enumValue" => "FULL_PERMISSION"}))
    ResourcePermission.add_member(:missing_permission, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_PERMISSION", traits: {"smithy.api#enumValue" => "MISSING_PERMISSION"}))
    ResourceTypeFilter.add_member(:log_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOG_GROUPS", traits: {"smithy.api#enumValue" => "LOG_GROUPS"}))
    ResourceTypeFilter.add_member(:cloudfront_distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUDFRONT_DISTRIBUTION", traits: {"smithy.api#enumValue" => "CLOUDFRONT_DISTRIBUTION"}))
    ResourceTypeFilter.add_member(:dynamodb_table, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DYNAMODB_TABLE", traits: {"smithy.api#enumValue" => "DYNAMODB_TABLE"}))
    ResourceTypeFilter.add_member(:ec2_nat_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_NAT_GATEWAY", traits: {"smithy.api#enumValue" => "EC2_NAT_GATEWAY"}))
    ResourceTypeFilter.add_member(:ecs_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECS_CLUSTER", traits: {"smithy.api#enumValue" => "ECS_CLUSTER"}))
    ResourceTypeFilter.add_member(:ecs_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECS_SERVICE", traits: {"smithy.api#enumValue" => "ECS_SERVICE"}))
    ResourceTypeFilter.add_member(:eks_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_CLUSTER", traits: {"smithy.api#enumValue" => "EKS_CLUSTER"}))
    ResourceTypeFilter.add_member(:elastic_beanstalk_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ELASTIC_BEANSTALK_ENVIRONMENT", traits: {"smithy.api#enumValue" => "ELASTIC_BEANSTALK_ENVIRONMENT"}))
    ResourceTypeFilter.add_member(:elastic_load_balancer_load_balancer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ELASTIC_LOAD_BALANCER_LOAD_BALANCER", traits: {"smithy.api#enumValue" => "ELASTIC_LOAD_BALANCER_LOAD_BALANCER"}))
    ResourceTypeFilter.add_member(:elastic_load_balancing_v2_load_balancer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ELASTIC_LOAD_BALANCING_V2_LOAD_BALANCER", traits: {"smithy.api#enumValue" => "ELASTIC_LOAD_BALANCING_V2_LOAD_BALANCER"}))
    ResourceTypeFilter.add_member(:elastic_load_balancing_v2_target_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ELASTIC_LOAD_BALANCING_V2_TARGET_GROUP", traits: {"smithy.api#enumValue" => "ELASTIC_LOAD_BALANCING_V2_TARGET_GROUP"}))
    ResourceTypeFilter.add_member(:elasticache_cache_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ELASTICACHE_CACHE_CLUSTER", traits: {"smithy.api#enumValue" => "ELASTICACHE_CACHE_CLUSTER"}))
    ResourceTypeFilter.add_member(:elasticsearch_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ELASTICSEARCH_DOMAIN", traits: {"smithy.api#enumValue" => "ELASTICSEARCH_DOMAIN"}))
    ResourceTypeFilter.add_member(:kinesis_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KINESIS_STREAM", traits: {"smithy.api#enumValue" => "KINESIS_STREAM"}))
    ResourceTypeFilter.add_member(:lambda_function, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAMBDA_FUNCTION", traits: {"smithy.api#enumValue" => "LAMBDA_FUNCTION"}))
    ResourceTypeFilter.add_member(:open_search_service_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPEN_SEARCH_SERVICE_DOMAIN", traits: {"smithy.api#enumValue" => "OPEN_SEARCH_SERVICE_DOMAIN"}))
    ResourceTypeFilter.add_member(:rds_db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS_DB_INSTANCE", traits: {"smithy.api#enumValue" => "RDS_DB_INSTANCE"}))
    ResourceTypeFilter.add_member(:rds_db_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS_DB_CLUSTER", traits: {"smithy.api#enumValue" => "RDS_DB_CLUSTER"}))
    ResourceTypeFilter.add_member(:redshift_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REDSHIFT_CLUSTER", traits: {"smithy.api#enumValue" => "REDSHIFT_CLUSTER"}))
    ResourceTypeFilter.add_member(:route53_hosted_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROUTE53_HOSTED_ZONE", traits: {"smithy.api#enumValue" => "ROUTE53_HOSTED_ZONE"}))
    ResourceTypeFilter.add_member(:route53_health_check, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROUTE53_HEALTH_CHECK", traits: {"smithy.api#enumValue" => "ROUTE53_HEALTH_CHECK"}))
    ResourceTypeFilter.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_BUCKET", traits: {"smithy.api#enumValue" => "S3_BUCKET"}))
    ResourceTypeFilter.add_member(:sagemaker_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAGEMAKER_ENDPOINT", traits: {"smithy.api#enumValue" => "SAGEMAKER_ENDPOINT"}))
    ResourceTypeFilter.add_member(:sns_topic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNS_TOPIC", traits: {"smithy.api#enumValue" => "SNS_TOPIC"}))
    ResourceTypeFilter.add_member(:sqs_queue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SQS_QUEUE", traits: {"smithy.api#enumValue" => "SQS_QUEUE"}))
    ResourceTypeFilter.add_member(:step_functions_activity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STEP_FUNCTIONS_ACTIVITY", traits: {"smithy.api#enumValue" => "STEP_FUNCTIONS_ACTIVITY"}))
    ResourceTypeFilter.add_member(:step_functions_state_machine, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STEP_FUNCTIONS_STATE_MACHINE", traits: {"smithy.api#enumValue" => "STEP_FUNCTIONS_STATE_MACHINE"}))
    ResourceTypeFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeFilter, name: "member"))
    SearchInsightsAccountIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "member"))
    SearchInsightsFilters.add_member(:severities, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightSeverities, name: "Severities"))
    SearchInsightsFilters.add_member(:statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightStatuses, name: "Statuses"))
    SearchInsightsFilters.add_member(:resource_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCollection, name: "ResourceCollection"))
    SearchInsightsFilters.add_member(:service_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCollection, name: "ServiceCollection"))
    SearchInsightsFilters.type = Types::SearchInsightsFilters
    SearchInsightsRequest.add_member(:start_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTimeRange, name: "StartTimeRange", traits: {"smithy.api#required" => {}}))
    SearchInsightsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchInsightsFilters, name: "Filters"))
    SearchInsightsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchInsightsMaxResults, name: "MaxResults"))
    SearchInsightsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidNextToken, name: "NextToken"))
    SearchInsightsRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightType, name: "Type", traits: {"smithy.api#required" => {}}))
    SearchInsightsRequest.type = Types::SearchInsightsRequest
    SearchInsightsResponse.add_member(:proactive_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: ProactiveInsights, name: "ProactiveInsights"))
    SearchInsightsResponse.add_member(:reactive_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: ReactiveInsights, name: "ReactiveInsights"))
    SearchInsightsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidNextToken, name: "NextToken"))
    SearchInsightsResponse.type = Types::SearchInsightsResponse
    SearchOrganizationInsightsFilters.add_member(:severities, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightSeverities, name: "Severities"))
    SearchOrganizationInsightsFilters.add_member(:statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightStatuses, name: "Statuses"))
    SearchOrganizationInsightsFilters.add_member(:resource_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCollection, name: "ResourceCollection"))
    SearchOrganizationInsightsFilters.add_member(:service_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCollection, name: "ServiceCollection"))
    SearchOrganizationInsightsFilters.type = Types::SearchOrganizationInsightsFilters
    SearchOrganizationInsightsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchInsightsAccountIdList, name: "AccountIds", traits: {"smithy.api#required" => {}}))
    SearchOrganizationInsightsRequest.add_member(:start_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTimeRange, name: "StartTimeRange", traits: {"smithy.api#required" => {}}))
    SearchOrganizationInsightsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchOrganizationInsightsFilters, name: "Filters"))
    SearchOrganizationInsightsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchOrganizationInsightsMaxResults, name: "MaxResults"))
    SearchOrganizationInsightsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidNextToken, name: "NextToken"))
    SearchOrganizationInsightsRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightType, name: "Type", traits: {"smithy.api#required" => {}}))
    SearchOrganizationInsightsRequest.type = Types::SearchOrganizationInsightsRequest
    SearchOrganizationInsightsResponse.add_member(:proactive_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: ProactiveInsights, name: "ProactiveInsights"))
    SearchOrganizationInsightsResponse.add_member(:reactive_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: ReactiveInsights, name: "ReactiveInsights"))
    SearchOrganizationInsightsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidNextToken, name: "NextToken"))
    SearchOrganizationInsightsResponse.type = Types::SearchOrganizationInsightsResponse
    ServerSideEncryptionType.add_member(:customer_managed_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_MANAGED_KEY", traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED_KEY"}))
    ServerSideEncryptionType.add_member(:aws_owned_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_OWNED_KMS_KEY", traits: {"smithy.api#enumValue" => "AWS_OWNED_KMS_KEY"}))
    ServiceCollection.add_member(:service_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNames, name: "ServiceNames"))
    ServiceCollection.type = Types::ServiceCollection
    ServiceHealth.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "ServiceName"))
    ServiceHealth.add_member(:insight, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceInsightHealth, name: "Insight"))
    ServiceHealth.add_member(:analyzed_resource_count, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzedResourceCount, name: "AnalyzedResourceCount"))
    ServiceHealth.type = Types::ServiceHealth
    ServiceHealths.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceHealth, name: "member"))
    ServiceInsightHealth.add_member(:open_proactive_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: NumOpenProactiveInsights, name: "OpenProactiveInsights", traits: {"smithy.api#default" => 0}))
    ServiceInsightHealth.add_member(:open_reactive_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: NumOpenReactiveInsights, name: "OpenReactiveInsights", traits: {"smithy.api#default" => 0}))
    ServiceInsightHealth.type = Types::ServiceInsightHealth
    ServiceIntegrationConfig.add_member(:ops_center, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsCenterIntegration, name: "OpsCenter"))
    ServiceIntegrationConfig.add_member(:logs_anomaly_detection, ::Smithy::Schema::Shapes::MemberShape.new(target: LogsAnomalyDetectionIntegration, name: "LogsAnomalyDetection"))
    ServiceIntegrationConfig.add_member(:kms_server_side_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSServerSideEncryptionIntegration, name: "KMSServerSideEncryption"))
    ServiceIntegrationConfig.type = Types::ServiceIntegrationConfig
    ServiceName.add_member(:api_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "API_GATEWAY", traits: {"smithy.api#enumValue" => "API_GATEWAY"}))
    ServiceName.add_member(:application_elb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPLICATION_ELB", traits: {"smithy.api#enumValue" => "APPLICATION_ELB"}))
    ServiceName.add_member(:auto_scaling_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO_SCALING_GROUP", traits: {"smithy.api#enumValue" => "AUTO_SCALING_GROUP"}))
    ServiceName.add_member(:cloud_front, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUD_FRONT", traits: {"smithy.api#enumValue" => "CLOUD_FRONT"}))
    ServiceName.add_member(:dynamo_db, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DYNAMO_DB", traits: {"smithy.api#enumValue" => "DYNAMO_DB"}))
    ServiceName.add_member(:ec2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2", traits: {"smithy.api#enumValue" => "EC2"}))
    ServiceName.add_member(:ecs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECS", traits: {"smithy.api#enumValue" => "ECS"}))
    ServiceName.add_member(:eks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS", traits: {"smithy.api#enumValue" => "EKS"}))
    ServiceName.add_member(:elastic_beanstalk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ELASTIC_BEANSTALK", traits: {"smithy.api#enumValue" => "ELASTIC_BEANSTALK"}))
    ServiceName.add_member(:elasti_cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ELASTI_CACHE", traits: {"smithy.api#enumValue" => "ELASTI_CACHE"}))
    ServiceName.add_member(:elb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ELB", traits: {"smithy.api#enumValue" => "ELB"}))
    ServiceName.add_member(:es, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ES", traits: {"smithy.api#enumValue" => "ES"}))
    ServiceName.add_member(:kinesis, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KINESIS", traits: {"smithy.api#enumValue" => "KINESIS"}))
    ServiceName.add_member(:lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAMBDA", traits: {"smithy.api#enumValue" => "LAMBDA"}))
    ServiceName.add_member(:nat_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAT_GATEWAY", traits: {"smithy.api#enumValue" => "NAT_GATEWAY"}))
    ServiceName.add_member(:network_elb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NETWORK_ELB", traits: {"smithy.api#enumValue" => "NETWORK_ELB"}))
    ServiceName.add_member(:rds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS", traits: {"smithy.api#enumValue" => "RDS"}))
    ServiceName.add_member(:redshift, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REDSHIFT", traits: {"smithy.api#enumValue" => "REDSHIFT"}))
    ServiceName.add_member(:route_53, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROUTE_53", traits: {"smithy.api#enumValue" => "ROUTE_53"}))
    ServiceName.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    ServiceName.add_member(:sage_maker, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAGE_MAKER", traits: {"smithy.api#enumValue" => "SAGE_MAKER"}))
    ServiceName.add_member(:sns, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNS", traits: {"smithy.api#enumValue" => "SNS"}))
    ServiceName.add_member(:sqs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SQS", traits: {"smithy.api#enumValue" => "SQS"}))
    ServiceName.add_member(:step_functions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STEP_FUNCTIONS", traits: {"smithy.api#enumValue" => "STEP_FUNCTIONS"}))
    ServiceName.add_member(:swf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SWF", traits: {"smithy.api#enumValue" => "SWF"}))
    ServiceNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "member"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageString, name: "Message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceResourceCost.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "Type"))
    ServiceResourceCost.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CostEstimationServiceResourceState, name: "State"))
    ServiceResourceCost.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: CostEstimationServiceResourceCount, name: "Count", traits: {"smithy.api#default" => 0}))
    ServiceResourceCost.add_member(:unit_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: Cost, name: "UnitCost", traits: {"smithy.api#default" => 0}))
    ServiceResourceCost.add_member(:cost, ::Smithy::Schema::Shapes::MemberShape.new(target: Cost, name: "Cost", traits: {"smithy.api#default" => 0}))
    ServiceResourceCost.type = Types::ServiceResourceCost
    ServiceResourceCosts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceResourceCost, name: "member"))
    SnsChannelConfig.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicArn, name: "TopicArn"))
    SnsChannelConfig.type = Types::SnsChannelConfig
    StackNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StackName, name: "member"))
    StartCostEstimationRequest.add_member(:resource_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: CostEstimationResourceCollectionFilter, name: "ResourceCollection", traits: {"smithy.api#required" => {}}))
    StartCostEstimationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartCostEstimationRequest.type = Types::StartCostEstimationRequest
    StartCostEstimationResponse.type = Types::StartCostEstimationResponse
    StartTimeRange.add_member(:from_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "FromTime"))
    StartTimeRange.add_member(:to_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ToTime"))
    StartTimeRange.type = Types::StartTimeRange
    TagCollection.add_member(:app_boundary_key, ::Smithy::Schema::Shapes::MemberShape.new(target: AppBoundaryKey, name: "AppBoundaryKey", traits: {"smithy.api#required" => {}}))
    TagCollection.add_member(:tag_values, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValues, name: "TagValues", traits: {"smithy.api#required" => {}}))
    TagCollection.type = Types::TagCollection
    TagCollectionFilter.add_member(:app_boundary_key, ::Smithy::Schema::Shapes::MemberShape.new(target: AppBoundaryKey, name: "AppBoundaryKey", traits: {"smithy.api#required" => {}}))
    TagCollectionFilter.add_member(:tag_values, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValues, name: "TagValues", traits: {"smithy.api#required" => {}}))
    TagCollectionFilter.type = Types::TagCollectionFilter
    TagCollectionFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagCollectionFilter, name: "member"))
    TagCollections.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagCollection, name: "member"))
    TagCostEstimationResourceCollectionFilter.add_member(:app_boundary_key, ::Smithy::Schema::Shapes::MemberShape.new(target: AppBoundaryKey, name: "AppBoundaryKey", traits: {"smithy.api#required" => {}}))
    TagCostEstimationResourceCollectionFilter.add_member(:tag_values, ::Smithy::Schema::Shapes::MemberShape.new(target: CostEstimationTagValues, name: "TagValues", traits: {"smithy.api#required" => {}}))
    TagCostEstimationResourceCollectionFilter.type = Types::TagCostEstimationResourceCollectionFilter
    TagCostEstimationResourceCollectionFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagCostEstimationResourceCollectionFilter, name: "member"))
    TagHealth.add_member(:app_boundary_key, ::Smithy::Schema::Shapes::MemberShape.new(target: AppBoundaryKey, name: "AppBoundaryKey"))
    TagHealth.add_member(:tag_value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "TagValue"))
    TagHealth.add_member(:insight, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightHealth, name: "Insight"))
    TagHealth.add_member(:analyzed_resource_count, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzedResourceCount, name: "AnalyzedResourceCount"))
    TagHealth.type = Types::TagHealth
    TagHealths.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagHealth, name: "member"))
    TagValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "member"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageString, name: "Message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorQuotaCodeString, name: "QuotaCode"))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorServiceCodeString, name: "ServiceCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryAfterSeconds, name: "RetryAfterSeconds", traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    TimestampMetricValuePair.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp"))
    TimestampMetricValuePair.add_member(:metric_value, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricValue, name: "MetricValue"))
    TimestampMetricValuePair.type = Types::TimestampMetricValuePair
    TimestampMetricValuePairList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampMetricValuePair, name: "member"))
    UpdateCloudFormationCollectionFilter.add_member(:stack_names, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateStackNames, name: "StackNames"))
    UpdateCloudFormationCollectionFilter.type = Types::UpdateCloudFormationCollectionFilter
    UpdateEventSourcesConfigRequest.add_member(:event_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourcesConfig, name: "EventSources"))
    UpdateEventSourcesConfigRequest.type = Types::UpdateEventSourcesConfigRequest
    UpdateEventSourcesConfigResponse.type = Types::UpdateEventSourcesConfigResponse
    UpdateResourceCollectionAction.add_member(:add, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADD", traits: {"smithy.api#enumValue" => "ADD"}))
    UpdateResourceCollectionAction.add_member(:remove, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOVE", traits: {"smithy.api#enumValue" => "REMOVE"}))
    UpdateResourceCollectionFilter.add_member(:cloud_formation, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateCloudFormationCollectionFilter, name: "CloudFormation"))
    UpdateResourceCollectionFilter.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTagCollectionFilters, name: "Tags"))
    UpdateResourceCollectionFilter.type = Types::UpdateResourceCollectionFilter
    UpdateResourceCollectionRequest.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateResourceCollectionAction, name: "Action", traits: {"smithy.api#required" => {}}))
    UpdateResourceCollectionRequest.add_member(:resource_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateResourceCollectionFilter, name: "ResourceCollection", traits: {"smithy.api#required" => {}}))
    UpdateResourceCollectionRequest.type = Types::UpdateResourceCollectionRequest
    UpdateResourceCollectionResponse.type = Types::UpdateResourceCollectionResponse
    UpdateServiceIntegrationConfig.add_member(:ops_center, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsCenterIntegrationConfig, name: "OpsCenter"))
    UpdateServiceIntegrationConfig.add_member(:logs_anomaly_detection, ::Smithy::Schema::Shapes::MemberShape.new(target: LogsAnomalyDetectionIntegrationConfig, name: "LogsAnomalyDetection"))
    UpdateServiceIntegrationConfig.add_member(:kms_server_side_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSServerSideEncryptionIntegrationConfig, name: "KMSServerSideEncryption"))
    UpdateServiceIntegrationConfig.type = Types::UpdateServiceIntegrationConfig
    UpdateServiceIntegrationRequest.add_member(:service_integration, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateServiceIntegrationConfig, name: "ServiceIntegration", traits: {"smithy.api#required" => {}}))
    UpdateServiceIntegrationRequest.type = Types::UpdateServiceIntegrationRequest
    UpdateServiceIntegrationResponse.type = Types::UpdateServiceIntegrationResponse
    UpdateStackNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StackName, name: "member"))
    UpdateTagCollectionFilter.add_member(:app_boundary_key, ::Smithy::Schema::Shapes::MemberShape.new(target: AppBoundaryKey, name: "AppBoundaryKey", traits: {"smithy.api#required" => {}}))
    UpdateTagCollectionFilter.add_member(:tag_values, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTagValues, name: "TagValues", traits: {"smithy.api#required" => {}}))
    UpdateTagCollectionFilter.type = Types::UpdateTagCollectionFilter
    UpdateTagCollectionFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTagCollectionFilter, name: "member"))
    UpdateTagValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "member"))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageString, name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "Reason"))
    ValidationException.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFields, name: "Fields"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorNameString, name: "Name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageString, name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFields.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "UNKNOWN_OPERATION"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "CANNOT_PARSE"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "FIELD_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    ValidationExceptionReason.add_member(:invalid_parameter_combination, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_PARAMETER_COMBINATION", traits: {"smithy.api#enumValue" => "INVALID_PARAMETER_COMBINATION"}))
    ValidationExceptionReason.add_member(:parameter_inconsistent_with_service_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARAMETER_INCONSISTENT_WITH_SERVICE_STATE", traits: {"smithy.api#enumValue" => "PARAMETER_INCONSISTENT_WITH_SERVICE_STATE"}))

    CapstoneControlPlaneService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.devopsguru#CapstoneControlPlaneService"
      service.name = "CapstoneControlPlaneService"
      service.version = "2020-12-01"
      service.traits = {"aws.api#service" => {"sdkId" => "DevOps Guru", "arnNamespace" => "devops-guru", "cloudFormationName" => "DevOpsGuru", "cloudTrailEventSource" => "devopsguru.amazonaws.com", "endpointPrefix" => "devops-guru"}, "aws.auth#sigv4" => {"name" => "devops-guru"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon DevOps Guru"}
      service.add_operation(:add_notification_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#AddNotificationChannel"
        operation.name = "AddNotificationChannel"
        operation.input = AddNotificationChannelRequest
        operation.output = AddNotificationChannelResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/channels", "code" => 200}}
      end)
      service.add_operation(:delete_insight, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#DeleteInsight"
        operation.name = "DeleteInsight"
        operation.input = DeleteInsightRequest
        operation.output = DeleteInsightResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/insights/{Id}", "code" => 200}}
      end)
      service.add_operation(:describe_account_health, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#DescribeAccountHealth"
        operation.name = "DescribeAccountHealth"
        operation.input = DescribeAccountHealthRequest
        operation.output = DescribeAccountHealthResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accounts/health", "code" => 200}}
      end)
      service.add_operation(:describe_account_overview, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#DescribeAccountOverview"
        operation.name = "DescribeAccountOverview"
        operation.input = DescribeAccountOverviewRequest
        operation.output = DescribeAccountOverviewResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/overview", "code" => 200}}
      end)
      service.add_operation(:describe_anomaly, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#DescribeAnomaly"
        operation.name = "DescribeAnomaly"
        operation.input = DescribeAnomalyRequest
        operation.output = DescribeAnomalyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/anomalies/{Id}", "code" => 200}}
      end)
      service.add_operation(:describe_event_sources_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#DescribeEventSourcesConfig"
        operation.name = "DescribeEventSourcesConfig"
        operation.input = DescribeEventSourcesConfigRequest
        operation.output = DescribeEventSourcesConfigResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/event-sources", "code" => 200}}
      end)
      service.add_operation(:describe_feedback, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#DescribeFeedback"
        operation.name = "DescribeFeedback"
        operation.input = DescribeFeedbackRequest
        operation.output = DescribeFeedbackResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/feedback", "code" => 200}}
      end)
      service.add_operation(:describe_insight, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#DescribeInsight"
        operation.name = "DescribeInsight"
        operation.input = DescribeInsightRequest
        operation.output = DescribeInsightResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/insights/{Id}", "code" => 200}}
      end)
      service.add_operation(:describe_organization_health, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#DescribeOrganizationHealth"
        operation.name = "DescribeOrganizationHealth"
        operation.input = DescribeOrganizationHealthRequest
        operation.output = DescribeOrganizationHealthResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/organization/health", "code" => 200}}
      end)
      service.add_operation(:describe_organization_overview, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#DescribeOrganizationOverview"
        operation.name = "DescribeOrganizationOverview"
        operation.input = DescribeOrganizationOverviewRequest
        operation.output = DescribeOrganizationOverviewResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/organization/overview", "code" => 200}}
      end)
      service.add_operation(:describe_organization_resource_collection_health, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#DescribeOrganizationResourceCollectionHealth"
        operation.name = "DescribeOrganizationResourceCollectionHealth"
        operation.input = DescribeOrganizationResourceCollectionHealthRequest
        operation.output = DescribeOrganizationResourceCollectionHealthResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/organization/health/resource-collection", "code" => 200}}
        operation[:paginator] = Paginators::DescribeOrganizationResourceCollectionHealth.new
      end)
      service.add_operation(:describe_resource_collection_health, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#DescribeResourceCollectionHealth"
        operation.name = "DescribeResourceCollectionHealth"
        operation.input = DescribeResourceCollectionHealthRequest
        operation.output = DescribeResourceCollectionHealthResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accounts/health/resource-collection/{ResourceCollectionType}", "code" => 200}}
        operation[:paginator] = Paginators::DescribeResourceCollectionHealth.new
      end)
      service.add_operation(:describe_service_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#DescribeServiceIntegration"
        operation.name = "DescribeServiceIntegration"
        operation.input = DescribeServiceIntegrationRequest
        operation.output = DescribeServiceIntegrationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/service-integrations", "code" => 200}}
      end)
      service.add_operation(:get_cost_estimation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#GetCostEstimation"
        operation.name = "GetCostEstimation"
        operation.input = GetCostEstimationRequest
        operation.output = GetCostEstimationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/cost-estimation", "code" => 200}}
        operation[:paginator] = Paginators::GetCostEstimation.new
      end)
      service.add_operation(:get_resource_collection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#GetResourceCollection"
        operation.name = "GetResourceCollection"
        operation.input = GetResourceCollectionRequest
        operation.output = GetResourceCollectionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/resource-collections/{ResourceCollectionType}", "code" => 200}}
        operation[:paginator] = Paginators::GetResourceCollection.new
      end)
      service.add_operation(:list_anomalies_for_insight, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#ListAnomaliesForInsight"
        operation.name = "ListAnomaliesForInsight"
        operation.input = ListAnomaliesForInsightRequest
        operation.output = ListAnomaliesForInsightResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/anomalies/insight/{InsightId}", "code" => 200}}
        operation[:paginator] = Paginators::ListAnomaliesForInsight.new
      end)
      service.add_operation(:list_anomalous_log_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#ListAnomalousLogGroups"
        operation.name = "ListAnomalousLogGroups"
        operation.input = ListAnomalousLogGroupsRequest
        operation.output = ListAnomalousLogGroupsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-log-anomalies", "code" => 200}}
        operation[:paginator] = Paginators::ListAnomalousLogGroups.new
      end)
      service.add_operation(:list_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#ListEvents"
        operation.name = "ListEvents"
        operation.input = ListEventsRequest
        operation.output = ListEventsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/events", "code" => 200}}
        operation[:paginator] = Paginators::ListEvents.new
      end)
      service.add_operation(:list_insights, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#ListInsights"
        operation.name = "ListInsights"
        operation.input = ListInsightsRequest
        operation.output = ListInsightsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/insights", "code" => 200}}
        operation[:paginator] = Paginators::ListInsights.new
      end)
      service.add_operation(:list_monitored_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#ListMonitoredResources"
        operation.name = "ListMonitoredResources"
        operation.input = ListMonitoredResourcesRequest
        operation.output = ListMonitoredResourcesResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/monitoredResources", "code" => 200}}
        operation[:paginator] = Paginators::ListMonitoredResources.new
      end)
      service.add_operation(:list_notification_channels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#ListNotificationChannels"
        operation.name = "ListNotificationChannels"
        operation.input = ListNotificationChannelsRequest
        operation.output = ListNotificationChannelsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/channels", "code" => 200}}
        operation[:paginator] = Paginators::ListNotificationChannels.new
      end)
      service.add_operation(:list_organization_insights, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#ListOrganizationInsights"
        operation.name = "ListOrganizationInsights"
        operation.input = ListOrganizationInsightsRequest
        operation.output = ListOrganizationInsightsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/organization/insights", "code" => 200}}
        operation[:paginator] = Paginators::ListOrganizationInsights.new
      end)
      service.add_operation(:list_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#ListRecommendations"
        operation.name = "ListRecommendations"
        operation.input = ListRecommendationsRequest
        operation.output = ListRecommendationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/recommendations", "code" => 200}}
        operation[:paginator] = Paginators::ListRecommendations.new
      end)
      service.add_operation(:put_feedback, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#PutFeedback"
        operation.name = "PutFeedback"
        operation.input = PutFeedbackRequest
        operation.output = PutFeedbackResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/feedback", "code" => 200}}
      end)
      service.add_operation(:remove_notification_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#RemoveNotificationChannel"
        operation.name = "RemoveNotificationChannel"
        operation.input = RemoveNotificationChannelRequest
        operation.output = RemoveNotificationChannelResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/channels/{Id}", "code" => 200}}
      end)
      service.add_operation(:search_insights, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#SearchInsights"
        operation.name = "SearchInsights"
        operation.input = SearchInsightsRequest
        operation.output = SearchInsightsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/insights/search", "code" => 200}}
        operation[:paginator] = Paginators::SearchInsights.new
      end)
      service.add_operation(:search_organization_insights, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#SearchOrganizationInsights"
        operation.name = "SearchOrganizationInsights"
        operation.input = SearchOrganizationInsightsRequest
        operation.output = SearchOrganizationInsightsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/organization/insights/search", "code" => 200}}
        operation[:paginator] = Paginators::SearchOrganizationInsights.new
      end)
      service.add_operation(:start_cost_estimation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#StartCostEstimation"
        operation.name = "StartCostEstimation"
        operation.input = StartCostEstimationRequest
        operation.output = StartCostEstimationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/cost-estimation", "code" => 200}}
      end)
      service.add_operation(:update_event_sources_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#UpdateEventSourcesConfig"
        operation.name = "UpdateEventSourcesConfig"
        operation.input = UpdateEventSourcesConfigRequest
        operation.output = UpdateEventSourcesConfigResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/event-sources", "code" => 200}}
      end)
      service.add_operation(:update_resource_collection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#UpdateResourceCollection"
        operation.name = "UpdateResourceCollection"
        operation.input = UpdateResourceCollectionRequest
        operation.output = UpdateResourceCollectionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/resource-collections", "code" => 200}}
      end)
      service.add_operation(:update_service_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#UpdateServiceIntegration"
        operation.name = "UpdateServiceIntegration"
        operation.input = UpdateServiceIntegrationRequest
        operation.output = UpdateServiceIntegrationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/service-integrations", "code" => 200}}
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
