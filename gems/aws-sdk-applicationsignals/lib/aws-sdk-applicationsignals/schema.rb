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
    BatchDeleteByResourceArns = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#BatchDeleteByResourceArns", name: "BatchDeleteByResourceArns")
    BatchDeleteDeletionTarget = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.applicationsignals#BatchDeleteDeletionTarget", name: "BatchDeleteDeletionTarget")
    BatchDeleteError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#BatchDeleteError", name: "BatchDeleteError")
    BatchDeleteErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationsignals#BatchDeleteErrorCode", name: "BatchDeleteErrorCode")
    BatchDeleteErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#BatchDeleteErrorList", name: "BatchDeleteErrorList")
    BatchDeleteInstrumentationConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#BatchDeleteInstrumentationConfigurationsRequest", name: "BatchDeleteInstrumentationConfigurationsRequest")
    BatchDeleteInstrumentationConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#BatchDeleteInstrumentationConfigurationsResponse", name: "BatchDeleteInstrumentationConfigurationsResponse")
    BatchDeleteResourceArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#BatchDeleteResourceArnList", name: "BatchDeleteResourceArnList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    BatchDeleteScope = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#BatchDeleteScope", name: "BatchDeleteScope")
    BatchDeleteSuccessfulDeletion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#BatchDeleteSuccessfulDeletion", name: "BatchDeleteSuccessfulDeletion")
    BatchDeleteSuccessfulDeletionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#BatchDeleteSuccessfulDeletionList", name: "BatchDeleteSuccessfulDeletionList")
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
    CanaryEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#CanaryEntity", name: "CanaryEntity")
    CaptureConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.applicationsignals#CaptureConfiguration", name: "CaptureConfiguration")
    CaptureLimitsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#CaptureLimitsConfig", name: "CaptureLimitsConfig")
    ChangeEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ChangeEvent", name: "ChangeEvent")
    ChangeEventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationsignals#ChangeEventType", name: "ChangeEventType")
    ChangeEvents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#ChangeEvents", name: "ChangeEvents", traits: {"smithy.api#length" => {"max" => 250}})
    CodeCaptureConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#CodeCaptureConfiguration", name: "CodeCaptureConfiguration")
    CodeLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#CodeLocation", name: "CodeLocation")
    CompositeSliComponent = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.applicationsignals#CompositeSliComponent", name: "CompositeSliComponent")
    CompositeSliComponents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#CompositeSliComponents", name: "CompositeSliComponents", traits: {"smithy.api#length" => {"min" => 2, "max" => 20}})
    CompositeSliConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#CompositeSliConfig", name: "CompositeSliConfig")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationsignals#ConnectionType", name: "ConnectionType")
    CreateInstrumentationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#CreateInstrumentationConfigurationRequest", name: "CreateInstrumentationConfigurationRequest")
    CreateInstrumentationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#CreateInstrumentationConfigurationResponse", name: "CreateInstrumentationConfigurationResponse")
    CreateServiceLevelObjectiveInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#CreateServiceLevelObjectiveInput", name: "CreateServiceLevelObjectiveInput")
    CreateServiceLevelObjectiveOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#CreateServiceLevelObjectiveOutput", name: "CreateServiceLevelObjectiveOutput")
    DataMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.applicationsignals#DataMap", name: "DataMap")
    DeleteGroupingConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#DeleteGroupingConfigurationOutput", name: "DeleteGroupingConfigurationOutput")
    DeleteInstrumentationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#DeleteInstrumentationConfigurationRequest", name: "DeleteInstrumentationConfigurationRequest")
    DeleteInstrumentationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#DeleteInstrumentationConfigurationResponse", name: "DeleteInstrumentationConfigurationResponse")
    DeleteServiceLevelObjectiveInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#DeleteServiceLevelObjectiveInput", name: "DeleteServiceLevelObjectiveInput")
    DeleteServiceLevelObjectiveOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#DeleteServiceLevelObjectiveOutput", name: "DeleteServiceLevelObjectiveOutput")
    DependencyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#DependencyConfig", name: "DependencyConfig")
    DependencyGraph = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#DependencyGraph", name: "DependencyGraph")
    DetailLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationsignals#DetailLevel", name: "DetailLevel")
    Dimension = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#Dimension", name: "Dimension")
    DimensionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#DimensionName", name: "DimensionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    DimensionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#DimensionValue", name: "DimensionValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Dimensions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#Dimensions", name: "Dimensions", traits: {"smithy.api#length" => {"max" => 30}})
    DurationUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationsignals#DurationUnit", name: "DurationUnit")
    DynamicInstrumentationAttributeFilterGroup = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.applicationsignals#DynamicInstrumentationAttributeFilterGroup", name: "DynamicInstrumentationAttributeFilterGroup")
    DynamicInstrumentationAttributeFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#DynamicInstrumentationAttributeFilters", name: "DynamicInstrumentationAttributeFilters", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    DynamicInstrumentationDeletionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationsignals#DynamicInstrumentationDeletionStatus", name: "DynamicInstrumentationDeletionStatus")
    DynamicInstrumentationSignalType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationsignals#DynamicInstrumentationSignalType", name: "DynamicInstrumentationSignalType")
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
    GetInstrumentationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#GetInstrumentationConfigurationRequest", name: "GetInstrumentationConfigurationRequest")
    GetInstrumentationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#GetInstrumentationConfigurationResponse", name: "GetInstrumentationConfigurationResponse")
    GetInstrumentationConfigurationStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#GetInstrumentationConfigurationStatusRequest", name: "GetInstrumentationConfigurationStatusRequest")
    GetInstrumentationConfigurationStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#GetInstrumentationConfigurationStatusResponse", name: "GetInstrumentationConfigurationStatusResponse")
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
    InstrumentationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#InstrumentationConfiguration", name: "InstrumentationConfiguration")
    InstrumentationConfigurationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#InstrumentationConfigurationArn", name: "InstrumentationConfigurationArn", traits: {"smithy.api#pattern" => "^arn:[^:]+:application-signals:[^:]+:[0-9]{12}:instrumentationConfig/.+/[0-9a-f]{16}$"})
    InstrumentationConfigurationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationsignals#InstrumentationConfigurationStatus", name: "InstrumentationConfigurationStatus")
    InstrumentationConfigurationStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#InstrumentationConfigurationStatusList", name: "InstrumentationConfigurationStatusList")
    InstrumentationConfigurationStatusReport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#InstrumentationConfigurationStatusReport", name: "InstrumentationConfigurationStatusReport")
    InstrumentationConfigurationWithoutServiceEnv = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#InstrumentationConfigurationWithoutServiceEnv", name: "InstrumentationConfigurationWithoutServiceEnv")
    InstrumentationConfigurationsPage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#InstrumentationConfigurationsPage", name: "InstrumentationConfigurationsPage")
    InstrumentationConfigurationsWithoutServiceEnv = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#InstrumentationConfigurationsWithoutServiceEnv", name: "InstrumentationConfigurationsWithoutServiceEnv")
    InstrumentationErrorCause = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationsignals#InstrumentationErrorCause", name: "InstrumentationErrorCause")
    InstrumentationStatusEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#InstrumentationStatusEvent", name: "InstrumentationStatusEvent")
    InstrumentationStatusEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#InstrumentationStatusEventList", name: "InstrumentationStatusEventList")
    InstrumentationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationsignals#InstrumentationType", name: "InstrumentationType")
    Interval = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.applicationsignals#Interval", name: "Interval")
    KeyAttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#KeyAttributeName", name: "KeyAttributeName", traits: {"smithy.api#pattern" => "^[a-zA-Z]{1,50}$"})
    KeyAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#KeyAttributeValue", name: "KeyAttributeValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[ -~]*[!-~]+[ -~]*$"})
    LatestChangeEvents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#LatestChangeEvents", name: "LatestChangeEvents", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ListAuditFindingMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationsignals#ListAuditFindingMaxResults", name: "ListAuditFindingMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    ListAuditFindingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ListAuditFindingsInput", name: "ListAuditFindingsInput")
    ListAuditFindingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ListAuditFindingsOutput", name: "ListAuditFindingsOutput")
    ListEntityEventsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ListEntityEventsInput", name: "ListEntityEventsInput")
    ListEntityEventsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationsignals#ListEntityEventsMaxResults", name: "ListEntityEventsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 250}})
    ListEntityEventsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ListEntityEventsOutput", name: "ListEntityEventsOutput")
    ListGroupingAttributeDefinitionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ListGroupingAttributeDefinitionsInput", name: "ListGroupingAttributeDefinitionsInput")
    ListGroupingAttributeDefinitionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ListGroupingAttributeDefinitionsOutput", name: "ListGroupingAttributeDefinitionsOutput")
    ListInstrumentationConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ListInstrumentationConfigurationsRequest", name: "ListInstrumentationConfigurationsRequest")
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
    Location = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.applicationsignals#Location", name: "Location")
    LocationIdentifier = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.applicationsignals#LocationIdentifier", name: "LocationIdentifier")
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
    MetricSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#MetricSource", name: "MetricSource")
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
    ProgrammingLanguage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationsignals#ProgrammingLanguage", name: "ProgrammingLanguage")
    PutGroupingConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#PutGroupingConfigurationInput", name: "PutGroupingConfigurationInput")
    PutGroupingConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#PutGroupingConfigurationOutput", name: "PutGroupingConfigurationOutput")
    RecurrenceRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#RecurrenceRule", name: "RecurrenceRule")
    ReportInstrumentationConfigurationStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ReportInstrumentationConfigurationStatusRequest", name: "ReportInstrumentationConfigurationStatusRequest")
    ReportInstrumentationConfigurationStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ReportInstrumentationConfigurationStatusResponse", name: "ReportInstrumentationConfigurationStatusResponse")
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
    SelectionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#SelectionConfig", name: "SelectionConfig")
    SelectionPattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#SelectionPattern", name: "SelectionPattern", traits: {"smithy.api#pattern" => "^.+$"})
    SelectionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationsignals#SelectionType", name: "SelectionType")
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
    ServiceLevelObjectiveArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelObjectiveArn", name: "ServiceLevelObjectiveArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov):application-signals:[^:]*:[^:]*:slo/[0-9A-Za-z][-._0-9A-Za-z ]{0,126}[0-9A-Za-z]$"})
    ServiceLevelObjectiveBudgetReport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelObjectiveBudgetReport", name: "ServiceLevelObjectiveBudgetReport")
    ServiceLevelObjectiveBudgetReportError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelObjectiveBudgetReportError", name: "ServiceLevelObjectiveBudgetReportError")
    ServiceLevelObjectiveBudgetReportErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelObjectiveBudgetReportErrorCode", name: "ServiceLevelObjectiveBudgetReportErrorCode")
    ServiceLevelObjectiveBudgetReportErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelObjectiveBudgetReportErrorMessage", name: "ServiceLevelObjectiveBudgetReportErrorMessage")
    ServiceLevelObjectiveBudgetReportErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelObjectiveBudgetReportErrors", name: "ServiceLevelObjectiveBudgetReportErrors", traits: {"smithy.api#length" => {"max" => 50}})
    ServiceLevelObjectiveBudgetReports = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelObjectiveBudgetReports", name: "ServiceLevelObjectiveBudgetReports", traits: {"smithy.api#length" => {"max" => 50}})
    ServiceLevelObjectiveBudgetStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelObjectiveBudgetStatus", name: "ServiceLevelObjectiveBudgetStatus")
    ServiceLevelObjectiveDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelObjectiveDescription", name: "ServiceLevelObjectiveDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ServiceLevelObjectiveEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelObjectiveEntity", name: "ServiceLevelObjectiveEntity")
    ServiceLevelObjectiveId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationsignals#ServiceLevelObjectiveId", name: "ServiceLevelObjectiveId", traits: {"smithy.api#pattern" => "^[0-9A-Za-z][-._0-9A-Za-z ]{0,126}[0-9A-Za-z]$|^arn:(aws|aws-us-gov):application-signals:[^:]*:[^:]*:slo/[0-9A-Za-z][-._0-9A-Za-z ]{0,126}[0-9A-Za-z]$"})
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
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#StringList", name: "StringList", traits: {"smithy.api#length" => {"max" => 10}})
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
    UnprocessedStatusEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationsignals#UnprocessedStatusEvent", name: "UnprocessedStatusEvent")
    UnprocessedStatusEventFailureReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationsignals#UnprocessedStatusEventFailureReason", name: "UnprocessedStatusEventFailureReason")
    UnprocessedStatusEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationsignals#UnprocessedStatusEventList", name: "UnprocessedStatusEventList")
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
    AuditTargetEntity.add_member(:canary, Types::AuditTargetEntity::Canary, ::Smithy::Schema::Shapes::MemberShape.new(target: CanaryEntity, name: "Canary"))
    AuditTargetEntity.add_member(:unknown, Types::AuditTargetEntity::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AuditTargetEntity.type = Types::AuditTargetEntity
    AuditTargets.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditTarget, name: "member"))
    AuditorResult.add_member(:auditor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Auditor"))
    AuditorResult.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#length" => {"max" => 10240}}))
    AuditorResult.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: DataMap, name: "Data"))
    AuditorResult.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: Severity, name: "Severity"))
    AuditorResult.type = Types::AuditorResult
    AuditorResults.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditorResult, name: "member"))
    Auditors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    BatchDeleteByResourceArns.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteResourceArnList, name: "ResourceArns", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#required" => {}}))
    BatchDeleteByResourceArns.add_member(:instrumentation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstrumentationType, name: "InstrumentationType", traits: {"smithy.api#required" => {}}))
    BatchDeleteByResourceArns.type = Types::BatchDeleteByResourceArns
    BatchDeleteDeletionTarget.add_member(:scope, Types::BatchDeleteDeletionTarget::Scope, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteScope, name: "Scope"))
    BatchDeleteDeletionTarget.add_member(:resource_arns, Types::BatchDeleteDeletionTarget::ResourceArns, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteByResourceArns, name: "ResourceArns"))
    BatchDeleteDeletionTarget.add_member(:unknown, Types::BatchDeleteDeletionTarget::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    BatchDeleteDeletionTarget.type = Types::BatchDeleteDeletionTarget
    BatchDeleteError.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    BatchDeleteError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteErrorCode, name: "Code", traits: {"smithy.api#required" => {}}))
    BatchDeleteError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    BatchDeleteError.type = Types::BatchDeleteError
    BatchDeleteErrorCode.add_member(:resource_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_NOT_FOUND", traits: {"smithy.api#enumValue" => "ResourceNotFoundException"}))
    BatchDeleteErrorCode.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_DENIED", traits: {"smithy.api#enumValue" => "AccessDeniedException"}))
    BatchDeleteErrorCode.add_member(:internal_service_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_SERVICE_ERROR", traits: {"smithy.api#enumValue" => "InternalServiceException"}))
    BatchDeleteErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteError, name: "member"))
    BatchDeleteInstrumentationConfigurationsRequest.add_member(:deletion_target, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteDeletionTarget, name: "DeletionTarget", traits: {"smithy.api#required" => {}}))
    BatchDeleteInstrumentationConfigurationsRequest.type = Types::BatchDeleteInstrumentationConfigurationsRequest
    BatchDeleteInstrumentationConfigurationsResponse.add_member(:deleted_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "DeletedCount", traits: {"smithy.api#required" => {}}))
    BatchDeleteInstrumentationConfigurationsResponse.add_member(:successful_deletions, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteSuccessfulDeletionList, name: "SuccessfulDeletions", traits: {"smithy.api#required" => {}}))
    BatchDeleteInstrumentationConfigurationsResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteErrorList, name: "Errors", traits: {"smithy.api#required" => {}}))
    BatchDeleteInstrumentationConfigurationsResponse.type = Types::BatchDeleteInstrumentationConfigurationsResponse
    BatchDeleteResourceArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}}))
    BatchDeleteScope.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Service", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z0-9:/+=,.@_-]+$", "smithy.api#required" => {}}))
    BatchDeleteScope.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Environment", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z0-9:/+=,.@_-]+$", "smithy.api#required" => {}}))
    BatchDeleteScope.add_member(:instrumentation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstrumentationType, name: "InstrumentationType", traits: {"smithy.api#required" => {}}))
    BatchDeleteScope.type = Types::BatchDeleteScope
    BatchDeleteSuccessfulDeletion.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceArn"))
    BatchDeleteSuccessfulDeletion.add_member(:signal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SignalType"))
    BatchDeleteSuccessfulDeletion.add_member(:location_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "LocationHash"))
    BatchDeleteSuccessfulDeletion.type = Types::BatchDeleteSuccessfulDeletion
    BatchDeleteSuccessfulDeletionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteSuccessfulDeletion, name: "member"))
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
    CanaryEntity.add_member(:canary_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "CanaryName", traits: {"smithy.api#required" => {}}))
    CanaryEntity.type = Types::CanaryEntity
    CaptureConfiguration.add_member(:code_capture, Types::CaptureConfiguration::CodeCapture, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeCaptureConfiguration, name: "CodeCapture"))
    CaptureConfiguration.add_member(:unknown, Types::CaptureConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    CaptureConfiguration.type = Types::CaptureConfiguration
    CaptureLimitsConfig.add_member(:max_hits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxHits", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}}))
    CaptureLimitsConfig.add_member(:max_string_length, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxStringLength", traits: {"smithy.api#range" => {"min" => 1, "max" => 255}}))
    CaptureLimitsConfig.add_member(:max_collection_width, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxCollectionWidth", traits: {"smithy.api#range" => {"min" => 1, "max" => 20}}))
    CaptureLimitsConfig.add_member(:max_collection_depth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxCollectionDepth", traits: {"smithy.api#range" => {"min" => 1, "max" => 5}}))
    CaptureLimitsConfig.add_member(:max_stack_frames, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxStackFrames", traits: {"smithy.api#range" => {"min" => 1, "max" => 20}}))
    CaptureLimitsConfig.add_member(:max_stack_trace_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxStackTraceSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}}))
    CaptureLimitsConfig.add_member(:max_object_depth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxObjectDepth", traits: {"smithy.api#range" => {"min" => 1, "max" => 5}}))
    CaptureLimitsConfig.add_member(:max_fields_per_object, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxFieldsPerObject", traits: {"smithy.api#range" => {"min" => 1, "max" => 20}}))
    CaptureLimitsConfig.type = Types::CaptureLimitsConfig
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
    ChangeEventType.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIGURATION", traits: {"smithy.api#enumValue" => "CONFIGURATION"}))
    ChangeEvents.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeEvent, name: "member"))
    CodeCaptureConfiguration.add_member(:capture_arguments, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "CaptureArguments", traits: {"smithy.api#length" => {"max" => 10}}))
    CodeCaptureConfiguration.add_member(:capture_return, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "CaptureReturn"))
    CodeCaptureConfiguration.add_member(:capture_stack_trace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "CaptureStackTrace"))
    CodeCaptureConfiguration.add_member(:capture_locals, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "CaptureLocals", traits: {"smithy.api#length" => {"max" => 20}}))
    CodeCaptureConfiguration.add_member(:capture_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: CaptureLimitsConfig, name: "CaptureLimits", traits: {"smithy.api#required" => {}}))
    CodeCaptureConfiguration.type = Types::CodeCaptureConfiguration
    CodeLocation.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgrammingLanguage, name: "Language", traits: {"smithy.api#required" => {}}))
    CodeLocation.add_member(:code_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "CodeUnit", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}}))
    CodeLocation.add_member(:class_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ClassName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}}))
    CodeLocation.add_member(:method_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MethodName", traits: {"smithy.api#length" => {"min" => 1, "max" => 80}}))
    CodeLocation.add_member(:file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FilePath", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#required" => {}}))
    CodeLocation.add_member(:line_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "LineNumber", traits: {"smithy.api#range" => {"min" => 1}}))
    CodeLocation.type = Types::CodeLocation
    CompositeSliComponent.add_member(:operation_name, Types::CompositeSliComponent::OperationName, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationName, name: "OperationName"))
    CompositeSliComponent.add_member(:unknown, Types::CompositeSliComponent::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    CompositeSliComponent.type = Types::CompositeSliComponent
    CompositeSliComponents.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositeSliComponent, name: "member"))
    CompositeSliConfig.add_member(:selection_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionConfig, name: "SelectionConfig", traits: {"smithy.api#required" => {}}))
    CompositeSliConfig.add_member(:components, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositeSliComponents, name: "Components"))
    CompositeSliConfig.type = Types::CompositeSliConfig
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ConnectionType.add_member(:indirect, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INDIRECT", traits: {"smithy.api#enumValue" => "INDIRECT"}))
    ConnectionType.add_member(:direct, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIRECT", traits: {"smithy.api#enumValue" => "DIRECT"}))
    CreateInstrumentationConfigurationRequest.add_member(:instrumentation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstrumentationType, name: "InstrumentationType", traits: {"smithy.api#required" => {}}))
    CreateInstrumentationConfigurationRequest.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Service", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z0-9:/+=,.@_-]+$", "smithy.api#required" => {}}))
    CreateInstrumentationConfigurationRequest.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Environment", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z0-9:/+=,.@_-]+$", "smithy.api#required" => {}}))
    CreateInstrumentationConfigurationRequest.add_member(:signal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicInstrumentationSignalType, name: "SignalType", traits: {"smithy.api#required" => {}}))
    CreateInstrumentationConfigurationRequest.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "Location", traits: {"smithy.api#required" => {}}))
    CreateInstrumentationConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}}))
    CreateInstrumentationConfigurationRequest.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ExpiresAt"))
    CreateInstrumentationConfigurationRequest.add_member(:attribute_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicInstrumentationAttributeFilters, name: "AttributeFilters"))
    CreateInstrumentationConfigurationRequest.add_member(:capture_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CaptureConfiguration, name: "CaptureConfiguration", traits: {"smithy.api#required" => {}}))
    CreateInstrumentationConfigurationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateInstrumentationConfigurationRequest.type = Types::CreateInstrumentationConfigurationRequest
    CreateInstrumentationConfigurationResponse.add_member(:instrumentation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstrumentationType, name: "InstrumentationType", traits: {"smithy.api#required" => {}}))
    CreateInstrumentationConfigurationResponse.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Service", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    CreateInstrumentationConfigurationResponse.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Environment", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    CreateInstrumentationConfigurationResponse.add_member(:signal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicInstrumentationSignalType, name: "SignalType", traits: {"smithy.api#required" => {}}))
    CreateInstrumentationConfigurationResponse.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "Location", traits: {"smithy.api#required" => {}}))
    CreateInstrumentationConfigurationResponse.add_member(:location_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "LocationHash", traits: {"smithy.api#length" => {"min" => 16, "max" => 16}, "smithy.api#required" => {}}))
    CreateInstrumentationConfigurationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description"))
    CreateInstrumentationConfigurationResponse.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ExpiresAt"))
    CreateInstrumentationConfigurationResponse.add_member(:attribute_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicInstrumentationAttributeFilters, name: "AttributeFilters"))
    CreateInstrumentationConfigurationResponse.add_member(:capture_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CaptureConfiguration, name: "CaptureConfiguration", traits: {"smithy.api#required" => {}}))
    CreateInstrumentationConfigurationResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    CreateInstrumentationConfigurationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstrumentationConfigurationArn, name: "ARN", traits: {"smithy.api#required" => {}}))
    CreateInstrumentationConfigurationResponse.type = Types::CreateInstrumentationConfigurationResponse
    CreateServiceLevelObjectiveInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateServiceLevelObjectiveInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveDescription, name: "Description"))
    CreateServiceLevelObjectiveInput.add_member(:sli_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelIndicatorConfig, name: "SliConfig"))
    CreateServiceLevelObjectiveInput.add_member(:request_based_sli_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestBasedServiceLevelIndicatorConfig, name: "RequestBasedSliConfig"))
    CreateServiceLevelObjectiveInput.add_member(:goal, ::Smithy::Schema::Shapes::MemberShape.new(target: Goal, name: "Goal"))
    CreateServiceLevelObjectiveInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateServiceLevelObjectiveInput.add_member(:burn_rate_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: BurnRateConfigurations, name: "BurnRateConfigurations"))
    CreateServiceLevelObjectiveInput.add_member(:create_recommended_slo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "CreateRecommendedSlo", traits: {"smithy.api#default" => false}))
    CreateServiceLevelObjectiveInput.add_member(:auto_investigation_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "AutoInvestigationEnabled"))
    CreateServiceLevelObjectiveInput.type = Types::CreateServiceLevelObjectiveInput
    CreateServiceLevelObjectiveOutput.add_member(:slo, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjective, name: "Slo", traits: {"smithy.api#required" => {}}))
    CreateServiceLevelObjectiveOutput.type = Types::CreateServiceLevelObjectiveOutput
    DataMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    DataMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    DeleteGroupingConfigurationOutput.type = Types::DeleteGroupingConfigurationOutput
    DeleteInstrumentationConfigurationRequest.add_member(:instrumentation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstrumentationType, name: "InstrumentationType", traits: {"smithy.api#required" => {}}))
    DeleteInstrumentationConfigurationRequest.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Service", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    DeleteInstrumentationConfigurationRequest.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Environment", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    DeleteInstrumentationConfigurationRequest.add_member(:signal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicInstrumentationSignalType, name: "SignalType", traits: {"smithy.api#required" => {}}))
    DeleteInstrumentationConfigurationRequest.add_member(:location_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationIdentifier, name: "LocationIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteInstrumentationConfigurationRequest.type = Types::DeleteInstrumentationConfigurationRequest
    DeleteInstrumentationConfigurationResponse.add_member(:deletion_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicInstrumentationDeletionStatus, name: "DeletionStatus", traits: {"smithy.api#required" => {}}))
    DeleteInstrumentationConfigurationResponse.type = Types::DeleteInstrumentationConfigurationResponse
    DeleteServiceLevelObjectiveInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelObjectiveId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteServiceLevelObjectiveInput.type = Types::DeleteServiceLevelObjectiveInput
    DeleteServiceLevelObjectiveOutput.type = Types::DeleteServiceLevelObjectiveOutput
    DependencyConfig.add_member(:dependency_key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "DependencyKeyAttributes", traits: {"smithy.api#required" => {}}))
    DependencyConfig.add_member(:dependency_operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationName, name: "DependencyOperationName", traits: {"smithy.api#required" => {}}))
    DependencyConfig.type = Types::DependencyConfig
    DependencyGraph.add_member(:nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: Nodes, name: "Nodes"))
    DependencyGraph.add_member(:edges, ::Smithy::Schema::Shapes::MemberShape.new(target: Edges, name: "Edges"))
    DependencyGraph.type = Types::DependencyGraph
    DetailLevel.add_member(:brief, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BRIEF", traits: {"smithy.api#enumValue" => "BRIEF"}))
    DetailLevel.add_member(:detailed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DETAILED", traits: {"smithy.api#enumValue" => "DETAILED"}))
    Dimension.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionName, name: "Name", traits: {"smithy.api#required" => {}}))
    Dimension.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Dimension.type = Types::Dimension
    Dimensions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimension, name: "member"))
    DurationUnit.add_member(:minute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MINUTE", traits: {"smithy.api#enumValue" => "MINUTE"}))
    DurationUnit.add_member(:hour, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOUR", traits: {"smithy.api#enumValue" => "HOUR"}))
    DurationUnit.add_member(:day, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAY", traits: {"smithy.api#enumValue" => "DAY"}))
    DurationUnit.add_member(:month, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONTH", traits: {"smithy.api#enumValue" => "MONTH"}))
    DynamicInstrumentationAttributeFilterGroup.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}}))
    DynamicInstrumentationAttributeFilterGroup.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}}))
    DynamicInstrumentationAttributeFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicInstrumentationAttributeFilterGroup, name: "member"))
    DynamicInstrumentationDeletionStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    DynamicInstrumentationSignalType.add_member(:snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNAPSHOT", traits: {"smithy.api#enumValue" => "SNAPSHOT"}))
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
    GetInstrumentationConfigurationRequest.add_member(:instrumentation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstrumentationType, name: "InstrumentationType", traits: {"smithy.api#required" => {}}))
    GetInstrumentationConfigurationRequest.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Service", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    GetInstrumentationConfigurationRequest.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Environment", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    GetInstrumentationConfigurationRequest.add_member(:signal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicInstrumentationSignalType, name: "SignalType", traits: {"smithy.api#required" => {}}))
    GetInstrumentationConfigurationRequest.add_member(:location_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationIdentifier, name: "LocationIdentifier", traits: {"smithy.api#required" => {}}))
    GetInstrumentationConfigurationRequest.type = Types::GetInstrumentationConfigurationRequest
    GetInstrumentationConfigurationResponse.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InstrumentationConfiguration, name: "Configuration", traits: {"smithy.api#required" => {}}))
    GetInstrumentationConfigurationResponse.type = Types::GetInstrumentationConfigurationResponse
    GetInstrumentationConfigurationStatusRequest.add_member(:instrumentation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstrumentationType, name: "InstrumentationType", traits: {"smithy.api#required" => {}}))
    GetInstrumentationConfigurationStatusRequest.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Service", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    GetInstrumentationConfigurationStatusRequest.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Environment", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    GetInstrumentationConfigurationStatusRequest.add_member(:signal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicInstrumentationSignalType, name: "SignalType", traits: {"smithy.api#required" => {}}))
    GetInstrumentationConfigurationStatusRequest.add_member(:location_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationIdentifier, name: "LocationIdentifier", traits: {"smithy.api#required" => {}}))
    GetInstrumentationConfigurationStatusRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InstrumentationConfigurationStatus, name: "Status"))
    GetInstrumentationConfigurationStatusRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "StartTime"))
    GetInstrumentationConfigurationStatusRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "EndTime"))
    GetInstrumentationConfigurationStatusRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#default" => 60, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    GetInstrumentationConfigurationStatusRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetInstrumentationConfigurationStatusRequest.type = Types::GetInstrumentationConfigurationStatusRequest
    GetInstrumentationConfigurationStatusResponse.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Service", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    GetInstrumentationConfigurationStatusResponse.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Environment", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    GetInstrumentationConfigurationStatusResponse.add_member(:signal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicInstrumentationSignalType, name: "SignalType", traits: {"smithy.api#required" => {}}))
    GetInstrumentationConfigurationStatusResponse.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "Location", traits: {"smithy.api#required" => {}}))
    GetInstrumentationConfigurationStatusResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InstrumentationConfigurationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    GetInstrumentationConfigurationStatusResponse.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: InstrumentationStatusEventList, name: "Events", traits: {"smithy.api#required" => {}}))
    GetInstrumentationConfigurationStatusResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetInstrumentationConfigurationStatusResponse.type = Types::GetInstrumentationConfigurationStatusResponse
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
    InstrumentationConfiguration.add_member(:instrumentation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstrumentationType, name: "InstrumentationType", traits: {"smithy.api#required" => {}}))
    InstrumentationConfiguration.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Service", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    InstrumentationConfiguration.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Environment", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    InstrumentationConfiguration.add_member(:signal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicInstrumentationSignalType, name: "SignalType", traits: {"smithy.api#required" => {}}))
    InstrumentationConfiguration.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "Location", traits: {"smithy.api#required" => {}}))
    InstrumentationConfiguration.add_member(:location_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "LocationHash", traits: {"smithy.api#length" => {"min" => 16, "max" => 16}, "smithy.api#required" => {}}))
    InstrumentationConfiguration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}}))
    InstrumentationConfiguration.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ExpiresAt"))
    InstrumentationConfiguration.add_member(:attribute_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicInstrumentationAttributeFilters, name: "AttributeFilters"))
    InstrumentationConfiguration.add_member(:capture_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CaptureConfiguration, name: "CaptureConfiguration", traits: {"smithy.api#required" => {}}))
    InstrumentationConfiguration.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    InstrumentationConfiguration.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstrumentationConfigurationArn, name: "ARN", traits: {"smithy.api#required" => {}}))
    InstrumentationConfiguration.type = Types::InstrumentationConfiguration
    InstrumentationConfigurationStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    InstrumentationConfigurationStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    InstrumentationConfigurationStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    InstrumentationConfigurationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    InstrumentationConfigurationStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstrumentationConfigurationStatusReport, name: "member"))
    InstrumentationConfigurationStatusReport.add_member(:instrumentation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstrumentationType, name: "InstrumentationType", traits: {"smithy.api#required" => {}}))
    InstrumentationConfigurationStatusReport.add_member(:signal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicInstrumentationSignalType, name: "SignalType", traits: {"smithy.api#required" => {}}))
    InstrumentationConfigurationStatusReport.add_member(:location_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "LocationHash", traits: {"smithy.api#length" => {"min" => 16, "max" => 16}, "smithy.api#required" => {}}))
    InstrumentationConfigurationStatusReport.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InstrumentationConfigurationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    InstrumentationConfigurationStatusReport.add_member(:time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "Time", traits: {"smithy.api#required" => {}}))
    InstrumentationConfigurationStatusReport.add_member(:error_cause, ::Smithy::Schema::Shapes::MemberShape.new(target: InstrumentationErrorCause, name: "ErrorCause"))
    InstrumentationConfigurationStatusReport.type = Types::InstrumentationConfigurationStatusReport
    InstrumentationConfigurationWithoutServiceEnv.add_member(:instrumentation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstrumentationType, name: "InstrumentationType", traits: {"smithy.api#required" => {}}))
    InstrumentationConfigurationWithoutServiceEnv.add_member(:signal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicInstrumentationSignalType, name: "SignalType", traits: {"smithy.api#required" => {}}))
    InstrumentationConfigurationWithoutServiceEnv.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "Location", traits: {"smithy.api#required" => {}}))
    InstrumentationConfigurationWithoutServiceEnv.add_member(:location_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "LocationHash", traits: {"smithy.api#length" => {"min" => 16, "max" => 16}, "smithy.api#required" => {}}))
    InstrumentationConfigurationWithoutServiceEnv.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}}))
    InstrumentationConfigurationWithoutServiceEnv.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ExpiresAt"))
    InstrumentationConfigurationWithoutServiceEnv.add_member(:attribute_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicInstrumentationAttributeFilters, name: "AttributeFilters"))
    InstrumentationConfigurationWithoutServiceEnv.add_member(:capture_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CaptureConfiguration, name: "CaptureConfiguration", traits: {"smithy.api#required" => {}}))
    InstrumentationConfigurationWithoutServiceEnv.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    InstrumentationConfigurationWithoutServiceEnv.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstrumentationConfigurationArn, name: "ARN", traits: {"smithy.api#required" => {}}))
    InstrumentationConfigurationWithoutServiceEnv.type = Types::InstrumentationConfigurationWithoutServiceEnv
    InstrumentationConfigurationsPage.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Service", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    InstrumentationConfigurationsPage.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Environment", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    InstrumentationConfigurationsPage.add_member(:changed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Changed", traits: {"smithy.api#required" => {}}))
    InstrumentationConfigurationsPage.add_member(:latest_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: InstrumentationConfigurationsWithoutServiceEnv, name: "LatestConfigurations"))
    InstrumentationConfigurationsPage.add_member(:synced_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "SyncedAt", traits: {"smithy.api#required" => {}}))
    InstrumentationConfigurationsPage.add_member(:sync_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "SyncInterval", traits: {"smithy.api#range" => {"min" => 60}, "smithy.api#required" => {}}))
    InstrumentationConfigurationsPage.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    InstrumentationConfigurationsPage.type = Types::InstrumentationConfigurationsPage
    InstrumentationConfigurationsWithoutServiceEnv.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstrumentationConfigurationWithoutServiceEnv, name: "member"))
    InstrumentationErrorCause.add_member(:file_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_NOT_FOUND", traits: {"smithy.api#enumValue" => "FILE_NOT_FOUND"}))
    InstrumentationErrorCause.add_member(:method_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "METHOD_NOT_FOUND", traits: {"smithy.api#enumValue" => "METHOD_NOT_FOUND"}))
    InstrumentationErrorCause.add_member(:line_not_executable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINE_NOT_EXECUTABLE", traits: {"smithy.api#enumValue" => "LINE_NOT_EXECUTABLE"}))
    InstrumentationErrorCause.add_member(:overloaded_methods, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OVERLOADED_METHODS", traits: {"smithy.api#enumValue" => "OVERLOADED_METHODS"}))
    InstrumentationErrorCause.add_member(:language_mismatch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LANGUAGE_MISMATCH", traits: {"smithy.api#enumValue" => "LANGUAGE_MISMATCH"}))
    InstrumentationErrorCause.add_member(:runtime_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNTIME_ERROR", traits: {"smithy.api#enumValue" => "RUNTIME_ERROR"}))
    InstrumentationStatusEvent.add_member(:time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "Time", traits: {"smithy.api#required" => {}}))
    InstrumentationStatusEvent.add_member(:error_cause, ::Smithy::Schema::Shapes::MemberShape.new(target: InstrumentationErrorCause, name: "ErrorCause"))
    InstrumentationStatusEvent.type = Types::InstrumentationStatusEvent
    InstrumentationStatusEventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstrumentationStatusEvent, name: "member"))
    InstrumentationType.add_member(:breakpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BREAKPOINT", traits: {"smithy.api#enumValue" => "BREAKPOINT"}))
    InstrumentationType.add_member(:probe, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROBE", traits: {"smithy.api#enumValue" => "PROBE"}))
    Interval.add_member(:rolling_interval, Types::Interval::RollingInterval, ::Smithy::Schema::Shapes::MemberShape.new(target: RollingInterval, name: "RollingInterval"))
    Interval.add_member(:calendar_interval, Types::Interval::CalendarInterval, ::Smithy::Schema::Shapes::MemberShape.new(target: CalendarInterval, name: "CalendarInterval"))
    Interval.add_member(:unknown, Types::Interval::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Interval.type = Types::Interval
    LatestChangeEvents.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeEvent, name: "member"))
    ListAuditFindingsInput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "StartTime", traits: {"smithy.api#httpQuery" => "StartTime", "smithy.api#required" => {}}))
    ListAuditFindingsInput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "EndTime", traits: {"smithy.api#httpQuery" => "EndTime", "smithy.api#required" => {}}))
    ListAuditFindingsInput.add_member(:auditors, ::Smithy::Schema::Shapes::MemberShape.new(target: Auditors, name: "Auditors"))
    ListAuditFindingsInput.add_member(:audit_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditTargets, name: "AuditTargets", traits: {"smithy.api#required" => {}}))
    ListAuditFindingsInput.add_member(:detail_level, ::Smithy::Schema::Shapes::MemberShape.new(target: DetailLevel, name: "DetailLevel"))
    ListAuditFindingsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAuditFindingsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAuditFindingMaxResults, name: "MaxResults"))
    ListAuditFindingsInput.type = Types::ListAuditFindingsInput
    ListAuditFindingsOutput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "StartTime"))
    ListAuditFindingsOutput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "EndTime"))
    ListAuditFindingsOutput.add_member(:audit_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditFindings, name: "AuditFindings", traits: {"smithy.api#required" => {}}))
    ListAuditFindingsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAuditFindingsOutput.type = Types::ListAuditFindingsOutput
    ListEntityEventsInput.add_member(:entity, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "Entity", traits: {"smithy.api#required" => {}}))
    ListEntityEventsInput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "StartTime", traits: {"smithy.api#required" => {}}))
    ListEntityEventsInput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "EndTime", traits: {"smithy.api#required" => {}}))
    ListEntityEventsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListEntityEventsMaxResults, name: "MaxResults", traits: {"smithy.api#default" => 20, "smithy.api#httpQuery" => "MaxResults"}))
    ListEntityEventsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListEntityEventsInput.type = Types::ListEntityEventsInput
    ListEntityEventsOutput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "StartTime", traits: {"smithy.api#required" => {}}))
    ListEntityEventsOutput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "EndTime", traits: {"smithy.api#required" => {}}))
    ListEntityEventsOutput.add_member(:change_events, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeEvents, name: "ChangeEvents", traits: {"smithy.api#required" => {}}))
    ListEntityEventsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEntityEventsOutput.type = Types::ListEntityEventsOutput
    ListGroupingAttributeDefinitionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListGroupingAttributeDefinitionsInput.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "AwsAccountId", traits: {"smithy.api#httpQuery" => "AwsAccountId"}))
    ListGroupingAttributeDefinitionsInput.add_member(:include_linked_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "IncludeLinkedAccounts", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "IncludeLinkedAccounts"}))
    ListGroupingAttributeDefinitionsInput.type = Types::ListGroupingAttributeDefinitionsInput
    ListGroupingAttributeDefinitionsOutput.add_member(:grouping_attribute_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingAttributeDefinitions, name: "GroupingAttributeDefinitions", traits: {"smithy.api#required" => {}}))
    ListGroupingAttributeDefinitionsOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "UpdatedAt"))
    ListGroupingAttributeDefinitionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListGroupingAttributeDefinitionsOutput.type = Types::ListGroupingAttributeDefinitionsOutput
    ListInstrumentationConfigurationsRequest.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Service", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z0-9:/+=,.@_-]+$", "smithy.api#required" => {}}))
    ListInstrumentationConfigurationsRequest.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Environment", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z0-9:/+=,.@_-]+$", "smithy.api#required" => {}}))
    ListInstrumentationConfigurationsRequest.add_member(:instrumentation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstrumentationType, name: "InstrumentationType", traits: {"smithy.api#required" => {}}))
    ListInstrumentationConfigurationsRequest.add_member(:synced_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "SyncedAt"))
    ListInstrumentationConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#default" => 50, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListInstrumentationConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListInstrumentationConfigurationsRequest.type = Types::ListInstrumentationConfigurationsRequest
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
    ListServiceLevelObjectivesInput.add_member(:metric_source_types, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricSourceTypes, name: "MetricSourceTypes"))
    ListServiceLevelObjectivesInput.add_member(:include_linked_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "IncludeLinkedAccounts", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "IncludeLinkedAccounts"}))
    ListServiceLevelObjectivesInput.add_member(:slo_owner_aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "SloOwnerAwsAccountId", traits: {"smithy.api#httpQuery" => "SloOwnerAwsAccountId"}))
    ListServiceLevelObjectivesInput.add_member(:metric_source, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricSource, name: "MetricSource"))
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
    Location.add_member(:code_location, Types::Location::CodeLocation, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeLocation, name: "CodeLocation"))
    Location.add_member(:unknown, Types::Location::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Location.type = Types::Location
    LocationIdentifier.add_member(:code_location, Types::LocationIdentifier::CodeLocation, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeLocation, name: "CodeLocation"))
    LocationIdentifier.add_member(:location_hash, Types::LocationIdentifier::LocationHash, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "LocationHash", traits: {"smithy.api#length" => {"min" => 16, "max" => 16}}))
    LocationIdentifier.add_member(:unknown, Types::LocationIdentifier::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    LocationIdentifier.type = Types::LocationIdentifier
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
    MetricSource.add_member(:metric_source_key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "MetricSourceKeyAttributes", traits: {"smithy.api#required" => {}}))
    MetricSource.add_member(:metric_source_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "MetricSourceAttributes"))
    MetricSource.type = Types::MetricSource
    MetricSourceType.add_member(:service_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_OPERATION", traits: {"smithy.api#enumValue" => "ServiceOperation"}))
    MetricSourceType.add_member(:cloudwatch_metric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUDWATCH_METRIC", traits: {"smithy.api#enumValue" => "CloudWatchMetric"}))
    MetricSourceType.add_member(:service_dependency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_DEPENDENCY", traits: {"smithy.api#enumValue" => "ServiceDependency"}))
    MetricSourceType.add_member(:appmonitor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPMONITOR", traits: {"smithy.api#enumValue" => "AppMonitor"}))
    MetricSourceType.add_member(:canary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANARY", traits: {"smithy.api#enumValue" => "Canary"}))
    MetricSourceType.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE", traits: {"smithy.api#enumValue" => "Service"}))
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
    ProgrammingLanguage.add_member(:java, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JAVA", traits: {"smithy.api#enumValue" => "Java"}))
    ProgrammingLanguage.add_member(:python, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PYTHON", traits: {"smithy.api#enumValue" => "Python"}))
    ProgrammingLanguage.add_member(:javascript, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JAVASCRIPT", traits: {"smithy.api#enumValue" => "Javascript"}))
    PutGroupingConfigurationInput.add_member(:grouping_attribute_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingAttributeDefinitions, name: "GroupingAttributeDefinitions", traits: {"smithy.api#required" => {}}))
    PutGroupingConfigurationInput.type = Types::PutGroupingConfigurationInput
    PutGroupingConfigurationOutput.add_member(:grouping_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingConfiguration, name: "GroupingConfiguration", traits: {"smithy.api#required" => {}}))
    PutGroupingConfigurationOutput.type = Types::PutGroupingConfigurationOutput
    RecurrenceRule.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "Expression", traits: {"smithy.api#required" => {}}))
    RecurrenceRule.type = Types::RecurrenceRule
    ReportInstrumentationConfigurationStatusRequest.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Service", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    ReportInstrumentationConfigurationStatusRequest.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Environment", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    ReportInstrumentationConfigurationStatusRequest.add_member(:configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: InstrumentationConfigurationStatusList, name: "Configurations", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    ReportInstrumentationConfigurationStatusRequest.type = Types::ReportInstrumentationConfigurationStatusRequest
    ReportInstrumentationConfigurationStatusResponse.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Service", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    ReportInstrumentationConfigurationStatusResponse.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Environment", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    ReportInstrumentationConfigurationStatusResponse.add_member(:unprocessed_status_events, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedStatusEventList, name: "UnprocessedStatusEvents", traits: {"smithy.api#required" => {}}))
    ReportInstrumentationConfigurationStatusResponse.type = Types::ReportInstrumentationConfigurationStatusResponse
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
    RequestBasedServiceLevelIndicatorMetric.add_member(:metric_source, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricSource, name: "MetricSource"))
    RequestBasedServiceLevelIndicatorMetric.add_member(:composite_sli_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositeSliConfig, name: "CompositeSliConfig"))
    RequestBasedServiceLevelIndicatorMetric.type = Types::RequestBasedServiceLevelIndicatorMetric
    RequestBasedServiceLevelIndicatorMetricConfig.add_member(:key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "KeyAttributes"))
    RequestBasedServiceLevelIndicatorMetricConfig.add_member(:operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationName, name: "OperationName"))
    RequestBasedServiceLevelIndicatorMetricConfig.add_member(:metric_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelIndicatorMetricType, name: "MetricType"))
    RequestBasedServiceLevelIndicatorMetricConfig.add_member(:total_request_count_metric, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataQueries, name: "TotalRequestCountMetric"))
    RequestBasedServiceLevelIndicatorMetricConfig.add_member(:monitored_request_count_metric, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoredRequestCountMetricDataQueries, name: "MonitoredRequestCountMetric"))
    RequestBasedServiceLevelIndicatorMetricConfig.add_member(:dependency_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyConfig, name: "DependencyConfig"))
    RequestBasedServiceLevelIndicatorMetricConfig.add_member(:metric_source, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricSource, name: "MetricSource"))
    RequestBasedServiceLevelIndicatorMetricConfig.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName"))
    RequestBasedServiceLevelIndicatorMetricConfig.add_member(:composite_sli_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositeSliConfig, name: "CompositeSliConfig"))
    RequestBasedServiceLevelIndicatorMetricConfig.type = Types::RequestBasedServiceLevelIndicatorMetricConfig
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: FaultDescription, name: "Message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RollingInterval.add_member(:duration_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationUnit, name: "DurationUnit", traits: {"smithy.api#required" => {}}))
    RollingInterval.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: RollingIntervalDuration, name: "Duration", traits: {"smithy.api#required" => {}}))
    RollingInterval.type = Types::RollingInterval
    SelectionConfig.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionType, name: "Type", traits: {"smithy.api#required" => {}}))
    SelectionConfig.add_member(:pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionPattern, name: "Pattern"))
    SelectionConfig.type = Types::SelectionConfig
    SelectionType.add_member(:explicit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPLICIT", traits: {"smithy.api#enumValue" => "EXPLICIT"}))
    SelectionType.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREFIX", traits: {"smithy.api#enumValue" => "PREFIX"}))
    SelectionType.add_member(:regex, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGEX", traits: {"smithy.api#enumValue" => "REGEX"}))
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
    ServiceLevelIndicatorConfig.add_member(:metric_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelIndicatorMetricThreshold, name: "MetricThreshold", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => 0}))
    ServiceLevelIndicatorConfig.add_member(:comparison_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelIndicatorComparisonOperator, name: "ComparisonOperator", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => "LessThan"}))
    ServiceLevelIndicatorConfig.type = Types::ServiceLevelIndicatorConfig
    ServiceLevelIndicatorMetric.add_member(:key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "KeyAttributes"))
    ServiceLevelIndicatorMetric.add_member(:operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationName, name: "OperationName"))
    ServiceLevelIndicatorMetric.add_member(:metric_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelIndicatorMetricType, name: "MetricType"))
    ServiceLevelIndicatorMetric.add_member(:metric_data_queries, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataQueries, name: "MetricDataQueries", traits: {"smithy.api#required" => {}}))
    ServiceLevelIndicatorMetric.add_member(:dependency_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyConfig, name: "DependencyConfig"))
    ServiceLevelIndicatorMetric.add_member(:metric_source, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricSource, name: "MetricSource"))
    ServiceLevelIndicatorMetric.add_member(:composite_sli_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositeSliConfig, name: "CompositeSliConfig"))
    ServiceLevelIndicatorMetric.type = Types::ServiceLevelIndicatorMetric
    ServiceLevelIndicatorMetricConfig.add_member(:key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "KeyAttributes"))
    ServiceLevelIndicatorMetricConfig.add_member(:operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationName, name: "OperationName"))
    ServiceLevelIndicatorMetricConfig.add_member(:metric_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelIndicatorMetricType, name: "MetricType"))
    ServiceLevelIndicatorMetricConfig.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName"))
    ServiceLevelIndicatorMetricConfig.add_member(:statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelIndicatorStatistic, name: "Statistic"))
    ServiceLevelIndicatorMetricConfig.add_member(:period_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: SLIPeriodSeconds, name: "PeriodSeconds"))
    ServiceLevelIndicatorMetricConfig.add_member(:metric_source, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricSource, name: "MetricSource"))
    ServiceLevelIndicatorMetricConfig.add_member(:metric_data_queries, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataQueries, name: "MetricDataQueries"))
    ServiceLevelIndicatorMetricConfig.add_member(:dependency_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyConfig, name: "DependencyConfig"))
    ServiceLevelIndicatorMetricConfig.add_member(:composite_sli_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositeSliConfig, name: "CompositeSliConfig"))
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
    ServiceLevelObjective.add_member(:auto_investigation_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "AutoInvestigationEnabled"))
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
    ServiceLevelObjectiveSummary.add_member(:metric_source, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricSource, name: "MetricSource"))
    ServiceLevelObjectiveSummary.add_member(:composite_sli_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositeSliConfig, name: "CompositeSliConfig"))
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
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member", traits: {"smithy.api#length" => {"min" => 1, "max" => 80}}))
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
    UnprocessedStatusEvent.add_member(:instrumentation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstrumentationType, name: "InstrumentationType", traits: {"smithy.api#required" => {}}))
    UnprocessedStatusEvent.add_member(:signal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicInstrumentationSignalType, name: "SignalType", traits: {"smithy.api#required" => {}}))
    UnprocessedStatusEvent.add_member(:location_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "LocationHash", traits: {"smithy.api#length" => {"min" => 16, "max" => 16}, "smithy.api#required" => {}}))
    UnprocessedStatusEvent.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InstrumentationConfigurationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    UnprocessedStatusEvent.add_member(:time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "Time", traits: {"smithy.api#required" => {}}))
    UnprocessedStatusEvent.add_member(:failed_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedStatusEventFailureReason, name: "FailedReason", traits: {"smithy.api#required" => {}}))
    UnprocessedStatusEvent.type = Types::UnprocessedStatusEvent
    UnprocessedStatusEventFailureReason.add_member(:throttled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THROTTLED", traits: {"smithy.api#enumValue" => "THROTTLED"}))
    UnprocessedStatusEventFailureReason.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    UnprocessedStatusEventFailureReason.add_member(:validation_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATION_ERROR", traits: {"smithy.api#enumValue" => "VALIDATION_ERROR"}))
    UnprocessedStatusEventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedStatusEvent, name: "member"))
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
    UpdateServiceLevelObjectiveInput.add_member(:auto_investigation_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "AutoInvestigationEnabled"))
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
      service.traits = {"aws.api#service" => {"sdkId" => "Application Signals", "arnNamespace" => "application-signals", "endpointPrefix" => "application-signals"}, "aws.auth#sigv4" => {"name" => "application-signals"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon CloudWatch Application Signals", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://application-signals-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://application-signals.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 6, "nodes" => "/////wAAAAH/////AAAAAAAAAAYAAAADAAAAAQAAAAQF9eEFAAAAAgAAAAUF9eEFAAAAAwX14QMF9eEEAAAAAwX14QEF9eEC"}}
      service.add_operation(:batch_delete_instrumentation_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationsignals#BatchDeleteInstrumentationConfigurations"
        operation.name = "BatchDeleteInstrumentationConfigurations"
        operation.input = BatchDeleteInstrumentationConfigurationsRequest
        operation.output = BatchDeleteInstrumentationConfigurationsResponse
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/batch-delete-instrumentation-configurations", "code" => 200}}
      end)
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
      service.add_operation(:create_instrumentation_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationsignals#CreateInstrumentationConfiguration"
        operation.name = "CreateInstrumentationConfiguration"
        operation.input = CreateInstrumentationConfigurationRequest
        operation.output = CreateInstrumentationConfigurationResponse
        operation.errors << ConflictException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/create-instrumentation-configuration", "code" => 200}}
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
      service.add_operation(:delete_instrumentation_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationsignals#DeleteInstrumentationConfiguration"
        operation.name = "DeleteInstrumentationConfiguration"
        operation.input = DeleteInstrumentationConfigurationRequest
        operation.output = DeleteInstrumentationConfigurationResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/delete-instrumentation-configuration", "code" => 200}}
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
      service.add_operation(:get_instrumentation_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationsignals#GetInstrumentationConfiguration"
        operation.name = "GetInstrumentationConfiguration"
        operation.input = GetInstrumentationConfigurationRequest
        operation.output = GetInstrumentationConfigurationResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/get-instrumentation-configuration", "code" => 200}}
      end)
      service.add_operation(:get_instrumentation_configuration_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationsignals#GetInstrumentationConfigurationStatus"
        operation.name = "GetInstrumentationConfigurationStatus"
        operation.input = GetInstrumentationConfigurationStatusRequest
        operation.output = GetInstrumentationConfigurationStatusResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/get-instrumentation-configuration-status"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetInstrumentationConfigurationStatus.new
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
      service.add_operation(:list_entity_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationsignals#ListEntityEvents"
        operation.name = "ListEntityEvents"
        operation.input = ListEntityEventsInput
        operation.output = ListEntityEventsOutput
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/events", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEntityEvents.new
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
      service.add_operation(:list_instrumentation_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationsignals#ListInstrumentationConfigurations"
        operation.name = "ListInstrumentationConfigurations"
        operation.input = ListInstrumentationConfigurationsRequest
        operation.output = InstrumentationConfigurationsPage
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-instrumentation-configurations", "code" => 200}}
        operation[:paginator] = Paginators::ListInstrumentationConfigurations.new
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
      service.add_operation(:report_instrumentation_configuration_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationsignals#ReportInstrumentationConfigurationStatus"
        operation.name = "ReportInstrumentationConfigurationStatus"
        operation.input = ReportInstrumentationConfigurationStatusRequest
        operation.output = ReportInstrumentationConfigurationStatusResponse
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/report-instrumentation-configuration-status"}, "smithy.api#idempotent" => {}}
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
