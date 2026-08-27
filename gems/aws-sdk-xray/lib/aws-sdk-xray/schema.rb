# frozen_string_literal: true

# This is generated code!

module Aws::XRay
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Alias = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#Alias", name: "Alias")
    AliasList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#AliasList", name: "AliasList")
    AliasNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#AliasNames", name: "AliasNames")
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    AnnotationKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#AnnotationKey", name: "AnnotationKey")
    AnnotationValue = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.xray#AnnotationValue", name: "AnnotationValue")
    Annotations = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.xray#Annotations", name: "Annotations")
    AnomalousService = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#AnomalousService", name: "AnomalousService")
    AnomalousServiceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#AnomalousServiceList", name: "AnomalousServiceList")
    AnomalyCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.xray#AnomalyCount", name: "AnomalyCount", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    AttributeKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#AttributeKey", name: "AttributeKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    AttributeMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.xray#AttributeMap", name: "AttributeMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    AttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#AttributeValue", name: "AttributeValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    AvailabilityZoneDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#AvailabilityZoneDetail", name: "AvailabilityZoneDetail")
    BackendConnectionErrors = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#BackendConnectionErrors", name: "BackendConnectionErrors")
    BatchGetTracesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#BatchGetTracesRequest", name: "BatchGetTracesRequest")
    BatchGetTracesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#BatchGetTracesResult", name: "BatchGetTracesResult")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.xray#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    BorrowCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.xray#BorrowCount", name: "BorrowCount", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    CancelTraceRetrievalRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#CancelTraceRetrievalRequest", name: "CancelTraceRetrievalRequest")
    CancelTraceRetrievalResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#CancelTraceRetrievalResult", name: "CancelTraceRetrievalResult")
    ClientID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#ClientID", name: "ClientID", traits: {"smithy.api#length" => {"min" => 24, "max" => 24}})
    CooldownWindowMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.xray#CooldownWindowMinutes", name: "CooldownWindowMinutes", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    CreateGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#CreateGroupRequest", name: "CreateGroupRequest")
    CreateGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#CreateGroupResult", name: "CreateGroupResult")
    CreateSamplingRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#CreateSamplingRuleRequest", name: "CreateSamplingRuleRequest")
    CreateSamplingRuleResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#CreateSamplingRuleResult", name: "CreateSamplingRuleResult")
    DeleteGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#DeleteGroupRequest", name: "DeleteGroupRequest")
    DeleteGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#DeleteGroupResult", name: "DeleteGroupResult")
    DeleteResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#DeleteResourcePolicyRequest", name: "DeleteResourcePolicyRequest")
    DeleteResourcePolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#DeleteResourcePolicyResult", name: "DeleteResourcePolicyResult")
    DeleteSamplingRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#DeleteSamplingRuleRequest", name: "DeleteSamplingRuleRequest")
    DeleteSamplingRuleResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#DeleteSamplingRuleResult", name: "DeleteSamplingRuleResult")
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.xray#Double", name: "Double", traits: {"smithy.api#default" => 0})
    EC2InstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#EC2InstanceId", name: "EC2InstanceId", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    Edge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#Edge", name: "Edge")
    EdgeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#EdgeList", name: "EdgeList")
    EdgeStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#EdgeStatistics", name: "EdgeStatistics")
    EncryptionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#EncryptionConfig", name: "EncryptionConfig")
    EncryptionKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#EncryptionKeyId", name: "EncryptionKeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 3000}})
    EncryptionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.xray#EncryptionStatus", name: "EncryptionStatus")
    EncryptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.xray#EncryptionType", name: "EncryptionType")
    EntitySelectorExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#EntitySelectorExpression", name: "EntitySelectorExpression", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#ErrorMessage", name: "ErrorMessage")
    ErrorRootCause = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#ErrorRootCause", name: "ErrorRootCause")
    ErrorRootCauseEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#ErrorRootCauseEntity", name: "ErrorRootCauseEntity")
    ErrorRootCauseEntityPath = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#ErrorRootCauseEntityPath", name: "ErrorRootCauseEntityPath")
    ErrorRootCauseService = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#ErrorRootCauseService", name: "ErrorRootCauseService")
    ErrorRootCauseServices = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#ErrorRootCauseServices", name: "ErrorRootCauseServices")
    ErrorRootCauses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#ErrorRootCauses", name: "ErrorRootCauses")
    ErrorStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#ErrorStatistics", name: "ErrorStatistics")
    EventSummaryText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#EventSummaryText", name: "EventSummaryText")
    FaultRootCause = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#FaultRootCause", name: "FaultRootCause")
    FaultRootCauseEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#FaultRootCauseEntity", name: "FaultRootCauseEntity")
    FaultRootCauseEntityPath = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#FaultRootCauseEntityPath", name: "FaultRootCauseEntityPath")
    FaultRootCauseService = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#FaultRootCauseService", name: "FaultRootCauseService")
    FaultRootCauseServices = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#FaultRootCauseServices", name: "FaultRootCauseServices")
    FaultRootCauses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#FaultRootCauses", name: "FaultRootCauses")
    FaultStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#FaultStatistics", name: "FaultStatistics")
    FilterExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#FilterExpression", name: "FilterExpression")
    FixedRate = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.xray#FixedRate", name: "FixedRate", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1}})
    ForecastStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#ForecastStatistics", name: "ForecastStatistics")
    GetEncryptionConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetEncryptionConfigRequest", name: "GetEncryptionConfigRequest")
    GetEncryptionConfigResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetEncryptionConfigResult", name: "GetEncryptionConfigResult")
    GetGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetGroupRequest", name: "GetGroupRequest")
    GetGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetGroupResult", name: "GetGroupResult")
    GetGroupsNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#GetGroupsNextToken", name: "GetGroupsNextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    GetGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetGroupsRequest", name: "GetGroupsRequest")
    GetGroupsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetGroupsResult", name: "GetGroupsResult")
    GetIndexingRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetIndexingRulesRequest", name: "GetIndexingRulesRequest")
    GetIndexingRulesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetIndexingRulesResult", name: "GetIndexingRulesResult")
    GetInsightEventsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.xray#GetInsightEventsMaxResults", name: "GetInsightEventsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    GetInsightEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetInsightEventsRequest", name: "GetInsightEventsRequest")
    GetInsightEventsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetInsightEventsResult", name: "GetInsightEventsResult")
    GetInsightImpactGraphRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetInsightImpactGraphRequest", name: "GetInsightImpactGraphRequest")
    GetInsightImpactGraphResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetInsightImpactGraphResult", name: "GetInsightImpactGraphResult")
    GetInsightRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetInsightRequest", name: "GetInsightRequest")
    GetInsightResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetInsightResult", name: "GetInsightResult")
    GetInsightSummariesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.xray#GetInsightSummariesMaxResults", name: "GetInsightSummariesMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    GetInsightSummariesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetInsightSummariesRequest", name: "GetInsightSummariesRequest")
    GetInsightSummariesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetInsightSummariesResult", name: "GetInsightSummariesResult")
    GetRetrievedTracesGraphRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetRetrievedTracesGraphRequest", name: "GetRetrievedTracesGraphRequest")
    GetRetrievedTracesGraphResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetRetrievedTracesGraphResult", name: "GetRetrievedTracesGraphResult")
    GetSamplingRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetSamplingRulesRequest", name: "GetSamplingRulesRequest")
    GetSamplingRulesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetSamplingRulesResult", name: "GetSamplingRulesResult")
    GetSamplingStatisticSummariesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetSamplingStatisticSummariesRequest", name: "GetSamplingStatisticSummariesRequest")
    GetSamplingStatisticSummariesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetSamplingStatisticSummariesResult", name: "GetSamplingStatisticSummariesResult")
    GetSamplingTargetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetSamplingTargetsRequest", name: "GetSamplingTargetsRequest")
    GetSamplingTargetsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetSamplingTargetsResult", name: "GetSamplingTargetsResult")
    GetServiceGraphRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetServiceGraphRequest", name: "GetServiceGraphRequest")
    GetServiceGraphResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetServiceGraphResult", name: "GetServiceGraphResult")
    GetTimeSeriesServiceStatisticsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetTimeSeriesServiceStatisticsRequest", name: "GetTimeSeriesServiceStatisticsRequest")
    GetTimeSeriesServiceStatisticsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetTimeSeriesServiceStatisticsResult", name: "GetTimeSeriesServiceStatisticsResult")
    GetTraceGraphRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetTraceGraphRequest", name: "GetTraceGraphRequest")
    GetTraceGraphResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetTraceGraphResult", name: "GetTraceGraphResult")
    GetTraceSegmentDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetTraceSegmentDestinationRequest", name: "GetTraceSegmentDestinationRequest")
    GetTraceSegmentDestinationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetTraceSegmentDestinationResult", name: "GetTraceSegmentDestinationResult")
    GetTraceSummariesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetTraceSummariesRequest", name: "GetTraceSummariesRequest")
    GetTraceSummariesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GetTraceSummariesResult", name: "GetTraceSummariesResult")
    GraphLink = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GraphLink", name: "GraphLink")
    Group = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#Group", name: "Group")
    GroupARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#GroupARN", name: "GroupARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 400}})
    GroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#GroupName", name: "GroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    GroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#GroupSummary", name: "GroupSummary")
    GroupSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#GroupSummaryList", name: "GroupSummaryList")
    HTTPMethod = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#HTTPMethod", name: "HTTPMethod", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    Histogram = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#Histogram", name: "Histogram")
    HistogramEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#HistogramEntry", name: "HistogramEntry")
    Host = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#Host", name: "Host", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    Hostname = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#Hostname", name: "Hostname", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    Http = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#Http", name: "Http")
    IndexingRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#IndexingRule", name: "IndexingRule")
    IndexingRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#IndexingRuleList", name: "IndexingRuleList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    IndexingRuleValue = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.xray#IndexingRuleValue", name: "IndexingRuleValue")
    IndexingRuleValueUpdate = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.xray#IndexingRuleValueUpdate", name: "IndexingRuleValueUpdate")
    Insight = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#Insight", name: "Insight")
    InsightCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.xray#InsightCategory", name: "InsightCategory")
    InsightCategoryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#InsightCategoryList", name: "InsightCategoryList")
    InsightEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#InsightEvent", name: "InsightEvent")
    InsightEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#InsightEventList", name: "InsightEventList")
    InsightId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#InsightId", name: "InsightId", traits: {"smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$"})
    InsightImpactGraphEdge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#InsightImpactGraphEdge", name: "InsightImpactGraphEdge")
    InsightImpactGraphEdgeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#InsightImpactGraphEdgeList", name: "InsightImpactGraphEdgeList")
    InsightImpactGraphService = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#InsightImpactGraphService", name: "InsightImpactGraphService")
    InsightImpactGraphServiceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#InsightImpactGraphServiceList", name: "InsightImpactGraphServiceList")
    InsightState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.xray#InsightState", name: "InsightState")
    InsightStateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#InsightStateList", name: "InsightStateList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    InsightSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#InsightSummary", name: "InsightSummary")
    InsightSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#InsightSummaryList", name: "InsightSummaryList")
    InsightSummaryText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#InsightSummaryText", name: "InsightSummaryText")
    InsightsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#InsightsConfiguration", name: "InsightsConfiguration")
    InstanceIdDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#InstanceIdDetail", name: "InstanceIdDetail")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.xray#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    InvalidPolicyRevisionIdException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#InvalidPolicyRevisionIdException", name: "InvalidPolicyRevisionIdException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client"})
    LinksList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#LinksList", name: "LinksList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ListResourcePoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#ListResourcePoliciesRequest", name: "ListResourcePoliciesRequest")
    ListResourcePoliciesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#ListResourcePoliciesResult", name: "ListResourcePoliciesResult")
    ListRetrievedTracesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#ListRetrievedTracesRequest", name: "ListRetrievedTracesRequest")
    ListRetrievedTracesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#ListRetrievedTracesResult", name: "ListRetrievedTracesResult")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    LockoutPreventionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#LockoutPreventionException", name: "LockoutPreventionException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MalformedPolicyDocumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#MalformedPolicyDocumentException", name: "MalformedPolicyDocumentException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MaxRate = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.xray#MaxRate", name: "MaxRate", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1}})
    NullableBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.xray#NullableBoolean", name: "NullableBoolean")
    NullableDouble = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.xray#NullableDouble", name: "NullableDouble")
    NullableInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.xray#NullableInteger", name: "NullableInteger")
    NullableLong = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.xray#NullableLong", name: "NullableLong")
    PolicyCountLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#PolicyCountLimitExceededException", name: "PolicyCountLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#PolicyDocument", name: "PolicyDocument")
    PolicyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#PolicyName", name: "PolicyName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w+=,.@-]+$"})
    PolicyRevisionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#PolicyRevisionId", name: "PolicyRevisionId")
    PolicySizeLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#PolicySizeLimitExceededException", name: "PolicySizeLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Priority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.xray#Priority", name: "Priority", traits: {"smithy.api#range" => {"min" => 1, "max" => 9999}})
    ProbabilisticRuleValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#ProbabilisticRuleValue", name: "ProbabilisticRuleValue")
    ProbabilisticRuleValueUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#ProbabilisticRuleValueUpdate", name: "ProbabilisticRuleValueUpdate")
    PutEncryptionConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#PutEncryptionConfigRequest", name: "PutEncryptionConfigRequest")
    PutEncryptionConfigResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#PutEncryptionConfigResult", name: "PutEncryptionConfigResult")
    PutResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#PutResourcePolicyRequest", name: "PutResourcePolicyRequest")
    PutResourcePolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#PutResourcePolicyResult", name: "PutResourcePolicyResult")
    PutTelemetryRecordsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#PutTelemetryRecordsRequest", name: "PutTelemetryRecordsRequest")
    PutTelemetryRecordsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#PutTelemetryRecordsResult", name: "PutTelemetryRecordsResult")
    PutTraceSegmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#PutTraceSegmentsRequest", name: "PutTraceSegmentsRequest")
    PutTraceSegmentsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#PutTraceSegmentsResult", name: "PutTraceSegmentsResult")
    RequestCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.xray#RequestCount", name: "RequestCount", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    RequestImpactStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#RequestImpactStatistics", name: "RequestImpactStatistics")
    ReservoirSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.xray#ReservoirSize", name: "ReservoirSize", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    ResourceARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#ResourceARN", name: "ResourceARN", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    ResourceARNDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#ResourceARNDetail", name: "ResourceARNDetail")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#ResourcePolicy", name: "ResourcePolicy")
    ResourcePolicyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#ResourcePolicyList", name: "ResourcePolicyList")
    ResourcePolicyNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#ResourcePolicyNextToken", name: "ResourcePolicyNextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ResponseTimeRootCause = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#ResponseTimeRootCause", name: "ResponseTimeRootCause")
    ResponseTimeRootCauseEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#ResponseTimeRootCauseEntity", name: "ResponseTimeRootCauseEntity")
    ResponseTimeRootCauseEntityPath = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#ResponseTimeRootCauseEntityPath", name: "ResponseTimeRootCauseEntityPath")
    ResponseTimeRootCauseService = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#ResponseTimeRootCauseService", name: "ResponseTimeRootCauseService")
    ResponseTimeRootCauseServices = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#ResponseTimeRootCauseServices", name: "ResponseTimeRootCauseServices")
    ResponseTimeRootCauses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#ResponseTimeRootCauses", name: "ResponseTimeRootCauses")
    RetrievalStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.xray#RetrievalStatus", name: "RetrievalStatus")
    RetrievalToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#RetrievalToken", name: "RetrievalToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 1020}})
    RetrievedService = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#RetrievedService", name: "RetrievedService")
    RetrievedServicesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#RetrievedServicesList", name: "RetrievedServicesList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    RetrievedTrace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#RetrievedTrace", name: "RetrievedTrace")
    RootCauseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#RootCauseException", name: "RootCauseException")
    RootCauseExceptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#RootCauseExceptions", name: "RootCauseExceptions")
    RuleLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#RuleLimitExceededException", name: "RuleLimitExceededException", traits: {"smithy.api#error" => "client"})
    RuleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#RuleName", name: "RuleName", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    SampledAnomalyCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.xray#SampledAnomalyCount", name: "SampledAnomalyCount", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    SampledCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.xray#SampledCount", name: "SampledCount", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    SamplingBoost = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#SamplingBoost", name: "SamplingBoost")
    SamplingBoostStatisticsDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#SamplingBoostStatisticsDocument", name: "SamplingBoostStatisticsDocument")
    SamplingBoostStatisticsDocumentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#SamplingBoostStatisticsDocumentList", name: "SamplingBoostStatisticsDocumentList", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    SamplingRateBoost = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#SamplingRateBoost", name: "SamplingRateBoost")
    SamplingRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#SamplingRule", name: "SamplingRule")
    SamplingRuleRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#SamplingRuleRecord", name: "SamplingRuleRecord")
    SamplingRuleRecordList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#SamplingRuleRecordList", name: "SamplingRuleRecordList")
    SamplingRuleUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#SamplingRuleUpdate", name: "SamplingRuleUpdate")
    SamplingStatisticSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#SamplingStatisticSummary", name: "SamplingStatisticSummary")
    SamplingStatisticSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#SamplingStatisticSummaryList", name: "SamplingStatisticSummaryList")
    SamplingStatisticsDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#SamplingStatisticsDocument", name: "SamplingStatisticsDocument")
    SamplingStatisticsDocumentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#SamplingStatisticsDocumentList", name: "SamplingStatisticsDocumentList", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    SamplingStrategy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#SamplingStrategy", name: "SamplingStrategy")
    SamplingStrategyName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.xray#SamplingStrategyName", name: "SamplingStrategyName")
    SamplingTargetDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#SamplingTargetDocument", name: "SamplingTargetDocument")
    SamplingTargetDocumentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#SamplingTargetDocumentList", name: "SamplingTargetDocumentList")
    Segment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#Segment", name: "Segment")
    SegmentDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#SegmentDocument", name: "SegmentDocument", traits: {"smithy.api#length" => {"min" => 1}})
    SegmentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#SegmentId", name: "SegmentId")
    SegmentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#SegmentList", name: "SegmentList")
    Service = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#Service", name: "Service")
    ServiceId = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#ServiceId", name: "ServiceId")
    ServiceIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#ServiceIds", name: "ServiceIds")
    ServiceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#ServiceList", name: "ServiceList")
    ServiceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#ServiceName", name: "ServiceName", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    ServiceNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#ServiceNames", name: "ServiceNames")
    ServiceStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#ServiceStatistics", name: "ServiceStatistics")
    ServiceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#ServiceType", name: "ServiceType", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    Span = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#Span", name: "Span")
    SpanDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#SpanDocument", name: "SpanDocument", traits: {"smithy.api#length" => {"min" => 0, "max" => 204800}})
    SpanId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#SpanId", name: "SpanId", traits: {"smithy.api#length" => {"min" => 1, "max" => 16}})
    SpanList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#SpanList", name: "SpanList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    StartTraceRetrievalRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#StartTraceRetrievalRequest", name: "StartTraceRetrievalRequest")
    StartTraceRetrievalResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#StartTraceRetrievalResult", name: "StartTraceRetrievalResult")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#String", name: "String")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TelemetryRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#TelemetryRecord", name: "TelemetryRecord")
    TelemetryRecordList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#TelemetryRecordList", name: "TelemetryRecordList")
    ThrottledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#ThrottledException", name: "ThrottledException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimeRangeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.xray#TimeRangeType", name: "TimeRangeType")
    TimeSeriesServiceStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#TimeSeriesServiceStatistics", name: "TimeSeriesServiceStatistics")
    TimeSeriesServiceStatisticsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#TimeSeriesServiceStatisticsList", name: "TimeSeriesServiceStatisticsList")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.xray#Timestamp", name: "Timestamp")
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#Token", name: "Token", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TotalCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.xray#TotalCount", name: "TotalCount", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    Trace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#Trace", name: "Trace")
    TraceAvailabilityZones = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#TraceAvailabilityZones", name: "TraceAvailabilityZones")
    TraceFormatType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.xray#TraceFormatType", name: "TraceFormatType")
    TraceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#TraceId", name: "TraceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 35}})
    TraceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#TraceIdList", name: "TraceIdList")
    TraceIdListForRetrieval = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#TraceIdListForRetrieval", name: "TraceIdListForRetrieval", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    TraceInstanceIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#TraceInstanceIds", name: "TraceInstanceIds")
    TraceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#TraceList", name: "TraceList")
    TraceResourceARNs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#TraceResourceARNs", name: "TraceResourceARNs")
    TraceSegmentDestination = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.xray#TraceSegmentDestination", name: "TraceSegmentDestination")
    TraceSegmentDestinationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.xray#TraceSegmentDestinationStatus", name: "TraceSegmentDestinationStatus")
    TraceSegmentDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#TraceSegmentDocument", name: "TraceSegmentDocument")
    TraceSegmentDocumentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#TraceSegmentDocumentList", name: "TraceSegmentDocumentList")
    TraceSpanList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#TraceSpanList", name: "TraceSpanList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    TraceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#TraceSummary", name: "TraceSummary")
    TraceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#TraceSummaryList", name: "TraceSummaryList")
    TraceUser = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#TraceUser", name: "TraceUser")
    TraceUsers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#TraceUsers", name: "TraceUsers")
    URLPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.xray#URLPath", name: "URLPath", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    UnprocessedStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#UnprocessedStatistics", name: "UnprocessedStatistics")
    UnprocessedStatisticsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#UnprocessedStatisticsList", name: "UnprocessedStatisticsList")
    UnprocessedTraceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#UnprocessedTraceIdList", name: "UnprocessedTraceIdList")
    UnprocessedTraceSegment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#UnprocessedTraceSegment", name: "UnprocessedTraceSegment")
    UnprocessedTraceSegmentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#UnprocessedTraceSegmentList", name: "UnprocessedTraceSegmentList")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#UpdateGroupRequest", name: "UpdateGroupRequest")
    UpdateGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#UpdateGroupResult", name: "UpdateGroupResult")
    UpdateIndexingRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#UpdateIndexingRuleRequest", name: "UpdateIndexingRuleRequest")
    UpdateIndexingRuleResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#UpdateIndexingRuleResult", name: "UpdateIndexingRuleResult")
    UpdateSamplingRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#UpdateSamplingRuleRequest", name: "UpdateSamplingRuleRequest")
    UpdateSamplingRuleResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#UpdateSamplingRuleResult", name: "UpdateSamplingRuleResult")
    UpdateTraceSegmentDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#UpdateTraceSegmentDestinationRequest", name: "UpdateTraceSegmentDestinationRequest")
    UpdateTraceSegmentDestinationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#UpdateTraceSegmentDestinationResult", name: "UpdateTraceSegmentDestinationResult")
    ValueWithServiceIds = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.xray#ValueWithServiceIds", name: "ValueWithServiceIds")
    ValuesWithServiceIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.xray#ValuesWithServiceIds", name: "ValuesWithServiceIds")
    Version = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.xray#Version", name: "Version", traits: {"smithy.api#range" => {"min" => 1}})

    Alias.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    Alias.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasNames, name: "Names"))
    Alias.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    Alias.type = Types::Alias
    AliasList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, name: "member")
    AliasNames.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member")
    AnnotationValue.add_member(:number_value, Types::AnnotationValue::NumberValue, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableDouble, name: "NumberValue"))
    AnnotationValue.add_member(:boolean_value, Types::AnnotationValue::BooleanValue, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "BooleanValue"))
    AnnotationValue.add_member(:string_value, Types::AnnotationValue::StringValue, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StringValue"))
    AnnotationValue.add_member(:unknown, Types::AnnotationValue::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AnnotationValue.type = Types::AnnotationValue
    Annotations.key = ::Smithy::Schema::Shapes::MemberShape.new(target: AnnotationKey, name: "key")
    Annotations.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ValuesWithServiceIds, name: "value")
    AnomalousService.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "ServiceId"))
    AnomalousService.type = Types::AnomalousService
    AnomalousServiceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalousService, name: "member")
    AttributeMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeKey, name: "key")
    AttributeMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "value")
    AvailabilityZoneDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    AvailabilityZoneDetail.type = Types::AvailabilityZoneDetail
    BackendConnectionErrors.add_member(:timeout_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "TimeoutCount"))
    BackendConnectionErrors.add_member(:connection_refused_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "ConnectionRefusedCount"))
    BackendConnectionErrors.add_member(:http_code4_xx_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "HTTPCode4XXCount"))
    BackendConnectionErrors.add_member(:http_code5_xx_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "HTTPCode5XXCount"))
    BackendConnectionErrors.add_member(:unknown_host_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "UnknownHostCount"))
    BackendConnectionErrors.add_member(:other_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "OtherCount"))
    BackendConnectionErrors.type = Types::BackendConnectionErrors
    BatchGetTracesRequest.add_member(:trace_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceIdList, name: "TraceIds", traits: {"smithy.api#required" => {}}))
    BatchGetTracesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    BatchGetTracesRequest.type = Types::BatchGetTracesRequest
    BatchGetTracesResult.add_member(:traces, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceList, name: "Traces"))
    BatchGetTracesResult.add_member(:unprocessed_trace_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedTraceIdList, name: "UnprocessedTraceIds"))
    BatchGetTracesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    BatchGetTracesResult.type = Types::BatchGetTracesResult
    CancelTraceRetrievalRequest.add_member(:retrieval_token, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalToken, name: "RetrievalToken", traits: {"smithy.api#required" => {}}))
    CancelTraceRetrievalRequest.type = Types::CancelTraceRetrievalRequest
    CancelTraceRetrievalResult.type = Types::CancelTraceRetrievalResult
    CreateGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, name: "GroupName", traits: {"smithy.api#required" => {}}))
    CreateGroupRequest.add_member(:filter_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterExpression, name: "FilterExpression"))
    CreateGroupRequest.add_member(:insights_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsConfiguration, name: "InsightsConfiguration"))
    CreateGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateGroupRequest.type = Types::CreateGroupRequest
    CreateGroupResult.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: Group, name: "Group"))
    CreateGroupResult.type = Types::CreateGroupResult
    CreateSamplingRuleRequest.add_member(:sampling_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: SamplingRule, name: "SamplingRule", traits: {"smithy.api#required" => {}}))
    CreateSamplingRuleRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateSamplingRuleRequest.type = Types::CreateSamplingRuleRequest
    CreateSamplingRuleResult.add_member(:sampling_rule_record, ::Smithy::Schema::Shapes::MemberShape.new(target: SamplingRuleRecord, name: "SamplingRuleRecord"))
    CreateSamplingRuleResult.type = Types::CreateSamplingRuleResult
    DeleteGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, name: "GroupName"))
    DeleteGroupRequest.add_member(:group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupARN, name: "GroupARN"))
    DeleteGroupRequest.type = Types::DeleteGroupRequest
    DeleteGroupResult.type = Types::DeleteGroupResult
    DeleteResourcePolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "PolicyName", traits: {"smithy.api#required" => {}}))
    DeleteResourcePolicyRequest.add_member(:policy_revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevisionId, name: "PolicyRevisionId"))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteResourcePolicyResult.type = Types::DeleteResourcePolicyResult
    DeleteSamplingRuleRequest.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RuleName"))
    DeleteSamplingRuleRequest.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RuleARN"))
    DeleteSamplingRuleRequest.type = Types::DeleteSamplingRuleRequest
    DeleteSamplingRuleResult.add_member(:sampling_rule_record, ::Smithy::Schema::Shapes::MemberShape.new(target: SamplingRuleRecord, name: "SamplingRuleRecord"))
    DeleteSamplingRuleResult.type = Types::DeleteSamplingRuleResult
    Edge.add_member(:reference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "ReferenceId"))
    Edge.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime"))
    Edge.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    Edge.add_member(:summary_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: EdgeStatistics, name: "SummaryStatistics"))
    Edge.add_member(:response_time_histogram, ::Smithy::Schema::Shapes::MemberShape.new(target: Histogram, name: "ResponseTimeHistogram"))
    Edge.add_member(:aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasList, name: "Aliases"))
    Edge.add_member(:edge_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EdgeType"))
    Edge.add_member(:received_event_age_histogram, ::Smithy::Schema::Shapes::MemberShape.new(target: Histogram, name: "ReceivedEventAgeHistogram"))
    Edge.type = Types::Edge
    EdgeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Edge, name: "member")
    EdgeStatistics.add_member(:ok_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableLong, name: "OkCount"))
    EdgeStatistics.add_member(:error_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorStatistics, name: "ErrorStatistics"))
    EdgeStatistics.add_member(:fault_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: FaultStatistics, name: "FaultStatistics"))
    EdgeStatistics.add_member(:total_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableLong, name: "TotalCount"))
    EdgeStatistics.add_member(:total_response_time, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableDouble, name: "TotalResponseTime"))
    EdgeStatistics.type = Types::EdgeStatistics
    EncryptionConfig.add_member(:key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KeyId"))
    EncryptionConfig.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionStatus, name: "Status"))
    EncryptionConfig.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "Type"))
    EncryptionConfig.type = Types::EncryptionConfig
    EncryptionStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    EncryptionStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    EncryptionType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    EncryptionType.add_member(:kms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS", traits: {"smithy.api#enumValue" => "KMS"}))
    ErrorRootCause.add_member(:services, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorRootCauseServices, name: "Services"))
    ErrorRootCause.add_member(:client_impacting, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "ClientImpacting"))
    ErrorRootCause.type = Types::ErrorRootCause
    ErrorRootCauseEntity.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    ErrorRootCauseEntity.add_member(:exceptions, ::Smithy::Schema::Shapes::MemberShape.new(target: RootCauseExceptions, name: "Exceptions"))
    ErrorRootCauseEntity.add_member(:remote, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "Remote"))
    ErrorRootCauseEntity.type = Types::ErrorRootCauseEntity
    ErrorRootCauseEntityPath.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorRootCauseEntity, name: "member")
    ErrorRootCauseService.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    ErrorRootCauseService.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNames, name: "Names"))
    ErrorRootCauseService.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    ErrorRootCauseService.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccountId"))
    ErrorRootCauseService.add_member(:entity_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorRootCauseEntityPath, name: "EntityPath"))
    ErrorRootCauseService.add_member(:inferred, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "Inferred"))
    ErrorRootCauseService.type = Types::ErrorRootCauseService
    ErrorRootCauseServices.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorRootCauseService, name: "member")
    ErrorRootCauses.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorRootCause, name: "member")
    ErrorStatistics.add_member(:throttle_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableLong, name: "ThrottleCount"))
    ErrorStatistics.add_member(:other_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableLong, name: "OtherCount"))
    ErrorStatistics.add_member(:total_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableLong, name: "TotalCount"))
    ErrorStatistics.type = Types::ErrorStatistics
    FaultRootCause.add_member(:services, ::Smithy::Schema::Shapes::MemberShape.new(target: FaultRootCauseServices, name: "Services"))
    FaultRootCause.add_member(:client_impacting, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "ClientImpacting"))
    FaultRootCause.type = Types::FaultRootCause
    FaultRootCauseEntity.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    FaultRootCauseEntity.add_member(:exceptions, ::Smithy::Schema::Shapes::MemberShape.new(target: RootCauseExceptions, name: "Exceptions"))
    FaultRootCauseEntity.add_member(:remote, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "Remote"))
    FaultRootCauseEntity.type = Types::FaultRootCauseEntity
    FaultRootCauseEntityPath.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FaultRootCauseEntity, name: "member")
    FaultRootCauseService.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    FaultRootCauseService.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNames, name: "Names"))
    FaultRootCauseService.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    FaultRootCauseService.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccountId"))
    FaultRootCauseService.add_member(:entity_path, ::Smithy::Schema::Shapes::MemberShape.new(target: FaultRootCauseEntityPath, name: "EntityPath"))
    FaultRootCauseService.add_member(:inferred, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "Inferred"))
    FaultRootCauseService.type = Types::FaultRootCauseService
    FaultRootCauseServices.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FaultRootCauseService, name: "member")
    FaultRootCauses.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FaultRootCause, name: "member")
    FaultStatistics.add_member(:other_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableLong, name: "OtherCount"))
    FaultStatistics.add_member(:total_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableLong, name: "TotalCount"))
    FaultStatistics.type = Types::FaultStatistics
    ForecastStatistics.add_member(:fault_count_high, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableLong, name: "FaultCountHigh"))
    ForecastStatistics.add_member(:fault_count_low, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableLong, name: "FaultCountLow"))
    ForecastStatistics.type = Types::ForecastStatistics
    GetEncryptionConfigRequest.type = Types::GetEncryptionConfigRequest
    GetEncryptionConfigResult.add_member(:encryption_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfig, name: "EncryptionConfig"))
    GetEncryptionConfigResult.type = Types::GetEncryptionConfigResult
    GetGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, name: "GroupName"))
    GetGroupRequest.add_member(:group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupARN, name: "GroupARN"))
    GetGroupRequest.type = Types::GetGroupRequest
    GetGroupResult.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: Group, name: "Group"))
    GetGroupResult.type = Types::GetGroupResult
    GetGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GetGroupsNextToken, name: "NextToken"))
    GetGroupsRequest.type = Types::GetGroupsRequest
    GetGroupsResult.add_member(:groups, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupSummaryList, name: "Groups"))
    GetGroupsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetGroupsResult.type = Types::GetGroupsResult
    GetIndexingRulesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetIndexingRulesRequest.type = Types::GetIndexingRulesRequest
    GetIndexingRulesResult.add_member(:indexing_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexingRuleList, name: "IndexingRules"))
    GetIndexingRulesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetIndexingRulesResult.type = Types::GetIndexingRulesResult
    GetInsightEventsRequest.add_member(:insight_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightId, name: "InsightId", traits: {"smithy.api#required" => {}}))
    GetInsightEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: GetInsightEventsMaxResults, name: "MaxResults"))
    GetInsightEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    GetInsightEventsRequest.type = Types::GetInsightEventsRequest
    GetInsightEventsResult.add_member(:insight_events, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightEventList, name: "InsightEvents"))
    GetInsightEventsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    GetInsightEventsResult.type = Types::GetInsightEventsResult
    GetInsightImpactGraphRequest.add_member(:insight_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightId, name: "InsightId", traits: {"smithy.api#required" => {}}))
    GetInsightImpactGraphRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime", traits: {"smithy.api#required" => {}}))
    GetInsightImpactGraphRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime", traits: {"smithy.api#required" => {}}))
    GetInsightImpactGraphRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    GetInsightImpactGraphRequest.type = Types::GetInsightImpactGraphRequest
    GetInsightImpactGraphResult.add_member(:insight_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightId, name: "InsightId"))
    GetInsightImpactGraphResult.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime"))
    GetInsightImpactGraphResult.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    GetInsightImpactGraphResult.add_member(:service_graph_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ServiceGraphStartTime"))
    GetInsightImpactGraphResult.add_member(:service_graph_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ServiceGraphEndTime"))
    GetInsightImpactGraphResult.add_member(:services, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightImpactGraphServiceList, name: "Services"))
    GetInsightImpactGraphResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    GetInsightImpactGraphResult.type = Types::GetInsightImpactGraphResult
    GetInsightRequest.add_member(:insight_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightId, name: "InsightId", traits: {"smithy.api#required" => {}}))
    GetInsightRequest.type = Types::GetInsightRequest
    GetInsightResult.add_member(:insight, ::Smithy::Schema::Shapes::MemberShape.new(target: Insight, name: "Insight"))
    GetInsightResult.type = Types::GetInsightResult
    GetInsightSummariesRequest.add_member(:states, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightStateList, name: "States"))
    GetInsightSummariesRequest.add_member(:group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupARN, name: "GroupARN"))
    GetInsightSummariesRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, name: "GroupName"))
    GetInsightSummariesRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime", traits: {"smithy.api#required" => {}}))
    GetInsightSummariesRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime", traits: {"smithy.api#required" => {}}))
    GetInsightSummariesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: GetInsightSummariesMaxResults, name: "MaxResults"))
    GetInsightSummariesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    GetInsightSummariesRequest.type = Types::GetInsightSummariesRequest
    GetInsightSummariesResult.add_member(:insight_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightSummaryList, name: "InsightSummaries"))
    GetInsightSummariesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    GetInsightSummariesResult.type = Types::GetInsightSummariesResult
    GetRetrievedTracesGraphRequest.add_member(:retrieval_token, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalToken, name: "RetrievalToken", traits: {"smithy.api#required" => {}}))
    GetRetrievedTracesGraphRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetRetrievedTracesGraphRequest.type = Types::GetRetrievedTracesGraphRequest
    GetRetrievedTracesGraphResult.add_member(:retrieval_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalStatus, name: "RetrievalStatus"))
    GetRetrievedTracesGraphResult.add_member(:services, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievedServicesList, name: "Services"))
    GetRetrievedTracesGraphResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetRetrievedTracesGraphResult.type = Types::GetRetrievedTracesGraphResult
    GetSamplingRulesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetSamplingRulesRequest.type = Types::GetSamplingRulesRequest
    GetSamplingRulesResult.add_member(:sampling_rule_records, ::Smithy::Schema::Shapes::MemberShape.new(target: SamplingRuleRecordList, name: "SamplingRuleRecords"))
    GetSamplingRulesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetSamplingRulesResult.type = Types::GetSamplingRulesResult
    GetSamplingStatisticSummariesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetSamplingStatisticSummariesRequest.type = Types::GetSamplingStatisticSummariesRequest
    GetSamplingStatisticSummariesResult.add_member(:sampling_statistic_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: SamplingStatisticSummaryList, name: "SamplingStatisticSummaries"))
    GetSamplingStatisticSummariesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetSamplingStatisticSummariesResult.type = Types::GetSamplingStatisticSummariesResult
    GetSamplingTargetsRequest.add_member(:sampling_statistics_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: SamplingStatisticsDocumentList, name: "SamplingStatisticsDocuments", traits: {"smithy.api#required" => {}}))
    GetSamplingTargetsRequest.add_member(:sampling_boost_statistics_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: SamplingBoostStatisticsDocumentList, name: "SamplingBoostStatisticsDocuments"))
    GetSamplingTargetsRequest.type = Types::GetSamplingTargetsRequest
    GetSamplingTargetsResult.add_member(:sampling_target_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: SamplingTargetDocumentList, name: "SamplingTargetDocuments"))
    GetSamplingTargetsResult.add_member(:last_rule_modification, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastRuleModification"))
    GetSamplingTargetsResult.add_member(:unprocessed_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedStatisticsList, name: "UnprocessedStatistics"))
    GetSamplingTargetsResult.add_member(:unprocessed_boost_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedStatisticsList, name: "UnprocessedBoostStatistics"))
    GetSamplingTargetsResult.type = Types::GetSamplingTargetsResult
    GetServiceGraphRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime", traits: {"smithy.api#required" => {}}))
    GetServiceGraphRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime", traits: {"smithy.api#required" => {}}))
    GetServiceGraphRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, name: "GroupName"))
    GetServiceGraphRequest.add_member(:group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupARN, name: "GroupARN"))
    GetServiceGraphRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetServiceGraphRequest.type = Types::GetServiceGraphRequest
    GetServiceGraphResult.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime"))
    GetServiceGraphResult.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    GetServiceGraphResult.add_member(:services, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceList, name: "Services"))
    GetServiceGraphResult.add_member(:contains_old_group_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ContainsOldGroupVersions", traits: {"smithy.api#default" => false}))
    GetServiceGraphResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetServiceGraphResult.type = Types::GetServiceGraphResult
    GetTimeSeriesServiceStatisticsRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime", traits: {"smithy.api#required" => {}}))
    GetTimeSeriesServiceStatisticsRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime", traits: {"smithy.api#required" => {}}))
    GetTimeSeriesServiceStatisticsRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, name: "GroupName"))
    GetTimeSeriesServiceStatisticsRequest.add_member(:group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupARN, name: "GroupARN"))
    GetTimeSeriesServiceStatisticsRequest.add_member(:entity_selector_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitySelectorExpression, name: "EntitySelectorExpression"))
    GetTimeSeriesServiceStatisticsRequest.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "Period"))
    GetTimeSeriesServiceStatisticsRequest.add_member(:forecast_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "ForecastStatistics"))
    GetTimeSeriesServiceStatisticsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetTimeSeriesServiceStatisticsRequest.type = Types::GetTimeSeriesServiceStatisticsRequest
    GetTimeSeriesServiceStatisticsResult.add_member(:time_series_service_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeSeriesServiceStatisticsList, name: "TimeSeriesServiceStatistics"))
    GetTimeSeriesServiceStatisticsResult.add_member(:contains_old_group_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ContainsOldGroupVersions", traits: {"smithy.api#default" => false}))
    GetTimeSeriesServiceStatisticsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetTimeSeriesServiceStatisticsResult.type = Types::GetTimeSeriesServiceStatisticsResult
    GetTraceGraphRequest.add_member(:trace_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceIdList, name: "TraceIds", traits: {"smithy.api#required" => {}}))
    GetTraceGraphRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetTraceGraphRequest.type = Types::GetTraceGraphRequest
    GetTraceGraphResult.add_member(:services, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceList, name: "Services"))
    GetTraceGraphResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetTraceGraphResult.type = Types::GetTraceGraphResult
    GetTraceSegmentDestinationRequest.type = Types::GetTraceSegmentDestinationRequest
    GetTraceSegmentDestinationResult.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceSegmentDestination, name: "Destination"))
    GetTraceSegmentDestinationResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceSegmentDestinationStatus, name: "Status"))
    GetTraceSegmentDestinationResult.type = Types::GetTraceSegmentDestinationResult
    GetTraceSummariesRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime", traits: {"smithy.api#required" => {}}))
    GetTraceSummariesRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime", traits: {"smithy.api#required" => {}}))
    GetTraceSummariesRequest.add_member(:time_range_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeRangeType, name: "TimeRangeType"))
    GetTraceSummariesRequest.add_member(:sampling, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "Sampling"))
    GetTraceSummariesRequest.add_member(:sampling_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: SamplingStrategy, name: "SamplingStrategy"))
    GetTraceSummariesRequest.add_member(:filter_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterExpression, name: "FilterExpression"))
    GetTraceSummariesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetTraceSummariesRequest.type = Types::GetTraceSummariesRequest
    GetTraceSummariesResult.add_member(:trace_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceSummaryList, name: "TraceSummaries"))
    GetTraceSummariesResult.add_member(:approximate_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ApproximateTime"))
    GetTraceSummariesResult.add_member(:traces_processed_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableLong, name: "TracesProcessedCount"))
    GetTraceSummariesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetTraceSummariesResult.type = Types::GetTraceSummariesResult
    GraphLink.add_member(:reference_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReferenceType"))
    GraphLink.add_member(:source_trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceTraceId"))
    GraphLink.add_member(:destination_trace_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceIdList, name: "DestinationTraceIds"))
    GraphLink.type = Types::GraphLink
    Group.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupName"))
    Group.add_member(:group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupARN"))
    Group.add_member(:filter_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FilterExpression"))
    Group.add_member(:insights_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsConfiguration, name: "InsightsConfiguration"))
    Group.type = Types::Group
    GroupSummary.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupName"))
    GroupSummary.add_member(:group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupARN"))
    GroupSummary.add_member(:filter_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FilterExpression"))
    GroupSummary.add_member(:insights_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsConfiguration, name: "InsightsConfiguration"))
    GroupSummary.type = Types::GroupSummary
    GroupSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GroupSummary, name: "member")
    Histogram.member = ::Smithy::Schema::Shapes::MemberShape.new(target: HistogramEntry, name: "member")
    HistogramEntry.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Value", traits: {"smithy.api#default" => 0}))
    HistogramEntry.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Count", traits: {"smithy.api#default" => 0}))
    HistogramEntry.type = Types::HistogramEntry
    Http.add_member(:http_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HttpURL"))
    Http.add_member(:http_status, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "HttpStatus"))
    Http.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HttpMethod"))
    Http.add_member(:user_agent, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserAgent"))
    Http.add_member(:client_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClientIp"))
    Http.type = Types::Http
    IndexingRule.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "Name"))
    IndexingRule.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ModifiedAt"))
    IndexingRule.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexingRuleValue, name: "Rule"))
    IndexingRule.type = Types::IndexingRule
    IndexingRuleList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IndexingRule, name: "member")
    IndexingRuleValue.add_member(:probabilistic, Types::IndexingRuleValue::Probabilistic, ::Smithy::Schema::Shapes::MemberShape.new(target: ProbabilisticRuleValue, name: "Probabilistic"))
    IndexingRuleValue.add_member(:unknown, Types::IndexingRuleValue::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    IndexingRuleValue.type = Types::IndexingRuleValue
    IndexingRuleValueUpdate.add_member(:probabilistic, Types::IndexingRuleValueUpdate::Probabilistic, ::Smithy::Schema::Shapes::MemberShape.new(target: ProbabilisticRuleValueUpdate, name: "Probabilistic"))
    IndexingRuleValueUpdate.add_member(:unknown, Types::IndexingRuleValueUpdate::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    IndexingRuleValueUpdate.type = Types::IndexingRuleValueUpdate
    Insight.add_member(:insight_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightId, name: "InsightId"))
    Insight.add_member(:group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupARN, name: "GroupARN"))
    Insight.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, name: "GroupName"))
    Insight.add_member(:root_cause_service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "RootCauseServiceId"))
    Insight.add_member(:categories, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightCategoryList, name: "Categories"))
    Insight.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightState, name: "State"))
    Insight.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime"))
    Insight.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    Insight.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightSummaryText, name: "Summary"))
    Insight.add_member(:client_request_impact_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestImpactStatistics, name: "ClientRequestImpactStatistics"))
    Insight.add_member(:root_cause_service_request_impact_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestImpactStatistics, name: "RootCauseServiceRequestImpactStatistics"))
    Insight.add_member(:top_anomalous_services, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalousServiceList, name: "TopAnomalousServices"))
    Insight.type = Types::Insight
    InsightCategory.add_member(:fault, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAULT", traits: {"smithy.api#enumValue" => "FAULT"}))
    InsightCategoryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InsightCategory, name: "member")
    InsightEvent.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSummaryText, name: "Summary"))
    InsightEvent.add_member(:event_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EventTime"))
    InsightEvent.add_member(:client_request_impact_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestImpactStatistics, name: "ClientRequestImpactStatistics"))
    InsightEvent.add_member(:root_cause_service_request_impact_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestImpactStatistics, name: "RootCauseServiceRequestImpactStatistics"))
    InsightEvent.add_member(:top_anomalous_services, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalousServiceList, name: "TopAnomalousServices"))
    InsightEvent.type = Types::InsightEvent
    InsightEventList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InsightEvent, name: "member")
    InsightImpactGraphEdge.add_member(:reference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "ReferenceId"))
    InsightImpactGraphEdge.type = Types::InsightImpactGraphEdge
    InsightImpactGraphEdgeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InsightImpactGraphEdge, name: "member")
    InsightImpactGraphService.add_member(:reference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "ReferenceId"))
    InsightImpactGraphService.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    InsightImpactGraphService.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    InsightImpactGraphService.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNames, name: "Names"))
    InsightImpactGraphService.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccountId"))
    InsightImpactGraphService.add_member(:edges, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightImpactGraphEdgeList, name: "Edges"))
    InsightImpactGraphService.type = Types::InsightImpactGraphService
    InsightImpactGraphServiceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InsightImpactGraphService, name: "member")
    InsightState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    InsightState.add_member(:closed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOSED", traits: {"smithy.api#enumValue" => "CLOSED"}))
    InsightStateList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InsightState, name: "member")
    InsightSummary.add_member(:insight_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightId, name: "InsightId"))
    InsightSummary.add_member(:group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupARN, name: "GroupARN"))
    InsightSummary.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, name: "GroupName"))
    InsightSummary.add_member(:root_cause_service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "RootCauseServiceId"))
    InsightSummary.add_member(:categories, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightCategoryList, name: "Categories"))
    InsightSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightState, name: "State"))
    InsightSummary.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime"))
    InsightSummary.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    InsightSummary.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightSummaryText, name: "Summary"))
    InsightSummary.add_member(:client_request_impact_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestImpactStatistics, name: "ClientRequestImpactStatistics"))
    InsightSummary.add_member(:root_cause_service_request_impact_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestImpactStatistics, name: "RootCauseServiceRequestImpactStatistics"))
    InsightSummary.add_member(:top_anomalous_services, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalousServiceList, name: "TopAnomalousServices"))
    InsightSummary.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdateTime"))
    InsightSummary.type = Types::InsightSummary
    InsightSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InsightSummary, name: "member")
    InsightsConfiguration.add_member(:insights_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "InsightsEnabled"))
    InsightsConfiguration.add_member(:notifications_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "NotificationsEnabled"))
    InsightsConfiguration.type = Types::InsightsConfiguration
    InstanceIdDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    InstanceIdDetail.type = Types::InstanceIdDetail
    InvalidPolicyRevisionIdException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidPolicyRevisionIdException.type = Types::InvalidPolicyRevisionIdException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidRequestException.type = Types::InvalidRequestException
    LinksList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GraphLink, name: "member")
    ListResourcePoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicyNextToken, name: "NextToken"))
    ListResourcePoliciesRequest.type = Types::ListResourcePoliciesRequest
    ListResourcePoliciesResult.add_member(:resource_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicyList, name: "ResourcePolicies"))
    ListResourcePoliciesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicyNextToken, name: "NextToken"))
    ListResourcePoliciesResult.type = Types::ListResourcePoliciesResult
    ListRetrievedTracesRequest.add_member(:retrieval_token, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalToken, name: "RetrievalToken", traits: {"smithy.api#required" => {}}))
    ListRetrievedTracesRequest.add_member(:trace_format, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceFormatType, name: "TraceFormat"))
    ListRetrievedTracesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListRetrievedTracesRequest.type = Types::ListRetrievedTracesRequest
    ListRetrievedTracesResult.add_member(:retrieval_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalStatus, name: "RetrievalStatus"))
    ListRetrievedTracesResult.add_member(:trace_format, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceFormatType, name: "TraceFormat"))
    ListRetrievedTracesResult.add_member(:traces, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceSpanList, name: "Traces"))
    ListRetrievedTracesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListRetrievedTracesResult.type = Types::ListRetrievedTracesResult
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LockoutPreventionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    LockoutPreventionException.type = Types::LockoutPreventionException
    MalformedPolicyDocumentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    MalformedPolicyDocumentException.type = Types::MalformedPolicyDocumentException
    PolicyCountLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    PolicyCountLimitExceededException.type = Types::PolicyCountLimitExceededException
    PolicySizeLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    PolicySizeLimitExceededException.type = Types::PolicySizeLimitExceededException
    ProbabilisticRuleValue.add_member(:desired_sampling_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableDouble, name: "DesiredSamplingPercentage", traits: {"smithy.api#required" => {}}))
    ProbabilisticRuleValue.add_member(:actual_sampling_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableDouble, name: "ActualSamplingPercentage"))
    ProbabilisticRuleValue.type = Types::ProbabilisticRuleValue
    ProbabilisticRuleValueUpdate.add_member(:desired_sampling_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableDouble, name: "DesiredSamplingPercentage", traits: {"smithy.api#required" => {}}))
    ProbabilisticRuleValueUpdate.type = Types::ProbabilisticRuleValueUpdate
    PutEncryptionConfigRequest.add_member(:key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKeyId, name: "KeyId"))
    PutEncryptionConfigRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "Type", traits: {"smithy.api#required" => {}}))
    PutEncryptionConfigRequest.type = Types::PutEncryptionConfigRequest
    PutEncryptionConfigResult.add_member(:encryption_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfig, name: "EncryptionConfig"))
    PutEncryptionConfigResult.type = Types::PutEncryptionConfigResult
    PutResourcePolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "PolicyName", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "PolicyDocument", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:policy_revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevisionId, name: "PolicyRevisionId"))
    PutResourcePolicyRequest.add_member(:bypass_policy_lockout_check, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "BypassPolicyLockoutCheck", traits: {"smithy.api#default" => false}))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResult.add_member(:resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "ResourcePolicy"))
    PutResourcePolicyResult.type = Types::PutResourcePolicyResult
    PutTelemetryRecordsRequest.add_member(:telemetry_records, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryRecordList, name: "TelemetryRecords", traits: {"smithy.api#required" => {}}))
    PutTelemetryRecordsRequest.add_member(:ec2_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceId, name: "EC2InstanceId"))
    PutTelemetryRecordsRequest.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: Hostname, name: "Hostname"))
    PutTelemetryRecordsRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN"))
    PutTelemetryRecordsRequest.type = Types::PutTelemetryRecordsRequest
    PutTelemetryRecordsResult.type = Types::PutTelemetryRecordsResult
    PutTraceSegmentsRequest.add_member(:trace_segment_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceSegmentDocumentList, name: "TraceSegmentDocuments", traits: {"smithy.api#required" => {}}))
    PutTraceSegmentsRequest.type = Types::PutTraceSegmentsRequest
    PutTraceSegmentsResult.add_member(:unprocessed_trace_segments, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedTraceSegmentList, name: "UnprocessedTraceSegments"))
    PutTraceSegmentsResult.type = Types::PutTraceSegmentsResult
    RequestImpactStatistics.add_member(:fault_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableLong, name: "FaultCount"))
    RequestImpactStatistics.add_member(:ok_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableLong, name: "OkCount"))
    RequestImpactStatistics.add_member(:total_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableLong, name: "TotalCount"))
    RequestImpactStatistics.type = Types::RequestImpactStatistics
    ResourceARNDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN"))
    ResourceARNDetail.type = Types::ResourceARNDetail
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceNotFoundException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceName"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourcePolicy.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "PolicyName"))
    ResourcePolicy.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "PolicyDocument"))
    ResourcePolicy.add_member(:policy_revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevisionId, name: "PolicyRevisionId"))
    ResourcePolicy.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTime"))
    ResourcePolicy.type = Types::ResourcePolicy
    ResourcePolicyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "member")
    ResponseTimeRootCause.add_member(:services, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseTimeRootCauseServices, name: "Services"))
    ResponseTimeRootCause.add_member(:client_impacting, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "ClientImpacting"))
    ResponseTimeRootCause.type = Types::ResponseTimeRootCause
    ResponseTimeRootCauseEntity.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    ResponseTimeRootCauseEntity.add_member(:coverage, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableDouble, name: "Coverage"))
    ResponseTimeRootCauseEntity.add_member(:remote, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "Remote"))
    ResponseTimeRootCauseEntity.type = Types::ResponseTimeRootCauseEntity
    ResponseTimeRootCauseEntityPath.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseTimeRootCauseEntity, name: "member")
    ResponseTimeRootCauseService.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    ResponseTimeRootCauseService.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNames, name: "Names"))
    ResponseTimeRootCauseService.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    ResponseTimeRootCauseService.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccountId"))
    ResponseTimeRootCauseService.add_member(:entity_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseTimeRootCauseEntityPath, name: "EntityPath"))
    ResponseTimeRootCauseService.add_member(:inferred, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "Inferred"))
    ResponseTimeRootCauseService.type = Types::ResponseTimeRootCauseService
    ResponseTimeRootCauseServices.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseTimeRootCauseService, name: "member")
    ResponseTimeRootCauses.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseTimeRootCause, name: "member")
    RetrievalStatus.add_member(:scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULED", traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    RetrievalStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    RetrievalStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    RetrievalStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    RetrievalStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    RetrievalStatus.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMEOUT", traits: {"smithy.api#enumValue" => "TIMEOUT"}))
    RetrievedService.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "Service"))
    RetrievedService.add_member(:links, ::Smithy::Schema::Shapes::MemberShape.new(target: LinksList, name: "Links"))
    RetrievedService.type = Types::RetrievedService
    RetrievedServicesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievedService, name: "member")
    RetrievedTrace.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceId, name: "Id"))
    RetrievedTrace.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableDouble, name: "Duration"))
    RetrievedTrace.add_member(:spans, ::Smithy::Schema::Shapes::MemberShape.new(target: SpanList, name: "Spans"))
    RetrievedTrace.type = Types::RetrievedTrace
    RootCauseException.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    RootCauseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    RootCauseException.type = Types::RootCauseException
    RootCauseExceptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RootCauseException, name: "member")
    RuleLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    RuleLimitExceededException.type = Types::RuleLimitExceededException
    SamplingBoost.add_member(:boost_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "BoostRate", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    SamplingBoost.add_member(:boost_rate_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "BoostRateTTL", traits: {"smithy.api#required" => {}}))
    SamplingBoost.type = Types::SamplingBoost
    SamplingBoostStatisticsDocument.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "RuleName", traits: {"smithy.api#required" => {}}))
    SamplingBoostStatisticsDocument.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "ServiceName", traits: {"smithy.api#required" => {}}))
    SamplingBoostStatisticsDocument.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp", traits: {"smithy.api#required" => {}}))
    SamplingBoostStatisticsDocument.add_member(:anomaly_count, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyCount, name: "AnomalyCount", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    SamplingBoostStatisticsDocument.add_member(:total_count, ::Smithy::Schema::Shapes::MemberShape.new(target: TotalCount, name: "TotalCount", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    SamplingBoostStatisticsDocument.add_member(:sampled_anomaly_count, ::Smithy::Schema::Shapes::MemberShape.new(target: SampledAnomalyCount, name: "SampledAnomalyCount", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    SamplingBoostStatisticsDocument.type = Types::SamplingBoostStatisticsDocument
    SamplingBoostStatisticsDocumentList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SamplingBoostStatisticsDocument, name: "member")
    SamplingRateBoost.add_member(:max_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRate, name: "MaxRate", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    SamplingRateBoost.add_member(:cooldown_window_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: CooldownWindowMinutes, name: "CooldownWindowMinutes", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    SamplingRateBoost.type = Types::SamplingRateBoost
    SamplingRule.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "RuleName"))
    SamplingRule.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RuleARN"))
    SamplingRule.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    SamplingRule.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "Priority", traits: {"smithy.api#required" => {}}))
    SamplingRule.add_member(:fixed_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: FixedRate, name: "FixedRate", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    SamplingRule.add_member(:reservoir_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservoirSize, name: "ReservoirSize", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    SamplingRule.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "ServiceName", traits: {"smithy.api#required" => {}}))
    SamplingRule.add_member(:service_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceType, name: "ServiceType", traits: {"smithy.api#required" => {}}))
    SamplingRule.add_member(:host, ::Smithy::Schema::Shapes::MemberShape.new(target: Host, name: "Host", traits: {"smithy.api#required" => {}}))
    SamplingRule.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: HTTPMethod, name: "HTTPMethod", traits: {"smithy.api#required" => {}}))
    SamplingRule.add_member(:url_path, ::Smithy::Schema::Shapes::MemberShape.new(target: URLPath, name: "URLPath", traits: {"smithy.api#required" => {}}))
    SamplingRule.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "Version", traits: {"smithy.api#required" => {}}))
    SamplingRule.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeMap, name: "Attributes"))
    SamplingRule.add_member(:sampling_rate_boost, ::Smithy::Schema::Shapes::MemberShape.new(target: SamplingRateBoost, name: "SamplingRateBoost"))
    SamplingRule.type = Types::SamplingRule
    SamplingRuleRecord.add_member(:sampling_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: SamplingRule, name: "SamplingRule"))
    SamplingRuleRecord.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    SamplingRuleRecord.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ModifiedAt"))
    SamplingRuleRecord.type = Types::SamplingRuleRecord
    SamplingRuleRecordList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SamplingRuleRecord, name: "member")
    SamplingRuleUpdate.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "RuleName"))
    SamplingRuleUpdate.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RuleARN"))
    SamplingRuleUpdate.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN"))
    SamplingRuleUpdate.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "Priority"))
    SamplingRuleUpdate.add_member(:fixed_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableDouble, name: "FixedRate"))
    SamplingRuleUpdate.add_member(:reservoir_size, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "ReservoirSize"))
    SamplingRuleUpdate.add_member(:host, ::Smithy::Schema::Shapes::MemberShape.new(target: Host, name: "Host"))
    SamplingRuleUpdate.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "ServiceName"))
    SamplingRuleUpdate.add_member(:service_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceType, name: "ServiceType"))
    SamplingRuleUpdate.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: HTTPMethod, name: "HTTPMethod"))
    SamplingRuleUpdate.add_member(:url_path, ::Smithy::Schema::Shapes::MemberShape.new(target: URLPath, name: "URLPath"))
    SamplingRuleUpdate.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeMap, name: "Attributes"))
    SamplingRuleUpdate.add_member(:sampling_rate_boost, ::Smithy::Schema::Shapes::MemberShape.new(target: SamplingRateBoost, name: "SamplingRateBoost"))
    SamplingRuleUpdate.type = Types::SamplingRuleUpdate
    SamplingStatisticSummary.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RuleName"))
    SamplingStatisticSummary.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp"))
    SamplingStatisticSummary.add_member(:request_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "RequestCount", traits: {"smithy.api#default" => 0}))
    SamplingStatisticSummary.add_member(:borrow_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "BorrowCount", traits: {"smithy.api#default" => 0}))
    SamplingStatisticSummary.add_member(:sampled_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "SampledCount", traits: {"smithy.api#default" => 0}))
    SamplingStatisticSummary.type = Types::SamplingStatisticSummary
    SamplingStatisticSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SamplingStatisticSummary, name: "member")
    SamplingStatisticsDocument.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "RuleName", traits: {"smithy.api#required" => {}}))
    SamplingStatisticsDocument.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientID, name: "ClientID", traits: {"smithy.api#required" => {}}))
    SamplingStatisticsDocument.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp", traits: {"smithy.api#required" => {}}))
    SamplingStatisticsDocument.add_member(:request_count, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCount, name: "RequestCount", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    SamplingStatisticsDocument.add_member(:sampled_count, ::Smithy::Schema::Shapes::MemberShape.new(target: SampledCount, name: "SampledCount", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    SamplingStatisticsDocument.add_member(:borrow_count, ::Smithy::Schema::Shapes::MemberShape.new(target: BorrowCount, name: "BorrowCount", traits: {"smithy.api#default" => 0}))
    SamplingStatisticsDocument.type = Types::SamplingStatisticsDocument
    SamplingStatisticsDocumentList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SamplingStatisticsDocument, name: "member")
    SamplingStrategy.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SamplingStrategyName, name: "Name"))
    SamplingStrategy.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableDouble, name: "Value"))
    SamplingStrategy.type = Types::SamplingStrategy
    SamplingStrategyName.add_member(:partial_scan, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PartialScan", traits: {"smithy.api#enumValue" => "PartialScan"}))
    SamplingStrategyName.add_member(:fixed_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FixedRate", traits: {"smithy.api#enumValue" => "FixedRate"}))
    SamplingTargetDocument.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RuleName"))
    SamplingTargetDocument.add_member(:fixed_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "FixedRate", traits: {"smithy.api#default" => 0}))
    SamplingTargetDocument.add_member(:reservoir_quota, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "ReservoirQuota"))
    SamplingTargetDocument.add_member(:reservoir_quota_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ReservoirQuotaTTL"))
    SamplingTargetDocument.add_member(:interval, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "Interval"))
    SamplingTargetDocument.add_member(:sampling_boost, ::Smithy::Schema::Shapes::MemberShape.new(target: SamplingBoost, name: "SamplingBoost"))
    SamplingTargetDocument.type = Types::SamplingTargetDocument
    SamplingTargetDocumentList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SamplingTargetDocument, name: "member")
    Segment.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentId, name: "Id"))
    Segment.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentDocument, name: "Document"))
    Segment.type = Types::Segment
    SegmentList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Segment, name: "member")
    Service.add_member(:reference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "ReferenceId"))
    Service.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    Service.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNames, name: "Names"))
    Service.add_member(:root, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "Root"))
    Service.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccountId"))
    Service.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    Service.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "State"))
    Service.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime"))
    Service.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    Service.add_member(:edges, ::Smithy::Schema::Shapes::MemberShape.new(target: EdgeList, name: "Edges"))
    Service.add_member(:summary_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceStatistics, name: "SummaryStatistics"))
    Service.add_member(:duration_histogram, ::Smithy::Schema::Shapes::MemberShape.new(target: Histogram, name: "DurationHistogram"))
    Service.add_member(:response_time_histogram, ::Smithy::Schema::Shapes::MemberShape.new(target: Histogram, name: "ResponseTimeHistogram"))
    Service.type = Types::Service
    ServiceId.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    ServiceId.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNames, name: "Names"))
    ServiceId.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccountId"))
    ServiceId.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    ServiceId.type = Types::ServiceId
    ServiceIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "member")
    ServiceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "member")
    ServiceNames.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member")
    ServiceStatistics.add_member(:ok_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableLong, name: "OkCount"))
    ServiceStatistics.add_member(:error_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorStatistics, name: "ErrorStatistics"))
    ServiceStatistics.add_member(:fault_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: FaultStatistics, name: "FaultStatistics"))
    ServiceStatistics.add_member(:total_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableLong, name: "TotalCount"))
    ServiceStatistics.add_member(:total_response_time, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableDouble, name: "TotalResponseTime"))
    ServiceStatistics.type = Types::ServiceStatistics
    Span.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpanId, name: "Id"))
    Span.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: SpanDocument, name: "Document"))
    Span.type = Types::Span
    SpanList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Span, name: "member")
    StartTraceRetrievalRequest.add_member(:trace_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceIdListForRetrieval, name: "TraceIds", traits: {"smithy.api#required" => {}}))
    StartTraceRetrievalRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime", traits: {"smithy.api#required" => {}}))
    StartTraceRetrievalRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime", traits: {"smithy.api#required" => {}}))
    StartTraceRetrievalRequest.type = Types::StartTraceRetrievalRequest
    StartTraceRetrievalResult.add_member(:retrieval_token, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalToken, name: "RetrievalToken"))
    StartTraceRetrievalResult.type = Types::StartTraceRetrievalResult
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TelemetryRecord.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp", traits: {"smithy.api#required" => {}}))
    TelemetryRecord.add_member(:segments_received_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "SegmentsReceivedCount"))
    TelemetryRecord.add_member(:segments_sent_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "SegmentsSentCount"))
    TelemetryRecord.add_member(:segments_spillover_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "SegmentsSpilloverCount"))
    TelemetryRecord.add_member(:segments_rejected_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "SegmentsRejectedCount"))
    TelemetryRecord.add_member(:backend_connection_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BackendConnectionErrors, name: "BackendConnectionErrors"))
    TelemetryRecord.type = Types::TelemetryRecord
    TelemetryRecordList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryRecord, name: "member")
    ThrottledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ThrottledException.type = Types::ThrottledException
    TimeRangeType.add_member(:trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TraceId", traits: {"smithy.api#enumValue" => "TraceId"}))
    TimeRangeType.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Event", traits: {"smithy.api#enumValue" => "Event"}))
    TimeRangeType.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Service", traits: {"smithy.api#enumValue" => "Service"}))
    TimeSeriesServiceStatistics.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp"))
    TimeSeriesServiceStatistics.add_member(:edge_summary_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: EdgeStatistics, name: "EdgeSummaryStatistics"))
    TimeSeriesServiceStatistics.add_member(:service_summary_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceStatistics, name: "ServiceSummaryStatistics"))
    TimeSeriesServiceStatistics.add_member(:service_forecast_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: ForecastStatistics, name: "ServiceForecastStatistics"))
    TimeSeriesServiceStatistics.add_member(:response_time_histogram, ::Smithy::Schema::Shapes::MemberShape.new(target: Histogram, name: "ResponseTimeHistogram"))
    TimeSeriesServiceStatistics.type = Types::TimeSeriesServiceStatistics
    TimeSeriesServiceStatisticsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TimeSeriesServiceStatistics, name: "member")
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    TooManyTagsException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceName"))
    TooManyTagsException.type = Types::TooManyTagsException
    Trace.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceId, name: "Id"))
    Trace.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableDouble, name: "Duration"))
    Trace.add_member(:limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "LimitExceeded"))
    Trace.add_member(:segments, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentList, name: "Segments"))
    Trace.type = Types::Trace
    TraceAvailabilityZones.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneDetail, name: "member")
    TraceFormatType.add_member(:xray, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "XRAY", traits: {"smithy.api#enumValue" => "XRAY"}))
    TraceFormatType.add_member(:otel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTEL", traits: {"smithy.api#enumValue" => "OTEL"}))
    TraceIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TraceId, name: "member")
    TraceIdListForRetrieval.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TraceId, name: "member")
    TraceInstanceIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceIdDetail, name: "member")
    TraceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Trace, name: "member")
    TraceResourceARNs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARNDetail, name: "member")
    TraceSegmentDestination.add_member(:x_ray, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "XRay", traits: {"smithy.api#enumValue" => "XRay"}))
    TraceSegmentDestination.add_member(:cloud_watch_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CloudWatchLogs", traits: {"smithy.api#enumValue" => "CloudWatchLogs"}))
    TraceSegmentDestinationStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    TraceSegmentDestinationStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    TraceSegmentDocumentList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TraceSegmentDocument, name: "member")
    TraceSpanList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievedTrace, name: "member")
    TraceSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceId, name: "Id"))
    TraceSummary.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime"))
    TraceSummary.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableDouble, name: "Duration"))
    TraceSummary.add_member(:response_time, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableDouble, name: "ResponseTime"))
    TraceSummary.add_member(:has_fault, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "HasFault"))
    TraceSummary.add_member(:has_error, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "HasError"))
    TraceSummary.add_member(:has_throttle, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "HasThrottle"))
    TraceSummary.add_member(:is_partial, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "IsPartial"))
    TraceSummary.add_member(:http, ::Smithy::Schema::Shapes::MemberShape.new(target: Http, name: "Http"))
    TraceSummary.add_member(:annotations, ::Smithy::Schema::Shapes::MemberShape.new(target: Annotations, name: "Annotations"))
    TraceSummary.add_member(:users, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceUsers, name: "Users"))
    TraceSummary.add_member(:service_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceIds, name: "ServiceIds"))
    TraceSummary.add_member(:resource_ar_ns, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceResourceARNs, name: "ResourceARNs"))
    TraceSummary.add_member(:instance_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceInstanceIds, name: "InstanceIds"))
    TraceSummary.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceAvailabilityZones, name: "AvailabilityZones"))
    TraceSummary.add_member(:entry_point, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "EntryPoint"))
    TraceSummary.add_member(:fault_root_causes, ::Smithy::Schema::Shapes::MemberShape.new(target: FaultRootCauses, name: "FaultRootCauses"))
    TraceSummary.add_member(:error_root_causes, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorRootCauses, name: "ErrorRootCauses"))
    TraceSummary.add_member(:response_time_root_causes, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseTimeRootCauses, name: "ResponseTimeRootCauses"))
    TraceSummary.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Revision", traits: {"smithy.api#default" => 0}))
    TraceSummary.add_member(:matched_event_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "MatchedEventTime"))
    TraceSummary.type = Types::TraceSummary
    TraceSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TraceSummary, name: "member")
    TraceUser.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserName"))
    TraceUser.add_member(:service_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceIds, name: "ServiceIds"))
    TraceUser.type = Types::TraceUser
    TraceUsers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TraceUser, name: "member")
    UnprocessedStatistics.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RuleName"))
    UnprocessedStatistics.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode"))
    UnprocessedStatistics.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    UnprocessedStatistics.type = Types::UnprocessedStatistics
    UnprocessedStatisticsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedStatistics, name: "member")
    UnprocessedTraceIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TraceId, name: "member")
    UnprocessedTraceSegment.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    UnprocessedTraceSegment.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode"))
    UnprocessedTraceSegment.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    UnprocessedTraceSegment.type = Types::UnprocessedTraceSegment
    UnprocessedTraceSegmentList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedTraceSegment, name: "member")
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, name: "GroupName"))
    UpdateGroupRequest.add_member(:group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupARN, name: "GroupARN"))
    UpdateGroupRequest.add_member(:filter_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterExpression, name: "FilterExpression"))
    UpdateGroupRequest.add_member(:insights_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsConfiguration, name: "InsightsConfiguration"))
    UpdateGroupRequest.type = Types::UpdateGroupRequest
    UpdateGroupResult.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: Group, name: "Group"))
    UpdateGroupResult.type = Types::UpdateGroupResult
    UpdateIndexingRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateIndexingRuleRequest.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexingRuleValueUpdate, name: "Rule", traits: {"smithy.api#required" => {}}))
    UpdateIndexingRuleRequest.type = Types::UpdateIndexingRuleRequest
    UpdateIndexingRuleResult.add_member(:indexing_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexingRule, name: "IndexingRule"))
    UpdateIndexingRuleResult.type = Types::UpdateIndexingRuleResult
    UpdateSamplingRuleRequest.add_member(:sampling_rule_update, ::Smithy::Schema::Shapes::MemberShape.new(target: SamplingRuleUpdate, name: "SamplingRuleUpdate", traits: {"smithy.api#required" => {}}))
    UpdateSamplingRuleRequest.type = Types::UpdateSamplingRuleRequest
    UpdateSamplingRuleResult.add_member(:sampling_rule_record, ::Smithy::Schema::Shapes::MemberShape.new(target: SamplingRuleRecord, name: "SamplingRuleRecord"))
    UpdateSamplingRuleResult.type = Types::UpdateSamplingRuleResult
    UpdateTraceSegmentDestinationRequest.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceSegmentDestination, name: "Destination"))
    UpdateTraceSegmentDestinationRequest.type = Types::UpdateTraceSegmentDestinationRequest
    UpdateTraceSegmentDestinationResult.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceSegmentDestination, name: "Destination"))
    UpdateTraceSegmentDestinationResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceSegmentDestinationStatus, name: "Status"))
    UpdateTraceSegmentDestinationResult.type = Types::UpdateTraceSegmentDestinationResult
    ValueWithServiceIds.add_member(:annotation_value, ::Smithy::Schema::Shapes::MemberShape.new(target: AnnotationValue, name: "AnnotationValue"))
    ValueWithServiceIds.add_member(:service_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceIds, name: "ServiceIds"))
    ValueWithServiceIds.type = Types::ValueWithServiceIds
    ValuesWithServiceIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ValueWithServiceIds, name: "member")

    AWSXRay = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.xray#AWSXRay"
      service.name = "AWSXRay"
      service.version = "2016-04-12"
      service.traits = {"aws.api#service" => {"sdkId" => "XRay", "arnNamespace" => "xray", "cloudFormationName" => "XRay", "cloudTrailEventSource" => "xray.amazonaws.com", "endpointPrefix" => "xray"}, "aws.auth#sigv4" => {"name" => "xray"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS X-Ray"}
      service.add_operation(:batch_get_traces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#BatchGetTraces"
        operation.name = "BatchGetTraces"
        operation.input = BatchGetTracesRequest
        operation.output = BatchGetTracesResult
        operation.errors << InvalidRequestException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/Traces", "code" => 200}}
        operation[:paginator] = Paginators::BatchGetTraces.new
      end)
      service.add_operation(:cancel_trace_retrieval, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#CancelTraceRetrieval"
        operation.name = "CancelTraceRetrieval"
        operation.input = CancelTraceRetrievalRequest
        operation.output = CancelTraceRetrievalResult
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CancelTraceRetrieval", "code" => 200}}
      end)
      service.add_operation(:create_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#CreateGroup"
        operation.name = "CreateGroup"
        operation.input = CreateGroupRequest
        operation.output = CreateGroupResult
        operation.errors << InvalidRequestException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateGroup", "code" => 200}}
      end)
      service.add_operation(:create_sampling_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#CreateSamplingRule"
        operation.name = "CreateSamplingRule"
        operation.input = CreateSamplingRuleRequest
        operation.output = CreateSamplingRuleResult
        operation.errors << InvalidRequestException
        operation.errors << RuleLimitExceededException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateSamplingRule", "code" => 200}}
      end)
      service.add_operation(:delete_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#DeleteGroup"
        operation.name = "DeleteGroup"
        operation.input = DeleteGroupRequest
        operation.output = DeleteGroupResult
        operation.errors << InvalidRequestException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteGroup", "code" => 200}}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = DeleteResourcePolicyRequest
        operation.output = DeleteResourcePolicyResult
        operation.errors << InvalidPolicyRevisionIdException
        operation.errors << InvalidRequestException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteResourcePolicy", "code" => 200}}
      end)
      service.add_operation(:delete_sampling_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#DeleteSamplingRule"
        operation.name = "DeleteSamplingRule"
        operation.input = DeleteSamplingRuleRequest
        operation.output = DeleteSamplingRuleResult
        operation.errors << InvalidRequestException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteSamplingRule", "code" => 200}}
      end)
      service.add_operation(:get_encryption_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetEncryptionConfig"
        operation.name = "GetEncryptionConfig"
        operation.input = GetEncryptionConfigRequest
        operation.output = GetEncryptionConfigResult
        operation.errors << InvalidRequestException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/EncryptionConfig", "code" => 200}}
      end)
      service.add_operation(:get_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetGroup"
        operation.name = "GetGroup"
        operation.input = GetGroupRequest
        operation.output = GetGroupResult
        operation.errors << InvalidRequestException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetGroup", "code" => 200}}
      end)
      service.add_operation(:get_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetGroups"
        operation.name = "GetGroups"
        operation.input = GetGroupsRequest
        operation.output = GetGroupsResult
        operation.errors << InvalidRequestException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/Groups", "code" => 200}}
        operation[:paginator] = Paginators::GetGroups.new
      end)
      service.add_operation(:get_indexing_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetIndexingRules"
        operation.name = "GetIndexingRules"
        operation.input = GetIndexingRulesRequest
        operation.output = GetIndexingRulesResult
        operation.errors << InvalidRequestException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetIndexingRules", "code" => 200}}
      end)
      service.add_operation(:get_insight, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetInsight"
        operation.name = "GetInsight"
        operation.input = GetInsightRequest
        operation.output = GetInsightResult
        operation.errors << InvalidRequestException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/Insight", "code" => 200}}
      end)
      service.add_operation(:get_insight_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetInsightEvents"
        operation.name = "GetInsightEvents"
        operation.input = GetInsightEventsRequest
        operation.output = GetInsightEventsResult
        operation.errors << InvalidRequestException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/InsightEvents", "code" => 200}}
        operation[:paginator] = Paginators::GetInsightEvents.new
      end)
      service.add_operation(:get_insight_impact_graph, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetInsightImpactGraph"
        operation.name = "GetInsightImpactGraph"
        operation.input = GetInsightImpactGraphRequest
        operation.output = GetInsightImpactGraphResult
        operation.errors << InvalidRequestException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/InsightImpactGraph", "code" => 200}}
      end)
      service.add_operation(:get_insight_summaries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetInsightSummaries"
        operation.name = "GetInsightSummaries"
        operation.input = GetInsightSummariesRequest
        operation.output = GetInsightSummariesResult
        operation.errors << InvalidRequestException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/InsightSummaries", "code" => 200}}
        operation[:paginator] = Paginators::GetInsightSummaries.new
      end)
      service.add_operation(:get_retrieved_traces_graph, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetRetrievedTracesGraph"
        operation.name = "GetRetrievedTracesGraph"
        operation.input = GetRetrievedTracesGraphRequest
        operation.output = GetRetrievedTracesGraphResult
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetRetrievedTracesGraph", "code" => 200}}
      end)
      service.add_operation(:get_sampling_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetSamplingRules"
        operation.name = "GetSamplingRules"
        operation.input = GetSamplingRulesRequest
        operation.output = GetSamplingRulesResult
        operation.errors << InvalidRequestException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetSamplingRules", "code" => 200}}
        operation[:paginator] = Paginators::GetSamplingRules.new
      end)
      service.add_operation(:get_sampling_statistic_summaries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetSamplingStatisticSummaries"
        operation.name = "GetSamplingStatisticSummaries"
        operation.input = GetSamplingStatisticSummariesRequest
        operation.output = GetSamplingStatisticSummariesResult
        operation.errors << InvalidRequestException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/SamplingStatisticSummaries", "code" => 200}}
        operation[:paginator] = Paginators::GetSamplingStatisticSummaries.new
      end)
      service.add_operation(:get_sampling_targets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetSamplingTargets"
        operation.name = "GetSamplingTargets"
        operation.input = GetSamplingTargetsRequest
        operation.output = GetSamplingTargetsResult
        operation.errors << InvalidRequestException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/SamplingTargets", "code" => 200}}
      end)
      service.add_operation(:get_service_graph, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetServiceGraph"
        operation.name = "GetServiceGraph"
        operation.input = GetServiceGraphRequest
        operation.output = GetServiceGraphResult
        operation.errors << InvalidRequestException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ServiceGraph", "code" => 200}}
        operation[:paginator] = Paginators::GetServiceGraph.new
      end)
      service.add_operation(:get_time_series_service_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetTimeSeriesServiceStatistics"
        operation.name = "GetTimeSeriesServiceStatistics"
        operation.input = GetTimeSeriesServiceStatisticsRequest
        operation.output = GetTimeSeriesServiceStatisticsResult
        operation.errors << InvalidRequestException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/TimeSeriesServiceStatistics", "code" => 200}}
        operation[:paginator] = Paginators::GetTimeSeriesServiceStatistics.new
      end)
      service.add_operation(:get_trace_graph, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetTraceGraph"
        operation.name = "GetTraceGraph"
        operation.input = GetTraceGraphRequest
        operation.output = GetTraceGraphResult
        operation.errors << InvalidRequestException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/TraceGraph", "code" => 200}}
        operation[:paginator] = Paginators::GetTraceGraph.new
      end)
      service.add_operation(:get_trace_segment_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetTraceSegmentDestination"
        operation.name = "GetTraceSegmentDestination"
        operation.input = GetTraceSegmentDestinationRequest
        operation.output = GetTraceSegmentDestinationResult
        operation.errors << InvalidRequestException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetTraceSegmentDestination", "code" => 200}}
      end)
      service.add_operation(:get_trace_summaries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#GetTraceSummaries"
        operation.name = "GetTraceSummaries"
        operation.input = GetTraceSummariesRequest
        operation.output = GetTraceSummariesResult
        operation.errors << InvalidRequestException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/TraceSummaries", "code" => 200}}
        operation[:paginator] = Paginators::GetTraceSummaries.new
      end)
      service.add_operation(:list_resource_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#ListResourcePolicies"
        operation.name = "ListResourcePolicies"
        operation.input = ListResourcePoliciesRequest
        operation.output = ListResourcePoliciesResult
        operation.errors << InvalidRequestException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListResourcePolicies", "code" => 200}}
        operation[:paginator] = Paginators::ListResourcePolicies.new
      end)
      service.add_operation(:list_retrieved_traces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#ListRetrievedTraces"
        operation.name = "ListRetrievedTraces"
        operation.input = ListRetrievedTracesRequest
        operation.output = ListRetrievedTracesResult
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListRetrievedTraces", "code" => 200}}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListTagsForResource", "code" => 200}}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:put_encryption_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#PutEncryptionConfig"
        operation.name = "PutEncryptionConfig"
        operation.input = PutEncryptionConfigRequest
        operation.output = PutEncryptionConfigResult
        operation.errors << InvalidRequestException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/PutEncryptionConfig", "code" => 200}}
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = PutResourcePolicyRequest
        operation.output = PutResourcePolicyResult
        operation.errors << InvalidPolicyRevisionIdException
        operation.errors << LockoutPreventionException
        operation.errors << MalformedPolicyDocumentException
        operation.errors << PolicyCountLimitExceededException
        operation.errors << PolicySizeLimitExceededException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/PutResourcePolicy", "code" => 200}}
      end)
      service.add_operation(:put_telemetry_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#PutTelemetryRecords"
        operation.name = "PutTelemetryRecords"
        operation.input = PutTelemetryRecordsRequest
        operation.output = PutTelemetryRecordsResult
        operation.errors << InvalidRequestException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/TelemetryRecords", "code" => 200}}
      end)
      service.add_operation(:put_trace_segments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#PutTraceSegments"
        operation.name = "PutTraceSegments"
        operation.input = PutTraceSegmentsRequest
        operation.output = PutTraceSegmentsResult
        operation.errors << InvalidRequestException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/TraceSegments", "code" => 200}}
      end)
      service.add_operation(:start_trace_retrieval, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#StartTraceRetrieval"
        operation.name = "StartTraceRetrieval"
        operation.input = StartTraceRetrievalRequest
        operation.output = StartTraceRetrievalResult
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StartTraceRetrieval", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledException
        operation.errors << TooManyTagsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/TagResource", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UntagResource", "code" => 200}}
      end)
      service.add_operation(:update_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#UpdateGroup"
        operation.name = "UpdateGroup"
        operation.input = UpdateGroupRequest
        operation.output = UpdateGroupResult
        operation.errors << InvalidRequestException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateGroup", "code" => 200}}
      end)
      service.add_operation(:update_indexing_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#UpdateIndexingRule"
        operation.name = "UpdateIndexingRule"
        operation.input = UpdateIndexingRuleRequest
        operation.output = UpdateIndexingRuleResult
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateIndexingRule", "code" => 200}}
      end)
      service.add_operation(:update_sampling_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#UpdateSamplingRule"
        operation.name = "UpdateSamplingRule"
        operation.input = UpdateSamplingRuleRequest
        operation.output = UpdateSamplingRuleResult
        operation.errors << InvalidRequestException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateSamplingRule", "code" => 200}}
      end)
      service.add_operation(:update_trace_segment_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.xray#UpdateTraceSegmentDestination"
        operation.name = "UpdateTraceSegmentDestination"
        operation.input = UpdateTraceSegmentDestinationRequest
        operation.output = UpdateTraceSegmentDestinationResult
        operation.errors << InvalidRequestException
        operation.errors << ThrottledException
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
