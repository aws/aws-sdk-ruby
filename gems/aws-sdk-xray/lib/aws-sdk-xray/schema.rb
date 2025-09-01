# frozen_string_literal: true

# This is generated code!

module Aws::XRay
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Alias = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#Alias', name: 'Alias')
    AliasList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#AliasList', name: 'AliasList')
    AliasNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#AliasNames', name: 'AliasNames')
    AmazonResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    AnnotationKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#AnnotationKey', name: 'AnnotationKey')
    AnnotationValue = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.xray#AnnotationValue', name: 'AnnotationValue')
    Annotations = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.xray#Annotations', name: 'Annotations')
    AnomalousService = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#AnomalousService', name: 'AnomalousService')
    AnomalousServiceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#AnomalousServiceList', name: 'AnomalousServiceList')
    AttributeKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#AttributeKey', name: 'AttributeKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    AttributeMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.xray#AttributeMap', name: 'AttributeMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    AttributeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#AttributeValue', name: 'AttributeValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    AvailabilityZoneDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#AvailabilityZoneDetail', name: 'AvailabilityZoneDetail')
    BackendConnectionErrors = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#BackendConnectionErrors', name: 'BackendConnectionErrors')
    BatchGetTracesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#BatchGetTracesRequest', name: 'BatchGetTracesRequest')
    BatchGetTracesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#BatchGetTracesResult', name: 'BatchGetTracesResult')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.xray#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    BorrowCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.xray#BorrowCount', name: 'BorrowCount', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    CancelTraceRetrievalRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#CancelTraceRetrievalRequest', name: 'CancelTraceRetrievalRequest')
    CancelTraceRetrievalResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#CancelTraceRetrievalResult', name: 'CancelTraceRetrievalResult')
    ClientID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#ClientID', name: 'ClientID', traits: {"smithy.api#length" => {"min" => 24, "max" => 24}})
    CreateGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#CreateGroupRequest', name: 'CreateGroupRequest')
    CreateGroupResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#CreateGroupResult', name: 'CreateGroupResult')
    CreateSamplingRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#CreateSamplingRuleRequest', name: 'CreateSamplingRuleRequest')
    CreateSamplingRuleResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#CreateSamplingRuleResult', name: 'CreateSamplingRuleResult')
    DeleteGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#DeleteGroupRequest', name: 'DeleteGroupRequest')
    DeleteGroupResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#DeleteGroupResult', name: 'DeleteGroupResult')
    DeleteResourcePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#DeleteResourcePolicyRequest', name: 'DeleteResourcePolicyRequest')
    DeleteResourcePolicyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#DeleteResourcePolicyResult', name: 'DeleteResourcePolicyResult')
    DeleteSamplingRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#DeleteSamplingRuleRequest', name: 'DeleteSamplingRuleRequest')
    DeleteSamplingRuleResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#DeleteSamplingRuleResult', name: 'DeleteSamplingRuleResult')
    Double = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.xray#Double', name: 'Double', traits: {"smithy.api#default" => 0})
    EC2InstanceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#EC2InstanceId', name: 'EC2InstanceId', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    Edge = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#Edge', name: 'Edge')
    EdgeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#EdgeList', name: 'EdgeList')
    EdgeStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#EdgeStatistics', name: 'EdgeStatistics')
    EncryptionConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#EncryptionConfig', name: 'EncryptionConfig')
    EncryptionKeyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#EncryptionKeyId', name: 'EncryptionKeyId', traits: {"smithy.api#length" => {"min" => 1, "max" => 3000}})
    EncryptionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.xray#EncryptionStatus', name: 'EncryptionStatus')
    EncryptionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.xray#EncryptionType', name: 'EncryptionType')
    EntitySelectorExpression = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#EntitySelectorExpression', name: 'EntitySelectorExpression', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#ErrorMessage', name: 'ErrorMessage')
    ErrorRootCause = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ErrorRootCause', name: 'ErrorRootCause')
    ErrorRootCauseEntity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ErrorRootCauseEntity', name: 'ErrorRootCauseEntity')
    ErrorRootCauseEntityPath = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#ErrorRootCauseEntityPath', name: 'ErrorRootCauseEntityPath')
    ErrorRootCauseService = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ErrorRootCauseService', name: 'ErrorRootCauseService')
    ErrorRootCauseServices = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#ErrorRootCauseServices', name: 'ErrorRootCauseServices')
    ErrorRootCauses = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#ErrorRootCauses', name: 'ErrorRootCauses')
    ErrorStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ErrorStatistics', name: 'ErrorStatistics')
    EventSummaryText = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#EventSummaryText', name: 'EventSummaryText')
    FaultRootCause = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#FaultRootCause', name: 'FaultRootCause')
    FaultRootCauseEntity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#FaultRootCauseEntity', name: 'FaultRootCauseEntity')
    FaultRootCauseEntityPath = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#FaultRootCauseEntityPath', name: 'FaultRootCauseEntityPath')
    FaultRootCauseService = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#FaultRootCauseService', name: 'FaultRootCauseService')
    FaultRootCauseServices = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#FaultRootCauseServices', name: 'FaultRootCauseServices')
    FaultRootCauses = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#FaultRootCauses', name: 'FaultRootCauses')
    FaultStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#FaultStatistics', name: 'FaultStatistics')
    FilterExpression = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#FilterExpression', name: 'FilterExpression')
    FixedRate = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.xray#FixedRate', name: 'FixedRate', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1}})
    ForecastStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ForecastStatistics', name: 'ForecastStatistics')
    GetEncryptionConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetEncryptionConfigRequest', name: 'GetEncryptionConfigRequest')
    GetEncryptionConfigResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetEncryptionConfigResult', name: 'GetEncryptionConfigResult')
    GetGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetGroupRequest', name: 'GetGroupRequest')
    GetGroupResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetGroupResult', name: 'GetGroupResult')
    GetGroupsNextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#GetGroupsNextToken', name: 'GetGroupsNextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    GetGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetGroupsRequest', name: 'GetGroupsRequest')
    GetGroupsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetGroupsResult', name: 'GetGroupsResult')
    GetIndexingRulesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetIndexingRulesRequest', name: 'GetIndexingRulesRequest')
    GetIndexingRulesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetIndexingRulesResult', name: 'GetIndexingRulesResult')
    GetInsightEventsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.xray#GetInsightEventsMaxResults', name: 'GetInsightEventsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    GetInsightEventsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetInsightEventsRequest', name: 'GetInsightEventsRequest')
    GetInsightEventsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetInsightEventsResult', name: 'GetInsightEventsResult')
    GetInsightImpactGraphRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetInsightImpactGraphRequest', name: 'GetInsightImpactGraphRequest')
    GetInsightImpactGraphResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetInsightImpactGraphResult', name: 'GetInsightImpactGraphResult')
    GetInsightRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetInsightRequest', name: 'GetInsightRequest')
    GetInsightResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetInsightResult', name: 'GetInsightResult')
    GetInsightSummariesMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.xray#GetInsightSummariesMaxResults', name: 'GetInsightSummariesMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    GetInsightSummariesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetInsightSummariesRequest', name: 'GetInsightSummariesRequest')
    GetInsightSummariesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetInsightSummariesResult', name: 'GetInsightSummariesResult')
    GetRetrievedTracesGraphRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetRetrievedTracesGraphRequest', name: 'GetRetrievedTracesGraphRequest')
    GetRetrievedTracesGraphResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetRetrievedTracesGraphResult', name: 'GetRetrievedTracesGraphResult')
    GetSamplingRulesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetSamplingRulesRequest', name: 'GetSamplingRulesRequest')
    GetSamplingRulesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetSamplingRulesResult', name: 'GetSamplingRulesResult')
    GetSamplingStatisticSummariesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetSamplingStatisticSummariesRequest', name: 'GetSamplingStatisticSummariesRequest')
    GetSamplingStatisticSummariesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetSamplingStatisticSummariesResult', name: 'GetSamplingStatisticSummariesResult')
    GetSamplingTargetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetSamplingTargetsRequest', name: 'GetSamplingTargetsRequest')
    GetSamplingTargetsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetSamplingTargetsResult', name: 'GetSamplingTargetsResult')
    GetServiceGraphRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetServiceGraphRequest', name: 'GetServiceGraphRequest')
    GetServiceGraphResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetServiceGraphResult', name: 'GetServiceGraphResult')
    GetTimeSeriesServiceStatisticsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetTimeSeriesServiceStatisticsRequest', name: 'GetTimeSeriesServiceStatisticsRequest')
    GetTimeSeriesServiceStatisticsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetTimeSeriesServiceStatisticsResult', name: 'GetTimeSeriesServiceStatisticsResult')
    GetTraceGraphRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetTraceGraphRequest', name: 'GetTraceGraphRequest')
    GetTraceGraphResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetTraceGraphResult', name: 'GetTraceGraphResult')
    GetTraceSegmentDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetTraceSegmentDestinationRequest', name: 'GetTraceSegmentDestinationRequest')
    GetTraceSegmentDestinationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetTraceSegmentDestinationResult', name: 'GetTraceSegmentDestinationResult')
    GetTraceSummariesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetTraceSummariesRequest', name: 'GetTraceSummariesRequest')
    GetTraceSummariesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GetTraceSummariesResult', name: 'GetTraceSummariesResult')
    GraphLink = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GraphLink', name: 'GraphLink')
    Group = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#Group', name: 'Group')
    GroupARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#GroupARN', name: 'GroupARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 400}})
    GroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#GroupName', name: 'GroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    GroupSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#GroupSummary', name: 'GroupSummary')
    GroupSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#GroupSummaryList', name: 'GroupSummaryList')
    HTTPMethod = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#HTTPMethod', name: 'HTTPMethod', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    Histogram = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#Histogram', name: 'Histogram')
    HistogramEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#HistogramEntry', name: 'HistogramEntry')
    Host = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#Host', name: 'Host', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    Hostname = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#Hostname', name: 'Hostname', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    Http = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#Http', name: 'Http')
    IndexingRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#IndexingRule', name: 'IndexingRule')
    IndexingRuleList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#IndexingRuleList', name: 'IndexingRuleList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    IndexingRuleValue = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.xray#IndexingRuleValue', name: 'IndexingRuleValue')
    IndexingRuleValueUpdate = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.xray#IndexingRuleValueUpdate', name: 'IndexingRuleValueUpdate')
    Insight = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#Insight', name: 'Insight')
    InsightCategory = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.xray#InsightCategory', name: 'InsightCategory')
    InsightCategoryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#InsightCategoryList', name: 'InsightCategoryList')
    InsightEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#InsightEvent', name: 'InsightEvent')
    InsightEventList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#InsightEventList', name: 'InsightEventList')
    InsightId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#InsightId', name: 'InsightId', traits: {"smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$"})
    InsightImpactGraphEdge = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#InsightImpactGraphEdge', name: 'InsightImpactGraphEdge')
    InsightImpactGraphEdgeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#InsightImpactGraphEdgeList', name: 'InsightImpactGraphEdgeList')
    InsightImpactGraphService = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#InsightImpactGraphService', name: 'InsightImpactGraphService')
    InsightImpactGraphServiceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#InsightImpactGraphServiceList', name: 'InsightImpactGraphServiceList')
    InsightState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.xray#InsightState', name: 'InsightState')
    InsightStateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#InsightStateList', name: 'InsightStateList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    InsightSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#InsightSummary', name: 'InsightSummary')
    InsightSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#InsightSummaryList', name: 'InsightSummaryList')
    InsightSummaryText = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#InsightSummaryText', name: 'InsightSummaryText')
    InsightsConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#InsightsConfiguration', name: 'InsightsConfiguration')
    InstanceIdDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#InstanceIdDetail', name: 'InstanceIdDetail')
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.xray#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    InvalidPolicyRevisionIdException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#InvalidPolicyRevisionIdException', name: 'InvalidPolicyRevisionIdException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client"})
    LinksList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#LinksList', name: 'LinksList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ListResourcePoliciesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ListResourcePoliciesRequest', name: 'ListResourcePoliciesRequest')
    ListResourcePoliciesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ListResourcePoliciesResult', name: 'ListResourcePoliciesResult')
    ListRetrievedTracesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ListRetrievedTracesRequest', name: 'ListRetrievedTracesRequest')
    ListRetrievedTracesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ListRetrievedTracesResult', name: 'ListRetrievedTracesResult')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    LockoutPreventionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#LockoutPreventionException', name: 'LockoutPreventionException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MalformedPolicyDocumentException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#MalformedPolicyDocumentException', name: 'MalformedPolicyDocumentException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NullableBoolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.xray#NullableBoolean', name: 'NullableBoolean')
    NullableDouble = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.xray#NullableDouble', name: 'NullableDouble')
    NullableInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.xray#NullableInteger', name: 'NullableInteger')
    NullableLong = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.xray#NullableLong', name: 'NullableLong')
    PolicyCountLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#PolicyCountLimitExceededException', name: 'PolicyCountLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PolicyDocument = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#PolicyDocument', name: 'PolicyDocument')
    PolicyName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#PolicyName', name: 'PolicyName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w+=,.@-]+$"})
    PolicyRevisionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#PolicyRevisionId', name: 'PolicyRevisionId')
    PolicySizeLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#PolicySizeLimitExceededException', name: 'PolicySizeLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Priority = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.xray#Priority', name: 'Priority', traits: {"smithy.api#range" => {"min" => 1, "max" => 9999}})
    ProbabilisticRuleValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ProbabilisticRuleValue', name: 'ProbabilisticRuleValue')
    ProbabilisticRuleValueUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ProbabilisticRuleValueUpdate', name: 'ProbabilisticRuleValueUpdate')
    PutEncryptionConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#PutEncryptionConfigRequest', name: 'PutEncryptionConfigRequest')
    PutEncryptionConfigResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#PutEncryptionConfigResult', name: 'PutEncryptionConfigResult')
    PutResourcePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#PutResourcePolicyRequest', name: 'PutResourcePolicyRequest')
    PutResourcePolicyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#PutResourcePolicyResult', name: 'PutResourcePolicyResult')
    PutTelemetryRecordsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#PutTelemetryRecordsRequest', name: 'PutTelemetryRecordsRequest')
    PutTelemetryRecordsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#PutTelemetryRecordsResult', name: 'PutTelemetryRecordsResult')
    PutTraceSegmentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#PutTraceSegmentsRequest', name: 'PutTraceSegmentsRequest')
    PutTraceSegmentsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#PutTraceSegmentsResult', name: 'PutTraceSegmentsResult')
    RequestCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.xray#RequestCount', name: 'RequestCount', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    RequestImpactStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#RequestImpactStatistics', name: 'RequestImpactStatistics')
    ReservoirSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.xray#ReservoirSize', name: 'ReservoirSize', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    ResourceARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#ResourceARN', name: 'ResourceARN', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    ResourceARNDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ResourceARNDetail', name: 'ResourceARNDetail')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ResourcePolicy', name: 'ResourcePolicy')
    ResourcePolicyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#ResourcePolicyList', name: 'ResourcePolicyList')
    ResourcePolicyNextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#ResourcePolicyNextToken', name: 'ResourcePolicyNextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ResponseTimeRootCause = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ResponseTimeRootCause', name: 'ResponseTimeRootCause')
    ResponseTimeRootCauseEntity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ResponseTimeRootCauseEntity', name: 'ResponseTimeRootCauseEntity')
    ResponseTimeRootCauseEntityPath = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#ResponseTimeRootCauseEntityPath', name: 'ResponseTimeRootCauseEntityPath')
    ResponseTimeRootCauseService = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ResponseTimeRootCauseService', name: 'ResponseTimeRootCauseService')
    ResponseTimeRootCauseServices = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#ResponseTimeRootCauseServices', name: 'ResponseTimeRootCauseServices')
    ResponseTimeRootCauses = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#ResponseTimeRootCauses', name: 'ResponseTimeRootCauses')
    RetrievalStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.xray#RetrievalStatus', name: 'RetrievalStatus')
    RetrievalToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#RetrievalToken', name: 'RetrievalToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 1020}})
    RetrievedService = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#RetrievedService', name: 'RetrievedService')
    RetrievedServicesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#RetrievedServicesList', name: 'RetrievedServicesList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    RetrievedTrace = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#RetrievedTrace', name: 'RetrievedTrace')
    RootCauseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#RootCauseException', name: 'RootCauseException')
    RootCauseExceptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#RootCauseExceptions', name: 'RootCauseExceptions')
    RuleLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#RuleLimitExceededException', name: 'RuleLimitExceededException', traits: {"smithy.api#error" => "client"})
    RuleName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#RuleName', name: 'RuleName', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    SampledCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.xray#SampledCount', name: 'SampledCount', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    SamplingRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#SamplingRule', name: 'SamplingRule')
    SamplingRuleRecord = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#SamplingRuleRecord', name: 'SamplingRuleRecord')
    SamplingRuleRecordList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#SamplingRuleRecordList', name: 'SamplingRuleRecordList')
    SamplingRuleUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#SamplingRuleUpdate', name: 'SamplingRuleUpdate')
    SamplingStatisticSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#SamplingStatisticSummary', name: 'SamplingStatisticSummary')
    SamplingStatisticSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#SamplingStatisticSummaryList', name: 'SamplingStatisticSummaryList')
    SamplingStatisticsDocument = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#SamplingStatisticsDocument', name: 'SamplingStatisticsDocument')
    SamplingStatisticsDocumentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#SamplingStatisticsDocumentList', name: 'SamplingStatisticsDocumentList', traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    SamplingStrategy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#SamplingStrategy', name: 'SamplingStrategy')
    SamplingStrategyName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.xray#SamplingStrategyName', name: 'SamplingStrategyName')
    SamplingTargetDocument = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#SamplingTargetDocument', name: 'SamplingTargetDocument')
    SamplingTargetDocumentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#SamplingTargetDocumentList', name: 'SamplingTargetDocumentList')
    Segment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#Segment', name: 'Segment')
    SegmentDocument = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#SegmentDocument', name: 'SegmentDocument', traits: {"smithy.api#length" => {"min" => 1}})
    SegmentId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#SegmentId', name: 'SegmentId')
    SegmentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#SegmentList', name: 'SegmentList')
    Service = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#Service', name: 'Service')
    ServiceId = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ServiceId', name: 'ServiceId')
    ServiceIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#ServiceIds', name: 'ServiceIds')
    ServiceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#ServiceList', name: 'ServiceList')
    ServiceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#ServiceName', name: 'ServiceName', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    ServiceNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#ServiceNames', name: 'ServiceNames')
    ServiceStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ServiceStatistics', name: 'ServiceStatistics')
    ServiceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#ServiceType', name: 'ServiceType', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    Span = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#Span', name: 'Span')
    SpanDocument = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#SpanDocument', name: 'SpanDocument', traits: {"smithy.api#length" => {"min" => 0, "max" => 204800}})
    SpanId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#SpanId', name: 'SpanId', traits: {"smithy.api#length" => {"min" => 1, "max" => 16}})
    SpanList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#SpanList', name: 'SpanList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    StartTraceRetrievalRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#StartTraceRetrievalRequest', name: 'StartTraceRetrievalRequest')
    StartTraceRetrievalResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#StartTraceRetrievalResult', name: 'StartTraceRetrievalResult')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#String', name: 'String')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TelemetryRecord = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#TelemetryRecord', name: 'TelemetryRecord')
    TelemetryRecordList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#TelemetryRecordList', name: 'TelemetryRecordList')
    ThrottledException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ThrottledException', name: 'ThrottledException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimeRangeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.xray#TimeRangeType', name: 'TimeRangeType')
    TimeSeriesServiceStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#TimeSeriesServiceStatistics', name: 'TimeSeriesServiceStatistics')
    TimeSeriesServiceStatisticsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#TimeSeriesServiceStatisticsList', name: 'TimeSeriesServiceStatisticsList')
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.xray#Timestamp', name: 'Timestamp')
    Token = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#Token', name: 'Token', traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    TooManyTagsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Trace = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#Trace', name: 'Trace')
    TraceAvailabilityZones = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#TraceAvailabilityZones', name: 'TraceAvailabilityZones')
    TraceFormatType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.xray#TraceFormatType', name: 'TraceFormatType')
    TraceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#TraceId', name: 'TraceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 35}})
    TraceIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#TraceIdList', name: 'TraceIdList')
    TraceIdListForRetrieval = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#TraceIdListForRetrieval', name: 'TraceIdListForRetrieval', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    TraceInstanceIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#TraceInstanceIds', name: 'TraceInstanceIds')
    TraceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#TraceList', name: 'TraceList')
    TraceResourceARNs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#TraceResourceARNs', name: 'TraceResourceARNs')
    TraceSegmentDestination = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.xray#TraceSegmentDestination', name: 'TraceSegmentDestination')
    TraceSegmentDestinationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.xray#TraceSegmentDestinationStatus', name: 'TraceSegmentDestinationStatus')
    TraceSegmentDocument = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#TraceSegmentDocument', name: 'TraceSegmentDocument')
    TraceSegmentDocumentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#TraceSegmentDocumentList', name: 'TraceSegmentDocumentList')
    TraceSpanList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#TraceSpanList', name: 'TraceSpanList', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    TraceSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#TraceSummary', name: 'TraceSummary')
    TraceSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#TraceSummaryList', name: 'TraceSummaryList')
    TraceUser = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#TraceUser', name: 'TraceUser')
    TraceUsers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#TraceUsers', name: 'TraceUsers')
    URLPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.xray#URLPath', name: 'URLPath', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    UnprocessedStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#UnprocessedStatistics', name: 'UnprocessedStatistics')
    UnprocessedStatisticsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#UnprocessedStatisticsList', name: 'UnprocessedStatisticsList')
    UnprocessedTraceIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#UnprocessedTraceIdList', name: 'UnprocessedTraceIdList')
    UnprocessedTraceSegment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#UnprocessedTraceSegment', name: 'UnprocessedTraceSegment')
    UnprocessedTraceSegmentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#UnprocessedTraceSegmentList', name: 'UnprocessedTraceSegmentList')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#UpdateGroupRequest', name: 'UpdateGroupRequest')
    UpdateGroupResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#UpdateGroupResult', name: 'UpdateGroupResult')
    UpdateIndexingRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#UpdateIndexingRuleRequest', name: 'UpdateIndexingRuleRequest')
    UpdateIndexingRuleResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#UpdateIndexingRuleResult', name: 'UpdateIndexingRuleResult')
    UpdateSamplingRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#UpdateSamplingRuleRequest', name: 'UpdateSamplingRuleRequest')
    UpdateSamplingRuleResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#UpdateSamplingRuleResult', name: 'UpdateSamplingRuleResult')
    UpdateTraceSegmentDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#UpdateTraceSegmentDestinationRequest', name: 'UpdateTraceSegmentDestinationRequest')
    UpdateTraceSegmentDestinationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#UpdateTraceSegmentDestinationResult', name: 'UpdateTraceSegmentDestinationResult')
    ValueWithServiceIds = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.xray#ValueWithServiceIds', name: 'ValueWithServiceIds')
    ValuesWithServiceIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.xray#ValuesWithServiceIds', name: 'ValuesWithServiceIds')
    Version = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.xray#Version', name: 'Version', traits: {"smithy.api#range" => {"min" => 1}})

    Alias.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The canonical name of the alias.</p>"}))
    Alias.add_member(:names, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasNames, location_name: 'Names', traits: {"smithy.api#documentation" => "<p>A list of names for the alias, including the canonical name.</p>"}))
    Alias.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the alias.</p>"}))
    Alias.type = Types::Alias
    AliasList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Alias)
    AliasNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    AnnotationValue.add_member(:number_value, Types::AnnotationValue::NumberValue, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'NumberValue', traits: {"smithy.api#documentation" => "<p>Value for a Number annotation.</p>"}))
    AnnotationValue.add_member(:boolean_value, Types::AnnotationValue::BooleanValue, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'BooleanValue', traits: {"smithy.api#documentation" => "<p>Value for a Boolean annotation.</p>"}))
    AnnotationValue.add_member(:string_value, Types::AnnotationValue::StringValue, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StringValue', traits: {"smithy.api#documentation" => "<p>Value for a String annotation.</p>"}))
    AnnotationValue.add_member(:unknown, Types::AnnotationValue::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    AnnotationValue.type = Types::AnnotationValue
    Annotations.key = Smithy::Schema::Shapes::ShapeRef.new(shape: AnnotationKey)
    Annotations.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ValuesWithServiceIds)
    AnomalousService.add_member(:service_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'ServiceId'))
    AnomalousService.type = Types::AnomalousService
    AnomalousServiceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalousService)
    AttributeMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKey)
    AttributeMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue)
    AvailabilityZoneDetail.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of a corresponding Availability Zone.</p>"}))
    AvailabilityZoneDetail.type = Types::AvailabilityZoneDetail
    BackendConnectionErrors.add_member(:timeout_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'TimeoutCount', traits: {"smithy.api#documentation" => "<p></p>"}))
    BackendConnectionErrors.add_member(:connection_refused_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'ConnectionRefusedCount', traits: {"smithy.api#documentation" => "<p></p>"}))
    BackendConnectionErrors.add_member(:http_code4_xx_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'HTTPCode4XXCount', traits: {"smithy.api#documentation" => "<p></p>"}))
    BackendConnectionErrors.add_member(:http_code5_xx_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'HTTPCode5XXCount', traits: {"smithy.api#documentation" => "<p></p>"}))
    BackendConnectionErrors.add_member(:unknown_host_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'UnknownHostCount', traits: {"smithy.api#documentation" => "<p></p>"}))
    BackendConnectionErrors.add_member(:other_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'OtherCount', traits: {"smithy.api#documentation" => "<p></p>"}))
    BackendConnectionErrors.type = Types::BackendConnectionErrors
    BatchGetTracesRequest.add_member(:trace_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: TraceIdList, location_name: 'TraceIds', traits: {"smithy.api#documentation" => "<p>Specify the trace IDs of requests for which to retrieve segments.</p>", "smithy.api#required" => {}}))
    BatchGetTracesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Pagination token.</p>"}))
    BatchGetTracesRequest.type = Types::BatchGetTracesRequest
    BatchGetTracesResult.add_member(:traces, Smithy::Schema::Shapes::ShapeRef.new(shape: TraceList, location_name: 'Traces', traits: {"smithy.api#documentation" => "<p>Full traces for the specified requests.</p>"}))
    BatchGetTracesResult.add_member(:unprocessed_trace_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedTraceIdList, location_name: 'UnprocessedTraceIds', traits: {"smithy.api#documentation" => "<p>Trace IDs of requests that haven't been processed.</p>"}))
    BatchGetTracesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Pagination token.</p>"}))
    BatchGetTracesResult.type = Types::BatchGetTracesResult
    CancelTraceRetrievalRequest.add_member(:retrieval_token, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievalToken, location_name: 'RetrievalToken', traits: {"smithy.api#documentation" => "<p>\nRetrieval token.\n</p>", "smithy.api#required" => {}}))
    CancelTraceRetrievalRequest.type = Types::CancelTraceRetrievalRequest
    CancelTraceRetrievalResult.type = Types::CancelTraceRetrievalResult
    CreateGroupRequest.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName', traits: {"smithy.api#documentation" => "<p>The case-sensitive name of the new group. Default is a reserved name and names must\n            be unique.</p>", "smithy.api#required" => {}}))
    CreateGroupRequest.add_member(:filter_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterExpression, location_name: 'FilterExpression', traits: {"smithy.api#documentation" => "<p>The filter expression defining criteria by which to group traces.</p>"}))
    CreateGroupRequest.add_member(:insights_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightsConfiguration, location_name: 'InsightsConfiguration', traits: {"smithy.api#documentation" => "<p>The structure containing configurations related to insights.</p>\n         <ul>\n            <li>\n               <p>The InsightsEnabled boolean can be set to true to enable insights for the\n                    new group or false to disable insights for the new group.</p>\n            </li>\n            <li>\n               <p>The NotificationsEnabled boolean can be set to true to enable insights\n                    notifications for the new group. Notifications may only be enabled on a group\n                    with InsightsEnabled set to true.</p>\n            </li>\n         </ul>"}))
    CreateGroupRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A map that contains one or more tag keys and tag values to attach to an X-Ray group.\n            For more information about ways to use tags, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging Amazon Web Services\n                resources</a> in the <i>Amazon Web Services General Reference</i>.</p>\n         <p>The following restrictions apply to tags:</p>\n         <ul>\n            <li>\n               <p>Maximum number of user-applied tags per resource: 50</p>\n            </li>\n            <li>\n               <p>Maximum tag key length: 128 Unicode characters</p>\n            </li>\n            <li>\n               <p>Maximum tag value length: 256 Unicode characters</p>\n            </li>\n            <li>\n               <p>Valid values for key and value: a-z, A-Z, 0-9, space, and the following characters: _ . :\n                    / = + - and @</p>\n            </li>\n            <li>\n               <p>Tag keys and values are case sensitive.</p>\n            </li>\n            <li>\n               <p>Don't use <code>aws:</code> as a prefix for keys; it's reserved for Amazon Web Services\n                    use.</p>\n            </li>\n         </ul>"}))
    CreateGroupRequest.type = Types::CreateGroupRequest
    CreateGroupResult.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: Group, location_name: 'Group', traits: {"smithy.api#documentation" => "<p>The group that was created. Contains the name of the group that was created, the Amazon Resource Name\n            (ARN) of the group that was generated based on the group name, the filter expression, and the insight\n            configuration that was assigned to the group.</p>"}))
    CreateGroupResult.type = Types::CreateGroupResult
    CreateSamplingRuleRequest.add_member(:sampling_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingRule, location_name: 'SamplingRule', traits: {"smithy.api#documentation" => "<p>The rule definition.</p>", "smithy.api#required" => {}}))
    CreateSamplingRuleRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A map that contains one or more tag keys and tag values to attach to an X-Ray sampling\n         rule. For more information about ways to use tags, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging Amazon Web Services\n            resources</a> in the <i>Amazon Web Services General Reference</i>.</p>\n         <p>The following restrictions apply to tags:</p>\n         <ul>\n            <li>\n               <p>Maximum number of user-applied tags per resource: 50</p>\n            </li>\n            <li>\n               <p>Maximum tag key length: 128 Unicode characters</p>\n            </li>\n            <li>\n               <p>Maximum tag value length: 256 Unicode characters</p>\n            </li>\n            <li>\n               <p>Valid values for key and value: a-z, A-Z, 0-9, space, and the following characters: _ . :\n               / = + - and @</p>\n            </li>\n            <li>\n               <p>Tag keys and values are case sensitive.</p>\n            </li>\n            <li>\n               <p>Don't use <code>aws:</code> as a prefix for keys; it's reserved for Amazon Web Services\n               use.</p>\n            </li>\n         </ul>"}))
    CreateSamplingRuleRequest.type = Types::CreateSamplingRuleRequest
    CreateSamplingRuleResult.add_member(:sampling_rule_record, Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingRuleRecord, location_name: 'SamplingRuleRecord', traits: {"smithy.api#documentation" => "<p>The saved rule definition and metadata.</p>"}))
    CreateSamplingRuleResult.type = Types::CreateSamplingRuleResult
    DeleteGroupRequest.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName', traits: {"smithy.api#documentation" => "<p>The case-sensitive name of the group.</p>"}))
    DeleteGroupRequest.add_member(:group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupARN, location_name: 'GroupARN', traits: {"smithy.api#documentation" => "<p>The ARN of the group that was generated on creation.</p>"}))
    DeleteGroupRequest.type = Types::DeleteGroupRequest
    DeleteGroupResult.type = Types::DeleteGroupResult
    DeleteResourcePolicyRequest.add_member(:policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'PolicyName', traits: {"smithy.api#documentation" => "<p>The name of the resource policy to delete.</p>", "smithy.api#required" => {}}))
    DeleteResourcePolicyRequest.add_member(:policy_revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: 'PolicyRevisionId', traits: {"smithy.api#documentation" => "<p>Specifies a specific policy revision to delete. Provide a <code>PolicyRevisionId</code> to ensure an atomic delete operation. If the provided revision id does \n            not match the latest policy revision id, an <code>InvalidPolicyRevisionIdException</code> exception is returned.\n        </p>"}))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteResourcePolicyResult.type = Types::DeleteResourcePolicyResult
    DeleteSamplingRuleRequest.add_member(:rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RuleName', traits: {"smithy.api#documentation" => "<p>The name of the sampling rule. Specify a rule by either name or ARN, but not both.</p>"}))
    DeleteSamplingRuleRequest.add_member(:rule_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RuleARN', traits: {"smithy.api#documentation" => "<p>The ARN of the sampling rule. Specify a rule by either name or ARN, but not both.</p>"}))
    DeleteSamplingRuleRequest.type = Types::DeleteSamplingRuleRequest
    DeleteSamplingRuleResult.add_member(:sampling_rule_record, Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingRuleRecord, location_name: 'SamplingRuleRecord', traits: {"smithy.api#documentation" => "<p>The deleted rule definition and metadata.</p>"}))
    DeleteSamplingRuleResult.type = Types::DeleteSamplingRuleResult
    Edge.add_member(:reference_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'ReferenceId', traits: {"smithy.api#documentation" => "<p>Identifier of the edge. Unique within a service map.</p>"}))
    Edge.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The start time of the first segment on the edge.</p>"}))
    Edge.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The end time of the last segment on the edge.</p>"}))
    Edge.add_member(:summary_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeStatistics, location_name: 'SummaryStatistics', traits: {"smithy.api#documentation" => "<p>Response statistics for segments on the edge.</p>"}))
    Edge.add_member(:response_time_histogram, Smithy::Schema::Shapes::ShapeRef.new(shape: Histogram, location_name: 'ResponseTimeHistogram', traits: {"smithy.api#documentation" => "<p>A histogram that maps the spread of client response times on an edge. Only populated\n             for synchronous edges.</p>"}))
    Edge.add_member(:aliases, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasList, location_name: 'Aliases', traits: {"smithy.api#documentation" => "<p>Aliases for the edge.</p>"}))
    Edge.add_member(:edge_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EdgeType', traits: {"smithy.api#documentation" => "<p>Describes an asynchronous connection, with a value of <code>link</code>.</p>"}))
    Edge.add_member(:received_event_age_histogram, Smithy::Schema::Shapes::ShapeRef.new(shape: Histogram, location_name: 'ReceivedEventAgeHistogram', traits: {"smithy.api#documentation" => "<p>A histogram that maps the spread of event age when received by consumers. \n      Age is calculated each time an event is received. Only populated when <i>EdgeType</i> is \n      <code>link</code>.</p>"}))
    Edge.type = Types::Edge
    EdgeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Edge)
    EdgeStatistics.add_member(:ok_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'OkCount', traits: {"smithy.api#documentation" => "<p>The number of requests that completed with a 2xx Success status code.</p>"}))
    EdgeStatistics.add_member(:error_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorStatistics, location_name: 'ErrorStatistics', traits: {"smithy.api#documentation" => "<p>Information about requests that failed with a 4xx Client Error status code.</p>"}))
    EdgeStatistics.add_member(:fault_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: FaultStatistics, location_name: 'FaultStatistics', traits: {"smithy.api#documentation" => "<p>Information about requests that failed with a 5xx Server Error status code.</p>"}))
    EdgeStatistics.add_member(:total_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'TotalCount', traits: {"smithy.api#documentation" => "<p>The total number of completed requests.</p>"}))
    EdgeStatistics.add_member(:total_response_time, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'TotalResponseTime', traits: {"smithy.api#documentation" => "<p>The aggregate response time of completed requests.</p>"}))
    EdgeStatistics.type = Types::EdgeStatistics
    EncryptionConfig.add_member(:key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KeyId', traits: {"smithy.api#documentation" => "<p>The ID of the KMS key used for encryption, if applicable.</p>"}))
    EncryptionConfig.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The encryption status. While the status is <code>UPDATING</code>, X-Ray may encrypt data with a combination of the new and old settings.</p>"}))
    EncryptionConfig.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of encryption. Set to <code>KMS</code> for encryption with KMS keys. Set to <code>NONE</code> for\n      default encryption.</p>"}))
    EncryptionConfig.type = Types::EncryptionConfig
    EncryptionStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    EncryptionStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    EncryptionType.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    EncryptionType.add_member(:kms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KMS', traits: {"smithy.api#enumValue" => "KMS"}))
    ErrorRootCause.add_member(:services, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorRootCauseServices, location_name: 'Services', traits: {"smithy.api#documentation" => "<p>A list of services corresponding to an error. A service identifies a segment and it\n      contains a name, account ID, type, and inferred flag.</p>"}))
    ErrorRootCause.add_member(:client_impacting, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'ClientImpacting', traits: {"smithy.api#documentation" => "<p>A flag that denotes that the root cause impacts the trace client.</p>"}))
    ErrorRootCause.type = Types::ErrorRootCause
    ErrorRootCauseEntity.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the entity.</p>"}))
    ErrorRootCauseEntity.add_member(:exceptions, Smithy::Schema::Shapes::ShapeRef.new(shape: RootCauseExceptions, location_name: 'Exceptions', traits: {"smithy.api#documentation" => "<p>The types and messages of the exceptions.</p>"}))
    ErrorRootCauseEntity.add_member(:remote, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'Remote', traits: {"smithy.api#documentation" => "<p>A flag that denotes a remote subsegment.</p>"}))
    ErrorRootCauseEntity.type = Types::ErrorRootCauseEntity
    ErrorRootCauseEntityPath.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorRootCauseEntity)
    ErrorRootCauseService.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The service name.</p>"}))
    ErrorRootCauseService.add_member(:names, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNames, location_name: 'Names', traits: {"smithy.api#documentation" => "<p>A collection of associated service names.</p>"}))
    ErrorRootCauseService.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type associated to the service.</p>"}))
    ErrorRootCauseService.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The account ID associated to the service.</p>"}))
    ErrorRootCauseService.add_member(:entity_path, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorRootCauseEntityPath, location_name: 'EntityPath', traits: {"smithy.api#documentation" => "<p>The path of root cause entities found on the service. </p>"}))
    ErrorRootCauseService.add_member(:inferred, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'Inferred', traits: {"smithy.api#documentation" => "<p>A Boolean value indicating if the service is inferred from the trace.</p>"}))
    ErrorRootCauseService.type = Types::ErrorRootCauseService
    ErrorRootCauseServices.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorRootCauseService)
    ErrorRootCauses.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorRootCause)
    ErrorStatistics.add_member(:throttle_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'ThrottleCount', traits: {"smithy.api#documentation" => "<p>The number of requests that failed with a 429 throttling status code.</p>"}))
    ErrorStatistics.add_member(:other_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'OtherCount', traits: {"smithy.api#documentation" => "<p>The number of requests that failed with untracked 4xx Client Error status\n      codes.</p>"}))
    ErrorStatistics.add_member(:total_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'TotalCount', traits: {"smithy.api#documentation" => "<p>The total number of requests that failed with a 4xx Client Error status code.</p>"}))
    ErrorStatistics.type = Types::ErrorStatistics
    FaultRootCause.add_member(:services, Smithy::Schema::Shapes::ShapeRef.new(shape: FaultRootCauseServices, location_name: 'Services', traits: {"smithy.api#documentation" => "<p>A list of corresponding services. A service identifies a segment and it contains a\n      name, account ID, type, and inferred flag.</p>"}))
    FaultRootCause.add_member(:client_impacting, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'ClientImpacting', traits: {"smithy.api#documentation" => "<p>A flag that denotes that the root cause impacts the trace client.</p>"}))
    FaultRootCause.type = Types::FaultRootCause
    FaultRootCauseEntity.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the entity.</p>"}))
    FaultRootCauseEntity.add_member(:exceptions, Smithy::Schema::Shapes::ShapeRef.new(shape: RootCauseExceptions, location_name: 'Exceptions', traits: {"smithy.api#documentation" => "<p>The types and messages of the exceptions.</p>"}))
    FaultRootCauseEntity.add_member(:remote, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'Remote', traits: {"smithy.api#documentation" => "<p>A flag that denotes a remote subsegment.</p>"}))
    FaultRootCauseEntity.type = Types::FaultRootCauseEntity
    FaultRootCauseEntityPath.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FaultRootCauseEntity)
    FaultRootCauseService.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The service name.</p>"}))
    FaultRootCauseService.add_member(:names, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNames, location_name: 'Names', traits: {"smithy.api#documentation" => "<p>A collection of associated service names.</p>"}))
    FaultRootCauseService.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type associated to the service.</p>"}))
    FaultRootCauseService.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The account ID associated to the service.</p>"}))
    FaultRootCauseService.add_member(:entity_path, Smithy::Schema::Shapes::ShapeRef.new(shape: FaultRootCauseEntityPath, location_name: 'EntityPath', traits: {"smithy.api#documentation" => "<p>The path of root cause entities found on the service. </p>"}))
    FaultRootCauseService.add_member(:inferred, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'Inferred', traits: {"smithy.api#documentation" => "<p>A Boolean value indicating if the service is inferred from the trace.</p>"}))
    FaultRootCauseService.type = Types::FaultRootCauseService
    FaultRootCauseServices.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FaultRootCauseService)
    FaultRootCauses.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FaultRootCause)
    FaultStatistics.add_member(:other_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'OtherCount', traits: {"smithy.api#documentation" => "<p>The number of requests that failed with untracked 5xx Server Error status\n      codes.</p>"}))
    FaultStatistics.add_member(:total_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'TotalCount', traits: {"smithy.api#documentation" => "<p>The total number of requests that failed with a 5xx Server Error status code.</p>"}))
    FaultStatistics.type = Types::FaultStatistics
    ForecastStatistics.add_member(:fault_count_high, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'FaultCountHigh', traits: {"smithy.api#documentation" => "<p>The upper limit of fault counts for a service.</p>"}))
    ForecastStatistics.add_member(:fault_count_low, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'FaultCountLow', traits: {"smithy.api#documentation" => "<p>The lower limit of fault counts for a service.</p>"}))
    ForecastStatistics.type = Types::ForecastStatistics
    GetEncryptionConfigRequest.type = Types::GetEncryptionConfigRequest
    GetEncryptionConfigResult.add_member(:encryption_config, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfig, location_name: 'EncryptionConfig', traits: {"smithy.api#documentation" => "<p>The encryption configuration document.</p>"}))
    GetEncryptionConfigResult.type = Types::GetEncryptionConfigResult
    GetGroupRequest.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName', traits: {"smithy.api#documentation" => "<p>The case-sensitive name of the group.</p>"}))
    GetGroupRequest.add_member(:group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupARN, location_name: 'GroupARN', traits: {"smithy.api#documentation" => "<p>The ARN of the group that was generated on creation.</p>"}))
    GetGroupRequest.type = Types::GetGroupRequest
    GetGroupResult.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: Group, location_name: 'Group', traits: {"smithy.api#documentation" => "<p>The group that was requested. Contains the name of the group, the ARN of the group,\n            the filter expression, and the insight configuration assigned to the group.</p>"}))
    GetGroupResult.type = Types::GetGroupResult
    GetGroupsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupsNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Pagination token.</p>"}))
    GetGroupsRequest.type = Types::GetGroupsRequest
    GetGroupsResult.add_member(:groups, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupSummaryList, location_name: 'Groups', traits: {"smithy.api#documentation" => "<p>The collection of all active groups.</p>"}))
    GetGroupsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Pagination token.</p>"}))
    GetGroupsResult.type = Types::GetGroupsResult
    GetIndexingRulesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\nSpecify the pagination token returned by a previous request to retrieve the next page of indexes.\n  \n  \n</p>"}))
    GetIndexingRulesRequest.type = Types::GetIndexingRulesRequest
    GetIndexingRulesResult.add_member(:indexing_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexingRuleList, location_name: 'IndexingRules', traits: {"smithy.api#documentation" => "<p>\n    Retrieves all indexing rules.</p>"}))
    GetIndexingRulesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n      Specify the pagination token returned by a previous request to retrieve the next page of indexes.\n    </p>"}))
    GetIndexingRulesResult.type = Types::GetIndexingRulesResult
    GetInsightEventsRequest.add_member(:insight_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'InsightId', traits: {"smithy.api#documentation" => "<p>The insight's unique identifier. Use the GetInsightSummaries action to retrieve an InsightId.</p>", "smithy.api#required" => {}}))
    GetInsightEventsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightEventsMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Used to retrieve at most the specified value of events.</p>"}))
    GetInsightEventsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token returned by a previous request to retrieve the next page of events. </p>"}))
    GetInsightEventsRequest.type = Types::GetInsightEventsRequest
    GetInsightEventsResult.add_member(:insight_events, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightEventList, location_name: 'InsightEvents', traits: {"smithy.api#documentation" => "<p>A detailed description of the event. This includes the time of the event, client and\n         root cause impact statistics, and the top anomalous service at the time of the\n         event.</p>"}))
    GetInsightEventsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Use this token to retrieve the next page of insight events.</p>"}))
    GetInsightEventsResult.type = Types::GetInsightEventsResult
    GetInsightImpactGraphRequest.add_member(:insight_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'InsightId', traits: {"smithy.api#documentation" => "<p>The insight's unique identifier. Use the GetInsightSummaries action to retrieve an InsightId.</p>", "smithy.api#required" => {}}))
    GetInsightImpactGraphRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The estimated start time of the insight, in Unix time seconds. The StartTime is inclusive of the value\n         provided and can't be more than 30 days old.</p>", "smithy.api#required" => {}}))
    GetInsightImpactGraphRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The estimated end time of the insight, in Unix time seconds. The EndTime is exclusive of the value provided.\n         The time range between the start time and end time can't be more than six hours. </p>", "smithy.api#required" => {}}))
    GetInsightImpactGraphRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token returned by a previous request to retrieve the next page of results. </p>"}))
    GetInsightImpactGraphRequest.type = Types::GetInsightImpactGraphRequest
    GetInsightImpactGraphResult.add_member(:insight_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'InsightId', traits: {"smithy.api#documentation" => "<p>The insight's unique identifier.</p>"}))
    GetInsightImpactGraphResult.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The provided start time.</p>"}))
    GetInsightImpactGraphResult.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The provided end time. </p>"}))
    GetInsightImpactGraphResult.add_member(:service_graph_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ServiceGraphStartTime', traits: {"smithy.api#documentation" => "<p>The time, in Unix seconds, at which the service graph started.</p>"}))
    GetInsightImpactGraphResult.add_member(:service_graph_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ServiceGraphEndTime', traits: {"smithy.api#documentation" => "<p>The time, in Unix seconds, at which the service graph ended.</p>"}))
    GetInsightImpactGraphResult.add_member(:services, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightImpactGraphServiceList, location_name: 'Services', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services instrumented services related to the insight.</p>"}))
    GetInsightImpactGraphResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Pagination token.</p>"}))
    GetInsightImpactGraphResult.type = Types::GetInsightImpactGraphResult
    GetInsightRequest.add_member(:insight_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'InsightId', traits: {"smithy.api#documentation" => "<p>The insight's unique identifier. Use the GetInsightSummaries action to retrieve an InsightId.</p>", "smithy.api#required" => {}}))
    GetInsightRequest.type = Types::GetInsightRequest
    GetInsightResult.add_member(:insight, Smithy::Schema::Shapes::ShapeRef.new(shape: Insight, location_name: 'Insight', traits: {"smithy.api#documentation" => "<p>The summary information of an insight.</p>"}))
    GetInsightResult.type = Types::GetInsightResult
    GetInsightSummariesRequest.add_member(:states, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightStateList, location_name: 'States', traits: {"smithy.api#documentation" => "<p>The list of insight states. </p>"}))
    GetInsightSummariesRequest.add_member(:group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupARN, location_name: 'GroupARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the group. Required if the GroupName isn't provided.</p>"}))
    GetInsightSummariesRequest.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName', traits: {"smithy.api#documentation" => "<p>The name of the group. Required if the GroupARN isn't provided.</p>"}))
    GetInsightSummariesRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The beginning of the time frame in which the insights started. The start time can't be more than 30 days\n         old.</p>", "smithy.api#required" => {}}))
    GetInsightSummariesRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The end of the time frame in which the insights ended. The end time can't be more than 30 days old.</p>", "smithy.api#required" => {}}))
    GetInsightSummariesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightSummariesMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to display.</p>"}))
    GetInsightSummariesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Pagination token.</p>"}))
    GetInsightSummariesRequest.type = Types::GetInsightSummariesRequest
    GetInsightSummariesResult.add_member(:insight_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightSummaryList, location_name: 'InsightSummaries', traits: {"smithy.api#documentation" => "<p>The summary of each insight within the group matching the provided filters. The summary\n         contains the InsightID, start and end time, the root cause service, the root cause and\n         client impact statistics, the top anomalous services, and the status of the insight.</p>"}))
    GetInsightSummariesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Pagination token.</p>"}))
    GetInsightSummariesResult.type = Types::GetInsightSummariesResult
    GetRetrievedTracesGraphRequest.add_member(:retrieval_token, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievalToken, location_name: 'RetrievalToken', traits: {"smithy.api#documentation" => "<p>\n    Retrieval token.\n  </p>", "smithy.api#required" => {}}))
    GetRetrievedTracesGraphRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n    Specify the pagination token returned by a previous request to retrieve the next page of indexes.\n    \n    \n  </p>"}))
    GetRetrievedTracesGraphRequest.type = Types::GetRetrievedTracesGraphRequest
    GetRetrievedTracesGraphResult.add_member(:retrieval_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievalStatus, location_name: 'RetrievalStatus', traits: {"smithy.api#documentation" => "<p>\nStatus of the retrieval.\n</p>"}))
    GetRetrievedTracesGraphResult.add_member(:services, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievedServicesList, location_name: 'Services', traits: {"smithy.api#documentation" => "<p>\nRetrieved services.\n</p>"}))
    GetRetrievedTracesGraphResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n    Specify the pagination token returned by a previous request to retrieve the next page of indexes.\n    \n    \n  </p>"}))
    GetRetrievedTracesGraphResult.type = Types::GetRetrievedTracesGraphResult
    GetSamplingRulesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Pagination token.</p>"}))
    GetSamplingRulesRequest.type = Types::GetSamplingRulesRequest
    GetSamplingRulesResult.add_member(:sampling_rule_records, Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingRuleRecordList, location_name: 'SamplingRuleRecords', traits: {"smithy.api#documentation" => "<p>Rule definitions and metadata.</p>"}))
    GetSamplingRulesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Pagination token.</p>"}))
    GetSamplingRulesResult.type = Types::GetSamplingRulesResult
    GetSamplingStatisticSummariesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Pagination token.</p>"}))
    GetSamplingStatisticSummariesRequest.type = Types::GetSamplingStatisticSummariesRequest
    GetSamplingStatisticSummariesResult.add_member(:sampling_statistic_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingStatisticSummaryList, location_name: 'SamplingStatisticSummaries', traits: {"smithy.api#documentation" => "<p>Information about the number of requests instrumented for each sampling\n         rule.</p>"}))
    GetSamplingStatisticSummariesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Pagination token.</p>"}))
    GetSamplingStatisticSummariesResult.type = Types::GetSamplingStatisticSummariesResult
    GetSamplingTargetsRequest.add_member(:sampling_statistics_documents, Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingStatisticsDocumentList, location_name: 'SamplingStatisticsDocuments', traits: {"smithy.api#documentation" => "<p>Information about rules that the service is using to sample requests.</p>", "smithy.api#required" => {}}))
    GetSamplingTargetsRequest.type = Types::GetSamplingTargetsRequest
    GetSamplingTargetsResult.add_member(:sampling_target_documents, Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingTargetDocumentList, location_name: 'SamplingTargetDocuments', traits: {"smithy.api#documentation" => "<p>Updated rules that the service should use to sample requests.</p>"}))
    GetSamplingTargetsResult.add_member(:last_rule_modification, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastRuleModification', traits: {"smithy.api#documentation" => "<p>The last time a user changed the sampling rule configuration. If\n         the sampling rule configuration changed since the service last retrieved it, the service\n         should call <a href=\"https://docs.aws.amazon.com/xray/latest/api/API_GetSamplingRules.html\">GetSamplingRules</a> to get the latest version.</p>"}))
    GetSamplingTargetsResult.add_member(:unprocessed_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedStatisticsList, location_name: 'UnprocessedStatistics', traits: {"smithy.api#documentation" => "<p>Information about <a href=\"https://docs.aws.amazon.com/xray/latest/api/API_SamplingStatisticsDocument.html\">SamplingStatisticsDocument</a> that X-Ray could not\n         process.</p>"}))
    GetSamplingTargetsResult.type = Types::GetSamplingTargetsResult
    GetServiceGraphRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The start of the time frame for which to generate a graph.</p>", "smithy.api#required" => {}}))
    GetServiceGraphRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The end of the timeframe for which to generate a graph.</p>", "smithy.api#required" => {}}))
    GetServiceGraphRequest.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName', traits: {"smithy.api#documentation" => "<p>The name of a group based on which you want to generate a graph.</p>"}))
    GetServiceGraphRequest.add_member(:group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupARN, location_name: 'GroupARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a group based on which you want to generate a graph.</p>"}))
    GetServiceGraphRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Pagination token.</p>"}))
    GetServiceGraphRequest.type = Types::GetServiceGraphRequest
    GetServiceGraphResult.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The start of the time frame for which the graph was generated.</p>"}))
    GetServiceGraphResult.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The end of the time frame for which the graph was generated.</p>"}))
    GetServiceGraphResult.add_member(:services, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceList, location_name: 'Services', traits: {"smithy.api#documentation" => "<p>The services that have processed a traced request during the specified time\n      frame.</p>"}))
    GetServiceGraphResult.add_member(:contains_old_group_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ContainsOldGroupVersions', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A flag indicating whether the group's filter expression has been consistent, or\n      if the returned service graph may show traces from an older version of the group's filter\n      expression.</p>"}))
    GetServiceGraphResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Pagination token.</p>"}))
    GetServiceGraphResult.type = Types::GetServiceGraphResult
    GetTimeSeriesServiceStatisticsRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The start of the time frame for which to aggregate statistics.</p>", "smithy.api#required" => {}}))
    GetTimeSeriesServiceStatisticsRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The end of the time frame for which to aggregate statistics.</p>", "smithy.api#required" => {}}))
    GetTimeSeriesServiceStatisticsRequest.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName', traits: {"smithy.api#documentation" => "<p>The case-sensitive name of the group for which to pull statistics from.</p>"}))
    GetTimeSeriesServiceStatisticsRequest.add_member(:group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupARN, location_name: 'GroupARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the group for which to pull statistics from.</p>"}))
    GetTimeSeriesServiceStatisticsRequest.add_member(:entity_selector_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: EntitySelectorExpression, location_name: 'EntitySelectorExpression', traits: {"smithy.api#documentation" => "<p>A filter expression defining entities that will be aggregated for statistics.\n            Supports ID, service, and edge functions. If no selector expression is specified, edge\n            statistics are returned. </p>"}))
    GetTimeSeriesServiceStatisticsRequest.add_member(:period, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'Period', traits: {"smithy.api#documentation" => "<p>Aggregation period in seconds.</p>"}))
    GetTimeSeriesServiceStatisticsRequest.add_member(:forecast_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'ForecastStatistics', traits: {"smithy.api#documentation" => "<p>The forecasted high and low fault count values. Forecast enabled requests require the\n            EntitySelectorExpression ID be provided.</p>"}))
    GetTimeSeriesServiceStatisticsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Pagination token.</p>"}))
    GetTimeSeriesServiceStatisticsRequest.type = Types::GetTimeSeriesServiceStatisticsRequest
    GetTimeSeriesServiceStatisticsResult.add_member(:time_series_service_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeSeriesServiceStatisticsList, location_name: 'TimeSeriesServiceStatistics', traits: {"smithy.api#documentation" => "<p>The collection of statistics.</p>"}))
    GetTimeSeriesServiceStatisticsResult.add_member(:contains_old_group_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ContainsOldGroupVersions', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A flag indicating whether or not a group's filter expression has been consistent, or if a returned\n            aggregation might show statistics from an older version of the group's filter expression.</p>"}))
    GetTimeSeriesServiceStatisticsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Pagination token.</p>"}))
    GetTimeSeriesServiceStatisticsResult.type = Types::GetTimeSeriesServiceStatisticsResult
    GetTraceGraphRequest.add_member(:trace_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: TraceIdList, location_name: 'TraceIds', traits: {"smithy.api#documentation" => "<p>Trace IDs of requests for which to generate a service graph.</p>", "smithy.api#required" => {}}))
    GetTraceGraphRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Pagination token.</p>"}))
    GetTraceGraphRequest.type = Types::GetTraceGraphRequest
    GetTraceGraphResult.add_member(:services, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceList, location_name: 'Services', traits: {"smithy.api#documentation" => "<p>The services that have processed one of the specified requests.</p>"}))
    GetTraceGraphResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Pagination token.</p>"}))
    GetTraceGraphResult.type = Types::GetTraceGraphResult
    GetTraceSegmentDestinationRequest.type = Types::GetTraceSegmentDestinationRequest
    GetTraceSegmentDestinationResult.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: TraceSegmentDestination, location_name: 'Destination', traits: {"smithy.api#documentation" => "<p>\nRetrieves the current destination.\n</p>"}))
    GetTraceSegmentDestinationResult.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TraceSegmentDestinationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>\n    Status of the retrieval.\n  </p>"}))
    GetTraceSegmentDestinationResult.type = Types::GetTraceSegmentDestinationResult
    GetTraceSummariesRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The start of the time frame for which to retrieve traces.</p>", "smithy.api#required" => {}}))
    GetTraceSummariesRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The end of the time frame for which to retrieve traces.</p>", "smithy.api#required" => {}}))
    GetTraceSummariesRequest.add_member(:time_range_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeRangeType, location_name: 'TimeRangeType', traits: {"smithy.api#documentation" => "<p>Query trace summaries by TraceId (trace start time), Event (trace update time), or Service (trace segment end time).</p>"}))
    GetTraceSummariesRequest.add_member(:sampling, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'Sampling', traits: {"smithy.api#documentation" => "<p>Set to <code>true</code> to get summaries for only a subset of available\n      traces.</p>"}))
    GetTraceSummariesRequest.add_member(:sampling_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingStrategy, location_name: 'SamplingStrategy', traits: {"smithy.api#documentation" => "<p>A parameter to indicate whether to enable sampling on trace summaries. Input parameters are Name and\n            Value.</p>"}))
    GetTraceSummariesRequest.add_member(:filter_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterExpression, location_name: 'FilterExpression', traits: {"smithy.api#documentation" => "<p>Specify a filter expression to retrieve trace summaries for services or requests that\n      meet certain requirements.</p>"}))
    GetTraceSummariesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token returned by a previous request to retrieve the next page\n      of results.</p>"}))
    GetTraceSummariesRequest.type = Types::GetTraceSummariesRequest
    GetTraceSummariesResult.add_member(:trace_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: TraceSummaryList, location_name: 'TraceSummaries', traits: {"smithy.api#documentation" => "<p>Trace IDs and annotations for traces that were found in the specified time\n      frame.</p>"}))
    GetTraceSummariesResult.add_member(:approximate_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ApproximateTime', traits: {"smithy.api#documentation" => "<p>The start time of this page of results.</p>"}))
    GetTraceSummariesResult.add_member(:traces_processed_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'TracesProcessedCount', traits: {"smithy.api#documentation" => "<p>The total number of traces processed, including traces that did not match the specified\n      filter expression.</p>"}))
    GetTraceSummariesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the requested time frame contained more than one page of results, you can use this token to retrieve the\n      next page. The first page contains the most recent results, closest to the end of the time frame.</p>"}))
    GetTraceSummariesResult.type = Types::GetTraceSummariesResult
    GraphLink.add_member(:reference_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReferenceType', traits: {"smithy.api#documentation" => "<p>\nRelationship of a trace to the corresponding service.\n</p>"}))
    GraphLink.add_member(:source_trace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceTraceId', traits: {"smithy.api#documentation" => "<p>\nSource trace of a link relationship.\n</p>"}))
    GraphLink.add_member(:destination_trace_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: TraceIdList, location_name: 'DestinationTraceIds', traits: {"smithy.api#documentation" => "<p>\nDestination traces of a link relationship.\n</p>"}))
    GraphLink.type = Types::GraphLink
    Group.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupName', traits: {"smithy.api#documentation" => "<p>The unique case-sensitive name of the group.</p>"}))
    Group.add_member(:group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the group generated based on the GroupName.</p>"}))
    Group.add_member(:filter_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FilterExpression', traits: {"smithy.api#documentation" => "<p>The filter expression defining the parameters to include traces.</p>"}))
    Group.add_member(:insights_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightsConfiguration, location_name: 'InsightsConfiguration', traits: {"smithy.api#documentation" => "<p>The structure containing configurations related to insights.</p>\n         <ul>\n            <li>\n               <p>The InsightsEnabled boolean can be set to true to enable insights for the\n                    group or false to disable insights for the group.</p>\n            </li>\n            <li>\n               <p>The NotificationsEnabled boolean can be set to true to enable insights\n                    notifications through Amazon EventBridge for the group.</p>\n            </li>\n         </ul>"}))
    Group.type = Types::Group
    GroupSummary.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupName', traits: {"smithy.api#documentation" => "<p>The unique case-sensitive name of the group.</p>"}))
    GroupSummary.add_member(:group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupARN', traits: {"smithy.api#documentation" => "<p>The ARN of the group generated based on the GroupName.</p>"}))
    GroupSummary.add_member(:filter_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FilterExpression', traits: {"smithy.api#documentation" => "<p>The filter expression defining the parameters to include traces.</p>"}))
    GroupSummary.add_member(:insights_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightsConfiguration, location_name: 'InsightsConfiguration', traits: {"smithy.api#documentation" => "<p>The structure containing configurations related to insights.</p>\n         <ul>\n            <li>\n               <p>The InsightsEnabled boolean can be set to true to enable insights for the\n                    group or false to disable insights for the group.</p>\n            </li>\n            <li>\n               <p>The NotificationsEnabled boolean can be set to true to enable insights notifications.\n                    Notifications can only be enabled on a group with InsightsEnabled set to true.</p>\n            </li>\n         </ul>"}))
    GroupSummary.type = Types::GroupSummary
    GroupSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GroupSummary)
    Histogram.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HistogramEntry)
    HistogramEntry.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'Value', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The value of the entry.</p>"}))
    HistogramEntry.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Count', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The prevalence of the entry.</p>"}))
    HistogramEntry.type = Types::HistogramEntry
    Http.add_member(:http_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HttpURL', traits: {"smithy.api#documentation" => "<p>The request URL.</p>"}))
    Http.add_member(:http_status, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'HttpStatus', traits: {"smithy.api#documentation" => "<p>The response status.</p>"}))
    Http.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HttpMethod', traits: {"smithy.api#documentation" => "<p>The request method.</p>"}))
    Http.add_member(:user_agent, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserAgent', traits: {"smithy.api#documentation" => "<p>The request's user agent string.</p>"}))
    Http.add_member(:client_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClientIp', traits: {"smithy.api#documentation" => "<p>The IP address of the requestor.</p>"}))
    Http.type = Types::Http
    IndexingRule.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>\n  The name of the indexing rule.\n</p>"}))
    IndexingRule.add_member(:modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ModifiedAt', traits: {"smithy.api#documentation" => "<p>\nDisplays when the rule was last modified, in Unix time seconds.\n</p>"}))
    IndexingRule.add_member(:rule, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexingRuleValue, location_name: 'Rule', traits: {"smithy.api#documentation" => "<p>\n  The indexing rule.\n</p>"}))
    IndexingRule.type = Types::IndexingRule
    IndexingRuleList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IndexingRule)
    IndexingRuleValue.add_member(:probabilistic, Types::IndexingRuleValue::Probabilistic, Smithy::Schema::Shapes::ShapeRef.new(shape: ProbabilisticRuleValue, location_name: 'Probabilistic', traits: {"smithy.api#documentation" => "<p>\n  Indexing rule configuration that is used to probabilistically  sample traceIds.\n</p>"}))
    IndexingRuleValue.add_member(:unknown, Types::IndexingRuleValue::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    IndexingRuleValue.type = Types::IndexingRuleValue
    IndexingRuleValueUpdate.add_member(:probabilistic, Types::IndexingRuleValueUpdate::Probabilistic, Smithy::Schema::Shapes::ShapeRef.new(shape: ProbabilisticRuleValueUpdate, location_name: 'Probabilistic', traits: {"smithy.api#documentation" => "<p>\n    Indexing rule configuration that is used to probabilistically  sample traceIds.\n  </p>"}))
    IndexingRuleValueUpdate.add_member(:unknown, Types::IndexingRuleValueUpdate::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    IndexingRuleValueUpdate.type = Types::IndexingRuleValueUpdate
    Insight.add_member(:insight_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'InsightId', traits: {"smithy.api#documentation" => "<p>The insights unique identifier. </p>"}))
    Insight.add_member(:group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupARN, location_name: 'GroupARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the group that the insight belongs to.</p>"}))
    Insight.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName', traits: {"smithy.api#documentation" => "<p>The name of the group  that the insight belongs to.</p>"}))
    Insight.add_member(:root_cause_service_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'RootCauseServiceId'))
    Insight.add_member(:categories, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightCategoryList, location_name: 'Categories', traits: {"smithy.api#documentation" => "<p>The categories that label and describe the type of insight.</p>"}))
    Insight.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the insight.</p>"}))
    Insight.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The time, in Unix seconds, at which the insight began.</p>"}))
    Insight.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The time, in Unix seconds, at which the insight ended.</p>"}))
    Insight.add_member(:summary, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightSummaryText, location_name: 'Summary', traits: {"smithy.api#documentation" => "<p>A brief description of the insight.</p>"}))
    Insight.add_member(:client_request_impact_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestImpactStatistics, location_name: 'ClientRequestImpactStatistics', traits: {"smithy.api#documentation" => "<p>The impact statistics of the client side service. This includes the number of requests to the client service\n         and whether the requests were faults or okay.</p>"}))
    Insight.add_member(:root_cause_service_request_impact_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestImpactStatistics, location_name: 'RootCauseServiceRequestImpactStatistics', traits: {"smithy.api#documentation" => "<p>The impact statistics of the root cause service. This includes the number of requests to the client service\n         and whether the requests were faults or okay.</p>"}))
    Insight.add_member(:top_anomalous_services, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalousServiceList, location_name: 'TopAnomalousServices', traits: {"smithy.api#documentation" => "<p>The service within the insight that is most impacted by the incident.</p>"}))
    Insight.type = Types::Insight
    InsightCategory.add_member(:fault, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAULT', traits: {"smithy.api#enumValue" => "FAULT"}))
    InsightCategoryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InsightCategory)
    InsightEvent.add_member(:summary, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSummaryText, location_name: 'Summary', traits: {"smithy.api#documentation" => "<p>A brief description of the event.</p>"}))
    InsightEvent.add_member(:event_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EventTime', traits: {"smithy.api#documentation" => "<p>The time, in Unix seconds, at which the event was recorded.</p>"}))
    InsightEvent.add_member(:client_request_impact_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestImpactStatistics, location_name: 'ClientRequestImpactStatistics', traits: {"smithy.api#documentation" => "<p>The impact statistics of the client side service. This includes the number of requests to the client service\n         and whether the requests were faults or okay.</p>"}))
    InsightEvent.add_member(:root_cause_service_request_impact_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestImpactStatistics, location_name: 'RootCauseServiceRequestImpactStatistics', traits: {"smithy.api#documentation" => "<p>The impact statistics of the root cause service. This includes the number of requests to the client service\n         and whether the requests were faults or okay.</p>"}))
    InsightEvent.add_member(:top_anomalous_services, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalousServiceList, location_name: 'TopAnomalousServices', traits: {"smithy.api#documentation" => "<p>The service during the event that is most impacted by the incident.</p>"}))
    InsightEvent.type = Types::InsightEvent
    InsightEventList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InsightEvent)
    InsightImpactGraphEdge.add_member(:reference_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'ReferenceId', traits: {"smithy.api#documentation" => "<p>Identifier of the edge. Unique within a service map.</p>"}))
    InsightImpactGraphEdge.type = Types::InsightImpactGraphEdge
    InsightImpactGraphEdgeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InsightImpactGraphEdge)
    InsightImpactGraphService.add_member(:reference_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'ReferenceId', traits: {"smithy.api#documentation" => "<p>Identifier for the service. Unique within the service map.</p>"}))
    InsightImpactGraphService.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Identifier for the service. Unique within the service map.</p>\n         <ul>\n            <li>\n               <p>Amazon Web Services Resource - The type of an Amazon Web Services resource. For example, AWS::EC2::Instance for an application running\n               on Amazon EC2 or AWS::DynamoDB::Table for an Amazon DynamoDB table that the application used. </p>\n            </li>\n            <li>\n               <p>Amazon Web Services Service - The type of an Amazon Web Services service. For example, AWS::DynamoDB for downstream calls to Amazon\n               DynamoDB that didn't target a specific table. </p>\n            </li>\n            <li>\n               <p>Amazon Web Services Service - The type of an Amazon Web Services service. For example, AWS::DynamoDB for downstream calls to Amazon\n               DynamoDB that didn't target a specific table. </p>\n            </li>\n            <li>\n               <p>remote - A downstream service of indeterminate type.</p>\n            </li>\n         </ul>"}))
    InsightImpactGraphService.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The canonical name of the service.</p>"}))
    InsightImpactGraphService.add_member(:names, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNames, location_name: 'Names', traits: {"smithy.api#documentation" => "<p>A list of names for the service, including the canonical name.</p>"}))
    InsightImpactGraphService.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>Identifier of the Amazon Web Services account in which the service runs.</p>"}))
    InsightImpactGraphService.add_member(:edges, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightImpactGraphEdgeList, location_name: 'Edges', traits: {"smithy.api#documentation" => "<p>Connections to downstream services.</p>"}))
    InsightImpactGraphService.type = Types::InsightImpactGraphService
    InsightImpactGraphServiceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InsightImpactGraphService)
    InsightState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    InsightState.add_member(:closed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOSED', traits: {"smithy.api#enumValue" => "CLOSED"}))
    InsightStateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InsightState)
    InsightSummary.add_member(:insight_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightId, location_name: 'InsightId', traits: {"smithy.api#documentation" => "<p>The insights unique identifier. </p>"}))
    InsightSummary.add_member(:group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupARN, location_name: 'GroupARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the group that the insight belongs to.</p>"}))
    InsightSummary.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName', traits: {"smithy.api#documentation" => "<p>The name of the group  that the insight belongs to.</p>"}))
    InsightSummary.add_member(:root_cause_service_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'RootCauseServiceId'))
    InsightSummary.add_member(:categories, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightCategoryList, location_name: 'Categories', traits: {"smithy.api#documentation" => "<p> Categories The categories that label and describe the type of insight.</p>"}))
    InsightSummary.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the insight.</p>"}))
    InsightSummary.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The time, in Unix seconds, at which the insight began.</p>"}))
    InsightSummary.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The time, in Unix seconds, at which the insight ended.</p>"}))
    InsightSummary.add_member(:summary, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightSummaryText, location_name: 'Summary', traits: {"smithy.api#documentation" => "<p>A brief description of the insight.</p>"}))
    InsightSummary.add_member(:client_request_impact_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestImpactStatistics, location_name: 'ClientRequestImpactStatistics', traits: {"smithy.api#documentation" => "<p>The impact statistics of the client side service. This includes the number of requests\n         to the client service and whether the requests were faults or okay. </p>"}))
    InsightSummary.add_member(:root_cause_service_request_impact_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestImpactStatistics, location_name: 'RootCauseServiceRequestImpactStatistics', traits: {"smithy.api#documentation" => "<p>The impact statistics of the root cause service. This includes the number of requests to\n         the client service and whether the requests were faults or okay. </p>"}))
    InsightSummary.add_member(:top_anomalous_services, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalousServiceList, location_name: 'TopAnomalousServices', traits: {"smithy.api#documentation" => "<p>The service within the insight that is most impacted by the incident.</p>"}))
    InsightSummary.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdateTime', traits: {"smithy.api#documentation" => "<p>The time, in Unix seconds, that the insight was last updated.</p>"}))
    InsightSummary.type = Types::InsightSummary
    InsightSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InsightSummary)
    InsightsConfiguration.add_member(:insights_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'InsightsEnabled', traits: {"smithy.api#documentation" => "<p>Set the InsightsEnabled value to true to enable insights or false to disable\n            insights.</p>"}))
    InsightsConfiguration.add_member(:notifications_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'NotificationsEnabled', traits: {"smithy.api#documentation" => "<p>Set the NotificationsEnabled value to true to enable insights notifications. Notifications can only be\n            enabled on a group with InsightsEnabled set to true.</p>"}))
    InsightsConfiguration.type = Types::InsightsConfiguration
    InstanceIdDetail.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of a corresponding EC2 instance.</p>"}))
    InstanceIdDetail.type = Types::InstanceIdDetail
    InvalidPolicyRevisionIdException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidPolicyRevisionIdException.type = Types::InvalidPolicyRevisionIdException
    InvalidRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidRequestException.type = Types::InvalidRequestException
    LinksList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GraphLink)
    ListResourcePoliciesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicyNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Not currently supported.</p>"}))
    ListResourcePoliciesRequest.type = Types::ListResourcePoliciesRequest
    ListResourcePoliciesResult.add_member(:resource_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicyList, location_name: 'ResourcePolicies', traits: {"smithy.api#documentation" => "<p>The list of resource policies in the target Amazon Web Services account.</p>"}))
    ListResourcePoliciesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicyNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Pagination token. Not currently supported.</p>"}))
    ListResourcePoliciesResult.type = Types::ListResourcePoliciesResult
    ListRetrievedTracesRequest.add_member(:retrieval_token, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievalToken, location_name: 'RetrievalToken', traits: {"smithy.api#documentation" => "<p>\nRetrieval token.\n</p>", "smithy.api#required" => {}}))
    ListRetrievedTracesRequest.add_member(:trace_format, Smithy::Schema::Shapes::ShapeRef.new(shape: TraceFormatType, location_name: 'TraceFormat', traits: {"smithy.api#documentation" => "<p>\nFormat of the requested traces.\n</p>"}))
    ListRetrievedTracesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n    Specify the pagination token returned by a previous request to retrieve the next page of indexes.\n    \n    \n  </p>"}))
    ListRetrievedTracesRequest.type = Types::ListRetrievedTracesRequest
    ListRetrievedTracesResult.add_member(:retrieval_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievalStatus, location_name: 'RetrievalStatus', traits: {"smithy.api#documentation" => "<p>\n    Status of the retrieval.\n  </p>"}))
    ListRetrievedTracesResult.add_member(:trace_format, Smithy::Schema::Shapes::ShapeRef.new(shape: TraceFormatType, location_name: 'TraceFormat', traits: {"smithy.api#documentation" => "<p>\n    Format of the requested traces.\n  </p>"}))
    ListRetrievedTracesResult.add_member(:traces, Smithy::Schema::Shapes::ShapeRef.new(shape: TraceSpanList, location_name: 'Traces', traits: {"smithy.api#documentation" => "<p>\nFull traces for the specified requests.\n</p>"}))
    ListRetrievedTracesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n    Specify the pagination token returned by a previous request to retrieve the next page of indexes.\n    \n    \n  </p>"}))
    ListRetrievedTracesResult.type = Types::ListRetrievedTracesResult
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A pagination token. If multiple pages of results are returned, use the <code>NextToken</code> value returned with \n    the current page of results as the value of this parameter to get the next page of results.</p>"}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags, as key and value pairs, that is associated with the specified X-Ray group or sampling rule.</p>"}))
    ListTagsForResourceResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A pagination token. If multiple pages of results are returned, use the <code>NextToken</code> value returned with \n      the current page of results to get the next page of results.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LockoutPreventionException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    LockoutPreventionException.type = Types::LockoutPreventionException
    MalformedPolicyDocumentException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    MalformedPolicyDocumentException.type = Types::MalformedPolicyDocumentException
    PolicyCountLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    PolicyCountLimitExceededException.type = Types::PolicyCountLimitExceededException
    PolicySizeLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    PolicySizeLimitExceededException.type = Types::PolicySizeLimitExceededException
    ProbabilisticRuleValue.add_member(:desired_sampling_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'DesiredSamplingPercentage', traits: {"smithy.api#documentation" => "<p>\n  Configured sampling percentage of traceIds. Note that sampling can be subject to limits to ensure completeness of data.\n</p>", "smithy.api#required" => {}}))
    ProbabilisticRuleValue.add_member(:actual_sampling_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'ActualSamplingPercentage', traits: {"smithy.api#documentation" => "<p>\n  Applied sampling percentage of traceIds. \n</p>"}))
    ProbabilisticRuleValue.type = Types::ProbabilisticRuleValue
    ProbabilisticRuleValueUpdate.add_member(:desired_sampling_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'DesiredSamplingPercentage', traits: {"smithy.api#documentation" => "<p>\n  Configured sampling percentage of traceIds. Note that sampling can be subject to limits to ensure completeness of data.\n</p>", "smithy.api#required" => {}}))
    ProbabilisticRuleValueUpdate.type = Types::ProbabilisticRuleValueUpdate
    PutEncryptionConfigRequest.add_member(:key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyId, location_name: 'KeyId', traits: {"smithy.api#documentation" => "<p>An Amazon Web Services KMS key in one of the following formats:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>Alias</b> - The name of the key. For example,\n            <code>alias/MyKey</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <b>Key ID</b> - The KMS key ID of the key. For example,\n          <code>ae4aa6d49-a4d8-9df9-a475-4ff6d7898456</code>. Amazon Web Services X-Ray does not support asymmetric KMS keys.</p>\n            </li>\n            <li>\n               <p>\n                  <b>ARN</b> - The full Amazon Resource Name of the key ID or alias.\n          For example,\n            <code>arn:aws:kms:us-east-2:123456789012:key/ae4aa6d49-a4d8-9df9-a475-4ff6d7898456</code>.\n          Use this format to specify a key in a different account.</p>\n            </li>\n         </ul>\n         <p>Omit this key if you set <code>Type</code> to <code>NONE</code>.</p>"}))
    PutEncryptionConfigRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of encryption. Set to <code>KMS</code> to use your own key for encryption. Set\n      to <code>NONE</code> for default encryption.</p>", "smithy.api#required" => {}}))
    PutEncryptionConfigRequest.type = Types::PutEncryptionConfigRequest
    PutEncryptionConfigResult.add_member(:encryption_config, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfig, location_name: 'EncryptionConfig', traits: {"smithy.api#documentation" => "<p>The new encryption configuration.</p>"}))
    PutEncryptionConfigResult.type = Types::PutEncryptionConfigResult
    PutResourcePolicyRequest.add_member(:policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'PolicyName', traits: {"smithy.api#documentation" => "<p>The name of the resource policy. Must be unique within a specific Amazon Web Services account.</p>", "smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:policy_document, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'PolicyDocument', traits: {"smithy.api#documentation" => "<p>The resource policy document, which can be up to 5kb in size.</p>", "smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:policy_revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: 'PolicyRevisionId', traits: {"smithy.api#documentation" => "<p>Specifies a specific policy revision, to ensure an atomic create operation. By default the resource policy is created if it does not exist, or updated with an incremented revision id. \n            The revision id is unique to each policy in the account.</p>\n         <p>If the policy revision id does not match the latest revision id, the operation will fail with an <code>InvalidPolicyRevisionIdException</code> exception. You can also provide a \n            <code>PolicyRevisionId</code> of 0. In this case, the operation will fail with an <code>InvalidPolicyRevisionIdException</code> exception if a resource policy with the same name already exists.\n        </p>"}))
    PutResourcePolicyRequest.add_member(:bypass_policy_lockout_check, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'BypassPolicyLockoutCheck', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A flag to indicate whether to bypass the resource policy lockout safety check.</p>\n         <important>\n            <p>Setting this value to true increases the risk that the policy becomes unmanageable. Do not set this value to true indiscriminately.</p>\n         </important>\n         <p>Use this parameter only when you include a policy in the request and you intend to prevent the principal that is making the request from making a subsequent <code>PutResourcePolicy</code> request.</p>\n         <p>The default value is false.</p>"}))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResult.add_member(:resource_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'ResourcePolicy', traits: {"smithy.api#documentation" => "<p>The resource policy document, as provided in the <code>PutResourcePolicyRequest</code>.</p>"}))
    PutResourcePolicyResult.type = Types::PutResourcePolicyResult
    PutTelemetryRecordsRequest.add_member(:telemetry_records, Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryRecordList, location_name: 'TelemetryRecords', traits: {"smithy.api#documentation" => "<p></p>", "smithy.api#required" => {}}))
    PutTelemetryRecordsRequest.add_member(:ec2_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceId, location_name: 'EC2InstanceId', traits: {"smithy.api#documentation" => "<p></p>"}))
    PutTelemetryRecordsRequest.add_member(:hostname, Smithy::Schema::Shapes::ShapeRef.new(shape: Hostname, location_name: 'Hostname', traits: {"smithy.api#documentation" => "<p></p>"}))
    PutTelemetryRecordsRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p></p>"}))
    PutTelemetryRecordsRequest.type = Types::PutTelemetryRecordsRequest
    PutTelemetryRecordsResult.type = Types::PutTelemetryRecordsResult
    PutTraceSegmentsRequest.add_member(:trace_segment_documents, Smithy::Schema::Shapes::ShapeRef.new(shape: TraceSegmentDocumentList, location_name: 'TraceSegmentDocuments', traits: {"smithy.api#documentation" => "<p>A string containing a JSON document defining one or more segments or\n      subsegments.</p>", "smithy.api#required" => {}}))
    PutTraceSegmentsRequest.type = Types::PutTraceSegmentsRequest
    PutTraceSegmentsResult.add_member(:unprocessed_trace_segments, Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedTraceSegmentList, location_name: 'UnprocessedTraceSegments', traits: {"smithy.api#documentation" => "<p>Segments that failed processing.</p>"}))
    PutTraceSegmentsResult.type = Types::PutTraceSegmentsResult
    RequestImpactStatistics.add_member(:fault_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'FaultCount', traits: {"smithy.api#documentation" => "<p>The number of requests that have resulted in a fault,</p>"}))
    RequestImpactStatistics.add_member(:ok_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'OkCount', traits: {"smithy.api#documentation" => "<p>The number of successful requests.</p>"}))
    RequestImpactStatistics.add_member(:total_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'TotalCount', traits: {"smithy.api#documentation" => "<p>The total number of requests to the service.</p>"}))
    RequestImpactStatistics.type = Types::RequestImpactStatistics
    ResourceARNDetail.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN', traits: {"smithy.api#documentation" => "<p>The ARN of a corresponding resource.</p>"}))
    ResourceARNDetail.type = Types::ResourceARNDetail
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceName'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourcePolicy.add_member(:policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'PolicyName', traits: {"smithy.api#documentation" => "<p>The name of the resource policy. Must be unique within a specific Amazon Web Services account.</p>"}))
    ResourcePolicy.add_member(:policy_document, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'PolicyDocument', traits: {"smithy.api#documentation" => "<p>The resource policy document, which can be up to 5kb in size.</p>"}))
    ResourcePolicy.add_member(:policy_revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: 'PolicyRevisionId', traits: {"smithy.api#documentation" => "<p>Returns the current policy revision id for this policy name.</p>"}))
    ResourcePolicy.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>When the policy was last updated, in Unix time seconds.</p>"}))
    ResourcePolicy.type = Types::ResourcePolicy
    ResourcePolicyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy)
    ResponseTimeRootCause.add_member(:services, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseTimeRootCauseServices, location_name: 'Services', traits: {"smithy.api#documentation" => "<p>A list of corresponding services. A service identifies a segment and contains a name,\n      account ID, type, and inferred flag.</p>"}))
    ResponseTimeRootCause.add_member(:client_impacting, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'ClientImpacting', traits: {"smithy.api#documentation" => "<p>A flag that denotes that the root cause impacts the trace client.</p>"}))
    ResponseTimeRootCause.type = Types::ResponseTimeRootCause
    ResponseTimeRootCauseEntity.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the entity.</p>"}))
    ResponseTimeRootCauseEntity.add_member(:coverage, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'Coverage', traits: {"smithy.api#documentation" => "<p>The type and messages of the exceptions.</p>"}))
    ResponseTimeRootCauseEntity.add_member(:remote, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'Remote', traits: {"smithy.api#documentation" => "<p>A flag that denotes a remote subsegment.</p>"}))
    ResponseTimeRootCauseEntity.type = Types::ResponseTimeRootCauseEntity
    ResponseTimeRootCauseEntityPath.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseTimeRootCauseEntity)
    ResponseTimeRootCauseService.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The service name.</p>"}))
    ResponseTimeRootCauseService.add_member(:names, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNames, location_name: 'Names', traits: {"smithy.api#documentation" => "<p>A collection of associated service names.</p>"}))
    ResponseTimeRootCauseService.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type associated to the service.</p>"}))
    ResponseTimeRootCauseService.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The account ID associated to the service.</p>"}))
    ResponseTimeRootCauseService.add_member(:entity_path, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseTimeRootCauseEntityPath, location_name: 'EntityPath', traits: {"smithy.api#documentation" => "<p>The path of root cause entities found on the service. </p>"}))
    ResponseTimeRootCauseService.add_member(:inferred, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'Inferred', traits: {"smithy.api#documentation" => "<p>A Boolean value indicating if the service is inferred from the trace.</p>"}))
    ResponseTimeRootCauseService.type = Types::ResponseTimeRootCauseService
    ResponseTimeRootCauseServices.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseTimeRootCauseService)
    ResponseTimeRootCauses.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseTimeRootCause)
    RetrievalStatus.add_member(:scheduled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCHEDULED', traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    RetrievalStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    RetrievalStatus.add_member(:complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "COMPLETE"}))
    RetrievalStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    RetrievalStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    RetrievalStatus.add_member(:timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMEOUT', traits: {"smithy.api#enumValue" => "TIMEOUT"}))
    RetrievedService.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: 'Service'))
    RetrievedService.add_member(:links, Smithy::Schema::Shapes::ShapeRef.new(shape: LinksList, location_name: 'Links', traits: {"smithy.api#documentation" => "<p>\n Relation between two 2 services.\n</p>"}))
    RetrievedService.type = Types::RetrievedService
    RetrievedServicesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievedService)
    RetrievedTrace.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: TraceId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>\n  The unique identifier for the span.\n</p>"}))
    RetrievedTrace.add_member(:duration, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'Duration', traits: {"smithy.api#documentation" => "<p>\n  The length of time in seconds between the start time of the root span and the end time of the last span that completed.\n</p>"}))
    RetrievedTrace.add_member(:spans, Smithy::Schema::Shapes::ShapeRef.new(shape: SpanList, location_name: 'Spans', traits: {"smithy.api#documentation" => "<p>\n  Spans that comprise the trace.\n</p>"}))
    RetrievedTrace.type = Types::RetrievedTrace
    RootCauseException.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the exception.</p>"}))
    RootCauseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The message of the exception.</p>"}))
    RootCauseException.type = Types::RootCauseException
    RootCauseExceptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RootCauseException)
    RuleLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    RuleLimitExceededException.type = Types::RuleLimitExceededException
    SamplingRule.add_member(:rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'RuleName', traits: {"smithy.api#documentation" => "<p>The name of the sampling rule. Specify a rule by either name or ARN, but not both.</p>"}))
    SamplingRule.add_member(:rule_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RuleARN', traits: {"smithy.api#documentation" => "<p>The ARN of the sampling rule. Specify a rule by either name or ARN, but not both.</p>"}))
    SamplingRule.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>Matches the ARN of the Amazon Web Services resource on which the service runs.</p>", "smithy.api#required" => {}}))
    SamplingRule.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: 'Priority', traits: {"smithy.api#documentation" => "<p>The priority of the sampling rule.</p>", "smithy.api#required" => {}}))
    SamplingRule.add_member(:fixed_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: FixedRate, location_name: 'FixedRate', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The percentage of matching requests to instrument, after the reservoir is\n      exhausted.</p>", "smithy.api#required" => {}}))
    SamplingRule.add_member(:reservoir_size, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservoirSize, location_name: 'ReservoirSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>A fixed number of matching requests to instrument per second, prior to applying the\n      fixed rate. The reservoir is not used directly by services, but applies to all services using the rule collectively.</p>", "smithy.api#required" => {}}))
    SamplingRule.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'ServiceName', traits: {"smithy.api#documentation" => "<p>Matches the <code>name</code> that the service uses to identify itself in segments.</p>", "smithy.api#required" => {}}))
    SamplingRule.add_member(:service_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceType, location_name: 'ServiceType', traits: {"smithy.api#documentation" => "<p>Matches the <code>origin</code> that the service uses to identify its type in segments.</p>", "smithy.api#required" => {}}))
    SamplingRule.add_member(:host, Smithy::Schema::Shapes::ShapeRef.new(shape: Host, location_name: 'Host', traits: {"smithy.api#documentation" => "<p>Matches the hostname from a request URL.</p>", "smithy.api#required" => {}}))
    SamplingRule.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: HTTPMethod, location_name: 'HTTPMethod', traits: {"smithy.api#documentation" => "<p>Matches the HTTP method of a request.</p>", "smithy.api#required" => {}}))
    SamplingRule.add_member(:url_path, Smithy::Schema::Shapes::ShapeRef.new(shape: URLPath, location_name: 'URLPath', traits: {"smithy.api#documentation" => "<p>Matches the path from a request URL.</p>", "smithy.api#required" => {}}))
    SamplingRule.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The version of the sampling rule format (<code>1</code>).</p>", "smithy.api#required" => {}}))
    SamplingRule.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeMap, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>Matches attributes derived from the request.</p>"}))
    SamplingRule.type = Types::SamplingRule
    SamplingRuleRecord.add_member(:sampling_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingRule, location_name: 'SamplingRule', traits: {"smithy.api#documentation" => "<p>The sampling rule.</p>"}))
    SamplingRuleRecord.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>When the rule was created.</p>"}))
    SamplingRuleRecord.add_member(:modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ModifiedAt', traits: {"smithy.api#documentation" => "<p>When the rule was last modified.</p>"}))
    SamplingRuleRecord.type = Types::SamplingRuleRecord
    SamplingRuleRecordList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingRuleRecord)
    SamplingRuleUpdate.add_member(:rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'RuleName', traits: {"smithy.api#documentation" => "<p>The name of the sampling rule. Specify a rule by either name or ARN, but not both.</p>"}))
    SamplingRuleUpdate.add_member(:rule_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RuleARN', traits: {"smithy.api#documentation" => "<p>The ARN of the sampling rule. Specify a rule by either name or ARN, but not both.</p>"}))
    SamplingRuleUpdate.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>Matches the ARN of the Amazon Web Services resource on which the service runs.</p>"}))
    SamplingRuleUpdate.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'Priority', traits: {"smithy.api#documentation" => "<p>The priority of the sampling rule.</p>"}))
    SamplingRuleUpdate.add_member(:fixed_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'FixedRate', traits: {"smithy.api#documentation" => "<p>The percentage of matching requests to instrument, after the reservoir is\n      exhausted.</p>"}))
    SamplingRuleUpdate.add_member(:reservoir_size, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'ReservoirSize', traits: {"smithy.api#documentation" => "<p>A fixed number of matching requests to instrument per second, prior to applying the\n      fixed rate. The reservoir is not used directly by services, but applies to all services using the rule collectively.</p>"}))
    SamplingRuleUpdate.add_member(:host, Smithy::Schema::Shapes::ShapeRef.new(shape: Host, location_name: 'Host', traits: {"smithy.api#documentation" => "<p>Matches the hostname from a request URL.</p>"}))
    SamplingRuleUpdate.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'ServiceName', traits: {"smithy.api#documentation" => "<p>Matches the <code>name</code> that the service uses to identify itself in segments.</p>"}))
    SamplingRuleUpdate.add_member(:service_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceType, location_name: 'ServiceType', traits: {"smithy.api#documentation" => "<p>Matches the <code>origin</code> that the service uses to identify its type in segments.</p>"}))
    SamplingRuleUpdate.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: HTTPMethod, location_name: 'HTTPMethod', traits: {"smithy.api#documentation" => "<p>Matches the HTTP method of a request.</p>"}))
    SamplingRuleUpdate.add_member(:url_path, Smithy::Schema::Shapes::ShapeRef.new(shape: URLPath, location_name: 'URLPath', traits: {"smithy.api#documentation" => "<p>Matches the path from a request URL.</p>"}))
    SamplingRuleUpdate.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeMap, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>Matches attributes derived from the request.</p>"}))
    SamplingRuleUpdate.type = Types::SamplingRuleUpdate
    SamplingStatisticSummary.add_member(:rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RuleName', traits: {"smithy.api#documentation" => "<p>The name of the sampling rule.</p>"}))
    SamplingStatisticSummary.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Timestamp', traits: {"smithy.api#documentation" => "<p>The start time of the reporting window.</p>"}))
    SamplingStatisticSummary.add_member(:request_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'RequestCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of requests that matched the rule.</p>"}))
    SamplingStatisticSummary.add_member(:borrow_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BorrowCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of requests recorded with borrowed reservoir quota.</p>"}))
    SamplingStatisticSummary.add_member(:sampled_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SampledCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of requests recorded.</p>"}))
    SamplingStatisticSummary.type = Types::SamplingStatisticSummary
    SamplingStatisticSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingStatisticSummary)
    SamplingStatisticsDocument.add_member(:rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'RuleName', traits: {"smithy.api#documentation" => "<p>The name of the sampling rule.</p>", "smithy.api#required" => {}}))
    SamplingStatisticsDocument.add_member(:client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientID, location_name: 'ClientID', traits: {"smithy.api#documentation" => "<p>A unique identifier for the service in hexadecimal.</p>", "smithy.api#required" => {}}))
    SamplingStatisticsDocument.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Timestamp', traits: {"smithy.api#documentation" => "<p>The current time.</p>", "smithy.api#required" => {}}))
    SamplingStatisticsDocument.add_member(:request_count, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestCount, location_name: 'RequestCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of requests that matched the rule.</p>", "smithy.api#required" => {}}))
    SamplingStatisticsDocument.add_member(:sampled_count, Smithy::Schema::Shapes::ShapeRef.new(shape: SampledCount, location_name: 'SampledCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of requests recorded.</p>", "smithy.api#required" => {}}))
    SamplingStatisticsDocument.add_member(:borrow_count, Smithy::Schema::Shapes::ShapeRef.new(shape: BorrowCount, location_name: 'BorrowCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of requests recorded with borrowed reservoir quota.</p>"}))
    SamplingStatisticsDocument.type = Types::SamplingStatisticsDocument
    SamplingStatisticsDocumentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingStatisticsDocument)
    SamplingStrategy.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingStrategyName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of a sampling rule.</p>"}))
    SamplingStrategy.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of a sampling rule.</p>"}))
    SamplingStrategy.type = Types::SamplingStrategy
    SamplingStrategyName.add_member(:partial_scan, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PartialScan', traits: {"smithy.api#enumValue" => "PartialScan"}))
    SamplingStrategyName.add_member(:fixed_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FixedRate', traits: {"smithy.api#enumValue" => "FixedRate"}))
    SamplingTargetDocument.add_member(:rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RuleName', traits: {"smithy.api#documentation" => "<p>The name of the sampling rule.</p>"}))
    SamplingTargetDocument.add_member(:fixed_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'FixedRate', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The percentage of matching requests to instrument, after the reservoir is\n      exhausted.</p>"}))
    SamplingTargetDocument.add_member(:reservoir_quota, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'ReservoirQuota', traits: {"smithy.api#documentation" => "<p>The number of requests per second that X-Ray allocated for this service.</p>"}))
    SamplingTargetDocument.add_member(:reservoir_quota_ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ReservoirQuotaTTL', traits: {"smithy.api#documentation" => "<p>When the reservoir quota expires.</p>"}))
    SamplingTargetDocument.add_member(:interval, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'Interval', traits: {"smithy.api#documentation" => "<p>The number of seconds for the service to wait before getting sampling targets\n      again.</p>"}))
    SamplingTargetDocument.type = Types::SamplingTargetDocument
    SamplingTargetDocumentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingTargetDocument)
    Segment.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The segment's ID.</p>"}))
    Segment.add_member(:document, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentDocument, location_name: 'Document', traits: {"smithy.api#documentation" => "<p>The segment document.</p>"}))
    Segment.type = Types::Segment
    SegmentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Segment)
    Service.add_member(:reference_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'ReferenceId', traits: {"smithy.api#documentation" => "<p>Identifier for the service. Unique within the service map.</p>"}))
    Service.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The canonical name of the service.</p>"}))
    Service.add_member(:names, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNames, location_name: 'Names', traits: {"smithy.api#documentation" => "<p>A list of names for the service, including the canonical name.</p>"}))
    Service.add_member(:root, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'Root', traits: {"smithy.api#documentation" => "<p>Indicates that the service was the first service to process a request.</p>"}))
    Service.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>Identifier of the Amazon Web Services account in which the service runs.</p>"}))
    Service.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of service.</p>\n         <ul>\n            <li>\n               <p>Amazon Web Services Resource - The type of an Amazon Web Services resource. For example, <code>AWS::EC2::Instance</code> for an\n          application running on Amazon EC2 or <code>AWS::DynamoDB::Table</code> for an Amazon DynamoDB table that the\n          application used.</p>\n            </li>\n            <li>\n               <p>Amazon Web Services Service - The type of an Amazon Web Services service. For example, <code>AWS::DynamoDB</code>\n          for downstream calls to Amazon DynamoDB that didn't target a specific table.</p>\n            </li>\n            <li>\n               <p>\n                  <code>client</code> - Represents the clients that sent requests to a root\n          service.</p>\n            </li>\n            <li>\n               <p>\n                  <code>remote</code> - A downstream service of indeterminate type.</p>\n            </li>\n         </ul>"}))
    Service.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The service's state.</p>"}))
    Service.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The start time of the first segment that the service generated.</p>"}))
    Service.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The end time of the last segment that the service generated.</p>"}))
    Service.add_member(:edges, Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeList, location_name: 'Edges', traits: {"smithy.api#documentation" => "<p>Connections to downstream services.</p>"}))
    Service.add_member(:summary_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceStatistics, location_name: 'SummaryStatistics', traits: {"smithy.api#documentation" => "<p>Aggregated statistics for the service.</p>"}))
    Service.add_member(:duration_histogram, Smithy::Schema::Shapes::ShapeRef.new(shape: Histogram, location_name: 'DurationHistogram', traits: {"smithy.api#documentation" => "<p>A histogram that maps the spread of service durations.</p>"}))
    Service.add_member(:response_time_histogram, Smithy::Schema::Shapes::ShapeRef.new(shape: Histogram, location_name: 'ResponseTimeHistogram', traits: {"smithy.api#documentation" => "<p>A histogram that maps the spread of service response times.</p>"}))
    Service.type = Types::Service
    ServiceId.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p></p>"}))
    ServiceId.add_member(:names, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNames, location_name: 'Names', traits: {"smithy.api#documentation" => "<p></p>"}))
    ServiceId.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p></p>"}))
    ServiceId.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type', traits: {"smithy.api#documentation" => "<p></p>"}))
    ServiceId.type = Types::ServiceId
    ServiceIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId)
    ServiceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Service)
    ServiceNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ServiceStatistics.add_member(:ok_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'OkCount', traits: {"smithy.api#documentation" => "<p>The number of requests that completed with a 2xx Success status code.</p>"}))
    ServiceStatistics.add_member(:error_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorStatistics, location_name: 'ErrorStatistics', traits: {"smithy.api#documentation" => "<p>Information about requests that failed with a 4xx Client Error status code.</p>"}))
    ServiceStatistics.add_member(:fault_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: FaultStatistics, location_name: 'FaultStatistics', traits: {"smithy.api#documentation" => "<p>Information about requests that failed with a 5xx Server Error status code.</p>"}))
    ServiceStatistics.add_member(:total_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'TotalCount', traits: {"smithy.api#documentation" => "<p>The total number of completed requests.</p>"}))
    ServiceStatistics.add_member(:total_response_time, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'TotalResponseTime', traits: {"smithy.api#documentation" => "<p>The aggregate response time of completed requests.</p>"}))
    ServiceStatistics.type = Types::ServiceStatistics
    Span.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: SpanId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The span ID.</p>"}))
    Span.add_member(:document, Smithy::Schema::Shapes::ShapeRef.new(shape: SpanDocument, location_name: 'Document', traits: {"smithy.api#documentation" => "<p>\nThe span document.</p>"}))
    Span.type = Types::Span
    SpanList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Span)
    StartTraceRetrievalRequest.add_member(:trace_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: TraceIdListForRetrieval, location_name: 'TraceIds', traits: {"smithy.api#documentation" => "<p>\n  Specify the trace IDs of the traces to be retrieved.\n</p>", "smithy.api#required" => {}}))
    StartTraceRetrievalRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>\n  The start of the time range to retrieve traces. The range is inclusive, so the specified start time is included in the query. \n  Specified as epoch time, the number of seconds since January 1, 1970, 00:00:00 UTC.\n</p>", "smithy.api#required" => {}}))
    StartTraceRetrievalRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>\n  The end of the time range to retrieve traces. The range is inclusive, so the specified end time is included in the query. Specified as epoch time,\n  the number of seconds since January 1, 1970, 00:00:00 UTC.</p>", "smithy.api#required" => {}}))
    StartTraceRetrievalRequest.type = Types::StartTraceRetrievalRequest
    StartTraceRetrievalResult.add_member(:retrieval_token, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievalToken, location_name: 'RetrievalToken', traits: {"smithy.api#documentation" => "<p>\nRetrieval token.\n</p>"}))
    StartTraceRetrievalResult.type = Types::StartTraceRetrievalResult
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>A tag key, such as <code>Stage</code> or <code>Name</code>. A tag key cannot be empty. The \n      key can be a maximum of 128 characters, and can contain only Unicode letters, numbers, or separators, \n      or the following special characters: <code>+ - = . _ : /</code>\n         </p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>An optional tag value, such as <code>Production</code> or <code>test-only</code>. The value can be \n      a maximum of 255 characters, and contain only Unicode letters, numbers, or separators, or the following \n      special characters: <code>+ - = . _ : /</code>\n         </p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A map that contains one or more tag keys and tag values to attach to an X-Ray group or\n      sampling rule. For more information about ways to use tags, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging Amazon Web Services resources</a>\n      in the <i>Amazon Web Services General Reference</i>.</p>\n         <p>The following restrictions apply to tags:</p>\n         <ul>\n            <li>\n               <p>Maximum number of user-applied tags per resource: 50</p>\n            </li>\n            <li>\n               <p>Maximum tag key length: 128 Unicode characters</p>\n            </li>\n            <li>\n               <p>Maximum tag value length: 256 Unicode characters</p>\n            </li>\n            <li>\n               <p>Valid values for key and value: a-z, A-Z, 0-9, space, and the following characters: _ . :\n          / = + - and @</p>\n            </li>\n            <li>\n               <p>Tag keys and values are case sensitive.</p>\n            </li>\n            <li>\n               <p>Don't use <code>aws:</code> as a prefix for keys; it's reserved for Amazon Web Services use. You\n          cannot edit or delete system tags.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TelemetryRecord.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Timestamp', traits: {"smithy.api#documentation" => "<p></p>", "smithy.api#required" => {}}))
    TelemetryRecord.add_member(:segments_received_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'SegmentsReceivedCount', traits: {"smithy.api#documentation" => "<p></p>"}))
    TelemetryRecord.add_member(:segments_sent_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'SegmentsSentCount', traits: {"smithy.api#documentation" => "<p></p>"}))
    TelemetryRecord.add_member(:segments_spillover_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'SegmentsSpilloverCount', traits: {"smithy.api#documentation" => "<p></p>"}))
    TelemetryRecord.add_member(:segments_rejected_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'SegmentsRejectedCount', traits: {"smithy.api#documentation" => "<p></p>"}))
    TelemetryRecord.add_member(:backend_connection_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BackendConnectionErrors, location_name: 'BackendConnectionErrors', traits: {"smithy.api#documentation" => "<p></p>"}))
    TelemetryRecord.type = Types::TelemetryRecord
    TelemetryRecordList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryRecord)
    ThrottledException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ThrottledException.type = Types::ThrottledException
    TimeRangeType.add_member(:trace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TraceId', traits: {"smithy.api#enumValue" => "TraceId"}))
    TimeRangeType.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Event', traits: {"smithy.api#enumValue" => "Event"}))
    TimeRangeType.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Service', traits: {"smithy.api#enumValue" => "Service"}))
    TimeSeriesServiceStatistics.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Timestamp', traits: {"smithy.api#documentation" => "<p>Timestamp of the window for which statistics are aggregated.</p>"}))
    TimeSeriesServiceStatistics.add_member(:edge_summary_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeStatistics, location_name: 'EdgeSummaryStatistics'))
    TimeSeriesServiceStatistics.add_member(:service_summary_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceStatistics, location_name: 'ServiceSummaryStatistics'))
    TimeSeriesServiceStatistics.add_member(:service_forecast_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: ForecastStatistics, location_name: 'ServiceForecastStatistics', traits: {"smithy.api#documentation" => "<p>The forecasted high and low fault count values.</p>"}))
    TimeSeriesServiceStatistics.add_member(:response_time_histogram, Smithy::Schema::Shapes::ShapeRef.new(shape: Histogram, location_name: 'ResponseTimeHistogram', traits: {"smithy.api#documentation" => "<p>The response time histogram for the selected entities.</p>"}))
    TimeSeriesServiceStatistics.type = Types::TimeSeriesServiceStatistics
    TimeSeriesServiceStatisticsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TimeSeriesServiceStatistics)
    TooManyTagsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    TooManyTagsException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceName'))
    TooManyTagsException.type = Types::TooManyTagsException
    Trace.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: TraceId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the request that generated the trace's segments and\n      subsegments.</p>"}))
    Trace.add_member(:duration, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'Duration', traits: {"smithy.api#documentation" => "<p>The length of time in seconds between the start time of the root segment and the end\n      time of the last segment that completed.</p>"}))
    Trace.add_member(:limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'LimitExceeded', traits: {"smithy.api#documentation" => "<p>LimitExceeded is set to true when the trace has exceeded the <code>Trace document size</code> limit. For\n      more information about this limit and other X-Ray limits and quotas, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/xray.html\">Amazon Web Services X-Ray endpoints and quotas</a>.</p>"}))
    Trace.add_member(:segments, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentList, location_name: 'Segments', traits: {"smithy.api#documentation" => "<p>Segment documents for the segments and subsegments that comprise the trace.</p>"}))
    Trace.type = Types::Trace
    TraceAvailabilityZones.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneDetail)
    TraceFormatType.add_member(:xray, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XRAY', traits: {"smithy.api#enumValue" => "XRAY"}))
    TraceFormatType.add_member(:otel, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTEL', traits: {"smithy.api#enumValue" => "OTEL"}))
    TraceIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TraceId)
    TraceIdListForRetrieval.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TraceId)
    TraceInstanceIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceIdDetail)
    TraceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Trace)
    TraceResourceARNs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARNDetail)
    TraceSegmentDestination.add_member(:x_ray, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XRay', traits: {"smithy.api#enumValue" => "XRay"}))
    TraceSegmentDestination.add_member(:cloud_watch_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CloudWatchLogs', traits: {"smithy.api#enumValue" => "CloudWatchLogs"}))
    TraceSegmentDestinationStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    TraceSegmentDestinationStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    TraceSegmentDocumentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TraceSegmentDocument)
    TraceSpanList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievedTrace)
    TraceSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: TraceId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the request that generated the trace's segments and\n      subsegments.</p>"}))
    TraceSummary.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The start time of a trace, based on the earliest trace segment start time.</p>"}))
    TraceSummary.add_member(:duration, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'Duration', traits: {"smithy.api#documentation" => "<p>The length of time in seconds between the start time of the root segment and the end\n      time of the last segment that completed.</p>"}))
    TraceSummary.add_member(:response_time, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'ResponseTime', traits: {"smithy.api#documentation" => "<p>The length of time in seconds between the start and end times of the root segment. If\n      the service performs work asynchronously, the response time measures the time before the\n      response is sent to the user, while the duration measures the amount of time before the last\n      traced activity completes.</p>"}))
    TraceSummary.add_member(:has_fault, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'HasFault', traits: {"smithy.api#documentation" => "<p>The root segment document has a 500 series error.</p>"}))
    TraceSummary.add_member(:has_error, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'HasError', traits: {"smithy.api#documentation" => "<p>The root segment document has a 400 series error.</p>"}))
    TraceSummary.add_member(:has_throttle, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'HasThrottle', traits: {"smithy.api#documentation" => "<p>One or more of the segment documents has a 429 throttling error.</p>"}))
    TraceSummary.add_member(:is_partial, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'IsPartial', traits: {"smithy.api#documentation" => "<p>One or more of the segment documents is in progress.</p>"}))
    TraceSummary.add_member(:http, Smithy::Schema::Shapes::ShapeRef.new(shape: Http, location_name: 'Http', traits: {"smithy.api#documentation" => "<p>Information about the HTTP request served by the trace.</p>"}))
    TraceSummary.add_member(:annotations, Smithy::Schema::Shapes::ShapeRef.new(shape: Annotations, location_name: 'Annotations', traits: {"smithy.api#documentation" => "<p>Annotations from the trace's segment documents.</p>"}))
    TraceSummary.add_member(:users, Smithy::Schema::Shapes::ShapeRef.new(shape: TraceUsers, location_name: 'Users', traits: {"smithy.api#documentation" => "<p>Users from the trace's segment documents.</p>"}))
    TraceSummary.add_member(:service_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIds, location_name: 'ServiceIds', traits: {"smithy.api#documentation" => "<p>Service IDs from the trace's segment documents.</p>"}))
    TraceSummary.add_member(:resource_ar_ns, Smithy::Schema::Shapes::ShapeRef.new(shape: TraceResourceARNs, location_name: 'ResourceARNs', traits: {"smithy.api#documentation" => "<p>A list of resource ARNs for any resource corresponding to the trace segments.</p>"}))
    TraceSummary.add_member(:instance_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: TraceInstanceIds, location_name: 'InstanceIds', traits: {"smithy.api#documentation" => "<p>A list of EC2 instance IDs for any instance corresponding to the trace\n      segments.</p>"}))
    TraceSummary.add_member(:availability_zones, Smithy::Schema::Shapes::ShapeRef.new(shape: TraceAvailabilityZones, location_name: 'AvailabilityZones', traits: {"smithy.api#documentation" => "<p>A list of Availability Zones for any zone corresponding to the trace segments.</p>"}))
    TraceSummary.add_member(:entry_point, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'EntryPoint', traits: {"smithy.api#documentation" => "<p>The root of a trace.</p>"}))
    TraceSummary.add_member(:fault_root_causes, Smithy::Schema::Shapes::ShapeRef.new(shape: FaultRootCauses, location_name: 'FaultRootCauses', traits: {"smithy.api#documentation" => "<p>A collection of FaultRootCause structures corresponding to the trace segments.</p>"}))
    TraceSummary.add_member(:error_root_causes, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorRootCauses, location_name: 'ErrorRootCauses', traits: {"smithy.api#documentation" => "<p>A collection of ErrorRootCause structures corresponding to the trace\n      segments.</p>"}))
    TraceSummary.add_member(:response_time_root_causes, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseTimeRootCauses, location_name: 'ResponseTimeRootCauses', traits: {"smithy.api#documentation" => "<p>A collection of ResponseTimeRootCause structures corresponding to the trace\n      segments.</p>"}))
    TraceSummary.add_member(:revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Revision', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The revision number of a trace.</p>"}))
    TraceSummary.add_member(:matched_event_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'MatchedEventTime', traits: {"smithy.api#documentation" => "<p>The matched time stamp of a defined event.</p>"}))
    TraceSummary.type = Types::TraceSummary
    TraceSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TraceSummary)
    TraceUser.add_member(:user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserName', traits: {"smithy.api#documentation" => "<p>The user's name.</p>"}))
    TraceUser.add_member(:service_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIds, location_name: 'ServiceIds', traits: {"smithy.api#documentation" => "<p>Services that the user's request hit.</p>"}))
    TraceUser.type = Types::TraceUser
    TraceUsers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TraceUser)
    UnprocessedStatistics.add_member(:rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RuleName', traits: {"smithy.api#documentation" => "<p>The name of the sampling rule.</p>"}))
    UnprocessedStatistics.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code.</p>"}))
    UnprocessedStatistics.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The error message.</p>"}))
    UnprocessedStatistics.type = Types::UnprocessedStatistics
    UnprocessedStatisticsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedStatistics)
    UnprocessedTraceIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TraceId)
    UnprocessedTraceSegment.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The segment's ID.</p>"}))
    UnprocessedTraceSegment.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error that caused processing to fail.</p>"}))
    UnprocessedTraceSegment.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The error message.</p>"}))
    UnprocessedTraceSegment.type = Types::UnprocessedTraceSegment
    UnprocessedTraceSegmentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedTraceSegment)
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>Keys for one or more tags that you want to remove from an X-Ray group or sampling rule.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateGroupRequest.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName', traits: {"smithy.api#documentation" => "<p>The case-sensitive name of the group.</p>"}))
    UpdateGroupRequest.add_member(:group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupARN, location_name: 'GroupARN', traits: {"smithy.api#documentation" => "<p>The ARN that was generated upon creation.</p>"}))
    UpdateGroupRequest.add_member(:filter_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterExpression, location_name: 'FilterExpression', traits: {"smithy.api#documentation" => "<p>The updated filter expression defining criteria by which to group traces.</p>"}))
    UpdateGroupRequest.add_member(:insights_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightsConfiguration, location_name: 'InsightsConfiguration', traits: {"smithy.api#documentation" => "<p>The structure containing configurations related to insights.</p>\n         <ul>\n            <li>\n               <p>The InsightsEnabled boolean can be set to true to enable insights for the\n                    group or false to disable insights for the group.</p>\n            </li>\n            <li>\n               <p>The NotificationsEnabled boolean can be set to true to enable insights notifications for the group.\n                    Notifications can only be enabled on a group with InsightsEnabled set to true.</p>\n            </li>\n         </ul>"}))
    UpdateGroupRequest.type = Types::UpdateGroupRequest
    UpdateGroupResult.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: Group, location_name: 'Group', traits: {"smithy.api#documentation" => "<p>The group that was updated. Contains the name of the group that was updated, the\n            ARN of the group that was updated, the updated filter expression, and the updated insight\n            configuration assigned to the group.</p>"}))
    UpdateGroupResult.type = Types::UpdateGroupResult
    UpdateIndexingRuleRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>\n  Name of the indexing rule to be updated.\n</p>", "smithy.api#required" => {}}))
    UpdateIndexingRuleRequest.add_member(:rule, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexingRuleValueUpdate, location_name: 'Rule', traits: {"smithy.api#documentation" => "<p>\n    Rule configuration to be updated.\n  </p>", "smithy.api#required" => {}}))
    UpdateIndexingRuleRequest.type = Types::UpdateIndexingRuleRequest
    UpdateIndexingRuleResult.add_member(:indexing_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexingRule, location_name: 'IndexingRule', traits: {"smithy.api#documentation" => "<p>\n    Updated indexing rule.\n  </p>"}))
    UpdateIndexingRuleResult.type = Types::UpdateIndexingRuleResult
    UpdateSamplingRuleRequest.add_member(:sampling_rule_update, Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingRuleUpdate, location_name: 'SamplingRuleUpdate', traits: {"smithy.api#documentation" => "<p>The rule and fields to change.</p>", "smithy.api#required" => {}}))
    UpdateSamplingRuleRequest.type = Types::UpdateSamplingRuleRequest
    UpdateSamplingRuleResult.add_member(:sampling_rule_record, Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingRuleRecord, location_name: 'SamplingRuleRecord', traits: {"smithy.api#documentation" => "<p>The updated rule definition and metadata.</p>"}))
    UpdateSamplingRuleResult.type = Types::UpdateSamplingRuleResult
    UpdateTraceSegmentDestinationRequest.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: TraceSegmentDestination, location_name: 'Destination', traits: {"smithy.api#documentation" => "<p>\nThe configured destination of trace segments.\n</p>"}))
    UpdateTraceSegmentDestinationRequest.type = Types::UpdateTraceSegmentDestinationRequest
    UpdateTraceSegmentDestinationResult.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: TraceSegmentDestination, location_name: 'Destination', traits: {"smithy.api#documentation" => "<p>\n    The destination of the trace segments.\n  </p>"}))
    UpdateTraceSegmentDestinationResult.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TraceSegmentDestinationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>\nThe status of the update.\n</p>"}))
    UpdateTraceSegmentDestinationResult.type = Types::UpdateTraceSegmentDestinationResult
    ValueWithServiceIds.add_member(:annotation_value, Smithy::Schema::Shapes::ShapeRef.new(shape: AnnotationValue, location_name: 'AnnotationValue', traits: {"smithy.api#documentation" => "<p>Values of the annotation.</p>"}))
    ValueWithServiceIds.add_member(:service_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIds, location_name: 'ServiceIds', traits: {"smithy.api#documentation" => "<p>Services to which the annotation applies.</p>"}))
    ValueWithServiceIds.type = Types::ValueWithServiceIds
    ValuesWithServiceIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValueWithServiceIds)

    AWSXRay = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.xray#AWSXRay"
      service.name = "AWSXRay"
      service.version = "2016-04-12"
      service.traits = {"aws.api#service" => {"sdkId" => "XRay", "arnNamespace" => "xray", "cloudFormationName" => "XRay", "cloudTrailEventSource" => "xray.amazonaws.com", "endpointPrefix" => "xray"}, "aws.auth#sigv4" => {"name" => "xray"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS X-Ray"}
      service.add_operation(:batch_get_traces, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#BatchGetTraces"
        operation.name = "BatchGetTraces"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetTracesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetTracesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/Traces", "code" => 200}}
        operation[:paginator] = Paginators::BatchGetTraces.new
      end)
      service.add_operation(:cancel_trace_retrieval, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#CancelTraceRetrieval"
        operation.name = "CancelTraceRetrieval"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelTraceRetrievalRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelTraceRetrievalResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CancelTraceRetrieval", "code" => 200}}
      end)
      service.add_operation(:create_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#CreateGroup"
        operation.name = "CreateGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGroupResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateGroup", "code" => 200}}
      end)
      service.add_operation(:create_sampling_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#CreateSamplingRule"
        operation.name = "CreateSamplingRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSamplingRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSamplingRuleResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RuleLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateSamplingRule", "code" => 200}}
      end)
      service.add_operation(:delete_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#DeleteGroup"
        operation.name = "DeleteGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGroupResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteGroup", "code" => 200}}
      end)
      service.add_operation(:delete_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyRevisionIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteResourcePolicy", "code" => 200}}
      end)
      service.add_operation(:delete_sampling_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#DeleteSamplingRule"
        operation.name = "DeleteSamplingRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSamplingRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSamplingRuleResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteSamplingRule", "code" => 200}}
      end)
      service.add_operation(:get_encryption_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetEncryptionConfig"
        operation.name = "GetEncryptionConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEncryptionConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEncryptionConfigResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/EncryptionConfig", "code" => 200}}
      end)
      service.add_operation(:get_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetGroup"
        operation.name = "GetGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetGroup", "code" => 200}}
      end)
      service.add_operation(:get_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetGroups"
        operation.name = "GetGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/Groups", "code" => 200}}
        operation[:paginator] = Paginators::GetGroups.new
      end)
      service.add_operation(:get_indexing_rules, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetIndexingRules"
        operation.name = "GetIndexingRules"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIndexingRulesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIndexingRulesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetIndexingRules", "code" => 200}}
      end)
      service.add_operation(:get_insight, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetInsight"
        operation.name = "GetInsight"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/Insight", "code" => 200}}
      end)
      service.add_operation(:get_insight_events, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetInsightEvents"
        operation.name = "GetInsightEvents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightEventsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightEventsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/InsightEvents", "code" => 200}}
        operation[:paginator] = Paginators::GetInsightEvents.new
      end)
      service.add_operation(:get_insight_impact_graph, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetInsightImpactGraph"
        operation.name = "GetInsightImpactGraph"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightImpactGraphRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightImpactGraphResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/InsightImpactGraph", "code" => 200}}
      end)
      service.add_operation(:get_insight_summaries, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetInsightSummaries"
        operation.name = "GetInsightSummaries"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightSummariesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightSummariesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/InsightSummaries", "code" => 200}}
        operation[:paginator] = Paginators::GetInsightSummaries.new
      end)
      service.add_operation(:get_retrieved_traces_graph, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetRetrievedTracesGraph"
        operation.name = "GetRetrievedTracesGraph"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRetrievedTracesGraphRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRetrievedTracesGraphResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetRetrievedTracesGraph", "code" => 200}}
      end)
      service.add_operation(:get_sampling_rules, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetSamplingRules"
        operation.name = "GetSamplingRules"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSamplingRulesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSamplingRulesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetSamplingRules", "code" => 200}}
        operation[:paginator] = Paginators::GetSamplingRules.new
      end)
      service.add_operation(:get_sampling_statistic_summaries, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetSamplingStatisticSummaries"
        operation.name = "GetSamplingStatisticSummaries"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSamplingStatisticSummariesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSamplingStatisticSummariesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/SamplingStatisticSummaries", "code" => 200}}
        operation[:paginator] = Paginators::GetSamplingStatisticSummaries.new
      end)
      service.add_operation(:get_sampling_targets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetSamplingTargets"
        operation.name = "GetSamplingTargets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSamplingTargetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSamplingTargetsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/SamplingTargets", "code" => 200}}
      end)
      service.add_operation(:get_service_graph, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetServiceGraph"
        operation.name = "GetServiceGraph"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceGraphRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceGraphResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ServiceGraph", "code" => 200}}
        operation[:paginator] = Paginators::GetServiceGraph.new
      end)
      service.add_operation(:get_time_series_service_statistics, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetTimeSeriesServiceStatistics"
        operation.name = "GetTimeSeriesServiceStatistics"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTimeSeriesServiceStatisticsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTimeSeriesServiceStatisticsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/TimeSeriesServiceStatistics", "code" => 200}}
        operation[:paginator] = Paginators::GetTimeSeriesServiceStatistics.new
      end)
      service.add_operation(:get_trace_graph, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetTraceGraph"
        operation.name = "GetTraceGraph"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTraceGraphRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTraceGraphResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/TraceGraph", "code" => 200}}
        operation[:paginator] = Paginators::GetTraceGraph.new
      end)
      service.add_operation(:get_trace_segment_destination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetTraceSegmentDestination"
        operation.name = "GetTraceSegmentDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTraceSegmentDestinationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTraceSegmentDestinationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetTraceSegmentDestination", "code" => 200}}
      end)
      service.add_operation(:get_trace_summaries, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetTraceSummaries"
        operation.name = "GetTraceSummaries"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTraceSummariesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTraceSummariesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/TraceSummaries", "code" => 200}}
        operation[:paginator] = Paginators::GetTraceSummaries.new
      end)
      service.add_operation(:list_resource_policies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#ListResourcePolicies"
        operation.name = "ListResourcePolicies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcePoliciesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcePoliciesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListResourcePolicies", "code" => 200}}
        operation[:paginator] = Paginators::ListResourcePolicies.new
      end)
      service.add_operation(:list_retrieved_traces, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#ListRetrievedTraces"
        operation.name = "ListRetrievedTraces"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRetrievedTracesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRetrievedTracesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListRetrievedTraces", "code" => 200}}
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListTagsForResource", "code" => 200}}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:put_encryption_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#PutEncryptionConfig"
        operation.name = "PutEncryptionConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEncryptionConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEncryptionConfigResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/PutEncryptionConfig", "code" => 200}}
      end)
      service.add_operation(:put_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyRevisionIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LockoutPreventionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedPolicyDocumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyCountLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicySizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/PutResourcePolicy", "code" => 200}}
      end)
      service.add_operation(:put_telemetry_records, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#PutTelemetryRecords"
        operation.name = "PutTelemetryRecords"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutTelemetryRecordsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutTelemetryRecordsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/TelemetryRecords", "code" => 200}}
      end)
      service.add_operation(:put_trace_segments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#PutTraceSegments"
        operation.name = "PutTraceSegments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutTraceSegmentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutTraceSegmentsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/TraceSegments", "code" => 200}}
      end)
      service.add_operation(:start_trace_retrieval, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#StartTraceRetrieval"
        operation.name = "StartTraceRetrieval"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartTraceRetrievalRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartTraceRetrievalResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StartTraceRetrieval", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/TagResource", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UntagResource", "code" => 200}}
      end)
      service.add_operation(:update_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#UpdateGroup"
        operation.name = "UpdateGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGroupResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateGroup", "code" => 200}}
      end)
      service.add_operation(:update_indexing_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#UpdateIndexingRule"
        operation.name = "UpdateIndexingRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIndexingRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIndexingRuleResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateIndexingRule", "code" => 200}}
      end)
      service.add_operation(:update_sampling_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#UpdateSamplingRule"
        operation.name = "UpdateSamplingRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSamplingRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSamplingRuleResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateSamplingRule", "code" => 200}}
      end)
      service.add_operation(:update_trace_segment_destination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#UpdateTraceSegmentDestination"
        operation.name = "UpdateTraceSegmentDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTraceSegmentDestinationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTraceSegmentDestinationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateTraceSegmentDestination", "code" => 200}}
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
