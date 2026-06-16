# frozen_string_literal: true

# This is generated code!

module Aws::PI
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptLanguage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pi#AcceptLanguage", name: "AcceptLanguage")
    AdditionalMetricsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pi#AdditionalMetricsList", name: "AdditionalMetricsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    AdditionalMetricsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.pi#AdditionalMetricsMap", name: "AdditionalMetricsMap")
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pi#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:.*:pi:.*$"})
    AnalysisReport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#AnalysisReport", name: "AnalysisReport")
    AnalysisReportId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pi#AnalysisReportId", name: "AnalysisReportId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^report-[0-9a-f]{17}$"})
    AnalysisReportSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#AnalysisReportSummary", name: "AnalysisReportSummary")
    AnalysisReportSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pi#AnalysisReportSummaryList", name: "AnalysisReportSummaryList")
    AnalysisStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pi#AnalysisStatus", name: "AnalysisStatus")
    AuthorizedActionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pi#AuthorizedActionsList", name: "AuthorizedActionsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.pi#Boolean", name: "Boolean")
    ContextType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pi#ContextType", name: "ContextType")
    CreatePerformanceAnalysisReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#CreatePerformanceAnalysisReportRequest", name: "CreatePerformanceAnalysisReportRequest")
    CreatePerformanceAnalysisReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#CreatePerformanceAnalysisReportResponse", name: "CreatePerformanceAnalysisReportResponse")
    Data = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#Data", name: "Data")
    DataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pi#DataList", name: "DataList")
    DataPoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#DataPoint", name: "DataPoint")
    DataPointsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pi#DataPointsList", name: "DataPointsList")
    DeletePerformanceAnalysisReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#DeletePerformanceAnalysisReportRequest", name: "DeletePerformanceAnalysisReportRequest")
    DeletePerformanceAnalysisReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#DeletePerformanceAnalysisReportResponse", name: "DeletePerformanceAnalysisReportResponse")
    DescribeDimensionKeysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#DescribeDimensionKeysRequest", name: "DescribeDimensionKeysRequest")
    DescribeDimensionKeysResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#DescribeDimensionKeysResponse", name: "DescribeDimensionKeysResponse")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pi#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    DescriptiveMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.pi#DescriptiveMap", name: "DescriptiveMap")
    DescriptiveString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pi#DescriptiveString", name: "DescriptiveString", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "^.*$"})
    DetailStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pi#DetailStatus", name: "DetailStatus")
    DimensionDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#DimensionDetail", name: "DimensionDetail")
    DimensionDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pi#DimensionDetailList", name: "DimensionDetailList")
    DimensionGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#DimensionGroup", name: "DimensionGroup")
    DimensionGroupDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#DimensionGroupDetail", name: "DimensionGroupDetail")
    DimensionGroupDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pi#DimensionGroupDetailList", name: "DimensionGroupDetailList")
    DimensionKeyDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#DimensionKeyDescription", name: "DimensionKeyDescription")
    DimensionKeyDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pi#DimensionKeyDescriptionList", name: "DimensionKeyDescriptionList")
    DimensionKeyDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#DimensionKeyDetail", name: "DimensionKeyDetail")
    DimensionKeyDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pi#DimensionKeyDetailList", name: "DimensionKeyDetailList")
    DimensionMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.pi#DimensionMap", name: "DimensionMap")
    DimensionsMetricList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pi#DimensionsMetricList", name: "DimensionsMetricList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.pi#Double", name: "Double")
    ErrorString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pi#ErrorString", name: "ErrorString")
    FeatureMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#FeatureMetadata", name: "FeatureMetadata")
    FeatureMetadataMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.pi#FeatureMetadataMap", name: "FeatureMetadataMap")
    FeatureStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pi#FeatureStatus", name: "FeatureStatus")
    FineGrainedAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pi#FineGrainedAction", name: "FineGrainedAction")
    GetDimensionKeyDetailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#GetDimensionKeyDetailsRequest", name: "GetDimensionKeyDetailsRequest")
    GetDimensionKeyDetailsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#GetDimensionKeyDetailsResponse", name: "GetDimensionKeyDetailsResponse")
    GetPerformanceAnalysisReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#GetPerformanceAnalysisReportRequest", name: "GetPerformanceAnalysisReportRequest")
    GetPerformanceAnalysisReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#GetPerformanceAnalysisReportResponse", name: "GetPerformanceAnalysisReportResponse")
    GetResourceMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#GetResourceMetadataRequest", name: "GetResourceMetadataRequest")
    GetResourceMetadataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#GetResourceMetadataResponse", name: "GetResourceMetadataResponse")
    GetResourceMetricsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#GetResourceMetricsRequest", name: "GetResourceMetricsRequest")
    GetResourceMetricsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#GetResourceMetricsResponse", name: "GetResourceMetricsResponse")
    ISOTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.pi#ISOTimestamp", name: "ISOTimestamp")
    IdentifierString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pi#IdentifierString", name: "IdentifierString", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    Insight = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#Insight", name: "Insight")
    InsightList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pi#InsightList", name: "InsightList")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.pi#Integer", name: "Integer")
    InternalServiceError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#InternalServiceError", name: "InternalServiceError", traits: {"smithy.api#error" => "server"})
    InvalidArgumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#InvalidArgumentException", name: "InvalidArgumentException", traits: {"smithy.api#error" => "client"})
    Limit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.pi#Limit", name: "Limit", traits: {"smithy.api#range" => {"min" => 1, "max" => 25}})
    ListAvailableResourceDimensionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#ListAvailableResourceDimensionsRequest", name: "ListAvailableResourceDimensionsRequest")
    ListAvailableResourceDimensionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#ListAvailableResourceDimensionsResponse", name: "ListAvailableResourceDimensionsResponse")
    ListAvailableResourceMetricsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#ListAvailableResourceMetricsRequest", name: "ListAvailableResourceMetricsRequest")
    ListAvailableResourceMetricsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#ListAvailableResourceMetricsResponse", name: "ListAvailableResourceMetricsResponse")
    ListPerformanceAnalysisReportsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#ListPerformanceAnalysisReportsRequest", name: "ListPerformanceAnalysisReportsRequest")
    ListPerformanceAnalysisReportsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#ListPerformanceAnalysisReportsResponse", name: "ListPerformanceAnalysisReportsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MarkdownString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pi#MarkdownString", name: "MarkdownString", traits: {"smithy.api#length" => {"min" => 0, "max" => 8000}, "smithy.api#pattern" => "^(.|\\n)*$", "smithy.api#sensitive" => {}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.pi#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 0, "max" => 25}})
    MetricDimensionGroups = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#MetricDimensionGroups", name: "MetricDimensionGroups")
    MetricDimensionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pi#MetricDimensionsList", name: "MetricDimensionsList")
    MetricKeyDataPoints = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#MetricKeyDataPoints", name: "MetricKeyDataPoints")
    MetricKeyDataPointsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pi#MetricKeyDataPointsList", name: "MetricKeyDataPointsList")
    MetricQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#MetricQuery", name: "MetricQuery")
    MetricQueryFilterMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.pi#MetricQueryFilterMap", name: "MetricQueryFilterMap")
    MetricQueryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pi#MetricQueryList", name: "MetricQueryList", traits: {"smithy.api#length" => {"min" => 1, "max" => 15}})
    MetricTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pi#MetricTypeList", name: "MetricTypeList")
    MetricValuesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pi#MetricValuesList", name: "MetricValuesList")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pi#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}, "smithy.api#pattern" => "^[a-zA-Z0-9_=-]+$"})
    NotAuthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#NotAuthorizedException", name: "NotAuthorizedException", traits: {"smithy.api#error" => "client"})
    PerformanceInsightsMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#PerformanceInsightsMetric", name: "PerformanceInsightsMetric")
    PeriodAlignment = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pi#PeriodAlignment", name: "PeriodAlignment")
    Recommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#Recommendation", name: "Recommendation")
    RecommendationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pi#RecommendationList", name: "RecommendationList")
    RequestString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pi#RequestString", name: "RequestString", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "\\S"})
    RequestedDimensionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pi#RequestedDimensionList", name: "RequestedDimensionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResponsePartitionKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#ResponsePartitionKey", name: "ResponsePartitionKey")
    ResponsePartitionKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pi#ResponsePartitionKeyList", name: "ResponsePartitionKeyList")
    ResponseResourceMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#ResponseResourceMetric", name: "ResponseResourceMetric")
    ResponseResourceMetricKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#ResponseResourceMetricKey", name: "ResponseResourceMetricKey")
    ResponseResourceMetricList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pi#ResponseResourceMetricList", name: "ResponseResourceMetricList")
    SanitizedString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pi#SanitizedString", name: "SanitizedString", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9-_\\.:/*)( ]+$"})
    SanitizedStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pi#SanitizedStringList", name: "SanitizedStringList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ServiceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pi#ServiceType", name: "ServiceType")
    Severity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pi#Severity", name: "Severity")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pi#String", name: "String", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "\\S"})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pi#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^.*$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pi#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pi#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pi#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^.*$"})
    TextFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pi#TextFormat", name: "TextFormat")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pi#UntagResourceResponse", name: "UntagResourceResponse")

    AcceptLanguage.add_member(:en_us, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EN_US", traits: {"smithy.api#enumValue" => "EN_US"}))
    AdditionalMetricsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SanitizedString)
    AdditionalMetricsMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: RequestString)
    AdditionalMetricsMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: Double)
    AnalysisReport.add_member(:analysis_report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisReportId, location_name: "AnalysisReportId", traits: {"smithy.api#required" => {}}))
    AnalysisReport.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentifierString, location_name: "Identifier"))
    AnalysisReport.add_member(:service_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceType, location_name: "ServiceType"))
    AnalysisReport.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISOTimestamp, location_name: "CreateTime"))
    AnalysisReport.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISOTimestamp, location_name: "StartTime"))
    AnalysisReport.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISOTimestamp, location_name: "EndTime"))
    AnalysisReport.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisStatus, location_name: "Status"))
    AnalysisReport.add_member(:insights, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightList, location_name: "Insights"))
    AnalysisReport.type = Types::AnalysisReport
    AnalysisReportSummary.add_member(:analysis_report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "AnalysisReportId"))
    AnalysisReportSummary.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISOTimestamp, location_name: "CreateTime"))
    AnalysisReportSummary.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISOTimestamp, location_name: "StartTime"))
    AnalysisReportSummary.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISOTimestamp, location_name: "EndTime"))
    AnalysisReportSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisStatus, location_name: "Status"))
    AnalysisReportSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    AnalysisReportSummary.type = Types::AnalysisReportSummary
    AnalysisReportSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisReportSummary)
    AnalysisStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    AnalysisStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    AnalysisStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    AuthorizedActionsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FineGrainedAction)
    ContextType.add_member(:causal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CAUSAL", traits: {"smithy.api#enumValue" => "CAUSAL"}))
    ContextType.add_member(:contextual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTEXTUAL", traits: {"smithy.api#enumValue" => "CONTEXTUAL"}))
    CreatePerformanceAnalysisReportRequest.add_member(:service_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceType, location_name: "ServiceType", traits: {"smithy.api#required" => {}}))
    CreatePerformanceAnalysisReportRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentifierString, location_name: "Identifier", traits: {"smithy.api#required" => {}}))
    CreatePerformanceAnalysisReportRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISOTimestamp, location_name: "StartTime", traits: {"smithy.api#required" => {}}))
    CreatePerformanceAnalysisReportRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISOTimestamp, location_name: "EndTime", traits: {"smithy.api#required" => {}}))
    CreatePerformanceAnalysisReportRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreatePerformanceAnalysisReportRequest.type = Types::CreatePerformanceAnalysisReportRequest
    CreatePerformanceAnalysisReportResponse.add_member(:analysis_report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisReportId, location_name: "AnalysisReportId"))
    CreatePerformanceAnalysisReportResponse.type = Types::CreatePerformanceAnalysisReportResponse
    Data.add_member(:performance_insights_metric, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceInsightsMetric, location_name: "PerformanceInsightsMetric"))
    Data.type = Types::Data
    DataList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Data)
    DataPoint.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ISOTimestamp, location_name: "Timestamp", traits: {"smithy.api#required" => {}}))
    DataPoint.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, location_name: "Value", traits: {"smithy.api#required" => {}}))
    DataPoint.type = Types::DataPoint
    DataPointsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DataPoint)
    DeletePerformanceAnalysisReportRequest.add_member(:service_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceType, location_name: "ServiceType", traits: {"smithy.api#required" => {}}))
    DeletePerformanceAnalysisReportRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentifierString, location_name: "Identifier", traits: {"smithy.api#required" => {}}))
    DeletePerformanceAnalysisReportRequest.add_member(:analysis_report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisReportId, location_name: "AnalysisReportId", traits: {"smithy.api#required" => {}}))
    DeletePerformanceAnalysisReportRequest.type = Types::DeletePerformanceAnalysisReportRequest
    DeletePerformanceAnalysisReportResponse.type = Types::DeletePerformanceAnalysisReportResponse
    DescribeDimensionKeysRequest.add_member(:service_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceType, location_name: "ServiceType", traits: {"smithy.api#required" => {}}))
    DescribeDimensionKeysRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentifierString, location_name: "Identifier", traits: {"smithy.api#required" => {}}))
    DescribeDimensionKeysRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISOTimestamp, location_name: "StartTime", traits: {"smithy.api#required" => {}}))
    DescribeDimensionKeysRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISOTimestamp, location_name: "EndTime", traits: {"smithy.api#required" => {}}))
    DescribeDimensionKeysRequest.add_member(:metric, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestString, location_name: "Metric", traits: {"smithy.api#required" => {}}))
    DescribeDimensionKeysRequest.add_member(:period_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "PeriodInSeconds"))
    DescribeDimensionKeysRequest.add_member(:group_by, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionGroup, location_name: "GroupBy", traits: {"smithy.api#required" => {}}))
    DescribeDimensionKeysRequest.add_member(:additional_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalMetricsList, location_name: "AdditionalMetrics"))
    DescribeDimensionKeysRequest.add_member(:partition_by, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionGroup, location_name: "PartitionBy"))
    DescribeDimensionKeysRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricQueryFilterMap, location_name: "Filter"))
    DescribeDimensionKeysRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults"))
    DescribeDimensionKeysRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    DescribeDimensionKeysRequest.type = Types::DescribeDimensionKeysRequest
    DescribeDimensionKeysResponse.add_member(:aligned_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISOTimestamp, location_name: "AlignedStartTime"))
    DescribeDimensionKeysResponse.add_member(:aligned_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISOTimestamp, location_name: "AlignedEndTime"))
    DescribeDimensionKeysResponse.add_member(:partition_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsePartitionKeyList, location_name: "PartitionKeys"))
    DescribeDimensionKeysResponse.add_member(:keys, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionKeyDescriptionList, location_name: "Keys"))
    DescribeDimensionKeysResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    DescribeDimensionKeysResponse.type = Types::DescribeDimensionKeysResponse
    DescriptiveMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptiveString)
    DescriptiveMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptiveString)
    DetailStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    DetailStatus.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROCESSING", traits: {"smithy.api#enumValue" => "PROCESSING"}))
    DetailStatus.add_member(:unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNAVAILABLE", traits: {"smithy.api#enumValue" => "UNAVAILABLE"}))
    DimensionDetail.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Identifier"))
    DimensionDetail.type = Types::DimensionDetail
    DimensionDetailList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionDetail)
    DimensionGroup.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: SanitizedString, location_name: "Group", traits: {"smithy.api#required" => {}}))
    DimensionGroup.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: SanitizedStringList, location_name: "Dimensions"))
    DimensionGroup.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, location_name: "Limit"))
    DimensionGroup.type = Types::DimensionGroup
    DimensionGroupDetail.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Group"))
    DimensionGroupDetail.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionDetailList, location_name: "Dimensions"))
    DimensionGroupDetail.type = Types::DimensionGroupDetail
    DimensionGroupDetailList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionGroupDetail)
    DimensionKeyDescription.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionMap, location_name: "Dimensions"))
    DimensionKeyDescription.add_member(:total, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, location_name: "Total"))
    DimensionKeyDescription.add_member(:additional_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalMetricsMap, location_name: "AdditionalMetrics"))
    DimensionKeyDescription.add_member(:partitions, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricValuesList, location_name: "Partitions"))
    DimensionKeyDescription.type = Types::DimensionKeyDescription
    DimensionKeyDescriptionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionKeyDescription)
    DimensionKeyDetail.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Value"))
    DimensionKeyDetail.add_member(:dimension, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Dimension"))
    DimensionKeyDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DetailStatus, location_name: "Status"))
    DimensionKeyDetail.type = Types::DimensionKeyDetail
    DimensionKeyDetailList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionKeyDetail)
    DimensionMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: RequestString)
    DimensionMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: RequestString)
    DimensionsMetricList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SanitizedString)
    FeatureMetadata.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureStatus, location_name: "Status"))
    FeatureMetadata.type = Types::FeatureMetadata
    FeatureMetadataMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    FeatureMetadataMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureMetadata)
    FeatureStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    FeatureStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    FeatureStatus.add_member(:unsupported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNSUPPORTED", traits: {"smithy.api#enumValue" => "UNSUPPORTED"}))
    FeatureStatus.add_member(:enabled_pending_reboot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED_PENDING_REBOOT", traits: {"smithy.api#enumValue" => "ENABLED_PENDING_REBOOT"}))
    FeatureStatus.add_member(:disabled_pending_reboot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED_PENDING_REBOOT", traits: {"smithy.api#enumValue" => "DISABLED_PENDING_REBOOT"}))
    FeatureStatus.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    FineGrainedAction.add_member(:describe_dimension_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DESCRIBE_DIMENSION_KEYS", traits: {"smithy.api#enumValue" => "DescribeDimensionKeys"}))
    FineGrainedAction.add_member(:get_dimension_key_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GET_DIMENSION_KEY_DETAILS", traits: {"smithy.api#enumValue" => "GetDimensionKeyDetails"}))
    FineGrainedAction.add_member(:get_resource_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GET_RESOURCE_METRICS", traits: {"smithy.api#enumValue" => "GetResourceMetrics"}))
    GetDimensionKeyDetailsRequest.add_member(:service_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceType, location_name: "ServiceType", traits: {"smithy.api#required" => {}}))
    GetDimensionKeyDetailsRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentifierString, location_name: "Identifier", traits: {"smithy.api#required" => {}}))
    GetDimensionKeyDetailsRequest.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestString, location_name: "Group", traits: {"smithy.api#required" => {}}))
    GetDimensionKeyDetailsRequest.add_member(:group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestString, location_name: "GroupIdentifier", traits: {"smithy.api#required" => {}}))
    GetDimensionKeyDetailsRequest.add_member(:requested_dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestedDimensionList, location_name: "RequestedDimensions"))
    GetDimensionKeyDetailsRequest.type = Types::GetDimensionKeyDetailsRequest
    GetDimensionKeyDetailsResponse.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionKeyDetailList, location_name: "Dimensions"))
    GetDimensionKeyDetailsResponse.type = Types::GetDimensionKeyDetailsResponse
    GetPerformanceAnalysisReportRequest.add_member(:service_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceType, location_name: "ServiceType", traits: {"smithy.api#required" => {}}))
    GetPerformanceAnalysisReportRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentifierString, location_name: "Identifier", traits: {"smithy.api#required" => {}}))
    GetPerformanceAnalysisReportRequest.add_member(:analysis_report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisReportId, location_name: "AnalysisReportId", traits: {"smithy.api#required" => {}}))
    GetPerformanceAnalysisReportRequest.add_member(:text_format, ::Smithy::Schema::Shapes::MemberShape.new(target: TextFormat, location_name: "TextFormat"))
    GetPerformanceAnalysisReportRequest.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, location_name: "AcceptLanguage"))
    GetPerformanceAnalysisReportRequest.type = Types::GetPerformanceAnalysisReportRequest
    GetPerformanceAnalysisReportResponse.add_member(:analysis_report, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisReport, location_name: "AnalysisReport"))
    GetPerformanceAnalysisReportResponse.type = Types::GetPerformanceAnalysisReportResponse
    GetResourceMetadataRequest.add_member(:service_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceType, location_name: "ServiceType", traits: {"smithy.api#required" => {}}))
    GetResourceMetadataRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentifierString, location_name: "Identifier", traits: {"smithy.api#required" => {}}))
    GetResourceMetadataRequest.type = Types::GetResourceMetadataRequest
    GetResourceMetadataResponse.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Identifier"))
    GetResourceMetadataResponse.add_member(:features, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureMetadataMap, location_name: "Features"))
    GetResourceMetadataResponse.type = Types::GetResourceMetadataResponse
    GetResourceMetricsRequest.add_member(:service_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceType, location_name: "ServiceType", traits: {"smithy.api#required" => {}}))
    GetResourceMetricsRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentifierString, location_name: "Identifier", traits: {"smithy.api#required" => {}}))
    GetResourceMetricsRequest.add_member(:metric_queries, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricQueryList, location_name: "MetricQueries", traits: {"smithy.api#required" => {}}))
    GetResourceMetricsRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISOTimestamp, location_name: "StartTime", traits: {"smithy.api#required" => {}}))
    GetResourceMetricsRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISOTimestamp, location_name: "EndTime", traits: {"smithy.api#required" => {}}))
    GetResourceMetricsRequest.add_member(:period_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "PeriodInSeconds"))
    GetResourceMetricsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults"))
    GetResourceMetricsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    GetResourceMetricsRequest.add_member(:period_alignment, ::Smithy::Schema::Shapes::MemberShape.new(target: PeriodAlignment, location_name: "PeriodAlignment"))
    GetResourceMetricsRequest.type = Types::GetResourceMetricsRequest
    GetResourceMetricsResponse.add_member(:aligned_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISOTimestamp, location_name: "AlignedStartTime"))
    GetResourceMetricsResponse.add_member(:aligned_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISOTimestamp, location_name: "AlignedEndTime"))
    GetResourceMetricsResponse.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Identifier"))
    GetResourceMetricsResponse.add_member(:metric_list, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricKeyDataPointsList, location_name: "MetricList"))
    GetResourceMetricsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    GetResourceMetricsResponse.type = Types::GetResourceMetricsResponse
    Insight.add_member(:insight_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "InsightId", traits: {"smithy.api#required" => {}}))
    Insight.add_member(:insight_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "InsightType"))
    Insight.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextType, location_name: "Context"))
    Insight.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISOTimestamp, location_name: "StartTime"))
    Insight.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISOTimestamp, location_name: "EndTime"))
    Insight.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: Severity, location_name: "Severity"))
    Insight.add_member(:supporting_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightList, location_name: "SupportingInsights"))
    Insight.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkdownString, location_name: "Description"))
    Insight.add_member(:recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationList, location_name: "Recommendations"))
    Insight.add_member(:insight_data, ::Smithy::Schema::Shapes::MemberShape.new(target: DataList, location_name: "InsightData"))
    Insight.add_member(:baseline_data, ::Smithy::Schema::Shapes::MemberShape.new(target: DataList, location_name: "BaselineData"))
    Insight.type = Types::Insight
    InsightList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Insight)
    InternalServiceError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorString, location_name: "Message"))
    InternalServiceError.type = Types::InternalServiceError
    InvalidArgumentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorString, location_name: "Message"))
    InvalidArgumentException.type = Types::InvalidArgumentException
    ListAvailableResourceDimensionsRequest.add_member(:service_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceType, location_name: "ServiceType", traits: {"smithy.api#required" => {}}))
    ListAvailableResourceDimensionsRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentifierString, location_name: "Identifier", traits: {"smithy.api#required" => {}}))
    ListAvailableResourceDimensionsRequest.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionsMetricList, location_name: "Metrics", traits: {"smithy.api#required" => {}}))
    ListAvailableResourceDimensionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults"))
    ListAvailableResourceDimensionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListAvailableResourceDimensionsRequest.add_member(:authorized_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizedActionsList, location_name: "AuthorizedActions"))
    ListAvailableResourceDimensionsRequest.type = Types::ListAvailableResourceDimensionsRequest
    ListAvailableResourceDimensionsResponse.add_member(:metric_dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDimensionsList, location_name: "MetricDimensions"))
    ListAvailableResourceDimensionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListAvailableResourceDimensionsResponse.type = Types::ListAvailableResourceDimensionsResponse
    ListAvailableResourceMetricsRequest.add_member(:service_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceType, location_name: "ServiceType", traits: {"smithy.api#required" => {}}))
    ListAvailableResourceMetricsRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentifierString, location_name: "Identifier", traits: {"smithy.api#required" => {}}))
    ListAvailableResourceMetricsRequest.add_member(:metric_types, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricTypeList, location_name: "MetricTypes", traits: {"smithy.api#required" => {}}))
    ListAvailableResourceMetricsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListAvailableResourceMetricsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults"))
    ListAvailableResourceMetricsRequest.type = Types::ListAvailableResourceMetricsRequest
    ListAvailableResourceMetricsResponse.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseResourceMetricList, location_name: "Metrics"))
    ListAvailableResourceMetricsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListAvailableResourceMetricsResponse.type = Types::ListAvailableResourceMetricsResponse
    ListPerformanceAnalysisReportsRequest.add_member(:service_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceType, location_name: "ServiceType", traits: {"smithy.api#required" => {}}))
    ListPerformanceAnalysisReportsRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentifierString, location_name: "Identifier", traits: {"smithy.api#required" => {}}))
    ListPerformanceAnalysisReportsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListPerformanceAnalysisReportsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults"))
    ListPerformanceAnalysisReportsRequest.add_member(:list_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ListTags"))
    ListPerformanceAnalysisReportsRequest.type = Types::ListPerformanceAnalysisReportsRequest
    ListPerformanceAnalysisReportsResponse.add_member(:analysis_reports, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisReportSummaryList, location_name: "AnalysisReports"))
    ListPerformanceAnalysisReportsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListPerformanceAnalysisReportsResponse.type = Types::ListPerformanceAnalysisReportsResponse
    ListTagsForResourceRequest.add_member(:service_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceType, location_name: "ServiceType", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MetricDimensionGroups.add_member(:metric, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Metric"))
    MetricDimensionGroups.add_member(:groups, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionGroupDetailList, location_name: "Groups"))
    MetricDimensionGroups.type = Types::MetricDimensionGroups
    MetricDimensionsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDimensionGroups)
    MetricKeyDataPoints.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseResourceMetricKey, location_name: "Key"))
    MetricKeyDataPoints.add_member(:data_points, ::Smithy::Schema::Shapes::MemberShape.new(target: DataPointsList, location_name: "DataPoints"))
    MetricKeyDataPoints.type = Types::MetricKeyDataPoints
    MetricKeyDataPointsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MetricKeyDataPoints)
    MetricQuery.add_member(:metric, ::Smithy::Schema::Shapes::MemberShape.new(target: SanitizedString, location_name: "Metric", traits: {"smithy.api#required" => {}}))
    MetricQuery.add_member(:group_by, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionGroup, location_name: "GroupBy"))
    MetricQuery.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricQueryFilterMap, location_name: "Filter"))
    MetricQuery.type = Types::MetricQuery
    MetricQueryFilterMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: SanitizedString)
    MetricQueryFilterMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: RequestString)
    MetricQueryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MetricQuery)
    MetricTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SanitizedString)
    MetricValuesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Double)
    NotAuthorizedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorString, location_name: "Message"))
    NotAuthorizedException.type = Types::NotAuthorizedException
    PerformanceInsightsMetric.add_member(:metric, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptiveString, location_name: "Metric"))
    PerformanceInsightsMetric.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptiveString, location_name: "DisplayName"))
    PerformanceInsightsMetric.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptiveMap, location_name: "Dimensions"))
    PerformanceInsightsMetric.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptiveMap, location_name: "Filter"))
    PerformanceInsightsMetric.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, location_name: "Value"))
    PerformanceInsightsMetric.type = Types::PerformanceInsightsMetric
    PeriodAlignment.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "END_TIME", traits: {"smithy.api#enumValue" => "END_TIME"}))
    PeriodAlignment.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "START_TIME", traits: {"smithy.api#enumValue" => "START_TIME"}))
    Recommendation.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "RecommendationId"))
    Recommendation.add_member(:recommendation_description, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkdownString, location_name: "RecommendationDescription"))
    Recommendation.type = Types::Recommendation
    RecommendationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Recommendation)
    RequestedDimensionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SanitizedString)
    ResponsePartitionKey.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionMap, location_name: "Dimensions", traits: {"smithy.api#required" => {}}))
    ResponsePartitionKey.type = Types::ResponsePartitionKey
    ResponsePartitionKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsePartitionKey)
    ResponseResourceMetric.add_member(:metric, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Metric"))
    ResponseResourceMetric.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "Description"))
    ResponseResourceMetric.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Unit"))
    ResponseResourceMetric.type = Types::ResponseResourceMetric
    ResponseResourceMetricKey.add_member(:metric, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Metric", traits: {"smithy.api#required" => {}}))
    ResponseResourceMetricKey.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionMap, location_name: "Dimensions"))
    ResponseResourceMetricKey.type = Types::ResponseResourceMetricKey
    ResponseResourceMetricList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseResourceMetric)
    SanitizedStringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SanitizedString)
    ServiceType.add_member(:rds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RDS", traits: {"smithy.api#enumValue" => "RDS"}))
    ServiceType.add_member(:docdb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOCDB", traits: {"smithy.api#enumValue" => "DOCDB"}))
    Severity.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    Severity.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    Severity.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, location_name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, location_name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag)
    TagResourceRequest.add_member(:service_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceType, location_name: "ServiceType", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TextFormat.add_member(:plain_text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PLAIN_TEXT", traits: {"smithy.api#enumValue" => "PLAIN_TEXT"}))
    TextFormat.add_member(:markdown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MARKDOWN", traits: {"smithy.api#enumValue" => "MARKDOWN"}))
    UntagResourceRequest.add_member(:service_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceType, location_name: "ServiceType", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, location_name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse

    PerformanceInsightsv20180227 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.pi#PerformanceInsightsv20180227"
      service.name = "PerformanceInsightsv20180227"
      service.version = "2018-02-27"
      service.traits = {"aws.api#service" => {"sdkId" => "PI", "arnNamespace" => "pi", "cloudFormationName" => "PI", "cloudTrailEventSource" => "pi.amazonaws.com", "endpointPrefix" => "pi"}, "aws.auth#sigv4" => {"name" => "pi"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Performance Insights", "smithy.api#xmlNamespace" => {"uri" => "http://pi.amazonaws.com/doc/2018-02-27/"}}
      service.add_operation(:create_performance_analysis_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pi#CreatePerformanceAnalysisReport"
        operation.name = "CreatePerformanceAnalysisReport"
        operation.input = CreatePerformanceAnalysisReportRequest
        operation.output = CreatePerformanceAnalysisReportResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidArgumentException
        operation.errors << NotAuthorizedException
        operation.traits = {}
      end)
      service.add_operation(:delete_performance_analysis_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pi#DeletePerformanceAnalysisReport"
        operation.name = "DeletePerformanceAnalysisReport"
        operation.input = DeletePerformanceAnalysisReportRequest
        operation.output = DeletePerformanceAnalysisReportResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidArgumentException
        operation.errors << NotAuthorizedException
        operation.traits = {}
      end)
      service.add_operation(:describe_dimension_keys, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pi#DescribeDimensionKeys"
        operation.name = "DescribeDimensionKeys"
        operation.input = DescribeDimensionKeysRequest
        operation.output = DescribeDimensionKeysResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidArgumentException
        operation.errors << NotAuthorizedException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDimensionKeys.new
      end)
      service.add_operation(:get_dimension_key_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pi#GetDimensionKeyDetails"
        operation.name = "GetDimensionKeyDetails"
        operation.input = GetDimensionKeyDetailsRequest
        operation.output = GetDimensionKeyDetailsResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidArgumentException
        operation.errors << NotAuthorizedException
        operation.traits = {}
      end)
      service.add_operation(:get_performance_analysis_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pi#GetPerformanceAnalysisReport"
        operation.name = "GetPerformanceAnalysisReport"
        operation.input = GetPerformanceAnalysisReportRequest
        operation.output = GetPerformanceAnalysisReportResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidArgumentException
        operation.errors << NotAuthorizedException
        operation.traits = {}
      end)
      service.add_operation(:get_resource_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pi#GetResourceMetadata"
        operation.name = "GetResourceMetadata"
        operation.input = GetResourceMetadataRequest
        operation.output = GetResourceMetadataResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidArgumentException
        operation.errors << NotAuthorizedException
        operation.traits = {}
      end)
      service.add_operation(:get_resource_metrics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pi#GetResourceMetrics"
        operation.name = "GetResourceMetrics"
        operation.input = GetResourceMetricsRequest
        operation.output = GetResourceMetricsResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidArgumentException
        operation.errors << NotAuthorizedException
        operation.traits = {}
        operation[:paginator] = Paginators::GetResourceMetrics.new
      end)
      service.add_operation(:list_available_resource_dimensions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pi#ListAvailableResourceDimensions"
        operation.name = "ListAvailableResourceDimensions"
        operation.input = ListAvailableResourceDimensionsRequest
        operation.output = ListAvailableResourceDimensionsResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidArgumentException
        operation.errors << NotAuthorizedException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAvailableResourceDimensions.new
      end)
      service.add_operation(:list_available_resource_metrics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pi#ListAvailableResourceMetrics"
        operation.name = "ListAvailableResourceMetrics"
        operation.input = ListAvailableResourceMetricsRequest
        operation.output = ListAvailableResourceMetricsResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidArgumentException
        operation.errors << NotAuthorizedException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAvailableResourceMetrics.new
      end)
      service.add_operation(:list_performance_analysis_reports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pi#ListPerformanceAnalysisReports"
        operation.name = "ListPerformanceAnalysisReports"
        operation.input = ListPerformanceAnalysisReportsRequest
        operation.output = ListPerformanceAnalysisReportsResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidArgumentException
        operation.errors << NotAuthorizedException
        operation.traits = {}
        operation[:paginator] = Paginators::ListPerformanceAnalysisReports.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pi#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidArgumentException
        operation.errors << NotAuthorizedException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pi#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidArgumentException
        operation.errors << NotAuthorizedException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pi#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidArgumentException
        operation.errors << NotAuthorizedException
        operation.traits = {}
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
