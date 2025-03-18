# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ApplicationSignals
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    Attainment = Shapes::FloatShape.new(name: 'Attainment')
    AttainmentGoal = Shapes::FloatShape.new(name: 'AttainmentGoal')
    AttributeMap = Shapes::MapShape.new(name: 'AttributeMap')
    AttributeMaps = Shapes::ListShape.new(name: 'AttributeMaps')
    Attributes = Shapes::MapShape.new(name: 'Attributes')
    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    BatchGetServiceLevelObjectiveBudgetReportInput = Shapes::StructureShape.new(name: 'BatchGetServiceLevelObjectiveBudgetReportInput')
    BatchGetServiceLevelObjectiveBudgetReportOutput = Shapes::StructureShape.new(name: 'BatchGetServiceLevelObjectiveBudgetReportOutput')
    BatchUpdateExclusionWindowsError = Shapes::StructureShape.new(name: 'BatchUpdateExclusionWindowsError')
    BatchUpdateExclusionWindowsErrors = Shapes::ListShape.new(name: 'BatchUpdateExclusionWindowsErrors')
    BatchUpdateExclusionWindowsInput = Shapes::StructureShape.new(name: 'BatchUpdateExclusionWindowsInput')
    BatchUpdateExclusionWindowsOutput = Shapes::StructureShape.new(name: 'BatchUpdateExclusionWindowsOutput')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BudgetRequestsRemaining = Shapes::IntegerShape.new(name: 'BudgetRequestsRemaining')
    BudgetSecondsRemaining = Shapes::IntegerShape.new(name: 'BudgetSecondsRemaining')
    BurnRateConfiguration = Shapes::StructureShape.new(name: 'BurnRateConfiguration')
    BurnRateConfigurations = Shapes::ListShape.new(name: 'BurnRateConfigurations')
    BurnRateLookBackWindowMinutes = Shapes::IntegerShape.new(name: 'BurnRateLookBackWindowMinutes')
    CalendarInterval = Shapes::StructureShape.new(name: 'CalendarInterval')
    CalendarIntervalDuration = Shapes::IntegerShape.new(name: 'CalendarIntervalDuration')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateServiceLevelObjectiveInput = Shapes::StructureShape.new(name: 'CreateServiceLevelObjectiveInput')
    CreateServiceLevelObjectiveOutput = Shapes::StructureShape.new(name: 'CreateServiceLevelObjectiveOutput')
    DeleteServiceLevelObjectiveInput = Shapes::StructureShape.new(name: 'DeleteServiceLevelObjectiveInput')
    DeleteServiceLevelObjectiveOutput = Shapes::StructureShape.new(name: 'DeleteServiceLevelObjectiveOutput')
    Dimension = Shapes::StructureShape.new(name: 'Dimension')
    DimensionName = Shapes::StringShape.new(name: 'DimensionName')
    DimensionValue = Shapes::StringShape.new(name: 'DimensionValue')
    Dimensions = Shapes::ListShape.new(name: 'Dimensions')
    DurationUnit = Shapes::StringShape.new(name: 'DurationUnit')
    EvaluationType = Shapes::StringShape.new(name: 'EvaluationType')
    ExclusionDuration = Shapes::IntegerShape.new(name: 'ExclusionDuration')
    ExclusionReason = Shapes::StringShape.new(name: 'ExclusionReason')
    ExclusionWindow = Shapes::StructureShape.new(name: 'ExclusionWindow')
    ExclusionWindowErrorCode = Shapes::StringShape.new(name: 'ExclusionWindowErrorCode')
    ExclusionWindowErrorMessage = Shapes::StringShape.new(name: 'ExclusionWindowErrorMessage')
    ExclusionWindows = Shapes::ListShape.new(name: 'ExclusionWindows')
    Expression = Shapes::StringShape.new(name: 'Expression')
    FaultDescription = Shapes::StringShape.new(name: 'FaultDescription')
    GetServiceInput = Shapes::StructureShape.new(name: 'GetServiceInput')
    GetServiceLevelObjectiveInput = Shapes::StructureShape.new(name: 'GetServiceLevelObjectiveInput')
    GetServiceLevelObjectiveOutput = Shapes::StructureShape.new(name: 'GetServiceLevelObjectiveOutput')
    GetServiceOutput = Shapes::StructureShape.new(name: 'GetServiceOutput')
    Goal = Shapes::StructureShape.new(name: 'Goal')
    Interval = Shapes::UnionShape.new(name: 'Interval')
    KeyAttributeName = Shapes::StringShape.new(name: 'KeyAttributeName')
    KeyAttributeValue = Shapes::StringShape.new(name: 'KeyAttributeValue')
    ListServiceDependenciesInput = Shapes::StructureShape.new(name: 'ListServiceDependenciesInput')
    ListServiceDependenciesMaxResults = Shapes::IntegerShape.new(name: 'ListServiceDependenciesMaxResults')
    ListServiceDependenciesOutput = Shapes::StructureShape.new(name: 'ListServiceDependenciesOutput')
    ListServiceDependentsInput = Shapes::StructureShape.new(name: 'ListServiceDependentsInput')
    ListServiceDependentsMaxResults = Shapes::IntegerShape.new(name: 'ListServiceDependentsMaxResults')
    ListServiceDependentsOutput = Shapes::StructureShape.new(name: 'ListServiceDependentsOutput')
    ListServiceLevelObjectiveExclusionWindowsInput = Shapes::StructureShape.new(name: 'ListServiceLevelObjectiveExclusionWindowsInput')
    ListServiceLevelObjectiveExclusionWindowsMaxResults = Shapes::IntegerShape.new(name: 'ListServiceLevelObjectiveExclusionWindowsMaxResults')
    ListServiceLevelObjectiveExclusionWindowsOutput = Shapes::StructureShape.new(name: 'ListServiceLevelObjectiveExclusionWindowsOutput')
    ListServiceLevelObjectivesInput = Shapes::StructureShape.new(name: 'ListServiceLevelObjectivesInput')
    ListServiceLevelObjectivesMaxResults = Shapes::IntegerShape.new(name: 'ListServiceLevelObjectivesMaxResults')
    ListServiceLevelObjectivesOutput = Shapes::StructureShape.new(name: 'ListServiceLevelObjectivesOutput')
    ListServiceOperationMaxResults = Shapes::IntegerShape.new(name: 'ListServiceOperationMaxResults')
    ListServiceOperationsInput = Shapes::StructureShape.new(name: 'ListServiceOperationsInput')
    ListServiceOperationsOutput = Shapes::StructureShape.new(name: 'ListServiceOperationsOutput')
    ListServicesInput = Shapes::StructureShape.new(name: 'ListServicesInput')
    ListServicesMaxResults = Shapes::IntegerShape.new(name: 'ListServicesMaxResults')
    ListServicesOutput = Shapes::StructureShape.new(name: 'ListServicesOutput')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LogGroupReferences = Shapes::ListShape.new(name: 'LogGroupReferences')
    Metric = Shapes::StructureShape.new(name: 'Metric')
    MetricDataQueries = Shapes::ListShape.new(name: 'MetricDataQueries')
    MetricDataQuery = Shapes::StructureShape.new(name: 'MetricDataQuery')
    MetricExpression = Shapes::StringShape.new(name: 'MetricExpression')
    MetricId = Shapes::StringShape.new(name: 'MetricId')
    MetricLabel = Shapes::StringShape.new(name: 'MetricLabel')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    MetricReference = Shapes::StructureShape.new(name: 'MetricReference')
    MetricReferences = Shapes::ListShape.new(name: 'MetricReferences')
    MetricStat = Shapes::StructureShape.new(name: 'MetricStat')
    MetricType = Shapes::StringShape.new(name: 'MetricType')
    MonitoredRequestCountMetricDataQueries = Shapes::UnionShape.new(name: 'MonitoredRequestCountMetricDataQueries')
    Namespace = Shapes::StringShape.new(name: 'Namespace')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OperationName = Shapes::StringShape.new(name: 'OperationName')
    Period = Shapes::IntegerShape.new(name: 'Period')
    RecurrenceRule = Shapes::StructureShape.new(name: 'RecurrenceRule')
    RequestBasedServiceLevelIndicator = Shapes::StructureShape.new(name: 'RequestBasedServiceLevelIndicator')
    RequestBasedServiceLevelIndicatorConfig = Shapes::StructureShape.new(name: 'RequestBasedServiceLevelIndicatorConfig')
    RequestBasedServiceLevelIndicatorMetric = Shapes::StructureShape.new(name: 'RequestBasedServiceLevelIndicatorMetric')
    RequestBasedServiceLevelIndicatorMetricConfig = Shapes::StructureShape.new(name: 'RequestBasedServiceLevelIndicatorMetricConfig')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ReturnData = Shapes::BooleanShape.new(name: 'ReturnData')
    RollingInterval = Shapes::StructureShape.new(name: 'RollingInterval')
    RollingIntervalDuration = Shapes::IntegerShape.new(name: 'RollingIntervalDuration')
    SLIPeriodSeconds = Shapes::IntegerShape.new(name: 'SLIPeriodSeconds')
    Service = Shapes::StructureShape.new(name: 'Service')
    ServiceDependencies = Shapes::ListShape.new(name: 'ServiceDependencies')
    ServiceDependency = Shapes::StructureShape.new(name: 'ServiceDependency')
    ServiceDependent = Shapes::StructureShape.new(name: 'ServiceDependent')
    ServiceDependents = Shapes::ListShape.new(name: 'ServiceDependents')
    ServiceErrorMessage = Shapes::StringShape.new(name: 'ServiceErrorMessage')
    ServiceLevelIndicator = Shapes::StructureShape.new(name: 'ServiceLevelIndicator')
    ServiceLevelIndicatorComparisonOperator = Shapes::StringShape.new(name: 'ServiceLevelIndicatorComparisonOperator')
    ServiceLevelIndicatorConfig = Shapes::StructureShape.new(name: 'ServiceLevelIndicatorConfig')
    ServiceLevelIndicatorMetric = Shapes::StructureShape.new(name: 'ServiceLevelIndicatorMetric')
    ServiceLevelIndicatorMetricConfig = Shapes::StructureShape.new(name: 'ServiceLevelIndicatorMetricConfig')
    ServiceLevelIndicatorMetricThreshold = Shapes::FloatShape.new(name: 'ServiceLevelIndicatorMetricThreshold')
    ServiceLevelIndicatorMetricType = Shapes::StringShape.new(name: 'ServiceLevelIndicatorMetricType')
    ServiceLevelIndicatorStatistic = Shapes::StringShape.new(name: 'ServiceLevelIndicatorStatistic')
    ServiceLevelObjective = Shapes::StructureShape.new(name: 'ServiceLevelObjective')
    ServiceLevelObjectiveArn = Shapes::StringShape.new(name: 'ServiceLevelObjectiveArn')
    ServiceLevelObjectiveBudgetReport = Shapes::StructureShape.new(name: 'ServiceLevelObjectiveBudgetReport')
    ServiceLevelObjectiveBudgetReportError = Shapes::StructureShape.new(name: 'ServiceLevelObjectiveBudgetReportError')
    ServiceLevelObjectiveBudgetReportErrorCode = Shapes::StringShape.new(name: 'ServiceLevelObjectiveBudgetReportErrorCode')
    ServiceLevelObjectiveBudgetReportErrorMessage = Shapes::StringShape.new(name: 'ServiceLevelObjectiveBudgetReportErrorMessage')
    ServiceLevelObjectiveBudgetReportErrors = Shapes::ListShape.new(name: 'ServiceLevelObjectiveBudgetReportErrors')
    ServiceLevelObjectiveBudgetReports = Shapes::ListShape.new(name: 'ServiceLevelObjectiveBudgetReports')
    ServiceLevelObjectiveBudgetStatus = Shapes::StringShape.new(name: 'ServiceLevelObjectiveBudgetStatus')
    ServiceLevelObjectiveDescription = Shapes::StringShape.new(name: 'ServiceLevelObjectiveDescription')
    ServiceLevelObjectiveId = Shapes::StringShape.new(name: 'ServiceLevelObjectiveId')
    ServiceLevelObjectiveIds = Shapes::ListShape.new(name: 'ServiceLevelObjectiveIds')
    ServiceLevelObjectiveName = Shapes::StringShape.new(name: 'ServiceLevelObjectiveName')
    ServiceLevelObjectiveSummaries = Shapes::ListShape.new(name: 'ServiceLevelObjectiveSummaries')
    ServiceLevelObjectiveSummary = Shapes::StructureShape.new(name: 'ServiceLevelObjectiveSummary')
    ServiceOperation = Shapes::StructureShape.new(name: 'ServiceOperation')
    ServiceOperations = Shapes::ListShape.new(name: 'ServiceOperations')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceSummaries = Shapes::ListShape.new(name: 'ServiceSummaries')
    ServiceSummary = Shapes::StructureShape.new(name: 'ServiceSummary')
    StandardUnit = Shapes::StringShape.new(name: 'StandardUnit')
    StartDiscoveryInput = Shapes::StructureShape.new(name: 'StartDiscoveryInput')
    StartDiscoveryOutput = Shapes::StructureShape.new(name: 'StartDiscoveryOutput')
    Stat = Shapes::StringShape.new(name: 'Stat')
    String = Shapes::StringShape.new(name: 'String')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TotalBudgetRequests = Shapes::IntegerShape.new(name: 'TotalBudgetRequests')
    TotalBudgetSeconds = Shapes::IntegerShape.new(name: 'TotalBudgetSeconds')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateServiceLevelObjectiveInput = Shapes::StructureShape.new(name: 'UpdateServiceLevelObjectiveInput')
    UpdateServiceLevelObjectiveOutput = Shapes::StructureShape.new(name: 'UpdateServiceLevelObjectiveOutput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionMessage = Shapes::StringShape.new(name: 'ValidationExceptionMessage')
    WarningThreshold = Shapes::FloatShape.new(name: 'WarningThreshold')
    Window = Shapes::StructureShape.new(name: 'Window')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ServiceErrorMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AttributeMap.key = Shapes::ShapeRef.new(shape: String)
    AttributeMap.value = Shapes::ShapeRef.new(shape: String)

    AttributeMaps.member = Shapes::ShapeRef.new(shape: AttributeMap)

    Attributes.key = Shapes::ShapeRef.new(shape: KeyAttributeName)
    Attributes.value = Shapes::ShapeRef.new(shape: KeyAttributeValue)

    BatchGetServiceLevelObjectiveBudgetReportInput.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "Timestamp"))
    BatchGetServiceLevelObjectiveBudgetReportInput.add_member(:slo_ids, Shapes::ShapeRef.new(shape: ServiceLevelObjectiveIds, required: true, location_name: "SloIds"))
    BatchGetServiceLevelObjectiveBudgetReportInput.struct_class = Types::BatchGetServiceLevelObjectiveBudgetReportInput

    BatchGetServiceLevelObjectiveBudgetReportOutput.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "Timestamp"))
    BatchGetServiceLevelObjectiveBudgetReportOutput.add_member(:reports, Shapes::ShapeRef.new(shape: ServiceLevelObjectiveBudgetReports, required: true, location_name: "Reports"))
    BatchGetServiceLevelObjectiveBudgetReportOutput.add_member(:errors, Shapes::ShapeRef.new(shape: ServiceLevelObjectiveBudgetReportErrors, required: true, location_name: "Errors"))
    BatchGetServiceLevelObjectiveBudgetReportOutput.struct_class = Types::BatchGetServiceLevelObjectiveBudgetReportOutput

    BatchUpdateExclusionWindowsError.add_member(:slo_id, Shapes::ShapeRef.new(shape: ServiceLevelObjectiveId, required: true, location_name: "SloId"))
    BatchUpdateExclusionWindowsError.add_member(:error_code, Shapes::ShapeRef.new(shape: ExclusionWindowErrorCode, required: true, location_name: "ErrorCode"))
    BatchUpdateExclusionWindowsError.add_member(:error_message, Shapes::ShapeRef.new(shape: ExclusionWindowErrorMessage, required: true, location_name: "ErrorMessage"))
    BatchUpdateExclusionWindowsError.struct_class = Types::BatchUpdateExclusionWindowsError

    BatchUpdateExclusionWindowsErrors.member = Shapes::ShapeRef.new(shape: BatchUpdateExclusionWindowsError)

    BatchUpdateExclusionWindowsInput.add_member(:slo_ids, Shapes::ShapeRef.new(shape: ServiceLevelObjectiveIds, required: true, location_name: "SloIds"))
    BatchUpdateExclusionWindowsInput.add_member(:add_exclusion_windows, Shapes::ShapeRef.new(shape: ExclusionWindows, location_name: "AddExclusionWindows"))
    BatchUpdateExclusionWindowsInput.add_member(:remove_exclusion_windows, Shapes::ShapeRef.new(shape: ExclusionWindows, location_name: "RemoveExclusionWindows"))
    BatchUpdateExclusionWindowsInput.struct_class = Types::BatchUpdateExclusionWindowsInput

    BatchUpdateExclusionWindowsOutput.add_member(:slo_ids, Shapes::ShapeRef.new(shape: ServiceLevelObjectiveIds, required: true, location_name: "SloIds"))
    BatchUpdateExclusionWindowsOutput.add_member(:errors, Shapes::ShapeRef.new(shape: BatchUpdateExclusionWindowsErrors, required: true, location_name: "Errors"))
    BatchUpdateExclusionWindowsOutput.struct_class = Types::BatchUpdateExclusionWindowsOutput

    BurnRateConfiguration.add_member(:look_back_window_minutes, Shapes::ShapeRef.new(shape: BurnRateLookBackWindowMinutes, required: true, location_name: "LookBackWindowMinutes"))
    BurnRateConfiguration.struct_class = Types::BurnRateConfiguration

    BurnRateConfigurations.member = Shapes::ShapeRef.new(shape: BurnRateConfiguration)

    CalendarInterval.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTime"))
    CalendarInterval.add_member(:duration_unit, Shapes::ShapeRef.new(shape: DurationUnit, required: true, location_name: "DurationUnit"))
    CalendarInterval.add_member(:duration, Shapes::ShapeRef.new(shape: CalendarIntervalDuration, required: true, location_name: "Duration"))
    CalendarInterval.struct_class = Types::CalendarInterval

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateServiceLevelObjectiveInput.add_member(:name, Shapes::ShapeRef.new(shape: ServiceLevelObjectiveName, required: true, location_name: "Name"))
    CreateServiceLevelObjectiveInput.add_member(:description, Shapes::ShapeRef.new(shape: ServiceLevelObjectiveDescription, location_name: "Description"))
    CreateServiceLevelObjectiveInput.add_member(:sli_config, Shapes::ShapeRef.new(shape: ServiceLevelIndicatorConfig, location_name: "SliConfig"))
    CreateServiceLevelObjectiveInput.add_member(:request_based_sli_config, Shapes::ShapeRef.new(shape: RequestBasedServiceLevelIndicatorConfig, location_name: "RequestBasedSliConfig"))
    CreateServiceLevelObjectiveInput.add_member(:goal, Shapes::ShapeRef.new(shape: Goal, location_name: "Goal"))
    CreateServiceLevelObjectiveInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateServiceLevelObjectiveInput.add_member(:burn_rate_configurations, Shapes::ShapeRef.new(shape: BurnRateConfigurations, location_name: "BurnRateConfigurations"))
    CreateServiceLevelObjectiveInput.struct_class = Types::CreateServiceLevelObjectiveInput

    CreateServiceLevelObjectiveOutput.add_member(:slo, Shapes::ShapeRef.new(shape: ServiceLevelObjective, required: true, location_name: "Slo"))
    CreateServiceLevelObjectiveOutput.struct_class = Types::CreateServiceLevelObjectiveOutput

    DeleteServiceLevelObjectiveInput.add_member(:id, Shapes::ShapeRef.new(shape: ServiceLevelObjectiveId, required: true, location: "uri", location_name: "Id"))
    DeleteServiceLevelObjectiveInput.struct_class = Types::DeleteServiceLevelObjectiveInput

    DeleteServiceLevelObjectiveOutput.struct_class = Types::DeleteServiceLevelObjectiveOutput

    Dimension.add_member(:name, Shapes::ShapeRef.new(shape: DimensionName, required: true, location_name: "Name"))
    Dimension.add_member(:value, Shapes::ShapeRef.new(shape: DimensionValue, required: true, location_name: "Value"))
    Dimension.struct_class = Types::Dimension

    Dimensions.member = Shapes::ShapeRef.new(shape: Dimension)

    ExclusionWindow.add_member(:window, Shapes::ShapeRef.new(shape: Window, required: true, location_name: "Window"))
    ExclusionWindow.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    ExclusionWindow.add_member(:recurrence_rule, Shapes::ShapeRef.new(shape: RecurrenceRule, location_name: "RecurrenceRule"))
    ExclusionWindow.add_member(:reason, Shapes::ShapeRef.new(shape: ExclusionReason, location_name: "Reason"))
    ExclusionWindow.struct_class = Types::ExclusionWindow

    ExclusionWindows.member = Shapes::ShapeRef.new(shape: ExclusionWindow)

    GetServiceInput.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "StartTime"))
    GetServiceInput.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "EndTime"))
    GetServiceInput.add_member(:key_attributes, Shapes::ShapeRef.new(shape: Attributes, required: true, location_name: "KeyAttributes"))
    GetServiceInput.struct_class = Types::GetServiceInput

    GetServiceLevelObjectiveInput.add_member(:id, Shapes::ShapeRef.new(shape: ServiceLevelObjectiveId, required: true, location: "uri", location_name: "Id"))
    GetServiceLevelObjectiveInput.struct_class = Types::GetServiceLevelObjectiveInput

    GetServiceLevelObjectiveOutput.add_member(:slo, Shapes::ShapeRef.new(shape: ServiceLevelObjective, required: true, location_name: "Slo"))
    GetServiceLevelObjectiveOutput.struct_class = Types::GetServiceLevelObjectiveOutput

    GetServiceOutput.add_member(:service, Shapes::ShapeRef.new(shape: Service, required: true, location_name: "Service"))
    GetServiceOutput.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTime"))
    GetServiceOutput.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EndTime"))
    GetServiceOutput.add_member(:log_group_references, Shapes::ShapeRef.new(shape: LogGroupReferences, location_name: "LogGroupReferences"))
    GetServiceOutput.struct_class = Types::GetServiceOutput

    Goal.add_member(:interval, Shapes::ShapeRef.new(shape: Interval, location_name: "Interval"))
    Goal.add_member(:attainment_goal, Shapes::ShapeRef.new(shape: AttainmentGoal, location_name: "AttainmentGoal"))
    Goal.add_member(:warning_threshold, Shapes::ShapeRef.new(shape: WarningThreshold, location_name: "WarningThreshold"))
    Goal.struct_class = Types::Goal

    Interval.add_member(:rolling_interval, Shapes::ShapeRef.new(shape: RollingInterval, location_name: "RollingInterval"))
    Interval.add_member(:calendar_interval, Shapes::ShapeRef.new(shape: CalendarInterval, location_name: "CalendarInterval"))
    Interval.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Interval.add_member_subclass(:rolling_interval, Types::Interval::RollingInterval)
    Interval.add_member_subclass(:calendar_interval, Types::Interval::CalendarInterval)
    Interval.add_member_subclass(:unknown, Types::Interval::Unknown)
    Interval.struct_class = Types::Interval

    ListServiceDependenciesInput.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "StartTime"))
    ListServiceDependenciesInput.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "EndTime"))
    ListServiceDependenciesInput.add_member(:key_attributes, Shapes::ShapeRef.new(shape: Attributes, required: true, location_name: "KeyAttributes"))
    ListServiceDependenciesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListServiceDependenciesMaxResults, location: "querystring", location_name: "MaxResults"))
    ListServiceDependenciesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListServiceDependenciesInput.struct_class = Types::ListServiceDependenciesInput

    ListServiceDependenciesOutput.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTime"))
    ListServiceDependenciesOutput.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EndTime"))
    ListServiceDependenciesOutput.add_member(:service_dependencies, Shapes::ShapeRef.new(shape: ServiceDependencies, required: true, location_name: "ServiceDependencies"))
    ListServiceDependenciesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListServiceDependenciesOutput.struct_class = Types::ListServiceDependenciesOutput

    ListServiceDependentsInput.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "StartTime"))
    ListServiceDependentsInput.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "EndTime"))
    ListServiceDependentsInput.add_member(:key_attributes, Shapes::ShapeRef.new(shape: Attributes, required: true, location_name: "KeyAttributes"))
    ListServiceDependentsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListServiceDependentsMaxResults, location: "querystring", location_name: "MaxResults"))
    ListServiceDependentsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListServiceDependentsInput.struct_class = Types::ListServiceDependentsInput

    ListServiceDependentsOutput.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTime"))
    ListServiceDependentsOutput.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EndTime"))
    ListServiceDependentsOutput.add_member(:service_dependents, Shapes::ShapeRef.new(shape: ServiceDependents, required: true, location_name: "ServiceDependents"))
    ListServiceDependentsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListServiceDependentsOutput.struct_class = Types::ListServiceDependentsOutput

    ListServiceLevelObjectiveExclusionWindowsInput.add_member(:id, Shapes::ShapeRef.new(shape: ServiceLevelObjectiveId, required: true, location: "uri", location_name: "Id"))
    ListServiceLevelObjectiveExclusionWindowsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListServiceLevelObjectiveExclusionWindowsMaxResults, location: "querystring", location_name: "MaxResults"))
    ListServiceLevelObjectiveExclusionWindowsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListServiceLevelObjectiveExclusionWindowsInput.struct_class = Types::ListServiceLevelObjectiveExclusionWindowsInput

    ListServiceLevelObjectiveExclusionWindowsOutput.add_member(:exclusion_windows, Shapes::ShapeRef.new(shape: ExclusionWindows, required: true, location_name: "ExclusionWindows"))
    ListServiceLevelObjectiveExclusionWindowsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListServiceLevelObjectiveExclusionWindowsOutput.struct_class = Types::ListServiceLevelObjectiveExclusionWindowsOutput

    ListServiceLevelObjectivesInput.add_member(:key_attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "KeyAttributes"))
    ListServiceLevelObjectivesInput.add_member(:operation_name, Shapes::ShapeRef.new(shape: OperationName, location: "querystring", location_name: "OperationName"))
    ListServiceLevelObjectivesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListServiceLevelObjectivesMaxResults, location: "querystring", location_name: "MaxResults"))
    ListServiceLevelObjectivesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListServiceLevelObjectivesInput.add_member(:include_linked_accounts, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "IncludeLinkedAccounts"))
    ListServiceLevelObjectivesInput.add_member(:slo_owner_aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location: "querystring", location_name: "SloOwnerAwsAccountId"))
    ListServiceLevelObjectivesInput.struct_class = Types::ListServiceLevelObjectivesInput

    ListServiceLevelObjectivesOutput.add_member(:slo_summaries, Shapes::ShapeRef.new(shape: ServiceLevelObjectiveSummaries, location_name: "SloSummaries"))
    ListServiceLevelObjectivesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListServiceLevelObjectivesOutput.struct_class = Types::ListServiceLevelObjectivesOutput

    ListServiceOperationsInput.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "StartTime"))
    ListServiceOperationsInput.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "EndTime"))
    ListServiceOperationsInput.add_member(:key_attributes, Shapes::ShapeRef.new(shape: Attributes, required: true, location_name: "KeyAttributes"))
    ListServiceOperationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListServiceOperationMaxResults, location: "querystring", location_name: "MaxResults"))
    ListServiceOperationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListServiceOperationsInput.struct_class = Types::ListServiceOperationsInput

    ListServiceOperationsOutput.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTime"))
    ListServiceOperationsOutput.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EndTime"))
    ListServiceOperationsOutput.add_member(:service_operations, Shapes::ShapeRef.new(shape: ServiceOperations, required: true, location_name: "ServiceOperations"))
    ListServiceOperationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListServiceOperationsOutput.struct_class = Types::ListServiceOperationsOutput

    ListServicesInput.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "StartTime"))
    ListServicesInput.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "EndTime"))
    ListServicesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListServicesMaxResults, location: "querystring", location_name: "MaxResults"))
    ListServicesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListServicesInput.add_member(:include_linked_accounts, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "IncludeLinkedAccounts"))
    ListServicesInput.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location: "querystring", location_name: "AwsAccountId"))
    ListServicesInput.struct_class = Types::ListServicesInput

    ListServicesOutput.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTime"))
    ListServicesOutput.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EndTime"))
    ListServicesOutput.add_member(:service_summaries, Shapes::ShapeRef.new(shape: ServiceSummaries, required: true, location_name: "ServiceSummaries"))
    ListServicesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListServicesOutput.struct_class = Types::ListServicesOutput

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "querystring", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    LogGroupReferences.member = Shapes::ShapeRef.new(shape: Attributes)

    Metric.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace"))
    Metric.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    Metric.add_member(:dimensions, Shapes::ShapeRef.new(shape: Dimensions, location_name: "Dimensions"))
    Metric.struct_class = Types::Metric

    MetricDataQueries.member = Shapes::ShapeRef.new(shape: MetricDataQuery)

    MetricDataQuery.add_member(:id, Shapes::ShapeRef.new(shape: MetricId, required: true, location_name: "Id"))
    MetricDataQuery.add_member(:metric_stat, Shapes::ShapeRef.new(shape: MetricStat, location_name: "MetricStat"))
    MetricDataQuery.add_member(:expression, Shapes::ShapeRef.new(shape: MetricExpression, location_name: "Expression"))
    MetricDataQuery.add_member(:label, Shapes::ShapeRef.new(shape: MetricLabel, location_name: "Label"))
    MetricDataQuery.add_member(:return_data, Shapes::ShapeRef.new(shape: ReturnData, location_name: "ReturnData"))
    MetricDataQuery.add_member(:period, Shapes::ShapeRef.new(shape: Period, location_name: "Period"))
    MetricDataQuery.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    MetricDataQuery.struct_class = Types::MetricDataQuery

    MetricReference.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location_name: "Namespace"))
    MetricReference.add_member(:metric_type, Shapes::ShapeRef.new(shape: MetricType, required: true, location_name: "MetricType"))
    MetricReference.add_member(:dimensions, Shapes::ShapeRef.new(shape: Dimensions, location_name: "Dimensions"))
    MetricReference.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricName"))
    MetricReference.add_member(:account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "AccountId"))
    MetricReference.struct_class = Types::MetricReference

    MetricReferences.member = Shapes::ShapeRef.new(shape: MetricReference)

    MetricStat.add_member(:metric, Shapes::ShapeRef.new(shape: Metric, required: true, location_name: "Metric"))
    MetricStat.add_member(:period, Shapes::ShapeRef.new(shape: Period, required: true, location_name: "Period"))
    MetricStat.add_member(:stat, Shapes::ShapeRef.new(shape: Stat, required: true, location_name: "Stat"))
    MetricStat.add_member(:unit, Shapes::ShapeRef.new(shape: StandardUnit, location_name: "Unit"))
    MetricStat.struct_class = Types::MetricStat

    MonitoredRequestCountMetricDataQueries.add_member(:good_count_metric, Shapes::ShapeRef.new(shape: MetricDataQueries, location_name: "GoodCountMetric"))
    MonitoredRequestCountMetricDataQueries.add_member(:bad_count_metric, Shapes::ShapeRef.new(shape: MetricDataQueries, location_name: "BadCountMetric"))
    MonitoredRequestCountMetricDataQueries.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MonitoredRequestCountMetricDataQueries.add_member_subclass(:good_count_metric, Types::MonitoredRequestCountMetricDataQueries::GoodCountMetric)
    MonitoredRequestCountMetricDataQueries.add_member_subclass(:bad_count_metric, Types::MonitoredRequestCountMetricDataQueries::BadCountMetric)
    MonitoredRequestCountMetricDataQueries.add_member_subclass(:unknown, Types::MonitoredRequestCountMetricDataQueries::Unknown)
    MonitoredRequestCountMetricDataQueries.struct_class = Types::MonitoredRequestCountMetricDataQueries

    RecurrenceRule.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "Expression"))
    RecurrenceRule.struct_class = Types::RecurrenceRule

    RequestBasedServiceLevelIndicator.add_member(:request_based_sli_metric, Shapes::ShapeRef.new(shape: RequestBasedServiceLevelIndicatorMetric, required: true, location_name: "RequestBasedSliMetric"))
    RequestBasedServiceLevelIndicator.add_member(:metric_threshold, Shapes::ShapeRef.new(shape: ServiceLevelIndicatorMetricThreshold, location_name: "MetricThreshold"))
    RequestBasedServiceLevelIndicator.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ServiceLevelIndicatorComparisonOperator, location_name: "ComparisonOperator"))
    RequestBasedServiceLevelIndicator.struct_class = Types::RequestBasedServiceLevelIndicator

    RequestBasedServiceLevelIndicatorConfig.add_member(:request_based_sli_metric_config, Shapes::ShapeRef.new(shape: RequestBasedServiceLevelIndicatorMetricConfig, required: true, location_name: "RequestBasedSliMetricConfig"))
    RequestBasedServiceLevelIndicatorConfig.add_member(:metric_threshold, Shapes::ShapeRef.new(shape: ServiceLevelIndicatorMetricThreshold, location_name: "MetricThreshold"))
    RequestBasedServiceLevelIndicatorConfig.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ServiceLevelIndicatorComparisonOperator, location_name: "ComparisonOperator"))
    RequestBasedServiceLevelIndicatorConfig.struct_class = Types::RequestBasedServiceLevelIndicatorConfig

    RequestBasedServiceLevelIndicatorMetric.add_member(:key_attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "KeyAttributes"))
    RequestBasedServiceLevelIndicatorMetric.add_member(:operation_name, Shapes::ShapeRef.new(shape: OperationName, location_name: "OperationName"))
    RequestBasedServiceLevelIndicatorMetric.add_member(:metric_type, Shapes::ShapeRef.new(shape: ServiceLevelIndicatorMetricType, location_name: "MetricType"))
    RequestBasedServiceLevelIndicatorMetric.add_member(:total_request_count_metric, Shapes::ShapeRef.new(shape: MetricDataQueries, required: true, location_name: "TotalRequestCountMetric"))
    RequestBasedServiceLevelIndicatorMetric.add_member(:monitored_request_count_metric, Shapes::ShapeRef.new(shape: MonitoredRequestCountMetricDataQueries, required: true, location_name: "MonitoredRequestCountMetric"))
    RequestBasedServiceLevelIndicatorMetric.struct_class = Types::RequestBasedServiceLevelIndicatorMetric

    RequestBasedServiceLevelIndicatorMetricConfig.add_member(:key_attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "KeyAttributes"))
    RequestBasedServiceLevelIndicatorMetricConfig.add_member(:operation_name, Shapes::ShapeRef.new(shape: OperationName, location_name: "OperationName"))
    RequestBasedServiceLevelIndicatorMetricConfig.add_member(:metric_type, Shapes::ShapeRef.new(shape: ServiceLevelIndicatorMetricType, location_name: "MetricType"))
    RequestBasedServiceLevelIndicatorMetricConfig.add_member(:total_request_count_metric, Shapes::ShapeRef.new(shape: MetricDataQueries, location_name: "TotalRequestCountMetric"))
    RequestBasedServiceLevelIndicatorMetricConfig.add_member(:monitored_request_count_metric, Shapes::ShapeRef.new(shape: MonitoredRequestCountMetricDataQueries, location_name: "MonitoredRequestCountMetric"))
    RequestBasedServiceLevelIndicatorMetricConfig.struct_class = Types::RequestBasedServiceLevelIndicatorMetricConfig

    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: FaultDescription, required: true, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RollingInterval.add_member(:duration_unit, Shapes::ShapeRef.new(shape: DurationUnit, required: true, location_name: "DurationUnit"))
    RollingInterval.add_member(:duration, Shapes::ShapeRef.new(shape: RollingIntervalDuration, required: true, location_name: "Duration"))
    RollingInterval.struct_class = Types::RollingInterval

    Service.add_member(:key_attributes, Shapes::ShapeRef.new(shape: Attributes, required: true, location_name: "KeyAttributes"))
    Service.add_member(:attribute_maps, Shapes::ShapeRef.new(shape: AttributeMaps, location_name: "AttributeMaps"))
    Service.add_member(:metric_references, Shapes::ShapeRef.new(shape: MetricReferences, required: true, location_name: "MetricReferences"))
    Service.add_member(:log_group_references, Shapes::ShapeRef.new(shape: LogGroupReferences, location_name: "LogGroupReferences"))
    Service.struct_class = Types::Service

    ServiceDependencies.member = Shapes::ShapeRef.new(shape: ServiceDependency)

    ServiceDependency.add_member(:operation_name, Shapes::ShapeRef.new(shape: OperationName, required: true, location_name: "OperationName"))
    ServiceDependency.add_member(:dependency_key_attributes, Shapes::ShapeRef.new(shape: Attributes, required: true, location_name: "DependencyKeyAttributes"))
    ServiceDependency.add_member(:dependency_operation_name, Shapes::ShapeRef.new(shape: OperationName, required: true, location_name: "DependencyOperationName"))
    ServiceDependency.add_member(:metric_references, Shapes::ShapeRef.new(shape: MetricReferences, required: true, location_name: "MetricReferences"))
    ServiceDependency.struct_class = Types::ServiceDependency

    ServiceDependent.add_member(:operation_name, Shapes::ShapeRef.new(shape: OperationName, location_name: "OperationName"))
    ServiceDependent.add_member(:dependent_key_attributes, Shapes::ShapeRef.new(shape: Attributes, required: true, location_name: "DependentKeyAttributes"))
    ServiceDependent.add_member(:dependent_operation_name, Shapes::ShapeRef.new(shape: OperationName, location_name: "DependentOperationName"))
    ServiceDependent.add_member(:metric_references, Shapes::ShapeRef.new(shape: MetricReferences, required: true, location_name: "MetricReferences"))
    ServiceDependent.struct_class = Types::ServiceDependent

    ServiceDependents.member = Shapes::ShapeRef.new(shape: ServiceDependent)

    ServiceLevelIndicator.add_member(:sli_metric, Shapes::ShapeRef.new(shape: ServiceLevelIndicatorMetric, required: true, location_name: "SliMetric"))
    ServiceLevelIndicator.add_member(:metric_threshold, Shapes::ShapeRef.new(shape: ServiceLevelIndicatorMetricThreshold, required: true, location_name: "MetricThreshold"))
    ServiceLevelIndicator.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ServiceLevelIndicatorComparisonOperator, required: true, location_name: "ComparisonOperator"))
    ServiceLevelIndicator.struct_class = Types::ServiceLevelIndicator

    ServiceLevelIndicatorConfig.add_member(:sli_metric_config, Shapes::ShapeRef.new(shape: ServiceLevelIndicatorMetricConfig, required: true, location_name: "SliMetricConfig"))
    ServiceLevelIndicatorConfig.add_member(:metric_threshold, Shapes::ShapeRef.new(shape: ServiceLevelIndicatorMetricThreshold, required: true, location_name: "MetricThreshold"))
    ServiceLevelIndicatorConfig.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ServiceLevelIndicatorComparisonOperator, required: true, location_name: "ComparisonOperator"))
    ServiceLevelIndicatorConfig.struct_class = Types::ServiceLevelIndicatorConfig

    ServiceLevelIndicatorMetric.add_member(:key_attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "KeyAttributes"))
    ServiceLevelIndicatorMetric.add_member(:operation_name, Shapes::ShapeRef.new(shape: OperationName, location_name: "OperationName"))
    ServiceLevelIndicatorMetric.add_member(:metric_type, Shapes::ShapeRef.new(shape: ServiceLevelIndicatorMetricType, location_name: "MetricType"))
    ServiceLevelIndicatorMetric.add_member(:metric_data_queries, Shapes::ShapeRef.new(shape: MetricDataQueries, required: true, location_name: "MetricDataQueries"))
    ServiceLevelIndicatorMetric.struct_class = Types::ServiceLevelIndicatorMetric

    ServiceLevelIndicatorMetricConfig.add_member(:key_attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "KeyAttributes"))
    ServiceLevelIndicatorMetricConfig.add_member(:operation_name, Shapes::ShapeRef.new(shape: OperationName, location_name: "OperationName"))
    ServiceLevelIndicatorMetricConfig.add_member(:metric_type, Shapes::ShapeRef.new(shape: ServiceLevelIndicatorMetricType, location_name: "MetricType"))
    ServiceLevelIndicatorMetricConfig.add_member(:statistic, Shapes::ShapeRef.new(shape: ServiceLevelIndicatorStatistic, location_name: "Statistic"))
    ServiceLevelIndicatorMetricConfig.add_member(:period_seconds, Shapes::ShapeRef.new(shape: SLIPeriodSeconds, location_name: "PeriodSeconds"))
    ServiceLevelIndicatorMetricConfig.add_member(:metric_data_queries, Shapes::ShapeRef.new(shape: MetricDataQueries, location_name: "MetricDataQueries"))
    ServiceLevelIndicatorMetricConfig.struct_class = Types::ServiceLevelIndicatorMetricConfig

    ServiceLevelObjective.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceLevelObjectiveArn, required: true, location_name: "Arn"))
    ServiceLevelObjective.add_member(:name, Shapes::ShapeRef.new(shape: ServiceLevelObjectiveName, required: true, location_name: "Name"))
    ServiceLevelObjective.add_member(:description, Shapes::ShapeRef.new(shape: ServiceLevelObjectiveDescription, location_name: "Description"))
    ServiceLevelObjective.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTime"))
    ServiceLevelObjective.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastUpdatedTime"))
    ServiceLevelObjective.add_member(:sli, Shapes::ShapeRef.new(shape: ServiceLevelIndicator, location_name: "Sli"))
    ServiceLevelObjective.add_member(:request_based_sli, Shapes::ShapeRef.new(shape: RequestBasedServiceLevelIndicator, location_name: "RequestBasedSli"))
    ServiceLevelObjective.add_member(:evaluation_type, Shapes::ShapeRef.new(shape: EvaluationType, location_name: "EvaluationType"))
    ServiceLevelObjective.add_member(:goal, Shapes::ShapeRef.new(shape: Goal, required: true, location_name: "Goal"))
    ServiceLevelObjective.add_member(:burn_rate_configurations, Shapes::ShapeRef.new(shape: BurnRateConfigurations, location_name: "BurnRateConfigurations"))
    ServiceLevelObjective.struct_class = Types::ServiceLevelObjective

    ServiceLevelObjectiveBudgetReport.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceLevelObjectiveArn, required: true, location_name: "Arn"))
    ServiceLevelObjectiveBudgetReport.add_member(:name, Shapes::ShapeRef.new(shape: ServiceLevelObjectiveName, required: true, location_name: "Name"))
    ServiceLevelObjectiveBudgetReport.add_member(:evaluation_type, Shapes::ShapeRef.new(shape: EvaluationType, location_name: "EvaluationType"))
    ServiceLevelObjectiveBudgetReport.add_member(:budget_status, Shapes::ShapeRef.new(shape: ServiceLevelObjectiveBudgetStatus, required: true, location_name: "BudgetStatus"))
    ServiceLevelObjectiveBudgetReport.add_member(:attainment, Shapes::ShapeRef.new(shape: Attainment, location_name: "Attainment"))
    ServiceLevelObjectiveBudgetReport.add_member(:total_budget_seconds, Shapes::ShapeRef.new(shape: TotalBudgetSeconds, location_name: "TotalBudgetSeconds"))
    ServiceLevelObjectiveBudgetReport.add_member(:budget_seconds_remaining, Shapes::ShapeRef.new(shape: BudgetSecondsRemaining, location_name: "BudgetSecondsRemaining"))
    ServiceLevelObjectiveBudgetReport.add_member(:total_budget_requests, Shapes::ShapeRef.new(shape: TotalBudgetRequests, location_name: "TotalBudgetRequests"))
    ServiceLevelObjectiveBudgetReport.add_member(:budget_requests_remaining, Shapes::ShapeRef.new(shape: BudgetRequestsRemaining, location_name: "BudgetRequestsRemaining"))
    ServiceLevelObjectiveBudgetReport.add_member(:sli, Shapes::ShapeRef.new(shape: ServiceLevelIndicator, location_name: "Sli"))
    ServiceLevelObjectiveBudgetReport.add_member(:request_based_sli, Shapes::ShapeRef.new(shape: RequestBasedServiceLevelIndicator, location_name: "RequestBasedSli"))
    ServiceLevelObjectiveBudgetReport.add_member(:goal, Shapes::ShapeRef.new(shape: Goal, location_name: "Goal"))
    ServiceLevelObjectiveBudgetReport.struct_class = Types::ServiceLevelObjectiveBudgetReport

    ServiceLevelObjectiveBudgetReportError.add_member(:name, Shapes::ShapeRef.new(shape: ServiceLevelObjectiveName, required: true, location_name: "Name"))
    ServiceLevelObjectiveBudgetReportError.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceLevelObjectiveArn, required: true, location_name: "Arn"))
    ServiceLevelObjectiveBudgetReportError.add_member(:error_code, Shapes::ShapeRef.new(shape: ServiceLevelObjectiveBudgetReportErrorCode, required: true, location_name: "ErrorCode"))
    ServiceLevelObjectiveBudgetReportError.add_member(:error_message, Shapes::ShapeRef.new(shape: ServiceLevelObjectiveBudgetReportErrorMessage, required: true, location_name: "ErrorMessage"))
    ServiceLevelObjectiveBudgetReportError.struct_class = Types::ServiceLevelObjectiveBudgetReportError

    ServiceLevelObjectiveBudgetReportErrors.member = Shapes::ShapeRef.new(shape: ServiceLevelObjectiveBudgetReportError)

    ServiceLevelObjectiveBudgetReports.member = Shapes::ShapeRef.new(shape: ServiceLevelObjectiveBudgetReport)

    ServiceLevelObjectiveIds.member = Shapes::ShapeRef.new(shape: String)

    ServiceLevelObjectiveSummaries.member = Shapes::ShapeRef.new(shape: ServiceLevelObjectiveSummary)

    ServiceLevelObjectiveSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceLevelObjectiveArn, required: true, location_name: "Arn"))
    ServiceLevelObjectiveSummary.add_member(:name, Shapes::ShapeRef.new(shape: ServiceLevelObjectiveName, required: true, location_name: "Name"))
    ServiceLevelObjectiveSummary.add_member(:key_attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "KeyAttributes"))
    ServiceLevelObjectiveSummary.add_member(:operation_name, Shapes::ShapeRef.new(shape: OperationName, location_name: "OperationName"))
    ServiceLevelObjectiveSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    ServiceLevelObjectiveSummary.struct_class = Types::ServiceLevelObjectiveSummary

    ServiceOperation.add_member(:name, Shapes::ShapeRef.new(shape: OperationName, required: true, location_name: "Name"))
    ServiceOperation.add_member(:metric_references, Shapes::ShapeRef.new(shape: MetricReferences, required: true, location_name: "MetricReferences"))
    ServiceOperation.struct_class = Types::ServiceOperation

    ServiceOperations.member = Shapes::ShapeRef.new(shape: ServiceOperation)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ServiceSummaries.member = Shapes::ShapeRef.new(shape: ServiceSummary)

    ServiceSummary.add_member(:key_attributes, Shapes::ShapeRef.new(shape: Attributes, required: true, location_name: "KeyAttributes"))
    ServiceSummary.add_member(:attribute_maps, Shapes::ShapeRef.new(shape: AttributeMaps, location_name: "AttributeMaps"))
    ServiceSummary.add_member(:metric_references, Shapes::ShapeRef.new(shape: MetricReferences, required: true, location_name: "MetricReferences"))
    ServiceSummary.struct_class = Types::ServiceSummary

    StartDiscoveryInput.struct_class = Types::StartDiscoveryInput

    StartDiscoveryOutput.struct_class = Types::StartDiscoveryOutput

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateServiceLevelObjectiveInput.add_member(:id, Shapes::ShapeRef.new(shape: ServiceLevelObjectiveId, required: true, location: "uri", location_name: "Id"))
    UpdateServiceLevelObjectiveInput.add_member(:description, Shapes::ShapeRef.new(shape: ServiceLevelObjectiveDescription, location_name: "Description"))
    UpdateServiceLevelObjectiveInput.add_member(:sli_config, Shapes::ShapeRef.new(shape: ServiceLevelIndicatorConfig, location_name: "SliConfig"))
    UpdateServiceLevelObjectiveInput.add_member(:request_based_sli_config, Shapes::ShapeRef.new(shape: RequestBasedServiceLevelIndicatorConfig, location_name: "RequestBasedSliConfig"))
    UpdateServiceLevelObjectiveInput.add_member(:goal, Shapes::ShapeRef.new(shape: Goal, location_name: "Goal"))
    UpdateServiceLevelObjectiveInput.add_member(:burn_rate_configurations, Shapes::ShapeRef.new(shape: BurnRateConfigurations, location_name: "BurnRateConfigurations"))
    UpdateServiceLevelObjectiveInput.struct_class = Types::UpdateServiceLevelObjectiveInput

    UpdateServiceLevelObjectiveOutput.add_member(:slo, Shapes::ShapeRef.new(shape: ServiceLevelObjective, required: true, location_name: "Slo"))
    UpdateServiceLevelObjectiveOutput.struct_class = Types::UpdateServiceLevelObjectiveOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ValidationExceptionMessage, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    Window.add_member(:duration_unit, Shapes::ShapeRef.new(shape: DurationUnit, required: true, location_name: "DurationUnit"))
    Window.add_member(:duration, Shapes::ShapeRef.new(shape: ExclusionDuration, required: true, location_name: "Duration"))
    Window.struct_class = Types::Window


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2024-04-15"

      api.metadata = {
        "apiVersion" => "2024-04-15",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "application-signals",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon CloudWatch Application Signals",
        "serviceId" => "Application Signals",
        "signatureVersion" => "v4",
        "signingName" => "application-signals",
        "uid" => "application-signals-2024-04-15",
      }

      api.add_operation(:batch_get_service_level_objective_budget_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetServiceLevelObjectiveBudgetReport"
        o.http_method = "POST"
        o.http_request_uri = "/budget-report"
        o.input = Shapes::ShapeRef.new(shape: BatchGetServiceLevelObjectiveBudgetReportInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetServiceLevelObjectiveBudgetReportOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_update_exclusion_windows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdateExclusionWindows"
        o.http_method = "PATCH"
        o.http_request_uri = "/exclusion-windows"
        o.input = Shapes::ShapeRef.new(shape: BatchUpdateExclusionWindowsInput)
        o.output = Shapes::ShapeRef.new(shape: BatchUpdateExclusionWindowsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_service_level_objective, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateServiceLevelObjective"
        o.http_method = "POST"
        o.http_request_uri = "/slo"
        o.input = Shapes::ShapeRef.new(shape: CreateServiceLevelObjectiveInput)
        o.output = Shapes::ShapeRef.new(shape: CreateServiceLevelObjectiveOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_service_level_objective, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteServiceLevelObjective"
        o.http_method = "DELETE"
        o.http_request_uri = "/slo/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteServiceLevelObjectiveInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteServiceLevelObjectiveOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetService"
        o.http_method = "POST"
        o.http_request_uri = "/service"
        o.input = Shapes::ShapeRef.new(shape: GetServiceInput)
        o.output = Shapes::ShapeRef.new(shape: GetServiceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_service_level_objective, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServiceLevelObjective"
        o.http_method = "GET"
        o.http_request_uri = "/slo/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetServiceLevelObjectiveInput)
        o.output = Shapes::ShapeRef.new(shape: GetServiceLevelObjectiveOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_service_dependencies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServiceDependencies"
        o.http_method = "POST"
        o.http_request_uri = "/service-dependencies"
        o.input = Shapes::ShapeRef.new(shape: ListServiceDependenciesInput)
        o.output = Shapes::ShapeRef.new(shape: ListServiceDependenciesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_service_dependents, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServiceDependents"
        o.http_method = "POST"
        o.http_request_uri = "/service-dependents"
        o.input = Shapes::ShapeRef.new(shape: ListServiceDependentsInput)
        o.output = Shapes::ShapeRef.new(shape: ListServiceDependentsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_service_level_objective_exclusion_windows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServiceLevelObjectiveExclusionWindows"
        o.http_method = "GET"
        o.http_request_uri = "/slo/{Id}/exclusion-windows"
        o.input = Shapes::ShapeRef.new(shape: ListServiceLevelObjectiveExclusionWindowsInput)
        o.output = Shapes::ShapeRef.new(shape: ListServiceLevelObjectiveExclusionWindowsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_service_level_objectives, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServiceLevelObjectives"
        o.http_method = "POST"
        o.http_request_uri = "/slos"
        o.input = Shapes::ShapeRef.new(shape: ListServiceLevelObjectivesInput)
        o.output = Shapes::ShapeRef.new(shape: ListServiceLevelObjectivesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_service_operations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServiceOperations"
        o.http_method = "POST"
        o.http_request_uri = "/service-operations"
        o.input = Shapes::ShapeRef.new(shape: ListServiceOperationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListServiceOperationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_services, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServices"
        o.http_method = "GET"
        o.http_request_uri = "/services"
        o.input = Shapes::ShapeRef.new(shape: ListServicesInput)
        o.output = Shapes::ShapeRef.new(shape: ListServicesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:start_discovery, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDiscovery"
        o.http_method = "POST"
        o.http_request_uri = "/start-discovery"
        o.input = Shapes::ShapeRef.new(shape: StartDiscoveryInput)
        o.output = Shapes::ShapeRef.new(shape: StartDiscoveryOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tag-resource"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/untag-resource"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_service_level_objective, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateServiceLevelObjective"
        o.http_method = "PATCH"
        o.http_request_uri = "/slo/{Id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateServiceLevelObjectiveInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateServiceLevelObjectiveOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
