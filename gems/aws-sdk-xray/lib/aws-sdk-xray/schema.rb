# frozen_string_literal: true

# This is generated code!

module Aws::XRay
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Alias = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#Alias', name: 'Alias')
    AliasList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#AliasList', name: 'AliasList')
    AliasNames = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#AliasNames', name: 'AliasNames')
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    AnnotationKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#AnnotationKey', name: 'AnnotationKey')
    AnnotationValue = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.xray#AnnotationValue', name: 'AnnotationValue')
    Annotations = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.xray#Annotations', name: 'Annotations')
    AnomalousService = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#AnomalousService', name: 'AnomalousService')
    AnomalousServiceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#AnomalousServiceList', name: 'AnomalousServiceList')
    AttributeKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#AttributeKey', name: 'AttributeKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    AttributeMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.xray#AttributeMap', name: 'AttributeMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    AttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#AttributeValue', name: 'AttributeValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    AvailabilityZoneDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#AvailabilityZoneDetail', name: 'AvailabilityZoneDetail')
    BackendConnectionErrors = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#BackendConnectionErrors', name: 'BackendConnectionErrors')
    BatchGetTracesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#BatchGetTracesRequest', name: 'BatchGetTracesRequest')
    BatchGetTracesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#BatchGetTracesResult', name: 'BatchGetTracesResult')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.xray#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    BorrowCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.xray#BorrowCount', name: 'BorrowCount', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    CancelTraceRetrievalRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#CancelTraceRetrievalRequest', name: 'CancelTraceRetrievalRequest')
    CancelTraceRetrievalResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#CancelTraceRetrievalResult', name: 'CancelTraceRetrievalResult')
    ClientID = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#ClientID', name: 'ClientID', traits: {"smithy.api#length" => {"min" => 24, "max" => 24}})
    CreateGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#CreateGroupRequest', name: 'CreateGroupRequest')
    CreateGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#CreateGroupResult', name: 'CreateGroupResult')
    CreateSamplingRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#CreateSamplingRuleRequest', name: 'CreateSamplingRuleRequest')
    CreateSamplingRuleResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#CreateSamplingRuleResult', name: 'CreateSamplingRuleResult')
    DeleteGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#DeleteGroupRequest', name: 'DeleteGroupRequest')
    DeleteGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#DeleteGroupResult', name: 'DeleteGroupResult')
    DeleteResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#DeleteResourcePolicyRequest', name: 'DeleteResourcePolicyRequest')
    DeleteResourcePolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#DeleteResourcePolicyResult', name: 'DeleteResourcePolicyResult')
    DeleteSamplingRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#DeleteSamplingRuleRequest', name: 'DeleteSamplingRuleRequest')
    DeleteSamplingRuleResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#DeleteSamplingRuleResult', name: 'DeleteSamplingRuleResult')
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.xray#Double', name: 'Double', traits: {"smithy.api#default" => 0})
    EC2InstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#EC2InstanceId', name: 'EC2InstanceId', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    Edge = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#Edge', name: 'Edge')
    EdgeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#EdgeList', name: 'EdgeList')
    EdgeStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#EdgeStatistics', name: 'EdgeStatistics')
    EncryptionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#EncryptionConfig', name: 'EncryptionConfig')
    EncryptionKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#EncryptionKeyId', name: 'EncryptionKeyId', traits: {"smithy.api#length" => {"min" => 1, "max" => 3000}})
    EncryptionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.xray#EncryptionStatus', name: 'EncryptionStatus')
    EncryptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.xray#EncryptionType', name: 'EncryptionType')
    EntitySelectorExpression = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#EntitySelectorExpression', name: 'EntitySelectorExpression', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#ErrorMessage', name: 'ErrorMessage')
    ErrorRootCause = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ErrorRootCause', name: 'ErrorRootCause')
    ErrorRootCauseEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ErrorRootCauseEntity', name: 'ErrorRootCauseEntity')
    ErrorRootCauseEntityPath = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#ErrorRootCauseEntityPath', name: 'ErrorRootCauseEntityPath')
    ErrorRootCauseService = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ErrorRootCauseService', name: 'ErrorRootCauseService')
    ErrorRootCauseServices = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#ErrorRootCauseServices', name: 'ErrorRootCauseServices')
    ErrorRootCauses = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#ErrorRootCauses', name: 'ErrorRootCauses')
    ErrorStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ErrorStatistics', name: 'ErrorStatistics')
    EventSummaryText = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#EventSummaryText', name: 'EventSummaryText')
    FaultRootCause = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#FaultRootCause', name: 'FaultRootCause')
    FaultRootCauseEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#FaultRootCauseEntity', name: 'FaultRootCauseEntity')
    FaultRootCauseEntityPath = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#FaultRootCauseEntityPath', name: 'FaultRootCauseEntityPath')
    FaultRootCauseService = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#FaultRootCauseService', name: 'FaultRootCauseService')
    FaultRootCauseServices = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#FaultRootCauseServices', name: 'FaultRootCauseServices')
    FaultRootCauses = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#FaultRootCauses', name: 'FaultRootCauses')
    FaultStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#FaultStatistics', name: 'FaultStatistics')
    FilterExpression = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#FilterExpression', name: 'FilterExpression')
    FixedRate = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.xray#FixedRate', name: 'FixedRate', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1}})
    ForecastStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ForecastStatistics', name: 'ForecastStatistics')
    GetEncryptionConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetEncryptionConfigRequest', name: 'GetEncryptionConfigRequest')
    GetEncryptionConfigResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetEncryptionConfigResult', name: 'GetEncryptionConfigResult')
    GetGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetGroupRequest', name: 'GetGroupRequest')
    GetGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetGroupResult', name: 'GetGroupResult')
    GetGroupsNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#GetGroupsNextToken', name: 'GetGroupsNextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    GetGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetGroupsRequest', name: 'GetGroupsRequest')
    GetGroupsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetGroupsResult', name: 'GetGroupsResult')
    GetIndexingRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetIndexingRulesRequest', name: 'GetIndexingRulesRequest')
    GetIndexingRulesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetIndexingRulesResult', name: 'GetIndexingRulesResult')
    GetInsightEventsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.xray#GetInsightEventsMaxResults', name: 'GetInsightEventsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    GetInsightEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetInsightEventsRequest', name: 'GetInsightEventsRequest')
    GetInsightEventsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetInsightEventsResult', name: 'GetInsightEventsResult')
    GetInsightImpactGraphRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetInsightImpactGraphRequest', name: 'GetInsightImpactGraphRequest')
    GetInsightImpactGraphResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetInsightImpactGraphResult', name: 'GetInsightImpactGraphResult')
    GetInsightRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetInsightRequest', name: 'GetInsightRequest')
    GetInsightResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetInsightResult', name: 'GetInsightResult')
    GetInsightSummariesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.xray#GetInsightSummariesMaxResults', name: 'GetInsightSummariesMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    GetInsightSummariesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetInsightSummariesRequest', name: 'GetInsightSummariesRequest')
    GetInsightSummariesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetInsightSummariesResult', name: 'GetInsightSummariesResult')
    GetRetrievedTracesGraphRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetRetrievedTracesGraphRequest', name: 'GetRetrievedTracesGraphRequest')
    GetRetrievedTracesGraphResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetRetrievedTracesGraphResult', name: 'GetRetrievedTracesGraphResult')
    GetSamplingRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetSamplingRulesRequest', name: 'GetSamplingRulesRequest')
    GetSamplingRulesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetSamplingRulesResult', name: 'GetSamplingRulesResult')
    GetSamplingStatisticSummariesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetSamplingStatisticSummariesRequest', name: 'GetSamplingStatisticSummariesRequest')
    GetSamplingStatisticSummariesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetSamplingStatisticSummariesResult', name: 'GetSamplingStatisticSummariesResult')
    GetSamplingTargetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetSamplingTargetsRequest', name: 'GetSamplingTargetsRequest')
    GetSamplingTargetsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetSamplingTargetsResult', name: 'GetSamplingTargetsResult')
    GetServiceGraphRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetServiceGraphRequest', name: 'GetServiceGraphRequest')
    GetServiceGraphResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetServiceGraphResult', name: 'GetServiceGraphResult')
    GetTimeSeriesServiceStatisticsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetTimeSeriesServiceStatisticsRequest', name: 'GetTimeSeriesServiceStatisticsRequest')
    GetTimeSeriesServiceStatisticsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetTimeSeriesServiceStatisticsResult', name: 'GetTimeSeriesServiceStatisticsResult')
    GetTraceGraphRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetTraceGraphRequest', name: 'GetTraceGraphRequest')
    GetTraceGraphResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetTraceGraphResult', name: 'GetTraceGraphResult')
    GetTraceSegmentDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetTraceSegmentDestinationRequest', name: 'GetTraceSegmentDestinationRequest')
    GetTraceSegmentDestinationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetTraceSegmentDestinationResult', name: 'GetTraceSegmentDestinationResult')
    GetTraceSummariesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetTraceSummariesRequest', name: 'GetTraceSummariesRequest')
    GetTraceSummariesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetTraceSummariesResult', name: 'GetTraceSummariesResult')
    GraphLink = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GraphLink', name: 'GraphLink')
    Group = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#Group', name: 'Group')
    GroupARN = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#GroupARN', name: 'GroupARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 400}})
    GroupName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#GroupName', name: 'GroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    GroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GroupSummary', name: 'GroupSummary')
    GroupSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#GroupSummaryList', name: 'GroupSummaryList')
    HTTPMethod = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#HTTPMethod', name: 'HTTPMethod', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    Histogram = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#Histogram', name: 'Histogram')
    HistogramEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#HistogramEntry', name: 'HistogramEntry')
    Host = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#Host', name: 'Host', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    Hostname = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#Hostname', name: 'Hostname', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    Http = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#Http', name: 'Http')
    IndexingRule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#IndexingRule', name: 'IndexingRule')
    IndexingRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#IndexingRuleList', name: 'IndexingRuleList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    IndexingRuleValue = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.xray#IndexingRuleValue', name: 'IndexingRuleValue')
    IndexingRuleValueUpdate = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.xray#IndexingRuleValueUpdate', name: 'IndexingRuleValueUpdate')
    Insight = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#Insight', name: 'Insight')
    InsightCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.xray#InsightCategory', name: 'InsightCategory')
    InsightCategoryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#InsightCategoryList', name: 'InsightCategoryList')
    InsightEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#InsightEvent', name: 'InsightEvent')
    InsightEventList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#InsightEventList', name: 'InsightEventList')
    InsightId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#InsightId', name: 'InsightId', traits: {"smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$"})
    InsightImpactGraphEdge = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#InsightImpactGraphEdge', name: 'InsightImpactGraphEdge')
    InsightImpactGraphEdgeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#InsightImpactGraphEdgeList', name: 'InsightImpactGraphEdgeList')
    InsightImpactGraphService = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#InsightImpactGraphService', name: 'InsightImpactGraphService')
    InsightImpactGraphServiceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#InsightImpactGraphServiceList', name: 'InsightImpactGraphServiceList')
    InsightState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.xray#InsightState', name: 'InsightState')
    InsightStateList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#InsightStateList', name: 'InsightStateList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    InsightSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#InsightSummary', name: 'InsightSummary')
    InsightSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#InsightSummaryList', name: 'InsightSummaryList')
    InsightSummaryText = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#InsightSummaryText', name: 'InsightSummaryText')
    InsightsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#InsightsConfiguration', name: 'InsightsConfiguration')
    InstanceIdDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#InstanceIdDetail', name: 'InstanceIdDetail')
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.xray#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    InvalidPolicyRevisionIdException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#InvalidPolicyRevisionIdException', name: 'InvalidPolicyRevisionIdException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client"})
    LinksList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#LinksList', name: 'LinksList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ListResourcePoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ListResourcePoliciesRequest', name: 'ListResourcePoliciesRequest')
    ListResourcePoliciesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ListResourcePoliciesResult', name: 'ListResourcePoliciesResult')
    ListRetrievedTracesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ListRetrievedTracesRequest', name: 'ListRetrievedTracesRequest')
    ListRetrievedTracesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ListRetrievedTracesResult', name: 'ListRetrievedTracesResult')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    LockoutPreventionException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#LockoutPreventionException', name: 'LockoutPreventionException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MalformedPolicyDocumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#MalformedPolicyDocumentException', name: 'MalformedPolicyDocumentException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NullableBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.xray#NullableBoolean', name: 'NullableBoolean')
    NullableDouble = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.xray#NullableDouble', name: 'NullableDouble')
    NullableInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.xray#NullableInteger', name: 'NullableInteger')
    NullableLong = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.xray#NullableLong', name: 'NullableLong')
    PolicyCountLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#PolicyCountLimitExceededException', name: 'PolicyCountLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#PolicyDocument', name: 'PolicyDocument')
    PolicyName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#PolicyName', name: 'PolicyName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w+=,.@-]+$"})
    PolicyRevisionId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#PolicyRevisionId', name: 'PolicyRevisionId')
    PolicySizeLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#PolicySizeLimitExceededException', name: 'PolicySizeLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Priority = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.xray#Priority', name: 'Priority', traits: {"smithy.api#range" => {"min" => 1, "max" => 9999}})
    ProbabilisticRuleValue = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ProbabilisticRuleValue', name: 'ProbabilisticRuleValue')
    ProbabilisticRuleValueUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ProbabilisticRuleValueUpdate', name: 'ProbabilisticRuleValueUpdate')
    PutEncryptionConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#PutEncryptionConfigRequest', name: 'PutEncryptionConfigRequest')
    PutEncryptionConfigResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#PutEncryptionConfigResult', name: 'PutEncryptionConfigResult')
    PutResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#PutResourcePolicyRequest', name: 'PutResourcePolicyRequest')
    PutResourcePolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#PutResourcePolicyResult', name: 'PutResourcePolicyResult')
    PutTelemetryRecordsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#PutTelemetryRecordsRequest', name: 'PutTelemetryRecordsRequest')
    PutTelemetryRecordsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#PutTelemetryRecordsResult', name: 'PutTelemetryRecordsResult')
    PutTraceSegmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#PutTraceSegmentsRequest', name: 'PutTraceSegmentsRequest')
    PutTraceSegmentsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#PutTraceSegmentsResult', name: 'PutTraceSegmentsResult')
    RequestCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.xray#RequestCount', name: 'RequestCount', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    RequestImpactStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#RequestImpactStatistics', name: 'RequestImpactStatistics')
    ReservoirSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.xray#ReservoirSize', name: 'ReservoirSize', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    ResourceARN = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#ResourceARN', name: 'ResourceARN', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    ResourceARNDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ResourceARNDetail', name: 'ResourceARNDetail')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ResourcePolicy', name: 'ResourcePolicy')
    ResourcePolicyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#ResourcePolicyList', name: 'ResourcePolicyList')
    ResourcePolicyNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#ResourcePolicyNextToken', name: 'ResourcePolicyNextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ResponseTimeRootCause = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ResponseTimeRootCause', name: 'ResponseTimeRootCause')
    ResponseTimeRootCauseEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ResponseTimeRootCauseEntity', name: 'ResponseTimeRootCauseEntity')
    ResponseTimeRootCauseEntityPath = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#ResponseTimeRootCauseEntityPath', name: 'ResponseTimeRootCauseEntityPath')
    ResponseTimeRootCauseService = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ResponseTimeRootCauseService', name: 'ResponseTimeRootCauseService')
    ResponseTimeRootCauseServices = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#ResponseTimeRootCauseServices', name: 'ResponseTimeRootCauseServices')
    ResponseTimeRootCauses = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#ResponseTimeRootCauses', name: 'ResponseTimeRootCauses')
    RetrievalStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.xray#RetrievalStatus', name: 'RetrievalStatus')
    RetrievalToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#RetrievalToken', name: 'RetrievalToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 1020}})
    RetrievedService = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#RetrievedService', name: 'RetrievedService')
    RetrievedServicesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#RetrievedServicesList', name: 'RetrievedServicesList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    RetrievedTrace = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#RetrievedTrace', name: 'RetrievedTrace')
    RootCauseException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#RootCauseException', name: 'RootCauseException')
    RootCauseExceptions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#RootCauseExceptions', name: 'RootCauseExceptions')
    RuleLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#RuleLimitExceededException', name: 'RuleLimitExceededException', traits: {"smithy.api#error" => "client"})
    RuleName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#RuleName', name: 'RuleName', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    SampledCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.xray#SampledCount', name: 'SampledCount', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    SamplingRule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#SamplingRule', name: 'SamplingRule')
    SamplingRuleRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#SamplingRuleRecord', name: 'SamplingRuleRecord')
    SamplingRuleRecordList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#SamplingRuleRecordList', name: 'SamplingRuleRecordList')
    SamplingRuleUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#SamplingRuleUpdate', name: 'SamplingRuleUpdate')
    SamplingStatisticSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#SamplingStatisticSummary', name: 'SamplingStatisticSummary')
    SamplingStatisticSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#SamplingStatisticSummaryList', name: 'SamplingStatisticSummaryList')
    SamplingStatisticsDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#SamplingStatisticsDocument', name: 'SamplingStatisticsDocument')
    SamplingStatisticsDocumentList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#SamplingStatisticsDocumentList', name: 'SamplingStatisticsDocumentList', traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    SamplingStrategy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#SamplingStrategy', name: 'SamplingStrategy')
    SamplingStrategyName = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.xray#SamplingStrategyName', name: 'SamplingStrategyName')
    SamplingTargetDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#SamplingTargetDocument', name: 'SamplingTargetDocument')
    SamplingTargetDocumentList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#SamplingTargetDocumentList', name: 'SamplingTargetDocumentList')
    Segment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#Segment', name: 'Segment')
    SegmentDocument = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#SegmentDocument', name: 'SegmentDocument', traits: {"smithy.api#length" => {"min" => 1}})
    SegmentId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#SegmentId', name: 'SegmentId')
    SegmentList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#SegmentList', name: 'SegmentList')
    Service = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#Service', name: 'Service')
    ServiceId = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ServiceId', name: 'ServiceId')
    ServiceIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#ServiceIds', name: 'ServiceIds')
    ServiceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#ServiceList', name: 'ServiceList')
    ServiceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#ServiceName', name: 'ServiceName', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    ServiceNames = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#ServiceNames', name: 'ServiceNames')
    ServiceStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ServiceStatistics', name: 'ServiceStatistics')
    ServiceType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#ServiceType', name: 'ServiceType', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    Span = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#Span', name: 'Span')
    SpanDocument = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#SpanDocument', name: 'SpanDocument', traits: {"smithy.api#length" => {"min" => 0, "max" => 204800}})
    SpanId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#SpanId', name: 'SpanId', traits: {"smithy.api#length" => {"min" => 1, "max" => 16}})
    SpanList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#SpanList', name: 'SpanList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    StartTraceRetrievalRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#StartTraceRetrievalRequest', name: 'StartTraceRetrievalRequest')
    StartTraceRetrievalResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#StartTraceRetrievalResult', name: 'StartTraceRetrievalResult')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#String', name: 'String')
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TelemetryRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#TelemetryRecord', name: 'TelemetryRecord')
    TelemetryRecordList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#TelemetryRecordList', name: 'TelemetryRecordList')
    ThrottledException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ThrottledException', name: 'ThrottledException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimeRangeType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.xray#TimeRangeType', name: 'TimeRangeType')
    TimeSeriesServiceStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#TimeSeriesServiceStatistics', name: 'TimeSeriesServiceStatistics')
    TimeSeriesServiceStatisticsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#TimeSeriesServiceStatisticsList', name: 'TimeSeriesServiceStatisticsList')
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.xray#Timestamp', name: 'Timestamp')
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#Token', name: 'Token', traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Trace = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#Trace', name: 'Trace')
    TraceAvailabilityZones = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#TraceAvailabilityZones', name: 'TraceAvailabilityZones')
    TraceFormatType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.xray#TraceFormatType', name: 'TraceFormatType')
    TraceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#TraceId', name: 'TraceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 35}})
    TraceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#TraceIdList', name: 'TraceIdList')
    TraceIdListForRetrieval = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#TraceIdListForRetrieval', name: 'TraceIdListForRetrieval', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    TraceInstanceIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#TraceInstanceIds', name: 'TraceInstanceIds')
    TraceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#TraceList', name: 'TraceList')
    TraceResourceARNs = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#TraceResourceARNs', name: 'TraceResourceARNs')
    TraceSegmentDestination = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.xray#TraceSegmentDestination', name: 'TraceSegmentDestination')
    TraceSegmentDestinationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.xray#TraceSegmentDestinationStatus', name: 'TraceSegmentDestinationStatus')
    TraceSegmentDocument = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#TraceSegmentDocument', name: 'TraceSegmentDocument')
    TraceSegmentDocumentList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#TraceSegmentDocumentList', name: 'TraceSegmentDocumentList')
    TraceSpanList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#TraceSpanList', name: 'TraceSpanList', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    TraceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#TraceSummary', name: 'TraceSummary')
    TraceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#TraceSummaryList', name: 'TraceSummaryList')
    TraceUser = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#TraceUser', name: 'TraceUser')
    TraceUsers = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#TraceUsers', name: 'TraceUsers')
    URLPath = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#URLPath', name: 'URLPath', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    UnprocessedStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#UnprocessedStatistics', name: 'UnprocessedStatistics')
    UnprocessedStatisticsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#UnprocessedStatisticsList', name: 'UnprocessedStatisticsList')
    UnprocessedTraceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#UnprocessedTraceIdList', name: 'UnprocessedTraceIdList')
    UnprocessedTraceSegment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#UnprocessedTraceSegment', name: 'UnprocessedTraceSegment')
    UnprocessedTraceSegmentList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#UnprocessedTraceSegmentList', name: 'UnprocessedTraceSegmentList')
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#UpdateGroupRequest', name: 'UpdateGroupRequest')
    UpdateGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#UpdateGroupResult', name: 'UpdateGroupResult')
    UpdateIndexingRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#UpdateIndexingRuleRequest', name: 'UpdateIndexingRuleRequest')
    UpdateIndexingRuleResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#UpdateIndexingRuleResult', name: 'UpdateIndexingRuleResult')
    UpdateSamplingRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#UpdateSamplingRuleRequest', name: 'UpdateSamplingRuleRequest')
    UpdateSamplingRuleResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#UpdateSamplingRuleResult', name: 'UpdateSamplingRuleResult')
    UpdateTraceSegmentDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#UpdateTraceSegmentDestinationRequest', name: 'UpdateTraceSegmentDestinationRequest')
    UpdateTraceSegmentDestinationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#UpdateTraceSegmentDestinationResult', name: 'UpdateTraceSegmentDestinationResult')
    ValueWithServiceIds = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ValueWithServiceIds', name: 'ValueWithServiceIds')
    ValuesWithServiceIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#ValuesWithServiceIds', name: 'ValuesWithServiceIds')
    Version = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.xray#Version', name: 'Version', traits: {"smithy.api#range" => {"min" => 1}})

    Alias.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    Alias.add_member(:names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasNames, location_name: 'Names'))
    Alias.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type'))
    Alias.type = Types::Alias
    AliasList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Alias)
    AliasNames.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    AnnotationValue.add_member(:number_value, Types::AnnotationValue::NumberValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'NumberValue'))
    AnnotationValue.add_member(:boolean_value, Types::AnnotationValue::BooleanValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'BooleanValue'))
    AnnotationValue.add_member(:string_value, Types::AnnotationValue::StringValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StringValue'))
    AnnotationValue.add_member(:unknown, Types::AnnotationValue::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    AnnotationValue.type = Types::AnnotationValue
    Annotations.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnnotationKey)
    Annotations.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValuesWithServiceIds)
    AnomalousService.add_member(:service_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'ServiceId'))
    AnomalousService.type = Types::AnomalousService
    AnomalousServiceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalousService)
    AttributeMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKey)
    AttributeMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue)
    AvailabilityZoneDetail.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    AvailabilityZoneDetail.type = Types::AvailabilityZoneDetail
    BackendConnectionErrors.add_member(:timeout_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'TimeoutCount'))
    BackendConnectionErrors.add_member(:connection_refused_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'ConnectionRefusedCount'))
    BackendConnectionErrors.add_member(:http_code4_xx_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'HTTPCode4XXCount'))
    BackendConnectionErrors.add_member(:http_code5_xx_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'HTTPCode5XXCount'))
    BackendConnectionErrors.add_member(:unknown_host_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'UnknownHostCount'))
    BackendConnectionErrors.add_member(:other_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'OtherCount'))
    BackendConnectionErrors.type = Types::BackendConnectionErrors
    BatchGetTracesRequest.add_member(:trace_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TraceIdList, location_name: 'TraceIds', traits: {"smithy.api#required" => {}}))
    BatchGetTracesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    BatchGetTracesRequest.type = Types::BatchGetTracesRequest
    BatchGetTracesResult.add_member(:traces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TraceList, location_name: 'Traces'))
    BatchGetTracesResult.add_member(:unprocessed_trace_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedTraceIdList, location_name: 'UnprocessedTraceIds'))
    BatchGetTracesResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    BatchGetTracesResult.type = Types::BatchGetTracesResult
    CancelTraceRetrievalRequest.add_member(:retrieval_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievalToken, location_name: 'RetrievalToken', traits: {"smithy.api#required" => {}}))
    CancelTraceRetrievalRequest.type = Types::CancelTraceRetrievalRequest
    CancelTraceRetrievalResult.type = Types::CancelTraceRetrievalResult
    CreateGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName', traits: {"smithy.api#required" => {}}))
    CreateGroupRequest.add_member(:filter_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterExpression, location_name: 'FilterExpression'))
    CreateGroupRequest.add_member(:insights_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightsConfiguration, location_name: 'InsightsConfiguration'))
    CreateGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateGroupRequest.type = Types::CreateGroupRequest
    CreateGroupResult.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Group, location_name: 'Group'))
    CreateGroupResult.type = Types::CreateGroupResult
    CreateSamplingRuleRequest.add_member(:sampling_rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingRule, location_name: 'SamplingRule', traits: {"smithy.api#required" => {}}))
    CreateSamplingRuleRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateSamplingRuleRequest.type = Types::CreateSamplingRuleRequest
    CreateSamplingRuleResult.add_member(:sampling_rule_record, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingRuleRecord, location_name: 'SamplingRuleRecord'))
    CreateSamplingRuleResult.type = Types::CreateSamplingRuleResult
    DeleteGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName'))
    DeleteGroupRequest.add_member(:group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupARN, location_name: 'GroupARN'))
    DeleteGroupRequest.type = Types::DeleteGroupRequest
    DeleteGroupResult.type = Types::DeleteGroupResult
    DeleteResourcePolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'PolicyName', traits: {"smithy.api#required" => {}}))
    DeleteResourcePolicyRequest.add_member(:policy_revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: 'PolicyRevisionId'))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteResourcePolicyResult.type = Types::DeleteResourcePolicyResult
    DeleteSamplingRuleRequest.add_member(:rule_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RuleName'))
    DeleteSamplingRuleRequest.add_member(:rule_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RuleARN'))
    DeleteSamplingRuleRequest.type = Types::DeleteSamplingRuleRequest
    DeleteSamplingRuleResult.add_member(:sampling_rule_record, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingRuleRecord, location_name: 'SamplingRuleRecord'))
    DeleteSamplingRuleResult.type = Types::DeleteSamplingRuleResult
    Edge.add_member(:reference_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'ReferenceId'))
    Edge.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime'))
    Edge.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime'))
    Edge.add_member(:summary_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeStatistics, location_name: 'SummaryStatistics'))
    Edge.add_member(:response_time_histogram, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Histogram, location_name: 'ResponseTimeHistogram'))
    Edge.add_member(:aliases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasList, location_name: 'Aliases'))
    Edge.add_member(:edge_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EdgeType'))
    Edge.add_member(:received_event_age_histogram, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Histogram, location_name: 'ReceivedEventAgeHistogram'))
    Edge.type = Types::Edge
    EdgeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Edge)
    EdgeStatistics.add_member(:ok_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'OkCount'))
    EdgeStatistics.add_member(:error_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorStatistics, location_name: 'ErrorStatistics'))
    EdgeStatistics.add_member(:fault_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaultStatistics, location_name: 'FaultStatistics'))
    EdgeStatistics.add_member(:total_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'TotalCount'))
    EdgeStatistics.add_member(:total_response_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'TotalResponseTime'))
    EdgeStatistics.type = Types::EdgeStatistics
    EncryptionConfig.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KeyId'))
    EncryptionConfig.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionStatus, location_name: 'Status'))
    EncryptionConfig.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: 'Type'))
    EncryptionConfig.type = Types::EncryptionConfig
    EncryptionStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    EncryptionStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    EncryptionType.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    EncryptionType.add_member(:kms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KMS', traits: {"smithy.api#enumValue" => "KMS"}))
    ErrorRootCause.add_member(:services, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorRootCauseServices, location_name: 'Services'))
    ErrorRootCause.add_member(:client_impacting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'ClientImpacting'))
    ErrorRootCause.type = Types::ErrorRootCause
    ErrorRootCauseEntity.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    ErrorRootCauseEntity.add_member(:exceptions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RootCauseExceptions, location_name: 'Exceptions'))
    ErrorRootCauseEntity.add_member(:remote, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'Remote'))
    ErrorRootCauseEntity.type = Types::ErrorRootCauseEntity
    ErrorRootCauseEntityPath.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorRootCauseEntity)
    ErrorRootCauseService.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    ErrorRootCauseService.add_member(:names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNames, location_name: 'Names'))
    ErrorRootCauseService.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type'))
    ErrorRootCauseService.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccountId'))
    ErrorRootCauseService.add_member(:entity_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorRootCauseEntityPath, location_name: 'EntityPath'))
    ErrorRootCauseService.add_member(:inferred, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'Inferred'))
    ErrorRootCauseService.type = Types::ErrorRootCauseService
    ErrorRootCauseServices.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorRootCauseService)
    ErrorRootCauses.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorRootCause)
    ErrorStatistics.add_member(:throttle_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'ThrottleCount'))
    ErrorStatistics.add_member(:other_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'OtherCount'))
    ErrorStatistics.add_member(:total_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'TotalCount'))
    ErrorStatistics.type = Types::ErrorStatistics
    FaultRootCause.add_member(:services, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaultRootCauseServices, location_name: 'Services'))
    FaultRootCause.add_member(:client_impacting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'ClientImpacting'))
    FaultRootCause.type = Types::FaultRootCause
    FaultRootCauseEntity.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    FaultRootCauseEntity.add_member(:exceptions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RootCauseExceptions, location_name: 'Exceptions'))
    FaultRootCauseEntity.add_member(:remote, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'Remote'))
    FaultRootCauseEntity.type = Types::FaultRootCauseEntity
    FaultRootCauseEntityPath.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaultRootCauseEntity)
    FaultRootCauseService.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    FaultRootCauseService.add_member(:names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNames, location_name: 'Names'))
    FaultRootCauseService.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type'))
    FaultRootCauseService.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccountId'))
    FaultRootCauseService.add_member(:entity_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaultRootCauseEntityPath, location_name: 'EntityPath'))
    FaultRootCauseService.add_member(:inferred, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'Inferred'))
    FaultRootCauseService.type = Types::FaultRootCauseService
    FaultRootCauseServices.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaultRootCauseService)
    FaultRootCauses.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaultRootCause)
    FaultStatistics.add_member(:other_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'OtherCount'))
    FaultStatistics.add_member(:total_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'TotalCount'))
    FaultStatistics.type = Types::FaultStatistics
    ForecastStatistics.add_member(:fault_count_high, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'FaultCountHigh'))
    ForecastStatistics.add_member(:fault_count_low, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'FaultCountLow'))
    ForecastStatistics.type = Types::ForecastStatistics
    GetEncryptionConfigRequest.type = Types::GetEncryptionConfigRequest
    GetEncryptionConfigResult.add_member(:encryption_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfig, location_name: 'EncryptionConfig'))
    GetEncryptionConfigResult.type = Types::GetEncryptionConfigResult
    GetGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName'))
    GetGroupRequest.add_member(:group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupARN, location_name: 'GroupARN'))
    GetGroupRequest.type = Types::GetGroupRequest
    GetGroupResult.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Group, location_name: 'Group'))
    GetGroupResult.type = Types::GetGroupResult
    GetGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupsNextToken, location_name: 'NextToken'))
    GetGroupsRequest.type = Types::GetGroupsRequest
    GetGroupsResult.add_member(:groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupSummaryList, location_name: 'Groups'))
    GetGroupsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    GetGroupsResult.type = Types::GetGroupsResult
    GetIndexingRulesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    GetIndexingRulesRequest.type = Types::GetIndexingRulesRequest
    GetIndexingRulesResult.add_member(:indexing_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexingRuleList, location_name: 'IndexingRules'))
    GetIndexingRulesResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    GetIndexingRulesResult.type = Types::GetIndexingRulesResult
    GetInsightEventsRequest.add_member(:insight_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'InsightId', traits: {"smithy.api#required" => {}}))
    GetInsightEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightEventsMaxResults, location_name: 'MaxResults'))
    GetInsightEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    GetInsightEventsRequest.type = Types::GetInsightEventsRequest
    GetInsightEventsResult.add_member(:insight_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightEventList, location_name: 'InsightEvents'))
    GetInsightEventsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    GetInsightEventsResult.type = Types::GetInsightEventsResult
    GetInsightImpactGraphRequest.add_member(:insight_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'InsightId', traits: {"smithy.api#required" => {}}))
    GetInsightImpactGraphRequest.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#required" => {}}))
    GetInsightImpactGraphRequest.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#required" => {}}))
    GetInsightImpactGraphRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    GetInsightImpactGraphRequest.type = Types::GetInsightImpactGraphRequest
    GetInsightImpactGraphResult.add_member(:insight_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'InsightId'))
    GetInsightImpactGraphResult.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime'))
    GetInsightImpactGraphResult.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime'))
    GetInsightImpactGraphResult.add_member(:service_graph_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ServiceGraphStartTime'))
    GetInsightImpactGraphResult.add_member(:service_graph_end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ServiceGraphEndTime'))
    GetInsightImpactGraphResult.add_member(:services, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightImpactGraphServiceList, location_name: 'Services'))
    GetInsightImpactGraphResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    GetInsightImpactGraphResult.type = Types::GetInsightImpactGraphResult
    GetInsightRequest.add_member(:insight_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'InsightId', traits: {"smithy.api#required" => {}}))
    GetInsightRequest.type = Types::GetInsightRequest
    GetInsightResult.add_member(:insight, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Insight, location_name: 'Insight'))
    GetInsightResult.type = Types::GetInsightResult
    GetInsightSummariesRequest.add_member(:states, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightStateList, location_name: 'States'))
    GetInsightSummariesRequest.add_member(:group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupARN, location_name: 'GroupARN'))
    GetInsightSummariesRequest.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName'))
    GetInsightSummariesRequest.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#required" => {}}))
    GetInsightSummariesRequest.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#required" => {}}))
    GetInsightSummariesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightSummariesMaxResults, location_name: 'MaxResults'))
    GetInsightSummariesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    GetInsightSummariesRequest.type = Types::GetInsightSummariesRequest
    GetInsightSummariesResult.add_member(:insight_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightSummaryList, location_name: 'InsightSummaries'))
    GetInsightSummariesResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    GetInsightSummariesResult.type = Types::GetInsightSummariesResult
    GetRetrievedTracesGraphRequest.add_member(:retrieval_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievalToken, location_name: 'RetrievalToken', traits: {"smithy.api#required" => {}}))
    GetRetrievedTracesGraphRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    GetRetrievedTracesGraphRequest.type = Types::GetRetrievedTracesGraphRequest
    GetRetrievedTracesGraphResult.add_member(:retrieval_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievalStatus, location_name: 'RetrievalStatus'))
    GetRetrievedTracesGraphResult.add_member(:services, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievedServicesList, location_name: 'Services'))
    GetRetrievedTracesGraphResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    GetRetrievedTracesGraphResult.type = Types::GetRetrievedTracesGraphResult
    GetSamplingRulesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    GetSamplingRulesRequest.type = Types::GetSamplingRulesRequest
    GetSamplingRulesResult.add_member(:sampling_rule_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingRuleRecordList, location_name: 'SamplingRuleRecords'))
    GetSamplingRulesResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    GetSamplingRulesResult.type = Types::GetSamplingRulesResult
    GetSamplingStatisticSummariesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    GetSamplingStatisticSummariesRequest.type = Types::GetSamplingStatisticSummariesRequest
    GetSamplingStatisticSummariesResult.add_member(:sampling_statistic_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingStatisticSummaryList, location_name: 'SamplingStatisticSummaries'))
    GetSamplingStatisticSummariesResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    GetSamplingStatisticSummariesResult.type = Types::GetSamplingStatisticSummariesResult
    GetSamplingTargetsRequest.add_member(:sampling_statistics_documents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingStatisticsDocumentList, location_name: 'SamplingStatisticsDocuments', traits: {"smithy.api#required" => {}}))
    GetSamplingTargetsRequest.type = Types::GetSamplingTargetsRequest
    GetSamplingTargetsResult.add_member(:sampling_target_documents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingTargetDocumentList, location_name: 'SamplingTargetDocuments'))
    GetSamplingTargetsResult.add_member(:last_rule_modification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastRuleModification'))
    GetSamplingTargetsResult.add_member(:unprocessed_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedStatisticsList, location_name: 'UnprocessedStatistics'))
    GetSamplingTargetsResult.type = Types::GetSamplingTargetsResult
    GetServiceGraphRequest.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#required" => {}}))
    GetServiceGraphRequest.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#required" => {}}))
    GetServiceGraphRequest.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName'))
    GetServiceGraphRequest.add_member(:group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupARN, location_name: 'GroupARN'))
    GetServiceGraphRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    GetServiceGraphRequest.type = Types::GetServiceGraphRequest
    GetServiceGraphResult.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime'))
    GetServiceGraphResult.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime'))
    GetServiceGraphResult.add_member(:services, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceList, location_name: 'Services'))
    GetServiceGraphResult.add_member(:contains_old_group_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ContainsOldGroupVersions', traits: {"smithy.api#default" => false}))
    GetServiceGraphResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    GetServiceGraphResult.type = Types::GetServiceGraphResult
    GetTimeSeriesServiceStatisticsRequest.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#required" => {}}))
    GetTimeSeriesServiceStatisticsRequest.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#required" => {}}))
    GetTimeSeriesServiceStatisticsRequest.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName'))
    GetTimeSeriesServiceStatisticsRequest.add_member(:group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupARN, location_name: 'GroupARN'))
    GetTimeSeriesServiceStatisticsRequest.add_member(:entity_selector_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntitySelectorExpression, location_name: 'EntitySelectorExpression'))
    GetTimeSeriesServiceStatisticsRequest.add_member(:period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'Period'))
    GetTimeSeriesServiceStatisticsRequest.add_member(:forecast_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'ForecastStatistics'))
    GetTimeSeriesServiceStatisticsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    GetTimeSeriesServiceStatisticsRequest.type = Types::GetTimeSeriesServiceStatisticsRequest
    GetTimeSeriesServiceStatisticsResult.add_member(:time_series_service_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeSeriesServiceStatisticsList, location_name: 'TimeSeriesServiceStatistics'))
    GetTimeSeriesServiceStatisticsResult.add_member(:contains_old_group_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ContainsOldGroupVersions', traits: {"smithy.api#default" => false}))
    GetTimeSeriesServiceStatisticsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    GetTimeSeriesServiceStatisticsResult.type = Types::GetTimeSeriesServiceStatisticsResult
    GetTraceGraphRequest.add_member(:trace_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TraceIdList, location_name: 'TraceIds', traits: {"smithy.api#required" => {}}))
    GetTraceGraphRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    GetTraceGraphRequest.type = Types::GetTraceGraphRequest
    GetTraceGraphResult.add_member(:services, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceList, location_name: 'Services'))
    GetTraceGraphResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    GetTraceGraphResult.type = Types::GetTraceGraphResult
    GetTraceSegmentDestinationRequest.type = Types::GetTraceSegmentDestinationRequest
    GetTraceSegmentDestinationResult.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TraceSegmentDestination, location_name: 'Destination'))
    GetTraceSegmentDestinationResult.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TraceSegmentDestinationStatus, location_name: 'Status'))
    GetTraceSegmentDestinationResult.type = Types::GetTraceSegmentDestinationResult
    GetTraceSummariesRequest.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#required" => {}}))
    GetTraceSummariesRequest.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#required" => {}}))
    GetTraceSummariesRequest.add_member(:time_range_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeRangeType, location_name: 'TimeRangeType'))
    GetTraceSummariesRequest.add_member(:sampling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'Sampling'))
    GetTraceSummariesRequest.add_member(:sampling_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingStrategy, location_name: 'SamplingStrategy'))
    GetTraceSummariesRequest.add_member(:filter_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterExpression, location_name: 'FilterExpression'))
    GetTraceSummariesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    GetTraceSummariesRequest.type = Types::GetTraceSummariesRequest
    GetTraceSummariesResult.add_member(:trace_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TraceSummaryList, location_name: 'TraceSummaries'))
    GetTraceSummariesResult.add_member(:approximate_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ApproximateTime'))
    GetTraceSummariesResult.add_member(:traces_processed_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'TracesProcessedCount'))
    GetTraceSummariesResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    GetTraceSummariesResult.type = Types::GetTraceSummariesResult
    GraphLink.add_member(:reference_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReferenceType'))
    GraphLink.add_member(:source_trace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceTraceId'))
    GraphLink.add_member(:destination_trace_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TraceIdList, location_name: 'DestinationTraceIds'))
    GraphLink.type = Types::GraphLink
    Group.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupName'))
    Group.add_member(:group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupARN'))
    Group.add_member(:filter_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FilterExpression'))
    Group.add_member(:insights_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightsConfiguration, location_name: 'InsightsConfiguration'))
    Group.type = Types::Group
    GroupSummary.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupName'))
    GroupSummary.add_member(:group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupARN'))
    GroupSummary.add_member(:filter_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FilterExpression'))
    GroupSummary.add_member(:insights_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightsConfiguration, location_name: 'InsightsConfiguration'))
    GroupSummary.type = Types::GroupSummary
    GroupSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupSummary)
    Histogram.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HistogramEntry)
    HistogramEntry.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'Value', traits: {"smithy.api#default" => 0}))
    HistogramEntry.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Count', traits: {"smithy.api#default" => 0}))
    HistogramEntry.type = Types::HistogramEntry
    Http.add_member(:http_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HttpURL'))
    Http.add_member(:http_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'HttpStatus'))
    Http.add_member(:http_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HttpMethod'))
    Http.add_member(:user_agent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserAgent'))
    Http.add_member(:client_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClientIp'))
    Http.type = Types::Http
    IndexingRule.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'Name'))
    IndexingRule.add_member(:modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ModifiedAt'))
    IndexingRule.add_member(:rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexingRuleValue, location_name: 'Rule'))
    IndexingRule.type = Types::IndexingRule
    IndexingRuleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexingRule)
    IndexingRuleValue.add_member(:probabilistic, Types::IndexingRuleValue::Probabilistic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProbabilisticRuleValue, location_name: 'Probabilistic'))
    IndexingRuleValue.add_member(:unknown, Types::IndexingRuleValue::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    IndexingRuleValue.type = Types::IndexingRuleValue
    IndexingRuleValueUpdate.add_member(:probabilistic, Types::IndexingRuleValueUpdate::Probabilistic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProbabilisticRuleValueUpdate, location_name: 'Probabilistic'))
    IndexingRuleValueUpdate.add_member(:unknown, Types::IndexingRuleValueUpdate::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    IndexingRuleValueUpdate.type = Types::IndexingRuleValueUpdate
    Insight.add_member(:insight_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'InsightId'))
    Insight.add_member(:group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupARN, location_name: 'GroupARN'))
    Insight.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName'))
    Insight.add_member(:root_cause_service_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'RootCauseServiceId'))
    Insight.add_member(:categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightCategoryList, location_name: 'Categories'))
    Insight.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightState, location_name: 'State'))
    Insight.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime'))
    Insight.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime'))
    Insight.add_member(:summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightSummaryText, location_name: 'Summary'))
    Insight.add_member(:client_request_impact_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestImpactStatistics, location_name: 'ClientRequestImpactStatistics'))
    Insight.add_member(:root_cause_service_request_impact_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestImpactStatistics, location_name: 'RootCauseServiceRequestImpactStatistics'))
    Insight.add_member(:top_anomalous_services, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalousServiceList, location_name: 'TopAnomalousServices'))
    Insight.type = Types::Insight
    InsightCategory.add_member(:fault, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAULT', traits: {"smithy.api#enumValue" => "FAULT"}))
    InsightCategoryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightCategory)
    InsightEvent.add_member(:summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSummaryText, location_name: 'Summary'))
    InsightEvent.add_member(:event_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EventTime'))
    InsightEvent.add_member(:client_request_impact_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestImpactStatistics, location_name: 'ClientRequestImpactStatistics'))
    InsightEvent.add_member(:root_cause_service_request_impact_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestImpactStatistics, location_name: 'RootCauseServiceRequestImpactStatistics'))
    InsightEvent.add_member(:top_anomalous_services, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalousServiceList, location_name: 'TopAnomalousServices'))
    InsightEvent.type = Types::InsightEvent
    InsightEventList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightEvent)
    InsightImpactGraphEdge.add_member(:reference_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'ReferenceId'))
    InsightImpactGraphEdge.type = Types::InsightImpactGraphEdge
    InsightImpactGraphEdgeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightImpactGraphEdge)
    InsightImpactGraphService.add_member(:reference_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'ReferenceId'))
    InsightImpactGraphService.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type'))
    InsightImpactGraphService.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    InsightImpactGraphService.add_member(:names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNames, location_name: 'Names'))
    InsightImpactGraphService.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccountId'))
    InsightImpactGraphService.add_member(:edges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightImpactGraphEdgeList, location_name: 'Edges'))
    InsightImpactGraphService.type = Types::InsightImpactGraphService
    InsightImpactGraphServiceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightImpactGraphService)
    InsightState.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    InsightState.add_member(:closed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOSED', traits: {"smithy.api#enumValue" => "CLOSED"}))
    InsightStateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightState)
    InsightSummary.add_member(:insight_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'InsightId'))
    InsightSummary.add_member(:group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupARN, location_name: 'GroupARN'))
    InsightSummary.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName'))
    InsightSummary.add_member(:root_cause_service_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'RootCauseServiceId'))
    InsightSummary.add_member(:categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightCategoryList, location_name: 'Categories'))
    InsightSummary.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightState, location_name: 'State'))
    InsightSummary.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime'))
    InsightSummary.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime'))
    InsightSummary.add_member(:summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightSummaryText, location_name: 'Summary'))
    InsightSummary.add_member(:client_request_impact_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestImpactStatistics, location_name: 'ClientRequestImpactStatistics'))
    InsightSummary.add_member(:root_cause_service_request_impact_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestImpactStatistics, location_name: 'RootCauseServiceRequestImpactStatistics'))
    InsightSummary.add_member(:top_anomalous_services, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalousServiceList, location_name: 'TopAnomalousServices'))
    InsightSummary.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdateTime'))
    InsightSummary.type = Types::InsightSummary
    InsightSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightSummary)
    InsightsConfiguration.add_member(:insights_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'InsightsEnabled'))
    InsightsConfiguration.add_member(:notifications_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'NotificationsEnabled'))
    InsightsConfiguration.type = Types::InsightsConfiguration
    InstanceIdDetail.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id'))
    InstanceIdDetail.type = Types::InstanceIdDetail
    InvalidPolicyRevisionIdException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidPolicyRevisionIdException.type = Types::InvalidPolicyRevisionIdException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidRequestException.type = Types::InvalidRequestException
    LinksList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphLink)
    ListResourcePoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicyNextToken, location_name: 'NextToken'))
    ListResourcePoliciesRequest.type = Types::ListResourcePoliciesRequest
    ListResourcePoliciesResult.add_member(:resource_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicyList, location_name: 'ResourcePolicies'))
    ListResourcePoliciesResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicyNextToken, location_name: 'NextToken'))
    ListResourcePoliciesResult.type = Types::ListResourcePoliciesResult
    ListRetrievedTracesRequest.add_member(:retrieval_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievalToken, location_name: 'RetrievalToken', traits: {"smithy.api#required" => {}}))
    ListRetrievedTracesRequest.add_member(:trace_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TraceFormatType, location_name: 'TraceFormat'))
    ListRetrievedTracesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListRetrievedTracesRequest.type = Types::ListRetrievedTracesRequest
    ListRetrievedTracesResult.add_member(:retrieval_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievalStatus, location_name: 'RetrievalStatus'))
    ListRetrievedTracesResult.add_member(:trace_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TraceFormatType, location_name: 'TraceFormat'))
    ListRetrievedTracesResult.add_member(:traces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TraceSpanList, location_name: 'Traces'))
    ListRetrievedTracesResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListRetrievedTracesResult.type = Types::ListRetrievedTracesResult
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    ListTagsForResourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LockoutPreventionException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    LockoutPreventionException.type = Types::LockoutPreventionException
    MalformedPolicyDocumentException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    MalformedPolicyDocumentException.type = Types::MalformedPolicyDocumentException
    PolicyCountLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    PolicyCountLimitExceededException.type = Types::PolicyCountLimitExceededException
    PolicySizeLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    PolicySizeLimitExceededException.type = Types::PolicySizeLimitExceededException
    ProbabilisticRuleValue.add_member(:desired_sampling_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'DesiredSamplingPercentage', traits: {"smithy.api#required" => {}}))
    ProbabilisticRuleValue.add_member(:actual_sampling_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'ActualSamplingPercentage'))
    ProbabilisticRuleValue.type = Types::ProbabilisticRuleValue
    ProbabilisticRuleValueUpdate.add_member(:desired_sampling_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'DesiredSamplingPercentage', traits: {"smithy.api#required" => {}}))
    ProbabilisticRuleValueUpdate.type = Types::ProbabilisticRuleValueUpdate
    PutEncryptionConfigRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyId, location_name: 'KeyId'))
    PutEncryptionConfigRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    PutEncryptionConfigRequest.type = Types::PutEncryptionConfigRequest
    PutEncryptionConfigResult.add_member(:encryption_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfig, location_name: 'EncryptionConfig'))
    PutEncryptionConfigResult.type = Types::PutEncryptionConfigResult
    PutResourcePolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'PolicyName', traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:policy_document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'PolicyDocument', traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:policy_revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: 'PolicyRevisionId'))
    PutResourcePolicyRequest.add_member(:bypass_policy_lockout_check, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'BypassPolicyLockoutCheck', traits: {"smithy.api#default" => false}))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResult.add_member(:resource_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'ResourcePolicy'))
    PutResourcePolicyResult.type = Types::PutResourcePolicyResult
    PutTelemetryRecordsRequest.add_member(:telemetry_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryRecordList, location_name: 'TelemetryRecords', traits: {"smithy.api#required" => {}}))
    PutTelemetryRecordsRequest.add_member(:ec2_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceId, location_name: 'EC2InstanceId'))
    PutTelemetryRecordsRequest.add_member(:hostname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Hostname, location_name: 'Hostname'))
    PutTelemetryRecordsRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN'))
    PutTelemetryRecordsRequest.type = Types::PutTelemetryRecordsRequest
    PutTelemetryRecordsResult.type = Types::PutTelemetryRecordsResult
    PutTraceSegmentsRequest.add_member(:trace_segment_documents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TraceSegmentDocumentList, location_name: 'TraceSegmentDocuments', traits: {"smithy.api#required" => {}}))
    PutTraceSegmentsRequest.type = Types::PutTraceSegmentsRequest
    PutTraceSegmentsResult.add_member(:unprocessed_trace_segments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedTraceSegmentList, location_name: 'UnprocessedTraceSegments'))
    PutTraceSegmentsResult.type = Types::PutTraceSegmentsResult
    RequestImpactStatistics.add_member(:fault_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'FaultCount'))
    RequestImpactStatistics.add_member(:ok_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'OkCount'))
    RequestImpactStatistics.add_member(:total_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'TotalCount'))
    RequestImpactStatistics.type = Types::RequestImpactStatistics
    ResourceARNDetail.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN'))
    ResourceARNDetail.type = Types::ResourceARNDetail
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceName'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourcePolicy.add_member(:policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'PolicyName'))
    ResourcePolicy.add_member(:policy_document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'PolicyDocument'))
    ResourcePolicy.add_member(:policy_revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: 'PolicyRevisionId'))
    ResourcePolicy.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime'))
    ResourcePolicy.type = Types::ResourcePolicy
    ResourcePolicyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy)
    ResponseTimeRootCause.add_member(:services, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseTimeRootCauseServices, location_name: 'Services'))
    ResponseTimeRootCause.add_member(:client_impacting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'ClientImpacting'))
    ResponseTimeRootCause.type = Types::ResponseTimeRootCause
    ResponseTimeRootCauseEntity.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    ResponseTimeRootCauseEntity.add_member(:coverage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'Coverage'))
    ResponseTimeRootCauseEntity.add_member(:remote, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'Remote'))
    ResponseTimeRootCauseEntity.type = Types::ResponseTimeRootCauseEntity
    ResponseTimeRootCauseEntityPath.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseTimeRootCauseEntity)
    ResponseTimeRootCauseService.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    ResponseTimeRootCauseService.add_member(:names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNames, location_name: 'Names'))
    ResponseTimeRootCauseService.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type'))
    ResponseTimeRootCauseService.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccountId'))
    ResponseTimeRootCauseService.add_member(:entity_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseTimeRootCauseEntityPath, location_name: 'EntityPath'))
    ResponseTimeRootCauseService.add_member(:inferred, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'Inferred'))
    ResponseTimeRootCauseService.type = Types::ResponseTimeRootCauseService
    ResponseTimeRootCauseServices.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseTimeRootCauseService)
    ResponseTimeRootCauses.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseTimeRootCause)
    RetrievalStatus.add_member(:scheduled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCHEDULED', traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    RetrievalStatus.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    RetrievalStatus.add_member(:complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "COMPLETE"}))
    RetrievalStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    RetrievalStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    RetrievalStatus.add_member(:timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMEOUT', traits: {"smithy.api#enumValue" => "TIMEOUT"}))
    RetrievedService.add_member(:service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: 'Service'))
    RetrievedService.add_member(:links, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LinksList, location_name: 'Links'))
    RetrievedService.type = Types::RetrievedService
    RetrievedServicesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievedService)
    RetrievedTrace.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TraceId, location_name: 'Id'))
    RetrievedTrace.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'Duration'))
    RetrievedTrace.add_member(:spans, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpanList, location_name: 'Spans'))
    RetrievedTrace.type = Types::RetrievedTrace
    RootCauseException.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    RootCauseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    RootCauseException.type = Types::RootCauseException
    RootCauseExceptions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RootCauseException)
    RuleLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    RuleLimitExceededException.type = Types::RuleLimitExceededException
    SamplingRule.add_member(:rule_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'RuleName'))
    SamplingRule.add_member(:rule_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RuleARN'))
    SamplingRule.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    SamplingRule.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: 'Priority', traits: {"smithy.api#required" => {}}))
    SamplingRule.add_member(:fixed_rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FixedRate, location_name: 'FixedRate', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    SamplingRule.add_member(:reservoir_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservoirSize, location_name: 'ReservoirSize', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    SamplingRule.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'ServiceName', traits: {"smithy.api#required" => {}}))
    SamplingRule.add_member(:service_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceType, location_name: 'ServiceType', traits: {"smithy.api#required" => {}}))
    SamplingRule.add_member(:host, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Host, location_name: 'Host', traits: {"smithy.api#required" => {}}))
    SamplingRule.add_member(:http_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HTTPMethod, location_name: 'HTTPMethod', traits: {"smithy.api#required" => {}}))
    SamplingRule.add_member(:url_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: URLPath, location_name: 'URLPath', traits: {"smithy.api#required" => {}}))
    SamplingRule.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'Version', traits: {"smithy.api#required" => {}}))
    SamplingRule.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeMap, location_name: 'Attributes'))
    SamplingRule.type = Types::SamplingRule
    SamplingRuleRecord.add_member(:sampling_rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingRule, location_name: 'SamplingRule'))
    SamplingRuleRecord.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt'))
    SamplingRuleRecord.add_member(:modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ModifiedAt'))
    SamplingRuleRecord.type = Types::SamplingRuleRecord
    SamplingRuleRecordList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingRuleRecord)
    SamplingRuleUpdate.add_member(:rule_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'RuleName'))
    SamplingRuleUpdate.add_member(:rule_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RuleARN'))
    SamplingRuleUpdate.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN'))
    SamplingRuleUpdate.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'Priority'))
    SamplingRuleUpdate.add_member(:fixed_rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'FixedRate'))
    SamplingRuleUpdate.add_member(:reservoir_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'ReservoirSize'))
    SamplingRuleUpdate.add_member(:host, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Host, location_name: 'Host'))
    SamplingRuleUpdate.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'ServiceName'))
    SamplingRuleUpdate.add_member(:service_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceType, location_name: 'ServiceType'))
    SamplingRuleUpdate.add_member(:http_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HTTPMethod, location_name: 'HTTPMethod'))
    SamplingRuleUpdate.add_member(:url_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: URLPath, location_name: 'URLPath'))
    SamplingRuleUpdate.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeMap, location_name: 'Attributes'))
    SamplingRuleUpdate.type = Types::SamplingRuleUpdate
    SamplingStatisticSummary.add_member(:rule_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RuleName'))
    SamplingStatisticSummary.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Timestamp'))
    SamplingStatisticSummary.add_member(:request_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'RequestCount', traits: {"smithy.api#default" => 0}))
    SamplingStatisticSummary.add_member(:borrow_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BorrowCount', traits: {"smithy.api#default" => 0}))
    SamplingStatisticSummary.add_member(:sampled_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SampledCount', traits: {"smithy.api#default" => 0}))
    SamplingStatisticSummary.type = Types::SamplingStatisticSummary
    SamplingStatisticSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingStatisticSummary)
    SamplingStatisticsDocument.add_member(:rule_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'RuleName', traits: {"smithy.api#required" => {}}))
    SamplingStatisticsDocument.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientID, location_name: 'ClientID', traits: {"smithy.api#required" => {}}))
    SamplingStatisticsDocument.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Timestamp', traits: {"smithy.api#required" => {}}))
    SamplingStatisticsDocument.add_member(:request_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestCount, location_name: 'RequestCount', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    SamplingStatisticsDocument.add_member(:sampled_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SampledCount, location_name: 'SampledCount', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    SamplingStatisticsDocument.add_member(:borrow_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BorrowCount, location_name: 'BorrowCount', traits: {"smithy.api#default" => 0}))
    SamplingStatisticsDocument.type = Types::SamplingStatisticsDocument
    SamplingStatisticsDocumentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingStatisticsDocument)
    SamplingStrategy.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingStrategyName, location_name: 'Name'))
    SamplingStrategy.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'Value'))
    SamplingStrategy.type = Types::SamplingStrategy
    SamplingStrategyName.add_member(:partial_scan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PartialScan', traits: {"smithy.api#enumValue" => "PartialScan"}))
    SamplingStrategyName.add_member(:fixed_rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FixedRate', traits: {"smithy.api#enumValue" => "FixedRate"}))
    SamplingTargetDocument.add_member(:rule_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RuleName'))
    SamplingTargetDocument.add_member(:fixed_rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'FixedRate', traits: {"smithy.api#default" => 0}))
    SamplingTargetDocument.add_member(:reservoir_quota, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'ReservoirQuota'))
    SamplingTargetDocument.add_member(:reservoir_quota_ttl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ReservoirQuotaTTL'))
    SamplingTargetDocument.add_member(:interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'Interval'))
    SamplingTargetDocument.type = Types::SamplingTargetDocument
    SamplingTargetDocumentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingTargetDocument)
    Segment.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentId, location_name: 'Id'))
    Segment.add_member(:document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentDocument, location_name: 'Document'))
    Segment.type = Types::Segment
    SegmentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Segment)
    Service.add_member(:reference_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'ReferenceId'))
    Service.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    Service.add_member(:names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNames, location_name: 'Names'))
    Service.add_member(:root, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'Root'))
    Service.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccountId'))
    Service.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type'))
    Service.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'State'))
    Service.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime'))
    Service.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime'))
    Service.add_member(:edges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeList, location_name: 'Edges'))
    Service.add_member(:summary_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceStatistics, location_name: 'SummaryStatistics'))
    Service.add_member(:duration_histogram, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Histogram, location_name: 'DurationHistogram'))
    Service.add_member(:response_time_histogram, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Histogram, location_name: 'ResponseTimeHistogram'))
    Service.type = Types::Service
    ServiceId.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    ServiceId.add_member(:names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNames, location_name: 'Names'))
    ServiceId.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccountId'))
    ServiceId.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type'))
    ServiceId.type = Types::ServiceId
    ServiceIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId)
    ServiceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Service)
    ServiceNames.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ServiceStatistics.add_member(:ok_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'OkCount'))
    ServiceStatistics.add_member(:error_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorStatistics, location_name: 'ErrorStatistics'))
    ServiceStatistics.add_member(:fault_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaultStatistics, location_name: 'FaultStatistics'))
    ServiceStatistics.add_member(:total_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'TotalCount'))
    ServiceStatistics.add_member(:total_response_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'TotalResponseTime'))
    ServiceStatistics.type = Types::ServiceStatistics
    Span.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpanId, location_name: 'Id'))
    Span.add_member(:document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpanDocument, location_name: 'Document'))
    Span.type = Types::Span
    SpanList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Span)
    StartTraceRetrievalRequest.add_member(:trace_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TraceIdListForRetrieval, location_name: 'TraceIds', traits: {"smithy.api#required" => {}}))
    StartTraceRetrievalRequest.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#required" => {}}))
    StartTraceRetrievalRequest.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#required" => {}}))
    StartTraceRetrievalRequest.type = Types::StartTraceRetrievalRequest
    StartTraceRetrievalResult.add_member(:retrieval_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievalToken, location_name: 'RetrievalToken'))
    StartTraceRetrievalResult.type = Types::StartTraceRetrievalResult
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TelemetryRecord.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Timestamp', traits: {"smithy.api#required" => {}}))
    TelemetryRecord.add_member(:segments_received_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'SegmentsReceivedCount'))
    TelemetryRecord.add_member(:segments_sent_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'SegmentsSentCount'))
    TelemetryRecord.add_member(:segments_spillover_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'SegmentsSpilloverCount'))
    TelemetryRecord.add_member(:segments_rejected_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'SegmentsRejectedCount'))
    TelemetryRecord.add_member(:backend_connection_errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackendConnectionErrors, location_name: 'BackendConnectionErrors'))
    TelemetryRecord.type = Types::TelemetryRecord
    TelemetryRecordList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryRecord)
    ThrottledException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ThrottledException.type = Types::ThrottledException
    TimeRangeType.add_member(:trace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TraceId', traits: {"smithy.api#enumValue" => "TraceId"}))
    TimeRangeType.add_member(:event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Event', traits: {"smithy.api#enumValue" => "Event"}))
    TimeRangeType.add_member(:service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Service', traits: {"smithy.api#enumValue" => "Service"}))
    TimeSeriesServiceStatistics.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Timestamp'))
    TimeSeriesServiceStatistics.add_member(:edge_summary_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeStatistics, location_name: 'EdgeSummaryStatistics'))
    TimeSeriesServiceStatistics.add_member(:service_summary_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceStatistics, location_name: 'ServiceSummaryStatistics'))
    TimeSeriesServiceStatistics.add_member(:service_forecast_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForecastStatistics, location_name: 'ServiceForecastStatistics'))
    TimeSeriesServiceStatistics.add_member(:response_time_histogram, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Histogram, location_name: 'ResponseTimeHistogram'))
    TimeSeriesServiceStatistics.type = Types::TimeSeriesServiceStatistics
    TimeSeriesServiceStatisticsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeSeriesServiceStatistics)
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    TooManyTagsException.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceName'))
    TooManyTagsException.type = Types::TooManyTagsException
    Trace.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TraceId, location_name: 'Id'))
    Trace.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'Duration'))
    Trace.add_member(:limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'LimitExceeded'))
    Trace.add_member(:segments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentList, location_name: 'Segments'))
    Trace.type = Types::Trace
    TraceAvailabilityZones.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneDetail)
    TraceFormatType.add_member(:xray, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XRAY', traits: {"smithy.api#enumValue" => "XRAY"}))
    TraceFormatType.add_member(:otel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTEL', traits: {"smithy.api#enumValue" => "OTEL"}))
    TraceIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TraceId)
    TraceIdListForRetrieval.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TraceId)
    TraceInstanceIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceIdDetail)
    TraceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Trace)
    TraceResourceARNs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARNDetail)
    TraceSegmentDestination.add_member(:x_ray, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XRay', traits: {"smithy.api#enumValue" => "XRay"}))
    TraceSegmentDestination.add_member(:cloud_watch_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CloudWatchLogs', traits: {"smithy.api#enumValue" => "CloudWatchLogs"}))
    TraceSegmentDestinationStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    TraceSegmentDestinationStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    TraceSegmentDocumentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TraceSegmentDocument)
    TraceSpanList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievedTrace)
    TraceSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TraceId, location_name: 'Id'))
    TraceSummary.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime'))
    TraceSummary.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'Duration'))
    TraceSummary.add_member(:response_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'ResponseTime'))
    TraceSummary.add_member(:has_fault, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'HasFault'))
    TraceSummary.add_member(:has_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'HasError'))
    TraceSummary.add_member(:has_throttle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'HasThrottle'))
    TraceSummary.add_member(:is_partial, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'IsPartial'))
    TraceSummary.add_member(:http, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Http, location_name: 'Http'))
    TraceSummary.add_member(:annotations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Annotations, location_name: 'Annotations'))
    TraceSummary.add_member(:users, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TraceUsers, location_name: 'Users'))
    TraceSummary.add_member(:service_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIds, location_name: 'ServiceIds'))
    TraceSummary.add_member(:resource_ar_ns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TraceResourceARNs, location_name: 'ResourceARNs'))
    TraceSummary.add_member(:instance_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TraceInstanceIds, location_name: 'InstanceIds'))
    TraceSummary.add_member(:availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TraceAvailabilityZones, location_name: 'AvailabilityZones'))
    TraceSummary.add_member(:entry_point, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'EntryPoint'))
    TraceSummary.add_member(:fault_root_causes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaultRootCauses, location_name: 'FaultRootCauses'))
    TraceSummary.add_member(:error_root_causes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorRootCauses, location_name: 'ErrorRootCauses'))
    TraceSummary.add_member(:response_time_root_causes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseTimeRootCauses, location_name: 'ResponseTimeRootCauses'))
    TraceSummary.add_member(:revision, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Revision', traits: {"smithy.api#default" => 0}))
    TraceSummary.add_member(:matched_event_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'MatchedEventTime'))
    TraceSummary.type = Types::TraceSummary
    TraceSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TraceSummary)
    TraceUser.add_member(:user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserName'))
    TraceUser.add_member(:service_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIds, location_name: 'ServiceIds'))
    TraceUser.type = Types::TraceUser
    TraceUsers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TraceUser)
    UnprocessedStatistics.add_member(:rule_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RuleName'))
    UnprocessedStatistics.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorCode'))
    UnprocessedStatistics.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    UnprocessedStatistics.type = Types::UnprocessedStatistics
    UnprocessedStatisticsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedStatistics)
    UnprocessedTraceIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TraceId)
    UnprocessedTraceSegment.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id'))
    UnprocessedTraceSegment.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorCode'))
    UnprocessedTraceSegment.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    UnprocessedTraceSegment.type = Types::UnprocessedTraceSegment
    UnprocessedTraceSegmentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedTraceSegment)
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName'))
    UpdateGroupRequest.add_member(:group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupARN, location_name: 'GroupARN'))
    UpdateGroupRequest.add_member(:filter_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterExpression, location_name: 'FilterExpression'))
    UpdateGroupRequest.add_member(:insights_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightsConfiguration, location_name: 'InsightsConfiguration'))
    UpdateGroupRequest.type = Types::UpdateGroupRequest
    UpdateGroupResult.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Group, location_name: 'Group'))
    UpdateGroupResult.type = Types::UpdateGroupResult
    UpdateIndexingRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    UpdateIndexingRuleRequest.add_member(:rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexingRuleValueUpdate, location_name: 'Rule', traits: {"smithy.api#required" => {}}))
    UpdateIndexingRuleRequest.type = Types::UpdateIndexingRuleRequest
    UpdateIndexingRuleResult.add_member(:indexing_rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexingRule, location_name: 'IndexingRule'))
    UpdateIndexingRuleResult.type = Types::UpdateIndexingRuleResult
    UpdateSamplingRuleRequest.add_member(:sampling_rule_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingRuleUpdate, location_name: 'SamplingRuleUpdate', traits: {"smithy.api#required" => {}}))
    UpdateSamplingRuleRequest.type = Types::UpdateSamplingRuleRequest
    UpdateSamplingRuleResult.add_member(:sampling_rule_record, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingRuleRecord, location_name: 'SamplingRuleRecord'))
    UpdateSamplingRuleResult.type = Types::UpdateSamplingRuleResult
    UpdateTraceSegmentDestinationRequest.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TraceSegmentDestination, location_name: 'Destination'))
    UpdateTraceSegmentDestinationRequest.type = Types::UpdateTraceSegmentDestinationRequest
    UpdateTraceSegmentDestinationResult.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TraceSegmentDestination, location_name: 'Destination'))
    UpdateTraceSegmentDestinationResult.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TraceSegmentDestinationStatus, location_name: 'Status'))
    UpdateTraceSegmentDestinationResult.type = Types::UpdateTraceSegmentDestinationResult
    ValueWithServiceIds.add_member(:annotation_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnnotationValue, location_name: 'AnnotationValue'))
    ValueWithServiceIds.add_member(:service_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIds, location_name: 'ServiceIds'))
    ValueWithServiceIds.type = Types::ValueWithServiceIds
    ValuesWithServiceIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValueWithServiceIds)

    AWSXRay = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.xray#AWSXRay"
      service.name = "AWSXRay"
      service.version = "2016-04-12"
      service.traits = {"aws.api#service" => {"sdkId" => "XRay", "arnNamespace" => "xray", "cloudFormationName" => "XRay", "cloudTrailEventSource" => "xray.amazonaws.com", "endpointPrefix" => "xray"}, "aws.auth#sigv4" => {"name" => "xray"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS X-Ray"}
      service.add_operation(:batch_get_traces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#BatchGetTraces"
        operation.name = "BatchGetTraces"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetTracesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetTracesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/Traces", "code" => 200}}
        operation[:paginator] = Paginators::BatchGetTraces.new
      end)
      service.add_operation(:cancel_trace_retrieval, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#CancelTraceRetrieval"
        operation.name = "CancelTraceRetrieval"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelTraceRetrievalRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelTraceRetrievalResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CancelTraceRetrieval", "code" => 200}}
      end)
      service.add_operation(:create_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#CreateGroup"
        operation.name = "CreateGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateGroup", "code" => 200}}
      end)
      service.add_operation(:create_sampling_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#CreateSamplingRule"
        operation.name = "CreateSamplingRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSamplingRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSamplingRuleResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateSamplingRule", "code" => 200}}
      end)
      service.add_operation(:delete_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#DeleteGroup"
        operation.name = "DeleteGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteGroup", "code" => 200}}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyRevisionIdException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteResourcePolicy", "code" => 200}}
      end)
      service.add_operation(:delete_sampling_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#DeleteSamplingRule"
        operation.name = "DeleteSamplingRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSamplingRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSamplingRuleResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteSamplingRule", "code" => 200}}
      end)
      service.add_operation(:get_encryption_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetEncryptionConfig"
        operation.name = "GetEncryptionConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEncryptionConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEncryptionConfigResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/EncryptionConfig", "code" => 200}}
      end)
      service.add_operation(:get_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetGroup"
        operation.name = "GetGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetGroup", "code" => 200}}
      end)
      service.add_operation(:get_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetGroups"
        operation.name = "GetGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/Groups", "code" => 200}}
        operation[:paginator] = Paginators::GetGroups.new
      end)
      service.add_operation(:get_indexing_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetIndexingRules"
        operation.name = "GetIndexingRules"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIndexingRulesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIndexingRulesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetIndexingRules", "code" => 200}}
      end)
      service.add_operation(:get_insight, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetInsight"
        operation.name = "GetInsight"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/Insight", "code" => 200}}
      end)
      service.add_operation(:get_insight_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetInsightEvents"
        operation.name = "GetInsightEvents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightEventsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightEventsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/InsightEvents", "code" => 200}}
        operation[:paginator] = Paginators::GetInsightEvents.new
      end)
      service.add_operation(:get_insight_impact_graph, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetInsightImpactGraph"
        operation.name = "GetInsightImpactGraph"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightImpactGraphRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightImpactGraphResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/InsightImpactGraph", "code" => 200}}
      end)
      service.add_operation(:get_insight_summaries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetInsightSummaries"
        operation.name = "GetInsightSummaries"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightSummariesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightSummariesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/InsightSummaries", "code" => 200}}
        operation[:paginator] = Paginators::GetInsightSummaries.new
      end)
      service.add_operation(:get_retrieved_traces_graph, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetRetrievedTracesGraph"
        operation.name = "GetRetrievedTracesGraph"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRetrievedTracesGraphRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRetrievedTracesGraphResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetRetrievedTracesGraph", "code" => 200}}
      end)
      service.add_operation(:get_sampling_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetSamplingRules"
        operation.name = "GetSamplingRules"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSamplingRulesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSamplingRulesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetSamplingRules", "code" => 200}}
        operation[:paginator] = Paginators::GetSamplingRules.new
      end)
      service.add_operation(:get_sampling_statistic_summaries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetSamplingStatisticSummaries"
        operation.name = "GetSamplingStatisticSummaries"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSamplingStatisticSummariesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSamplingStatisticSummariesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/SamplingStatisticSummaries", "code" => 200}}
        operation[:paginator] = Paginators::GetSamplingStatisticSummaries.new
      end)
      service.add_operation(:get_sampling_targets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetSamplingTargets"
        operation.name = "GetSamplingTargets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSamplingTargetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSamplingTargetsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/SamplingTargets", "code" => 200}}
      end)
      service.add_operation(:get_service_graph, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetServiceGraph"
        operation.name = "GetServiceGraph"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceGraphRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceGraphResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ServiceGraph", "code" => 200}}
        operation[:paginator] = Paginators::GetServiceGraph.new
      end)
      service.add_operation(:get_time_series_service_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetTimeSeriesServiceStatistics"
        operation.name = "GetTimeSeriesServiceStatistics"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTimeSeriesServiceStatisticsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTimeSeriesServiceStatisticsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/TimeSeriesServiceStatistics", "code" => 200}}
        operation[:paginator] = Paginators::GetTimeSeriesServiceStatistics.new
      end)
      service.add_operation(:get_trace_graph, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetTraceGraph"
        operation.name = "GetTraceGraph"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTraceGraphRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTraceGraphResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/TraceGraph", "code" => 200}}
        operation[:paginator] = Paginators::GetTraceGraph.new
      end)
      service.add_operation(:get_trace_segment_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetTraceSegmentDestination"
        operation.name = "GetTraceSegmentDestination"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTraceSegmentDestinationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTraceSegmentDestinationResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetTraceSegmentDestination", "code" => 200}}
      end)
      service.add_operation(:get_trace_summaries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetTraceSummaries"
        operation.name = "GetTraceSummaries"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTraceSummariesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTraceSummariesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/TraceSummaries", "code" => 200}}
        operation[:paginator] = Paginators::GetTraceSummaries.new
      end)
      service.add_operation(:list_resource_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#ListResourcePolicies"
        operation.name = "ListResourcePolicies"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcePoliciesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcePoliciesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListResourcePolicies", "code" => 200}}
        operation[:paginator] = Paginators::ListResourcePolicies.new
      end)
      service.add_operation(:list_retrieved_traces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#ListRetrievedTraces"
        operation.name = "ListRetrievedTraces"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRetrievedTracesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRetrievedTracesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListRetrievedTraces", "code" => 200}}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListTagsForResource", "code" => 200}}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:put_encryption_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#PutEncryptionConfig"
        operation.name = "PutEncryptionConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutEncryptionConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutEncryptionConfigResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/PutEncryptionConfig", "code" => 200}}
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyRevisionIdException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LockoutPreventionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedPolicyDocumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyCountLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicySizeLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/PutResourcePolicy", "code" => 200}}
      end)
      service.add_operation(:put_telemetry_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#PutTelemetryRecords"
        operation.name = "PutTelemetryRecords"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutTelemetryRecordsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutTelemetryRecordsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/TelemetryRecords", "code" => 200}}
      end)
      service.add_operation(:put_trace_segments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#PutTraceSegments"
        operation.name = "PutTraceSegments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutTraceSegmentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutTraceSegmentsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/TraceSegments", "code" => 200}}
      end)
      service.add_operation(:start_trace_retrieval, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#StartTraceRetrieval"
        operation.name = "StartTraceRetrieval"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartTraceRetrievalRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartTraceRetrievalResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StartTraceRetrieval", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/TagResource", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UntagResource", "code" => 200}}
      end)
      service.add_operation(:update_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#UpdateGroup"
        operation.name = "UpdateGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateGroup", "code" => 200}}
      end)
      service.add_operation(:update_indexing_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#UpdateIndexingRule"
        operation.name = "UpdateIndexingRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIndexingRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIndexingRuleResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateIndexingRule", "code" => 200}}
      end)
      service.add_operation(:update_sampling_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#UpdateSamplingRule"
        operation.name = "UpdateSamplingRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSamplingRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSamplingRuleResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateSamplingRule", "code" => 200}}
      end)
      service.add_operation(:update_trace_segment_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#UpdateTraceSegmentDestination"
        operation.name = "UpdateTraceSegmentDestination"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTraceSegmentDestinationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTraceSegmentDestinationResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateTraceSegmentDestination", "code" => 200}}
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
