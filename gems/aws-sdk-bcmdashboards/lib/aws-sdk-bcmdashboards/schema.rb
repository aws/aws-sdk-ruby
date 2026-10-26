# frozen_string_literal: true

# This is generated code!

module Aws::BCMDashboards
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmdashboards#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\u0021-\\u007E]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CostAndUsageQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#CostAndUsageQuery", name: "CostAndUsageQuery")
    CostCategoryValues = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#CostCategoryValues", name: "CostCategoryValues")
    CreateDashboardRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#CreateDashboardRequest", name: "CreateDashboardRequest")
    CreateDashboardResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#CreateDashboardResponse", name: "CreateDashboardResponse")
    CreateScheduledReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#CreateScheduledReportRequest", name: "CreateScheduledReportRequest")
    CreateScheduledReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#CreateScheduledReportResponse", name: "CreateScheduledReportResponse")
    DashboardArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmdashboards#DashboardArn", name: "DashboardArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z0-9]*:bcm-dashboards::[0-9]{12}:dashboard/(\\*|[-a-z0-9]+)$"})
    DashboardName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmdashboards#DashboardName", name: "DashboardName", traits: {"smithy.api#length" => {"min" => 2, "max" => 50}, "smithy.api#pattern" => "^(?!.* {2})[a-zA-Z][a-zA-Z0-9 _-]{0,48}[a-zA-Z0-9_-]$"})
    DashboardReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#DashboardReference", name: "DashboardReference")
    DashboardReferenceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmdashboards#DashboardReferenceList", name: "DashboardReferenceList")
    DashboardType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmdashboards#DashboardType", name: "DashboardType")
    DateTimeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#DateTimeRange", name: "DateTimeRange")
    DateTimeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmdashboards#DateTimeType", name: "DateTimeType")
    DateTimeValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#DateTimeValue", name: "DateTimeValue")
    DeleteDashboardRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#DeleteDashboardRequest", name: "DeleteDashboardRequest")
    DeleteDashboardResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#DeleteDashboardResponse", name: "DeleteDashboardResponse")
    DeleteScheduledReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#DeleteScheduledReportRequest", name: "DeleteScheduledReportRequest")
    DeleteScheduledReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#DeleteScheduledReportResponse", name: "DeleteScheduledReportResponse")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmdashboards#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^(?!.* {2})[ a-zA-Z0-9.,!?;:@\#$%&\\-_/\\\\]*$"})
    Dimension = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmdashboards#Dimension", name: "Dimension")
    DimensionValues = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#DimensionValues", name: "DimensionValues")
    DisplayConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bcmdashboards#DisplayConfig", name: "DisplayConfig")
    ExecuteScheduledReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#ExecuteScheduledReportRequest", name: "ExecuteScheduledReportRequest")
    ExecuteScheduledReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#ExecuteScheduledReportResponse", name: "ExecuteScheduledReportResponse")
    Expression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#Expression", name: "Expression")
    Expressions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmdashboards#Expressions", name: "Expressions")
    GenericString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmdashboards#GenericString", name: "GenericString", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    GenericTimeStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.bcmdashboards#GenericTimeStamp", name: "GenericTimeStamp")
    GetDashboardRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#GetDashboardRequest", name: "GetDashboardRequest")
    GetDashboardResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#GetDashboardResponse", name: "GetDashboardResponse")
    GetResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#GetResourcePolicyRequest", name: "GetResourcePolicyRequest")
    GetResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#GetResourcePolicyResponse", name: "GetResourcePolicyResponse")
    GetScheduledReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#GetScheduledReportRequest", name: "GetScheduledReportRequest")
    GetScheduledReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#GetScheduledReportResponse", name: "GetScheduledReportResponse")
    Granularity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmdashboards#Granularity", name: "Granularity")
    GraphDisplayConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#GraphDisplayConfig", name: "GraphDisplayConfig")
    GraphDisplayConfigMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bcmdashboards#GraphDisplayConfigMap", name: "GraphDisplayConfigMap")
    GroupDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#GroupDefinition", name: "GroupDefinition")
    GroupDefinitionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmdashboards#GroupDefinitionType", name: "GroupDefinitionType")
    GroupDefinitions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmdashboards#GroupDefinitions", name: "GroupDefinitions")
    HealthStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#HealthStatus", name: "HealthStatus")
    HealthStatusCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmdashboards#HealthStatusCode", name: "HealthStatusCode")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListDashboardsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#ListDashboardsRequest", name: "ListDashboardsRequest")
    ListDashboardsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#ListDashboardsResponse", name: "ListDashboardsResponse")
    ListScheduledReportsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#ListScheduledReportsRequest", name: "ListScheduledReportsRequest")
    ListScheduledReportsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#ListScheduledReportsResponse", name: "ListScheduledReportsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MatchOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmdashboards#MatchOption", name: "MatchOption")
    MatchOptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmdashboards#MatchOptions", name: "MatchOptions")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bcmdashboards#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MetricName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmdashboards#MetricName", name: "MetricName")
    MetricNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmdashboards#MetricNames", name: "MetricNames")
    NextPageToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmdashboards#NextPageToken", name: "NextPageToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    QueryParameters = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bcmdashboards#QueryParameters", name: "QueryParameters")
    ReservationCoverageQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#ReservationCoverageQuery", name: "ReservationCoverageQuery")
    ReservationUtilizationQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#ReservationUtilizationQuery", name: "ReservationUtilizationQuery")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmdashboards#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z0-9]*:bcm-dashboards::[0-9]{12}:(dashboard|scheduled-report)/(\\*|[-a-z0-9]+)$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceTag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#ResourceTag", name: "ResourceTag")
    ResourceTagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmdashboards#ResourceTagKey", name: "ResourceTagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    ResourceTagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmdashboards#ResourceTagKeyList", name: "ResourceTagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ResourceTagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmdashboards#ResourceTagList", name: "ResourceTagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ResourceTagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmdashboards#ResourceTagValue", name: "ResourceTagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    SavingsPlansCoverageQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#SavingsPlansCoverageQuery", name: "SavingsPlansCoverageQuery")
    SavingsPlansUtilizationQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#SavingsPlansUtilizationQuery", name: "SavingsPlansUtilizationQuery")
    ScheduleConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#ScheduleConfig", name: "ScheduleConfig")
    SchedulePeriod = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#SchedulePeriod", name: "SchedulePeriod")
    ScheduleState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmdashboards#ScheduleState", name: "ScheduleState")
    ScheduledReport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#ScheduledReport", name: "ScheduledReport")
    ScheduledReportArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmdashboards#ScheduledReportArn", name: "ScheduledReportArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z0-9]*:bcm-dashboards::[0-9]{12}:scheduled-report/(\\*|[-a-z0-9]+)$"})
    ScheduledReportInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#ScheduledReportInput", name: "ScheduledReportInput")
    ScheduledReportName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmdashboards#ScheduledReportName", name: "ScheduledReportName", traits: {"smithy.api#length" => {"min" => 2, "max" => 50}, "smithy.api#pattern" => "^(?!.* {2})[a-zA-Z][a-zA-Z0-9 _-]{0,48}[a-zA-Z0-9_-]$"})
    ScheduledReportSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#ScheduledReportSummary", name: "ScheduledReportSummary")
    ScheduledReportSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmdashboards#ScheduledReportSummaryList", name: "ScheduledReportSummaryList")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmdashboards#ServiceRoleArn", name: "ServiceRoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z0-9]*:iam::[0-9]{12}:role/[a-zA-Z0-9+=,.@_/-]+$"})
    StatusReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmdashboards#StatusReason", name: "StatusReason")
    StatusReasonList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmdashboards#StatusReasonList", name: "StatusReasonList")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmdashboards#StringList", name: "StringList")
    TableDisplayConfigStruct = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#TableDisplayConfigStruct", name: "TableDisplayConfigStruct")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#TagResourceResponse", name: "TagResourceResponse")
    TagValues = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#TagValues", name: "TagValues")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateDashboardRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#UpdateDashboardRequest", name: "UpdateDashboardRequest")
    UpdateDashboardResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#UpdateDashboardResponse", name: "UpdateDashboardResponse")
    UpdateScheduledReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#UpdateScheduledReportRequest", name: "UpdateScheduledReportRequest")
    UpdateScheduledReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#UpdateScheduledReportResponse", name: "UpdateScheduledReportResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VisualType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmdashboards#VisualType", name: "VisualType")
    Widget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#Widget", name: "Widget")
    WidgetConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdashboards#WidgetConfig", name: "WidgetConfig")
    WidgetConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmdashboards#WidgetConfigList", name: "WidgetConfigList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    WidgetHeight = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bcmdashboards#WidgetHeight", name: "WidgetHeight", traits: {"smithy.api#range" => {"min" => 4, "max" => 10}})
    WidgetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmdashboards#WidgetId", name: "WidgetId", traits: {"smithy.api#length" => {"min" => 32, "max" => 32}, "smithy.api#pattern" => "^[0-9a-f]{32}$"})
    WidgetIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmdashboards#WidgetIdList", name: "WidgetIdList", traits: {"smithy.api#length" => {"max" => 1}})
    WidgetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmdashboards#WidgetList", name: "WidgetList", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    WidgetTitle = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmdashboards#WidgetTitle", name: "WidgetTitle", traits: {"smithy.api#length" => {"min" => 2, "max" => 50}, "smithy.api#pattern" => "^(?!.* {2})[a-zA-Z0-9_-][ a-zA-Z0-9_-]*[a-zA-Z0-9_-]$"})
    WidgetWidth = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bcmdashboards#WidgetWidth", name: "WidgetWidth", traits: {"smithy.api#range" => {"min" => 2, "max" => 6}})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CostAndUsageQuery.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricNames, name: "metrics", traits: {"smithy.api#required" => {}}))
    CostAndUsageQuery.add_member(:time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeRange, name: "timeRange", traits: {"smithy.api#required" => {}}))
    CostAndUsageQuery.add_member(:granularity, ::Smithy::Schema::Shapes::MemberShape.new(target: Granularity, name: "granularity", traits: {"smithy.api#required" => {}}))
    CostAndUsageQuery.add_member(:group_by, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupDefinitions, name: "groupBy"))
    CostAndUsageQuery.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "filter"))
    CostAndUsageQuery.type = Types::CostAndUsageQuery
    CostCategoryValues.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    CostCategoryValues.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "values"))
    CostCategoryValues.add_member(:match_options, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchOptions, name: "matchOptions"))
    CostCategoryValues.type = Types::CostCategoryValues
    CreateDashboardRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateDashboardRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateDashboardRequest.add_member(:widgets, ::Smithy::Schema::Shapes::MemberShape.new(target: WidgetList, name: "widgets", traits: {"smithy.api#required" => {}}))
    CreateDashboardRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagList, name: "resourceTags"))
    CreateDashboardRequest.type = Types::CreateDashboardRequest
    CreateDashboardResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateDashboardResponse.type = Types::CreateDashboardResponse
    CreateScheduledReportRequest.add_member(:scheduled_report, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledReportInput, name: "scheduledReport", traits: {"smithy.api#required" => {}}))
    CreateScheduledReportRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagList, name: "resourceTags"))
    CreateScheduledReportRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}, "smithy.api#notProperty" => {}}))
    CreateScheduledReportRequest.type = Types::CreateScheduledReportRequest
    CreateScheduledReportResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledReportArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateScheduledReportResponse.type = Types::CreateScheduledReportResponse
    DashboardReference.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DashboardReference.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardName, name: "name", traits: {"smithy.api#required" => {}}))
    DashboardReference.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    DashboardReference.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardType, name: "type", traits: {"smithy.api#required" => {}}))
    DashboardReference.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericTimeStamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    DashboardReference.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericTimeStamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    DashboardReference.type = Types::DashboardReference
    DashboardReferenceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardReference, name: "member"))
    DashboardType.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    DateTimeRange.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeValue, name: "startTime", traits: {"smithy.api#required" => {}}))
    DateTimeRange.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeValue, name: "endTime", traits: {"smithy.api#required" => {}}))
    DateTimeRange.type = Types::DateTimeRange
    DateTimeType.add_member(:absolute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ABSOLUTE", traits: {"smithy.api#enumValue" => "ABSOLUTE"}))
    DateTimeType.add_member(:relative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RELATIVE", traits: {"smithy.api#enumValue" => "RELATIVE"}))
    DateTimeValue.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeType, name: "type", traits: {"smithy.api#required" => {}}))
    DateTimeValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "value", traits: {"smithy.api#required" => {}}))
    DateTimeValue.type = Types::DateTimeValue
    DeleteDashboardRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteDashboardRequest.type = Types::DeleteDashboardRequest
    DeleteDashboardResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteDashboardResponse.type = Types::DeleteDashboardResponse
    DeleteScheduledReportRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledReportArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteScheduledReportRequest.type = Types::DeleteScheduledReportRequest
    DeleteScheduledReportResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledReportArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteScheduledReportResponse.type = Types::DeleteScheduledReportResponse
    Dimension.add_member(:az, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZ", traits: {"smithy.api#enumValue" => "AZ"}))
    Dimension.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_TYPE", traits: {"smithy.api#enumValue" => "INSTANCE_TYPE"}))
    Dimension.add_member(:linked_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINKED_ACCOUNT", traits: {"smithy.api#enumValue" => "LINKED_ACCOUNT"}))
    Dimension.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATION", traits: {"smithy.api#enumValue" => "OPERATION"}))
    Dimension.add_member(:purchase_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PURCHASE_TYPE", traits: {"smithy.api#enumValue" => "PURCHASE_TYPE"}))
    Dimension.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGION", traits: {"smithy.api#enumValue" => "REGION"}))
    Dimension.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE", traits: {"smithy.api#enumValue" => "SERVICE"}))
    Dimension.add_member(:usage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USAGE_TYPE", traits: {"smithy.api#enumValue" => "USAGE_TYPE"}))
    Dimension.add_member(:usage_type_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USAGE_TYPE_GROUP", traits: {"smithy.api#enumValue" => "USAGE_TYPE_GROUP"}))
    Dimension.add_member(:record_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECORD_TYPE", traits: {"smithy.api#enumValue" => "RECORD_TYPE"}))
    Dimension.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_ID", traits: {"smithy.api#enumValue" => "RESOURCE_ID"}))
    Dimension.add_member(:subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBSCRIPTION_ID", traits: {"smithy.api#enumValue" => "SUBSCRIPTION_ID"}))
    Dimension.add_member(:tag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAG_KEY", traits: {"smithy.api#enumValue" => "TAG_KEY"}))
    Dimension.add_member(:operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATING_SYSTEM", traits: {"smithy.api#enumValue" => "OPERATING_SYSTEM"}))
    Dimension.add_member(:tenancy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TENANCY", traits: {"smithy.api#enumValue" => "TENANCY"}))
    Dimension.add_member(:billing_entity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BILLING_ENTITY", traits: {"smithy.api#enumValue" => "BILLING_ENTITY"}))
    Dimension.add_member(:reservation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESERVATION_ID", traits: {"smithy.api#enumValue" => "RESERVATION_ID"}))
    Dimension.add_member(:cost_category_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COST_CATEGORY_NAME", traits: {"smithy.api#enumValue" => "COST_CATEGORY_NAME"}))
    Dimension.add_member(:database_engine, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATABASE_ENGINE", traits: {"smithy.api#enumValue" => "DATABASE_ENGINE"}))
    Dimension.add_member(:legal_entity_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LEGAL_ENTITY_NAME", traits: {"smithy.api#enumValue" => "LEGAL_ENTITY_NAME"}))
    Dimension.add_member(:savings_plans_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAVINGS_PLANS_TYPE", traits: {"smithy.api#enumValue" => "SAVINGS_PLANS_TYPE"}))
    Dimension.add_member(:instance_type_family, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_TYPE_FAMILY", traits: {"smithy.api#enumValue" => "INSTANCE_TYPE_FAMILY"}))
    Dimension.add_member(:cache_engine, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CACHE_ENGINE", traits: {"smithy.api#enumValue" => "CACHE_ENGINE"}))
    Dimension.add_member(:deployment_option, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPLOYMENT_OPTION", traits: {"smithy.api#enumValue" => "DEPLOYMENT_OPTION"}))
    Dimension.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCOPE", traits: {"smithy.api#enumValue" => "SCOPE"}))
    Dimension.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLATFORM", traits: {"smithy.api#enumValue" => "PLATFORM"}))
    DimensionValues.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimension, name: "key", traits: {"smithy.api#required" => {}}))
    DimensionValues.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "values", traits: {"smithy.api#required" => {}}))
    DimensionValues.add_member(:match_options, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchOptions, name: "matchOptions"))
    DimensionValues.type = Types::DimensionValues
    DisplayConfig.add_member(:graph, Types::DisplayConfig::Graph, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphDisplayConfigMap, name: "graph"))
    DisplayConfig.add_member(:table, Types::DisplayConfig::Table, ::Smithy::Schema::Shapes::MemberShape.new(target: TableDisplayConfigStruct, name: "table"))
    DisplayConfig.add_member(:unknown, Types::DisplayConfig::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    DisplayConfig.type = Types::DisplayConfig
    ExecuteScheduledReportRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledReportArn, name: "arn", traits: {"smithy.api#required" => {}}))
    ExecuteScheduledReportRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}, "smithy.api#notProperty" => {}}))
    ExecuteScheduledReportRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "dryRun"))
    ExecuteScheduledReportRequest.type = Types::ExecuteScheduledReportRequest
    ExecuteScheduledReportResponse.add_member(:health_status, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthStatus, name: "healthStatus"))
    ExecuteScheduledReportResponse.add_member(:execution_triggered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "executionTriggered"))
    ExecuteScheduledReportResponse.type = Types::ExecuteScheduledReportResponse
    Expression.add_member(:or, ::Smithy::Schema::Shapes::MemberShape.new(target: Expressions, name: "or"))
    Expression.add_member(:and, ::Smithy::Schema::Shapes::MemberShape.new(target: Expressions, name: "and"))
    Expression.add_member(:not, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "not"))
    Expression.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionValues, name: "dimensions"))
    Expression.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValues, name: "tags"))
    Expression.add_member(:cost_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: CostCategoryValues, name: "costCategories"))
    Expression.type = Types::Expression
    Expressions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "member"))
    GetDashboardRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetDashboardRequest.type = Types::GetDashboardRequest
    GetDashboardResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetDashboardResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardName, name: "name", traits: {"smithy.api#required" => {}}))
    GetDashboardResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    GetDashboardResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardType, name: "type", traits: {"smithy.api#required" => {}}))
    GetDashboardResponse.add_member(:widgets, ::Smithy::Schema::Shapes::MemberShape.new(target: WidgetList, name: "widgets", traits: {"smithy.api#required" => {}}))
    GetDashboardResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericTimeStamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetDashboardResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericTimeStamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    GetDashboardResponse.type = Types::GetDashboardResponse
    GetResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    GetResourcePolicyRequest.type = Types::GetResourcePolicyRequest
    GetResourcePolicyResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    GetResourcePolicyResponse.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "policyDocument", traits: {"smithy.api#required" => {}}))
    GetResourcePolicyResponse.type = Types::GetResourcePolicyResponse
    GetScheduledReportRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledReportArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetScheduledReportRequest.type = Types::GetScheduledReportRequest
    GetScheduledReportResponse.add_member(:scheduled_report, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledReport, name: "scheduledReport", traits: {"smithy.api#required" => {}}))
    GetScheduledReportResponse.type = Types::GetScheduledReportResponse
    Granularity.add_member(:hourly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOURLY", traits: {"smithy.api#enumValue" => "HOURLY"}))
    Granularity.add_member(:daily, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAILY", traits: {"smithy.api#enumValue" => "DAILY"}))
    Granularity.add_member(:monthly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONTHLY", traits: {"smithy.api#enumValue" => "MONTHLY"}))
    GraphDisplayConfig.add_member(:visual_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VisualType, name: "visualType", traits: {"smithy.api#required" => {}}))
    GraphDisplayConfig.type = Types::GraphDisplayConfig
    GraphDisplayConfigMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "key"))
    GraphDisplayConfigMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphDisplayConfig, name: "value"))
    GroupDefinition.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\S\\s]*$", "smithy.api#required" => {}}))
    GroupDefinition.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupDefinitionType, name: "type", traits: {"smithy.api#default" => "DIMENSION"}))
    GroupDefinition.type = Types::GroupDefinition
    GroupDefinitionType.add_member(:dimension, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIMENSION", traits: {"smithy.api#enumValue" => "DIMENSION"}))
    GroupDefinitionType.add_member(:tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAG", traits: {"smithy.api#enumValue" => "TAG"}))
    GroupDefinitionType.add_member(:cost_category, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COST_CATEGORY", traits: {"smithy.api#enumValue" => "COST_CATEGORY"}))
    GroupDefinitions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupDefinition, name: "member"))
    HealthStatus.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthStatusCode, name: "statusCode", traits: {"smithy.api#required" => {}}))
    HealthStatus.add_member(:last_refreshed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericTimeStamp, name: "lastRefreshedAt"))
    HealthStatus.add_member(:status_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusReasonList, name: "statusReasons"))
    HealthStatus.type = Types::HealthStatus
    HealthStatusCode.add_member(:healthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEALTHY", traits: {"smithy.api#enumValue" => "HEALTHY"}))
    HealthStatusCode.add_member(:unhealthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNHEALTHY", traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListDashboardsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 20}))
    ListDashboardsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextPageToken, name: "nextToken"))
    ListDashboardsRequest.type = Types::ListDashboardsRequest
    ListDashboardsResponse.add_member(:dashboards, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardReferenceList, name: "dashboards", traits: {"smithy.api#required" => {}}))
    ListDashboardsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextPageToken, name: "nextToken"))
    ListDashboardsResponse.type = Types::ListDashboardsResponse
    ListScheduledReportsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextPageToken, name: "nextToken"))
    ListScheduledReportsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 50}))
    ListScheduledReportsRequest.type = Types::ListScheduledReportsRequest
    ListScheduledReportsResponse.add_member(:scheduled_reports, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledReportSummaryList, name: "scheduledReports", traits: {"smithy.api#required" => {}}))
    ListScheduledReportsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextPageToken, name: "nextToken"))
    ListScheduledReportsResponse.type = Types::ListScheduledReportsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagList, name: "resourceTags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MatchOption.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUALS", traits: {"smithy.api#enumValue" => "EQUALS"}))
    MatchOption.add_member(:absent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ABSENT", traits: {"smithy.api#enumValue" => "ABSENT"}))
    MatchOption.add_member(:starts_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTS_WITH", traits: {"smithy.api#enumValue" => "STARTS_WITH"}))
    MatchOption.add_member(:ends_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENDS_WITH", traits: {"smithy.api#enumValue" => "ENDS_WITH"}))
    MatchOption.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    MatchOption.add_member(:greater_than_or_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN_OR_EQUAL", traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUAL"}))
    MatchOption.add_member(:case_sensitive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CASE_SENSITIVE", traits: {"smithy.api#enumValue" => "CASE_SENSITIVE"}))
    MatchOption.add_member(:case_insensitive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CASE_INSENSITIVE", traits: {"smithy.api#enumValue" => "CASE_INSENSITIVE"}))
    MatchOptions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchOption, name: "member"))
    MetricName.add_member(:amortized_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AmortizedCost", traits: {"smithy.api#enumValue" => "AmortizedCost"}))
    MetricName.add_member(:blended_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BlendedCost", traits: {"smithy.api#enumValue" => "BlendedCost"}))
    MetricName.add_member(:net_amortized_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NetAmortizedCost", traits: {"smithy.api#enumValue" => "NetAmortizedCost"}))
    MetricName.add_member(:net_unblended_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NetUnblendedCost", traits: {"smithy.api#enumValue" => "NetUnblendedCost"}))
    MetricName.add_member(:normalized_usage_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NormalizedUsageAmount", traits: {"smithy.api#enumValue" => "NormalizedUsageAmount"}))
    MetricName.add_member(:unblended_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UnblendedCost", traits: {"smithy.api#enumValue" => "UnblendedCost"}))
    MetricName.add_member(:usage_quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UsageQuantity", traits: {"smithy.api#enumValue" => "UsageQuantity"}))
    MetricName.add_member(:spend_covered_by_savings_plans, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SpendCoveredBySavingsPlans", traits: {"smithy.api#enumValue" => "SpendCoveredBySavingsPlans"}))
    MetricName.add_member(:hour, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Hour", traits: {"smithy.api#enumValue" => "Hour"}))
    MetricName.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Unit", traits: {"smithy.api#enumValue" => "Unit"}))
    MetricName.add_member(:cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Cost", traits: {"smithy.api#enumValue" => "Cost"}))
    MetricNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "member"))
    QueryParameters.add_member(:cost_and_usage, Types::QueryParameters::CostAndUsage, ::Smithy::Schema::Shapes::MemberShape.new(target: CostAndUsageQuery, name: "costAndUsage"))
    QueryParameters.add_member(:savings_plans_coverage, Types::QueryParameters::SavingsPlansCoverage, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsPlansCoverageQuery, name: "savingsPlansCoverage"))
    QueryParameters.add_member(:savings_plans_utilization, Types::QueryParameters::SavingsPlansUtilization, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsPlansUtilizationQuery, name: "savingsPlansUtilization"))
    QueryParameters.add_member(:reservation_coverage, Types::QueryParameters::ReservationCoverage, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservationCoverageQuery, name: "reservationCoverage"))
    QueryParameters.add_member(:reservation_utilization, Types::QueryParameters::ReservationUtilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservationUtilizationQuery, name: "reservationUtilization"))
    QueryParameters.add_member(:unknown, Types::QueryParameters::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    QueryParameters.type = Types::QueryParameters
    ReservationCoverageQuery.add_member(:time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeRange, name: "timeRange", traits: {"smithy.api#required" => {}}))
    ReservationCoverageQuery.add_member(:group_by, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupDefinitions, name: "groupBy"))
    ReservationCoverageQuery.add_member(:granularity, ::Smithy::Schema::Shapes::MemberShape.new(target: Granularity, name: "granularity"))
    ReservationCoverageQuery.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "filter"))
    ReservationCoverageQuery.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricNames, name: "metrics"))
    ReservationCoverageQuery.type = Types::ReservationCoverageQuery
    ReservationUtilizationQuery.add_member(:time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeRange, name: "timeRange", traits: {"smithy.api#required" => {}}))
    ReservationUtilizationQuery.add_member(:group_by, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupDefinitions, name: "groupBy"))
    ReservationUtilizationQuery.add_member(:granularity, ::Smithy::Schema::Shapes::MemberShape.new(target: Granularity, name: "granularity"))
    ReservationUtilizationQuery.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "filter"))
    ReservationUtilizationQuery.type = Types::ReservationUtilizationQuery
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceTag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagKey, name: "key", traits: {"smithy.api#required" => {}}))
    ResourceTag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagValue, name: "value", traits: {"smithy.api#required" => {}}))
    ResourceTag.type = Types::ResourceTag
    ResourceTagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagKey, name: "member"))
    ResourceTagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTag, name: "member"))
    SavingsPlansCoverageQuery.add_member(:time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeRange, name: "timeRange", traits: {"smithy.api#required" => {}}))
    SavingsPlansCoverageQuery.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricNames, name: "metrics"))
    SavingsPlansCoverageQuery.add_member(:granularity, ::Smithy::Schema::Shapes::MemberShape.new(target: Granularity, name: "granularity"))
    SavingsPlansCoverageQuery.add_member(:group_by, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupDefinitions, name: "groupBy"))
    SavingsPlansCoverageQuery.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "filter"))
    SavingsPlansCoverageQuery.type = Types::SavingsPlansCoverageQuery
    SavingsPlansUtilizationQuery.add_member(:time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeRange, name: "timeRange", traits: {"smithy.api#required" => {}}))
    SavingsPlansUtilizationQuery.add_member(:granularity, ::Smithy::Schema::Shapes::MemberShape.new(target: Granularity, name: "granularity"))
    SavingsPlansUtilizationQuery.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "filter"))
    SavingsPlansUtilizationQuery.type = Types::SavingsPlansUtilizationQuery
    ScheduleConfig.add_member(:schedule_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "scheduleExpression"))
    ScheduleConfig.add_member(:schedule_expression_time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "scheduleExpressionTimeZone"))
    ScheduleConfig.add_member(:schedule_period, ::Smithy::Schema::Shapes::MemberShape.new(target: SchedulePeriod, name: "schedulePeriod"))
    ScheduleConfig.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleState, name: "state"))
    ScheduleConfig.type = Types::ScheduleConfig
    SchedulePeriod.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericTimeStamp, name: "startTime"))
    SchedulePeriod.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericTimeStamp, name: "endTime"))
    SchedulePeriod.type = Types::SchedulePeriod
    ScheduleState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ScheduleState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ScheduledReport.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledReportArn, name: "arn"))
    ScheduledReport.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledReportName, name: "name", traits: {"smithy.api#required" => {}}))
    ScheduledReport.add_member(:dashboard_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardArn, name: "dashboardArn", traits: {"smithy.api#required" => {}}))
    ScheduledReport.add_member(:scheduled_report_execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRoleArn, name: "scheduledReportExecutionRoleArn", traits: {"smithy.api#required" => {}}))
    ScheduledReport.add_member(:schedule_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleConfig, name: "scheduleConfig", traits: {"smithy.api#required" => {}}))
    ScheduledReport.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    ScheduledReport.add_member(:widget_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: WidgetIdList, name: "widgetIds"))
    ScheduledReport.add_member(:widget_date_range_override, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeRange, name: "widgetDateRangeOverride"))
    ScheduledReport.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericTimeStamp, name: "createdAt"))
    ScheduledReport.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericTimeStamp, name: "updatedAt"))
    ScheduledReport.add_member(:last_execution_at, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericTimeStamp, name: "lastExecutionAt"))
    ScheduledReport.add_member(:health_status, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthStatus, name: "healthStatus"))
    ScheduledReport.type = Types::ScheduledReport
    ScheduledReportInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledReportName, name: "name", traits: {"smithy.api#required" => {}}))
    ScheduledReportInput.add_member(:dashboard_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardArn, name: "dashboardArn", traits: {"smithy.api#required" => {}}))
    ScheduledReportInput.add_member(:scheduled_report_execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRoleArn, name: "scheduledReportExecutionRoleArn", traits: {"smithy.api#required" => {}}))
    ScheduledReportInput.add_member(:schedule_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleConfig, name: "scheduleConfig", traits: {"smithy.api#required" => {}}))
    ScheduledReportInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    ScheduledReportInput.add_member(:widget_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: WidgetIdList, name: "widgetIds"))
    ScheduledReportInput.add_member(:widget_date_range_override, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeRange, name: "widgetDateRangeOverride"))
    ScheduledReportInput.type = Types::ScheduledReportInput
    ScheduledReportSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledReportArn, name: "arn", traits: {"smithy.api#required" => {}}))
    ScheduledReportSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledReportName, name: "name", traits: {"smithy.api#required" => {}}))
    ScheduledReportSummary.add_member(:dashboard_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardArn, name: "dashboardArn", traits: {"smithy.api#required" => {}}))
    ScheduledReportSummary.add_member(:schedule_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "scheduleExpression", traits: {"smithy.api#required" => {}}))
    ScheduledReportSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleState, name: "state", traits: {"smithy.api#required" => {}}))
    ScheduledReportSummary.add_member(:health_status, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthStatus, name: "healthStatus", traits: {"smithy.api#required" => {}}))
    ScheduledReportSummary.add_member(:schedule_expression_time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "scheduleExpressionTimeZone"))
    ScheduledReportSummary.add_member(:widget_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: WidgetIdList, name: "widgetIds"))
    ScheduledReportSummary.type = Types::ScheduledReportSummary
    ScheduledReportSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledReportSummary, name: "member"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StatusReason.add_member(:data_source_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA_SOURCE_ACCESS_DENIED", traits: {"smithy.api#enumValue" => "DATA_SOURCE_ACCESS_DENIED"}))
    StatusReason.add_member(:execution_role_assume_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTION_ROLE_ASSUME_FAILED", traits: {"smithy.api#enumValue" => "EXECUTION_ROLE_ASSUME_FAILED"}))
    StatusReason.add_member(:execution_role_insufficient_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTION_ROLE_INSUFFICIENT_PERMISSIONS", traits: {"smithy.api#enumValue" => "EXECUTION_ROLE_INSUFFICIENT_PERMISSIONS"}))
    StatusReason.add_member(:dashboard_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DASHBOARD_NOT_FOUND", traits: {"smithy.api#enumValue" => "DASHBOARD_NOT_FOUND"}))
    StatusReason.add_member(:dashboard_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DASHBOARD_ACCESS_DENIED", traits: {"smithy.api#enumValue" => "DASHBOARD_ACCESS_DENIED"}))
    StatusReason.add_member(:internal_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_FAILURE", traits: {"smithy.api#enumValue" => "INTERNAL_FAILURE"}))
    StatusReason.add_member(:widget_id_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WIDGET_ID_NOT_FOUND", traits: {"smithy.api#enumValue" => "WIDGET_ID_NOT_FOUND"}))
    StatusReasonList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusReason, name: "member"))
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    TableDisplayConfigStruct.type = Types::TableDisplayConfigStruct
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagList, name: "resourceTags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TagValues.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    TagValues.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "values"))
    TagValues.add_member(:match_options, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchOptions, name: "matchOptions"))
    TagValues.type = Types::TagValues
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:resource_tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagKeyList, name: "resourceTagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateDashboardRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardArn, name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateDashboardRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardName, name: "name", traits: {"smithy.api#required" => {}}))
    UpdateDashboardRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateDashboardRequest.add_member(:widgets, ::Smithy::Schema::Shapes::MemberShape.new(target: WidgetList, name: "widgets"))
    UpdateDashboardRequest.type = Types::UpdateDashboardRequest
    UpdateDashboardResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardArn, name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateDashboardResponse.type = Types::UpdateDashboardResponse
    UpdateScheduledReportRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledReportArn, name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateScheduledReportRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledReportName, name: "name"))
    UpdateScheduledReportRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateScheduledReportRequest.add_member(:dashboard_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardArn, name: "dashboardArn"))
    UpdateScheduledReportRequest.add_member(:scheduled_report_execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRoleArn, name: "scheduledReportExecutionRoleArn"))
    UpdateScheduledReportRequest.add_member(:schedule_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleConfig, name: "scheduleConfig"))
    UpdateScheduledReportRequest.add_member(:widget_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: WidgetIdList, name: "widgetIds"))
    UpdateScheduledReportRequest.add_member(:widget_date_range_override, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeRange, name: "widgetDateRangeOverride"))
    UpdateScheduledReportRequest.add_member(:clear_widget_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "clearWidgetIds", traits: {"smithy.api#default" => false}))
    UpdateScheduledReportRequest.add_member(:clear_widget_date_range_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "clearWidgetDateRangeOverride", traits: {"smithy.api#default" => false}))
    UpdateScheduledReportRequest.type = Types::UpdateScheduledReportRequest
    UpdateScheduledReportResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledReportArn, name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateScheduledReportResponse.type = Types::UpdateScheduledReportResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    VisualType.add_member(:line, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINE", traits: {"smithy.api#enumValue" => "LINE"}))
    VisualType.add_member(:bar, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BAR", traits: {"smithy.api#enumValue" => "BAR"}))
    VisualType.add_member(:stack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STACK", traits: {"smithy.api#enumValue" => "STACK"}))
    Widget.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WidgetId, name: "id"))
    Widget.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: WidgetTitle, name: "title", traits: {"smithy.api#required" => {}}))
    Widget.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    Widget.add_member(:width, ::Smithy::Schema::Shapes::MemberShape.new(target: WidgetWidth, name: "width", traits: {"smithy.api#default" => 4}))
    Widget.add_member(:height, ::Smithy::Schema::Shapes::MemberShape.new(target: WidgetHeight, name: "height", traits: {"smithy.api#default" => 7}))
    Widget.add_member(:horizontal_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "horizontalOffset", traits: {"smithy.api#default" => 0}))
    Widget.add_member(:configs, ::Smithy::Schema::Shapes::MemberShape.new(target: WidgetConfigList, name: "configs", traits: {"smithy.api#required" => {}}))
    Widget.type = Types::Widget
    WidgetConfig.add_member(:query_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryParameters, name: "queryParameters", traits: {"smithy.api#required" => {}}))
    WidgetConfig.add_member(:display_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayConfig, name: "displayConfig", traits: {"smithy.api#required" => {}}))
    WidgetConfig.type = Types::WidgetConfig
    WidgetConfigList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WidgetConfig, name: "member"))
    WidgetIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    WidgetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Widget, name: "member"))

    AWSBCMDashboardsService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.bcmdashboards#AWSBCMDashboardsService"
      service.name = "AWSBCMDashboardsService"
      service.version = "2025-08-18"
      service.traits = {"aws.api#service" => {"sdkId" => "BCM Dashboards", "arnNamespace" => "bcm-dashboards", "endpointPrefix" => "bcm-dashboards"}, "aws.auth#sigv4" => {"name" => "bcm-dashboards"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardPartitionalEndpoints" => {"endpointPatternType" => "service_region_dnsSuffix"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AWS Billing and Cost Management Dashboards", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://bcm-dashboards-fips.{PartitionResult#implicitGlobalRegion}.{PartitionResult#dualStackDnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "{PartitionResult#implicitGlobalRegion}"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://bcm-dashboards.{PartitionResult#implicitGlobalRegion}.{PartitionResult#dualStackDnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "{PartitionResult#implicitGlobalRegion}"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 6, "nodes" => "/////wAAAAH/////AAAAAAAAAAYAAAADAAAAAQAAAAQF9eEFAAAAAgAAAAUF9eEFAAAAAwX14QMF9eEEAAAAAwX14QEF9eEC"}}
      service.add_operation(:create_dashboard, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmdashboards#CreateDashboard"
        operation.name = "CreateDashboard"
        operation.input = CreateDashboardRequest
        operation.output = CreateDashboardResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_scheduled_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmdashboards#CreateScheduledReport"
        operation.name = "CreateScheduledReport"
        operation.input = CreateScheduledReportRequest
        operation.output = CreateScheduledReportResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_dashboard, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmdashboards#DeleteDashboard"
        operation.name = "DeleteDashboard"
        operation.input = DeleteDashboardRequest
        operation.output = DeleteDashboardResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_scheduled_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmdashboards#DeleteScheduledReport"
        operation.name = "DeleteScheduledReport"
        operation.input = DeleteScheduledReportRequest
        operation.output = DeleteScheduledReportResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:execute_scheduled_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmdashboards#ExecuteScheduledReport"
        operation.name = "ExecuteScheduledReport"
        operation.input = ExecuteScheduledReportRequest
        operation.output = ExecuteScheduledReportResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_dashboard, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmdashboards#GetDashboard"
        operation.name = "GetDashboard"
        operation.input = GetDashboardRequest
        operation.output = GetDashboardResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmdashboards#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = GetResourcePolicyRequest
        operation.output = GetResourcePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_scheduled_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmdashboards#GetScheduledReport"
        operation.name = "GetScheduledReport"
        operation.input = GetScheduledReportRequest
        operation.output = GetScheduledReportResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_dashboards, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmdashboards#ListDashboards"
        operation.name = "ListDashboards"
        operation.input = ListDashboardsRequest
        operation.output = ListDashboardsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListDashboardsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListDashboards.new
      end)
      service.add_operation(:list_scheduled_reports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmdashboards#ListScheduledReports"
        operation.name = "ListScheduledReports"
        operation.input = ListScheduledReportsRequest
        operation.output = ListScheduledReportsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListScheduledReports.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmdashboards#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmdashboards#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmdashboards#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_dashboard, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmdashboards#UpdateDashboard"
        operation.name = "UpdateDashboard"
        operation.input = UpdateDashboardRequest
        operation.output = UpdateDashboardResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_scheduled_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmdashboards#UpdateScheduledReport"
        operation.name = "UpdateScheduledReport"
        operation.input = UpdateScheduledReportRequest
        operation.output = UpdateScheduledReportResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
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
