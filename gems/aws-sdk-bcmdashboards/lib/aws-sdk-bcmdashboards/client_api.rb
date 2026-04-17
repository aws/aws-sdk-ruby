# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::BCMDashboards
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CostAndUsageQuery = Shapes::StructureShape.new(name: 'CostAndUsageQuery')
    CostCategoryValues = Shapes::StructureShape.new(name: 'CostCategoryValues')
    CreateDashboardRequest = Shapes::StructureShape.new(name: 'CreateDashboardRequest')
    CreateDashboardResponse = Shapes::StructureShape.new(name: 'CreateDashboardResponse')
    CreateScheduledReportRequest = Shapes::StructureShape.new(name: 'CreateScheduledReportRequest')
    CreateScheduledReportResponse = Shapes::StructureShape.new(name: 'CreateScheduledReportResponse')
    DashboardArn = Shapes::StringShape.new(name: 'DashboardArn')
    DashboardName = Shapes::StringShape.new(name: 'DashboardName')
    DashboardReference = Shapes::StructureShape.new(name: 'DashboardReference')
    DashboardReferenceList = Shapes::ListShape.new(name: 'DashboardReferenceList')
    DashboardType = Shapes::StringShape.new(name: 'DashboardType')
    DateTimeRange = Shapes::StructureShape.new(name: 'DateTimeRange')
    DateTimeType = Shapes::StringShape.new(name: 'DateTimeType')
    DateTimeValue = Shapes::StructureShape.new(name: 'DateTimeValue')
    DeleteDashboardRequest = Shapes::StructureShape.new(name: 'DeleteDashboardRequest')
    DeleteDashboardResponse = Shapes::StructureShape.new(name: 'DeleteDashboardResponse')
    DeleteScheduledReportRequest = Shapes::StructureShape.new(name: 'DeleteScheduledReportRequest')
    DeleteScheduledReportResponse = Shapes::StructureShape.new(name: 'DeleteScheduledReportResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    Dimension = Shapes::StringShape.new(name: 'Dimension')
    DimensionValues = Shapes::StructureShape.new(name: 'DimensionValues')
    DisplayConfig = Shapes::UnionShape.new(name: 'DisplayConfig')
    ExecuteScheduledReportRequest = Shapes::StructureShape.new(name: 'ExecuteScheduledReportRequest')
    ExecuteScheduledReportResponse = Shapes::StructureShape.new(name: 'ExecuteScheduledReportResponse')
    Expression = Shapes::StructureShape.new(name: 'Expression')
    Expressions = Shapes::ListShape.new(name: 'Expressions')
    GenericString = Shapes::StringShape.new(name: 'GenericString')
    GenericTimeStamp = Shapes::TimestampShape.new(name: 'GenericTimeStamp')
    GetDashboardRequest = Shapes::StructureShape.new(name: 'GetDashboardRequest')
    GetDashboardResponse = Shapes::StructureShape.new(name: 'GetDashboardResponse')
    GetResourcePolicyRequest = Shapes::StructureShape.new(name: 'GetResourcePolicyRequest')
    GetResourcePolicyResponse = Shapes::StructureShape.new(name: 'GetResourcePolicyResponse')
    GetScheduledReportRequest = Shapes::StructureShape.new(name: 'GetScheduledReportRequest')
    GetScheduledReportResponse = Shapes::StructureShape.new(name: 'GetScheduledReportResponse')
    Granularity = Shapes::StringShape.new(name: 'Granularity')
    GraphDisplayConfig = Shapes::StructureShape.new(name: 'GraphDisplayConfig')
    GraphDisplayConfigMap = Shapes::MapShape.new(name: 'GraphDisplayConfigMap')
    GroupDefinition = Shapes::StructureShape.new(name: 'GroupDefinition')
    GroupDefinitionKeyString = Shapes::StringShape.new(name: 'GroupDefinitionKeyString')
    GroupDefinitionType = Shapes::StringShape.new(name: 'GroupDefinitionType')
    GroupDefinitions = Shapes::ListShape.new(name: 'GroupDefinitions')
    HealthStatus = Shapes::StructureShape.new(name: 'HealthStatus')
    HealthStatusCode = Shapes::StringShape.new(name: 'HealthStatusCode')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListDashboardsRequest = Shapes::StructureShape.new(name: 'ListDashboardsRequest')
    ListDashboardsResponse = Shapes::StructureShape.new(name: 'ListDashboardsResponse')
    ListScheduledReportsRequest = Shapes::StructureShape.new(name: 'ListScheduledReportsRequest')
    ListScheduledReportsResponse = Shapes::StructureShape.new(name: 'ListScheduledReportsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MatchOption = Shapes::StringShape.new(name: 'MatchOption')
    MatchOptions = Shapes::ListShape.new(name: 'MatchOptions')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    MetricNames = Shapes::ListShape.new(name: 'MetricNames')
    NextPageToken = Shapes::StringShape.new(name: 'NextPageToken')
    QueryParameters = Shapes::UnionShape.new(name: 'QueryParameters')
    ReservationCoverageQuery = Shapes::StructureShape.new(name: 'ReservationCoverageQuery')
    ReservationUtilizationQuery = Shapes::StructureShape.new(name: 'ReservationUtilizationQuery')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceTag = Shapes::StructureShape.new(name: 'ResourceTag')
    ResourceTagKey = Shapes::StringShape.new(name: 'ResourceTagKey')
    ResourceTagKeyList = Shapes::ListShape.new(name: 'ResourceTagKeyList')
    ResourceTagList = Shapes::ListShape.new(name: 'ResourceTagList')
    ResourceTagValue = Shapes::StringShape.new(name: 'ResourceTagValue')
    SavingsPlansCoverageQuery = Shapes::StructureShape.new(name: 'SavingsPlansCoverageQuery')
    SavingsPlansUtilizationQuery = Shapes::StructureShape.new(name: 'SavingsPlansUtilizationQuery')
    ScheduleConfig = Shapes::StructureShape.new(name: 'ScheduleConfig')
    SchedulePeriod = Shapes::StructureShape.new(name: 'SchedulePeriod')
    ScheduleState = Shapes::StringShape.new(name: 'ScheduleState')
    ScheduledReport = Shapes::StructureShape.new(name: 'ScheduledReport')
    ScheduledReportArn = Shapes::StringShape.new(name: 'ScheduledReportArn')
    ScheduledReportInput = Shapes::StructureShape.new(name: 'ScheduledReportInput')
    ScheduledReportName = Shapes::StringShape.new(name: 'ScheduledReportName')
    ScheduledReportSummary = Shapes::StructureShape.new(name: 'ScheduledReportSummary')
    ScheduledReportSummaryList = Shapes::ListShape.new(name: 'ScheduledReportSummaryList')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceRoleArn = Shapes::StringShape.new(name: 'ServiceRoleArn')
    StatusReason = Shapes::StringShape.new(name: 'StatusReason')
    StatusReasonList = Shapes::ListShape.new(name: 'StatusReasonList')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    TableDisplayConfigStruct = Shapes::StructureShape.new(name: 'TableDisplayConfigStruct')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValues = Shapes::StructureShape.new(name: 'TagValues')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateDashboardRequest = Shapes::StructureShape.new(name: 'UpdateDashboardRequest')
    UpdateDashboardResponse = Shapes::StructureShape.new(name: 'UpdateDashboardResponse')
    UpdateScheduledReportRequest = Shapes::StructureShape.new(name: 'UpdateScheduledReportRequest')
    UpdateScheduledReportResponse = Shapes::StructureShape.new(name: 'UpdateScheduledReportResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VisualType = Shapes::StringShape.new(name: 'VisualType')
    Widget = Shapes::StructureShape.new(name: 'Widget')
    WidgetConfig = Shapes::StructureShape.new(name: 'WidgetConfig')
    WidgetConfigList = Shapes::ListShape.new(name: 'WidgetConfigList')
    WidgetHeight = Shapes::IntegerShape.new(name: 'WidgetHeight')
    WidgetId = Shapes::StringShape.new(name: 'WidgetId')
    WidgetIdList = Shapes::ListShape.new(name: 'WidgetIdList')
    WidgetList = Shapes::ListShape.new(name: 'WidgetList')
    WidgetTitle = Shapes::StringShape.new(name: 'WidgetTitle')
    WidgetWidth = Shapes::IntegerShape.new(name: 'WidgetWidth')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CostAndUsageQuery.add_member(:metrics, Shapes::ShapeRef.new(shape: MetricNames, required: true, location_name: "metrics"))
    CostAndUsageQuery.add_member(:time_range, Shapes::ShapeRef.new(shape: DateTimeRange, required: true, location_name: "timeRange"))
    CostAndUsageQuery.add_member(:granularity, Shapes::ShapeRef.new(shape: Granularity, required: true, location_name: "granularity"))
    CostAndUsageQuery.add_member(:group_by, Shapes::ShapeRef.new(shape: GroupDefinitions, location_name: "groupBy"))
    CostAndUsageQuery.add_member(:filter, Shapes::ShapeRef.new(shape: Expression, location_name: "filter"))
    CostAndUsageQuery.struct_class = Types::CostAndUsageQuery

    CostCategoryValues.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "key"))
    CostCategoryValues.add_member(:values, Shapes::ShapeRef.new(shape: StringList, location_name: "values"))
    CostCategoryValues.add_member(:match_options, Shapes::ShapeRef.new(shape: MatchOptions, location_name: "matchOptions"))
    CostCategoryValues.struct_class = Types::CostCategoryValues

    CreateDashboardRequest.add_member(:name, Shapes::ShapeRef.new(shape: DashboardName, required: true, location_name: "name"))
    CreateDashboardRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateDashboardRequest.add_member(:widgets, Shapes::ShapeRef.new(shape: WidgetList, required: true, location_name: "widgets"))
    CreateDashboardRequest.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagList, location_name: "resourceTags"))
    CreateDashboardRequest.struct_class = Types::CreateDashboardRequest

    CreateDashboardResponse.add_member(:arn, Shapes::ShapeRef.new(shape: DashboardArn, required: true, location_name: "arn"))
    CreateDashboardResponse.struct_class = Types::CreateDashboardResponse

    CreateScheduledReportRequest.add_member(:scheduled_report, Shapes::ShapeRef.new(shape: ScheduledReportInput, required: true, location_name: "scheduledReport"))
    CreateScheduledReportRequest.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagList, location_name: "resourceTags"))
    CreateScheduledReportRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateScheduledReportRequest.struct_class = Types::CreateScheduledReportRequest

    CreateScheduledReportResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ScheduledReportArn, required: true, location_name: "arn"))
    CreateScheduledReportResponse.struct_class = Types::CreateScheduledReportResponse

    DashboardReference.add_member(:arn, Shapes::ShapeRef.new(shape: DashboardArn, required: true, location_name: "arn"))
    DashboardReference.add_member(:name, Shapes::ShapeRef.new(shape: DashboardName, required: true, location_name: "name"))
    DashboardReference.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    DashboardReference.add_member(:type, Shapes::ShapeRef.new(shape: DashboardType, required: true, location_name: "type"))
    DashboardReference.add_member(:created_at, Shapes::ShapeRef.new(shape: GenericTimeStamp, required: true, location_name: "createdAt"))
    DashboardReference.add_member(:updated_at, Shapes::ShapeRef.new(shape: GenericTimeStamp, required: true, location_name: "updatedAt"))
    DashboardReference.struct_class = Types::DashboardReference

    DashboardReferenceList.member = Shapes::ShapeRef.new(shape: DashboardReference)

    DateTimeRange.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTimeValue, required: true, location_name: "startTime"))
    DateTimeRange.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTimeValue, required: true, location_name: "endTime"))
    DateTimeRange.struct_class = Types::DateTimeRange

    DateTimeValue.add_member(:type, Shapes::ShapeRef.new(shape: DateTimeType, required: true, location_name: "type"))
    DateTimeValue.add_member(:value, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "value"))
    DateTimeValue.struct_class = Types::DateTimeValue

    DeleteDashboardRequest.add_member(:arn, Shapes::ShapeRef.new(shape: DashboardArn, required: true, location_name: "arn"))
    DeleteDashboardRequest.struct_class = Types::DeleteDashboardRequest

    DeleteDashboardResponse.add_member(:arn, Shapes::ShapeRef.new(shape: DashboardArn, required: true, location_name: "arn"))
    DeleteDashboardResponse.struct_class = Types::DeleteDashboardResponse

    DeleteScheduledReportRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ScheduledReportArn, required: true, location_name: "arn"))
    DeleteScheduledReportRequest.struct_class = Types::DeleteScheduledReportRequest

    DeleteScheduledReportResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ScheduledReportArn, required: true, location_name: "arn"))
    DeleteScheduledReportResponse.struct_class = Types::DeleteScheduledReportResponse

    DimensionValues.add_member(:key, Shapes::ShapeRef.new(shape: Dimension, required: true, location_name: "key"))
    DimensionValues.add_member(:values, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "values"))
    DimensionValues.add_member(:match_options, Shapes::ShapeRef.new(shape: MatchOptions, location_name: "matchOptions"))
    DimensionValues.struct_class = Types::DimensionValues

    DisplayConfig.add_member(:graph, Shapes::ShapeRef.new(shape: GraphDisplayConfigMap, location_name: "graph"))
    DisplayConfig.add_member(:table, Shapes::ShapeRef.new(shape: TableDisplayConfigStruct, location_name: "table"))
    DisplayConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DisplayConfig.add_member_subclass(:graph, Types::DisplayConfig::Graph)
    DisplayConfig.add_member_subclass(:table, Types::DisplayConfig::Table)
    DisplayConfig.add_member_subclass(:unknown, Types::DisplayConfig::Unknown)
    DisplayConfig.struct_class = Types::DisplayConfig

    ExecuteScheduledReportRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ScheduledReportArn, required: true, location_name: "arn"))
    ExecuteScheduledReportRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    ExecuteScheduledReportRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: Boolean, location_name: "dryRun"))
    ExecuteScheduledReportRequest.struct_class = Types::ExecuteScheduledReportRequest

    ExecuteScheduledReportResponse.add_member(:health_status, Shapes::ShapeRef.new(shape: HealthStatus, location_name: "healthStatus"))
    ExecuteScheduledReportResponse.add_member(:execution_triggered, Shapes::ShapeRef.new(shape: Boolean, location_name: "executionTriggered"))
    ExecuteScheduledReportResponse.struct_class = Types::ExecuteScheduledReportResponse

    Expression.add_member(:or, Shapes::ShapeRef.new(shape: Expressions, location_name: "or"))
    Expression.add_member(:and, Shapes::ShapeRef.new(shape: Expressions, location_name: "and"))
    Expression.add_member(:not, Shapes::ShapeRef.new(shape: Expression, location_name: "not"))
    Expression.add_member(:dimensions, Shapes::ShapeRef.new(shape: DimensionValues, location_name: "dimensions"))
    Expression.add_member(:tags, Shapes::ShapeRef.new(shape: TagValues, location_name: "tags"))
    Expression.add_member(:cost_categories, Shapes::ShapeRef.new(shape: CostCategoryValues, location_name: "costCategories"))
    Expression.struct_class = Types::Expression

    Expressions.member = Shapes::ShapeRef.new(shape: Expression)

    GetDashboardRequest.add_member(:arn, Shapes::ShapeRef.new(shape: DashboardArn, required: true, location_name: "arn"))
    GetDashboardRequest.struct_class = Types::GetDashboardRequest

    GetDashboardResponse.add_member(:arn, Shapes::ShapeRef.new(shape: DashboardArn, required: true, location_name: "arn"))
    GetDashboardResponse.add_member(:name, Shapes::ShapeRef.new(shape: DashboardName, required: true, location_name: "name"))
    GetDashboardResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetDashboardResponse.add_member(:type, Shapes::ShapeRef.new(shape: DashboardType, required: true, location_name: "type"))
    GetDashboardResponse.add_member(:widgets, Shapes::ShapeRef.new(shape: WidgetList, required: true, location_name: "widgets"))
    GetDashboardResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: GenericTimeStamp, required: true, location_name: "createdAt"))
    GetDashboardResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: GenericTimeStamp, required: true, location_name: "updatedAt"))
    GetDashboardResponse.struct_class = Types::GetDashboardResponse

    GetResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: DashboardArn, required: true, location_name: "resourceArn"))
    GetResourcePolicyRequest.struct_class = Types::GetResourcePolicyRequest

    GetResourcePolicyResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: DashboardArn, required: true, location_name: "resourceArn"))
    GetResourcePolicyResponse.add_member(:policy_document, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "policyDocument"))
    GetResourcePolicyResponse.struct_class = Types::GetResourcePolicyResponse

    GetScheduledReportRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ScheduledReportArn, required: true, location_name: "arn"))
    GetScheduledReportRequest.struct_class = Types::GetScheduledReportRequest

    GetScheduledReportResponse.add_member(:scheduled_report, Shapes::ShapeRef.new(shape: ScheduledReport, required: true, location_name: "scheduledReport"))
    GetScheduledReportResponse.struct_class = Types::GetScheduledReportResponse

    GraphDisplayConfig.add_member(:visual_type, Shapes::ShapeRef.new(shape: VisualType, required: true, location_name: "visualType"))
    GraphDisplayConfig.struct_class = Types::GraphDisplayConfig

    GraphDisplayConfigMap.key = Shapes::ShapeRef.new(shape: GenericString)
    GraphDisplayConfigMap.value = Shapes::ShapeRef.new(shape: GraphDisplayConfig)

    GroupDefinition.add_member(:key, Shapes::ShapeRef.new(shape: GroupDefinitionKeyString, required: true, location_name: "key"))
    GroupDefinition.add_member(:type, Shapes::ShapeRef.new(shape: GroupDefinitionType, location_name: "type"))
    GroupDefinition.struct_class = Types::GroupDefinition

    GroupDefinitions.member = Shapes::ShapeRef.new(shape: GroupDefinition)

    HealthStatus.add_member(:status_code, Shapes::ShapeRef.new(shape: HealthStatusCode, required: true, location_name: "statusCode"))
    HealthStatus.add_member(:last_refreshed_at, Shapes::ShapeRef.new(shape: GenericTimeStamp, location_name: "lastRefreshedAt"))
    HealthStatus.add_member(:status_reasons, Shapes::ShapeRef.new(shape: StatusReasonList, location_name: "statusReasons"))
    HealthStatus.struct_class = Types::HealthStatus

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListDashboardsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListDashboardsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListDashboardsRequest.struct_class = Types::ListDashboardsRequest

    ListDashboardsResponse.add_member(:dashboards, Shapes::ShapeRef.new(shape: DashboardReferenceList, required: true, location_name: "dashboards"))
    ListDashboardsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListDashboardsResponse.struct_class = Types::ListDashboardsResponse

    ListScheduledReportsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListScheduledReportsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListScheduledReportsRequest.struct_class = Types::ListScheduledReportsRequest

    ListScheduledReportsResponse.add_member(:scheduled_reports, Shapes::ShapeRef.new(shape: ScheduledReportSummaryList, required: true, location_name: "scheduledReports"))
    ListScheduledReportsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListScheduledReportsResponse.struct_class = Types::ListScheduledReportsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagList, location_name: "resourceTags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MatchOptions.member = Shapes::ShapeRef.new(shape: MatchOption)

    MetricNames.member = Shapes::ShapeRef.new(shape: MetricName)

    QueryParameters.add_member(:cost_and_usage, Shapes::ShapeRef.new(shape: CostAndUsageQuery, location_name: "costAndUsage"))
    QueryParameters.add_member(:savings_plans_coverage, Shapes::ShapeRef.new(shape: SavingsPlansCoverageQuery, location_name: "savingsPlansCoverage"))
    QueryParameters.add_member(:savings_plans_utilization, Shapes::ShapeRef.new(shape: SavingsPlansUtilizationQuery, location_name: "savingsPlansUtilization"))
    QueryParameters.add_member(:reservation_coverage, Shapes::ShapeRef.new(shape: ReservationCoverageQuery, location_name: "reservationCoverage"))
    QueryParameters.add_member(:reservation_utilization, Shapes::ShapeRef.new(shape: ReservationUtilizationQuery, location_name: "reservationUtilization"))
    QueryParameters.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    QueryParameters.add_member_subclass(:cost_and_usage, Types::QueryParameters::CostAndUsage)
    QueryParameters.add_member_subclass(:savings_plans_coverage, Types::QueryParameters::SavingsPlansCoverage)
    QueryParameters.add_member_subclass(:savings_plans_utilization, Types::QueryParameters::SavingsPlansUtilization)
    QueryParameters.add_member_subclass(:reservation_coverage, Types::QueryParameters::ReservationCoverage)
    QueryParameters.add_member_subclass(:reservation_utilization, Types::QueryParameters::ReservationUtilization)
    QueryParameters.add_member_subclass(:unknown, Types::QueryParameters::Unknown)
    QueryParameters.struct_class = Types::QueryParameters

    ReservationCoverageQuery.add_member(:time_range, Shapes::ShapeRef.new(shape: DateTimeRange, required: true, location_name: "timeRange"))
    ReservationCoverageQuery.add_member(:group_by, Shapes::ShapeRef.new(shape: GroupDefinitions, location_name: "groupBy"))
    ReservationCoverageQuery.add_member(:granularity, Shapes::ShapeRef.new(shape: Granularity, location_name: "granularity"))
    ReservationCoverageQuery.add_member(:filter, Shapes::ShapeRef.new(shape: Expression, location_name: "filter"))
    ReservationCoverageQuery.add_member(:metrics, Shapes::ShapeRef.new(shape: MetricNames, location_name: "metrics"))
    ReservationCoverageQuery.struct_class = Types::ReservationCoverageQuery

    ReservationUtilizationQuery.add_member(:time_range, Shapes::ShapeRef.new(shape: DateTimeRange, required: true, location_name: "timeRange"))
    ReservationUtilizationQuery.add_member(:group_by, Shapes::ShapeRef.new(shape: GroupDefinitions, location_name: "groupBy"))
    ReservationUtilizationQuery.add_member(:granularity, Shapes::ShapeRef.new(shape: Granularity, location_name: "granularity"))
    ReservationUtilizationQuery.add_member(:filter, Shapes::ShapeRef.new(shape: Expression, location_name: "filter"))
    ReservationUtilizationQuery.struct_class = Types::ReservationUtilizationQuery

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceTag.add_member(:key, Shapes::ShapeRef.new(shape: ResourceTagKey, required: true, location_name: "key"))
    ResourceTag.add_member(:value, Shapes::ShapeRef.new(shape: ResourceTagValue, required: true, location_name: "value"))
    ResourceTag.struct_class = Types::ResourceTag

    ResourceTagKeyList.member = Shapes::ShapeRef.new(shape: ResourceTagKey)

    ResourceTagList.member = Shapes::ShapeRef.new(shape: ResourceTag)

    SavingsPlansCoverageQuery.add_member(:time_range, Shapes::ShapeRef.new(shape: DateTimeRange, required: true, location_name: "timeRange"))
    SavingsPlansCoverageQuery.add_member(:metrics, Shapes::ShapeRef.new(shape: MetricNames, location_name: "metrics"))
    SavingsPlansCoverageQuery.add_member(:granularity, Shapes::ShapeRef.new(shape: Granularity, location_name: "granularity"))
    SavingsPlansCoverageQuery.add_member(:group_by, Shapes::ShapeRef.new(shape: GroupDefinitions, location_name: "groupBy"))
    SavingsPlansCoverageQuery.add_member(:filter, Shapes::ShapeRef.new(shape: Expression, location_name: "filter"))
    SavingsPlansCoverageQuery.struct_class = Types::SavingsPlansCoverageQuery

    SavingsPlansUtilizationQuery.add_member(:time_range, Shapes::ShapeRef.new(shape: DateTimeRange, required: true, location_name: "timeRange"))
    SavingsPlansUtilizationQuery.add_member(:granularity, Shapes::ShapeRef.new(shape: Granularity, location_name: "granularity"))
    SavingsPlansUtilizationQuery.add_member(:filter, Shapes::ShapeRef.new(shape: Expression, location_name: "filter"))
    SavingsPlansUtilizationQuery.struct_class = Types::SavingsPlansUtilizationQuery

    ScheduleConfig.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: GenericString, location_name: "scheduleExpression"))
    ScheduleConfig.add_member(:schedule_expression_time_zone, Shapes::ShapeRef.new(shape: GenericString, location_name: "scheduleExpressionTimeZone"))
    ScheduleConfig.add_member(:schedule_period, Shapes::ShapeRef.new(shape: SchedulePeriod, location_name: "schedulePeriod"))
    ScheduleConfig.add_member(:state, Shapes::ShapeRef.new(shape: ScheduleState, location_name: "state"))
    ScheduleConfig.struct_class = Types::ScheduleConfig

    SchedulePeriod.add_member(:start_time, Shapes::ShapeRef.new(shape: GenericTimeStamp, location_name: "startTime"))
    SchedulePeriod.add_member(:end_time, Shapes::ShapeRef.new(shape: GenericTimeStamp, location_name: "endTime"))
    SchedulePeriod.struct_class = Types::SchedulePeriod

    ScheduledReport.add_member(:arn, Shapes::ShapeRef.new(shape: ScheduledReportArn, location_name: "arn"))
    ScheduledReport.add_member(:name, Shapes::ShapeRef.new(shape: ScheduledReportName, required: true, location_name: "name"))
    ScheduledReport.add_member(:dashboard_arn, Shapes::ShapeRef.new(shape: DashboardArn, required: true, location_name: "dashboardArn"))
    ScheduledReport.add_member(:scheduled_report_execution_role_arn, Shapes::ShapeRef.new(shape: ServiceRoleArn, required: true, location_name: "scheduledReportExecutionRoleArn"))
    ScheduledReport.add_member(:schedule_config, Shapes::ShapeRef.new(shape: ScheduleConfig, required: true, location_name: "scheduleConfig"))
    ScheduledReport.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ScheduledReport.add_member(:widget_ids, Shapes::ShapeRef.new(shape: WidgetIdList, location_name: "widgetIds"))
    ScheduledReport.add_member(:widget_date_range_override, Shapes::ShapeRef.new(shape: DateTimeRange, location_name: "widgetDateRangeOverride"))
    ScheduledReport.add_member(:created_at, Shapes::ShapeRef.new(shape: GenericTimeStamp, location_name: "createdAt"))
    ScheduledReport.add_member(:updated_at, Shapes::ShapeRef.new(shape: GenericTimeStamp, location_name: "updatedAt"))
    ScheduledReport.add_member(:last_execution_at, Shapes::ShapeRef.new(shape: GenericTimeStamp, location_name: "lastExecutionAt"))
    ScheduledReport.add_member(:health_status, Shapes::ShapeRef.new(shape: HealthStatus, location_name: "healthStatus"))
    ScheduledReport.struct_class = Types::ScheduledReport

    ScheduledReportInput.add_member(:name, Shapes::ShapeRef.new(shape: ScheduledReportName, required: true, location_name: "name"))
    ScheduledReportInput.add_member(:dashboard_arn, Shapes::ShapeRef.new(shape: DashboardArn, required: true, location_name: "dashboardArn"))
    ScheduledReportInput.add_member(:scheduled_report_execution_role_arn, Shapes::ShapeRef.new(shape: ServiceRoleArn, required: true, location_name: "scheduledReportExecutionRoleArn"))
    ScheduledReportInput.add_member(:schedule_config, Shapes::ShapeRef.new(shape: ScheduleConfig, required: true, location_name: "scheduleConfig"))
    ScheduledReportInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ScheduledReportInput.add_member(:widget_ids, Shapes::ShapeRef.new(shape: WidgetIdList, location_name: "widgetIds"))
    ScheduledReportInput.add_member(:widget_date_range_override, Shapes::ShapeRef.new(shape: DateTimeRange, location_name: "widgetDateRangeOverride"))
    ScheduledReportInput.struct_class = Types::ScheduledReportInput

    ScheduledReportSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ScheduledReportArn, required: true, location_name: "arn"))
    ScheduledReportSummary.add_member(:name, Shapes::ShapeRef.new(shape: ScheduledReportName, required: true, location_name: "name"))
    ScheduledReportSummary.add_member(:dashboard_arn, Shapes::ShapeRef.new(shape: DashboardArn, required: true, location_name: "dashboardArn"))
    ScheduledReportSummary.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "scheduleExpression"))
    ScheduledReportSummary.add_member(:state, Shapes::ShapeRef.new(shape: ScheduleState, required: true, location_name: "state"))
    ScheduledReportSummary.add_member(:health_status, Shapes::ShapeRef.new(shape: HealthStatus, required: true, location_name: "healthStatus"))
    ScheduledReportSummary.add_member(:schedule_expression_time_zone, Shapes::ShapeRef.new(shape: GenericString, location_name: "scheduleExpressionTimeZone"))
    ScheduledReportSummary.add_member(:widget_ids, Shapes::ShapeRef.new(shape: WidgetIdList, location_name: "widgetIds"))
    ScheduledReportSummary.struct_class = Types::ScheduledReportSummary

    ScheduledReportSummaryList.member = Shapes::ShapeRef.new(shape: ScheduledReportSummary)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StatusReasonList.member = Shapes::ShapeRef.new(shape: StatusReason)

    StringList.member = Shapes::ShapeRef.new(shape: String)

    TableDisplayConfigStruct.struct_class = Types::TableDisplayConfigStruct

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    TagResourceRequest.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagList, required: true, location_name: "resourceTags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagValues.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "key"))
    TagValues.add_member(:values, Shapes::ShapeRef.new(shape: StringList, location_name: "values"))
    TagValues.add_member(:match_options, Shapes::ShapeRef.new(shape: MatchOptions, location_name: "matchOptions"))
    TagValues.struct_class = Types::TagValues

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    UntagResourceRequest.add_member(:resource_tag_keys, Shapes::ShapeRef.new(shape: ResourceTagKeyList, required: true, location_name: "resourceTagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateDashboardRequest.add_member(:arn, Shapes::ShapeRef.new(shape: DashboardArn, required: true, location_name: "arn"))
    UpdateDashboardRequest.add_member(:name, Shapes::ShapeRef.new(shape: DashboardName, required: true, location_name: "name"))
    UpdateDashboardRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateDashboardRequest.add_member(:widgets, Shapes::ShapeRef.new(shape: WidgetList, location_name: "widgets"))
    UpdateDashboardRequest.struct_class = Types::UpdateDashboardRequest

    UpdateDashboardResponse.add_member(:arn, Shapes::ShapeRef.new(shape: DashboardArn, required: true, location_name: "arn"))
    UpdateDashboardResponse.struct_class = Types::UpdateDashboardResponse

    UpdateScheduledReportRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ScheduledReportArn, required: true, location_name: "arn"))
    UpdateScheduledReportRequest.add_member(:name, Shapes::ShapeRef.new(shape: ScheduledReportName, location_name: "name"))
    UpdateScheduledReportRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateScheduledReportRequest.add_member(:dashboard_arn, Shapes::ShapeRef.new(shape: DashboardArn, location_name: "dashboardArn"))
    UpdateScheduledReportRequest.add_member(:scheduled_report_execution_role_arn, Shapes::ShapeRef.new(shape: ServiceRoleArn, location_name: "scheduledReportExecutionRoleArn"))
    UpdateScheduledReportRequest.add_member(:schedule_config, Shapes::ShapeRef.new(shape: ScheduleConfig, location_name: "scheduleConfig"))
    UpdateScheduledReportRequest.add_member(:widget_ids, Shapes::ShapeRef.new(shape: WidgetIdList, location_name: "widgetIds"))
    UpdateScheduledReportRequest.add_member(:widget_date_range_override, Shapes::ShapeRef.new(shape: DateTimeRange, location_name: "widgetDateRangeOverride"))
    UpdateScheduledReportRequest.add_member(:clear_widget_ids, Shapes::ShapeRef.new(shape: Boolean, location_name: "clearWidgetIds"))
    UpdateScheduledReportRequest.add_member(:clear_widget_date_range_override, Shapes::ShapeRef.new(shape: Boolean, location_name: "clearWidgetDateRangeOverride"))
    UpdateScheduledReportRequest.struct_class = Types::UpdateScheduledReportRequest

    UpdateScheduledReportResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ScheduledReportArn, required: true, location_name: "arn"))
    UpdateScheduledReportResponse.struct_class = Types::UpdateScheduledReportResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    Widget.add_member(:id, Shapes::ShapeRef.new(shape: WidgetId, location_name: "id"))
    Widget.add_member(:title, Shapes::ShapeRef.new(shape: WidgetTitle, required: true, location_name: "title"))
    Widget.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    Widget.add_member(:width, Shapes::ShapeRef.new(shape: WidgetWidth, location_name: "width"))
    Widget.add_member(:height, Shapes::ShapeRef.new(shape: WidgetHeight, location_name: "height"))
    Widget.add_member(:horizontal_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "horizontalOffset"))
    Widget.add_member(:configs, Shapes::ShapeRef.new(shape: WidgetConfigList, required: true, location_name: "configs"))
    Widget.struct_class = Types::Widget

    WidgetConfig.add_member(:query_parameters, Shapes::ShapeRef.new(shape: QueryParameters, required: true, location_name: "queryParameters"))
    WidgetConfig.add_member(:display_config, Shapes::ShapeRef.new(shape: DisplayConfig, required: true, location_name: "displayConfig"))
    WidgetConfig.struct_class = Types::WidgetConfig

    WidgetConfigList.member = Shapes::ShapeRef.new(shape: WidgetConfig)

    WidgetIdList.member = Shapes::ShapeRef.new(shape: String)

    WidgetList.member = Shapes::ShapeRef.new(shape: Widget)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2025-08-18"

      api.metadata = {
        "apiVersion" => "2025-08-18",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "bcm-dashboards",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "AWS Billing and Cost Management Dashboards",
        "serviceId" => "BCM Dashboards",
        "signatureVersion" => "v4",
        "signingName" => "bcm-dashboards",
        "targetPrefix" => "AWSBCMDashboardsService",
        "uid" => "bcm-dashboards-2025-08-18",
      }

      api.add_operation(:create_dashboard, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDashboard"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDashboardRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDashboardResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_scheduled_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateScheduledReport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateScheduledReportRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateScheduledReportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_dashboard, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDashboard"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDashboardRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDashboardResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_scheduled_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteScheduledReport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteScheduledReportRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteScheduledReportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:execute_scheduled_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExecuteScheduledReport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ExecuteScheduledReportRequest)
        o.output = Shapes::ShapeRef.new(shape: ExecuteScheduledReportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_dashboard, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDashboard"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDashboardRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDashboardResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_scheduled_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetScheduledReport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetScheduledReportRequest)
        o.output = Shapes::ShapeRef.new(shape: GetScheduledReportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_dashboards, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDashboards"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDashboardsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDashboardsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_scheduled_reports, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListScheduledReports"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListScheduledReportsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListScheduledReportsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_dashboard, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDashboard"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDashboardRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDashboardResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_scheduled_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateScheduledReport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateScheduledReportRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateScheduledReportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
