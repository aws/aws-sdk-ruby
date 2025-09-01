# frozen_string_literal: true

# This is generated code!

module Aws::DevOpsGuru
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountHealth = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#AccountHealth', name: 'AccountHealth')
    AccountHealths = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#AccountHealths', name: 'AccountHealths')
    AccountIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#AccountIdList', name: 'AccountIdList', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    AccountInsightHealth = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#AccountInsightHealth', name: 'AccountInsightHealth')
    AddNotificationChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#AddNotificationChannelRequest', name: 'AddNotificationChannelRequest')
    AddNotificationChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#AddNotificationChannelResponse', name: 'AddNotificationChannelResponse')
    AmazonCodeGuruProfilerIntegration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#AmazonCodeGuruProfilerIntegration', name: 'AmazonCodeGuruProfilerIntegration')
    AnalyzedResourceCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devopsguru#AnalyzedResourceCount', name: 'AnalyzedResourceCount')
    AnomalousLogGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#AnomalousLogGroup', name: 'AnomalousLogGroup')
    AnomalousLogGroups = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#AnomalousLogGroups', name: 'AnomalousLogGroups')
    AnomalyDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#AnomalyDescription', name: 'AnomalyDescription')
    AnomalyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#AnomalyId', name: 'AnomalyId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[\\w~.-]*$"})
    AnomalyLimit = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.devopsguru#AnomalyLimit', name: 'AnomalyLimit')
    AnomalyName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#AnomalyName', name: 'AnomalyName')
    AnomalyReportedTimeRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#AnomalyReportedTimeRange', name: 'AnomalyReportedTimeRange')
    AnomalyResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#AnomalyResource', name: 'AnomalyResource')
    AnomalyResources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#AnomalyResources', name: 'AnomalyResources')
    AnomalySeverity = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devopsguru#AnomalySeverity', name: 'AnomalySeverity')
    AnomalySource = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#AnomalySource', name: 'AnomalySource')
    AnomalySourceDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#AnomalySourceDetails', name: 'AnomalySourceDetails')
    AnomalySourceMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#AnomalySourceMetadata', name: 'AnomalySourceMetadata')
    AnomalyStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devopsguru#AnomalyStatus', name: 'AnomalyStatus')
    AnomalyTimeRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#AnomalyTimeRange', name: 'AnomalyTimeRange')
    AnomalyType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devopsguru#AnomalyType', name: 'AnomalyType')
    AppBoundaryKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#AppBoundaryKey', name: 'AppBoundaryKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    AssociatedResourceArns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#AssociatedResourceArns', name: 'AssociatedResourceArns')
    AwsAccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#AwsAccountId', name: 'AwsAccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    Channels = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#Channels', name: 'Channels')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9]+[a-zA-Z0-9-]*$"})
    CloudFormationCollection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#CloudFormationCollection', name: 'CloudFormationCollection')
    CloudFormationCollectionFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#CloudFormationCollectionFilter', name: 'CloudFormationCollectionFilter')
    CloudFormationCostEstimationResourceCollectionFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#CloudFormationCostEstimationResourceCollectionFilter', name: 'CloudFormationCostEstimationResourceCollectionFilter')
    CloudFormationHealth = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#CloudFormationHealth', name: 'CloudFormationHealth')
    CloudFormationHealths = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#CloudFormationHealths', name: 'CloudFormationHealths')
    CloudWatchMetricDataStatusCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devopsguru#CloudWatchMetricDataStatusCode', name: 'CloudWatchMetricDataStatusCode')
    CloudWatchMetricsDataSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#CloudWatchMetricsDataSummary', name: 'CloudWatchMetricsDataSummary')
    CloudWatchMetricsDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#CloudWatchMetricsDetail', name: 'CloudWatchMetricsDetail')
    CloudWatchMetricsDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#CloudWatchMetricsDetails', name: 'CloudWatchMetricsDetails')
    CloudWatchMetricsDimension = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#CloudWatchMetricsDimension', name: 'CloudWatchMetricsDimension')
    CloudWatchMetricsDimensionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#CloudWatchMetricsDimensionName', name: 'CloudWatchMetricsDimensionName')
    CloudWatchMetricsDimensionValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#CloudWatchMetricsDimensionValue', name: 'CloudWatchMetricsDimensionValue')
    CloudWatchMetricsDimensions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#CloudWatchMetricsDimensions', name: 'CloudWatchMetricsDimensions')
    CloudWatchMetricsMetricName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#CloudWatchMetricsMetricName', name: 'CloudWatchMetricsMetricName')
    CloudWatchMetricsNamespace = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#CloudWatchMetricsNamespace', name: 'CloudWatchMetricsNamespace')
    CloudWatchMetricsPeriod = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devopsguru#CloudWatchMetricsPeriod', name: 'CloudWatchMetricsPeriod', traits: {"smithy.api#default" => 0})
    CloudWatchMetricsStat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devopsguru#CloudWatchMetricsStat', name: 'CloudWatchMetricsStat')
    CloudWatchMetricsUnit = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#CloudWatchMetricsUnit', name: 'CloudWatchMetricsUnit')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Cost = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.devopsguru#Cost', name: 'Cost', traits: {"smithy.api#default" => 0})
    CostEstimationResourceCollectionFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#CostEstimationResourceCollectionFilter', name: 'CostEstimationResourceCollectionFilter')
    CostEstimationServiceResourceCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devopsguru#CostEstimationServiceResourceCount', name: 'CostEstimationServiceResourceCount', traits: {"smithy.api#default" => 0})
    CostEstimationServiceResourceState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devopsguru#CostEstimationServiceResourceState', name: 'CostEstimationServiceResourceState')
    CostEstimationStackNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#CostEstimationStackNames', name: 'CostEstimationStackNames', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    CostEstimationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devopsguru#CostEstimationStatus', name: 'CostEstimationStatus')
    CostEstimationTagValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#CostEstimationTagValues', name: 'CostEstimationTagValues', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    CostEstimationTimeRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#CostEstimationTimeRange', name: 'CostEstimationTimeRange')
    DeleteInsightRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#DeleteInsightRequest', name: 'DeleteInsightRequest')
    DeleteInsightResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#DeleteInsightResponse', name: 'DeleteInsightResponse')
    DescribeAccountHealthRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#DescribeAccountHealthRequest', name: 'DescribeAccountHealthRequest')
    DescribeAccountHealthResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#DescribeAccountHealthResponse', name: 'DescribeAccountHealthResponse')
    DescribeAccountOverviewRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#DescribeAccountOverviewRequest', name: 'DescribeAccountOverviewRequest')
    DescribeAccountOverviewResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#DescribeAccountOverviewResponse', name: 'DescribeAccountOverviewResponse')
    DescribeAnomalyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#DescribeAnomalyRequest', name: 'DescribeAnomalyRequest')
    DescribeAnomalyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#DescribeAnomalyResponse', name: 'DescribeAnomalyResponse')
    DescribeEventSourcesConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#DescribeEventSourcesConfigRequest', name: 'DescribeEventSourcesConfigRequest')
    DescribeEventSourcesConfigResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#DescribeEventSourcesConfigResponse', name: 'DescribeEventSourcesConfigResponse')
    DescribeFeedbackRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#DescribeFeedbackRequest', name: 'DescribeFeedbackRequest')
    DescribeFeedbackResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#DescribeFeedbackResponse', name: 'DescribeFeedbackResponse')
    DescribeInsightRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#DescribeInsightRequest', name: 'DescribeInsightRequest')
    DescribeInsightResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#DescribeInsightResponse', name: 'DescribeInsightResponse')
    DescribeOrganizationHealthRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#DescribeOrganizationHealthRequest', name: 'DescribeOrganizationHealthRequest')
    DescribeOrganizationHealthResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#DescribeOrganizationHealthResponse', name: 'DescribeOrganizationHealthResponse')
    DescribeOrganizationOverviewRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#DescribeOrganizationOverviewRequest', name: 'DescribeOrganizationOverviewRequest')
    DescribeOrganizationOverviewResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#DescribeOrganizationOverviewResponse', name: 'DescribeOrganizationOverviewResponse')
    DescribeOrganizationResourceCollectionHealthRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#DescribeOrganizationResourceCollectionHealthRequest', name: 'DescribeOrganizationResourceCollectionHealthRequest')
    DescribeOrganizationResourceCollectionHealthResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#DescribeOrganizationResourceCollectionHealthResponse', name: 'DescribeOrganizationResourceCollectionHealthResponse')
    DescribeResourceCollectionHealthRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#DescribeResourceCollectionHealthRequest', name: 'DescribeResourceCollectionHealthRequest')
    DescribeResourceCollectionHealthResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#DescribeResourceCollectionHealthResponse', name: 'DescribeResourceCollectionHealthResponse')
    DescribeServiceIntegrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#DescribeServiceIntegrationRequest', name: 'DescribeServiceIntegrationRequest')
    DescribeServiceIntegrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#DescribeServiceIntegrationResponse', name: 'DescribeServiceIntegrationResponse')
    EndTimeRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#EndTimeRange', name: 'EndTimeRange')
    ErrorMessageString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#ErrorMessageString', name: 'ErrorMessageString')
    ErrorNameString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#ErrorNameString', name: 'ErrorNameString')
    ErrorQuotaCodeString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#ErrorQuotaCodeString', name: 'ErrorQuotaCodeString')
    ErrorServiceCodeString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#ErrorServiceCodeString', name: 'ErrorServiceCodeString')
    Event = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#Event', name: 'Event')
    EventClass = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devopsguru#EventClass', name: 'EventClass')
    EventDataSource = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devopsguru#EventDataSource', name: 'EventDataSource')
    EventId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#EventId', name: 'EventId')
    EventName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#EventName', name: 'EventName', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    EventResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#EventResource', name: 'EventResource')
    EventResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#EventResourceArn', name: 'EventResourceArn', traits: {"smithy.api#length" => {"min" => 36, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z]*:[a-z0-9-]*:[a-z0-9-]*:\\d{12}:.*$"})
    EventResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#EventResourceName', name: 'EventResourceName', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^.*$"})
    EventResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#EventResourceType', name: 'EventResourceType', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^.*$"})
    EventResources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#EventResources', name: 'EventResources')
    EventSource = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#EventSource', name: 'EventSource', traits: {"smithy.api#length" => {"min" => 10, "max" => 50}, "smithy.api#pattern" => "^[a-z]+[a-z0-9]*\\.amazonaws\\.com|aws\\.events$"})
    EventSourceOptInStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devopsguru#EventSourceOptInStatus', name: 'EventSourceOptInStatus')
    EventSourcesConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#EventSourcesConfig', name: 'EventSourcesConfig')
    EventTimeRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#EventTimeRange', name: 'EventTimeRange')
    Events = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#Events', name: 'Events')
    Explanation = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#Explanation', name: 'Explanation', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    GetCostEstimationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#GetCostEstimationRequest', name: 'GetCostEstimationRequest')
    GetCostEstimationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#GetCostEstimationResponse', name: 'GetCostEstimationResponse')
    GetResourceCollectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#GetResourceCollectionRequest', name: 'GetResourceCollectionRequest')
    GetResourceCollectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#GetResourceCollectionResponse', name: 'GetResourceCollectionResponse')
    InsightDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#InsightDescription', name: 'InsightDescription')
    InsightFeedback = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#InsightFeedback', name: 'InsightFeedback')
    InsightFeedbackOption = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devopsguru#InsightFeedbackOption', name: 'InsightFeedbackOption')
    InsightHealth = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#InsightHealth', name: 'InsightHealth')
    InsightId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#InsightId', name: 'InsightId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[\\w-]*$"})
    InsightName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#InsightName', name: 'InsightName', traits: {"smithy.api#length" => {"min" => 1, "max" => 530}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    InsightSeverities = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#InsightSeverities', name: 'InsightSeverities', traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    InsightSeverity = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devopsguru#InsightSeverity', name: 'InsightSeverity')
    InsightStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devopsguru#InsightStatus', name: 'InsightStatus')
    InsightStatuses = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#InsightStatuses', name: 'InsightStatuses', traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    InsightTimeRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#InsightTimeRange', name: 'InsightTimeRange')
    InsightType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devopsguru#InsightType', name: 'InsightType')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KMSKeyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#KMSKeyId', name: 'KMSKeyId', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^.*$"})
    KMSServerSideEncryptionIntegration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#KMSServerSideEncryptionIntegration', name: 'KMSServerSideEncryptionIntegration')
    KMSServerSideEncryptionIntegrationConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#KMSServerSideEncryptionIntegrationConfig', name: 'KMSServerSideEncryptionIntegrationConfig')
    ListAnomaliesForInsightFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ListAnomaliesForInsightFilters', name: 'ListAnomaliesForInsightFilters')
    ListAnomaliesForInsightMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devopsguru#ListAnomaliesForInsightMaxResults', name: 'ListAnomaliesForInsightMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    ListAnomaliesForInsightRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ListAnomaliesForInsightRequest', name: 'ListAnomaliesForInsightRequest')
    ListAnomaliesForInsightResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ListAnomaliesForInsightResponse', name: 'ListAnomaliesForInsightResponse')
    ListAnomalousLogGroupsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devopsguru#ListAnomalousLogGroupsMaxResults', name: 'ListAnomalousLogGroupsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 200}})
    ListAnomalousLogGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ListAnomalousLogGroupsRequest', name: 'ListAnomalousLogGroupsRequest')
    ListAnomalousLogGroupsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ListAnomalousLogGroupsResponse', name: 'ListAnomalousLogGroupsResponse')
    ListEventsFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ListEventsFilters', name: 'ListEventsFilters')
    ListEventsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devopsguru#ListEventsMaxResults', name: 'ListEventsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 200}})
    ListEventsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ListEventsRequest', name: 'ListEventsRequest')
    ListEventsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ListEventsResponse', name: 'ListEventsResponse')
    ListInsightsAccountIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#ListInsightsAccountIdList', name: 'ListInsightsAccountIdList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    ListInsightsAnyStatusFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ListInsightsAnyStatusFilter', name: 'ListInsightsAnyStatusFilter')
    ListInsightsClosedStatusFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ListInsightsClosedStatusFilter', name: 'ListInsightsClosedStatusFilter')
    ListInsightsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devopsguru#ListInsightsMaxResults', name: 'ListInsightsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListInsightsOngoingStatusFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ListInsightsOngoingStatusFilter', name: 'ListInsightsOngoingStatusFilter')
    ListInsightsOrganizationalUnitIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#ListInsightsOrganizationalUnitIdList', name: 'ListInsightsOrganizationalUnitIdList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    ListInsightsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ListInsightsRequest', name: 'ListInsightsRequest')
    ListInsightsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ListInsightsResponse', name: 'ListInsightsResponse')
    ListInsightsStatusFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ListInsightsStatusFilter', name: 'ListInsightsStatusFilter')
    ListMonitoredResourcesFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ListMonitoredResourcesFilters', name: 'ListMonitoredResourcesFilters')
    ListMonitoredResourcesMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devopsguru#ListMonitoredResourcesMaxResults', name: 'ListMonitoredResourcesMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListMonitoredResourcesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ListMonitoredResourcesRequest', name: 'ListMonitoredResourcesRequest')
    ListMonitoredResourcesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ListMonitoredResourcesResponse', name: 'ListMonitoredResourcesResponse')
    ListNotificationChannelsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ListNotificationChannelsRequest', name: 'ListNotificationChannelsRequest')
    ListNotificationChannelsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ListNotificationChannelsResponse', name: 'ListNotificationChannelsResponse')
    ListOrganizationInsightsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ListOrganizationInsightsRequest', name: 'ListOrganizationInsightsRequest')
    ListOrganizationInsightsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ListOrganizationInsightsResponse', name: 'ListOrganizationInsightsResponse')
    ListRecommendationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ListRecommendationsRequest', name: 'ListRecommendationsRequest')
    ListRecommendationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ListRecommendationsResponse', name: 'ListRecommendationsResponse')
    Locale = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devopsguru#Locale', name: 'Locale')
    LogAnomalyClass = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#LogAnomalyClass', name: 'LogAnomalyClass')
    LogAnomalyClasses = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#LogAnomalyClasses', name: 'LogAnomalyClasses', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    LogAnomalyShowcase = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#LogAnomalyShowcase', name: 'LogAnomalyShowcase')
    LogAnomalyShowcases = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#LogAnomalyShowcases', name: 'LogAnomalyShowcases', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    LogAnomalyToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#LogAnomalyToken', name: 'LogAnomalyToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    LogAnomalyType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devopsguru#LogAnomalyType', name: 'LogAnomalyType')
    LogEventId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#LogEventId', name: 'LogEventId', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    LogGroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#LogGroupName', name: 'LogGroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    LogStreamName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#LogStreamName', name: 'LogStreamName', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    LogsAnomalyDetectionIntegration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#LogsAnomalyDetectionIntegration', name: 'LogsAnomalyDetectionIntegration')
    LogsAnomalyDetectionIntegrationConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#LogsAnomalyDetectionIntegrationConfig', name: 'LogsAnomalyDetectionIntegrationConfig')
    MeanTimeToRecoverInMilliseconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devopsguru#MeanTimeToRecoverInMilliseconds', name: 'MeanTimeToRecoverInMilliseconds')
    MetricValue = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.devopsguru#MetricValue', name: 'MetricValue')
    MonitoredResourceIdentifier = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#MonitoredResourceIdentifier', name: 'MonitoredResourceIdentifier')
    MonitoredResourceIdentifiers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#MonitoredResourceIdentifiers', name: 'MonitoredResourceIdentifiers')
    MonitoredResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#MonitoredResourceName', name: 'MonitoredResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\.\\-_\\/#A-Za-z0-9]+$"})
    NotificationChannel = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#NotificationChannel', name: 'NotificationChannel')
    NotificationChannelConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#NotificationChannelConfig', name: 'NotificationChannelConfig')
    NotificationChannelId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#NotificationChannelId', name: 'NotificationChannelId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    NotificationFilterConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#NotificationFilterConfig', name: 'NotificationFilterConfig')
    NotificationMessageType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devopsguru#NotificationMessageType', name: 'NotificationMessageType')
    NotificationMessageTypes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#NotificationMessageTypes', name: 'NotificationMessageTypes', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    NumMetricsAnalyzed = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devopsguru#NumMetricsAnalyzed', name: 'NumMetricsAnalyzed', traits: {"smithy.api#default" => 0})
    NumOpenProactiveInsights = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devopsguru#NumOpenProactiveInsights', name: 'NumOpenProactiveInsights', traits: {"smithy.api#default" => 0})
    NumOpenReactiveInsights = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devopsguru#NumOpenReactiveInsights', name: 'NumOpenReactiveInsights', traits: {"smithy.api#default" => 0})
    NumProactiveInsights = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devopsguru#NumProactiveInsights', name: 'NumProactiveInsights', traits: {"smithy.api#default" => 0})
    NumReactiveInsights = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devopsguru#NumReactiveInsights', name: 'NumReactiveInsights', traits: {"smithy.api#default" => 0})
    NumberOfLogLinesOccurrences = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devopsguru#NumberOfLogLinesOccurrences', name: 'NumberOfLogLinesOccurrences', traits: {"smithy.api#default" => 0})
    NumberOfLogLinesScanned = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devopsguru#NumberOfLogLinesScanned', name: 'NumberOfLogLinesScanned', traits: {"smithy.api#default" => 0})
    OpsCenterIntegration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#OpsCenterIntegration', name: 'OpsCenterIntegration')
    OpsCenterIntegrationConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#OpsCenterIntegrationConfig', name: 'OpsCenterIntegrationConfig')
    OptInStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devopsguru#OptInStatus', name: 'OptInStatus')
    OrganizationResourceCollectionMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devopsguru#OrganizationResourceCollectionMaxResults', name: 'OrganizationResourceCollectionMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    OrganizationResourceCollectionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devopsguru#OrganizationResourceCollectionType', name: 'OrganizationResourceCollectionType')
    OrganizationalUnitId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#OrganizationalUnitId', name: 'OrganizationalUnitId', traits: {"smithy.api#length" => {"min" => 0, "max" => 68}, "smithy.api#pattern" => "^ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}$"})
    OrganizationalUnitIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#OrganizationalUnitIdList', name: 'OrganizationalUnitIdList', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    PerformanceInsightsMetricDimension = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#PerformanceInsightsMetricDimension', name: 'PerformanceInsightsMetricDimension')
    PerformanceInsightsMetricDimensionGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#PerformanceInsightsMetricDimensionGroup', name: 'PerformanceInsightsMetricDimensionGroup')
    PerformanceInsightsMetricDimensions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#PerformanceInsightsMetricDimensions', name: 'PerformanceInsightsMetricDimensions')
    PerformanceInsightsMetricDisplayName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#PerformanceInsightsMetricDisplayName', name: 'PerformanceInsightsMetricDisplayName')
    PerformanceInsightsMetricFilterKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#PerformanceInsightsMetricFilterKey', name: 'PerformanceInsightsMetricFilterKey')
    PerformanceInsightsMetricFilterMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.devopsguru#PerformanceInsightsMetricFilterMap', name: 'PerformanceInsightsMetricFilterMap')
    PerformanceInsightsMetricFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#PerformanceInsightsMetricFilterValue', name: 'PerformanceInsightsMetricFilterValue')
    PerformanceInsightsMetricGroup = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#PerformanceInsightsMetricGroup', name: 'PerformanceInsightsMetricGroup')
    PerformanceInsightsMetricLimitInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devopsguru#PerformanceInsightsMetricLimitInteger', name: 'PerformanceInsightsMetricLimitInteger', traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    PerformanceInsightsMetricName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#PerformanceInsightsMetricName', name: 'PerformanceInsightsMetricName')
    PerformanceInsightsMetricQuery = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#PerformanceInsightsMetricQuery', name: 'PerformanceInsightsMetricQuery')
    PerformanceInsightsMetricUnit = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#PerformanceInsightsMetricUnit', name: 'PerformanceInsightsMetricUnit')
    PerformanceInsightsMetricsDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#PerformanceInsightsMetricsDetail', name: 'PerformanceInsightsMetricsDetail')
    PerformanceInsightsMetricsDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#PerformanceInsightsMetricsDetails', name: 'PerformanceInsightsMetricsDetails')
    PerformanceInsightsReferenceComparisonValues = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#PerformanceInsightsReferenceComparisonValues', name: 'PerformanceInsightsReferenceComparisonValues')
    PerformanceInsightsReferenceData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#PerformanceInsightsReferenceData', name: 'PerformanceInsightsReferenceData')
    PerformanceInsightsReferenceDataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#PerformanceInsightsReferenceDataList', name: 'PerformanceInsightsReferenceDataList')
    PerformanceInsightsReferenceMetric = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#PerformanceInsightsReferenceMetric', name: 'PerformanceInsightsReferenceMetric')
    PerformanceInsightsReferenceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#PerformanceInsightsReferenceName', name: 'PerformanceInsightsReferenceName')
    PerformanceInsightsReferenceScalar = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#PerformanceInsightsReferenceScalar', name: 'PerformanceInsightsReferenceScalar')
    PerformanceInsightsStat = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#PerformanceInsightsStat', name: 'PerformanceInsightsStat')
    PerformanceInsightsStatType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#PerformanceInsightsStatType', name: 'PerformanceInsightsStatType')
    PerformanceInsightsStats = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#PerformanceInsightsStats', name: 'PerformanceInsightsStats')
    PerformanceInsightsValueDouble = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.devopsguru#PerformanceInsightsValueDouble', name: 'PerformanceInsightsValueDouble')
    PredictionTimeRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#PredictionTimeRange', name: 'PredictionTimeRange')
    ProactiveAnomalies = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#ProactiveAnomalies', name: 'ProactiveAnomalies')
    ProactiveAnomaly = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ProactiveAnomaly', name: 'ProactiveAnomaly')
    ProactiveAnomalySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ProactiveAnomalySummary', name: 'ProactiveAnomalySummary')
    ProactiveInsight = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ProactiveInsight', name: 'ProactiveInsight')
    ProactiveInsightSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ProactiveInsightSummary', name: 'ProactiveInsightSummary')
    ProactiveInsights = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#ProactiveInsights', name: 'ProactiveInsights')
    ProactiveOrganizationInsightSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ProactiveOrganizationInsightSummary', name: 'ProactiveOrganizationInsightSummary')
    ProactiveOrganizationInsights = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#ProactiveOrganizationInsights', name: 'ProactiveOrganizationInsights')
    PutFeedbackRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#PutFeedbackRequest', name: 'PutFeedbackRequest')
    PutFeedbackResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#PutFeedbackResponse', name: 'PutFeedbackResponse')
    ReactiveAnomalies = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#ReactiveAnomalies', name: 'ReactiveAnomalies')
    ReactiveAnomaly = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ReactiveAnomaly', name: 'ReactiveAnomaly')
    ReactiveAnomalySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ReactiveAnomalySummary', name: 'ReactiveAnomalySummary')
    ReactiveInsight = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ReactiveInsight', name: 'ReactiveInsight')
    ReactiveInsightSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ReactiveInsightSummary', name: 'ReactiveInsightSummary')
    ReactiveInsights = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#ReactiveInsights', name: 'ReactiveInsights')
    ReactiveOrganizationInsightSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ReactiveOrganizationInsightSummary', name: 'ReactiveOrganizationInsightSummary')
    ReactiveOrganizationInsights = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#ReactiveOrganizationInsights', name: 'ReactiveOrganizationInsights')
    Recommendation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#Recommendation', name: 'Recommendation')
    RecommendationCategory = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#RecommendationCategory', name: 'RecommendationCategory')
    RecommendationDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#RecommendationDescription', name: 'RecommendationDescription')
    RecommendationLink = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#RecommendationLink', name: 'RecommendationLink')
    RecommendationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#RecommendationName', name: 'RecommendationName')
    RecommendationReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#RecommendationReason', name: 'RecommendationReason')
    RecommendationRelatedAnomalies = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#RecommendationRelatedAnomalies', name: 'RecommendationRelatedAnomalies')
    RecommendationRelatedAnomaly = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#RecommendationRelatedAnomaly', name: 'RecommendationRelatedAnomaly')
    RecommendationRelatedAnomalyResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#RecommendationRelatedAnomalyResource', name: 'RecommendationRelatedAnomalyResource')
    RecommendationRelatedAnomalyResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#RecommendationRelatedAnomalyResourceName', name: 'RecommendationRelatedAnomalyResourceName')
    RecommendationRelatedAnomalyResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#RecommendationRelatedAnomalyResourceType', name: 'RecommendationRelatedAnomalyResourceType')
    RecommendationRelatedAnomalyResources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#RecommendationRelatedAnomalyResources', name: 'RecommendationRelatedAnomalyResources')
    RecommendationRelatedAnomalySourceDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#RecommendationRelatedAnomalySourceDetail', name: 'RecommendationRelatedAnomalySourceDetail')
    RecommendationRelatedCloudWatchMetricsSourceDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#RecommendationRelatedCloudWatchMetricsSourceDetail', name: 'RecommendationRelatedCloudWatchMetricsSourceDetail')
    RecommendationRelatedCloudWatchMetricsSourceDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#RecommendationRelatedCloudWatchMetricsSourceDetails', name: 'RecommendationRelatedCloudWatchMetricsSourceDetails')
    RecommendationRelatedCloudWatchMetricsSourceMetricName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#RecommendationRelatedCloudWatchMetricsSourceMetricName', name: 'RecommendationRelatedCloudWatchMetricsSourceMetricName')
    RecommendationRelatedCloudWatchMetricsSourceNamespace = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#RecommendationRelatedCloudWatchMetricsSourceNamespace', name: 'RecommendationRelatedCloudWatchMetricsSourceNamespace')
    RecommendationRelatedEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#RecommendationRelatedEvent', name: 'RecommendationRelatedEvent')
    RecommendationRelatedEventName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#RecommendationRelatedEventName', name: 'RecommendationRelatedEventName')
    RecommendationRelatedEventResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#RecommendationRelatedEventResource', name: 'RecommendationRelatedEventResource')
    RecommendationRelatedEventResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#RecommendationRelatedEventResourceName', name: 'RecommendationRelatedEventResourceName')
    RecommendationRelatedEventResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#RecommendationRelatedEventResourceType', name: 'RecommendationRelatedEventResourceType')
    RecommendationRelatedEventResources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#RecommendationRelatedEventResources', name: 'RecommendationRelatedEventResources')
    RecommendationRelatedEvents = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#RecommendationRelatedEvents', name: 'RecommendationRelatedEvents')
    Recommendations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#Recommendations', name: 'Recommendations', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    RelatedAnomalySourceDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#RelatedAnomalySourceDetails', name: 'RelatedAnomalySourceDetails')
    RemoveNotificationChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#RemoveNotificationChannelRequest', name: 'RemoveNotificationChannelRequest')
    RemoveNotificationChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#RemoveNotificationChannelResponse', name: 'RemoveNotificationChannelResponse')
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    ResourceCollection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ResourceCollection', name: 'ResourceCollection')
    ResourceCollectionFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ResourceCollectionFilter', name: 'ResourceCollectionFilter')
    ResourceCollectionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devopsguru#ResourceCollectionType', name: 'ResourceCollectionType')
    ResourceHours = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devopsguru#ResourceHours', name: 'ResourceHours')
    ResourceIdString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#ResourceIdString', name: 'ResourceIdString')
    ResourceIdType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#ResourceIdType', name: 'ResourceIdType')
    ResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#ResourceName', name: 'ResourceName')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePermission = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devopsguru#ResourcePermission', name: 'ResourcePermission')
    ResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#ResourceType', name: 'ResourceType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z]+[a-zA-Z0-9-_:]*$"})
    ResourceTypeFilter = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devopsguru#ResourceTypeFilter', name: 'ResourceTypeFilter')
    ResourceTypeFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#ResourceTypeFilters', name: 'ResourceTypeFilters')
    RetryAfterSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devopsguru#RetryAfterSeconds', name: 'RetryAfterSeconds', traits: {"smithy.api#default" => 0})
    SearchInsightsAccountIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#SearchInsightsAccountIdList', name: 'SearchInsightsAccountIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    SearchInsightsFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#SearchInsightsFilters', name: 'SearchInsightsFilters')
    SearchInsightsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devopsguru#SearchInsightsMaxResults', name: 'SearchInsightsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    SearchInsightsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#SearchInsightsRequest', name: 'SearchInsightsRequest')
    SearchInsightsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#SearchInsightsResponse', name: 'SearchInsightsResponse')
    SearchOrganizationInsightsFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#SearchOrganizationInsightsFilters', name: 'SearchOrganizationInsightsFilters')
    SearchOrganizationInsightsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devopsguru#SearchOrganizationInsightsMaxResults', name: 'SearchOrganizationInsightsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    SearchOrganizationInsightsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#SearchOrganizationInsightsRequest', name: 'SearchOrganizationInsightsRequest')
    SearchOrganizationInsightsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#SearchOrganizationInsightsResponse', name: 'SearchOrganizationInsightsResponse')
    ServerSideEncryptionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devopsguru#ServerSideEncryptionType', name: 'ServerSideEncryptionType')
    ServiceCollection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ServiceCollection', name: 'ServiceCollection')
    ServiceHealth = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ServiceHealth', name: 'ServiceHealth')
    ServiceHealths = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#ServiceHealths', name: 'ServiceHealths')
    ServiceInsightHealth = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ServiceInsightHealth', name: 'ServiceInsightHealth')
    ServiceIntegrationConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ServiceIntegrationConfig', name: 'ServiceIntegrationConfig')
    ServiceName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devopsguru#ServiceName', name: 'ServiceName')
    ServiceNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#ServiceNames', name: 'ServiceNames')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceResourceCost = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ServiceResourceCost', name: 'ServiceResourceCost')
    ServiceResourceCosts = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#ServiceResourceCosts', name: 'ServiceResourceCosts')
    SnsChannelConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#SnsChannelConfig', name: 'SnsChannelConfig')
    SsmOpsItemId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#SsmOpsItemId', name: 'SsmOpsItemId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^.*$"})
    StackName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#StackName', name: 'StackName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z*]+[a-zA-Z0-9-]*$"})
    StackNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#StackNames', name: 'StackNames')
    StartCostEstimationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#StartCostEstimationRequest', name: 'StartCostEstimationRequest')
    StartCostEstimationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#StartCostEstimationResponse', name: 'StartCostEstimationResponse')
    StartTimeRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#StartTimeRange', name: 'StartTimeRange')
    TagCollection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#TagCollection', name: 'TagCollection')
    TagCollectionFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#TagCollectionFilter', name: 'TagCollectionFilter')
    TagCollectionFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#TagCollectionFilters', name: 'TagCollectionFilters')
    TagCollections = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#TagCollections', name: 'TagCollections')
    TagCostEstimationResourceCollectionFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#TagCostEstimationResourceCollectionFilter', name: 'TagCostEstimationResourceCollectionFilter')
    TagCostEstimationResourceCollectionFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#TagCostEstimationResourceCollectionFilters', name: 'TagCostEstimationResourceCollectionFilters')
    TagHealth = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#TagHealth', name: 'TagHealth')
    TagHealths = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#TagHealths', name: 'TagHealths')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*|\\*)$"})
    TagValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#TagValues', name: 'TagValues')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.devopsguru#Timestamp', name: 'Timestamp')
    TimestampMetricValuePair = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#TimestampMetricValuePair', name: 'TimestampMetricValuePair')
    TimestampMetricValuePairList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#TimestampMetricValuePairList', name: 'TimestampMetricValuePairList')
    TopicArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#TopicArn', name: 'TopicArn', traits: {"smithy.api#length" => {"min" => 36, "max" => 1024}, "smithy.api#pattern" => "^arn:aws[a-z0-9-]*:sns:[a-z0-9-]+:\\d{12}:[^:]+$"})
    UpdateCloudFormationCollectionFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#UpdateCloudFormationCollectionFilter', name: 'UpdateCloudFormationCollectionFilter')
    UpdateEventSourcesConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#UpdateEventSourcesConfigRequest', name: 'UpdateEventSourcesConfigRequest')
    UpdateEventSourcesConfigResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#UpdateEventSourcesConfigResponse', name: 'UpdateEventSourcesConfigResponse')
    UpdateResourceCollectionAction = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devopsguru#UpdateResourceCollectionAction', name: 'UpdateResourceCollectionAction')
    UpdateResourceCollectionFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#UpdateResourceCollectionFilter', name: 'UpdateResourceCollectionFilter')
    UpdateResourceCollectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#UpdateResourceCollectionRequest', name: 'UpdateResourceCollectionRequest')
    UpdateResourceCollectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#UpdateResourceCollectionResponse', name: 'UpdateResourceCollectionResponse')
    UpdateServiceIntegrationConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#UpdateServiceIntegrationConfig', name: 'UpdateServiceIntegrationConfig')
    UpdateServiceIntegrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#UpdateServiceIntegrationRequest', name: 'UpdateServiceIntegrationRequest')
    UpdateServiceIntegrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#UpdateServiceIntegrationResponse', name: 'UpdateServiceIntegrationResponse')
    UpdateStackNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#UpdateStackNames', name: 'UpdateStackNames', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    UpdateTagCollectionFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#UpdateTagCollectionFilter', name: 'UpdateTagCollectionFilter')
    UpdateTagCollectionFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#UpdateTagCollectionFilters', name: 'UpdateTagCollectionFilters')
    UpdateTagValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#UpdateTagValues', name: 'UpdateTagValues', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    UuidNextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devopsguru#UuidNextToken', name: 'UuidNextToken', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devopsguru#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFields = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devopsguru#ValidationExceptionFields', name: 'ValidationExceptionFields')
    ValidationExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devopsguru#ValidationExceptionReason', name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageString, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountHealth.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services account. </p>"}))
    AccountHealth.add_member(:insight, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountInsightHealth, location_name: 'Insight', traits: {"smithy.api#documentation" => "<p> Information about the health of the Amazon Web Services resources in your account, including the\n\t\t\tnumber of open proactive, open reactive insights, and the Mean Time to Recover (MTTR) of closed insights.\n\t\t</p>"}))
    AccountHealth.type = Types::AccountHealth
    AccountHealths.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountHealth)
    AccountIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId)
    AccountInsightHealth.add_member(:open_proactive_insights, Smithy::Schema::Shapes::ShapeRef.new(shape: NumOpenProactiveInsights, location_name: 'OpenProactiveInsights', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>An integer that specifies the number of open proactive insights in your Amazon Web Services\n\t\t\taccount.</p>"}))
    AccountInsightHealth.add_member(:open_reactive_insights, Smithy::Schema::Shapes::ShapeRef.new(shape: NumOpenReactiveInsights, location_name: 'OpenReactiveInsights', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>An integer that specifies the number of open reactive insights in your Amazon Web Services\n\t\t\taccount.</p>"}))
    AccountInsightHealth.type = Types::AccountInsightHealth
    AddNotificationChannelRequest.add_member(:config, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationChannelConfig, location_name: 'Config', traits: {"smithy.api#documentation" => "<p> A <code>NotificationChannelConfig</code> object that specifies what type of\n\t\t\tnotification channel to add. The one \n      \tsupported notification channel is Amazon Simple Notification Service (Amazon SNS). </p>", "smithy.api#required" => {}}))
    AddNotificationChannelRequest.type = Types::AddNotificationChannelRequest
    AddNotificationChannelResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationChannelId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p> The ID of the added notification channel. </p>", "smithy.api#required" => {}}))
    AddNotificationChannelResponse.type = Types::AddNotificationChannelResponse
    AmazonCodeGuruProfilerIntegration.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSourceOptInStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the CodeGuru Profiler integration. Specifies if DevOps Guru is enabled to\n\t\t\tconsume recommendations that are generated from Amazon CodeGuru Profiler.</p>"}))
    AmazonCodeGuruProfilerIntegration.type = Types::AmazonCodeGuruProfilerIntegration
    AnomalousLogGroup.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'LogGroupName', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe name of the CloudWatch log group.\n\t\t</p>"}))
    AnomalousLogGroup.add_member(:impact_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ImpactStartTime', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe time the anomalous log events began. The impact start time indicates the time of the first log anomaly event that occurs.\n\t\t</p>"}))
    AnomalousLogGroup.add_member(:impact_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ImpactEndTime', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe time the anomalous log events stopped.\n\t\t</p>"}))
    AnomalousLogGroup.add_member(:number_of_log_lines_scanned, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfLogLinesScanned, location_name: 'NumberOfLogLinesScanned', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>\n\t\t\tThe number of log lines that were scanned for anomalous log events.\n\t\t</p>"}))
    AnomalousLogGroup.add_member(:log_anomaly_showcases, Smithy::Schema::Shapes::ShapeRef.new(shape: LogAnomalyShowcases, location_name: 'LogAnomalyShowcases', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe log anomalies in the log group. Each log anomaly displayed represents a cluster of similar anomalous log events.\n\t\t</p>"}))
    AnomalousLogGroup.type = Types::AnomalousLogGroup
    AnomalousLogGroups.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalousLogGroup)
    AnomalyReportedTimeRange.add_member(:open_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'OpenTime', traits: {"smithy.api#documentation" => "<p> The time when an anomaly is opened. </p>", "smithy.api#required" => {}}))
    AnomalyReportedTimeRange.add_member(:close_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CloseTime', traits: {"smithy.api#documentation" => "<p> The time when an anomaly is closed. </p>"}))
    AnomalyReportedTimeRange.type = Types::AnomalyReportedTimeRange
    AnomalyResource.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Web Services resource.</p>"}))
    AnomalyResource.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the Amazon Web Services resource.</p>"}))
    AnomalyResource.type = Types::AnomalyResource
    AnomalyResources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyResource)
    AnomalySeverity.add_member(:low, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW', traits: {"smithy.api#enumValue" => "LOW"}))
    AnomalySeverity.add_member(:medium, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "MEDIUM"}))
    AnomalySeverity.add_member(:high, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGH', traits: {"smithy.api#enumValue" => "HIGH"}))
    AnomalySourceDetails.add_member(:cloud_watch_metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchMetricsDetails, location_name: 'CloudWatchMetrics', traits: {"smithy.api#documentation" => "<p>An array of <code>CloudWatchMetricsDetail</code> objects that contain information\n\t\t\tabout analyzed CloudWatch metrics that show anomalous behavior. </p>"}))
    AnomalySourceDetails.add_member(:performance_insights_metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceInsightsMetricsDetails, location_name: 'PerformanceInsightsMetrics', traits: {"smithy.api#documentation" => "<p>An array of <code>PerformanceInsightsMetricsDetail</code> objects that contain\n\t\t\tinformation about analyzed Performance Insights metrics that show anomalous behavior.</p>"}))
    AnomalySourceDetails.type = Types::AnomalySourceDetails
    AnomalySourceMetadata.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalySource, location_name: 'Source', traits: {"smithy.api#documentation" => "<p>The source of the anomaly.</p>"}))
    AnomalySourceMetadata.add_member(:source_resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'SourceResourceName', traits: {"smithy.api#documentation" => "<p>The name of the anomaly's resource.</p>"}))
    AnomalySourceMetadata.add_member(:source_resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'SourceResourceType', traits: {"smithy.api#documentation" => "<p>The anomaly's resource type.</p>"}))
    AnomalySourceMetadata.type = Types::AnomalySourceMetadata
    AnomalyStatus.add_member(:ongoing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONGOING', traits: {"smithy.api#enumValue" => "ONGOING"}))
    AnomalyStatus.add_member(:closed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOSED', traits: {"smithy.api#enumValue" => "CLOSED"}))
    AnomalyTimeRange.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p> The time when the anomalous behavior started. </p>", "smithy.api#required" => {}}))
    AnomalyTimeRange.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p> The time when the anomalous behavior ended. </p>"}))
    AnomalyTimeRange.type = Types::AnomalyTimeRange
    AnomalyType.add_member(:causal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CAUSAL', traits: {"smithy.api#enumValue" => "CAUSAL"}))
    AnomalyType.add_member(:contextual, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTEXTUAL', traits: {"smithy.api#enumValue" => "CONTEXTUAL"}))
    AssociatedResourceArns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn)
    Channels.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationChannel)
    CloudFormationCollection.add_member(:stack_names, Smithy::Schema::Shapes::ShapeRef.new(shape: StackNames, location_name: 'StackNames', traits: {"smithy.api#documentation" => "<p> An array of CloudFormation stack names. </p>"}))
    CloudFormationCollection.type = Types::CloudFormationCollection
    CloudFormationCollectionFilter.add_member(:stack_names, Smithy::Schema::Shapes::ShapeRef.new(shape: StackNames, location_name: 'StackNames', traits: {"smithy.api#documentation" => "<p> An array of CloudFormation stack names. </p>"}))
    CloudFormationCollectionFilter.type = Types::CloudFormationCollectionFilter
    CloudFormationCostEstimationResourceCollectionFilter.add_member(:stack_names, Smithy::Schema::Shapes::ShapeRef.new(shape: CostEstimationStackNames, location_name: 'StackNames', traits: {"smithy.api#documentation" => "<p>An array of CloudFormation stack names. Its size is fixed at 1 item.</p>"}))
    CloudFormationCostEstimationResourceCollectionFilter.type = Types::CloudFormationCostEstimationResourceCollectionFilter
    CloudFormationHealth.add_member(:stack_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StackName, location_name: 'StackName', traits: {"smithy.api#documentation" => "<p> The name of the CloudFormation stack. </p>"}))
    CloudFormationHealth.add_member(:insight, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightHealth, location_name: 'Insight', traits: {"smithy.api#documentation" => "<p> Information about the health of the Amazon Web Services resources in your account that are\n\t\t\tspecified by an Amazon Web Services CloudFormation stack, including the number of open proactive, open reactive\n\t\t\tinsights, and the Mean Time to Recover (MTTR) of closed insights. </p>"}))
    CloudFormationHealth.add_member(:analyzed_resource_count, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzedResourceCount, location_name: 'AnalyzedResourceCount', traits: {"smithy.api#documentation" => "<p>\n\t\t\tNumber of resources that DevOps Guru is monitoring in your account that are specified by an Amazon Web Services CloudFormation stack.\n\t\t</p>"}))
    CloudFormationHealth.type = Types::CloudFormationHealth
    CloudFormationHealths.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CloudFormationHealth)
    CloudWatchMetricDataStatusCode.add_member(:complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "Complete"}))
    CloudWatchMetricDataStatusCode.add_member(:internal_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "InternalError"}))
    CloudWatchMetricDataStatusCode.add_member(:partial_data, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARTIAL_DATA', traits: {"smithy.api#enumValue" => "PartialData"}))
    CloudWatchMetricsDataSummary.add_member(:timestamp_metric_value_pair_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampMetricValuePairList, location_name: 'TimestampMetricValuePairList', traits: {"smithy.api#documentation" => "<p>This is a list of Amazon CloudWatch metric values at given timestamp.</p>"}))
    CloudWatchMetricsDataSummary.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchMetricDataStatusCode, location_name: 'StatusCode', traits: {"smithy.api#documentation" => "<p>This is an enum of the status showing whether the metric value pair list has partial\n\t\t\tor complete data, or if there was an error.</p>"}))
    CloudWatchMetricsDataSummary.type = Types::CloudWatchMetricsDataSummary
    CloudWatchMetricsDetail.add_member(:metric_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchMetricsMetricName, location_name: 'MetricName', traits: {"smithy.api#documentation" => "<p> The name of the CloudWatch metric. </p>"}))
    CloudWatchMetricsDetail.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchMetricsNamespace, location_name: 'Namespace', traits: {"smithy.api#documentation" => "<p> The namespace of the CloudWatch metric. A namespace is a container for CloudWatch metrics.\n\t\t</p>"}))
    CloudWatchMetricsDetail.add_member(:dimensions, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchMetricsDimensions, location_name: 'Dimensions', traits: {"smithy.api#documentation" => "<p> An array of CloudWatch dimensions associated with </p>"}))
    CloudWatchMetricsDetail.add_member(:stat, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchMetricsStat, location_name: 'Stat', traits: {"smithy.api#documentation" => "<p> The type of statistic associated with the CloudWatch metric. For more information, see\n\t\t\t\t<a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Statistic\">Statistics</a> in the <i>Amazon CloudWatch User Guide</i>. </p>"}))
    CloudWatchMetricsDetail.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchMetricsUnit, location_name: 'Unit', traits: {"smithy.api#documentation" => "<p> The unit of measure used for the CloudWatch metric. For example, <code>Bytes</code>,\n\t\t\t\t<code>Seconds</code>, <code>Count</code>, and <code>Percent</code>. </p>"}))
    CloudWatchMetricsDetail.add_member(:period, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchMetricsPeriod, location_name: 'Period', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The length of time associated with the CloudWatch metric in number of seconds. </p>"}))
    CloudWatchMetricsDetail.add_member(:metric_data_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchMetricsDataSummary, location_name: 'MetricDataSummary', traits: {"smithy.api#documentation" => "<p>This object returns anomaly metric data.</p>"}))
    CloudWatchMetricsDetail.type = Types::CloudWatchMetricsDetail
    CloudWatchMetricsDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchMetricsDetail)
    CloudWatchMetricsDimension.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchMetricsDimensionName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p> The name of the CloudWatch dimension. </p>"}))
    CloudWatchMetricsDimension.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchMetricsDimensionValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p> The value of the CloudWatch dimension. </p>"}))
    CloudWatchMetricsDimension.type = Types::CloudWatchMetricsDimension
    CloudWatchMetricsDimensions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchMetricsDimension)
    CloudWatchMetricsStat.add_member(:sum, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUM', traits: {"smithy.api#enumValue" => "Sum"}))
    CloudWatchMetricsStat.add_member(:average, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVERAGE', traits: {"smithy.api#enumValue" => "Average"}))
    CloudWatchMetricsStat.add_member(:sample_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAMPLE_COUNT', traits: {"smithy.api#enumValue" => "SampleCount"}))
    CloudWatchMetricsStat.add_member(:minimum, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MINIMUM', traits: {"smithy.api#enumValue" => "Minimum"}))
    CloudWatchMetricsStat.add_member(:maximum, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAXIMUM', traits: {"smithy.api#enumValue" => "Maximum"}))
    CloudWatchMetricsStat.add_member(:p99, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'P99', traits: {"smithy.api#enumValue" => "p99"}))
    CloudWatchMetricsStat.add_member(:p90, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'P90', traits: {"smithy.api#enumValue" => "p90"}))
    CloudWatchMetricsStat.add_member(:p50, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'P50', traits: {"smithy.api#enumValue" => "p50"}))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageString, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p> The ID of the Amazon Web Services resource in which a conflict occurred. </p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p> The type of the Amazon Web Services resource in which a conflict occurred. </p>", "smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CostEstimationResourceCollectionFilter.add_member(:cloud_formation, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudFormationCostEstimationResourceCollectionFilter, location_name: 'CloudFormation', traits: {"smithy.api#documentation" => "<p>An object that specifies the CloudFormation stack that defines the Amazon Web Services resources\n\t\t\tused to create a monthly estimate for DevOps Guru.</p>"}))
    CostEstimationResourceCollectionFilter.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagCostEstimationResourceCollectionFilters, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services tags used to filter the resource collection that is used for a cost\n\t\t\testimate.</p>\n         <p>Tags help you identify and organize your Amazon Web Services resources. Many Amazon Web Services services support\n   \t\ttagging, so you can assign the same tag to resources from different services to indicate\n   \t\tthat the resources are related. For example, you can assign the same tag to an Amazon DynamoDB\n   \t\ttable resource that you assign to an Lambda function. For more information about\n   \t\tusing tags, see the <a href=\"https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/tagging-best-practices.html\">Tagging\n   \t\t\tbest practices</a> whitepaper. </p>\n         <p>Each Amazon Web Services tag has two parts. </p>\n         <ul>\n            <li>\n               <p>A tag <i>key</i> (for example, <code>CostCenter</code>,\n   \t\t\t\t<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag\n   \t\t\t\t<i>keys</i> are case-sensitive.</p>\n            </li>\n            <li>\n               <p>An optional field known as a tag <i>value</i> (for example,\n   \t\t\t\t<code>111122223333</code>, <code>Production</code>, or a team\n   \t\t\t\tname). Omitting the tag <i>value</i> is the same as using an empty\n   \t\t\t\tstring. Like tag <i>keys</i>, tag <i>values</i> are\n   \t\t\t\tcase-sensitive.</p>\n            </li>\n         </ul>\n         <p>Together these are known as <i>key</i>-<i>value</i> pairs.</p>\n         <important>\n            <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the\n\t\t\tprefix <code>Devops-guru-</code>. The tag <i>key</i> might be\n\t\t\t<code>DevOps-Guru-deployment-application</code> or\n\t\t\t<code>devops-guru-rds-application</code>. When you create a <i>key</i>, the case of characters in the <i>key</i> can be whatever you choose. After you create a <i>key</i>, it is case-sensitive.\n\t\t\t For example, DevOps Guru works with a\n\t\t\t<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named\n\t\t\t<code>DevOps-Guru-RDS</code>, and these act as two different <i>keys</i>. Possible <i>key</i>/<i>value</i> pairs in your\n\t\t\tapplication might be <code>Devops-Guru-production-application/RDS</code> or\n\t\t\t<code>Devops-Guru-production-application/containers</code>.</p>\n         </important>"}))
    CostEstimationResourceCollectionFilter.type = Types::CostEstimationResourceCollectionFilter
    CostEstimationServiceResourceState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    CostEstimationServiceResourceState.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    CostEstimationStackNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StackName)
    CostEstimationStatus.add_member(:ongoing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONGOING', traits: {"smithy.api#enumValue" => "ONGOING"}))
    CostEstimationStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    CostEstimationTagValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    CostEstimationTimeRange.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The start time of the cost estimation.</p>"}))
    CostEstimationTimeRange.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The end time of the cost estimation.</p>"}))
    CostEstimationTimeRange.type = Types::CostEstimationTimeRange
    DeleteInsightRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the insight.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteInsightRequest.type = Types::DeleteInsightRequest
    DeleteInsightResponse.type = Types::DeleteInsightResponse
    DescribeAccountHealthRequest.type = Types::DescribeAccountHealthRequest
    DescribeAccountHealthResponse.add_member(:open_reactive_insights, Smithy::Schema::Shapes::ShapeRef.new(shape: NumOpenReactiveInsights, location_name: 'OpenReactiveInsights', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> An integer that specifies the number of open reactive insights in your Amazon Web Services account.\n\t\t</p>", "smithy.api#required" => {}}))
    DescribeAccountHealthResponse.add_member(:open_proactive_insights, Smithy::Schema::Shapes::ShapeRef.new(shape: NumOpenProactiveInsights, location_name: 'OpenProactiveInsights', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> An integer that specifies the number of open proactive insights in your Amazon Web Services\n\t\t\taccount. </p>", "smithy.api#required" => {}}))
    DescribeAccountHealthResponse.add_member(:metrics_analyzed, Smithy::Schema::Shapes::ShapeRef.new(shape: NumMetricsAnalyzed, location_name: 'MetricsAnalyzed', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> An integer that specifies the number of metrics that have been analyzed in your Amazon Web Services\n\t\t\taccount. </p>", "smithy.api#required" => {}}))
    DescribeAccountHealthResponse.add_member(:resource_hours, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceHours, location_name: 'ResourceHours', traits: {"smithy.api#documentation" => "<p>The number of Amazon DevOps Guru resource analysis hours billed to the current Amazon Web Services account in\n\t\t\tthe last hour. </p>", "smithy.api#required" => {}}))
    DescribeAccountHealthResponse.add_member(:analyzed_resource_count, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzedResourceCount, location_name: 'AnalyzedResourceCount', traits: {"smithy.api#documentation" => "<p>\n\t\t\tNumber of resources that DevOps Guru is monitoring in your Amazon Web Services account.\n\t\t</p>"}))
    DescribeAccountHealthResponse.type = Types::DescribeAccountHealthResponse
    DescribeAccountOverviewRequest.add_member(:from_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'FromTime', traits: {"smithy.api#documentation" => "<p> The start of the time range passed in. The start time granularity is at the day\n\t\t\tlevel. The floor of the start time is used. Returned information occurred after this\n\t\t\tday. </p>", "smithy.api#required" => {}}))
    DescribeAccountOverviewRequest.add_member(:to_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ToTime', traits: {"smithy.api#documentation" => "<p> The end of the time range passed in. The start time granularity is at the day level.\n\t\t\tThe floor of the start time is used. Returned information occurred before this day. If\n\t\t\tthis is not specified, then the current day is used. </p>"}))
    DescribeAccountOverviewRequest.type = Types::DescribeAccountOverviewRequest
    DescribeAccountOverviewResponse.add_member(:reactive_insights, Smithy::Schema::Shapes::ShapeRef.new(shape: NumReactiveInsights, location_name: 'ReactiveInsights', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> An integer that specifies the number of open reactive insights in your Amazon Web Services account\n\t\t\tthat were created during the time range passed in. </p>", "smithy.api#required" => {}}))
    DescribeAccountOverviewResponse.add_member(:proactive_insights, Smithy::Schema::Shapes::ShapeRef.new(shape: NumProactiveInsights, location_name: 'ProactiveInsights', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> An integer that specifies the number of open proactive insights in your Amazon Web Services account\n\t\t\tthat were created during the time range passed in. </p>", "smithy.api#required" => {}}))
    DescribeAccountOverviewResponse.add_member(:mean_time_to_recover_in_milliseconds, Smithy::Schema::Shapes::ShapeRef.new(shape: MeanTimeToRecoverInMilliseconds, location_name: 'MeanTimeToRecoverInMilliseconds', traits: {"smithy.api#documentation" => "<p> The Mean Time to Recover (MTTR) for all closed insights that were created during the time range passed in.\n\t\t</p>", "smithy.api#required" => {}}))
    DescribeAccountOverviewResponse.type = Types::DescribeAccountOverviewResponse
    DescribeAnomalyRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p> The ID of the anomaly. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAnomalyRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The ID of the member account.</p>", "smithy.api#httpQuery" => "AccountId"}))
    DescribeAnomalyRequest.type = Types::DescribeAnomalyRequest
    DescribeAnomalyResponse.add_member(:proactive_anomaly, Smithy::Schema::Shapes::ShapeRef.new(shape: ProactiveAnomaly, location_name: 'ProactiveAnomaly', traits: {"smithy.api#documentation" => "<p> A <code>ProactiveAnomaly</code> object that represents the requested anomaly. </p>"}))
    DescribeAnomalyResponse.add_member(:reactive_anomaly, Smithy::Schema::Shapes::ShapeRef.new(shape: ReactiveAnomaly, location_name: 'ReactiveAnomaly', traits: {"smithy.api#documentation" => "<p> A <code>ReactiveAnomaly</code> object that represents the requested anomaly. </p>"}))
    DescribeAnomalyResponse.type = Types::DescribeAnomalyResponse
    DescribeEventSourcesConfigRequest.type = Types::DescribeEventSourcesConfigRequest
    DescribeEventSourcesConfigResponse.add_member(:event_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSourcesConfig, location_name: 'EventSources', traits: {"smithy.api#documentation" => "<p>Lists the event sources in the configuration.</p>"}))
    DescribeEventSourcesConfigResponse.type = Types::DescribeEventSourcesConfigResponse
    DescribeFeedbackRequest.add_member(:insight_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'InsightId', traits: {"smithy.api#documentation" => "<p> The ID of the insight for which the feedback was provided. </p>"}))
    DescribeFeedbackRequest.type = Types::DescribeFeedbackRequest
    DescribeFeedbackResponse.add_member(:insight_feedback, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightFeedback, location_name: 'InsightFeedback'))
    DescribeFeedbackResponse.type = Types::DescribeFeedbackResponse
    DescribeInsightRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p> The ID of the insight. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeInsightRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The ID of the member account in the organization.</p>", "smithy.api#httpQuery" => "AccountId"}))
    DescribeInsightRequest.type = Types::DescribeInsightRequest
    DescribeInsightResponse.add_member(:proactive_insight, Smithy::Schema::Shapes::ShapeRef.new(shape: ProactiveInsight, location_name: 'ProactiveInsight', traits: {"smithy.api#documentation" => "<p> A <code>ProactiveInsight</code> object that represents the requested insight. </p>"}))
    DescribeInsightResponse.add_member(:reactive_insight, Smithy::Schema::Shapes::ShapeRef.new(shape: ReactiveInsight, location_name: 'ReactiveInsight', traits: {"smithy.api#documentation" => "<p> A <code>ReactiveInsight</code> object that represents the requested insight. </p>"}))
    DescribeInsightResponse.type = Types::DescribeInsightResponse
    DescribeOrganizationHealthRequest.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdList, location_name: 'AccountIds', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services account.</p>"}))
    DescribeOrganizationHealthRequest.add_member(:organizational_unit_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitIdList, location_name: 'OrganizationalUnitIds', traits: {"smithy.api#documentation" => "<p>The ID of the organizational unit.</p>"}))
    DescribeOrganizationHealthRequest.type = Types::DescribeOrganizationHealthRequest
    DescribeOrganizationHealthResponse.add_member(:open_reactive_insights, Smithy::Schema::Shapes::ShapeRef.new(shape: NumOpenReactiveInsights, location_name: 'OpenReactiveInsights', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>An integer that specifies the number of open reactive insights in your Amazon Web Services\n\t\t\taccount.</p>", "smithy.api#required" => {}}))
    DescribeOrganizationHealthResponse.add_member(:open_proactive_insights, Smithy::Schema::Shapes::ShapeRef.new(shape: NumOpenProactiveInsights, location_name: 'OpenProactiveInsights', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>An integer that specifies the number of open proactive insights in your Amazon Web Services\n\t\t\taccount.</p>", "smithy.api#required" => {}}))
    DescribeOrganizationHealthResponse.add_member(:metrics_analyzed, Smithy::Schema::Shapes::ShapeRef.new(shape: NumMetricsAnalyzed, location_name: 'MetricsAnalyzed', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>An integer that specifies the number of metrics that have been analyzed in your\n\t\t\torganization.</p>", "smithy.api#required" => {}}))
    DescribeOrganizationHealthResponse.add_member(:resource_hours, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceHours, location_name: 'ResourceHours', traits: {"smithy.api#documentation" => "<p>The number of Amazon DevOps Guru resource analysis hours billed to the current Amazon Web Services account in\n\t\t\tthe last hour. </p>", "smithy.api#required" => {}}))
    DescribeOrganizationHealthResponse.type = Types::DescribeOrganizationHealthResponse
    DescribeOrganizationOverviewRequest.add_member(:from_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'FromTime', traits: {"smithy.api#documentation" => "<p> The start of the time range passed in. The start time granularity is at the day\n\t\t\tlevel. The floor of the start time is used. Returned information occurred after this\n\t\t\tday. </p>", "smithy.api#required" => {}}))
    DescribeOrganizationOverviewRequest.add_member(:to_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ToTime', traits: {"smithy.api#documentation" => "<p> The end of the time range passed in. The start time granularity is at the day level.\n\t\t\tThe floor of the start time is used. Returned information occurred before this day. If\n\t\t\tthis is not specified, then the current day is used. </p>"}))
    DescribeOrganizationOverviewRequest.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdList, location_name: 'AccountIds', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services account.</p>"}))
    DescribeOrganizationOverviewRequest.add_member(:organizational_unit_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitIdList, location_name: 'OrganizationalUnitIds', traits: {"smithy.api#documentation" => "<p>The ID of the organizational unit.</p>"}))
    DescribeOrganizationOverviewRequest.type = Types::DescribeOrganizationOverviewRequest
    DescribeOrganizationOverviewResponse.add_member(:reactive_insights, Smithy::Schema::Shapes::ShapeRef.new(shape: NumReactiveInsights, location_name: 'ReactiveInsights', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>An integer that specifies the number of open reactive insights in your Amazon Web Services\n\t\t\taccount.</p>", "smithy.api#required" => {}}))
    DescribeOrganizationOverviewResponse.add_member(:proactive_insights, Smithy::Schema::Shapes::ShapeRef.new(shape: NumProactiveInsights, location_name: 'ProactiveInsights', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>An integer that specifies the number of open proactive insights in your Amazon Web Services\n\t\t\taccount.</p>", "smithy.api#required" => {}}))
    DescribeOrganizationOverviewResponse.type = Types::DescribeOrganizationOverviewResponse
    DescribeOrganizationResourceCollectionHealthRequest.add_member(:organization_resource_collection_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationResourceCollectionType, location_name: 'OrganizationResourceCollectionType', traits: {"smithy.api#documentation" => "<p> An Amazon Web Services resource collection type. This type specifies how analyzed Amazon Web Services resources\n\t\t\tare defined. The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and \n          Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze \n      \tthe Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>", "smithy.api#required" => {}}))
    DescribeOrganizationResourceCollectionHealthRequest.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdList, location_name: 'AccountIds', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services account.</p>"}))
    DescribeOrganizationResourceCollectionHealthRequest.add_member(:organizational_unit_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitIdList, location_name: 'OrganizationalUnitIds', traits: {"smithy.api#documentation" => "<p>The ID of the organizational unit.</p>"}))
    DescribeOrganizationResourceCollectionHealthRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve \n   the next page of results for this operation. If this value is null, it retrieves the first page.</p>"}))
    DescribeOrganizationResourceCollectionHealthRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationResourceCollectionMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with a single call.\n\tTo retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>"}))
    DescribeOrganizationResourceCollectionHealthRequest.type = Types::DescribeOrganizationResourceCollectionHealthRequest
    DescribeOrganizationResourceCollectionHealthResponse.add_member(:cloud_formation, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudFormationHealths, location_name: 'CloudFormation', traits: {"smithy.api#documentation" => "<p>The returned <code>CloudFormationHealthOverview</code> object that contains an\n\t\t\t\t<code>InsightHealthOverview</code> object with the requested system health\n\t\t\tinformation.</p>"}))
    DescribeOrganizationResourceCollectionHealthResponse.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceHealths, location_name: 'Service', traits: {"smithy.api#documentation" => "<p>An array of <code>ServiceHealth</code> objects that describes the health of the Amazon Web Services\n\t\t\tservices associated with the resources in the collection.</p>"}))
    DescribeOrganizationResourceCollectionHealthResponse.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountHealths, location_name: 'Account', traits: {"smithy.api#documentation" => "<p>The name of the organization's account.</p>"}))
    DescribeOrganizationResourceCollectionHealthResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve \n   the next page of results for this operation. If there are no more pages, this value is null.</p>"}))
    DescribeOrganizationResourceCollectionHealthResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagHealths, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags help you identify and organize your Amazon Web Services resources. Many Amazon Web Services services support\n   \t\ttagging, so you can assign the same tag to resources from different services to indicate\n   \t\tthat the resources are related. For example, you can assign the same tag to an Amazon DynamoDB\n   \t\ttable resource that you assign to an Lambda function. For more information about\n   \t\tusing tags, see the <a href=\"https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/tagging-best-practices.html\">Tagging\n   \t\t\tbest practices</a> whitepaper. </p>\n         <p>Each Amazon Web Services tag has two parts. </p>\n         <ul>\n            <li>\n               <p>A tag <i>key</i> (for example, <code>CostCenter</code>,\n   \t\t\t\t<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag\n   \t\t\t\t<i>keys</i> are case-sensitive.</p>\n            </li>\n            <li>\n               <p>An optional field known as a tag <i>value</i> (for example,\n   \t\t\t\t<code>111122223333</code>, <code>Production</code>, or a team\n   \t\t\t\tname). Omitting the tag <i>value</i> is the same as using an empty\n   \t\t\t\tstring. Like tag <i>keys</i>, tag <i>values</i> are\n   \t\t\t\tcase-sensitive.</p>\n            </li>\n         </ul>\n         <p>Together these are known as <i>key</i>-<i>value</i> pairs.</p>\n         <important>\n            <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the\n\t\t\tprefix <code>Devops-guru-</code>. The tag <i>key</i> might be\n\t\t\t<code>DevOps-Guru-deployment-application</code> or\n\t\t\t<code>devops-guru-rds-application</code>. When you create a <i>key</i>, the case of characters in the <i>key</i> can be whatever you choose. After you create a <i>key</i>, it is case-sensitive.\n\t\t\t For example, DevOps Guru works with a\n\t\t\t<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named\n\t\t\t<code>DevOps-Guru-RDS</code>, and these act as two different <i>keys</i>. Possible <i>key</i>/<i>value</i> pairs in your\n\t\t\tapplication might be <code>Devops-Guru-production-application/RDS</code> or\n\t\t\t<code>Devops-Guru-production-application/containers</code>.</p>\n         </important>"}))
    DescribeOrganizationResourceCollectionHealthResponse.type = Types::DescribeOrganizationResourceCollectionHealthResponse
    DescribeResourceCollectionHealthRequest.add_member(:resource_collection_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCollectionType, location_name: 'ResourceCollectionType', traits: {"smithy.api#documentation" => "<p> An Amazon Web Services resource collection type. This type specifies how analyzed Amazon Web Services resources\n\t\t\tare defined. The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and \n          Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze \n      \tthe Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeResourceCollectionHealthRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve \n   the next page of results for this operation. If this value is null, it retrieves the first page.</p>", "smithy.api#httpQuery" => "NextToken"}))
    DescribeResourceCollectionHealthRequest.type = Types::DescribeResourceCollectionHealthRequest
    DescribeResourceCollectionHealthResponse.add_member(:cloud_formation, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudFormationHealths, location_name: 'CloudFormation', traits: {"smithy.api#documentation" => "<p> The returned <code>CloudFormationHealthOverview</code> object that contains an\n\t\t\t\t<code>InsightHealthOverview</code> object with the requested system health\n\t\t\tinformation. </p>"}))
    DescribeResourceCollectionHealthResponse.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceHealths, location_name: 'Service', traits: {"smithy.api#documentation" => "<p>An array of <code>ServiceHealth</code> objects that describes the health of the Amazon Web Services\n\t\t\tservices associated with the resources in the collection.</p>"}))
    DescribeResourceCollectionHealthResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve \n   the next page of results for this operation. If there are no more pages, this value is null.</p>"}))
    DescribeResourceCollectionHealthResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagHealths, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services tags that are used by resources in the resource collection.</p>\n         <p>Tags help you identify and organize your Amazon Web Services resources. Many Amazon Web Services services support\n   \t\ttagging, so you can assign the same tag to resources from different services to indicate\n   \t\tthat the resources are related. For example, you can assign the same tag to an Amazon DynamoDB\n   \t\ttable resource that you assign to an Lambda function. For more information about\n   \t\tusing tags, see the <a href=\"https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/tagging-best-practices.html\">Tagging\n   \t\t\tbest practices</a> whitepaper. </p>\n         <p>Each Amazon Web Services tag has two parts. </p>\n         <ul>\n            <li>\n               <p>A tag <i>key</i> (for example, <code>CostCenter</code>,\n   \t\t\t\t<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag\n   \t\t\t\t<i>keys</i> are case-sensitive.</p>\n            </li>\n            <li>\n               <p>An optional field known as a tag <i>value</i> (for example,\n   \t\t\t\t<code>111122223333</code>, <code>Production</code>, or a team\n   \t\t\t\tname). Omitting the tag <i>value</i> is the same as using an empty\n   \t\t\t\tstring. Like tag <i>keys</i>, tag <i>values</i> are\n   \t\t\t\tcase-sensitive.</p>\n            </li>\n         </ul>\n         <p>Together these are known as <i>key</i>-<i>value</i> pairs.</p>\n         <important>\n            <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the\n\t\t\tprefix <code>Devops-guru-</code>. The tag <i>key</i> might be\n\t\t\t<code>DevOps-Guru-deployment-application</code> or\n\t\t\t<code>devops-guru-rds-application</code>. When you create a <i>key</i>, the case of characters in the <i>key</i> can be whatever you choose. After you create a <i>key</i>, it is case-sensitive.\n\t\t\t For example, DevOps Guru works with a\n\t\t\t<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named\n\t\t\t<code>DevOps-Guru-RDS</code>, and these act as two different <i>keys</i>. Possible <i>key</i>/<i>value</i> pairs in your\n\t\t\tapplication might be <code>Devops-Guru-production-application/RDS</code> or\n\t\t\t<code>Devops-Guru-production-application/containers</code>.</p>\n         </important>"}))
    DescribeResourceCollectionHealthResponse.type = Types::DescribeResourceCollectionHealthResponse
    DescribeServiceIntegrationRequest.type = Types::DescribeServiceIntegrationRequest
    DescribeServiceIntegrationResponse.add_member(:service_integration, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIntegrationConfig, location_name: 'ServiceIntegration'))
    DescribeServiceIntegrationResponse.type = Types::DescribeServiceIntegrationResponse
    EndTimeRange.add_member(:from_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'FromTime', traits: {"smithy.api#documentation" => "<p> The earliest end time in the time range. </p>"}))
    EndTimeRange.add_member(:to_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ToTime', traits: {"smithy.api#documentation" => "<p> The latest end time in the time range. </p>"}))
    EndTimeRange.type = Types::EndTimeRange
    Event.add_member(:resource_collection, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCollection, location_name: 'ResourceCollection'))
    Event.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: EventId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p> The ID of the event. </p>"}))
    Event.add_member(:time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Time', traits: {"smithy.api#documentation" => "<p> A <code>Timestamp</code> that specifies the time the event occurred. </p>"}))
    Event.add_member(:event_source, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSource, location_name: 'EventSource', traits: {"smithy.api#documentation" => "<p> The Amazon Web Services source that emitted the event. </p>"}))
    Event.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p> The name of the event. </p>"}))
    Event.add_member(:data_source, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataSource, location_name: 'DataSource', traits: {"smithy.api#documentation" => "<p> The source, <code>AWS_CLOUD_TRAIL</code> or <code>AWS_CODE_DEPLOY</code>, where DevOps Guru\n\t\t\tanalysis found the event. </p>"}))
    Event.add_member(:event_class, Smithy::Schema::Shapes::ShapeRef.new(shape: EventClass, location_name: 'EventClass', traits: {"smithy.api#documentation" => "<p> The class of the event. The class specifies what the event is related to, such as an\n\t\t\tinfrastructure change, a deployment, or a schema change. </p>"}))
    Event.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: EventResources, location_name: 'Resources', traits: {"smithy.api#documentation" => "<p> An <code>EventResource</code> object that contains information about the resource\n\t\t\tthat emitted the event. </p>"}))
    Event.type = Types::Event
    EventClass.add_member(:infrastructure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFRASTRUCTURE', traits: {"smithy.api#enumValue" => "INFRASTRUCTURE"}))
    EventClass.add_member(:deployment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPLOYMENT', traits: {"smithy.api#enumValue" => "DEPLOYMENT"}))
    EventClass.add_member(:security_change, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECURITY_CHANGE', traits: {"smithy.api#enumValue" => "SECURITY_CHANGE"}))
    EventClass.add_member(:config_change, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFIG_CHANGE', traits: {"smithy.api#enumValue" => "CONFIG_CHANGE"}))
    EventClass.add_member(:schema_change, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCHEMA_CHANGE', traits: {"smithy.api#enumValue" => "SCHEMA_CHANGE"}))
    EventDataSource.add_member(:aws_cloud_trail, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_CLOUD_TRAIL', traits: {"smithy.api#enumValue" => "AWS_CLOUD_TRAIL"}))
    EventDataSource.add_member(:aws_code_deploy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_CODE_DEPLOY', traits: {"smithy.api#enumValue" => "AWS_CODE_DEPLOY"}))
    EventResource.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: EventResourceType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p> The type of resource that emitted an event. </p>"}))
    EventResource.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p> The name of the resource that emitted an event. </p>"}))
    EventResource.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EventResourceArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the resource that emitted an event. </p>"}))
    EventResource.type = Types::EventResource
    EventResources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventResource)
    EventSourceOptInStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    EventSourceOptInStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    EventSourcesConfig.add_member(:amazon_code_guru_profiler, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonCodeGuruProfilerIntegration, location_name: 'AmazonCodeGuruProfiler', traits: {"smithy.api#documentation" => "<p>Information about whether DevOps Guru is configured to consume recommendations which\n\t\t\tare generated from AWS CodeGuru Profiler.</p>"}))
    EventSourcesConfig.type = Types::EventSourcesConfig
    EventTimeRange.add_member(:from_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'FromTime', traits: {"smithy.api#documentation" => "<p> The time when the event started. </p>", "smithy.api#required" => {}}))
    EventTimeRange.add_member(:to_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ToTime', traits: {"smithy.api#documentation" => "<p> The time when the event ended. </p>", "smithy.api#required" => {}}))
    EventTimeRange.type = Types::EventTimeRange
    Events.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Event)
    GetCostEstimationRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve \n   the next page of results for this operation. If this value is null, it retrieves the first page.</p>", "smithy.api#httpQuery" => "NextToken"}))
    GetCostEstimationRequest.type = Types::GetCostEstimationRequest
    GetCostEstimationResponse.add_member(:resource_collection, Smithy::Schema::Shapes::ShapeRef.new(shape: CostEstimationResourceCollectionFilter, location_name: 'ResourceCollection', traits: {"smithy.api#documentation" => "<p>The collection of the Amazon Web Services resources used to create your monthly DevOps Guru cost\n\t\t\testimate.</p>"}))
    GetCostEstimationResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CostEstimationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of creating this cost estimate. If it's still in progress, the status\n\t\t\t\t<code>ONGOING</code> is returned. If it is finished, the status\n\t\t\t\t<code>COMPLETED</code> is returned.</p>"}))
    GetCostEstimationResponse.add_member(:costs, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceResourceCosts, location_name: 'Costs', traits: {"smithy.api#documentation" => "<p>An array of <code>ResourceCost</code> objects that each contains details about the\n\t\t\tmonthly cost estimate to analyze one of your Amazon Web Services resources.</p>"}))
    GetCostEstimationResponse.add_member(:time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: CostEstimationTimeRange, location_name: 'TimeRange', traits: {"smithy.api#documentation" => "<p>The start and end time of the cost estimation.</p>"}))
    GetCostEstimationResponse.add_member(:total_cost, Smithy::Schema::Shapes::ShapeRef.new(shape: Cost, location_name: 'TotalCost', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The estimated monthly cost to analyze the Amazon Web Services resources. This value is the sum of\n\t\t\tthe estimated costs to analyze each resource in the <code>Costs</code> object in this\n\t\t\tresponse.</p>"}))
    GetCostEstimationResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve \n   the next page of results for this operation. If there are no more pages, this value is null.</p>"}))
    GetCostEstimationResponse.type = Types::GetCostEstimationResponse
    GetResourceCollectionRequest.add_member(:resource_collection_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCollectionType, location_name: 'ResourceCollectionType', traits: {"smithy.api#documentation" => "<p> The type of Amazon Web Services resource collections to return. The one valid value is\n\t\t\t\t<code>CLOUD_FORMATION</code> for Amazon Web Services CloudFormation stacks. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourceCollectionRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve \n   the next page of results for this operation. If this value is null, it retrieves the first page.</p>", "smithy.api#httpQuery" => "NextToken"}))
    GetResourceCollectionRequest.type = Types::GetResourceCollectionRequest
    GetResourceCollectionResponse.add_member(:resource_collection, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCollectionFilter, location_name: 'ResourceCollection', traits: {"smithy.api#documentation" => "<p> The requested list of Amazon Web Services resource collections.\n\t\t\tThe two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and \n          Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze \n      \tthe Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>"}))
    GetResourceCollectionResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve \n   the next page of results for this operation. If there are no more pages, this value is null.</p>"}))
    GetResourceCollectionResponse.type = Types::GetResourceCollectionResponse
    InsightFeedback.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p> The insight feedback ID. </p>"}))
    InsightFeedback.add_member(:feedback, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightFeedbackOption, location_name: 'Feedback', traits: {"smithy.api#documentation" => "<p> The feedback provided by the customer. </p>"}))
    InsightFeedback.type = Types::InsightFeedback
    InsightFeedbackOption.add_member(:valid_collection, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALID_COLLECTION', traits: {"smithy.api#enumValue" => "VALID_COLLECTION"}))
    InsightFeedbackOption.add_member(:recommendation_useful, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECOMMENDATION_USEFUL', traits: {"smithy.api#enumValue" => "RECOMMENDATION_USEFUL"}))
    InsightFeedbackOption.add_member(:alert_too_sensitive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALERT_TOO_SENSITIVE', traits: {"smithy.api#enumValue" => "ALERT_TOO_SENSITIVE"}))
    InsightFeedbackOption.add_member(:data_noisy_anomaly, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATA_NOISY_ANOMALY', traits: {"smithy.api#enumValue" => "DATA_NOISY_ANOMALY"}))
    InsightFeedbackOption.add_member(:data_incorrect, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATA_INCORRECT', traits: {"smithy.api#enumValue" => "DATA_INCORRECT"}))
    InsightHealth.add_member(:open_proactive_insights, Smithy::Schema::Shapes::ShapeRef.new(shape: NumOpenProactiveInsights, location_name: 'OpenProactiveInsights', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The number of open proactive insights. </p>"}))
    InsightHealth.add_member(:open_reactive_insights, Smithy::Schema::Shapes::ShapeRef.new(shape: NumOpenReactiveInsights, location_name: 'OpenReactiveInsights', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The number of open reactive insights. </p>"}))
    InsightHealth.add_member(:mean_time_to_recover_in_milliseconds, Smithy::Schema::Shapes::ShapeRef.new(shape: MeanTimeToRecoverInMilliseconds, location_name: 'MeanTimeToRecoverInMilliseconds', traits: {"smithy.api#documentation" => "<p> The Meant Time to Recover (MTTR) for the insight. </p>"}))
    InsightHealth.type = Types::InsightHealth
    InsightSeverities.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InsightSeverity)
    InsightSeverity.add_member(:low, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW', traits: {"smithy.api#enumValue" => "LOW"}))
    InsightSeverity.add_member(:medium, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "MEDIUM"}))
    InsightSeverity.add_member(:high, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGH', traits: {"smithy.api#enumValue" => "HIGH"}))
    InsightStatus.add_member(:ongoing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONGOING', traits: {"smithy.api#enumValue" => "ONGOING"}))
    InsightStatus.add_member(:closed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOSED', traits: {"smithy.api#enumValue" => "CLOSED"}))
    InsightStatuses.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InsightStatus)
    InsightTimeRange.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p> The time when the behavior described in an insight started. </p>", "smithy.api#required" => {}}))
    InsightTimeRange.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p> The time when the behavior described in an insight ended. </p>"}))
    InsightTimeRange.type = Types::InsightTimeRange
    InsightType.add_member(:reactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REACTIVE', traits: {"smithy.api#enumValue" => "REACTIVE"}))
    InsightType.add_member(:proactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROACTIVE', traits: {"smithy.api#enumValue" => "PROACTIVE"}))
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageString, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: 'RetryAfterSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The number of seconds after which the action that caused the internal server\n\t\t\texception can be retried. </p>", "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    KMSServerSideEncryptionIntegration.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyId, location_name: 'KMSKeyId', traits: {"smithy.api#documentation" => "<p>\n\t\t\tDescribes the specified KMS key.\n\t\t</p>\n         <p>To specify a KMS key, use its key ID, key ARN, \n\t\t\talias name, or alias ARN. When using an alias name,\n\t\t\tprefix it with \"alias/\". If you specify a predefined Amazon Web Services alias\n\t\t\t(an Amazon Web Services alias with no key ID), Amazon Web Services KMS associates the alias with an\n\t\t\tAmazon Web Services managed key and returns its KeyId and Arn in the response. \n\t\t\tTo specify a KMS key in a different Amazon Web Services account, you must use the key ARN or alias ARN.</p>\n         <p>For example: </p>\n         <p>Key ID: 1234abcd-12ab-34cd-56ef-1234567890ab</p>\n         <p>Key ARN: arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</p>\n         <p>Alias name: alias/ExampleAlias</p>\n         <p>Alias ARN: arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</p>"}))
    KMSServerSideEncryptionIntegration.add_member(:opt_in_status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptInStatus, location_name: 'OptInStatus', traits: {"smithy.api#documentation" => "<p>\n\t\t\tSpecifies if DevOps Guru is enabled for customer managed keys.\n\t\t</p>"}))
    KMSServerSideEncryptionIntegration.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe type of KMS key used. Customer managed keys are the KMS keys that you create. Amazon Web Services owned keys are keys that are owned and managed by DevOps Guru.\n\t\t</p>"}))
    KMSServerSideEncryptionIntegration.type = Types::KMSServerSideEncryptionIntegration
    KMSServerSideEncryptionIntegrationConfig.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyId, location_name: 'KMSKeyId', traits: {"smithy.api#documentation" => "<p>\n\t\t\t\tDescribes the specified KMS key.</p>\n         <p>To specify a KMS key, use its key ID, key ARN, \n\t\t\t\talias name, or alias ARN. When using an alias name,\n\t\t\t\tprefix it with \"alias/\". If you specify a predefined Amazon Web Services alias\n\t\t\t\t(an Amazon Web Services alias with no key ID), Amazon Web Services KMS associates the alias with an\n\t\t\t\tAmazon Web Services managed key and returns its KeyId and Arn in the response. \n\t\t\t\tTo specify a KMS key in a different Amazon Web Services account, you must use the key ARN or alias ARN.</p>\n         <p>For example: </p>\n         <p>Key ID: 1234abcd-12ab-34cd-56ef-1234567890ab</p>\n         <p>Key ARN: arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</p>\n         <p>Alias name: alias/ExampleAlias</p>\n         <p>Alias ARN: arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</p>"}))
    KMSServerSideEncryptionIntegrationConfig.add_member(:opt_in_status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptInStatus, location_name: 'OptInStatus', traits: {"smithy.api#documentation" => "<p>\n\t\t\tSpecifies if DevOps Guru is enabled for KMS integration.\n\t\t</p>"}))
    KMSServerSideEncryptionIntegrationConfig.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe type of KMS key used. Customer managed keys are the KMS keys that you create. Amazon Web Services owned keys are keys that are owned and managed by DevOps Guru.\n\t\t</p>"}))
    KMSServerSideEncryptionIntegrationConfig.type = Types::KMSServerSideEncryptionIntegrationConfig
    ListAnomaliesForInsightFilters.add_member(:service_collection, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCollection, location_name: 'ServiceCollection'))
    ListAnomaliesForInsightFilters.type = Types::ListAnomaliesForInsightFilters
    ListAnomaliesForInsightRequest.add_member(:insight_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'InsightId', traits: {"smithy.api#documentation" => "<p> The ID of the insight. The returned anomalies belong to this insight. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAnomaliesForInsightRequest.add_member(:start_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: StartTimeRange, location_name: 'StartTimeRange', traits: {"smithy.api#documentation" => "<p> A time range used to specify when the requested anomalies started. All returned\n\t\t\tanomalies started during this time range. </p>"}))
    ListAnomaliesForInsightRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnomaliesForInsightMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with a single call.\n\tTo retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>"}))
    ListAnomaliesForInsightRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve \n   the next page of results for this operation. If this value is null, it retrieves the first page.</p>"}))
    ListAnomaliesForInsightRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services account. </p>"}))
    ListAnomaliesForInsightRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnomaliesForInsightFilters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>\n\t\t\tSpecifies one or more service names that are used to list anomalies. \n\t\t</p>"}))
    ListAnomaliesForInsightRequest.type = Types::ListAnomaliesForInsightRequest
    ListAnomaliesForInsightResponse.add_member(:proactive_anomalies, Smithy::Schema::Shapes::ShapeRef.new(shape: ProactiveAnomalies, location_name: 'ProactiveAnomalies', traits: {"smithy.api#documentation" => "<p> An array of <code>ProactiveAnomalySummary</code> objects that represent the requested\n\t\t\tanomalies </p>"}))
    ListAnomaliesForInsightResponse.add_member(:reactive_anomalies, Smithy::Schema::Shapes::ShapeRef.new(shape: ReactiveAnomalies, location_name: 'ReactiveAnomalies', traits: {"smithy.api#documentation" => "<p> An array of <code>ReactiveAnomalySummary</code> objects that represent the requested\n\t\t\tanomalies </p>"}))
    ListAnomaliesForInsightResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve \n   the next page of results for this operation. If there are no more pages, this value is null.</p>"}))
    ListAnomaliesForInsightResponse.type = Types::ListAnomaliesForInsightResponse
    ListAnomalousLogGroupsRequest.add_member(:insight_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'InsightId', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe ID of the insight containing the log groups.\n\t\t</p>", "smithy.api#required" => {}}))
    ListAnomalousLogGroupsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnomalousLogGroupsMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with a single call.\n\tTo retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>"}))
    ListAnomalousLogGroupsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve \n   the next page of results for this operation. If this value is null, it retrieves the first page.</p>"}))
    ListAnomalousLogGroupsRequest.type = Types::ListAnomalousLogGroupsRequest
    ListAnomalousLogGroupsResponse.add_member(:insight_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'InsightId', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe ID of the insight containing the log groups.\n\t\t</p>", "smithy.api#required" => {}}))
    ListAnomalousLogGroupsResponse.add_member(:anomalous_log_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalousLogGroups, location_name: 'AnomalousLogGroups', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe list of Amazon CloudWatch log groups that are related to an insight.\n\t\t</p>", "smithy.api#required" => {}}))
    ListAnomalousLogGroupsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve \n   the next page of results for this operation. If there are no more pages, this value is null.</p>"}))
    ListAnomalousLogGroupsResponse.type = Types::ListAnomalousLogGroupsResponse
    ListEventsFilters.add_member(:insight_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'InsightId', traits: {"smithy.api#documentation" => "<p> An ID of an insight that is related to the events you want to filter for. </p>"}))
    ListEventsFilters.add_member(:event_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: EventTimeRange, location_name: 'EventTimeRange', traits: {"smithy.api#documentation" => "<p> A time range during which you want the filtered events to have occurred. </p>"}))
    ListEventsFilters.add_member(:event_class, Smithy::Schema::Shapes::ShapeRef.new(shape: EventClass, location_name: 'EventClass', traits: {"smithy.api#documentation" => "<p> The class of the events you want to filter for, such as an infrastructure change, a\n\t\t\tdeployment, or a schema change. </p>"}))
    ListEventsFilters.add_member(:event_source, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSource, location_name: 'EventSource', traits: {"smithy.api#documentation" => "<p> The Amazon Web Services source that emitted the events you want to filter for. </p>"}))
    ListEventsFilters.add_member(:data_source, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataSource, location_name: 'DataSource', traits: {"smithy.api#documentation" => "<p> The source, <code>AWS_CLOUD_TRAIL</code> or <code>AWS_CODE_DEPLOY</code>, of the\n\t\t\tevents you want returned. </p>"}))
    ListEventsFilters.add_member(:resource_collection, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCollection, location_name: 'ResourceCollection'))
    ListEventsFilters.type = Types::ListEventsFilters
    ListEventsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventsFilters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p> A <code>ListEventsFilters</code> object used to specify which events to return.\n\t\t</p>", "smithy.api#required" => {}}))
    ListEventsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventsMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with a single call.\n\tTo retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>"}))
    ListEventsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve \n   the next page of results for this operation. If this value is null, it retrieves the first page.</p>"}))
    ListEventsRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services account. </p>"}))
    ListEventsRequest.type = Types::ListEventsRequest
    ListEventsResponse.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: Events, location_name: 'Events', traits: {"smithy.api#documentation" => "<p> A list of the requested events. </p>", "smithy.api#required" => {}}))
    ListEventsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve \n   the next page of results for this operation. If there are no more pages, this value is null.</p>"}))
    ListEventsResponse.type = Types::ListEventsResponse
    ListInsightsAccountIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId)
    ListInsightsAnyStatusFilter.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p> Use to filter for either <code>REACTIVE</code> or <code>PROACTIVE</code> insights.\n\t\t</p>", "smithy.api#required" => {}}))
    ListInsightsAnyStatusFilter.add_member(:start_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: StartTimeRange, location_name: 'StartTimeRange', traits: {"smithy.api#documentation" => "<p> A time range used to specify when the behavior of the filtered insights started.\n\t\t</p>", "smithy.api#required" => {}}))
    ListInsightsAnyStatusFilter.type = Types::ListInsightsAnyStatusFilter
    ListInsightsClosedStatusFilter.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p> Use to filter for either <code>REACTIVE</code> or <code>PROACTIVE</code> insights.\n\t\t</p>", "smithy.api#required" => {}}))
    ListInsightsClosedStatusFilter.add_member(:end_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: EndTimeRange, location_name: 'EndTimeRange', traits: {"smithy.api#documentation" => "<p> A time range used to specify when the behavior of the filtered insights ended.\n\t\t</p>", "smithy.api#required" => {}}))
    ListInsightsClosedStatusFilter.type = Types::ListInsightsClosedStatusFilter
    ListInsightsOngoingStatusFilter.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p> Use to filter for either <code>REACTIVE</code> or <code>PROACTIVE</code> insights.\n\t\t</p>", "smithy.api#required" => {}}))
    ListInsightsOngoingStatusFilter.type = Types::ListInsightsOngoingStatusFilter
    ListInsightsOrganizationalUnitIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitId)
    ListInsightsRequest.add_member(:status_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ListInsightsStatusFilter, location_name: 'StatusFilter', traits: {"smithy.api#documentation" => "<p> A filter used to filter the returned insights by their status. You can specify one\n\t\t\tstatus filter. </p>", "smithy.api#required" => {}}))
    ListInsightsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListInsightsMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with a single call.\n\tTo retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>"}))
    ListInsightsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve \n   the next page of results for this operation. If this value is null, it retrieves the first page.</p>"}))
    ListInsightsRequest.type = Types::ListInsightsRequest
    ListInsightsResponse.add_member(:proactive_insights, Smithy::Schema::Shapes::ShapeRef.new(shape: ProactiveInsights, location_name: 'ProactiveInsights', traits: {"smithy.api#documentation" => "<p> The returned list of proactive insights. </p>"}))
    ListInsightsResponse.add_member(:reactive_insights, Smithy::Schema::Shapes::ShapeRef.new(shape: ReactiveInsights, location_name: 'ReactiveInsights', traits: {"smithy.api#documentation" => "<p> The returned list of reactive insights. </p>"}))
    ListInsightsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve \n   the next page of results for this operation. If there are no more pages, this value is null.</p>"}))
    ListInsightsResponse.type = Types::ListInsightsResponse
    ListInsightsStatusFilter.add_member(:ongoing, Smithy::Schema::Shapes::ShapeRef.new(shape: ListInsightsOngoingStatusFilter, location_name: 'Ongoing', traits: {"smithy.api#documentation" => "<p> A <code>ListInsightsAnyStatusFilter</code> that specifies ongoing insights that are\n\t\t\teither <code>REACTIVE</code> or <code>PROACTIVE</code>. </p>"}))
    ListInsightsStatusFilter.add_member(:closed, Smithy::Schema::Shapes::ShapeRef.new(shape: ListInsightsClosedStatusFilter, location_name: 'Closed', traits: {"smithy.api#documentation" => "<p> A <code>ListInsightsClosedStatusFilter</code> that specifies closed insights that are\n\t\t\teither <code>REACTIVE</code> or <code>PROACTIVE</code>. </p>"}))
    ListInsightsStatusFilter.add_member(:any, Smithy::Schema::Shapes::ShapeRef.new(shape: ListInsightsAnyStatusFilter, location_name: 'Any', traits: {"smithy.api#documentation" => "<p> A <code>ListInsightsAnyStatusFilter</code> that specifies insights of any status that\n\t\t\tare either <code>REACTIVE</code> or <code>PROACTIVE</code>. </p>"}))
    ListInsightsStatusFilter.type = Types::ListInsightsStatusFilter
    ListMonitoredResourcesFilters.add_member(:resource_permission, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePermission, location_name: 'ResourcePermission', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe permission status of a resource.\n\t\t</p>", "smithy.api#required" => {}}))
    ListMonitoredResourcesFilters.add_member(:resource_type_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypeFilters, location_name: 'ResourceTypeFilters', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe type of resource that you wish to retrieve, such as log groups. \n\t\t</p>", "smithy.api#required" => {}}))
    ListMonitoredResourcesFilters.type = Types::ListMonitoredResourcesFilters
    ListMonitoredResourcesRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ListMonitoredResourcesFilters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>\n\t\t\tFilters to determine which monitored resources you want to retrieve. You can filter by resource type or resource permission status.\n\t\t</p>"}))
    ListMonitoredResourcesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListMonitoredResourcesMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with a single call.\n\tTo retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>"}))
    ListMonitoredResourcesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve \n   the next page of results for this operation. If this value is null, it retrieves the first page.</p>"}))
    ListMonitoredResourcesRequest.type = Types::ListMonitoredResourcesRequest
    ListMonitoredResourcesResponse.add_member(:monitored_resource_identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: MonitoredResourceIdentifiers, location_name: 'MonitoredResourceIdentifiers', traits: {"smithy.api#documentation" => "<p>\n\t\t\tInformation about the resource that is being monitored, including the name of the resource, the type of resource, and whether or not permission is given to DevOps Guru to access that resource.\n\t\t</p>", "smithy.api#required" => {}}))
    ListMonitoredResourcesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve \n   the next page of results for this operation. If there are no more pages, this value is null.</p>"}))
    ListMonitoredResourcesResponse.type = Types::ListMonitoredResourcesResponse
    ListNotificationChannelsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve \n   the next page of results for this operation. If this value is null, it retrieves the first page.</p>"}))
    ListNotificationChannelsRequest.type = Types::ListNotificationChannelsRequest
    ListNotificationChannelsResponse.add_member(:channels, Smithy::Schema::Shapes::ShapeRef.new(shape: Channels, location_name: 'Channels', traits: {"smithy.api#documentation" => "<p> An array that contains the requested notification channels. </p>"}))
    ListNotificationChannelsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve \n   the next page of results for this operation. If there are no more pages, this value is null.</p>"}))
    ListNotificationChannelsResponse.type = Types::ListNotificationChannelsResponse
    ListOrganizationInsightsRequest.add_member(:status_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ListInsightsStatusFilter, location_name: 'StatusFilter', traits: {"smithy.api#required" => {}}))
    ListOrganizationInsightsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListInsightsMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with a single call.\n\tTo retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>"}))
    ListOrganizationInsightsRequest.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListInsightsAccountIdList, location_name: 'AccountIds', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services account. </p>"}))
    ListOrganizationInsightsRequest.add_member(:organizational_unit_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListInsightsOrganizationalUnitIdList, location_name: 'OrganizationalUnitIds', traits: {"smithy.api#documentation" => "<p>The ID of the organizational unit.</p>"}))
    ListOrganizationInsightsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve \n   the next page of results for this operation. If this value is null, it retrieves the first page.</p>"}))
    ListOrganizationInsightsRequest.type = Types::ListOrganizationInsightsRequest
    ListOrganizationInsightsResponse.add_member(:proactive_insights, Smithy::Schema::Shapes::ShapeRef.new(shape: ProactiveOrganizationInsights, location_name: 'ProactiveInsights', traits: {"smithy.api#documentation" => "<p>An integer that specifies the number of open proactive insights in your Amazon Web Services\n\t\t\taccount.</p>"}))
    ListOrganizationInsightsResponse.add_member(:reactive_insights, Smithy::Schema::Shapes::ShapeRef.new(shape: ReactiveOrganizationInsights, location_name: 'ReactiveInsights', traits: {"smithy.api#documentation" => "<p>An integer that specifies the number of open reactive insights in your Amazon Web Services\n\t\t\taccount.</p>"}))
    ListOrganizationInsightsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve \n   the next page of results for this operation. If there are no more pages, this value is null.</p>"}))
    ListOrganizationInsightsResponse.type = Types::ListOrganizationInsightsResponse
    ListRecommendationsRequest.add_member(:insight_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'InsightId', traits: {"smithy.api#documentation" => "<p> The ID of the requested insight. </p>", "smithy.api#required" => {}}))
    ListRecommendationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve \n   the next page of results for this operation. If this value is null, it retrieves the first page.</p>"}))
    ListRecommendationsRequest.add_member(:locale, Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: 'Locale', traits: {"smithy.api#documentation" => "<p>A locale that specifies the language to use for recommendations.</p>"}))
    ListRecommendationsRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services account. </p>"}))
    ListRecommendationsRequest.type = Types::ListRecommendationsRequest
    ListRecommendationsResponse.add_member(:recommendations, Smithy::Schema::Shapes::ShapeRef.new(shape: Recommendations, location_name: 'Recommendations', traits: {"smithy.api#documentation" => "<p> An array of the requested recommendations. </p>"}))
    ListRecommendationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve \n   the next page of results for this operation. If there are no more pages, this value is null.</p>"}))
    ListRecommendationsResponse.type = Types::ListRecommendationsResponse
    Locale.add_member(:de_de, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DE_DE', traits: {"smithy.api#enumValue" => "DE_DE"}))
    Locale.add_member(:en_us, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN_US', traits: {"smithy.api#enumValue" => "EN_US"}))
    Locale.add_member(:en_gb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN_GB', traits: {"smithy.api#enumValue" => "EN_GB"}))
    Locale.add_member(:es_es, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ES_ES', traits: {"smithy.api#enumValue" => "ES_ES"}))
    Locale.add_member(:fr_fr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FR_FR', traits: {"smithy.api#enumValue" => "FR_FR"}))
    Locale.add_member(:it_it, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IT_IT', traits: {"smithy.api#enumValue" => "IT_IT"}))
    Locale.add_member(:ja_jp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JA_JP', traits: {"smithy.api#enumValue" => "JA_JP"}))
    Locale.add_member(:ko_kr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KO_KR', traits: {"smithy.api#enumValue" => "KO_KR"}))
    Locale.add_member(:pt_br, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PT_BR', traits: {"smithy.api#enumValue" => "PT_BR"}))
    Locale.add_member(:zh_cn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZH_CN', traits: {"smithy.api#enumValue" => "ZH_CN"}))
    Locale.add_member(:zh_tw, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZH_TW', traits: {"smithy.api#enumValue" => "ZH_TW"}))
    LogAnomalyClass.add_member(:log_stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogStreamName, location_name: 'LogStreamName', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe name of the Amazon CloudWatch log stream that the anomalous log event belongs to. A log stream is a sequence of log events that share the same source.\n\t\t</p>"}))
    LogAnomalyClass.add_member(:log_anomaly_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LogAnomalyType, location_name: 'LogAnomalyType', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe type of log anomaly that has been detected. \n\t\t</p>"}))
    LogAnomalyClass.add_member(:log_anomaly_token, Smithy::Schema::Shapes::ShapeRef.new(shape: LogAnomalyToken, location_name: 'LogAnomalyToken', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe token where the anomaly was detected. This may refer to an exception or another location, or it may be blank for log anomalies such as format anomalies.\n\t\t</p>"}))
    LogAnomalyClass.add_member(:log_event_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LogEventId, location_name: 'LogEventId', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe ID of the log event.\n\t\t</p>"}))
    LogAnomalyClass.add_member(:explanation, Smithy::Schema::Shapes::ShapeRef.new(shape: Explanation, location_name: 'Explanation', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe explanation for why the log event is considered an anomaly.\n\t\t</p>"}))
    LogAnomalyClass.add_member(:number_of_log_lines_occurrences, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfLogLinesOccurrences, location_name: 'NumberOfLogLinesOccurrences', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>\n\t\t\tThe number of log lines where this anomalous log event occurs.\n\t\t</p>"}))
    LogAnomalyClass.add_member(:log_event_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LogEventTimestamp', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe time of the first occurrence of the anomalous log event.\n\t\t</p>"}))
    LogAnomalyClass.type = Types::LogAnomalyClass
    LogAnomalyClasses.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LogAnomalyClass)
    LogAnomalyShowcase.add_member(:log_anomaly_classes, Smithy::Schema::Shapes::ShapeRef.new(shape: LogAnomalyClasses, location_name: 'LogAnomalyClasses', traits: {"smithy.api#documentation" => "<p>\n\t\t\tA list of anomalous log events that may be related.\n\t\t</p>"}))
    LogAnomalyShowcase.type = Types::LogAnomalyShowcase
    LogAnomalyShowcases.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LogAnomalyShowcase)
    LogAnomalyType.add_member(:keyword, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KEYWORD', traits: {"smithy.api#enumValue" => "KEYWORD"}))
    LogAnomalyType.add_member(:keyword_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KEYWORD_TOKEN', traits: {"smithy.api#enumValue" => "KEYWORD_TOKEN"}))
    LogAnomalyType.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FORMAT', traits: {"smithy.api#enumValue" => "FORMAT"}))
    LogAnomalyType.add_member(:http_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTTP_CODE', traits: {"smithy.api#enumValue" => "HTTP_CODE"}))
    LogAnomalyType.add_member(:block_format, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BLOCK_FORMAT', traits: {"smithy.api#enumValue" => "BLOCK_FORMAT"}))
    LogAnomalyType.add_member(:numerical_point, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NUMERICAL_POINT', traits: {"smithy.api#enumValue" => "NUMERICAL_POINT"}))
    LogAnomalyType.add_member(:numerical_nan, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NUMERICAL_NAN', traits: {"smithy.api#enumValue" => "NUMERICAL_NAN"}))
    LogAnomalyType.add_member(:new_field_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEW_FIELD_NAME', traits: {"smithy.api#enumValue" => "NEW_FIELD_NAME"}))
    LogsAnomalyDetectionIntegration.add_member(:opt_in_status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptInStatus, location_name: 'OptInStatus', traits: {"smithy.api#documentation" => "<p>Specifies if DevOps Guru is configured to perform log anomaly detection on CloudWatch log groups.</p>"}))
    LogsAnomalyDetectionIntegration.type = Types::LogsAnomalyDetectionIntegration
    LogsAnomalyDetectionIntegrationConfig.add_member(:opt_in_status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptInStatus, location_name: 'OptInStatus', traits: {"smithy.api#documentation" => "<p>Specifies if DevOps Guru is configured to perform log anomaly detection on CloudWatch log groups.</p>"}))
    LogsAnomalyDetectionIntegrationConfig.type = Types::LogsAnomalyDetectionIntegrationConfig
    MonitoredResourceIdentifier.add_member(:monitored_resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MonitoredResourceName, location_name: 'MonitoredResourceName', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe name of the resource being monitored.\n\t\t</p>"}))
    MonitoredResourceIdentifier.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe type of resource being monitored.\n\t\t</p>"}))
    MonitoredResourceIdentifier.add_member(:resource_permission, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePermission, location_name: 'ResourcePermission', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe permission status of a resource.\n\t\t</p>"}))
    MonitoredResourceIdentifier.add_member(:last_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdated', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe time at which DevOps Guru last updated this resource.\n\t\t</p>"}))
    MonitoredResourceIdentifier.add_member(:resource_collection, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCollection, location_name: 'ResourceCollection'))
    MonitoredResourceIdentifier.type = Types::MonitoredResourceIdentifier
    MonitoredResourceIdentifiers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MonitoredResourceIdentifier)
    NotificationChannel.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationChannelId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p> The ID of a notification channel. </p>"}))
    NotificationChannel.add_member(:config, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationChannelConfig, location_name: 'Config', traits: {"smithy.api#documentation" => "<p> A <code>NotificationChannelConfig</code> object that contains information about\n\t\t\tconfigured notification channels. </p>"}))
    NotificationChannel.type = Types::NotificationChannel
    NotificationChannelConfig.add_member(:sns, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsChannelConfig, location_name: 'Sns', traits: {"smithy.api#documentation" => "<p> Information about a notification channel configured in DevOps Guru to send notifications\n\t\t\twhen insights are created. </p>\n         <p>If you use an Amazon SNS topic in another account, you must attach a policy to it that grants DevOps Guru permission \n\t\t\t\tto send it notifications. DevOps Guru adds the required policy on your behalf to send notifications using Amazon SNS in your account. DevOps Guru only supports standard SNS topics. \n\t\t\t\tFor more information, see <a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-required-permissions.html\">Permissions \n\t\t\t\tfor Amazon SNS topics</a>.</p>\n         <p>If you use an Amazon SNS topic that is encrypted by an Amazon Web Services Key Management Service customer-managed key (CMK), then you must add permissions \n\t\t\t\tto the CMK. For more information, see <a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-kms-permissions.html\">Permissions for \n\t\t\t\tAmazon Web Services KMS–encrypted Amazon SNS topics</a>.</p>", "smithy.api#required" => {}}))
    NotificationChannelConfig.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationFilterConfig, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe filter configurations for the Amazon SNS notification topic you use with DevOps Guru. \n\t\t\tIf you do not provide filter configurations, the default configurations are to receive notifications for all message types of <code>High</code> or <code>Medium</code> severity.\n\t\t</p>"}))
    NotificationChannelConfig.type = Types::NotificationChannelConfig
    NotificationFilterConfig.add_member(:severities, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightSeverities, location_name: 'Severities', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe severity levels that you want to receive notifications for. For example, you can choose to receive notifications only for insights with <code>HIGH</code> and <code>MEDIUM</code> severity levels. \n\t\t\tFor more information, see <a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities\">Understanding insight severities</a>.\n\t\t</p>"}))
    NotificationFilterConfig.add_member(:message_types, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationMessageTypes, location_name: 'MessageTypes', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe events that you want to receive notifications for. For example, you can choose to receive notifications only when the severity level is upgraded or a new insight is created.\n\t\t</p>"}))
    NotificationFilterConfig.type = Types::NotificationFilterConfig
    NotificationMessageType.add_member(:new_insight, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEW_INSIGHT', traits: {"smithy.api#enumValue" => "NEW_INSIGHT"}))
    NotificationMessageType.add_member(:closed_insight, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOSED_INSIGHT', traits: {"smithy.api#enumValue" => "CLOSED_INSIGHT"}))
    NotificationMessageType.add_member(:new_association, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEW_ASSOCIATION', traits: {"smithy.api#enumValue" => "NEW_ASSOCIATION"}))
    NotificationMessageType.add_member(:severity_upgraded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEVERITY_UPGRADED', traits: {"smithy.api#enumValue" => "SEVERITY_UPGRADED"}))
    NotificationMessageType.add_member(:new_recommendation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEW_RECOMMENDATION', traits: {"smithy.api#enumValue" => "NEW_RECOMMENDATION"}))
    NotificationMessageTypes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationMessageType)
    OpsCenterIntegration.add_member(:opt_in_status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptInStatus, location_name: 'OptInStatus', traits: {"smithy.api#documentation" => "<p> Specifies if DevOps Guru is enabled to create an Amazon Web Services Systems Manager OpsItem for each created\n\t\t\tinsight. </p>"}))
    OpsCenterIntegration.type = Types::OpsCenterIntegration
    OpsCenterIntegrationConfig.add_member(:opt_in_status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptInStatus, location_name: 'OptInStatus', traits: {"smithy.api#documentation" => "<p> Specifies if DevOps Guru is enabled to create an Amazon Web Services Systems Manager OpsItem for each created\n\t\t\tinsight. </p>"}))
    OpsCenterIntegrationConfig.type = Types::OpsCenterIntegrationConfig
    OptInStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    OptInStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    OrganizationResourceCollectionType.add_member(:aws_cloud_formation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_CLOUD_FORMATION', traits: {"smithy.api#enumValue" => "AWS_CLOUD_FORMATION"}))
    OrganizationResourceCollectionType.add_member(:aws_service, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SERVICE', traits: {"smithy.api#enumValue" => "AWS_SERVICE"}))
    OrganizationResourceCollectionType.add_member(:aws_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_ACCOUNT', traits: {"smithy.api#enumValue" => "AWS_ACCOUNT"}))
    OrganizationResourceCollectionType.add_member(:aws_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_TAGS', traits: {"smithy.api#enumValue" => "AWS_TAGS"}))
    OrganizationalUnitIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitId)
    PerformanceInsightsMetricDimensionGroup.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceInsightsMetricGroup, location_name: 'Group', traits: {"smithy.api#documentation" => "<p>The name of the dimension group. Its valid values are:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>db</code> - The name of the database to which the client is connected\n\t\t\t\t\t(only Aurora PostgreSQL, Amazon RDS PostgreSQL, Aurora MySQL, Amazon RDS MySQL, and MariaDB)</p>\n            </li>\n            <li>\n               <p>\n                  <code>db.application</code> - The name of the application that is connected to\n\t\t\t\t\tthe database (only Aurora PostgreSQL and RDS PostgreSQL)</p>\n            </li>\n            <li>\n               <p>\n                  <code>db.host</code> - The host name of the connected client (all\n\t\t\t\t\tengines)</p>\n            </li>\n            <li>\n               <p>\n                  <code>db.session_type</code> - The type of the current session (only Aurora PostgreSQL\n\t\t\t\t\tand RDS PostgreSQL)</p>\n            </li>\n            <li>\n               <p>\n                  <code>db.sql</code> - The SQL that is currently executing (all engines)</p>\n            </li>\n            <li>\n               <p>\n                  <code>db.sql_tokenized</code> - The SQL digest (all engines)</p>\n            </li>\n            <li>\n               <p>\n                  <code>db.wait_event</code> - The event for which the database backend is waiting\n\t\t\t\t\t(all engines)</p>\n            </li>\n            <li>\n               <p>\n                  <code>db.wait_event_type</code> - The type of event for which the database\n\t\t\t\t\tbackend is waiting (all engines)</p>\n            </li>\n            <li>\n               <p>\n                  <code>db.user</code> - The user logged in to the database (all engines)</p>\n            </li>\n         </ul>"}))
    PerformanceInsightsMetricDimensionGroup.add_member(:dimensions, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceInsightsMetricDimensions, location_name: 'Dimensions', traits: {"smithy.api#documentation" => "<p>A list of specific dimensions from a dimension group. If this parameter is not\n\t\t\tpresent, then it signifies that all of the dimensions in the group were requested or are\n\t\t\tpresent in the response.</p>\n         <p>Valid values for elements in the <code>Dimensions</code> array are:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>db.application.name</code> - The name of the application that is connected\n\t\t\t\t\tto the database (only Aurora PostgreSQL and RDS PostgreSQL)</p>\n            </li>\n            <li>\n               <p>\n                  <code>db.host.id</code> - The host ID of the connected client (all\n\t\t\t\t\tengines)</p>\n            </li>\n            <li>\n               <p>\n                  <code>db.host.name</code> - The host name of the connected client (all\n\t\t\t\t\tengines)</p>\n            </li>\n            <li>\n               <p>\n                  <code>db.name</code> - The name of the database to which the client is connected\n\t\t\t\t\t(only Aurora PostgreSQL, Amazon RDS PostgreSQL, Aurora MySQL, Amazon RDS MySQL, and MariaDB)</p>\n            </li>\n            <li>\n               <p>\n                  <code>db.session_type.name</code> - The type of the current session (only Aurora\n\t\t\t\t\tPostgreSQL and RDS PostgreSQL)</p>\n            </li>\n            <li>\n               <p>\n                  <code>db.sql.id</code> - The SQL ID generated by Performance Insights (all engines)</p>\n            </li>\n            <li>\n               <p>\n                  <code>db.sql.db_id</code> - The SQL ID generated by the database (all\n\t\t\t\t\tengines)</p>\n            </li>\n            <li>\n               <p>\n                  <code>db.sql.statement</code> - The SQL text that is being executed (all\n\t\t\t\t\tengines)</p>\n            </li>\n            <li>\n               <p>\n                  <code>db.sql.tokenized_id</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>db.sql_tokenized.id</code> - The SQL digest ID generated by Performance Insights (all\n\t\t\t\t\tengines)</p>\n            </li>\n            <li>\n               <p>\n                  <code>db.sql_tokenized.db_id</code> - SQL digest ID generated by the database\n\t\t\t\t\t(all engines)</p>\n            </li>\n            <li>\n               <p>\n                  <code>db.sql_tokenized.statement</code> - The SQL digest text (all\n\t\t\t\t\tengines)</p>\n            </li>\n            <li>\n               <p>\n                  <code>db.user.id</code> - The ID of the user logged in to the database (all\n\t\t\t\t\tengines)</p>\n            </li>\n            <li>\n               <p>\n                  <code>db.user.name</code> - The name of the user logged in to the database (all\n\t\t\t\t\tengines)</p>\n            </li>\n            <li>\n               <p>\n                  <code>db.wait_event.name</code> - The event for which the backend is waiting\n\t\t\t\t\t(all engines)</p>\n            </li>\n            <li>\n               <p>\n                  <code>db.wait_event.type</code> - The type of event for which the backend is\n\t\t\t\t\twaiting (all engines)</p>\n            </li>\n            <li>\n               <p>\n                  <code>db.wait_event_type.name</code> - The name of the event type for which the\n\t\t\t\t\tbackend is waiting (all engines)</p>\n            </li>\n         </ul>"}))
    PerformanceInsightsMetricDimensionGroup.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceInsightsMetricLimitInteger, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of items to fetch for this dimension group.</p>"}))
    PerformanceInsightsMetricDimensionGroup.type = Types::PerformanceInsightsMetricDimensionGroup
    PerformanceInsightsMetricDimensions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceInsightsMetricDimension)
    PerformanceInsightsMetricFilterMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceInsightsMetricFilterKey)
    PerformanceInsightsMetricFilterMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceInsightsMetricFilterValue)
    PerformanceInsightsMetricQuery.add_member(:metric, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceInsightsMetricName, location_name: 'Metric', traits: {"smithy.api#documentation" => "<p>The name of the meteric used used when querying an Performance Insights\n\t\t\t\t<code>GetResourceMetrics</code> API for anomaly metrics.</p>\n         <p>Valid values for <code>Metric</code> are:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>db.load.avg</code> - a scaled representation of the number of active sessions for the\n\t\t\t\t\tdatabase engine.</p>\n            </li>\n            <li>\n               <p>\n                  <code>db.sampledload.avg</code> - the raw number of active sessions for the database\n\t\t\t\t\tengine.</p>\n            </li>\n         </ul>\n         <p>If the number of active sessions is less than an internal Performance Insights threshold,\n\t\t\t\t<code>db.load.avg</code> and <code>db.sampledload.avg</code> are the same value. If\n\t\t\tthe number of active sessions is greater than the internal threshold, Performance Insights samples the active sessions, with\n\t\t\t\t<code>db.load.avg</code> showing the scaled values, <code>db.sampledload.avg</code>\n\t\t\tshowing the raw values, and <code>db.sampledload.avg</code> less than\n\t\t\t\t<code>db.load.avg</code>. For most use cases, you can query <code>db.load.avg</code>\n\t\t\tonly. </p>"}))
    PerformanceInsightsMetricQuery.add_member(:group_by, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceInsightsMetricDimensionGroup, location_name: 'GroupBy', traits: {"smithy.api#documentation" => "<p>The specification for how to aggregate the data points from a Performance Insights\n\t\t\t\t<code>GetResourceMetrics</code> API query. The Performance Insights query returns all of the\n\t\t\tdimensions within that group, unless you provide the names of specific dimensions within\n\t\t\tthat group. You can also request that Performance Insights return a limited number of values for a\n\t\t\tdimension.</p>"}))
    PerformanceInsightsMetricQuery.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceInsightsMetricFilterMap, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>One or more filters to apply to a Performance Insights <code>GetResourceMetrics</code> API query.\n\t\t\tRestrictions:</p>\n         <ul>\n            <li>\n               <p>Any number of filters by the same dimension, as specified in the\n\t\t\t\t\t\t<code>GroupBy</code> parameter.</p>\n            </li>\n            <li>\n               <p>A single filter for any other dimension in this dimension group.</p>\n            </li>\n         </ul>"}))
    PerformanceInsightsMetricQuery.type = Types::PerformanceInsightsMetricQuery
    PerformanceInsightsMetricsDetail.add_member(:metric_display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceInsightsMetricDisplayName, location_name: 'MetricDisplayName', traits: {"smithy.api#documentation" => "<p>The name used for a specific Performance Insights metric.</p>"}))
    PerformanceInsightsMetricsDetail.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceInsightsMetricUnit, location_name: 'Unit', traits: {"smithy.api#documentation" => "<p>The unit of measure for a metric. For example, a session or a process.</p>"}))
    PerformanceInsightsMetricsDetail.add_member(:metric_query, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceInsightsMetricQuery, location_name: 'MetricQuery', traits: {"smithy.api#documentation" => "<p>A single query to be processed for the metric. For more information, see <code>\n               <a href=\"https://docs.aws.amazon.com/devops-guru/latest/APIReference/API_PerformanceInsightsMetricQuery.html\">PerformanceInsightsMetricQuery</a>\n            </code>.</p>"}))
    PerformanceInsightsMetricsDetail.add_member(:reference_data, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceInsightsReferenceDataList, location_name: 'ReferenceData', traits: {"smithy.api#documentation" => "<p> For more information, see <code>\n               <a href=\"https://docs.aws.amazon.com/devops-guru/latest/APIReference/API_PerformanceInsightsReferenceData.html\">PerformanceInsightsReferenceData</a>\n            </code>. </p>"}))
    PerformanceInsightsMetricsDetail.add_member(:stats_at_anomaly, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceInsightsStats, location_name: 'StatsAtAnomaly', traits: {"smithy.api#documentation" => "<p>The metric statistics during the anomalous period detected by DevOps Guru;</p>"}))
    PerformanceInsightsMetricsDetail.add_member(:stats_at_baseline, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceInsightsStats, location_name: 'StatsAtBaseline', traits: {"smithy.api#documentation" => "<p>Typical metric statistics that are not considered anomalous. When DevOps Guru analyzes\n\t\t\tmetrics, it compares them to <code>StatsAtBaseline</code> to help determine if they are\n\t\t\tanomalous.</p>"}))
    PerformanceInsightsMetricsDetail.type = Types::PerformanceInsightsMetricsDetail
    PerformanceInsightsMetricsDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceInsightsMetricsDetail)
    PerformanceInsightsReferenceComparisonValues.add_member(:reference_scalar, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceInsightsReferenceScalar, location_name: 'ReferenceScalar', traits: {"smithy.api#documentation" => "<p>A scalar value DevOps Guru for a metric that DevOps Guru compares to actual metric values. This\n\t\t\treference value is used to determine if an actual metric value should be considered\n\t\t\tanomalous.</p>"}))
    PerformanceInsightsReferenceComparisonValues.add_member(:reference_metric, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceInsightsReferenceMetric, location_name: 'ReferenceMetric', traits: {"smithy.api#documentation" => "<p>A metric that DevOps Guru compares to actual metric values. This reference metric is used to\n\t\t\tdetermine if an actual metric should be considered anomalous.</p>"}))
    PerformanceInsightsReferenceComparisonValues.type = Types::PerformanceInsightsReferenceComparisonValues
    PerformanceInsightsReferenceData.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceInsightsReferenceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the reference data.</p>"}))
    PerformanceInsightsReferenceData.add_member(:comparison_values, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceInsightsReferenceComparisonValues, location_name: 'ComparisonValues', traits: {"smithy.api#documentation" => "<p>The specific reference values used to evaluate the Performance Insights. For more information, see\n\t\t\t\t\t<code>\n               <a href=\"https://docs.aws.amazon.com/devops-guru/latest/APIReference/API_PerformanceInsightsReferenceComparisonValues.html\">PerformanceInsightsReferenceComparisonValues</a>\n            </code>. </p>"}))
    PerformanceInsightsReferenceData.type = Types::PerformanceInsightsReferenceData
    PerformanceInsightsReferenceDataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceInsightsReferenceData)
    PerformanceInsightsReferenceMetric.add_member(:metric_query, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceInsightsMetricQuery, location_name: 'MetricQuery', traits: {"smithy.api#documentation" => "<p>A query to be processed on the metric.</p>"}))
    PerformanceInsightsReferenceMetric.type = Types::PerformanceInsightsReferenceMetric
    PerformanceInsightsReferenceScalar.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceInsightsValueDouble, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The reference value.</p>"}))
    PerformanceInsightsReferenceScalar.type = Types::PerformanceInsightsReferenceScalar
    PerformanceInsightsStat.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceInsightsStatType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The statistic type.</p>"}))
    PerformanceInsightsStat.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceInsightsValueDouble, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the statistic.</p>"}))
    PerformanceInsightsStat.type = Types::PerformanceInsightsStat
    PerformanceInsightsStats.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceInsightsStat)
    PredictionTimeRange.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p> The time range during which a metric limit is expected to be exceeded. This applies\n\t\t\tto proactive insights only. </p>", "smithy.api#required" => {}}))
    PredictionTimeRange.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p> The time when the behavior in a proactive insight is expected to end. </p>"}))
    PredictionTimeRange.type = Types::PredictionTimeRange
    ProactiveAnomalies.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProactiveAnomalySummary)
    ProactiveAnomaly.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p> The ID of a proactive anomaly. </p>"}))
    ProactiveAnomaly.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalySeverity, location_name: 'Severity', traits: {"smithy.api#documentation" => "<p>The severity of the anomaly. The severity of anomalies that generate \n\tan insight determine that insight's severity. For more information, see \n\t<a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities\">Understanding \n\tinsight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>"}))
    ProactiveAnomaly.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p> The status of a proactive anomaly. </p>"}))
    ProactiveAnomaly.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdateTime', traits: {"smithy.api#documentation" => "<p> The time of the anomaly's most recent update. </p>"}))
    ProactiveAnomaly.add_member(:anomaly_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyTimeRange, location_name: 'AnomalyTimeRange'))
    ProactiveAnomaly.add_member(:anomaly_reported_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyReportedTimeRange, location_name: 'AnomalyReportedTimeRange', traits: {"smithy.api#documentation" => "<p>\n\t\t\tAn <code>AnomalyReportedTimeRange</code> object that specifies the time range between when the anomaly is opened and the time when it is closed.\n\t\t</p>"}))
    ProactiveAnomaly.add_member(:prediction_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: PredictionTimeRange, location_name: 'PredictionTimeRange'))
    ProactiveAnomaly.add_member(:source_details, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalySourceDetails, location_name: 'SourceDetails', traits: {"smithy.api#documentation" => "<p> Details about the source of the analyzed operational data that triggered the anomaly.\n\t\t\tThe one supported source is Amazon CloudWatch metrics. </p>"}))
    ProactiveAnomaly.add_member(:associated_insight_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'AssociatedInsightId', traits: {"smithy.api#documentation" => "<p> The ID of the insight that contains this anomaly. An insight is composed of related\n\t\t\tanomalies. </p>"}))
    ProactiveAnomaly.add_member(:resource_collection, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCollection, location_name: 'ResourceCollection'))
    ProactiveAnomaly.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyLimit, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p> A threshold that was exceeded by behavior in analyzed resources. Exceeding this\n\t\t\tthreshold is related to the anomalous behavior that generated this anomaly. </p>"}))
    ProactiveAnomaly.add_member(:source_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalySourceMetadata, location_name: 'SourceMetadata', traits: {"smithy.api#documentation" => "<p>The metadata for the anomaly.</p>"}))
    ProactiveAnomaly.add_member(:anomaly_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyResources, location_name: 'AnomalyResources', traits: {"smithy.api#documentation" => "<p>Information about a resource in which DevOps Guru detected anomalous behavior.</p>"}))
    ProactiveAnomaly.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>\n\t\t\tA description of the proactive anomaly.\n\t\t</p>"}))
    ProactiveAnomaly.type = Types::ProactiveAnomaly
    ProactiveAnomalySummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the anomaly.</p>"}))
    ProactiveAnomalySummary.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalySeverity, location_name: 'Severity', traits: {"smithy.api#documentation" => "<p>The severity of the anomaly. The severity of anomalies that generate \n\tan insight determine that insight's severity. For more information, see \n\t<a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities\">Understanding \n\tinsight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>"}))
    ProactiveAnomalySummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the anomaly.</p>"}))
    ProactiveAnomalySummary.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdateTime', traits: {"smithy.api#documentation" => "<p> The time of the anomaly's most recent update. </p>"}))
    ProactiveAnomalySummary.add_member(:anomaly_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyTimeRange, location_name: 'AnomalyTimeRange'))
    ProactiveAnomalySummary.add_member(:anomaly_reported_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyReportedTimeRange, location_name: 'AnomalyReportedTimeRange', traits: {"smithy.api#documentation" => "<p>\n\t\t\tAn <code>AnomalyReportedTimeRange</code> object that specifies the time range between when the anomaly is opened and the time when it is closed.\n\t\t</p>"}))
    ProactiveAnomalySummary.add_member(:prediction_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: PredictionTimeRange, location_name: 'PredictionTimeRange'))
    ProactiveAnomalySummary.add_member(:source_details, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalySourceDetails, location_name: 'SourceDetails', traits: {"smithy.api#documentation" => "<p> Details about the source of the analyzed operational data that triggered the anomaly.\n\t\t\tThe one supported source is Amazon CloudWatch metrics. </p>"}))
    ProactiveAnomalySummary.add_member(:associated_insight_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'AssociatedInsightId', traits: {"smithy.api#documentation" => "<p> The ID of the insight that contains this anomaly. An insight is composed of related\n\t\t\tanomalies. </p>"}))
    ProactiveAnomalySummary.add_member(:resource_collection, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCollection, location_name: 'ResourceCollection'))
    ProactiveAnomalySummary.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyLimit, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p> A threshold that was exceeded by behavior in analyzed resources. Exceeding this\n\t\t\tthreshold is related to the anomalous behavior that generated this anomaly. </p>"}))
    ProactiveAnomalySummary.add_member(:source_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalySourceMetadata, location_name: 'SourceMetadata', traits: {"smithy.api#documentation" => "<p>The metadata of the source which detects proactive anomalies.</p>"}))
    ProactiveAnomalySummary.add_member(:anomaly_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyResources, location_name: 'AnomalyResources', traits: {"smithy.api#documentation" => "<p>Information about a resource in which DevOps Guru detected anomalous behavior.</p>"}))
    ProactiveAnomalySummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>\n\t\t\tA description of the proactive anomaly.\n\t\t</p>"}))
    ProactiveAnomalySummary.type = Types::ProactiveAnomalySummary
    ProactiveInsight.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the proactive insight. </p>"}))
    ProactiveInsight.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the proactive insight. </p>"}))
    ProactiveInsight.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightSeverity, location_name: 'Severity', traits: {"smithy.api#documentation" => "<p>The severity of the insight. For more information, see \n\t<a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities\">Understanding \n\tinsight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>"}))
    ProactiveInsight.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the proactive insight. </p>"}))
    ProactiveInsight.add_member(:insight_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightTimeRange, location_name: 'InsightTimeRange'))
    ProactiveInsight.add_member(:prediction_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: PredictionTimeRange, location_name: 'PredictionTimeRange'))
    ProactiveInsight.add_member(:resource_collection, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCollection, location_name: 'ResourceCollection'))
    ProactiveInsight.add_member(:ssm_ops_item_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmOpsItemId, location_name: 'SsmOpsItemId', traits: {"smithy.api#documentation" => "<p> The ID of the Amazon Web Services System Manager OpsItem created for this insight. You must enable\n\t\t\tthe creation of OpstItems insights before they are created for each insight. </p>"}))
    ProactiveInsight.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Describes the proactive insight.</p>"}))
    ProactiveInsight.type = Types::ProactiveInsight
    ProactiveInsightSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the proactive insight. </p>"}))
    ProactiveInsightSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the proactive insight. </p>"}))
    ProactiveInsightSummary.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightSeverity, location_name: 'Severity', traits: {"smithy.api#documentation" => "<p>The severity of the insight. For more information, see \n\t<a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities\">Understanding \n\tinsight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>"}))
    ProactiveInsightSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the proactive insight. </p>"}))
    ProactiveInsightSummary.add_member(:insight_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightTimeRange, location_name: 'InsightTimeRange'))
    ProactiveInsightSummary.add_member(:prediction_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: PredictionTimeRange, location_name: 'PredictionTimeRange'))
    ProactiveInsightSummary.add_member(:resource_collection, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCollection, location_name: 'ResourceCollection'))
    ProactiveInsightSummary.add_member(:service_collection, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCollection, location_name: 'ServiceCollection', traits: {"smithy.api#documentation" => "<p>A collection of the names of Amazon Web Services services.</p>"}))
    ProactiveInsightSummary.add_member(:associated_resource_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedResourceArns, location_name: 'AssociatedResourceArns', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) \n\tof the Amazon Web Services resources that generated this insight.</p>"}))
    ProactiveInsightSummary.type = Types::ProactiveInsightSummary
    ProactiveInsights.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProactiveInsightSummary)
    ProactiveOrganizationInsightSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the insight summary.</p>"}))
    ProactiveOrganizationInsightSummary.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services account.</p>"}))
    ProactiveOrganizationInsightSummary.add_member(:organizational_unit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: 'OrganizationalUnitId', traits: {"smithy.api#documentation" => "<p>The ID of the organizational unit.</p>"}))
    ProactiveOrganizationInsightSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the insight summary.</p>"}))
    ProactiveOrganizationInsightSummary.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightSeverity, location_name: 'Severity', traits: {"smithy.api#documentation" => "<p> An array of severity values used to search for insights.\n\t\t\tFor more information, see \n\t<a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities\">Understanding \n\tinsight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>"}))
    ProactiveOrganizationInsightSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p> An array of status values used to search for insights. </p>"}))
    ProactiveOrganizationInsightSummary.add_member(:insight_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightTimeRange, location_name: 'InsightTimeRange'))
    ProactiveOrganizationInsightSummary.add_member(:prediction_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: PredictionTimeRange, location_name: 'PredictionTimeRange'))
    ProactiveOrganizationInsightSummary.add_member(:resource_collection, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCollection, location_name: 'ResourceCollection'))
    ProactiveOrganizationInsightSummary.add_member(:service_collection, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCollection, location_name: 'ServiceCollection'))
    ProactiveOrganizationInsightSummary.type = Types::ProactiveOrganizationInsightSummary
    ProactiveOrganizationInsights.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProactiveOrganizationInsightSummary)
    PutFeedbackRequest.add_member(:insight_feedback, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightFeedback, location_name: 'InsightFeedback', traits: {"smithy.api#documentation" => "<p> The feedback from customers is about the recommendations in this insight. </p>"}))
    PutFeedbackRequest.type = Types::PutFeedbackRequest
    PutFeedbackResponse.type = Types::PutFeedbackResponse
    ReactiveAnomalies.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReactiveAnomalySummary)
    ReactiveAnomaly.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the reactive anomaly. </p>"}))
    ReactiveAnomaly.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalySeverity, location_name: 'Severity', traits: {"smithy.api#documentation" => "<p>The severity of the anomaly. The severity of anomalies that generate \n\tan insight determine that insight's severity. For more information, see \n\t<a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities\">Understanding \n\tinsight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>"}))
    ReactiveAnomaly.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p> The status of the anomaly. </p>"}))
    ReactiveAnomaly.add_member(:anomaly_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyTimeRange, location_name: 'AnomalyTimeRange'))
    ReactiveAnomaly.add_member(:anomaly_reported_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyReportedTimeRange, location_name: 'AnomalyReportedTimeRange', traits: {"smithy.api#documentation" => "<p>\n\t\t\tAn <code>AnomalyReportedTimeRange</code> object that specifies the time range between when the anomaly is opened and the time when it is closed.\n\t\t</p>"}))
    ReactiveAnomaly.add_member(:source_details, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalySourceDetails, location_name: 'SourceDetails', traits: {"smithy.api#documentation" => "<p> Details about the source of the analyzed operational data that triggered the anomaly.\n\t\t\tThe one supported source is Amazon CloudWatch metrics. </p>"}))
    ReactiveAnomaly.add_member(:associated_insight_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'AssociatedInsightId', traits: {"smithy.api#documentation" => "<p> The ID of the insight that contains this anomaly. An insight is composed of related\n\t\t\tanomalies. </p>"}))
    ReactiveAnomaly.add_member(:resource_collection, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCollection, location_name: 'ResourceCollection'))
    ReactiveAnomaly.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the reactive anomaly. It can be one of the following types.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CAUSAL</code> - the anomaly can cause a new insight.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CONTEXTUAL</code> - the anomaly contains additional information about an insight or its causal anomaly.</p>\n            </li>\n         </ul>"}))
    ReactiveAnomaly.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the reactive anomaly.</p>"}))
    ReactiveAnomaly.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the reactive anomaly.</p>"}))
    ReactiveAnomaly.add_member(:causal_anomaly_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyId, location_name: 'CausalAnomalyId', traits: {"smithy.api#documentation" => "<p>The ID of the causal anomaly that is associated with this \n      reactive anomaly. The ID of a `CAUSAL` anomaly is always `NULL`.</p>"}))
    ReactiveAnomaly.add_member(:anomaly_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyResources, location_name: 'AnomalyResources', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services resources in which anomalous behavior was detected by DevOps Guru.</p>"}))
    ReactiveAnomaly.type = Types::ReactiveAnomaly
    ReactiveAnomalySummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p> The ID of the reactive anomaly. </p>"}))
    ReactiveAnomalySummary.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalySeverity, location_name: 'Severity', traits: {"smithy.api#documentation" => "<p>The severity of the anomaly. The severity of anomalies that generate \n\tan insight determine that insight's severity. For more information, see \n\t<a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities\">Understanding \n\tinsight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>"}))
    ReactiveAnomalySummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p> The status of the reactive anomaly. </p>"}))
    ReactiveAnomalySummary.add_member(:anomaly_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyTimeRange, location_name: 'AnomalyTimeRange'))
    ReactiveAnomalySummary.add_member(:anomaly_reported_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyReportedTimeRange, location_name: 'AnomalyReportedTimeRange', traits: {"smithy.api#documentation" => "<p>\n\t\t\tAn <code>AnomalyReportedTimeRange</code> object that specifies the time range between when the anomaly is opened and the time when it is closed.\n\t\t</p>"}))
    ReactiveAnomalySummary.add_member(:source_details, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalySourceDetails, location_name: 'SourceDetails', traits: {"smithy.api#documentation" => "<p> Details about the source of the analyzed operational data that triggered the anomaly.\n\t\t\tThe one supported source is Amazon CloudWatch metrics. </p>"}))
    ReactiveAnomalySummary.add_member(:associated_insight_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'AssociatedInsightId', traits: {"smithy.api#documentation" => "<p> The ID of the insight that contains this anomaly. An insight is composed of related\n\t\t\tanomalies. </p>"}))
    ReactiveAnomalySummary.add_member(:resource_collection, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCollection, location_name: 'ResourceCollection'))
    ReactiveAnomalySummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the reactive anomaly. It can be one of the following types.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CAUSAL</code> - the anomaly can cause a new insight.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CONTEXTUAL</code> - the anomaly contains additional information about an insight or its causal anomaly.</p>\n            </li>\n         </ul>"}))
    ReactiveAnomalySummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the reactive anomaly.</p>"}))
    ReactiveAnomalySummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the reactive anomaly.</p>"}))
    ReactiveAnomalySummary.add_member(:causal_anomaly_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyId, location_name: 'CausalAnomalyId', traits: {"smithy.api#documentation" => "<p>The ID of the causal anomaly that is associated with this \n      reactive anomaly. The ID of a `CAUSAL` anomaly is always `NULL`.</p>"}))
    ReactiveAnomalySummary.add_member(:anomaly_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyResources, location_name: 'AnomalyResources', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services resources in which anomalous behavior was detected by DevOps Guru.</p>"}))
    ReactiveAnomalySummary.type = Types::ReactiveAnomalySummary
    ReactiveInsight.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p> The ID of a reactive insight. </p>"}))
    ReactiveInsight.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p> The name of a reactive insight. </p>"}))
    ReactiveInsight.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightSeverity, location_name: 'Severity', traits: {"smithy.api#documentation" => "<p>The severity of the insight. For more information, see \n\t<a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities\">Understanding \n\tinsight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>"}))
    ReactiveInsight.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p> The status of a reactive insight. </p>"}))
    ReactiveInsight.add_member(:insight_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightTimeRange, location_name: 'InsightTimeRange'))
    ReactiveInsight.add_member(:resource_collection, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCollection, location_name: 'ResourceCollection'))
    ReactiveInsight.add_member(:ssm_ops_item_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmOpsItemId, location_name: 'SsmOpsItemId', traits: {"smithy.api#documentation" => "<p> The ID of the Amazon Web Services System Manager OpsItem created for this insight. You must enable\n\t\t\tthe creation of OpstItems insights before they are created for each insight. </p>"}))
    ReactiveInsight.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Describes the reactive insight.</p>"}))
    ReactiveInsight.type = Types::ReactiveInsight
    ReactiveInsightSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p> The ID of a reactive summary. </p>"}))
    ReactiveInsightSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p> The name of a reactive insight. </p>"}))
    ReactiveInsightSummary.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightSeverity, location_name: 'Severity', traits: {"smithy.api#documentation" => "<p>The severity of the insight. For more information, see \n\t<a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities\">Understanding \n\tinsight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>"}))
    ReactiveInsightSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p> The status of a reactive insight. </p>"}))
    ReactiveInsightSummary.add_member(:insight_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightTimeRange, location_name: 'InsightTimeRange'))
    ReactiveInsightSummary.add_member(:resource_collection, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCollection, location_name: 'ResourceCollection'))
    ReactiveInsightSummary.add_member(:service_collection, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCollection, location_name: 'ServiceCollection', traits: {"smithy.api#documentation" => "<p>A collection of the names of Amazon Web Services services.</p>"}))
    ReactiveInsightSummary.add_member(:associated_resource_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedResourceArns, location_name: 'AssociatedResourceArns', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) \n\tof the Amazon Web Services resources that generated this insight.</p>"}))
    ReactiveInsightSummary.type = Types::ReactiveInsightSummary
    ReactiveInsights.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReactiveInsightSummary)
    ReactiveOrganizationInsightSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the insight summary.</p>"}))
    ReactiveOrganizationInsightSummary.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services account. </p>"}))
    ReactiveOrganizationInsightSummary.add_member(:organizational_unit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: 'OrganizationalUnitId', traits: {"smithy.api#documentation" => "<p>The ID of the organizational unit.</p>"}))
    ReactiveOrganizationInsightSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the insight summary.</p>"}))
    ReactiveOrganizationInsightSummary.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightSeverity, location_name: 'Severity', traits: {"smithy.api#documentation" => "<p> An array of severity values used to search for insights.\n\t\t\tFor more information, see \n\t<a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities\">Understanding \n\tinsight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>"}))
    ReactiveOrganizationInsightSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p> An array of status values used to search for insights. </p>"}))
    ReactiveOrganizationInsightSummary.add_member(:insight_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightTimeRange, location_name: 'InsightTimeRange'))
    ReactiveOrganizationInsightSummary.add_member(:resource_collection, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCollection, location_name: 'ResourceCollection'))
    ReactiveOrganizationInsightSummary.add_member(:service_collection, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCollection, location_name: 'ServiceCollection'))
    ReactiveOrganizationInsightSummary.type = Types::ReactiveOrganizationInsightSummary
    ReactiveOrganizationInsights.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReactiveOrganizationInsightSummary)
    Recommendation.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p> A description of the problem. </p>"}))
    Recommendation.add_member(:link, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationLink, location_name: 'Link', traits: {"smithy.api#documentation" => "<p> A hyperlink to information to help you address the problem. </p>"}))
    Recommendation.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p> The name of the recommendation. </p>"}))
    Recommendation.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p> The reason DevOps Guru flagged the anomalous behavior as a problem. </p>"}))
    Recommendation.add_member(:related_events, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationRelatedEvents, location_name: 'RelatedEvents', traits: {"smithy.api#documentation" => "<p> Events that are related to the problem. Use these events to learn more about what's\n\t\t\thappening and to help address the issue. </p>"}))
    Recommendation.add_member(:related_anomalies, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationRelatedAnomalies, location_name: 'RelatedAnomalies', traits: {"smithy.api#documentation" => "<p> Anomalies that are related to the problem. Use these Anomalies to learn more about\n\t\t\twhat's happening and to help address the issue. </p>"}))
    Recommendation.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationCategory, location_name: 'Category', traits: {"smithy.api#documentation" => "<p>The category type of the recommendation.</p>"}))
    Recommendation.type = Types::Recommendation
    RecommendationRelatedAnomalies.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationRelatedAnomaly)
    RecommendationRelatedAnomaly.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationRelatedAnomalyResources, location_name: 'Resources', traits: {"smithy.api#documentation" => "<p> An array of objects that represent resources in which DevOps Guru detected anomalous\n\t\t\tbehavior. Each object contains the name and type of the resource. </p>"}))
    RecommendationRelatedAnomaly.add_member(:source_details, Smithy::Schema::Shapes::ShapeRef.new(shape: RelatedAnomalySourceDetails, location_name: 'SourceDetails', traits: {"smithy.api#documentation" => "<p> Information about where the anomalous behavior related the recommendation was found.\n\t\t\tFor example, details in Amazon CloudWatch metrics. </p>"}))
    RecommendationRelatedAnomaly.add_member(:anomaly_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyId, location_name: 'AnomalyId', traits: {"smithy.api#documentation" => "<p>The ID of an anomaly that generated the insight with this recommendation.</p>"}))
    RecommendationRelatedAnomaly.type = Types::RecommendationRelatedAnomaly
    RecommendationRelatedAnomalyResource.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationRelatedAnomalyResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p> The name of the resource. </p>"}))
    RecommendationRelatedAnomalyResource.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationRelatedAnomalyResourceType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p> The type of the resource. Resource types take the same form that is used by Amazon Web Services CloudFormation\n\t\t\tresource type identifiers, <code>service-provider::service-name::data-type-name</code>.\n\t\t\tFor example, <code>AWS::RDS::DBCluster</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html\">Amazon Web Services\n\t\t\t\tresource and property types reference</a> in the <i>Amazon Web Services CloudFormation User\n\t\t\t\tGuide</i>.</p>"}))
    RecommendationRelatedAnomalyResource.type = Types::RecommendationRelatedAnomalyResource
    RecommendationRelatedAnomalyResources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationRelatedAnomalyResource)
    RecommendationRelatedAnomalySourceDetail.add_member(:cloud_watch_metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationRelatedCloudWatchMetricsSourceDetails, location_name: 'CloudWatchMetrics', traits: {"smithy.api#documentation" => "<p> An array of <code>CloudWatchMetricsDetail</code> objects that contains information\n\t\t\tabout the analyzed metrics that displayed anomalous behavior. </p>"}))
    RecommendationRelatedAnomalySourceDetail.type = Types::RecommendationRelatedAnomalySourceDetail
    RecommendationRelatedCloudWatchMetricsSourceDetail.add_member(:metric_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationRelatedCloudWatchMetricsSourceMetricName, location_name: 'MetricName', traits: {"smithy.api#documentation" => "<p>The name of the CloudWatch metric.</p>"}))
    RecommendationRelatedCloudWatchMetricsSourceDetail.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationRelatedCloudWatchMetricsSourceNamespace, location_name: 'Namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the CloudWatch metric. A namespace is a container for CloudWatch metrics.</p>"}))
    RecommendationRelatedCloudWatchMetricsSourceDetail.type = Types::RecommendationRelatedCloudWatchMetricsSourceDetail
    RecommendationRelatedCloudWatchMetricsSourceDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationRelatedCloudWatchMetricsSourceDetail)
    RecommendationRelatedEvent.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationRelatedEventName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p> The name of the event. This corresponds to the <code>Name</code> field in an\n\t\t\t\t<code>Event</code> object. </p>"}))
    RecommendationRelatedEvent.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationRelatedEventResources, location_name: 'Resources', traits: {"smithy.api#documentation" => "<p> A <code>ResourceCollection</code> object that contains arrays of the names of Amazon Web Services\n\t\t\tCloudFormation stacks. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>"}))
    RecommendationRelatedEvent.type = Types::RecommendationRelatedEvent
    RecommendationRelatedEventResource.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationRelatedEventResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p> The name of the resource that emitted the event. This corresponds to the\n\t\t\t\t<code>Name</code> field in an <code>EventResource</code> object. </p>"}))
    RecommendationRelatedEventResource.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationRelatedEventResourceType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p> The type of the resource that emitted the event. This corresponds to the\n\t\t\t\t<code>Type</code> field in an <code>EventResource</code> object. </p>"}))
    RecommendationRelatedEventResource.type = Types::RecommendationRelatedEventResource
    RecommendationRelatedEventResources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationRelatedEventResource)
    RecommendationRelatedEvents.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationRelatedEvent)
    Recommendations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Recommendation)
    RelatedAnomalySourceDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationRelatedAnomalySourceDetail)
    RemoveNotificationChannelRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationChannelId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p> The ID of the notification channel to be removed. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveNotificationChannelRequest.type = Types::RemoveNotificationChannelRequest
    RemoveNotificationChannelResponse.type = Types::RemoveNotificationChannelResponse
    ResourceCollection.add_member(:cloud_formation, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudFormationCollection, location_name: 'CloudFormation', traits: {"smithy.api#documentation" => "<p> An array of the names of Amazon Web Services CloudFormation stacks. The stacks define Amazon Web Services resources that\n\t\t\tDevOps Guru analyzes. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>"}))
    ResourceCollection.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagCollections, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services tags that are used by resources in the resource collection.</p>\n         <p>Tags help you identify and organize your Amazon Web Services resources. Many Amazon Web Services services support\n   \t\ttagging, so you can assign the same tag to resources from different services to indicate\n   \t\tthat the resources are related. For example, you can assign the same tag to an Amazon DynamoDB\n   \t\ttable resource that you assign to an Lambda function. For more information about\n   \t\tusing tags, see the <a href=\"https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/tagging-best-practices.html\">Tagging\n   \t\t\tbest practices</a> whitepaper. </p>\n         <p>Each Amazon Web Services tag has two parts. </p>\n         <ul>\n            <li>\n               <p>A tag <i>key</i> (for example, <code>CostCenter</code>,\n   \t\t\t\t<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag\n   \t\t\t\t<i>keys</i> are case-sensitive.</p>\n            </li>\n            <li>\n               <p>An optional field known as a tag <i>value</i> (for example,\n   \t\t\t\t<code>111122223333</code>, <code>Production</code>, or a team\n   \t\t\t\tname). Omitting the tag <i>value</i> is the same as using an empty\n   \t\t\t\tstring. Like tag <i>keys</i>, tag <i>values</i> are\n   \t\t\t\tcase-sensitive.</p>\n            </li>\n         </ul>\n         <p>Together these are known as <i>key</i>-<i>value</i> pairs.</p>\n         <important>\n            <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the\n\t\t\tprefix <code>Devops-guru-</code>. The tag <i>key</i> might be\n\t\t\t<code>DevOps-Guru-deployment-application</code> or\n\t\t\t<code>devops-guru-rds-application</code>. When you create a <i>key</i>, the case of characters in the <i>key</i> can be whatever you choose. After you create a <i>key</i>, it is case-sensitive.\n\t\t\t For example, DevOps Guru works with a\n\t\t\t<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named\n\t\t\t<code>DevOps-Guru-RDS</code>, and these act as two different <i>keys</i>. Possible <i>key</i>/<i>value</i> pairs in your\n\t\t\tapplication might be <code>Devops-Guru-production-application/RDS</code> or\n\t\t\t<code>Devops-Guru-production-application/containers</code>.</p>\n         </important>"}))
    ResourceCollection.type = Types::ResourceCollection
    ResourceCollectionFilter.add_member(:cloud_formation, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudFormationCollectionFilter, location_name: 'CloudFormation', traits: {"smithy.api#documentation" => "<p> Information about Amazon Web Services CloudFormation stacks. You can use up to 500\n\t\t\tstacks to specify which Amazon Web Services resources in your account to analyze. For more\n\t\t\tinformation, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html\">Stacks</a> in the\n\t\t\t\t<i>Amazon Web Services CloudFormation User Guide</i>. </p>"}))
    ResourceCollectionFilter.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagCollectionFilters, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services tags used to filter the resources in the resource collection.</p>\n         <p>Tags help you identify and organize your Amazon Web Services resources. Many Amazon Web Services services support\n   \t\ttagging, so you can assign the same tag to resources from different services to indicate\n   \t\tthat the resources are related. For example, you can assign the same tag to an Amazon DynamoDB\n   \t\ttable resource that you assign to an Lambda function. For more information about\n   \t\tusing tags, see the <a href=\"https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/tagging-best-practices.html\">Tagging\n   \t\t\tbest practices</a> whitepaper. </p>\n         <p>Each Amazon Web Services tag has two parts. </p>\n         <ul>\n            <li>\n               <p>A tag <i>key</i> (for example, <code>CostCenter</code>,\n   \t\t\t\t<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag\n   \t\t\t\t<i>keys</i> are case-sensitive.</p>\n            </li>\n            <li>\n               <p>An optional field known as a tag <i>value</i> (for example,\n   \t\t\t\t<code>111122223333</code>, <code>Production</code>, or a team\n   \t\t\t\tname). Omitting the tag <i>value</i> is the same as using an empty\n   \t\t\t\tstring. Like tag <i>keys</i>, tag <i>values</i> are\n   \t\t\t\tcase-sensitive.</p>\n            </li>\n         </ul>\n         <p>Together these are known as <i>key</i>-<i>value</i> pairs.</p>\n         <important>\n            <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the\n\t\t\tprefix <code>Devops-guru-</code>. The tag <i>key</i> might be\n\t\t\t<code>DevOps-Guru-deployment-application</code> or\n\t\t\t<code>devops-guru-rds-application</code>. When you create a <i>key</i>, the case of characters in the <i>key</i> can be whatever you choose. After you create a <i>key</i>, it is case-sensitive.\n\t\t\t For example, DevOps Guru works with a\n\t\t\t<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named\n\t\t\t<code>DevOps-Guru-RDS</code>, and these act as two different <i>keys</i>. Possible <i>key</i>/<i>value</i> pairs in your\n\t\t\tapplication might be <code>Devops-Guru-production-application/RDS</code> or\n\t\t\t<code>Devops-Guru-production-application/containers</code>.</p>\n         </important>"}))
    ResourceCollectionFilter.type = Types::ResourceCollectionFilter
    ResourceCollectionType.add_member(:aws_cloud_formation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_CLOUD_FORMATION', traits: {"smithy.api#enumValue" => "AWS_CLOUD_FORMATION"}))
    ResourceCollectionType.add_member(:aws_service, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SERVICE', traits: {"smithy.api#enumValue" => "AWS_SERVICE"}))
    ResourceCollectionType.add_member(:aws_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_TAGS', traits: {"smithy.api#enumValue" => "AWS_TAGS"}))
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageString, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p> The ID of the Amazon Web Services resource that could not be found. </p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p> The type of the Amazon Web Services resource that could not be found. </p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourcePermission.add_member(:full_permission, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULL_PERMISSION', traits: {"smithy.api#enumValue" => "FULL_PERMISSION"}))
    ResourcePermission.add_member(:missing_permission, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISSING_PERMISSION', traits: {"smithy.api#enumValue" => "MISSING_PERMISSION"}))
    ResourceTypeFilter.add_member(:log_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOG_GROUPS', traits: {"smithy.api#enumValue" => "LOG_GROUPS"}))
    ResourceTypeFilter.add_member(:cloudfront_distribution, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOUDFRONT_DISTRIBUTION', traits: {"smithy.api#enumValue" => "CLOUDFRONT_DISTRIBUTION"}))
    ResourceTypeFilter.add_member(:dynamodb_table, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DYNAMODB_TABLE', traits: {"smithy.api#enumValue" => "DYNAMODB_TABLE"}))
    ResourceTypeFilter.add_member(:ec2_nat_gateway, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2_NAT_GATEWAY', traits: {"smithy.api#enumValue" => "EC2_NAT_GATEWAY"}))
    ResourceTypeFilter.add_member(:ecs_cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECS_CLUSTER', traits: {"smithy.api#enumValue" => "ECS_CLUSTER"}))
    ResourceTypeFilter.add_member(:ecs_service, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECS_SERVICE', traits: {"smithy.api#enumValue" => "ECS_SERVICE"}))
    ResourceTypeFilter.add_member(:eks_cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EKS_CLUSTER', traits: {"smithy.api#enumValue" => "EKS_CLUSTER"}))
    ResourceTypeFilter.add_member(:elastic_beanstalk_environment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ELASTIC_BEANSTALK_ENVIRONMENT', traits: {"smithy.api#enumValue" => "ELASTIC_BEANSTALK_ENVIRONMENT"}))
    ResourceTypeFilter.add_member(:elastic_load_balancer_load_balancer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ELASTIC_LOAD_BALANCER_LOAD_BALANCER', traits: {"smithy.api#enumValue" => "ELASTIC_LOAD_BALANCER_LOAD_BALANCER"}))
    ResourceTypeFilter.add_member(:elastic_load_balancing_v2_load_balancer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ELASTIC_LOAD_BALANCING_V2_LOAD_BALANCER', traits: {"smithy.api#enumValue" => "ELASTIC_LOAD_BALANCING_V2_LOAD_BALANCER"}))
    ResourceTypeFilter.add_member(:elastic_load_balancing_v2_target_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ELASTIC_LOAD_BALANCING_V2_TARGET_GROUP', traits: {"smithy.api#enumValue" => "ELASTIC_LOAD_BALANCING_V2_TARGET_GROUP"}))
    ResourceTypeFilter.add_member(:elasticache_cache_cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ELASTICACHE_CACHE_CLUSTER', traits: {"smithy.api#enumValue" => "ELASTICACHE_CACHE_CLUSTER"}))
    ResourceTypeFilter.add_member(:elasticsearch_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ELASTICSEARCH_DOMAIN', traits: {"smithy.api#enumValue" => "ELASTICSEARCH_DOMAIN"}))
    ResourceTypeFilter.add_member(:kinesis_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KINESIS_STREAM', traits: {"smithy.api#enumValue" => "KINESIS_STREAM"}))
    ResourceTypeFilter.add_member(:lambda_function, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAMBDA_FUNCTION', traits: {"smithy.api#enumValue" => "LAMBDA_FUNCTION"}))
    ResourceTypeFilter.add_member(:open_search_service_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPEN_SEARCH_SERVICE_DOMAIN', traits: {"smithy.api#enumValue" => "OPEN_SEARCH_SERVICE_DOMAIN"}))
    ResourceTypeFilter.add_member(:rds_db_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RDS_DB_INSTANCE', traits: {"smithy.api#enumValue" => "RDS_DB_INSTANCE"}))
    ResourceTypeFilter.add_member(:rds_db_cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RDS_DB_CLUSTER', traits: {"smithy.api#enumValue" => "RDS_DB_CLUSTER"}))
    ResourceTypeFilter.add_member(:redshift_cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REDSHIFT_CLUSTER', traits: {"smithy.api#enumValue" => "REDSHIFT_CLUSTER"}))
    ResourceTypeFilter.add_member(:route53_hosted_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROUTE53_HOSTED_ZONE', traits: {"smithy.api#enumValue" => "ROUTE53_HOSTED_ZONE"}))
    ResourceTypeFilter.add_member(:route53_health_check, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROUTE53_HEALTH_CHECK', traits: {"smithy.api#enumValue" => "ROUTE53_HEALTH_CHECK"}))
    ResourceTypeFilter.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_BUCKET', traits: {"smithy.api#enumValue" => "S3_BUCKET"}))
    ResourceTypeFilter.add_member(:sagemaker_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAGEMAKER_ENDPOINT', traits: {"smithy.api#enumValue" => "SAGEMAKER_ENDPOINT"}))
    ResourceTypeFilter.add_member(:sns_topic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNS_TOPIC', traits: {"smithy.api#enumValue" => "SNS_TOPIC"}))
    ResourceTypeFilter.add_member(:sqs_queue, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SQS_QUEUE', traits: {"smithy.api#enumValue" => "SQS_QUEUE"}))
    ResourceTypeFilter.add_member(:step_functions_activity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STEP_FUNCTIONS_ACTIVITY', traits: {"smithy.api#enumValue" => "STEP_FUNCTIONS_ACTIVITY"}))
    ResourceTypeFilter.add_member(:step_functions_state_machine, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STEP_FUNCTIONS_STATE_MACHINE', traits: {"smithy.api#enumValue" => "STEP_FUNCTIONS_STATE_MACHINE"}))
    ResourceTypeFilters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypeFilter)
    SearchInsightsAccountIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId)
    SearchInsightsFilters.add_member(:severities, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightSeverities, location_name: 'Severities', traits: {"smithy.api#documentation" => "<p> An array of severity values used to search for insights. </p>"}))
    SearchInsightsFilters.add_member(:statuses, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightStatuses, location_name: 'Statuses', traits: {"smithy.api#documentation" => "<p> An array of status values used to search for insights. </p>"}))
    SearchInsightsFilters.add_member(:resource_collection, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCollection, location_name: 'ResourceCollection'))
    SearchInsightsFilters.add_member(:service_collection, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCollection, location_name: 'ServiceCollection', traits: {"smithy.api#documentation" => "<p>A collection of the names of Amazon Web Services services.</p>"}))
    SearchInsightsFilters.type = Types::SearchInsightsFilters
    SearchInsightsRequest.add_member(:start_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: StartTimeRange, location_name: 'StartTimeRange', traits: {"smithy.api#documentation" => "<p> The start of the time range passed in. Returned insights occurred after this time.\n\t\t</p>", "smithy.api#required" => {}}))
    SearchInsightsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchInsightsFilters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p> A <code>SearchInsightsFilters</code> object that is used to set the severity and\n\t\t\tstatus filters on your insight search. </p>"}))
    SearchInsightsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchInsightsMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with a single call.\n\tTo retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>"}))
    SearchInsightsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve \n   the next page of results for this operation. If this value is null, it retrieves the first page.</p>"}))
    SearchInsightsRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p> The type of insights you are searching for (<code>REACTIVE</code> or\n\t\t\t\t<code>PROACTIVE</code>). </p>", "smithy.api#required" => {}}))
    SearchInsightsRequest.type = Types::SearchInsightsRequest
    SearchInsightsResponse.add_member(:proactive_insights, Smithy::Schema::Shapes::ShapeRef.new(shape: ProactiveInsights, location_name: 'ProactiveInsights', traits: {"smithy.api#documentation" => "<p> The returned proactive insights. </p>"}))
    SearchInsightsResponse.add_member(:reactive_insights, Smithy::Schema::Shapes::ShapeRef.new(shape: ReactiveInsights, location_name: 'ReactiveInsights', traits: {"smithy.api#documentation" => "<p> The returned reactive insights. </p>"}))
    SearchInsightsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve \n   the next page of results for this operation. If there are no more pages, this value is null.</p>"}))
    SearchInsightsResponse.type = Types::SearchInsightsResponse
    SearchOrganizationInsightsFilters.add_member(:severities, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightSeverities, location_name: 'Severities', traits: {"smithy.api#documentation" => "<p> An array of severity values used to search for insights. </p>"}))
    SearchOrganizationInsightsFilters.add_member(:statuses, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightStatuses, location_name: 'Statuses', traits: {"smithy.api#documentation" => "<p> An array of status values used to search for insights. </p>"}))
    SearchOrganizationInsightsFilters.add_member(:resource_collection, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCollection, location_name: 'ResourceCollection'))
    SearchOrganizationInsightsFilters.add_member(:service_collection, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCollection, location_name: 'ServiceCollection'))
    SearchOrganizationInsightsFilters.type = Types::SearchOrganizationInsightsFilters
    SearchOrganizationInsightsRequest.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchInsightsAccountIdList, location_name: 'AccountIds', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services account. </p>", "smithy.api#required" => {}}))
    SearchOrganizationInsightsRequest.add_member(:start_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: StartTimeRange, location_name: 'StartTimeRange', traits: {"smithy.api#required" => {}}))
    SearchOrganizationInsightsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchOrganizationInsightsFilters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p> A <code>SearchOrganizationInsightsFilters</code> object that is used to set the\n\t\t\tseverity and status filters on your insight search. </p>"}))
    SearchOrganizationInsightsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchOrganizationInsightsMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with a single call.\n\tTo retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>"}))
    SearchOrganizationInsightsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve \n   the next page of results for this operation. If this value is null, it retrieves the first page.</p>"}))
    SearchOrganizationInsightsRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p> The type of insights you are searching for (<code>REACTIVE</code> or\n\t\t\t\t<code>PROACTIVE</code>). </p>", "smithy.api#required" => {}}))
    SearchOrganizationInsightsRequest.type = Types::SearchOrganizationInsightsRequest
    SearchOrganizationInsightsResponse.add_member(:proactive_insights, Smithy::Schema::Shapes::ShapeRef.new(shape: ProactiveInsights, location_name: 'ProactiveInsights', traits: {"smithy.api#documentation" => "<p>An integer that specifies the number of open proactive insights in your Amazon Web Services\n\t\t\taccount.</p>"}))
    SearchOrganizationInsightsResponse.add_member(:reactive_insights, Smithy::Schema::Shapes::ShapeRef.new(shape: ReactiveInsights, location_name: 'ReactiveInsights', traits: {"smithy.api#documentation" => "<p>An integer that specifies the number of open reactive insights in your Amazon Web Services\n\t\t\taccount.</p>"}))
    SearchOrganizationInsightsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve \n   the next page of results for this operation. If there are no more pages, this value is null.</p>"}))
    SearchOrganizationInsightsResponse.type = Types::SearchOrganizationInsightsResponse
    ServerSideEncryptionType.add_member(:customer_managed_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOMER_MANAGED_KEY', traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED_KEY"}))
    ServerSideEncryptionType.add_member(:aws_owned_kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_OWNED_KMS_KEY', traits: {"smithy.api#enumValue" => "AWS_OWNED_KMS_KEY"}))
    ServiceCollection.add_member(:service_names, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNames, location_name: 'ServiceNames', traits: {"smithy.api#documentation" => "<p>An array of strings that each specifies the name of an Amazon Web Services service.</p>"}))
    ServiceCollection.type = Types::ServiceCollection
    ServiceHealth.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'ServiceName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Web Services service.</p>"}))
    ServiceHealth.add_member(:insight, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceInsightHealth, location_name: 'Insight', traits: {"smithy.api#documentation" => "<p>Represents the health of an Amazon Web Services service. This is a <code>ServiceInsightHealth</code>\n\t\t\tthat contains the number of open proactive and reactive insights for this\n\t\t\tservice.</p>"}))
    ServiceHealth.add_member(:analyzed_resource_count, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzedResourceCount, location_name: 'AnalyzedResourceCount', traits: {"smithy.api#documentation" => "<p>\n\t\t\tNumber of resources that DevOps Guru is monitoring in an analyzed Amazon Web Services service.\n\t\t</p>"}))
    ServiceHealth.type = Types::ServiceHealth
    ServiceHealths.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceHealth)
    ServiceInsightHealth.add_member(:open_proactive_insights, Smithy::Schema::Shapes::ShapeRef.new(shape: NumOpenProactiveInsights, location_name: 'OpenProactiveInsights', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of open proactive insights in the Amazon Web Services service</p>"}))
    ServiceInsightHealth.add_member(:open_reactive_insights, Smithy::Schema::Shapes::ShapeRef.new(shape: NumOpenReactiveInsights, location_name: 'OpenReactiveInsights', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of open reactive insights in the Amazon Web Services service</p>"}))
    ServiceInsightHealth.type = Types::ServiceInsightHealth
    ServiceIntegrationConfig.add_member(:ops_center, Smithy::Schema::Shapes::ShapeRef.new(shape: OpsCenterIntegration, location_name: 'OpsCenter', traits: {"smithy.api#documentation" => "<p> Information about whether DevOps Guru is configured to create an OpsItem in Amazon Web Services Systems Manager\n\t\t\tOpsCenter for each created insight. </p>"}))
    ServiceIntegrationConfig.add_member(:logs_anomaly_detection, Smithy::Schema::Shapes::ShapeRef.new(shape: LogsAnomalyDetectionIntegration, location_name: 'LogsAnomalyDetection', traits: {"smithy.api#documentation" => "<p>\n\t\t\tInformation about whether DevOps Guru is configured to perform log anomaly detection on Amazon CloudWatch log groups.\n\t\t</p>"}))
    ServiceIntegrationConfig.add_member(:kms_server_side_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSServerSideEncryptionIntegration, location_name: 'KMSServerSideEncryption', traits: {"smithy.api#documentation" => "<p>\n\t\t\tInformation about whether DevOps Guru is configured to encrypt server-side data using KMS. \n\t\t</p>"}))
    ServiceIntegrationConfig.type = Types::ServiceIntegrationConfig
    ServiceName.add_member(:api_gateway, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'API_GATEWAY', traits: {"smithy.api#enumValue" => "API_GATEWAY"}))
    ServiceName.add_member(:application_elb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPLICATION_ELB', traits: {"smithy.api#enumValue" => "APPLICATION_ELB"}))
    ServiceName.add_member(:auto_scaling_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO_SCALING_GROUP', traits: {"smithy.api#enumValue" => "AUTO_SCALING_GROUP"}))
    ServiceName.add_member(:cloud_front, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOUD_FRONT', traits: {"smithy.api#enumValue" => "CLOUD_FRONT"}))
    ServiceName.add_member(:dynamo_db, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DYNAMO_DB', traits: {"smithy.api#enumValue" => "DYNAMO_DB"}))
    ServiceName.add_member(:ec2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2', traits: {"smithy.api#enumValue" => "EC2"}))
    ServiceName.add_member(:ecs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECS', traits: {"smithy.api#enumValue" => "ECS"}))
    ServiceName.add_member(:eks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EKS', traits: {"smithy.api#enumValue" => "EKS"}))
    ServiceName.add_member(:elastic_beanstalk, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ELASTIC_BEANSTALK', traits: {"smithy.api#enumValue" => "ELASTIC_BEANSTALK"}))
    ServiceName.add_member(:elasti_cache, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ELASTI_CACHE', traits: {"smithy.api#enumValue" => "ELASTI_CACHE"}))
    ServiceName.add_member(:elb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ELB', traits: {"smithy.api#enumValue" => "ELB"}))
    ServiceName.add_member(:es, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ES', traits: {"smithy.api#enumValue" => "ES"}))
    ServiceName.add_member(:kinesis, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KINESIS', traits: {"smithy.api#enumValue" => "KINESIS"}))
    ServiceName.add_member(:lambda, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAMBDA', traits: {"smithy.api#enumValue" => "LAMBDA"}))
    ServiceName.add_member(:nat_gateway, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NAT_GATEWAY', traits: {"smithy.api#enumValue" => "NAT_GATEWAY"}))
    ServiceName.add_member(:network_elb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NETWORK_ELB', traits: {"smithy.api#enumValue" => "NETWORK_ELB"}))
    ServiceName.add_member(:rds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RDS', traits: {"smithy.api#enumValue" => "RDS"}))
    ServiceName.add_member(:redshift, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REDSHIFT', traits: {"smithy.api#enumValue" => "REDSHIFT"}))
    ServiceName.add_member(:route_53, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROUTE_53', traits: {"smithy.api#enumValue" => "ROUTE_53"}))
    ServiceName.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3', traits: {"smithy.api#enumValue" => "S3"}))
    ServiceName.add_member(:sage_maker, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAGE_MAKER', traits: {"smithy.api#enumValue" => "SAGE_MAKER"}))
    ServiceName.add_member(:sns, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNS', traits: {"smithy.api#enumValue" => "SNS"}))
    ServiceName.add_member(:sqs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SQS', traits: {"smithy.api#enumValue" => "SQS"}))
    ServiceName.add_member(:step_functions, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STEP_FUNCTIONS', traits: {"smithy.api#enumValue" => "STEP_FUNCTIONS"}))
    ServiceName.add_member(:swf, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SWF', traits: {"smithy.api#enumValue" => "SWF"}))
    ServiceNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName)
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageString, location_name: 'Message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceResourceCost.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the Amazon Web Services resource.</p>"}))
    ServiceResourceCost.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: CostEstimationServiceResourceState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the resource. The resource is <code>ACTIVE</code> if it produces metrics,\n\t\t\tevents, or logs within an hour, otherwise it is <code>INACTIVE</code>. You pay for the\n\t\t\tnumber of active Amazon Web Services resource hours analyzed for each resource. Inactive resources are\n\t\t\tnot charged. </p>"}))
    ServiceResourceCost.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: CostEstimationServiceResourceCount, location_name: 'Count', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of active resources analyzed for this service to create a monthly cost\n\t\t\testimate.</p>"}))
    ServiceResourceCost.add_member(:unit_cost, Smithy::Schema::Shapes::ShapeRef.new(shape: Cost, location_name: 'UnitCost', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The price per hour to analyze the resources in the service.\n\t\t\tFor more information, \n\t\t\tsee <a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/cost-estimate.html\">Estimate your \n\t\t\tAmazon DevOps Guru costs</a> and \n\t\t\t<a href=\"http://aws.amazon.com/devops-guru/pricing/\">Amazon DevOps Guru pricing</a>.</p>"}))
    ServiceResourceCost.add_member(:cost, Smithy::Schema::Shapes::ShapeRef.new(shape: Cost, location_name: 'Cost', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total estimated monthly cost to analyze the active resources for this\n\t\t\tresource.</p>"}))
    ServiceResourceCost.type = Types::ServiceResourceCost
    ServiceResourceCosts.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceResourceCost)
    SnsChannelConfig.add_member(:topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicArn, location_name: 'TopicArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of an Amazon Simple Notification Service topic. </p>"}))
    SnsChannelConfig.type = Types::SnsChannelConfig
    StackNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StackName)
    StartCostEstimationRequest.add_member(:resource_collection, Smithy::Schema::Shapes::ShapeRef.new(shape: CostEstimationResourceCollectionFilter, location_name: 'ResourceCollection', traits: {"smithy.api#documentation" => "<p>The collection of Amazon Web Services resources used to create a monthly DevOps Guru cost estimate.</p>", "smithy.api#required" => {}}))
    StartCostEstimationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>The idempotency token used to identify each cost estimate request.</p>", "smithy.api#idempotencyToken" => {}}))
    StartCostEstimationRequest.type = Types::StartCostEstimationRequest
    StartCostEstimationResponse.type = Types::StartCostEstimationResponse
    StartTimeRange.add_member(:from_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'FromTime', traits: {"smithy.api#documentation" => "<p> The start time of the time range. </p>"}))
    StartTimeRange.add_member(:to_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ToTime', traits: {"smithy.api#documentation" => "<p> The end time of the time range. </p>"}))
    StartTimeRange.type = Types::StartTimeRange
    TagCollection.add_member(:app_boundary_key, Smithy::Schema::Shapes::ShapeRef.new(shape: AppBoundaryKey, location_name: 'AppBoundaryKey', traits: {"smithy.api#documentation" => "<p>An Amazon Web Services tag <i>key</i> that is used to identify the Amazon Web Services resources that \n      \tDevOps Guru analyzes. All Amazon Web Services resources in your account and Region tagged with this <i>key</i> make \n      up your DevOps Guru application and analysis boundary.</p>\n         <important>\n            <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the\n\t\t\tprefix <code>Devops-guru-</code>. The tag <i>key</i> might be\n\t\t\t<code>DevOps-Guru-deployment-application</code> or\n\t\t\t<code>devops-guru-rds-application</code>. When you create a <i>key</i>, the case of characters in the <i>key</i> can be whatever you choose. After you create a <i>key</i>, it is case-sensitive.\n\t\t\t For example, DevOps Guru works with a\n\t\t\t<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named\n\t\t\t<code>DevOps-Guru-RDS</code>, and these act as two different <i>keys</i>. Possible <i>key</i>/<i>value</i> pairs in your\n\t\t\tapplication might be <code>Devops-Guru-production-application/RDS</code> or\n\t\t\t<code>Devops-Guru-production-application/containers</code>.</p>\n         </important>", "smithy.api#required" => {}}))
    TagCollection.add_member(:tag_values, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValues, location_name: 'TagValues', traits: {"smithy.api#documentation" => "<p>The values in an Amazon Web Services tag collection.</p>\n         <p>The tag's <i>value</i> is an optional field used to associate a string with \n\t\t\t\t\tthe tag <i>key</i> (for example, <code>111122223333</code>, <code>Production</code>, or a team\n   \t\t\t\tname). The <i>key</i> and <i>value</i> are the tag's <i>key</i> pair. \n   \t\t\t\tOmitting the tag <i>value</i> is the same as using an empty\n   \t\t\t\tstring. Like tag <i>keys</i>, tag <i>values</i> are\n   \t\t\t\tcase-sensitive. You can specify a maximum of 256 characters for a tag value.</p>", "smithy.api#required" => {}}))
    TagCollection.type = Types::TagCollection
    TagCollectionFilter.add_member(:app_boundary_key, Smithy::Schema::Shapes::ShapeRef.new(shape: AppBoundaryKey, location_name: 'AppBoundaryKey', traits: {"smithy.api#documentation" => "<p>An Amazon Web Services tag <i>key</i> that is used to identify the Amazon Web Services resources that \n      \tDevOps Guru analyzes. All Amazon Web Services resources in your account and Region tagged with this <i>key</i> make \n      up your DevOps Guru application and analysis boundary.</p>\n         <important>\n            <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the\n\t\t\tprefix <code>Devops-guru-</code>. The tag <i>key</i> might be\n\t\t\t<code>DevOps-Guru-deployment-application</code> or\n\t\t\t<code>devops-guru-rds-application</code>. When you create a <i>key</i>, the case of characters in the <i>key</i> can be whatever you choose. After you create a <i>key</i>, it is case-sensitive.\n\t\t\t For example, DevOps Guru works with a\n\t\t\t<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named\n\t\t\t<code>DevOps-Guru-RDS</code>, and these act as two different <i>keys</i>. Possible <i>key</i>/<i>value</i> pairs in your\n\t\t\tapplication might be <code>Devops-Guru-production-application/RDS</code> or\n\t\t\t<code>Devops-Guru-production-application/containers</code>.</p>\n         </important>", "smithy.api#required" => {}}))
    TagCollectionFilter.add_member(:tag_values, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValues, location_name: 'TagValues', traits: {"smithy.api#documentation" => "<p>The values in an Amazon Web Services tag collection.</p>\n         <p>The tag's <i>value</i> is an optional field used to associate a string with \n\t\t\t\t\tthe tag <i>key</i> (for example, <code>111122223333</code>, <code>Production</code>, or a team\n   \t\t\t\tname). The <i>key</i> and <i>value</i> are the tag's <i>key</i> pair. \n   \t\t\t\tOmitting the tag <i>value</i> is the same as using an empty\n   \t\t\t\tstring. Like tag <i>keys</i>, tag <i>values</i> are\n   \t\t\t\tcase-sensitive. You can specify a maximum of 256 characters for a tag value.</p>", "smithy.api#required" => {}}))
    TagCollectionFilter.type = Types::TagCollectionFilter
    TagCollectionFilters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagCollectionFilter)
    TagCollections.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagCollection)
    TagCostEstimationResourceCollectionFilter.add_member(:app_boundary_key, Smithy::Schema::Shapes::ShapeRef.new(shape: AppBoundaryKey, location_name: 'AppBoundaryKey', traits: {"smithy.api#documentation" => "<p>An Amazon Web Services tag <i>key</i> that is used to identify the Amazon Web Services resources that \n      \tDevOps Guru analyzes. All Amazon Web Services resources in your account and Region tagged with this <i>key</i> make \n      up your DevOps Guru application and analysis boundary.</p>\n         <important>\n            <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the\n\t\t\tprefix <code>Devops-guru-</code>. The tag <i>key</i> might be\n\t\t\t<code>DevOps-Guru-deployment-application</code> or\n\t\t\t<code>devops-guru-rds-application</code>. When you create a <i>key</i>, the case of characters in the <i>key</i> can be whatever you choose. After you create a <i>key</i>, it is case-sensitive.\n\t\t\t For example, DevOps Guru works with a\n\t\t\t<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named\n\t\t\t<code>DevOps-Guru-RDS</code>, and these act as two different <i>keys</i>. Possible <i>key</i>/<i>value</i> pairs in your\n\t\t\tapplication might be <code>Devops-Guru-production-application/RDS</code> or\n\t\t\t<code>Devops-Guru-production-application/containers</code>.</p>\n         </important>", "smithy.api#required" => {}}))
    TagCostEstimationResourceCollectionFilter.add_member(:tag_values, Smithy::Schema::Shapes::ShapeRef.new(shape: CostEstimationTagValues, location_name: 'TagValues', traits: {"smithy.api#documentation" => "<p>The values in an Amazon Web Services tag collection.</p>\n         <p>The tag's <i>value</i> is an optional field used to associate a string with \n\t\t\t\t\tthe tag <i>key</i> (for example, <code>111122223333</code>, <code>Production</code>, or a team\n   \t\t\t\tname). The <i>key</i> and <i>value</i> are the tag's <i>key</i> pair. \n   \t\t\t\tOmitting the tag <i>value</i> is the same as using an empty\n   \t\t\t\tstring. Like tag <i>keys</i>, tag <i>values</i> are\n   \t\t\t\tcase-sensitive. You can specify a maximum of 256 characters for a tag value.</p>", "smithy.api#required" => {}}))
    TagCostEstimationResourceCollectionFilter.type = Types::TagCostEstimationResourceCollectionFilter
    TagCostEstimationResourceCollectionFilters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagCostEstimationResourceCollectionFilter)
    TagHealth.add_member(:app_boundary_key, Smithy::Schema::Shapes::ShapeRef.new(shape: AppBoundaryKey, location_name: 'AppBoundaryKey', traits: {"smithy.api#documentation" => "<p>An Amazon Web Services tag <i>key</i> that is used to identify the Amazon Web Services resources that \n      \tDevOps Guru analyzes. All Amazon Web Services resources in your account and Region tagged with this <i>key</i> make \n      up your DevOps Guru application and analysis boundary.</p>\n         <important>\n            <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the\n\t\t\tprefix <code>Devops-guru-</code>. The tag <i>key</i> might be\n\t\t\t<code>DevOps-Guru-deployment-application</code> or\n\t\t\t<code>devops-guru-rds-application</code>. When you create a <i>key</i>, the case of characters in the <i>key</i> can be whatever you choose. After you create a <i>key</i>, it is case-sensitive.\n\t\t\t For example, DevOps Guru works with a\n\t\t\t<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named\n\t\t\t<code>DevOps-Guru-RDS</code>, and these act as two different <i>keys</i>. Possible <i>key</i>/<i>value</i> pairs in your\n\t\t\tapplication might be <code>Devops-Guru-production-application/RDS</code> or\n\t\t\t<code>Devops-Guru-production-application/containers</code>.</p>\n         </important>"}))
    TagHealth.add_member(:tag_value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'TagValue', traits: {"smithy.api#documentation" => "<p>The value in an Amazon Web Services tag.</p>\n         <p>The tag's <i>value</i> is an optional field used to associate a string with \n\t\t\t\t\tthe tag <i>key</i> (for example, <code>111122223333</code>, <code>Production</code>, or a team\n   \t\t\t\tname). The <i>key</i> and <i>value</i> are the tag's <i>key</i> pair. \n   \t\t\t\tOmitting the tag <i>value</i> is the same as using an empty\n   \t\t\t\tstring. Like tag <i>keys</i>, tag <i>values</i> are\n   \t\t\t\tcase-sensitive. You can specify a maximum of 256 characters for a tag value.</p>"}))
    TagHealth.add_member(:insight, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightHealth, location_name: 'Insight', traits: {"smithy.api#documentation" => "<p>Information about the health of the Amazon Web Services resources in your account that are specified\n\t\t\tby an Amazon Web Services tag, including the number of open proactive, open reactive insights, and the\n\t\t\tMean Time to Recover (MTTR) of closed insights. </p>"}))
    TagHealth.add_member(:analyzed_resource_count, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzedResourceCount, location_name: 'AnalyzedResourceCount', traits: {"smithy.api#documentation" => "<p>\n\t\t\tNumber of resources that DevOps Guru is monitoring in your account that are specified by an Amazon Web Services tag.\n\t\t</p>"}))
    TagHealth.type = Types::TagHealth
    TagHealths.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagHealth)
    TagValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageString, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorQuotaCodeString, location_name: 'QuotaCode', traits: {"smithy.api#documentation" => "<p> The code of the quota that was exceeded, causing the throttling exception. </p>"}))
    ThrottlingException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorServiceCodeString, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p> The code of the service that caused the throttling exception. </p>"}))
    ThrottlingException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: 'RetryAfterSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The number of seconds after which the action that caused the throttling exception can\n\t\t\tbe retried. </p>", "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    TimestampMetricValuePair.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Timestamp', traits: {"smithy.api#documentation" => "<p>A <code>Timestamp</code> that specifies the time the event occurred. </p>"}))
    TimestampMetricValuePair.add_member(:metric_value, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricValue, location_name: 'MetricValue', traits: {"smithy.api#documentation" => "<p>Value of the anomalous metric data point at respective Timestamp.</p>"}))
    TimestampMetricValuePair.type = Types::TimestampMetricValuePair
    TimestampMetricValuePairList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampMetricValuePair)
    UpdateCloudFormationCollectionFilter.add_member(:stack_names, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStackNames, location_name: 'StackNames', traits: {"smithy.api#documentation" => "<p> An array of the names of the Amazon Web Services CloudFormation stacks to update. You can specify up to 500 Amazon Web Services CloudFormation stacks.\n\t\t</p>"}))
    UpdateCloudFormationCollectionFilter.type = Types::UpdateCloudFormationCollectionFilter
    UpdateEventSourcesConfigRequest.add_member(:event_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSourcesConfig, location_name: 'EventSources', traits: {"smithy.api#documentation" => "<p>Configuration information about the integration of DevOps Guru as the Consumer via\n\t\t\tEventBridge with another AWS Service.</p>"}))
    UpdateEventSourcesConfigRequest.type = Types::UpdateEventSourcesConfigRequest
    UpdateEventSourcesConfigResponse.type = Types::UpdateEventSourcesConfigResponse
    UpdateResourceCollectionAction.add_member(:add, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADD', traits: {"smithy.api#enumValue" => "ADD"}))
    UpdateResourceCollectionAction.add_member(:remove, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOVE', traits: {"smithy.api#enumValue" => "REMOVE"}))
    UpdateResourceCollectionFilter.add_member(:cloud_formation, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCloudFormationCollectionFilter, location_name: 'CloudFormation', traits: {"smithy.api#documentation" => "<p> A collection of Amazon Web Services CloudFormation stacks. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>"}))
    UpdateResourceCollectionFilter.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTagCollectionFilters, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The updated Amazon Web Services tags used to filter the resources in the resource collection.</p>\n         <p>Tags help you identify and organize your Amazon Web Services resources. Many Amazon Web Services services support\n   \t\ttagging, so you can assign the same tag to resources from different services to indicate\n   \t\tthat the resources are related. For example, you can assign the same tag to an Amazon DynamoDB\n   \t\ttable resource that you assign to an Lambda function. For more information about\n   \t\tusing tags, see the <a href=\"https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/tagging-best-practices.html\">Tagging\n   \t\t\tbest practices</a> whitepaper. </p>\n         <p>Each Amazon Web Services tag has two parts. </p>\n         <ul>\n            <li>\n               <p>A tag <i>key</i> (for example, <code>CostCenter</code>,\n   \t\t\t\t<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag\n   \t\t\t\t<i>keys</i> are case-sensitive.</p>\n            </li>\n            <li>\n               <p>An optional field known as a tag <i>value</i> (for example,\n   \t\t\t\t<code>111122223333</code>, <code>Production</code>, or a team\n   \t\t\t\tname). Omitting the tag <i>value</i> is the same as using an empty\n   \t\t\t\tstring. Like tag <i>keys</i>, tag <i>values</i> are\n   \t\t\t\tcase-sensitive.</p>\n            </li>\n         </ul>\n         <p>Together these are known as <i>key</i>-<i>value</i> pairs.</p>\n         <important>\n            <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the\n\t\t\tprefix <code>Devops-guru-</code>. The tag <i>key</i> might be\n\t\t\t<code>DevOps-Guru-deployment-application</code> or\n\t\t\t<code>devops-guru-rds-application</code>. When you create a <i>key</i>, the case of characters in the <i>key</i> can be whatever you choose. After you create a <i>key</i>, it is case-sensitive.\n\t\t\t For example, DevOps Guru works with a\n\t\t\t<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named\n\t\t\t<code>DevOps-Guru-RDS</code>, and these act as two different <i>keys</i>. Possible <i>key</i>/<i>value</i> pairs in your\n\t\t\tapplication might be <code>Devops-Guru-production-application/RDS</code> or\n\t\t\t<code>Devops-Guru-production-application/containers</code>.</p>\n         </important>"}))
    UpdateResourceCollectionFilter.type = Types::UpdateResourceCollectionFilter
    UpdateResourceCollectionRequest.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResourceCollectionAction, location_name: 'Action', traits: {"smithy.api#documentation" => "<p> Specifies if the resource collection in the request is added or deleted to the\n\t\t\tresource collection. </p>", "smithy.api#required" => {}}))
    UpdateResourceCollectionRequest.add_member(:resource_collection, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResourceCollectionFilter, location_name: 'ResourceCollection', traits: {"smithy.api#required" => {}}))
    UpdateResourceCollectionRequest.type = Types::UpdateResourceCollectionRequest
    UpdateResourceCollectionResponse.type = Types::UpdateResourceCollectionResponse
    UpdateServiceIntegrationConfig.add_member(:ops_center, Smithy::Schema::Shapes::ShapeRef.new(shape: OpsCenterIntegrationConfig, location_name: 'OpsCenter'))
    UpdateServiceIntegrationConfig.add_member(:logs_anomaly_detection, Smithy::Schema::Shapes::ShapeRef.new(shape: LogsAnomalyDetectionIntegrationConfig, location_name: 'LogsAnomalyDetection', traits: {"smithy.api#documentation" => "<p>\n\t\t\tInformation about whether DevOps Guru is configured to perform log anomaly detection on Amazon CloudWatch log groups.\n\t\t</p>"}))
    UpdateServiceIntegrationConfig.add_member(:kms_server_side_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSServerSideEncryptionIntegrationConfig, location_name: 'KMSServerSideEncryption', traits: {"smithy.api#documentation" => "<p>\n\t\t\tInformation about whether DevOps Guru is configured to encrypt server-side data using KMS. \n\t\t</p>"}))
    UpdateServiceIntegrationConfig.type = Types::UpdateServiceIntegrationConfig
    UpdateServiceIntegrationRequest.add_member(:service_integration, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceIntegrationConfig, location_name: 'ServiceIntegration', traits: {"smithy.api#documentation" => "<p> An <code>IntegratedServiceConfig</code> object used to specify the integrated service\n\t\t\tyou want to update, and whether you want to update it to enabled or disabled. </p>", "smithy.api#required" => {}}))
    UpdateServiceIntegrationRequest.type = Types::UpdateServiceIntegrationRequest
    UpdateServiceIntegrationResponse.type = Types::UpdateServiceIntegrationResponse
    UpdateStackNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StackName)
    UpdateTagCollectionFilter.add_member(:app_boundary_key, Smithy::Schema::Shapes::ShapeRef.new(shape: AppBoundaryKey, location_name: 'AppBoundaryKey', traits: {"smithy.api#documentation" => "<p>An Amazon Web Services tag <i>key</i> that is used to identify the Amazon Web Services resources that \n      \tDevOps Guru analyzes. All Amazon Web Services resources in your account and Region tagged with this <i>key</i> make \n      up your DevOps Guru application and analysis boundary.</p>\n         <important>\n            <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the\n\t\t\tprefix <code>Devops-guru-</code>. The tag <i>key</i> might be\n\t\t\t<code>DevOps-Guru-deployment-application</code> or\n\t\t\t<code>devops-guru-rds-application</code>. When you create a <i>key</i>, the case of characters in the <i>key</i> can be whatever you choose. After you create a <i>key</i>, it is case-sensitive.\n\t\t\t For example, DevOps Guru works with a\n\t\t\t<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named\n\t\t\t<code>DevOps-Guru-RDS</code>, and these act as two different <i>keys</i>. Possible <i>key</i>/<i>value</i> pairs in your\n\t\t\tapplication might be <code>Devops-Guru-production-application/RDS</code> or\n\t\t\t<code>Devops-Guru-production-application/containers</code>.</p>\n         </important>", "smithy.api#required" => {}}))
    UpdateTagCollectionFilter.add_member(:tag_values, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTagValues, location_name: 'TagValues', traits: {"smithy.api#documentation" => "<p>The values in an Amazon Web Services tag collection.</p>\n         <p>The tag's <i>value</i> is an optional field used to associate a string with \n\t\t\t\t\tthe tag <i>key</i> (for example, <code>111122223333</code>, <code>Production</code>, or a team\n   \t\t\t\tname). The <i>key</i> and <i>value</i> are the tag's <i>key</i> pair. \n   \t\t\t\tOmitting the tag <i>value</i> is the same as using an empty\n   \t\t\t\tstring. Like tag <i>keys</i>, tag <i>values</i> are\n   \t\t\t\tcase-sensitive. You can specify a maximum of 256 characters for a tag value.</p>", "smithy.api#required" => {}}))
    UpdateTagCollectionFilter.type = Types::UpdateTagCollectionFilter
    UpdateTagCollectionFilters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTagCollectionFilter)
    UpdateTagValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p> A message that describes the validation exception. </p>", "smithy.api#required" => {}}))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p> The reason the validation exception was thrown. </p>"}))
    ValidationException.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFields, location_name: 'Fields'))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorNameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p> The name of the field. </p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p> The message associated with the validation exception with information to help\n\t\t\tdetermine its cause. </p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFields.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_OPERATION', traits: {"smithy.api#enumValue" => "UNKNOWN_OPERATION"}))
    ValidationExceptionReason.add_member(:cannot_parse, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_PARSE', traits: {"smithy.api#enumValue" => "CANNOT_PARSE"}))
    ValidationExceptionReason.add_member(:field_validation_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "FIELD_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:other, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "OTHER"}))
    ValidationExceptionReason.add_member(:invalid_parameter_combination, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PARAMETER_COMBINATION', traits: {"smithy.api#enumValue" => "INVALID_PARAMETER_COMBINATION"}))
    ValidationExceptionReason.add_member(:parameter_inconsistent_with_service_state, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARAMETER_INCONSISTENT_WITH_SERVICE_STATE', traits: {"smithy.api#enumValue" => "PARAMETER_INCONSISTENT_WITH_SERVICE_STATE"}))

    CapstoneControlPlaneService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.devopsguru#CapstoneControlPlaneService"
      service.name = "CapstoneControlPlaneService"
      service.version = "2020-12-01"
      service.traits = {"aws.api#service" => {"sdkId" => "DevOps Guru", "arnNamespace" => "devops-guru", "cloudFormationName" => "DevOpsGuru", "cloudTrailEventSource" => "devopsguru.amazonaws.com", "endpointPrefix" => "devops-guru"}, "aws.auth#sigv4" => {"name" => "devops-guru"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon DevOps Guru"}
      service.add_operation(:add_notification_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#AddNotificationChannel"
        operation.name = "AddNotificationChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddNotificationChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddNotificationChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/channels", "code" => 200}}
      end)
      service.add_operation(:delete_insight, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#DeleteInsight"
        operation.name = "DeleteInsight"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInsightRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInsightResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/insights/{Id}", "code" => 200}}
      end)
      service.add_operation(:describe_account_health, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#DescribeAccountHealth"
        operation.name = "DescribeAccountHealth"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountHealthRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountHealthResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accounts/health", "code" => 200}}
      end)
      service.add_operation(:describe_account_overview, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#DescribeAccountOverview"
        operation.name = "DescribeAccountOverview"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountOverviewRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountOverviewResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/overview", "code" => 200}}
      end)
      service.add_operation(:describe_anomaly, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#DescribeAnomaly"
        operation.name = "DescribeAnomaly"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAnomalyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAnomalyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/anomalies/{Id}", "code" => 200}}
      end)
      service.add_operation(:describe_event_sources_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#DescribeEventSourcesConfig"
        operation.name = "DescribeEventSourcesConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventSourcesConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventSourcesConfigResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/event-sources", "code" => 200}}
      end)
      service.add_operation(:describe_feedback, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#DescribeFeedback"
        operation.name = "DescribeFeedback"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFeedbackRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFeedbackResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/feedback", "code" => 200}}
      end)
      service.add_operation(:describe_insight, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#DescribeInsight"
        operation.name = "DescribeInsight"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInsightRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInsightResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/insights/{Id}", "code" => 200}}
      end)
      service.add_operation(:describe_organization_health, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#DescribeOrganizationHealth"
        operation.name = "DescribeOrganizationHealth"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOrganizationHealthRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOrganizationHealthResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/organization/health", "code" => 200}}
      end)
      service.add_operation(:describe_organization_overview, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#DescribeOrganizationOverview"
        operation.name = "DescribeOrganizationOverview"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOrganizationOverviewRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOrganizationOverviewResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/organization/overview", "code" => 200}}
      end)
      service.add_operation(:describe_organization_resource_collection_health, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#DescribeOrganizationResourceCollectionHealth"
        operation.name = "DescribeOrganizationResourceCollectionHealth"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOrganizationResourceCollectionHealthRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOrganizationResourceCollectionHealthResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/organization/health/resource-collection", "code" => 200}}
        operation[:paginator] = Paginators::DescribeOrganizationResourceCollectionHealth.new
      end)
      service.add_operation(:describe_resource_collection_health, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#DescribeResourceCollectionHealth"
        operation.name = "DescribeResourceCollectionHealth"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeResourceCollectionHealthRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeResourceCollectionHealthResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accounts/health/resource-collection/{ResourceCollectionType}", "code" => 200}}
        operation[:paginator] = Paginators::DescribeResourceCollectionHealth.new
      end)
      service.add_operation(:describe_service_integration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#DescribeServiceIntegration"
        operation.name = "DescribeServiceIntegration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServiceIntegrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServiceIntegrationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/service-integrations", "code" => 200}}
      end)
      service.add_operation(:get_cost_estimation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#GetCostEstimation"
        operation.name = "GetCostEstimation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCostEstimationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCostEstimationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/cost-estimation", "code" => 200}}
        operation[:paginator] = Paginators::GetCostEstimation.new
      end)
      service.add_operation(:get_resource_collection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#GetResourceCollection"
        operation.name = "GetResourceCollection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceCollectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceCollectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/resource-collections/{ResourceCollectionType}", "code" => 200}}
        operation[:paginator] = Paginators::GetResourceCollection.new
      end)
      service.add_operation(:list_anomalies_for_insight, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#ListAnomaliesForInsight"
        operation.name = "ListAnomaliesForInsight"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnomaliesForInsightRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnomaliesForInsightResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/anomalies/insight/{InsightId}", "code" => 200}}
        operation[:paginator] = Paginators::ListAnomaliesForInsight.new
      end)
      service.add_operation(:list_anomalous_log_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#ListAnomalousLogGroups"
        operation.name = "ListAnomalousLogGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnomalousLogGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnomalousLogGroupsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-log-anomalies", "code" => 200}}
        operation[:paginator] = Paginators::ListAnomalousLogGroups.new
      end)
      service.add_operation(:list_events, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#ListEvents"
        operation.name = "ListEvents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/events", "code" => 200}}
        operation[:paginator] = Paginators::ListEvents.new
      end)
      service.add_operation(:list_insights, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#ListInsights"
        operation.name = "ListInsights"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInsightsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInsightsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/insights", "code" => 200}}
        operation[:paginator] = Paginators::ListInsights.new
      end)
      service.add_operation(:list_monitored_resources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#ListMonitoredResources"
        operation.name = "ListMonitoredResources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMonitoredResourcesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMonitoredResourcesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/monitoredResources", "code" => 200}}
        operation[:paginator] = Paginators::ListMonitoredResources.new
      end)
      service.add_operation(:list_notification_channels, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#ListNotificationChannels"
        operation.name = "ListNotificationChannels"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotificationChannelsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotificationChannelsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/channels", "code" => 200}}
        operation[:paginator] = Paginators::ListNotificationChannels.new
      end)
      service.add_operation(:list_organization_insights, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#ListOrganizationInsights"
        operation.name = "ListOrganizationInsights"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOrganizationInsightsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOrganizationInsightsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/organization/insights", "code" => 200}}
        operation[:paginator] = Paginators::ListOrganizationInsights.new
      end)
      service.add_operation(:list_recommendations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#ListRecommendations"
        operation.name = "ListRecommendations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecommendationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecommendationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/recommendations", "code" => 200}}
        operation[:paginator] = Paginators::ListRecommendations.new
      end)
      service.add_operation(:put_feedback, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#PutFeedback"
        operation.name = "PutFeedback"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutFeedbackRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutFeedbackResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/feedback", "code" => 200}}
      end)
      service.add_operation(:remove_notification_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#RemoveNotificationChannel"
        operation.name = "RemoveNotificationChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveNotificationChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveNotificationChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/channels/{Id}", "code" => 200}}
      end)
      service.add_operation(:search_insights, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#SearchInsights"
        operation.name = "SearchInsights"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchInsightsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchInsightsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/insights/search", "code" => 200}}
        operation[:paginator] = Paginators::SearchInsights.new
      end)
      service.add_operation(:search_organization_insights, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#SearchOrganizationInsights"
        operation.name = "SearchOrganizationInsights"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchOrganizationInsightsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchOrganizationInsightsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/organization/insights/search", "code" => 200}}
        operation[:paginator] = Paginators::SearchOrganizationInsights.new
      end)
      service.add_operation(:start_cost_estimation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#StartCostEstimation"
        operation.name = "StartCostEstimation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartCostEstimationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartCostEstimationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/cost-estimation", "code" => 200}}
      end)
      service.add_operation(:update_event_sources_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#UpdateEventSourcesConfig"
        operation.name = "UpdateEventSourcesConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEventSourcesConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEventSourcesConfigResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/event-sources", "code" => 200}}
      end)
      service.add_operation(:update_resource_collection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#UpdateResourceCollection"
        operation.name = "UpdateResourceCollection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResourceCollectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResourceCollectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/resource-collections", "code" => 200}}
      end)
      service.add_operation(:update_service_integration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsguru#UpdateServiceIntegration"
        operation.name = "UpdateServiceIntegration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceIntegrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceIntegrationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/service-integrations", "code" => 200}}
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
