# frozen_string_literal: true

# This is generated code!

module Aws::ApplicationSignals
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#AccessDeniedException", name: "AccessDeniedException", traits: {"aws.protocols#awsQueryError" => {"code" => "AccessDenied", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Attainment = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.applicationsignals#Attainment", name: "Attainment")
    AttainmentGoal = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.applicationsignals#AttainmentGoal", name: "AttainmentGoal")
    AttributeFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#AttributeFilter", name: "AttributeFilter")
    AttributeFilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#AttributeFilterName", name: "AttributeFilterName", traits: {"smithy.api#pattern" => "^[A-Za-z0-9 :/-]+$"})
    AttributeFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#AttributeFilterValue", name: "AttributeFilterValue", traits: {"smithy.api#pattern" => "^[A-Za-z0-9 :/-]+$"})
    AttributeFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#AttributeFilterValues", name: "AttributeFilterValues", traits: {"smithy.api#length" => {"max" => 20}})
    AttributeFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#AttributeFilters", name: "AttributeFilters", traits: {"smithy.api#length" => {"max" => 20}})
    AttributeMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.applicationsignals#AttributeMap", name: "AttributeMap")
    AttributeMaps = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#AttributeMaps", name: "AttributeMaps")
    Attributes = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.applicationsignals#Attributes", name: "Attributes", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    AuditFinding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#AuditFinding", name: "AuditFinding")
    AuditFindings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#AuditFindings", name: "AuditFindings", traits: {"smithy.api#length" => {"max" => 10}})
    AuditTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#AuditTarget", name: "AuditTarget")
    AuditTargetEntity = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.applicationsignals#AuditTargetEntity", name: "AuditTargetEntity")
    AuditTargets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#AuditTargets", name: "AuditTargets", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AuditorResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#AuditorResult", name: "AuditorResult")
    AuditorResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#AuditorResults", name: "AuditorResults", traits: {"smithy.api#length" => {"max" => 5}})
    Auditors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#Auditors", name: "Auditors")
    AwsAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#AwsAccountId", name: "AwsAccountId", traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    BatchGetServiceLevelObjectiveBudgetReportInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#BatchGetServiceLevelObjectiveBudgetReportInput", name: "BatchGetServiceLevelObjectiveBudgetReportInput")
    BatchGetServiceLevelObjectiveBudgetReportOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#BatchGetServiceLevelObjectiveBudgetReportOutput", name: "BatchGetServiceLevelObjectiveBudgetReportOutput")
    BatchUpdateExclusionWindowsError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#BatchUpdateExclusionWindowsError", name: "BatchUpdateExclusionWindowsError")
    BatchUpdateExclusionWindowsErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#BatchUpdateExclusionWindowsErrors", name: "BatchUpdateExclusionWindowsErrors", traits: {"smithy.api#length" => {"max" => 10}})
    BatchUpdateExclusionWindowsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#BatchUpdateExclusionWindowsInput", name: "BatchUpdateExclusionWindowsInput")
    BatchUpdateExclusionWindowsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#BatchUpdateExclusionWindowsOutput", name: "BatchUpdateExclusionWindowsOutput")
    BudgetRequestsRemaining = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationsignals#BudgetRequestsRemaining", name: "BudgetRequestsRemaining")
    BudgetSecondsRemaining = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationsignals#BudgetSecondsRemaining", name: "BudgetSecondsRemaining")
    BurnRateConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#BurnRateConfiguration", name: "BurnRateConfiguration")
    BurnRateConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#BurnRateConfigurations", name: "BurnRateConfigurations", traits: {"smithy.api#length" => {"max" => 10}})
    BurnRateLookBackWindowMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationsignals#BurnRateLookBackWindowMinutes", name: "BurnRateLookBackWindowMinutes", traits: {"smithy.api#range" => {"min" => 1, "max" => 10080}})
    CalendarInterval = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#CalendarInterval", name: "CalendarInterval")
    CalendarIntervalDuration = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationsignals#CalendarIntervalDuration", name: "CalendarIntervalDuration", traits: {"smithy.api#range" => {"min" => 1}})
    ChangeEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ChangeEvent", name: "ChangeEvent")
    ChangeEventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationsignals#ChangeEventType", name: "ChangeEventType")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationsignals#ConnectionType", name: "ConnectionType")
    CreateServiceLevelObjectiveInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#CreateServiceLevelObjectiveInput", name: "CreateServiceLevelObjectiveInput")
    CreateServiceLevelObjectiveOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#CreateServiceLevelObjectiveOutput", name: "CreateServiceLevelObjectiveOutput")
    DeleteGroupingConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#DeleteGroupingConfigurationOutput", name: "DeleteGroupingConfigurationOutput")
    DeleteServiceLevelObjectiveInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#DeleteServiceLevelObjectiveInput", name: "DeleteServiceLevelObjectiveInput")
    DeleteServiceLevelObjectiveOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#DeleteServiceLevelObjectiveOutput", name: "DeleteServiceLevelObjectiveOutput")
    DependencyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#DependencyConfig", name: "DependencyConfig")
    DependencyGraph = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#DependencyGraph", name: "DependencyGraph")
    Dimension = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#Dimension", name: "Dimension")
    DimensionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#DimensionName", name: "DimensionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    DimensionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#DimensionValue", name: "DimensionValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Dimensions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#Dimensions", name: "Dimensions", traits: {"smithy.api#length" => {"max" => 30}})
    DurationUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationsignals#DurationUnit", name: "DurationUnit")
    Edge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#Edge", name: "Edge")
    Edges = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#Edges", name: "Edges")
    EvaluationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationsignals#EvaluationType", name: "EvaluationType")
    ExclusionDuration = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationsignals#ExclusionDuration", name: "ExclusionDuration", traits: {"smithy.api#range" => {"min" => 1}})
    ExclusionReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#ExclusionReason", name: "ExclusionReason", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ExclusionWindow = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ExclusionWindow", name: "ExclusionWindow")
    ExclusionWindowErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#ExclusionWindowErrorCode", name: "ExclusionWindowErrorCode")
    ExclusionWindowErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#ExclusionWindowErrorMessage", name: "ExclusionWindowErrorMessage")
    ExclusionWindows = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#ExclusionWindows", name: "ExclusionWindows", traits: {"smithy.api#length" => {"max" => 10}})
    Expression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#Expression", name: "Expression", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    FaultDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#FaultDescription", name: "FaultDescription")
    GetServiceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#GetServiceInput", name: "GetServiceInput")
    GetServiceLevelObjectiveInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#GetServiceLevelObjectiveInput", name: "GetServiceLevelObjectiveInput")
    GetServiceLevelObjectiveOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#GetServiceLevelObjectiveOutput", name: "GetServiceLevelObjectiveOutput")
    GetServiceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#GetServiceOutput", name: "GetServiceOutput")
    Goal = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#Goal", name: "Goal")
    GroupIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#GroupIdentifier", name: "GroupIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    GroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#GroupName", name: "GroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    GroupSource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#GroupSource", name: "GroupSource", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    GroupValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#GroupValue", name: "GroupValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    GroupingAttributeDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#GroupingAttributeDefinition", name: "GroupingAttributeDefinition")
    GroupingAttributeDefinitions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#GroupingAttributeDefinitions", name: "GroupingAttributeDefinitions")
    GroupingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#GroupingConfiguration", name: "GroupingConfiguration")
    GroupingSourceKeyStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#GroupingSourceKeyStringList", name: "GroupingSourceKeyStringList")
    GroupingString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#GroupingString", name: "GroupingString", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s+\\-=\\._:/@]*$"})
    Interval = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.applicationsignals#Interval", name: "Interval")
    KeyAttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#KeyAttributeName", name: "KeyAttributeName", traits: {"smithy.api#pattern" => "^[a-zA-Z]{1,50}$"})
    KeyAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#KeyAttributeValue", name: "KeyAttributeValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[ -~]*[!-~]+[ -~]*$"})
    LatestChangeEvents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#LatestChangeEvents", name: "LatestChangeEvents", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ListAuditFindingMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationsignals#ListAuditFindingMaxResults", name: "ListAuditFindingMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    ListAuditFindingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ListAuditFindingsInput", name: "ListAuditFindingsInput")
    ListAuditFindingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ListAuditFindingsOutput", name: "ListAuditFindingsOutput")
    ListGroupingAttributeDefinitionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ListGroupingAttributeDefinitionsInput", name: "ListGroupingAttributeDefinitionsInput")
    ListGroupingAttributeDefinitionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ListGroupingAttributeDefinitionsOutput", name: "ListGroupingAttributeDefinitionsOutput")
    ListServiceDependenciesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ListServiceDependenciesInput", name: "ListServiceDependenciesInput")
    ListServiceDependenciesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationsignals#ListServiceDependenciesMaxResults", name: "ListServiceDependenciesMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListServiceDependenciesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ListServiceDependenciesOutput", name: "ListServiceDependenciesOutput")
    ListServiceDependentsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ListServiceDependentsInput", name: "ListServiceDependentsInput")
    ListServiceDependentsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationsignals#ListServiceDependentsMaxResults", name: "ListServiceDependentsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListServiceDependentsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ListServiceDependentsOutput", name: "ListServiceDependentsOutput")
    ListServiceLevelObjectiveExclusionWindowsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ListServiceLevelObjectiveExclusionWindowsInput", name: "ListServiceLevelObjectiveExclusionWindowsInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.applicationsignals#ServiceLevelObjectiveResource"}]})
    ListServiceLevelObjectiveExclusionWindowsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationsignals#ListServiceLevelObjectiveExclusionWindowsMaxResults", name: "ListServiceLevelObjectiveExclusionWindowsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    ListServiceLevelObjectiveExclusionWindowsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ListServiceLevelObjectiveExclusionWindowsOutput", name: "ListServiceLevelObjectiveExclusionWindowsOutput")
    ListServiceLevelObjectivesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ListServiceLevelObjectivesInput", name: "ListServiceLevelObjectivesInput")
    ListServiceLevelObjectivesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationsignals#ListServiceLevelObjectivesMaxResults", name: "ListServiceLevelObjectivesMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListServiceLevelObjectivesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ListServiceLevelObjectivesOutput", name: "ListServiceLevelObjectivesOutput")
    ListServiceOperationMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationsignals#ListServiceOperationMaxResults", name: "ListServiceOperationMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListServiceOperationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ListServiceOperationsInput", name: "ListServiceOperationsInput")
    ListServiceOperationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ListServiceOperationsOutput", name: "ListServiceOperationsOutput")
    ListServiceStatesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ListServiceStatesInput", name: "ListServiceStatesInput")
    ListServiceStatesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationsignals#ListServiceStatesMaxResults", name: "ListServiceStatesMaxResults", traits: {"smithy.api#range" => {"max" => 250}})
    ListServiceStatesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ListServiceStatesOutput", name: "ListServiceStatesOutput")
    ListServicesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ListServicesInput", name: "ListServicesInput")
    ListServicesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationsignals#ListServicesMaxResults", name: "ListServicesMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListServicesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ListServicesOutput", name: "ListServicesOutput")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    LogGroupReferences = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#LogGroupReferences", name: "LogGroupReferences")
    Metric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#Metric", name: "Metric")
    MetricDataQueries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#MetricDataQueries", name: "MetricDataQueries")
    MetricDataQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#MetricDataQuery", name: "MetricDataQuery")
    MetricExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#MetricExpression", name: "MetricExpression", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    MetricGraph = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#MetricGraph", name: "MetricGraph")
    MetricId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#MetricId", name: "MetricId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    MetricLabel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#MetricLabel", name: "MetricLabel")
    MetricName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#MetricName", name: "MetricName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    MetricReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#MetricReference", name: "MetricReference")
    MetricReferences = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#MetricReferences", name: "MetricReferences")
    MetricSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationsignals#MetricSourceType", name: "MetricSourceType")
    MetricSourceTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#MetricSourceTypes", name: "MetricSourceTypes", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    MetricStat = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#MetricStat", name: "MetricStat")
    MetricType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#MetricType", name: "MetricType", traits: {"smithy.api#pattern" => "^[A-Za-z0-9 -]+$"})
    MonitoredRequestCountMetricDataQueries = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.applicationsignals#MonitoredRequestCountMetricDataQueries", name: "MonitoredRequestCountMetricDataQueries")
    Namespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#Namespace", name: "Namespace", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "[^:].*"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#NextToken", name: "NextToken")
    Node = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#Node", name: "Node")
    Nodes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#Nodes", name: "Nodes", traits: {"smithy.api#length" => {"max" => 4}})
    OperationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#OperationName", name: "OperationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    Period = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationsignals#Period", name: "Period", traits: {"smithy.api#range" => {"min" => 1}})
    PutGroupingConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#PutGroupingConfigurationInput", name: "PutGroupingConfigurationInput")
    PutGroupingConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#PutGroupingConfigurationOutput", name: "PutGroupingConfigurationOutput")
    RecurrenceRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#RecurrenceRule", name: "RecurrenceRule")
    RequestBasedServiceLevelIndicator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#RequestBasedServiceLevelIndicator", name: "RequestBasedServiceLevelIndicator")
    RequestBasedServiceLevelIndicatorConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#RequestBasedServiceLevelIndicatorConfig", name: "RequestBasedServiceLevelIndicatorConfig")
    RequestBasedServiceLevelIndicatorMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#RequestBasedServiceLevelIndicatorMetric", name: "RequestBasedServiceLevelIndicatorMetric")
    RequestBasedServiceLevelIndicatorMetricConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#RequestBasedServiceLevelIndicatorMetricConfig", name: "RequestBasedServiceLevelIndicatorMetricConfig")
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#ResourceId", name: "ResourceId")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#ResourceType", name: "ResourceType")
    ReturnData = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.applicationsignals#ReturnData", name: "ReturnData")
    RollingInterval = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#RollingInterval", name: "RollingInterval")
    RollingIntervalDuration = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationsignals#RollingIntervalDuration", name: "RollingIntervalDuration", traits: {"smithy.api#range" => {"min" => 1}})
    SLIPeriodSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationsignals#SLIPeriodSeconds", name: "SLIPeriodSeconds", traits: {"smithy.api#range" => {"min" => 60, "max" => 900}})
    Service = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#Service", name: "Service")
    ServiceDependencies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#ServiceDependencies", name: "ServiceDependencies", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ServiceDependency = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ServiceDependency", name: "ServiceDependency")
    ServiceDependent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ServiceDependent", name: "ServiceDependent")
    ServiceDependents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#ServiceDependents", name: "ServiceDependents", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ServiceEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ServiceEntity", name: "ServiceEntity")
    ServiceErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#ServiceErrorMessage", name: "ServiceErrorMessage")
    ServiceGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ServiceGroup", name: "ServiceGroup")
    ServiceGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#ServiceGroups", name: "ServiceGroups")
    ServiceLevelIndicator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelIndicator", name: "ServiceLevelIndicator")
    ServiceLevelIndicatorComparisonOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelIndicatorComparisonOperator", name: "ServiceLevelIndicatorComparisonOperator")
    ServiceLevelIndicatorConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelIndicatorConfig", name: "ServiceLevelIndicatorConfig")
    ServiceLevelIndicatorMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelIndicatorMetric", name: "ServiceLevelIndicatorMetric")
    ServiceLevelIndicatorMetricConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelIndicatorMetricConfig", name: "ServiceLevelIndicatorMetricConfig")
    ServiceLevelIndicatorMetricThreshold = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelIndicatorMetricThreshold", name: "ServiceLevelIndicatorMetricThreshold")
    ServiceLevelIndicatorMetricType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelIndicatorMetricType", name: "ServiceLevelIndicatorMetricType")
    ServiceLevelIndicatorStatistic = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelIndicatorStatistic", name: "ServiceLevelIndicatorStatistic", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[a-zA-Z0-9.]+$"})
    ServiceLevelObjective = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelObjective", name: "ServiceLevelObjective")
    ServiceLevelObjectiveArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelObjectiveArn", name: "ServiceLevelObjectiveArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:application-signals:[^:]*:[^:]*:slo/[0-9A-Za-z][-._0-9A-Za-z ]{0,126}[0-9A-Za-z]$"})
    ServiceLevelObjectiveBudgetReport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelObjectiveBudgetReport", name: "ServiceLevelObjectiveBudgetReport")
    ServiceLevelObjectiveBudgetReportError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelObjectiveBudgetReportError", name: "ServiceLevelObjectiveBudgetReportError")
    ServiceLevelObjectiveBudgetReportErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelObjectiveBudgetReportErrorCode", name: "ServiceLevelObjectiveBudgetReportErrorCode")
    ServiceLevelObjectiveBudgetReportErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelObjectiveBudgetReportErrorMessage", name: "ServiceLevelObjectiveBudgetReportErrorMessage")
    ServiceLevelObjectiveBudgetReportErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelObjectiveBudgetReportErrors", name: "ServiceLevelObjectiveBudgetReportErrors", traits: {"smithy.api#length" => {"max" => 50}})
    ServiceLevelObjectiveBudgetReports = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelObjectiveBudgetReports", name: "ServiceLevelObjectiveBudgetReports", traits: {"smithy.api#length" => {"max" => 50}})
    ServiceLevelObjectiveBudgetStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelObjectiveBudgetStatus", name: "ServiceLevelObjectiveBudgetStatus")
    ServiceLevelObjectiveDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelObjectiveDescription", name: "ServiceLevelObjectiveDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ServiceLevelObjectiveEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelObjectiveEntity", name: "ServiceLevelObjectiveEntity")
    ServiceLevelObjectiveId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelObjectiveId", name: "ServiceLevelObjectiveId", traits: {"smithy.api#pattern" => "^[0-9A-Za-z][-._0-9A-Za-z ]{0,126}[0-9A-Za-z]$|^arn:aws:application-signals:[^:]*:[^:]*:slo/[0-9A-Za-z][-._0-9A-Za-z ]{0,126}[0-9A-Za-z]$"})
    ServiceLevelObjectiveIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelObjectiveIds", name: "ServiceLevelObjectiveIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ServiceLevelObjectiveName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelObjectiveName", name: "ServiceLevelObjectiveName", traits: {"smithy.api#pattern" => "^[0-9A-Za-z][-._0-9A-Za-z ]{0,126}[0-9A-Za-z]$"})
    ServiceLevelObjectiveSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelObjectiveSummaries", name: "ServiceLevelObjectiveSummaries")
    ServiceLevelObjectiveSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelObjectiveSummary", name: "ServiceLevelObjectiveSummary")
    ServiceOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ServiceOperation", name: "ServiceOperation")
    ServiceOperationEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ServiceOperationEntity", name: "ServiceOperationEntity")
    ServiceOperations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#ServiceOperations", name: "ServiceOperations", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ServiceState", name: "ServiceState")
    ServiceStates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#ServiceStates", name: "ServiceStates", traits: {"smithy.api#length" => {"max" => 250}})
    ServiceSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#ServiceSummaries", name: "ServiceSummaries")
    ServiceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ServiceSummary", name: "ServiceSummary")
    Severity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationsignals#Severity", name: "Severity")
    StandardUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationsignals#StandardUnit", name: "StandardUnit")
    StartDiscoveryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#StartDiscoveryInput", name: "StartDiscoveryInput")
    StartDiscoveryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#StartDiscoveryOutput", name: "StartDiscoveryOutput")
    Stat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#Stat", name: "Stat")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TotalBudgetRequests = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationsignals#TotalBudgetRequests", name: "TotalBudgetRequests")
    TotalBudgetSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationsignals#TotalBudgetSeconds", name: "TotalBudgetSeconds")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateServiceLevelObjectiveInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#UpdateServiceLevelObjectiveInput", name: "UpdateServiceLevelObjectiveInput")
    UpdateServiceLevelObjectiveOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#UpdateServiceLevelObjectiveOutput", name: "UpdateServiceLevelObjectiveOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ValidationException", name: "ValidationException", traits: {"aws.protocols#awsQueryError" => {"code" => "ValidationError", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#ValidationExceptionMessage", name: "ValidationExceptionMessage")
    WarningThreshold = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.applicationsignals#WarningThreshold", name: "WarningThreshold")
    Window = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#Window", name: "Window")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceErrorMessage, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AttributeFilter.add_member(:attribute_filter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeFilterName, name: "AttributeFilterName", traits: {"smithy.api#required" => {}}))
    AttributeFilter.add_member(:attribute_filter_values, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeFilterValues, name: "AttributeFilterValues", traits: {"smithy.api#required" => {}}))
    AttributeFilter.type = Types::AttributeFilter
    AttributeFilterValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeFilterValue, name: "member"))
    AttributeFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeFilter, name: "member"))
    AttributeMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    AttributeMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    AttributeMaps.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeMap, name: "member"))
    Attributes.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyAttributeName, name: "key"))
    Attributes.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyAttributeValue, name: "value"))
    AuditFinding.add_member(:key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "KeyAttributes", traits: {"smithy.api#required" => {}}))
    AuditFinding.add_member(:auditor_results, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditorResults, name: "AuditorResults"))
    AuditFinding.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Operation"))
    AuditFinding.add_member(:metric_graph, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricGraph, name: "MetricGraph"))
    AuditFinding.add_member(:dependency_graph, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyGraph, name: "DependencyGraph"))
    AuditFinding.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Type"))
    AuditFinding.type = Types::AuditFinding
    AuditFindings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditFinding, name: "member"))
    AuditTarget.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Type", traits: {"smithy.api#required" => {}}))
    AuditTarget.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditTargetEntity, name: "Data", traits: {"smithy.api#required" => {}}))
    AuditTarget.type = Types::AuditTarget
    AuditTargetEntity.add_member(:service, Types::AuditTargetEntity::Service, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEntity, name: "Service"))
    AuditTargetEntity.add_member(:slo, Types::AuditTargetEntity::Slo, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveEntity, name: "Slo"))
    AuditTargetEntity.add_member(:service_operation, Types::AuditTargetEntity::ServiceOperation, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceOperationEntity, name: "ServiceOperation"))
    AuditTargetEntity.add_member(:unknown, Types::AuditTargetEntity::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AuditTargetEntity.type = Types::AuditTargetEntity
    AuditTargets.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditTarget, name: "member"))
    AuditorResult.add_member(:auditor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Auditor"))
    AuditorResult.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#length" => {"max" => 10240}}))
    AuditorResult.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: Severity, name: "Severity"))
    AuditorResult.type = Types::AuditorResult
    AuditorResults.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditorResult, name: "member"))
    Auditors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    BatchGetServiceLevelObjectiveBudgetReportInput.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "Timestamp", traits: {"smithy.api#required" => {}}))
    BatchGetServiceLevelObjectiveBudgetReportInput.add_member(:slo_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveIds, name: "SloIds", traits: {"smithy.api#required" => {}}))
    BatchGetServiceLevelObjectiveBudgetReportInput.type = Types::BatchGetServiceLevelObjectiveBudgetReportInput
    BatchGetServiceLevelObjectiveBudgetReportOutput.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "Timestamp", traits: {"smithy.api#required" => {}}))
    BatchGetServiceLevelObjectiveBudgetReportOutput.add_member(:reports, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveBudgetReports, name: "Reports", traits: {"smithy.api#required" => {}}))
    BatchGetServiceLevelObjectiveBudgetReportOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveBudgetReportErrors, name: "Errors", traits: {"smithy.api#required" => {}}))
    BatchGetServiceLevelObjectiveBudgetReportOutput.type = Types::BatchGetServiceLevelObjectiveBudgetReportOutput
    BatchUpdateExclusionWindowsError.add_member(:slo_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveId, name: "SloId", traits: {"smithy.api#required" => {}}))
    BatchUpdateExclusionWindowsError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ExclusionWindowErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    BatchUpdateExclusionWindowsError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExclusionWindowErrorMessage, name: "ErrorMessage", traits: {"smithy.api#required" => {}}))
    BatchUpdateExclusionWindowsError.type = Types::BatchUpdateExclusionWindowsError
    BatchUpdateExclusionWindowsErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUpdateExclusionWindowsError, name: "member"))
    BatchUpdateExclusionWindowsInput.add_member(:slo_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveIds, name: "SloIds", traits: {"smithy.api#required" => {}}))
    BatchUpdateExclusionWindowsInput.add_member(:add_exclusion_windows, ::Smithy::Schema::Shapes::MemberShape.new(target: ExclusionWindows, name: "AddExclusionWindows"))
    BatchUpdateExclusionWindowsInput.add_member(:remove_exclusion_windows, ::Smithy::Schema::Shapes::MemberShape.new(target: ExclusionWindows, name: "RemoveExclusionWindows"))
    BatchUpdateExclusionWindowsInput.type = Types::BatchUpdateExclusionWindowsInput
    BatchUpdateExclusionWindowsOutput.add_member(:slo_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveIds, name: "SloIds", traits: {"smithy.api#required" => {}}))
    BatchUpdateExclusionWindowsOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUpdateExclusionWindowsErrors, name: "Errors", traits: {"smithy.api#required" => {}}))
    BatchUpdateExclusionWindowsOutput.type = Types::BatchUpdateExclusionWindowsOutput
    BurnRateConfiguration.add_member(:look_back_window_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: BurnRateLookBackWindowMinutes, name: "LookBackWindowMinutes", traits: {"smithy.api#required" => {}}))
    BurnRateConfiguration.type = Types::BurnRateConfiguration
    BurnRateConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BurnRateConfiguration, name: "member"))
    CalendarInterval.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "StartTime", traits: {"smithy.api#required" => {}}))
    CalendarInterval.add_member(:duration_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationUnit, name: "DurationUnit", traits: {"smithy.api#required" => {}}))
    CalendarInterval.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: CalendarIntervalDuration, name: "Duration", traits: {"smithy.api#required" => {}}))
    CalendarInterval.type = Types::CalendarInterval
    ChangeEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "Timestamp", traits: {"smithy.api#required" => {}}))
    ChangeEvent.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "AccountId", traits: {"smithy.api#required" => {}}))
    ChangeEvent.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Region", traits: {"smithy.api#required" => {}}))
    ChangeEvent.add_member(:entity, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "Entity", traits: {"smithy.api#required" => {}}))
    ChangeEvent.add_member(:change_event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeEventType, name: "ChangeEventType", traits: {"smithy.api#required" => {}}))
    ChangeEvent.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "EventId", traits: {"smithy.api#required" => {}}))
    ChangeEvent.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "UserName"))
    ChangeEvent.add_member(:event_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "EventName"))
    ChangeEvent.type = Types::ChangeEvent
    ChangeEventType.add_member(:deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPLOYMENT", traits: {"smithy.api#enumValue" => "DEPLOYMENT"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ConnectionType.add_member(:indirect, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INDIRECT", traits: {"smithy.api#enumValue" => "INDIRECT"}))
    ConnectionType.add_member(:direct, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIRECT", traits: {"smithy.api#enumValue" => "DIRECT"}))
    CreateServiceLevelObjectiveInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateServiceLevelObjectiveInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveDescription, name: "Description"))
    CreateServiceLevelObjectiveInput.add_member(:sli_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelIndicatorConfig, name: "SliConfig"))
    CreateServiceLevelObjectiveInput.add_member(:request_based_sli_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestBasedServiceLevelIndicatorConfig, name: "RequestBasedSliConfig"))
    CreateServiceLevelObjectiveInput.add_member(:goal, ::Smithy::Schema::Shapes::MemberShape.new(target: Goal, name: "Goal"))
    CreateServiceLevelObjectiveInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateServiceLevelObjectiveInput.add_member(:burn_rate_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: BurnRateConfigurations, name: "BurnRateConfigurations"))
    CreateServiceLevelObjectiveInput.type = Types::CreateServiceLevelObjectiveInput
    CreateServiceLevelObjectiveOutput.add_member(:slo, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjective, name: "Slo", traits: {"smithy.api#required" => {}}))
    CreateServiceLevelObjectiveOutput.type = Types::CreateServiceLevelObjectiveOutput
    DeleteGroupingConfigurationOutput.type = Types::DeleteGroupingConfigurationOutput
    DeleteServiceLevelObjectiveInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteServiceLevelObjectiveInput.type = Types::DeleteServiceLevelObjectiveInput
    DeleteServiceLevelObjectiveOutput.type = Types::DeleteServiceLevelObjectiveOutput
    DependencyConfig.add_member(:dependency_key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "DependencyKeyAttributes", traits: {"smithy.api#required" => {}}))
    DependencyConfig.add_member(:dependency_operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationName, name: "DependencyOperationName", traits: {"smithy.api#required" => {}}))
    DependencyConfig.type = Types::DependencyConfig
    DependencyGraph.add_member(:nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: Nodes, name: "Nodes"))
    DependencyGraph.add_member(:edges, ::Smithy::Schema::Shapes::MemberShape.new(target: Edges, name: "Edges"))
    DependencyGraph.type = Types::DependencyGraph
    Dimension.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionName, name: "Name", traits: {"smithy.api#required" => {}}))
    Dimension.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Dimension.type = Types::Dimension
    Dimensions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimension, name: "member"))
    DurationUnit.add_member(:minute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MINUTE", traits: {"smithy.api#enumValue" => "MINUTE"}))
    DurationUnit.add_member(:hour, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOUR", traits: {"smithy.api#enumValue" => "HOUR"}))
    DurationUnit.add_member(:day, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAY", traits: {"smithy.api#enumValue" => "DAY"}))
    DurationUnit.add_member(:month, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONTH", traits: {"smithy.api#enumValue" => "MONTH"}))
    Edge.add_member(:source_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SourceNodeId"))
    Edge.add_member(:destination_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "DestinationNodeId"))
    Edge.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "Duration"))
    Edge.add_member(:connection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionType, name: "ConnectionType"))
    Edge.type = Types::Edge
    Edges.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Edge, name: "member"))
    EvaluationType.add_member(:period_based, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERIOD_BASED", traits: {"smithy.api#enumValue" => "PeriodBased"}))
    EvaluationType.add_member(:request_based, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUEST_BASED", traits: {"smithy.api#enumValue" => "RequestBased"}))
    ExclusionWindow.add_member(:window, ::Smithy::Schema::Shapes::MemberShape.new(target: Window, name: "Window", traits: {"smithy.api#required" => {}}))
    ExclusionWindow.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "StartTime"))
    ExclusionWindow.add_member(:recurrence_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: RecurrenceRule, name: "RecurrenceRule"))
    ExclusionWindow.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ExclusionReason, name: "Reason"))
    ExclusionWindow.type = Types::ExclusionWindow
    ExclusionWindows.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExclusionWindow, name: "member"))
    GetServiceInput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "StartTime", traits: {"smithy.api#httpQuery" => "StartTime", "smithy.api#required" => {}}))
    GetServiceInput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "EndTime", traits: {"smithy.api#httpQuery" => "EndTime", "smithy.api#required" => {}}))
    GetServiceInput.add_member(:key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "KeyAttributes", traits: {"smithy.api#required" => {}}))
    GetServiceInput.type = Types::GetServiceInput
    GetServiceLevelObjectiveInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetServiceLevelObjectiveInput.type = Types::GetServiceLevelObjectiveInput
    GetServiceLevelObjectiveOutput.add_member(:slo, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjective, name: "Slo", traits: {"smithy.api#required" => {}}))
    GetServiceLevelObjectiveOutput.type = Types::GetServiceLevelObjectiveOutput
    GetServiceOutput.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "Service", traits: {"smithy.api#required" => {}}))
    GetServiceOutput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "StartTime", traits: {"smithy.api#required" => {}}))
    GetServiceOutput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "EndTime", traits: {"smithy.api#required" => {}}))
    GetServiceOutput.add_member(:log_group_references, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupReferences, name: "LogGroupReferences"))
    GetServiceOutput.type = Types::GetServiceOutput
    Goal.add_member(:interval, ::Smithy::Schema::Shapes::MemberShape.new(target: Interval, name: "Interval"))
    Goal.add_member(:attainment_goal, ::Smithy::Schema::Shapes::MemberShape.new(target: AttainmentGoal, name: "AttainmentGoal"))
    Goal.add_member(:warning_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: WarningThreshold, name: "WarningThreshold"))
    Goal.type = Types::Goal
    GroupingAttributeDefinition.add_member(:grouping_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingString, name: "GroupingName", traits: {"smithy.api#required" => {}}))
    GroupingAttributeDefinition.add_member(:grouping_source_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingSourceKeyStringList, name: "GroupingSourceKeys"))
    GroupingAttributeDefinition.add_member(:default_grouping_value, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingString, name: "DefaultGroupingValue"))
    GroupingAttributeDefinition.type = Types::GroupingAttributeDefinition
    GroupingAttributeDefinitions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingAttributeDefinition, name: "member"))
    GroupingConfiguration.add_member(:grouping_attribute_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingAttributeDefinitions, name: "GroupingAttributeDefinitions", traits: {"smithy.api#required" => {}}))
    GroupingConfiguration.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "UpdatedAt", traits: {"smithy.api#required" => {}}))
    GroupingConfiguration.type = Types::GroupingConfiguration
    GroupingSourceKeyStringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingString, name: "member"))
    Interval.add_member(:rolling_interval, Types::Interval::RollingInterval, ::Smithy::Schema::Shapes::MemberShape.new(target: RollingInterval, name: "RollingInterval"))
    Interval.add_member(:calendar_interval, Types::Interval::CalendarInterval, ::Smithy::Schema::Shapes::MemberShape.new(target: CalendarInterval, name: "CalendarInterval"))
    Interval.add_member(:unknown, Types::Interval::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Interval.type = Types::Interval
    LatestChangeEvents.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeEvent, name: "member"))
    ListAuditFindingsInput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "StartTime", traits: {"smithy.api#httpQuery" => "StartTime", "smithy.api#required" => {}}))
    ListAuditFindingsInput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "EndTime", traits: {"smithy.api#httpQuery" => "EndTime", "smithy.api#required" => {}}))
    ListAuditFindingsInput.add_member(:auditors, ::Smithy::Schema::Shapes::MemberShape.new(target: Auditors, name: "Auditors"))
    ListAuditFindingsInput.add_member(:audit_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditTargets, name: "AuditTargets", traits: {"smithy.api#required" => {}}))
    ListAuditFindingsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAuditFindingsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAuditFindingMaxResults, name: "MaxResults"))
    ListAuditFindingsInput.type = Types::ListAuditFindingsInput
    ListAuditFindingsOutput.add_member(:audit_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditFindings, name: "AuditFindings", traits: {"smithy.api#required" => {}}))
    ListAuditFindingsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAuditFindingsOutput.type = Types::ListAuditFindingsOutput
    ListGroupingAttributeDefinitionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListGroupingAttributeDefinitionsInput.type = Types::ListGroupingAttributeDefinitionsInput
    ListGroupingAttributeDefinitionsOutput.add_member(:grouping_attribute_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingAttributeDefinitions, name: "GroupingAttributeDefinitions", traits: {"smithy.api#required" => {}}))
    ListGroupingAttributeDefinitionsOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "UpdatedAt"))
    ListGroupingAttributeDefinitionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListGroupingAttributeDefinitionsOutput.type = Types::ListGroupingAttributeDefinitionsOutput
    ListServiceDependenciesInput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "StartTime", traits: {"smithy.api#httpQuery" => "StartTime", "smithy.api#required" => {}}))
    ListServiceDependenciesInput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "EndTime", traits: {"smithy.api#httpQuery" => "EndTime", "smithy.api#required" => {}}))
    ListServiceDependenciesInput.add_member(:key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "KeyAttributes", traits: {"smithy.api#required" => {}}))
    ListServiceDependenciesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListServiceDependenciesMaxResults, name: "MaxResults", traits: {"smithy.api#default" => 20, "smithy.api#httpQuery" => "MaxResults"}))
    ListServiceDependenciesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListServiceDependenciesInput.type = Types::ListServiceDependenciesInput
    ListServiceDependenciesOutput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "StartTime", traits: {"smithy.api#required" => {}}))
    ListServiceDependenciesOutput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "EndTime", traits: {"smithy.api#required" => {}}))
    ListServiceDependenciesOutput.add_member(:service_dependencies, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDependencies, name: "ServiceDependencies", traits: {"smithy.api#required" => {}}))
    ListServiceDependenciesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListServiceDependenciesOutput.type = Types::ListServiceDependenciesOutput
    ListServiceDependentsInput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "StartTime", traits: {"smithy.api#httpQuery" => "StartTime", "smithy.api#required" => {}}))
    ListServiceDependentsInput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "EndTime", traits: {"smithy.api#httpQuery" => "EndTime", "smithy.api#required" => {}}))
    ListServiceDependentsInput.add_member(:key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "KeyAttributes", traits: {"smithy.api#required" => {}}))
    ListServiceDependentsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListServiceDependentsMaxResults, name: "MaxResults", traits: {"smithy.api#default" => 20, "smithy.api#httpQuery" => "MaxResults"}))
    ListServiceDependentsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListServiceDependentsInput.type = Types::ListServiceDependentsInput
    ListServiceDependentsOutput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "StartTime", traits: {"smithy.api#required" => {}}))
    ListServiceDependentsOutput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "EndTime", traits: {"smithy.api#required" => {}}))
    ListServiceDependentsOutput.add_member(:service_dependents, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDependents, name: "ServiceDependents", traits: {"smithy.api#required" => {}}))
    ListServiceDependentsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListServiceDependentsOutput.type = Types::ListServiceDependentsOutput
    ListServiceLevelObjectiveExclusionWindowsInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListServiceLevelObjectiveExclusionWindowsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListServiceLevelObjectiveExclusionWindowsMaxResults, name: "MaxResults", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "MaxResults"}))
    ListServiceLevelObjectiveExclusionWindowsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListServiceLevelObjectiveExclusionWindowsInput.type = Types::ListServiceLevelObjectiveExclusionWindowsInput
    ListServiceLevelObjectiveExclusionWindowsOutput.add_member(:exclusion_windows, ::Smithy::Schema::Shapes::MemberShape.new(target: ExclusionWindows, name: "ExclusionWindows", traits: {"smithy.api#required" => {}}))
    ListServiceLevelObjectiveExclusionWindowsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListServiceLevelObjectiveExclusionWindowsOutput.type = Types::ListServiceLevelObjectiveExclusionWindowsOutput
    ListServiceLevelObjectivesInput.add_member(:key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "KeyAttributes"))
    ListServiceLevelObjectivesInput.add_member(:operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationName, name: "OperationName", traits: {"smithy.api#httpQuery" => "OperationName"}))
    ListServiceLevelObjectivesInput.add_member(:dependency_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyConfig, name: "DependencyConfig"))
    ListServiceLevelObjectivesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListServiceLevelObjectivesMaxResults, name: "MaxResults", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "MaxResults"}))
    ListServiceLevelObjectivesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListServiceLevelObjectivesInput.add_member(:include_linked_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "IncludeLinkedAccounts", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "IncludeLinkedAccounts"}))
    ListServiceLevelObjectivesInput.add_member(:slo_owner_aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "SloOwnerAwsAccountId", traits: {"smithy.api#httpQuery" => "SloOwnerAwsAccountId"}))
    ListServiceLevelObjectivesInput.add_member(:metric_source_types, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricSourceTypes, name: "MetricSourceTypes"))
    ListServiceLevelObjectivesInput.type = Types::ListServiceLevelObjectivesInput
    ListServiceLevelObjectivesOutput.add_member(:slo_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveSummaries, name: "SloSummaries"))
    ListServiceLevelObjectivesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListServiceLevelObjectivesOutput.type = Types::ListServiceLevelObjectivesOutput
    ListServiceOperationsInput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "StartTime", traits: {"smithy.api#httpQuery" => "StartTime", "smithy.api#required" => {}}))
    ListServiceOperationsInput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "EndTime", traits: {"smithy.api#httpQuery" => "EndTime", "smithy.api#required" => {}}))
    ListServiceOperationsInput.add_member(:key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "KeyAttributes", traits: {"smithy.api#required" => {}}))
    ListServiceOperationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListServiceOperationMaxResults, name: "MaxResults", traits: {"smithy.api#default" => 20, "smithy.api#httpQuery" => "MaxResults"}))
    ListServiceOperationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListServiceOperationsInput.type = Types::ListServiceOperationsInput
    ListServiceOperationsOutput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "StartTime", traits: {"smithy.api#required" => {}}))
    ListServiceOperationsOutput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "EndTime", traits: {"smithy.api#required" => {}}))
    ListServiceOperationsOutput.add_member(:service_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceOperations, name: "ServiceOperations", traits: {"smithy.api#required" => {}}))
    ListServiceOperationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListServiceOperationsOutput.type = Types::ListServiceOperationsOutput
    ListServiceStatesInput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "StartTime", traits: {"smithy.api#required" => {}}))
    ListServiceStatesInput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "EndTime", traits: {"smithy.api#required" => {}}))
    ListServiceStatesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListServiceStatesMaxResults, name: "MaxResults", traits: {"smithy.api#default" => 20}))
    ListServiceStatesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListServiceStatesInput.add_member(:include_linked_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "IncludeLinkedAccounts", traits: {"smithy.api#default" => false}))
    ListServiceStatesInput.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "AwsAccountId"))
    ListServiceStatesInput.add_member(:attribute_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeFilters, name: "AttributeFilters"))
    ListServiceStatesInput.type = Types::ListServiceStatesInput
    ListServiceStatesOutput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "StartTime", traits: {"smithy.api#required" => {}}))
    ListServiceStatesOutput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "EndTime", traits: {"smithy.api#required" => {}}))
    ListServiceStatesOutput.add_member(:service_states, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceStates, name: "ServiceStates", traits: {"smithy.api#required" => {}}))
    ListServiceStatesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListServiceStatesOutput.type = Types::ListServiceStatesOutput
    ListServicesInput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "StartTime", traits: {"smithy.api#httpQuery" => "StartTime", "smithy.api#required" => {}}))
    ListServicesInput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "EndTime", traits: {"smithy.api#httpQuery" => "EndTime", "smithy.api#required" => {}}))
    ListServicesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListServicesMaxResults, name: "MaxResults", traits: {"smithy.api#default" => 50, "smithy.api#httpQuery" => "MaxResults"}))
    ListServicesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListServicesInput.add_member(:include_linked_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "IncludeLinkedAccounts", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "IncludeLinkedAccounts"}))
    ListServicesInput.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "AwsAccountId", traits: {"smithy.api#httpQuery" => "AwsAccountId"}))
    ListServicesInput.type = Types::ListServicesInput
    ListServicesOutput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "StartTime", traits: {"smithy.api#required" => {}}))
    ListServicesOutput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "EndTime", traits: {"smithy.api#required" => {}}))
    ListServicesOutput.add_member(:service_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSummaries, name: "ServiceSummaries", traits: {"smithy.api#required" => {}}))
    ListServicesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListServicesOutput.type = Types::ListServicesOutput
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn", traits: {"smithy.api#httpQuery" => "ResourceArn", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LogGroupReferences.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "member"))
    Metric.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "Namespace"))
    Metric.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName"))
    Metric.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimensions, name: "Dimensions"))
    Metric.type = Types::Metric
    MetricDataQueries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataQuery, name: "member"))
    MetricDataQuery.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricId, name: "Id", traits: {"smithy.api#required" => {}}))
    MetricDataQuery.add_member(:metric_stat, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStat, name: "MetricStat"))
    MetricDataQuery.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricExpression, name: "Expression"))
    MetricDataQuery.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricLabel, name: "Label"))
    MetricDataQuery.add_member(:return_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnData, name: "ReturnData", traits: {"smithy.api#default" => nil}))
    MetricDataQuery.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: Period, name: "Period", traits: {"smithy.api#default" => nil}))
    MetricDataQuery.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    MetricDataQuery.type = Types::MetricDataQuery
    MetricGraph.add_member(:metric_data_queries, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataQueries, name: "MetricDataQueries"))
    MetricGraph.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "StartTime"))
    MetricGraph.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "EndTime"))
    MetricGraph.type = Types::MetricGraph
    MetricReference.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "Namespace", traits: {"smithy.api#required" => {}}))
    MetricReference.add_member(:metric_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricType, name: "MetricType", traits: {"smithy.api#required" => {}}))
    MetricReference.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimensions, name: "Dimensions"))
    MetricReference.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName", traits: {"smithy.api#required" => {}}))
    MetricReference.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "AccountId"))
    MetricReference.type = Types::MetricReference
    MetricReferences.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricReference, name: "member"))
    MetricSourceType.add_member(:service_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_OPERATION", traits: {"smithy.api#enumValue" => "ServiceOperation"}))
    MetricSourceType.add_member(:cloudwatch_metric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUDWATCH_METRIC", traits: {"smithy.api#enumValue" => "CloudWatchMetric"}))
    MetricSourceType.add_member(:service_dependency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_DEPENDENCY", traits: {"smithy.api#enumValue" => "ServiceDependency"}))
    MetricSourceTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricSourceType, name: "member"))
    MetricStat.add_member(:metric, ::Smithy::Schema::Shapes::MemberShape.new(target: Metric, name: "Metric", traits: {"smithy.api#required" => {}}))
    MetricStat.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: Period, name: "Period", traits: {"smithy.api#required" => {}}))
    MetricStat.add_member(:stat, ::Smithy::Schema::Shapes::MemberShape.new(target: Stat, name: "Stat", traits: {"smithy.api#required" => {}}))
    MetricStat.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardUnit, name: "Unit"))
    MetricStat.type = Types::MetricStat
    MonitoredRequestCountMetricDataQueries.add_member(:good_count_metric, Types::MonitoredRequestCountMetricDataQueries::GoodCountMetric, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataQueries, name: "GoodCountMetric"))
    MonitoredRequestCountMetricDataQueries.add_member(:bad_count_metric, Types::MonitoredRequestCountMetricDataQueries::BadCountMetric, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataQueries, name: "BadCountMetric"))
    MonitoredRequestCountMetricDataQueries.add_member(:unknown, Types::MonitoredRequestCountMetricDataQueries::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    MonitoredRequestCountMetricDataQueries.type = Types::MonitoredRequestCountMetricDataQueries
    Node.add_member(:key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "KeyAttributes", traits: {"smithy.api#required" => {}}))
    Node.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#required" => {}}))
    Node.add_member(:node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NodeId", traits: {"smithy.api#required" => {}}))
    Node.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Operation"))
    Node.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Type"))
    Node.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "Duration"))
    Node.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Status"))
    Node.type = Types::Node
    Nodes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Node, name: "member"))
    PutGroupingConfigurationInput.add_member(:grouping_attribute_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingAttributeDefinitions, name: "GroupingAttributeDefinitions", traits: {"smithy.api#required" => {}}))
    PutGroupingConfigurationInput.type = Types::PutGroupingConfigurationInput
    PutGroupingConfigurationOutput.add_member(:grouping_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingConfiguration, name: "GroupingConfiguration", traits: {"smithy.api#required" => {}}))
    PutGroupingConfigurationOutput.type = Types::PutGroupingConfigurationOutput
    RecurrenceRule.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "Expression", traits: {"smithy.api#required" => {}}))
    RecurrenceRule.type = Types::RecurrenceRule
    RequestBasedServiceLevelIndicator.add_member(:request_based_sli_metric, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestBasedServiceLevelIndicatorMetric, name: "RequestBasedSliMetric", traits: {"smithy.api#required" => {}}))
    RequestBasedServiceLevelIndicator.add_member(:metric_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelIndicatorMetricThreshold, name: "MetricThreshold"))
    RequestBasedServiceLevelIndicator.add_member(:comparison_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelIndicatorComparisonOperator, name: "ComparisonOperator"))
    RequestBasedServiceLevelIndicator.type = Types::RequestBasedServiceLevelIndicator
    RequestBasedServiceLevelIndicatorConfig.add_member(:request_based_sli_metric_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestBasedServiceLevelIndicatorMetricConfig, name: "RequestBasedSliMetricConfig", traits: {"smithy.api#required" => {}}))
    RequestBasedServiceLevelIndicatorConfig.add_member(:metric_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelIndicatorMetricThreshold, name: "MetricThreshold"))
    RequestBasedServiceLevelIndicatorConfig.add_member(:comparison_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelIndicatorComparisonOperator, name: "ComparisonOperator"))
    RequestBasedServiceLevelIndicatorConfig.type = Types::RequestBasedServiceLevelIndicatorConfig
    RequestBasedServiceLevelIndicatorMetric.add_member(:key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "KeyAttributes"))
    RequestBasedServiceLevelIndicatorMetric.add_member(:operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationName, name: "OperationName"))
    RequestBasedServiceLevelIndicatorMetric.add_member(:metric_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelIndicatorMetricType, name: "MetricType"))
    RequestBasedServiceLevelIndicatorMetric.add_member(:total_request_count_metric, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataQueries, name: "TotalRequestCountMetric", traits: {"smithy.api#required" => {}}))
    RequestBasedServiceLevelIndicatorMetric.add_member(:monitored_request_count_metric, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoredRequestCountMetricDataQueries, name: "MonitoredRequestCountMetric", traits: {"smithy.api#required" => {}}))
    RequestBasedServiceLevelIndicatorMetric.add_member(:dependency_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyConfig, name: "DependencyConfig"))
    RequestBasedServiceLevelIndicatorMetric.type = Types::RequestBasedServiceLevelIndicatorMetric
    RequestBasedServiceLevelIndicatorMetricConfig.add_member(:key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "KeyAttributes"))
    RequestBasedServiceLevelIndicatorMetricConfig.add_member(:operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationName, name: "OperationName"))
    RequestBasedServiceLevelIndicatorMetricConfig.add_member(:metric_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelIndicatorMetricType, name: "MetricType"))
    RequestBasedServiceLevelIndicatorMetricConfig.add_member(:total_request_count_metric, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataQueries, name: "TotalRequestCountMetric"))
    RequestBasedServiceLevelIndicatorMetricConfig.add_member(:monitored_request_count_metric, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoredRequestCountMetricDataQueries, name: "MonitoredRequestCountMetric"))
    RequestBasedServiceLevelIndicatorMetricConfig.add_member(:dependency_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyConfig, name: "DependencyConfig"))
    RequestBasedServiceLevelIndicatorMetricConfig.type = Types::RequestBasedServiceLevelIndicatorMetricConfig
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: FaultDescription, name: "Message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RollingInterval.add_member(:duration_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationUnit, name: "DurationUnit", traits: {"smithy.api#required" => {}}))
    RollingInterval.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: RollingIntervalDuration, name: "Duration", traits: {"smithy.api#required" => {}}))
    RollingInterval.type = Types::RollingInterval
    Service.add_member(:key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "KeyAttributes", traits: {"smithy.api#required" => {}}))
    Service.add_member(:attribute_maps, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeMaps, name: "AttributeMaps"))
    Service.add_member(:service_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceGroups, name: "ServiceGroups"))
    Service.add_member(:metric_references, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricReferences, name: "MetricReferences", traits: {"smithy.api#required" => {}}))
    Service.add_member(:log_group_references, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupReferences, name: "LogGroupReferences"))
    Service.type = Types::Service
    ServiceDependencies.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDependency, name: "member"))
    ServiceDependency.add_member(:operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationName, name: "OperationName", traits: {"smithy.api#required" => {}}))
    ServiceDependency.add_member(:dependency_key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "DependencyKeyAttributes", traits: {"smithy.api#required" => {}}))
    ServiceDependency.add_member(:dependency_operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationName, name: "DependencyOperationName", traits: {"smithy.api#required" => {}}))
    ServiceDependency.add_member(:metric_references, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricReferences, name: "MetricReferences", traits: {"smithy.api#required" => {}}))
    ServiceDependency.type = Types::ServiceDependency
    ServiceDependent.add_member(:operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationName, name: "OperationName"))
    ServiceDependent.add_member(:dependent_key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "DependentKeyAttributes", traits: {"smithy.api#required" => {}}))
    ServiceDependent.add_member(:dependent_operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationName, name: "DependentOperationName"))
    ServiceDependent.add_member(:metric_references, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricReferences, name: "MetricReferences", traits: {"smithy.api#required" => {}}))
    ServiceDependent.type = Types::ServiceDependent
    ServiceDependents.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDependent, name: "member"))
    ServiceEntity.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Type"))
    ServiceEntity.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name"))
    ServiceEntity.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Environment"))
    ServiceEntity.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "AwsAccountId"))
    ServiceEntity.type = Types::ServiceEntity
    ServiceGroup.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, name: "GroupName", traits: {"smithy.api#required" => {}}))
    ServiceGroup.add_member(:group_value, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupValue, name: "GroupValue", traits: {"smithy.api#required" => {}}))
    ServiceGroup.add_member(:group_source, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupSource, name: "GroupSource", traits: {"smithy.api#required" => {}}))
    ServiceGroup.add_member(:group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupIdentifier, name: "GroupIdentifier", traits: {"smithy.api#required" => {}}))
    ServiceGroup.type = Types::ServiceGroup
    ServiceGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceGroup, name: "member"))
    ServiceLevelIndicator.add_member(:sli_metric, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelIndicatorMetric, name: "SliMetric", traits: {"smithy.api#required" => {}}))
    ServiceLevelIndicator.add_member(:metric_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelIndicatorMetricThreshold, name: "MetricThreshold", traits: {"smithy.api#required" => {}}))
    ServiceLevelIndicator.add_member(:comparison_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelIndicatorComparisonOperator, name: "ComparisonOperator", traits: {"smithy.api#required" => {}}))
    ServiceLevelIndicator.type = Types::ServiceLevelIndicator
    ServiceLevelIndicatorComparisonOperator.add_member(:greater_than_or_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN_OR_EQUAL_TO", traits: {"smithy.api#enumValue" => "GreaterThanOrEqualTo"}))
    ServiceLevelIndicatorComparisonOperator.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GreaterThan"}))
    ServiceLevelIndicatorComparisonOperator.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LessThan"}))
    ServiceLevelIndicatorComparisonOperator.add_member(:less_than_or_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN_OR_EQUAL_TO", traits: {"smithy.api#enumValue" => "LessThanOrEqualTo"}))
    ServiceLevelIndicatorConfig.add_member(:sli_metric_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelIndicatorMetricConfig, name: "SliMetricConfig", traits: {"smithy.api#required" => {}}))
    ServiceLevelIndicatorConfig.add_member(:metric_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelIndicatorMetricThreshold, name: "MetricThreshold", traits: {"smithy.api#required" => {}}))
    ServiceLevelIndicatorConfig.add_member(:comparison_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelIndicatorComparisonOperator, name: "ComparisonOperator", traits: {"smithy.api#required" => {}}))
    ServiceLevelIndicatorConfig.type = Types::ServiceLevelIndicatorConfig
    ServiceLevelIndicatorMetric.add_member(:key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "KeyAttributes"))
    ServiceLevelIndicatorMetric.add_member(:operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationName, name: "OperationName"))
    ServiceLevelIndicatorMetric.add_member(:metric_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelIndicatorMetricType, name: "MetricType"))
    ServiceLevelIndicatorMetric.add_member(:metric_data_queries, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataQueries, name: "MetricDataQueries", traits: {"smithy.api#required" => {}}))
    ServiceLevelIndicatorMetric.add_member(:dependency_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyConfig, name: "DependencyConfig"))
    ServiceLevelIndicatorMetric.type = Types::ServiceLevelIndicatorMetric
    ServiceLevelIndicatorMetricConfig.add_member(:key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "KeyAttributes"))
    ServiceLevelIndicatorMetricConfig.add_member(:operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationName, name: "OperationName"))
    ServiceLevelIndicatorMetricConfig.add_member(:metric_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelIndicatorMetricType, name: "MetricType"))
    ServiceLevelIndicatorMetricConfig.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName"))
    ServiceLevelIndicatorMetricConfig.add_member(:statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelIndicatorStatistic, name: "Statistic"))
    ServiceLevelIndicatorMetricConfig.add_member(:period_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: SLIPeriodSeconds, name: "PeriodSeconds"))
    ServiceLevelIndicatorMetricConfig.add_member(:metric_data_queries, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataQueries, name: "MetricDataQueries"))
    ServiceLevelIndicatorMetricConfig.add_member(:dependency_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyConfig, name: "DependencyConfig"))
    ServiceLevelIndicatorMetricConfig.type = Types::ServiceLevelIndicatorMetricConfig
    ServiceLevelIndicatorMetricType.add_member(:latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LATENCY", traits: {"smithy.api#enumValue" => "LATENCY"}))
    ServiceLevelIndicatorMetricType.add_member(:availability, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABILITY", traits: {"smithy.api#enumValue" => "AVAILABILITY"}))
    ServiceLevelObjective.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    ServiceLevelObjective.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveName, name: "Name", traits: {"smithy.api#required" => {}}))
    ServiceLevelObjective.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveDescription, name: "Description"))
    ServiceLevelObjective.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTime", traits: {"smithy.api#required" => {}}))
    ServiceLevelObjective.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdatedTime", traits: {"smithy.api#required" => {}}))
    ServiceLevelObjective.add_member(:sli, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelIndicator, name: "Sli"))
    ServiceLevelObjective.add_member(:request_based_sli, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestBasedServiceLevelIndicator, name: "RequestBasedSli"))
    ServiceLevelObjective.add_member(:evaluation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationType, name: "EvaluationType"))
    ServiceLevelObjective.add_member(:goal, ::Smithy::Schema::Shapes::MemberShape.new(target: Goal, name: "Goal", traits: {"smithy.api#required" => {}}))
    ServiceLevelObjective.add_member(:burn_rate_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: BurnRateConfigurations, name: "BurnRateConfigurations"))
    ServiceLevelObjective.add_member(:metric_source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricSourceType, name: "MetricSourceType"))
    ServiceLevelObjective.type = Types::ServiceLevelObjective
    ServiceLevelObjectiveBudgetReport.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    ServiceLevelObjectiveBudgetReport.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveName, name: "Name", traits: {"smithy.api#required" => {}}))
    ServiceLevelObjectiveBudgetReport.add_member(:evaluation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationType, name: "EvaluationType"))
    ServiceLevelObjectiveBudgetReport.add_member(:budget_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveBudgetStatus, name: "BudgetStatus", traits: {"smithy.api#required" => {}}))
    ServiceLevelObjectiveBudgetReport.add_member(:attainment, ::Smithy::Schema::Shapes::MemberShape.new(target: Attainment, name: "Attainment"))
    ServiceLevelObjectiveBudgetReport.add_member(:total_budget_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: TotalBudgetSeconds, name: "TotalBudgetSeconds"))
    ServiceLevelObjectiveBudgetReport.add_member(:budget_seconds_remaining, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetSecondsRemaining, name: "BudgetSecondsRemaining"))
    ServiceLevelObjectiveBudgetReport.add_member(:total_budget_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: TotalBudgetRequests, name: "TotalBudgetRequests"))
    ServiceLevelObjectiveBudgetReport.add_member(:budget_requests_remaining, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetRequestsRemaining, name: "BudgetRequestsRemaining"))
    ServiceLevelObjectiveBudgetReport.add_member(:sli, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelIndicator, name: "Sli"))
    ServiceLevelObjectiveBudgetReport.add_member(:request_based_sli, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestBasedServiceLevelIndicator, name: "RequestBasedSli"))
    ServiceLevelObjectiveBudgetReport.add_member(:goal, ::Smithy::Schema::Shapes::MemberShape.new(target: Goal, name: "Goal"))
    ServiceLevelObjectiveBudgetReport.type = Types::ServiceLevelObjectiveBudgetReport
    ServiceLevelObjectiveBudgetReportError.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveName, name: "Name", traits: {"smithy.api#required" => {}}))
    ServiceLevelObjectiveBudgetReportError.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    ServiceLevelObjectiveBudgetReportError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveBudgetReportErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    ServiceLevelObjectiveBudgetReportError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveBudgetReportErrorMessage, name: "ErrorMessage", traits: {"smithy.api#required" => {}}))
    ServiceLevelObjectiveBudgetReportError.type = Types::ServiceLevelObjectiveBudgetReportError
    ServiceLevelObjectiveBudgetReportErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveBudgetReportError, name: "member"))
    ServiceLevelObjectiveBudgetReports.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveBudgetReport, name: "member"))
    ServiceLevelObjectiveBudgetStatus.add_member(:ok, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OK", traits: {"smithy.api#enumValue" => "OK"}))
    ServiceLevelObjectiveBudgetStatus.add_member(:warning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARNING", traits: {"smithy.api#enumValue" => "WARNING"}))
    ServiceLevelObjectiveBudgetStatus.add_member(:breached, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BREACHED", traits: {"smithy.api#enumValue" => "BREACHED"}))
    ServiceLevelObjectiveBudgetStatus.add_member(:insufficient_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSUFFICIENT_DATA", traits: {"smithy.api#enumValue" => "INSUFFICIENT_DATA"}))
    ServiceLevelObjectiveEntity.add_member(:slo_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SloName"))
    ServiceLevelObjectiveEntity.add_member(:slo_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SloArn"))
    ServiceLevelObjectiveEntity.type = Types::ServiceLevelObjectiveEntity
    ServiceLevelObjectiveIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    ServiceLevelObjectiveSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveSummary, name: "member"))
    ServiceLevelObjectiveSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    ServiceLevelObjectiveSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveName, name: "Name", traits: {"smithy.api#required" => {}}))
    ServiceLevelObjectiveSummary.add_member(:key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "KeyAttributes"))
    ServiceLevelObjectiveSummary.add_member(:operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationName, name: "OperationName"))
    ServiceLevelObjectiveSummary.add_member(:dependency_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyConfig, name: "DependencyConfig"))
    ServiceLevelObjectiveSummary.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTime"))
    ServiceLevelObjectiveSummary.add_member(:evaluation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationType, name: "EvaluationType"))
    ServiceLevelObjectiveSummary.add_member(:metric_source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricSourceType, name: "MetricSourceType"))
    ServiceLevelObjectiveSummary.type = Types::ServiceLevelObjectiveSummary
    ServiceOperation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationName, name: "Name", traits: {"smithy.api#required" => {}}))
    ServiceOperation.add_member(:metric_references, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricReferences, name: "MetricReferences", traits: {"smithy.api#required" => {}}))
    ServiceOperation.type = Types::ServiceOperation
    ServiceOperationEntity.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEntity, name: "Service"))
    ServiceOperationEntity.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Operation"))
    ServiceOperationEntity.add_member(:metric_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MetricType"))
    ServiceOperationEntity.type = Types::ServiceOperationEntity
    ServiceOperations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceOperation, name: "member"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceState.add_member(:attribute_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeFilters, name: "AttributeFilters"))
    ServiceState.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "Service", traits: {"smithy.api#required" => {}}))
    ServiceState.add_member(:latest_change_events, ::Smithy::Schema::Shapes::MemberShape.new(target: LatestChangeEvents, name: "LatestChangeEvents", traits: {"smithy.api#required" => {}}))
    ServiceState.type = Types::ServiceState
    ServiceStates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceState, name: "member"))
    ServiceSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSummary, name: "member"))
    ServiceSummary.add_member(:key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "KeyAttributes", traits: {"smithy.api#required" => {}}))
    ServiceSummary.add_member(:attribute_maps, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeMaps, name: "AttributeMaps"))
    ServiceSummary.add_member(:metric_references, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricReferences, name: "MetricReferences", traits: {"smithy.api#required" => {}}))
    ServiceSummary.add_member(:service_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceGroups, name: "ServiceGroups"))
    ServiceSummary.type = Types::ServiceSummary
    Severity.add_member(:critical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRITICAL", traits: {"smithy.api#enumValue" => "CRITICAL"}))
    Severity.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    Severity.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    Severity.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    Severity.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    StandardUnit.add_member(:microseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MICROSECONDS", traits: {"smithy.api#enumValue" => "Microseconds"}))
    StandardUnit.add_member(:milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MILLISECONDS", traits: {"smithy.api#enumValue" => "Milliseconds"}))
    StandardUnit.add_member(:seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECONDS", traits: {"smithy.api#enumValue" => "Seconds"}))
    StandardUnit.add_member(:bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BYTES", traits: {"smithy.api#enumValue" => "Bytes"}))
    StandardUnit.add_member(:kilobytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KILOBYTES", traits: {"smithy.api#enumValue" => "Kilobytes"}))
    StandardUnit.add_member(:megabytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEGABYTES", traits: {"smithy.api#enumValue" => "Megabytes"}))
    StandardUnit.add_member(:gigabytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GIGABYTES", traits: {"smithy.api#enumValue" => "Gigabytes"}))
    StandardUnit.add_member(:terabytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERABYTES", traits: {"smithy.api#enumValue" => "Terabytes"}))
    StandardUnit.add_member(:bits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BITS", traits: {"smithy.api#enumValue" => "Bits"}))
    StandardUnit.add_member(:kilobits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KILOBITS", traits: {"smithy.api#enumValue" => "Kilobits"}))
    StandardUnit.add_member(:megabits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEGABITS", traits: {"smithy.api#enumValue" => "Megabits"}))
    StandardUnit.add_member(:gigabits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GIGABITS", traits: {"smithy.api#enumValue" => "Gigabits"}))
    StandardUnit.add_member(:terabits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERABITS", traits: {"smithy.api#enumValue" => "Terabits"}))
    StandardUnit.add_member(:percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERCENT", traits: {"smithy.api#enumValue" => "Percent"}))
    StandardUnit.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COUNT", traits: {"smithy.api#enumValue" => "Count"}))
    StandardUnit.add_member(:bytes_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BYTES_SECOND", traits: {"smithy.api#enumValue" => "Bytes/Second"}))
    StandardUnit.add_member(:kilobytes_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KILOBYTES_SECOND", traits: {"smithy.api#enumValue" => "Kilobytes/Second"}))
    StandardUnit.add_member(:megabytes_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEGABYTES_SECOND", traits: {"smithy.api#enumValue" => "Megabytes/Second"}))
    StandardUnit.add_member(:gigabytes_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GIGABYTES_SECOND", traits: {"smithy.api#enumValue" => "Gigabytes/Second"}))
    StandardUnit.add_member(:terabytes_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERABYTES_SECOND", traits: {"smithy.api#enumValue" => "Terabytes/Second"}))
    StandardUnit.add_member(:bits_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BITS_SECOND", traits: {"smithy.api#enumValue" => "Bits/Second"}))
    StandardUnit.add_member(:kilobits_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KILOBITS_SECOND", traits: {"smithy.api#enumValue" => "Kilobits/Second"}))
    StandardUnit.add_member(:megabits_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEGABITS_SECOND", traits: {"smithy.api#enumValue" => "Megabits/Second"}))
    StandardUnit.add_member(:gigabits_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GIGABITS_SECOND", traits: {"smithy.api#enumValue" => "Gigabits/Second"}))
    StandardUnit.add_member(:terabits_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERABITS_SECOND", traits: {"smithy.api#enumValue" => "Terabits/Second"}))
    StandardUnit.add_member(:count_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COUNT_SECOND", traits: {"smithy.api#enumValue" => "Count/Second"}))
    StandardUnit.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "None"}))
    StartDiscoveryInput.type = Types::StartDiscoveryInput
    StartDiscoveryOutput.type = Types::StartDiscoveryOutput
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateServiceLevelObjectiveInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateServiceLevelObjectiveInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveDescription, name: "Description"))
    UpdateServiceLevelObjectiveInput.add_member(:sli_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelIndicatorConfig, name: "SliConfig"))
    UpdateServiceLevelObjectiveInput.add_member(:request_based_sli_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestBasedServiceLevelIndicatorConfig, name: "RequestBasedSliConfig"))
    UpdateServiceLevelObjectiveInput.add_member(:goal, ::Smithy::Schema::Shapes::MemberShape.new(target: Goal, name: "Goal"))
    UpdateServiceLevelObjectiveInput.add_member(:burn_rate_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: BurnRateConfigurations, name: "BurnRateConfigurations"))
    UpdateServiceLevelObjectiveInput.type = Types::UpdateServiceLevelObjectiveInput
    UpdateServiceLevelObjectiveOutput.add_member(:slo, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjective, name: "Slo", traits: {"smithy.api#required" => {}}))
    UpdateServiceLevelObjectiveOutput.type = Types::UpdateServiceLevelObjectiveOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionMessage, name: "message"))
    ValidationException.type = Types::ValidationException
    Window.add_member(:duration_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationUnit, name: "DurationUnit", traits: {"smithy.api#required" => {}}))
    Window.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExclusionDuration, name: "Duration", traits: {"smithy.api#required" => {}}))
    Window.type = Types::Window

    ApplicationSignals = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.applicationsignals#ApplicationSignals"
      service.name = "ApplicationSignals"
      service.version = "2024-04-15"
      service.traits = {"aws.api#service" => {"sdkId" => "Application Signals", "arnNamespace" => "application-signals", "endpointPrefix" => "application-signals"}, "aws.auth#sigv4" => {"name" => "application-signals"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon CloudWatch Application Signals"}
      service.add_operation(:batch_get_service_level_objective_budget_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationsignals#BatchGetServiceLevelObjectiveBudgetReport"
        operation.name = "BatchGetServiceLevelObjectiveBudgetReport"
        operation.input = BatchGetServiceLevelObjectiveBudgetReportInput
        operation.output = BatchGetServiceLevelObjectiveBudgetReportOutput
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/budget-report", "code" => 200}}
      end)
      service.add_operation(:batch_update_exclusion_windows, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationsignals#BatchUpdateExclusionWindows"
        operation.name = "BatchUpdateExclusionWindows"
        operation.input = BatchUpdateExclusionWindowsInput
        operation.output = BatchUpdateExclusionWindowsOutput
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/exclusion-windows", "code" => 200}}
      end)
      service.add_operation(:create_service_level_objective, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationsignals#CreateServiceLevelObjective"
        operation.name = "CreateServiceLevelObjective"
        operation.input = CreateServiceLevelObjectiveInput
        operation.output = CreateServiceLevelObjectiveOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/slo", "code" => 200}}
      end)
      service.add_operation(:delete_grouping_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationsignals#DeleteGroupingConfiguration"
        operation.name = "DeleteGroupingConfiguration"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = DeleteGroupingConfigurationOutput
        operation.errors << AccessDeniedException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/grouping-configuration", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_service_level_objective, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationsignals#DeleteServiceLevelObjective"
        operation.name = "DeleteServiceLevelObjective"
        operation.input = DeleteServiceLevelObjectiveInput
        operation.output = DeleteServiceLevelObjectiveOutput
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/slo/{Id}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationsignals#GetService"
        operation.name = "GetService"
        operation.input = GetServiceInput
        operation.output = GetServiceOutput
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/service", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_service_level_objective, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationsignals#GetServiceLevelObjective"
        operation.name = "GetServiceLevelObjective"
        operation.input = GetServiceLevelObjectiveInput
        operation.output = GetServiceLevelObjectiveOutput
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/slo/{Id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_audit_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationsignals#ListAuditFindings"
        operation.name = "ListAuditFindings"
        operation.input = ListAuditFindingsInput
        operation.output = ListAuditFindingsOutput
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/auditFindings", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_grouping_attribute_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationsignals#ListGroupingAttributeDefinitions"
        operation.name = "ListGroupingAttributeDefinitions"
        operation.input = ListGroupingAttributeDefinitionsInput
        operation.output = ListGroupingAttributeDefinitionsOutput
        operation.errors << AccessDeniedException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/grouping-attribute-definitions", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_service_dependencies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationsignals#ListServiceDependencies"
        operation.name = "ListServiceDependencies"
        operation.input = ListServiceDependenciesInput
        operation.output = ListServiceDependenciesOutput
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/service-dependencies", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServiceDependencies.new
      end)
      service.add_operation(:list_service_dependents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationsignals#ListServiceDependents"
        operation.name = "ListServiceDependents"
        operation.input = ListServiceDependentsInput
        operation.output = ListServiceDependentsOutput
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/service-dependents", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServiceDependents.new
      end)
      service.add_operation(:list_service_level_objective_exclusion_windows, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationsignals#ListServiceLevelObjectiveExclusionWindows"
        operation.name = "ListServiceLevelObjectiveExclusionWindows"
        operation.input = ListServiceLevelObjectiveExclusionWindowsInput
        operation.output = ListServiceLevelObjectiveExclusionWindowsOutput
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/slo/{Id}/exclusion-windows", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServiceLevelObjectiveExclusionWindows.new
      end)
      service.add_operation(:list_service_level_objectives, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationsignals#ListServiceLevelObjectives"
        operation.name = "ListServiceLevelObjectives"
        operation.input = ListServiceLevelObjectivesInput
        operation.output = ListServiceLevelObjectivesOutput
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/slos", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServiceLevelObjectives.new
      end)
      service.add_operation(:list_service_operations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationsignals#ListServiceOperations"
        operation.name = "ListServiceOperations"
        operation.input = ListServiceOperationsInput
        operation.output = ListServiceOperationsOutput
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/service-operations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServiceOperations.new
      end)
      service.add_operation(:list_service_states, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationsignals#ListServiceStates"
        operation.name = "ListServiceStates"
        operation.input = ListServiceStatesInput
        operation.output = ListServiceStatesOutput
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/service/states", "code" => 200}}
        operation[:paginator] = Paginators::ListServiceStates.new
      end)
      service.add_operation(:list_services, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationsignals#ListServices"
        operation.name = "ListServices"
        operation.input = ListServicesInput
        operation.output = ListServicesOutput
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/services", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServices.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationsignals#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:put_grouping_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationsignals#PutGroupingConfiguration"
        operation.name = "PutGroupingConfiguration"
        operation.input = PutGroupingConfigurationInput
        operation.output = PutGroupingConfigurationOutput
        operation.errors << AccessDeniedException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/grouping-configuration", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_discovery, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationsignals#StartDiscovery"
        operation.name = "StartDiscovery"
        operation.input = StartDiscoveryInput
        operation.output = StartDiscoveryOutput
        operation.errors << AccessDeniedException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/start-discovery", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationsignals#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tag-resource", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationsignals#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/untag-resource", "code" => 200}}
      end)
      service.add_operation(:update_service_level_objective, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationsignals#UpdateServiceLevelObjective"
        operation.name = "UpdateServiceLevelObjective"
        operation.input = UpdateServiceLevelObjectiveInput
        operation.output = UpdateServiceLevelObjectiveOutput
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/slo/{Id}", "code" => 200}}
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
