# frozen_string_literal: true

# This is generated code!

module Aws::ComputeOptimizerAutomation
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizerautomation#AccountId", name: "AccountId", traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    AccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizerautomation#AccountIdList", name: "AccountIdList")
    AccountInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#AccountInfo", name: "AccountInfo")
    AccountInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizerautomation#AccountInfoList", name: "AccountInfoList")
    AssociateAccountsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#AssociateAccountsRequest", name: "AssociateAccountsRequest")
    AssociateAccountsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#AssociateAccountsResponse", name: "AssociateAccountsResponse")
    AutomationEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#AutomationEvent", name: "AutomationEvent")
    AutomationEventFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#AutomationEventFilter", name: "AutomationEventFilter")
    AutomationEventFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizerautomation#AutomationEventFilterList", name: "AutomationEventFilterList")
    AutomationEventFilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizerautomation#AutomationEventFilterName", name: "AutomationEventFilterName", traits: {"smithy.api#enum" => [{"value" => "AccountId", "name" => "ACCOUNT_ID"}, {"value" => "ResourceType", "name" => "RESOURCE_TYPE"}, {"value" => "EventType", "name" => "EVENT_TYPE"}, {"value" => "EventStatus", "name" => "EVENT_STATUS"}]})
    AutomationEventStep = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#AutomationEventStep", name: "AutomationEventStep")
    AutomationEventSteps = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizerautomation#AutomationEventSteps", name: "AutomationEventSteps")
    AutomationEventSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#AutomationEventSummary", name: "AutomationEventSummary")
    AutomationEventSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizerautomation#AutomationEventSummaryList", name: "AutomationEventSummaryList")
    AutomationEvents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizerautomation#AutomationEvents", name: "AutomationEvents")
    AutomationRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#AutomationRule", name: "AutomationRule")
    AutomationRuleFilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizerautomation#AutomationRuleFilterName", name: "AutomationRuleFilterName", traits: {"smithy.api#enum" => [{"value" => "Name", "name" => "NAME"}, {"value" => "RecommendedActionType", "name" => "RECOMMENDED_ACTION_TYPE"}, {"value" => "Status", "name" => "STATUS"}, {"value" => "RuleType", "name" => "RULE_TYPE"}, {"value" => "OrganizationConfigurationRuleApplyOrder", "name" => "ORGANIZATION_CONFIGURATION_RULE_APPLY_ORDER"}, {"value" => "AccountId", "name" => "ACCOUNT_ID"}]})
    AutomationRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizerautomation#AutomationRules", name: "AutomationRules")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizerautomation#ClientToken", name: "ClientToken", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_-]{1,64}$"})
    ComparisonOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizerautomation#ComparisonOperator", name: "ComparisonOperator")
    CreateAutomationRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#CreateAutomationRuleRequest", name: "CreateAutomationRuleRequest")
    CreateAutomationRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#CreateAutomationRuleResponse", name: "CreateAutomationRuleResponse")
    Criteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#Criteria", name: "Criteria")
    DeleteAutomationRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#DeleteAutomationRuleRequest", name: "DeleteAutomationRuleRequest")
    DeleteAutomationRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#DeleteAutomationRuleResponse", name: "DeleteAutomationRuleResponse")
    DisassociateAccountsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#DisassociateAccountsRequest", name: "DisassociateAccountsRequest")
    DisassociateAccountsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#DisassociateAccountsResponse", name: "DisassociateAccountsResponse")
    DoubleCriteriaCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#DoubleCriteriaCondition", name: "DoubleCriteriaCondition")
    DoubleCriteriaConditionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizerautomation#DoubleCriteriaConditionList", name: "DoubleCriteriaConditionList")
    DoubleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizerautomation#DoubleList", name: "DoubleList")
    EbsVolume = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#EbsVolume", name: "EbsVolume")
    EbsVolumeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#EbsVolumeConfiguration", name: "EbsVolumeConfiguration")
    EnrollmentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizerautomation#EnrollmentStatus", name: "EnrollmentStatus")
    EstimatedMonthlySavings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#EstimatedMonthlySavings", name: "EstimatedMonthlySavings")
    EventId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizerautomation#EventId", name: "EventId", traits: {"smithy.api#pattern" => "^[0-9A-Za-z]{16}$"})
    EventStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizerautomation#EventStatus", name: "EventStatus")
    EventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizerautomation#EventType", name: "EventType")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#Filter", name: "Filter")
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizerautomation#FilterList", name: "FilterList")
    FilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizerautomation#FilterValue", name: "FilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-_\\.\\*\\?\\s]+$"})
    FilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizerautomation#FilterValues", name: "FilterValues")
    ForbiddenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#ForbiddenException", name: "ForbiddenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    GetAutomationEventRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#GetAutomationEventRequest", name: "GetAutomationEventRequest")
    GetAutomationEventResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#GetAutomationEventResponse", name: "GetAutomationEventResponse")
    GetAutomationRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#GetAutomationRuleRequest", name: "GetAutomationRuleRequest")
    GetAutomationRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#GetAutomationRuleResponse", name: "GetAutomationRuleResponse")
    GetEnrollmentConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#GetEnrollmentConfigurationRequest", name: "GetEnrollmentConfigurationRequest")
    GetEnrollmentConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#GetEnrollmentConfigurationResponse", name: "GetEnrollmentConfigurationResponse")
    IdempotencyTokenInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#IdempotencyTokenInUseException", name: "IdempotencyTokenInUseException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    IdempotentParameterMismatchException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#IdempotentParameterMismatchException", name: "IdempotentParameterMismatchException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    IntegerCriteriaCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#IntegerCriteriaCondition", name: "IntegerCriteriaCondition")
    IntegerCriteriaConditionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizerautomation#IntegerCriteriaConditionList", name: "IntegerCriteriaConditionList")
    IntegerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizerautomation#IntegerList", name: "IntegerList")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidParameterValueException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#InvalidParameterValueException", name: "InvalidParameterValueException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListAccountsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#ListAccountsRequest", name: "ListAccountsRequest")
    ListAccountsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#ListAccountsResponse", name: "ListAccountsResponse")
    ListAutomationEventStepsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#ListAutomationEventStepsRequest", name: "ListAutomationEventStepsRequest")
    ListAutomationEventStepsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#ListAutomationEventStepsResponse", name: "ListAutomationEventStepsResponse")
    ListAutomationEventSummariesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#ListAutomationEventSummariesRequest", name: "ListAutomationEventSummariesRequest")
    ListAutomationEventSummariesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#ListAutomationEventSummariesResponse", name: "ListAutomationEventSummariesResponse")
    ListAutomationEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#ListAutomationEventsRequest", name: "ListAutomationEventsRequest")
    ListAutomationEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#ListAutomationEventsResponse", name: "ListAutomationEventsResponse")
    ListAutomationRulePreviewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#ListAutomationRulePreviewRequest", name: "ListAutomationRulePreviewRequest")
    ListAutomationRulePreviewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#ListAutomationRulePreviewResponse", name: "ListAutomationRulePreviewResponse")
    ListAutomationRulePreviewSummariesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#ListAutomationRulePreviewSummariesRequest", name: "ListAutomationRulePreviewSummariesRequest")
    ListAutomationRulePreviewSummariesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#ListAutomationRulePreviewSummariesResponse", name: "ListAutomationRulePreviewSummariesResponse")
    ListAutomationRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#ListAutomationRulesRequest", name: "ListAutomationRulesRequest")
    ListAutomationRulesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#ListAutomationRulesResponse", name: "ListAutomationRulesResponse")
    ListRecommendedActionSummariesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#ListRecommendedActionSummariesRequest", name: "ListRecommendedActionSummariesRequest")
    ListRecommendedActionSummariesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#ListRecommendedActionSummariesResponse", name: "ListRecommendedActionSummariesResponse")
    ListRecommendedActionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#ListRecommendedActionsRequest", name: "ListRecommendedActionsRequest")
    ListRecommendedActionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#ListRecommendedActionsResponse", name: "ListRecommendedActionsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizerautomation#NextToken", name: "NextToken", traits: {"smithy.api#pattern" => "^[A-Za-z0-9+/=]+$"})
    NotManagementAccountException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#NotManagementAccountException", name: "NotManagementAccountException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    OptInRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#OptInRequiredException", name: "OptInRequiredException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    OrganizationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#OrganizationConfiguration", name: "OrganizationConfiguration")
    OrganizationConfigurationAccountIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizerautomation#OrganizationConfigurationAccountIds", name: "OrganizationConfigurationAccountIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    OrganizationRuleMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizerautomation#OrganizationRuleMode", name: "OrganizationRuleMode")
    OrganizationScope = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#OrganizationScope", name: "OrganizationScope")
    PreviewResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#PreviewResult", name: "PreviewResult")
    PreviewResultSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizerautomation#PreviewResultSummaries", name: "PreviewResultSummaries")
    PreviewResultSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#PreviewResultSummary", name: "PreviewResultSummary")
    PreviewResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizerautomation#PreviewResults", name: "PreviewResults")
    RecommendedAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#RecommendedAction", name: "RecommendedAction")
    RecommendedActionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#RecommendedActionFilter", name: "RecommendedActionFilter")
    RecommendedActionFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizerautomation#RecommendedActionFilterList", name: "RecommendedActionFilterList")
    RecommendedActionFilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizerautomation#RecommendedActionFilterName", name: "RecommendedActionFilterName", traits: {"smithy.api#enum" => [{"value" => "ResourceType", "name" => "RESOURCE_TYPE"}, {"value" => "RecommendedActionType", "name" => "RECOMMENDED_ACTION_TYPE"}, {"value" => "ResourceId", "name" => "RESOURCE_ID"}, {"value" => "LookBackPeriodInDays", "name" => "LOOK_BACK_PERIOD_IN_DAYS"}, {"value" => "CurrentResourceDetailsEbsVolumeType", "name" => "CURRENT_RESOURCE_DETAILS_EBS_VOLUME_TYPE"}, {"value" => "ResourceTagsKey", "name" => "RESOURCE_TAGS_KEY"}, {"value" => "ResourceTagsValue", "name" => "RESOURCE_TAGS_VALUE"}, {"value" => "AccountId", "name" => "ACCOUNT_ID"}, {"value" => "RestartNeeded", "name" => "RESTART_NEEDED"}]})
    RecommendedActionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizerautomation#RecommendedActionId", name: "RecommendedActionId", traits: {"smithy.api#pattern" => "^[0-9A-Za-z]{16}$"})
    RecommendedActionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizerautomation#RecommendedActionSummaries", name: "RecommendedActionSummaries")
    RecommendedActionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#RecommendedActionSummary", name: "RecommendedActionSummary")
    RecommendedActionTotal = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#RecommendedActionTotal", name: "RecommendedActionTotal")
    RecommendedActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizerautomation#RecommendedActionType", name: "RecommendedActionType")
    RecommendedActionTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizerautomation#RecommendedActionTypeList", name: "RecommendedActionTypeList")
    RecommendedActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizerautomation#RecommendedActions", name: "RecommendedActions")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizerautomation#ResourceArn", name: "ResourceArn", traits: {"smithy.api#pattern" => "^arn:aws[a-z0-9-]*:[a-z0-9-]+:[a-z0-9-]*:[0-9]{0,12}:[a-zA-Z0-9/_.-]+$"})
    ResourceDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.computeoptimizerautomation#ResourceDetails", name: "ResourceDetails")
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizerautomation#ResourceId", name: "ResourceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceTagsCriteriaCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#ResourceTagsCriteriaCondition", name: "ResourceTagsCriteriaCondition")
    ResourceTagsCriteriaConditionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizerautomation#ResourceTagsCriteriaConditionList", name: "ResourceTagsCriteriaConditionList")
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizerautomation#ResourceType", name: "ResourceType")
    RollbackAutomationEventRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#RollbackAutomationEventRequest", name: "RollbackAutomationEventRequest")
    RollbackAutomationEventResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#RollbackAutomationEventResponse", name: "RollbackAutomationEventResponse")
    RuleApplyOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizerautomation#RuleApplyOrder", name: "RuleApplyOrder")
    RuleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizerautomation#RuleArn", name: "RuleArn", traits: {"smithy.api#pattern" => "^arn:aws:compute-optimizer::[0-9]{12}:automation-rule/[a-zA-Z0-9_-]+$"})
    RuleDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizerautomation#RuleDescription", name: "RuleDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-\\s@\\.]*$"})
    RuleId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizerautomation#RuleId", name: "RuleId", traits: {"smithy.api#pattern" => "^[0-9A-Za-z]{16}$"})
    RuleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizerautomation#RuleName", name: "RuleName", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]*$"})
    RulePreviewTotal = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#RulePreviewTotal", name: "RulePreviewTotal")
    RuleStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizerautomation#RuleStatus", name: "RuleStatus")
    RuleType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizerautomation#RuleType", name: "RuleType")
    SavingsEstimationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizerautomation#SavingsEstimationMode", name: "SavingsEstimationMode")
    Schedule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#Schedule", name: "Schedule")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    StartAutomationEventRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#StartAutomationEventRequest", name: "StartAutomationEventRequest")
    StartAutomationEventResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#StartAutomationEventResponse", name: "StartAutomationEventResponse")
    StepId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizerautomation#StepId", name: "StepId", traits: {"smithy.api#pattern" => "^[0-9A-Za-z]{16}$"})
    StepStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizerautomation#StepStatus", name: "StepStatus")
    StepType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizerautomation#StepType", name: "StepType")
    StringCriteriaCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#StringCriteriaCondition", name: "StringCriteriaCondition")
    StringCriteriaConditionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizerautomation#StringCriteriaConditionList", name: "StringCriteriaConditionList")
    StringCriteriaValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizerautomation#StringCriteriaValue", name: "StringCriteriaValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\w\\s\\.\\-\\:\\/\\=\\+\\@\\*\\?]+$"})
    StringCriteriaValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizerautomation#StringCriteriaValues", name: "StringCriteriaValues")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizerautomation#StringList", name: "StringList")
    SummaryDimension = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#SummaryDimension", name: "SummaryDimension")
    SummaryDimensionKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizerautomation#SummaryDimensionKey", name: "SummaryDimensionKey", traits: {"smithy.api#enum" => [{"value" => "EventStatus", "name" => "EVENT_STATUS"}]})
    SummaryDimensions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizerautomation#SummaryDimensions", name: "SummaryDimensions")
    SummaryTotals = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#SummaryTotals", name: "SummaryTotals")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizerautomation#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w\\s\\.\\-\\:\\/\\=\\+\\@]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizerautomation#TagKeyList", name: "TagKeyList")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizerautomation#TagList", name: "TagList", traits: {"smithy.api#length" => {"max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizerautomation#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^[\\w\\s\\.\\-\\:\\/\\=\\+\\@]*$"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimePeriod = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#TimePeriod", name: "TimePeriod")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateAutomationRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#UpdateAutomationRuleRequest", name: "UpdateAutomationRuleRequest")
    UpdateAutomationRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#UpdateAutomationRuleResponse", name: "UpdateAutomationRuleResponse")
    UpdateEnrollmentConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#UpdateEnrollmentConfigurationRequest", name: "UpdateEnrollmentConfigurationRequest")
    UpdateEnrollmentConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizerautomation#UpdateEnrollmentConfigurationResponse", name: "UpdateEnrollmentConfigurationResponse")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member"))
    AccountInfo.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    AccountInfo.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EnrollmentStatus, name: "status", traits: {"smithy.api#required" => {}}))
    AccountInfo.add_member(:organization_rule_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationRuleMode, name: "organizationRuleMode", traits: {"smithy.api#required" => {}}))
    AccountInfo.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    AccountInfo.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastUpdatedTimestamp", traits: {"smithy.api#required" => {}}))
    AccountInfo.type = Types::AccountInfo
    AccountInfoList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountInfo, name: "member"))
    AssociateAccountsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "accountIds", traits: {"smithy.api#required" => {}}))
    AssociateAccountsRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    AssociateAccountsRequest.type = Types::AssociateAccountsRequest
    AssociateAccountsResponse.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "accountIds"))
    AssociateAccountsResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "errors"))
    AssociateAccountsResponse.type = Types::AssociateAccountsResponse
    AutomationEvent.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "eventId"))
    AutomationEvent.add_member(:event_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "eventDescription"))
    AutomationEvent.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, name: "eventType"))
    AutomationEvent.add_member(:event_status, ::Smithy::Schema::Shapes::MemberShape.new(target: EventStatus, name: "eventStatus"))
    AutomationEvent.add_member(:event_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "eventStatusReason"))
    AutomationEvent.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn"))
    AutomationEvent.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId"))
    AutomationEvent.add_member(:recommended_action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionId, name: "recommendedActionId"))
    AutomationEvent.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    AutomationEvent.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "region"))
    AutomationEvent.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "ruleId"))
    AutomationEvent.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    AutomationEvent.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdTimestamp"))
    AutomationEvent.add_member(:completed_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "completedTimestamp"))
    AutomationEvent.add_member(:estimated_monthly_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: EstimatedMonthlySavings, name: "estimatedMonthlySavings"))
    AutomationEvent.type = Types::AutomationEvent
    AutomationEventFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationEventFilterName, name: "name", traits: {"smithy.api#required" => {}}))
    AutomationEventFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "values", traits: {"smithy.api#required" => {}}))
    AutomationEventFilter.type = Types::AutomationEventFilter
    AutomationEventFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationEventFilter, name: "member"))
    AutomationEventStep.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "eventId"))
    AutomationEventStep.add_member(:step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "stepId"))
    AutomationEventStep.add_member(:step_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StepType, name: "stepType"))
    AutomationEventStep.add_member(:step_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StepStatus, name: "stepStatus"))
    AutomationEventStep.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId"))
    AutomationEventStep.add_member(:start_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTimestamp"))
    AutomationEventStep.add_member(:completed_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "completedTimestamp"))
    AutomationEventStep.add_member(:estimated_monthly_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: EstimatedMonthlySavings, name: "estimatedMonthlySavings"))
    AutomationEventStep.type = Types::AutomationEventStep
    AutomationEventSteps.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationEventStep, name: "member"))
    AutomationEventSummary.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    AutomationEventSummary.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: SummaryDimensions, name: "dimensions"))
    AutomationEventSummary.add_member(:time_period, ::Smithy::Schema::Shapes::MemberShape.new(target: TimePeriod, name: "timePeriod"))
    AutomationEventSummary.add_member(:total, ::Smithy::Schema::Shapes::MemberShape.new(target: SummaryTotals, name: "total"))
    AutomationEventSummary.type = Types::AutomationEventSummary
    AutomationEventSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationEventSummary, name: "member"))
    AutomationEvents.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationEvent, name: "member"))
    AutomationRule.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "ruleArn"))
    AutomationRule.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "ruleId"))
    AutomationRule.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "name"))
    AutomationRule.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    AutomationRule.add_member(:rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleType, name: "ruleType"))
    AutomationRule.add_member(:rule_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "ruleRevision"))
    AutomationRule.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    AutomationRule.add_member(:organization_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConfiguration, name: "organizationConfiguration"))
    AutomationRule.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "priority"))
    AutomationRule.add_member(:recommended_action_types, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionTypeList, name: "recommendedActionTypes"))
    AutomationRule.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: Schedule, name: "schedule"))
    AutomationRule.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleStatus, name: "status"))
    AutomationRule.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdTimestamp"))
    AutomationRule.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastUpdatedTimestamp"))
    AutomationRule.type = Types::AutomationRule
    AutomationRules.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationRule, name: "member"))
    ComparisonOperator.add_member(:string_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING_EQUALS", traits: {"smithy.api#enumValue" => "StringEquals"}))
    ComparisonOperator.add_member(:string_not_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING_NOT_EQUALS", traits: {"smithy.api#enumValue" => "StringNotEquals"}))
    ComparisonOperator.add_member(:string_equals_ignore_case, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING_EQUALS_IGNORE_CASE", traits: {"smithy.api#enumValue" => "StringEqualsIgnoreCase"}))
    ComparisonOperator.add_member(:string_not_equals_ignore_case, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING_NOT_EQUALS_IGNORE_CASE", traits: {"smithy.api#enumValue" => "StringNotEqualsIgnoreCase"}))
    ComparisonOperator.add_member(:string_like, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING_LIKE", traits: {"smithy.api#enumValue" => "StringLike"}))
    ComparisonOperator.add_member(:string_not_like, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING_NOT_LIKE", traits: {"smithy.api#enumValue" => "StringNotLike"}))
    ComparisonOperator.add_member(:numeric_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMERIC_EQUALS", traits: {"smithy.api#enumValue" => "NumericEquals"}))
    ComparisonOperator.add_member(:numeric_not_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMERIC_NOT_EQUALS", traits: {"smithy.api#enumValue" => "NumericNotEquals"}))
    ComparisonOperator.add_member(:numeric_less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMERIC_LESS_THAN", traits: {"smithy.api#enumValue" => "NumericLessThan"}))
    ComparisonOperator.add_member(:numeric_less_than_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMERIC_LESS_THAN_EQUALS", traits: {"smithy.api#enumValue" => "NumericLessThanEquals"}))
    ComparisonOperator.add_member(:numeric_greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMERIC_GREATER_THAN", traits: {"smithy.api#enumValue" => "NumericGreaterThan"}))
    ComparisonOperator.add_member(:numeric_greater_than_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMERIC_GREATER_THAN_EQUALS", traits: {"smithy.api#enumValue" => "NumericGreaterThanEquals"}))
    ComparisonOperator.add_member(:string_equals_if_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING_EQUALS_IF_EXISTS", traits: {"smithy.api#enumValue" => "StringEqualsIfExists"}))
    ComparisonOperator.add_member(:string_not_equals_if_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING_NOT_EQUALS_IF_EXISTS", traits: {"smithy.api#enumValue" => "StringNotEqualsIfExists"}))
    ComparisonOperator.add_member(:string_equals_ignore_case_if_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING_EQUALS_IGNORE_CASE_IF_EXISTS", traits: {"smithy.api#enumValue" => "StringEqualsIgnoreCaseIfExists"}))
    ComparisonOperator.add_member(:string_not_equals_ignore_case_if_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING_NOT_EQUALS_IGNORE_CASE_IF_EXISTS", traits: {"smithy.api#enumValue" => "StringNotEqualsIgnoreCaseIfExists"}))
    ComparisonOperator.add_member(:string_like_if_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING_LIKE_IF_EXISTS", traits: {"smithy.api#enumValue" => "StringLikeIfExists"}))
    ComparisonOperator.add_member(:string_not_like_if_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING_NOT_LIKE_IF_EXISTS", traits: {"smithy.api#enumValue" => "StringNotLikeIfExists"}))
    ComparisonOperator.add_member(:numeric_equals_if_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMERIC_EQUALS_IF_EXISTS", traits: {"smithy.api#enumValue" => "NumericEqualsIfExists"}))
    ComparisonOperator.add_member(:numeric_not_equals_if_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMERIC_NOT_EQUALS_IF_EXISTS", traits: {"smithy.api#enumValue" => "NumericNotEqualsIfExists"}))
    ComparisonOperator.add_member(:numeric_less_than_if_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMERIC_LESS_THAN_IF_EXISTS", traits: {"smithy.api#enumValue" => "NumericLessThanIfExists"}))
    ComparisonOperator.add_member(:numeric_less_than_equals_if_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMERIC_LESS_THAN_EQUALS_IF_EXISTS", traits: {"smithy.api#enumValue" => "NumericLessThanEqualsIfExists"}))
    ComparisonOperator.add_member(:numeric_greater_than_if_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMERIC_GREATER_THAN_IF_EXISTS", traits: {"smithy.api#enumValue" => "NumericGreaterThanIfExists"}))
    ComparisonOperator.add_member(:numeric_greater_than_equals_if_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMERIC_GREATER_THAN_EQUALS_IF_EXISTS", traits: {"smithy.api#enumValue" => "NumericGreaterThanEqualsIfExists"}))
    CreateAutomationRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateAutomationRuleRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleDescription, name: "description"))
    CreateAutomationRuleRequest.add_member(:rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleType, name: "ruleType", traits: {"smithy.api#required" => {}}))
    CreateAutomationRuleRequest.add_member(:organization_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConfiguration, name: "organizationConfiguration"))
    CreateAutomationRuleRequest.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "priority"))
    CreateAutomationRuleRequest.add_member(:recommended_action_types, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionTypeList, name: "recommendedActionTypes", traits: {"smithy.api#required" => {}}))
    CreateAutomationRuleRequest.add_member(:criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: Criteria, name: "criteria"))
    CreateAutomationRuleRequest.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: Schedule, name: "schedule", traits: {"smithy.api#required" => {}}))
    CreateAutomationRuleRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateAutomationRuleRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateAutomationRuleRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAutomationRuleRequest.type = Types::CreateAutomationRuleRequest
    CreateAutomationRuleResponse.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "ruleArn"))
    CreateAutomationRuleResponse.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "ruleId"))
    CreateAutomationRuleResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "name"))
    CreateAutomationRuleResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    CreateAutomationRuleResponse.add_member(:rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleType, name: "ruleType"))
    CreateAutomationRuleResponse.add_member(:rule_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "ruleRevision"))
    CreateAutomationRuleResponse.add_member(:organization_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConfiguration, name: "organizationConfiguration"))
    CreateAutomationRuleResponse.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "priority"))
    CreateAutomationRuleResponse.add_member(:recommended_action_types, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionTypeList, name: "recommendedActionTypes"))
    CreateAutomationRuleResponse.add_member(:criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: Criteria, name: "criteria"))
    CreateAutomationRuleResponse.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: Schedule, name: "schedule"))
    CreateAutomationRuleResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleStatus, name: "status"))
    CreateAutomationRuleResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateAutomationRuleResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdTimestamp"))
    CreateAutomationRuleResponse.type = Types::CreateAutomationRuleResponse
    Criteria.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: StringCriteriaConditionList, name: "region"))
    Criteria.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StringCriteriaConditionList, name: "resourceArn"))
    Criteria.add_member(:ebs_volume_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringCriteriaConditionList, name: "ebsVolumeType"))
    Criteria.add_member(:ebs_volume_size_in_gib, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerCriteriaConditionList, name: "ebsVolumeSizeInGib"))
    Criteria.add_member(:estimated_monthly_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleCriteriaConditionList, name: "estimatedMonthlySavings"))
    Criteria.add_member(:resource_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagsCriteriaConditionList, name: "resourceTag"))
    Criteria.add_member(:look_back_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerCriteriaConditionList, name: "lookBackPeriodInDays"))
    Criteria.add_member(:restart_needed, ::Smithy::Schema::Shapes::MemberShape.new(target: StringCriteriaConditionList, name: "restartNeeded"))
    Criteria.type = Types::Criteria
    DeleteAutomationRuleRequest.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "ruleArn", traits: {"smithy.api#required" => {}}))
    DeleteAutomationRuleRequest.add_member(:rule_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "ruleRevision", traits: {"smithy.api#required" => {}}))
    DeleteAutomationRuleRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteAutomationRuleRequest.type = Types::DeleteAutomationRuleRequest
    DeleteAutomationRuleResponse.type = Types::DeleteAutomationRuleResponse
    DisassociateAccountsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "accountIds", traits: {"smithy.api#required" => {}}))
    DisassociateAccountsRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DisassociateAccountsRequest.type = Types::DisassociateAccountsRequest
    DisassociateAccountsResponse.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "accountIds"))
    DisassociateAccountsResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "errors"))
    DisassociateAccountsResponse.type = Types::DisassociateAccountsResponse
    DoubleCriteriaCondition.add_member(:comparison, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparisonOperator, name: "comparison"))
    DoubleCriteriaCondition.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleList, name: "values"))
    DoubleCriteriaCondition.type = Types::DoubleCriteriaCondition
    DoubleCriteriaConditionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleCriteriaCondition, name: "member"))
    DoubleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "member"))
    EbsVolume.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsVolumeConfiguration, name: "configuration"))
    EbsVolume.type = Types::EbsVolume
    EbsVolumeConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "type"))
    EbsVolumeConfiguration.add_member(:size_in_gib, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "sizeInGib"))
    EbsVolumeConfiguration.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "iops"))
    EbsVolumeConfiguration.add_member(:throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "throughput"))
    EbsVolumeConfiguration.type = Types::EbsVolumeConfiguration
    EnrollmentStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "Active"}))
    EnrollmentStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "Inactive"}))
    EnrollmentStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "Pending"}))
    EnrollmentStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    EstimatedMonthlySavings.add_member(:currency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "currency", traits: {"smithy.api#required" => {}}))
    EstimatedMonthlySavings.add_member(:before_discount_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "beforeDiscountSavings", traits: {"smithy.api#required" => {}}))
    EstimatedMonthlySavings.add_member(:after_discount_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "afterDiscountSavings", traits: {"smithy.api#required" => {}}))
    EstimatedMonthlySavings.add_member(:savings_estimation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsEstimationMode, name: "savingsEstimationMode", traits: {"smithy.api#required" => {}}))
    EstimatedMonthlySavings.type = Types::EstimatedMonthlySavings
    EventStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "Ready"}))
    EventStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    EventStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "Complete"}))
    EventStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    EventStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "Cancelled"}))
    EventStatus.add_member(:rollback_ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK_READY", traits: {"smithy.api#enumValue" => "RollbackReady"}))
    EventStatus.add_member(:rollback_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK_IN_PROGRESS", traits: {"smithy.api#enumValue" => "RollbackInProgress"}))
    EventStatus.add_member(:rollback_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK_COMPLETE", traits: {"smithy.api#enumValue" => "RollbackComplete"}))
    EventStatus.add_member(:rollback_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK_FAILED", traits: {"smithy.api#enumValue" => "RollbackFailed"}))
    EventType.add_member(:snapshot_and_delete_unattached_ebs_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNAPSHOT_AND_DELETE_UNATTACHED_EBS_VOLUME", traits: {"smithy.api#enumValue" => "SnapshotAndDeleteUnattachedEbsVolume"}))
    EventType.add_member(:upgrade_ebs_volume_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPGRADE_EBS_VOLUME_TYPE", traits: {"smithy.api#enumValue" => "UpgradeEbsVolumeType"}))
    Filter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationRuleFilterName, name: "name", traits: {"smithy.api#required" => {}}))
    Filter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "values", traits: {"smithy.api#required" => {}}))
    Filter.type = Types::Filter
    FilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member"))
    FilterValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValue, name: "member"))
    ForbiddenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ForbiddenException.type = Types::ForbiddenException
    GetAutomationEventRequest.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "eventId", traits: {"smithy.api#required" => {}}))
    GetAutomationEventRequest.type = Types::GetAutomationEventRequest
    GetAutomationEventResponse.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "eventId"))
    GetAutomationEventResponse.add_member(:event_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "eventDescription"))
    GetAutomationEventResponse.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, name: "eventType"))
    GetAutomationEventResponse.add_member(:event_status, ::Smithy::Schema::Shapes::MemberShape.new(target: EventStatus, name: "eventStatus"))
    GetAutomationEventResponse.add_member(:event_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "eventStatusReason"))
    GetAutomationEventResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn"))
    GetAutomationEventResponse.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId"))
    GetAutomationEventResponse.add_member(:recommended_action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionId, name: "recommendedActionId"))
    GetAutomationEventResponse.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    GetAutomationEventResponse.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "region"))
    GetAutomationEventResponse.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "ruleId"))
    GetAutomationEventResponse.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    GetAutomationEventResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdTimestamp"))
    GetAutomationEventResponse.add_member(:completed_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "completedTimestamp"))
    GetAutomationEventResponse.add_member(:estimated_monthly_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: EstimatedMonthlySavings, name: "estimatedMonthlySavings"))
    GetAutomationEventResponse.type = Types::GetAutomationEventResponse
    GetAutomationRuleRequest.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "ruleArn", traits: {"smithy.api#required" => {}}))
    GetAutomationRuleRequest.type = Types::GetAutomationRuleRequest
    GetAutomationRuleResponse.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "ruleArn"))
    GetAutomationRuleResponse.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "ruleId"))
    GetAutomationRuleResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "name"))
    GetAutomationRuleResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    GetAutomationRuleResponse.add_member(:rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleType, name: "ruleType"))
    GetAutomationRuleResponse.add_member(:rule_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "ruleRevision"))
    GetAutomationRuleResponse.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    GetAutomationRuleResponse.add_member(:organization_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConfiguration, name: "organizationConfiguration"))
    GetAutomationRuleResponse.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "priority"))
    GetAutomationRuleResponse.add_member(:recommended_action_types, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionTypeList, name: "recommendedActionTypes"))
    GetAutomationRuleResponse.add_member(:criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: Criteria, name: "criteria"))
    GetAutomationRuleResponse.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: Schedule, name: "schedule"))
    GetAutomationRuleResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleStatus, name: "status"))
    GetAutomationRuleResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    GetAutomationRuleResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdTimestamp"))
    GetAutomationRuleResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastUpdatedTimestamp"))
    GetAutomationRuleResponse.type = Types::GetAutomationRuleResponse
    GetEnrollmentConfigurationRequest.type = Types::GetEnrollmentConfigurationRequest
    GetEnrollmentConfigurationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EnrollmentStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetEnrollmentConfigurationResponse.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    GetEnrollmentConfigurationResponse.add_member(:organization_rule_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationRuleMode, name: "organizationRuleMode"))
    GetEnrollmentConfigurationResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastUpdatedTimestamp"))
    GetEnrollmentConfigurationResponse.type = Types::GetEnrollmentConfigurationResponse
    IdempotencyTokenInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    IdempotencyTokenInUseException.type = Types::IdempotencyTokenInUseException
    IdempotentParameterMismatchException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    IdempotentParameterMismatchException.type = Types::IdempotentParameterMismatchException
    IntegerCriteriaCondition.add_member(:comparison, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparisonOperator, name: "comparison"))
    IntegerCriteriaCondition.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerList, name: "values"))
    IntegerCriteriaCondition.type = Types::IntegerCriteriaCondition
    IntegerCriteriaConditionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerCriteriaCondition, name: "member"))
    IntegerList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "member"))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    InternalServerException.type = Types::InternalServerException
    InvalidParameterValueException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    InvalidParameterValueException.type = Types::InvalidParameterValueException
    ListAccountsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListAccountsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAccountsRequest.type = Types::ListAccountsRequest
    ListAccountsResponse.add_member(:accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountInfoList, name: "accounts", traits: {"smithy.api#required" => {}}))
    ListAccountsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAccountsResponse.type = Types::ListAccountsResponse
    ListAutomationEventStepsRequest.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "eventId", traits: {"smithy.api#required" => {}}))
    ListAutomationEventStepsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListAutomationEventStepsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAutomationEventStepsRequest.type = Types::ListAutomationEventStepsRequest
    ListAutomationEventStepsResponse.add_member(:automation_event_steps, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationEventSteps, name: "automationEventSteps"))
    ListAutomationEventStepsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAutomationEventStepsResponse.type = Types::ListAutomationEventStepsResponse
    ListAutomationEventSummariesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationEventFilterList, name: "filters"))
    ListAutomationEventSummariesRequest.add_member(:start_date_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "startDateInclusive"))
    ListAutomationEventSummariesRequest.add_member(:end_date_exclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "endDateExclusive"))
    ListAutomationEventSummariesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListAutomationEventSummariesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAutomationEventSummariesRequest.type = Types::ListAutomationEventSummariesRequest
    ListAutomationEventSummariesResponse.add_member(:automation_event_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationEventSummaryList, name: "automationEventSummaries"))
    ListAutomationEventSummariesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAutomationEventSummariesResponse.type = Types::ListAutomationEventSummariesResponse
    ListAutomationEventsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationEventFilterList, name: "filters"))
    ListAutomationEventsRequest.add_member(:start_time_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTimeInclusive"))
    ListAutomationEventsRequest.add_member(:end_time_exclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTimeExclusive"))
    ListAutomationEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListAutomationEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAutomationEventsRequest.type = Types::ListAutomationEventsRequest
    ListAutomationEventsResponse.add_member(:automation_events, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationEvents, name: "automationEvents"))
    ListAutomationEventsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAutomationEventsResponse.type = Types::ListAutomationEventsResponse
    ListAutomationRulePreviewRequest.add_member(:rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleType, name: "ruleType", traits: {"smithy.api#required" => {}}))
    ListAutomationRulePreviewRequest.add_member(:organization_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationScope, name: "organizationScope"))
    ListAutomationRulePreviewRequest.add_member(:recommended_action_types, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionTypeList, name: "recommendedActionTypes", traits: {"smithy.api#required" => {}}))
    ListAutomationRulePreviewRequest.add_member(:criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: Criteria, name: "criteria"))
    ListAutomationRulePreviewRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListAutomationRulePreviewRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAutomationRulePreviewRequest.type = Types::ListAutomationRulePreviewRequest
    ListAutomationRulePreviewResponse.add_member(:preview_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PreviewResults, name: "previewResults"))
    ListAutomationRulePreviewResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAutomationRulePreviewResponse.type = Types::ListAutomationRulePreviewResponse
    ListAutomationRulePreviewSummariesRequest.add_member(:rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleType, name: "ruleType", traits: {"smithy.api#required" => {}}))
    ListAutomationRulePreviewSummariesRequest.add_member(:organization_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationScope, name: "organizationScope"))
    ListAutomationRulePreviewSummariesRequest.add_member(:recommended_action_types, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionTypeList, name: "recommendedActionTypes", traits: {"smithy.api#required" => {}}))
    ListAutomationRulePreviewSummariesRequest.add_member(:criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: Criteria, name: "criteria"))
    ListAutomationRulePreviewSummariesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListAutomationRulePreviewSummariesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAutomationRulePreviewSummariesRequest.type = Types::ListAutomationRulePreviewSummariesRequest
    ListAutomationRulePreviewSummariesResponse.add_member(:preview_result_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: PreviewResultSummaries, name: "previewResultSummaries"))
    ListAutomationRulePreviewSummariesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAutomationRulePreviewSummariesResponse.type = Types::ListAutomationRulePreviewSummariesResponse
    ListAutomationRulesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "filters"))
    ListAutomationRulesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListAutomationRulesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAutomationRulesRequest.type = Types::ListAutomationRulesRequest
    ListAutomationRulesResponse.add_member(:automation_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationRules, name: "automationRules"))
    ListAutomationRulesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAutomationRulesResponse.type = Types::ListAutomationRulesResponse
    ListRecommendedActionSummariesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionFilterList, name: "filters"))
    ListRecommendedActionSummariesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListRecommendedActionSummariesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListRecommendedActionSummariesRequest.type = Types::ListRecommendedActionSummariesRequest
    ListRecommendedActionSummariesResponse.add_member(:recommended_action_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionSummaries, name: "recommendedActionSummaries"))
    ListRecommendedActionSummariesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListRecommendedActionSummariesResponse.type = Types::ListRecommendedActionSummariesResponse
    ListRecommendedActionsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionFilterList, name: "filters"))
    ListRecommendedActionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListRecommendedActionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListRecommendedActionsRequest.type = Types::ListRecommendedActionsRequest
    ListRecommendedActionsResponse.add_member(:recommended_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActions, name: "recommendedActions"))
    ListRecommendedActionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListRecommendedActionsResponse.type = Types::ListRecommendedActionsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    NotManagementAccountException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    NotManagementAccountException.type = Types::NotManagementAccountException
    OptInRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    OptInRequiredException.type = Types::OptInRequiredException
    OrganizationConfiguration.add_member(:rule_apply_order, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleApplyOrder, name: "ruleApplyOrder"))
    OrganizationConfiguration.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConfigurationAccountIds, name: "accountIds"))
    OrganizationConfiguration.type = Types::OrganizationConfiguration
    OrganizationConfigurationAccountIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member"))
    OrganizationRuleMode.add_member(:any_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANY_ALLOWED", traits: {"smithy.api#enumValue" => "AnyAllowed"}))
    OrganizationRuleMode.add_member(:none_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE_ALLOWED", traits: {"smithy.api#enumValue" => "NoneAllowed"}))
    OrganizationScope.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConfigurationAccountIds, name: "accountIds"))
    OrganizationScope.type = Types::OrganizationScope
    PreviewResult.add_member(:recommended_action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionId, name: "recommendedActionId"))
    PreviewResult.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn"))
    PreviewResult.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId"))
    PreviewResult.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    PreviewResult.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "region"))
    PreviewResult.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    PreviewResult.add_member(:look_back_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "lookBackPeriodInDays"))
    PreviewResult.add_member(:recommended_action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionType, name: "recommendedActionType"))
    PreviewResult.add_member(:current_resource_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "currentResourceSummary"))
    PreviewResult.add_member(:current_resource_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDetails, name: "currentResourceDetails"))
    PreviewResult.add_member(:recommended_resource_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recommendedResourceSummary"))
    PreviewResult.add_member(:recommended_resource_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDetails, name: "recommendedResourceDetails"))
    PreviewResult.add_member(:restart_needed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "restartNeeded"))
    PreviewResult.add_member(:estimated_monthly_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: EstimatedMonthlySavings, name: "estimatedMonthlySavings"))
    PreviewResult.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "resourceTags"))
    PreviewResult.type = Types::PreviewResult
    PreviewResultSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PreviewResultSummary, name: "member"))
    PreviewResultSummary.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key", traits: {"smithy.api#required" => {}}))
    PreviewResultSummary.add_member(:total, ::Smithy::Schema::Shapes::MemberShape.new(target: RulePreviewTotal, name: "total", traits: {"smithy.api#required" => {}}))
    PreviewResultSummary.type = Types::PreviewResultSummary
    PreviewResults.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PreviewResult, name: "member"))
    RecommendedAction.add_member(:recommended_action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionId, name: "recommendedActionId"))
    RecommendedAction.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn"))
    RecommendedAction.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId"))
    RecommendedAction.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    RecommendedAction.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "region"))
    RecommendedAction.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    RecommendedAction.add_member(:look_back_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "lookBackPeriodInDays"))
    RecommendedAction.add_member(:recommended_action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionType, name: "recommendedActionType"))
    RecommendedAction.add_member(:current_resource_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "currentResourceSummary"))
    RecommendedAction.add_member(:current_resource_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDetails, name: "currentResourceDetails"))
    RecommendedAction.add_member(:recommended_resource_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recommendedResourceSummary"))
    RecommendedAction.add_member(:recommended_resource_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDetails, name: "recommendedResourceDetails"))
    RecommendedAction.add_member(:restart_needed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "restartNeeded"))
    RecommendedAction.add_member(:estimated_monthly_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: EstimatedMonthlySavings, name: "estimatedMonthlySavings"))
    RecommendedAction.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "resourceTags"))
    RecommendedAction.type = Types::RecommendedAction
    RecommendedActionFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionFilterName, name: "name", traits: {"smithy.api#required" => {}}))
    RecommendedActionFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "values", traits: {"smithy.api#required" => {}}))
    RecommendedActionFilter.type = Types::RecommendedActionFilter
    RecommendedActionFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionFilter, name: "member"))
    RecommendedActionSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionSummary, name: "member"))
    RecommendedActionSummary.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key", traits: {"smithy.api#required" => {}}))
    RecommendedActionSummary.add_member(:total, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionTotal, name: "total", traits: {"smithy.api#required" => {}}))
    RecommendedActionSummary.type = Types::RecommendedActionSummary
    RecommendedActionTotal.add_member(:recommended_action_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "recommendedActionCount", traits: {"smithy.api#required" => {}}))
    RecommendedActionTotal.add_member(:estimated_monthly_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: EstimatedMonthlySavings, name: "estimatedMonthlySavings", traits: {"smithy.api#required" => {}}))
    RecommendedActionTotal.type = Types::RecommendedActionTotal
    RecommendedActionType.add_member(:snapshot_and_delete_unattached_ebs_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNAPSHOT_AND_DELETE_UNATTACHED_EBS_VOLUME", traits: {"smithy.api#enumValue" => "SnapshotAndDeleteUnattachedEbsVolume"}))
    RecommendedActionType.add_member(:upgrade_ebs_volume_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPGRADE_EBS_VOLUME_TYPE", traits: {"smithy.api#enumValue" => "UpgradeEbsVolumeType"}))
    RecommendedActionTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionType, name: "member"))
    RecommendedActions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedAction, name: "member"))
    ResourceDetails.add_member(:ebs_volume, Types::ResourceDetails::EbsVolume, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsVolume, name: "ebsVolume"))
    ResourceDetails.add_member(:unknown, Types::ResourceDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ResourceDetails.type = Types::ResourceDetails
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceTagsCriteriaCondition.add_member(:comparison, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparisonOperator, name: "comparison"))
    ResourceTagsCriteriaCondition.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: StringCriteriaValue, name: "key"))
    ResourceTagsCriteriaCondition.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: StringCriteriaValues, name: "values"))
    ResourceTagsCriteriaCondition.type = Types::ResourceTagsCriteriaCondition
    ResourceTagsCriteriaConditionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagsCriteriaCondition, name: "member"))
    ResourceType.add_member(:ebs_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_VOLUME", traits: {"smithy.api#enumValue" => "EbsVolume"}))
    RollbackAutomationEventRequest.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "eventId", traits: {"smithy.api#required" => {}}))
    RollbackAutomationEventRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    RollbackAutomationEventRequest.type = Types::RollbackAutomationEventRequest
    RollbackAutomationEventResponse.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "eventId"))
    RollbackAutomationEventResponse.add_member(:event_status, ::Smithy::Schema::Shapes::MemberShape.new(target: EventStatus, name: "eventStatus"))
    RollbackAutomationEventResponse.type = Types::RollbackAutomationEventResponse
    RuleApplyOrder.add_member(:before_account_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEFORE_ACCOUNT_RULES", traits: {"smithy.api#enumValue" => "BeforeAccountRules"}))
    RuleApplyOrder.add_member(:after_account_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_ACCOUNT_RULES", traits: {"smithy.api#enumValue" => "AfterAccountRules"}))
    RulePreviewTotal.add_member(:recommended_action_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "recommendedActionCount", traits: {"smithy.api#required" => {}}))
    RulePreviewTotal.add_member(:estimated_monthly_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: EstimatedMonthlySavings, name: "estimatedMonthlySavings", traits: {"smithy.api#required" => {}}))
    RulePreviewTotal.type = Types::RulePreviewTotal
    RuleStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "Active"}))
    RuleStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "Inactive"}))
    RuleType.add_member(:organizational_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATIONAL_RULE", traits: {"smithy.api#enumValue" => "OrganizationRule"}))
    RuleType.add_member(:account_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_RULE", traits: {"smithy.api#enumValue" => "AccountRule"}))
    SavingsEstimationMode.add_member(:before_discount, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEFORE_DISCOUNT", traits: {"smithy.api#enumValue" => "BeforeDiscount"}))
    SavingsEstimationMode.add_member(:after_discount, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_DISCOUNT", traits: {"smithy.api#enumValue" => "AfterDiscount"}))
    Schedule.add_member(:schedule_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "scheduleExpression"))
    Schedule.add_member(:schedule_expression_timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "scheduleExpressionTimezone"))
    Schedule.add_member(:execution_window_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "executionWindowInMinutes", traits: {"smithy.api#range" => {"min" => 60, "max" => 1440}}))
    Schedule.type = Types::Schedule
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    StartAutomationEventRequest.add_member(:recommended_action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionId, name: "recommendedActionId", traits: {"smithy.api#required" => {}}))
    StartAutomationEventRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartAutomationEventRequest.type = Types::StartAutomationEventRequest
    StartAutomationEventResponse.add_member(:recommended_action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionId, name: "recommendedActionId"))
    StartAutomationEventResponse.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "eventId"))
    StartAutomationEventResponse.add_member(:event_status, ::Smithy::Schema::Shapes::MemberShape.new(target: EventStatus, name: "eventStatus"))
    StartAutomationEventResponse.type = Types::StartAutomationEventResponse
    StepStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "Ready"}))
    StepStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    StepStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "Complete"}))
    StepStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    StepType.add_member(:create_ebs_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_EBS_SNAPSHOT", traits: {"smithy.api#enumValue" => "CreateEbsSnapshot"}))
    StepType.add_member(:delete_ebs_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_EBS_VOLUME", traits: {"smithy.api#enumValue" => "DeleteEbsVolume"}))
    StepType.add_member(:modify_ebs_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODIFY_EBS_VOLUME", traits: {"smithy.api#enumValue" => "ModifyEbsVolume"}))
    StepType.add_member(:create_ebs_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_EBS_VOLUME", traits: {"smithy.api#enumValue" => "CreateEbsVolume"}))
    StringCriteriaCondition.add_member(:comparison, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparisonOperator, name: "comparison"))
    StringCriteriaCondition.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: StringCriteriaValues, name: "values"))
    StringCriteriaCondition.type = Types::StringCriteriaCondition
    StringCriteriaConditionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StringCriteriaCondition, name: "member"))
    StringCriteriaValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StringCriteriaValue, name: "member"))
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    SummaryDimension.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: SummaryDimensionKey, name: "key", traits: {"smithy.api#required" => {}}))
    SummaryDimension.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value", traits: {"smithy.api#required" => {}}))
    SummaryDimension.type = Types::SummaryDimension
    SummaryDimensions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SummaryDimension, name: "member"))
    SummaryTotals.add_member(:automation_event_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "automationEventCount"))
    SummaryTotals.add_member(:estimated_monthly_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: EstimatedMonthlySavings, name: "estimatedMonthlySavings"))
    SummaryTotals.type = Types::SummaryTotals
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:rule_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "ruleRevision", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    TimePeriod.add_member(:start_time_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTimeInclusive"))
    TimePeriod.add_member(:end_time_exclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTimeExclusive"))
    TimePeriod.type = Types::TimePeriod
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:rule_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "ruleRevision", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAutomationRuleRequest.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "ruleArn", traits: {"smithy.api#required" => {}}))
    UpdateAutomationRuleRequest.add_member(:rule_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "ruleRevision", traits: {"smithy.api#required" => {}}))
    UpdateAutomationRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "name"))
    UpdateAutomationRuleRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleDescription, name: "description"))
    UpdateAutomationRuleRequest.add_member(:rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleType, name: "ruleType"))
    UpdateAutomationRuleRequest.add_member(:organization_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConfiguration, name: "organizationConfiguration"))
    UpdateAutomationRuleRequest.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "priority"))
    UpdateAutomationRuleRequest.add_member(:recommended_action_types, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionTypeList, name: "recommendedActionTypes"))
    UpdateAutomationRuleRequest.add_member(:criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: Criteria, name: "criteria"))
    UpdateAutomationRuleRequest.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: Schedule, name: "schedule"))
    UpdateAutomationRuleRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleStatus, name: "status"))
    UpdateAutomationRuleRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateAutomationRuleRequest.type = Types::UpdateAutomationRuleRequest
    UpdateAutomationRuleResponse.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "ruleArn"))
    UpdateAutomationRuleResponse.add_member(:rule_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "ruleRevision"))
    UpdateAutomationRuleResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "name"))
    UpdateAutomationRuleResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    UpdateAutomationRuleResponse.add_member(:rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleType, name: "ruleType"))
    UpdateAutomationRuleResponse.add_member(:organization_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConfiguration, name: "organizationConfiguration"))
    UpdateAutomationRuleResponse.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "priority"))
    UpdateAutomationRuleResponse.add_member(:recommended_action_types, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionTypeList, name: "recommendedActionTypes"))
    UpdateAutomationRuleResponse.add_member(:criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: Criteria, name: "criteria"))
    UpdateAutomationRuleResponse.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: Schedule, name: "schedule"))
    UpdateAutomationRuleResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleStatus, name: "status"))
    UpdateAutomationRuleResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdTimestamp"))
    UpdateAutomationRuleResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastUpdatedTimestamp"))
    UpdateAutomationRuleResponse.type = Types::UpdateAutomationRuleResponse
    UpdateEnrollmentConfigurationRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EnrollmentStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateEnrollmentConfigurationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateEnrollmentConfigurationRequest.type = Types::UpdateEnrollmentConfigurationRequest
    UpdateEnrollmentConfigurationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EnrollmentStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateEnrollmentConfigurationResponse.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    UpdateEnrollmentConfigurationResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastUpdatedTimestamp", traits: {"smithy.api#required" => {}}))
    UpdateEnrollmentConfigurationResponse.type = Types::UpdateEnrollmentConfigurationResponse

    ComputeOptimizerAutomationService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.computeoptimizerautomation#ComputeOptimizerAutomationService"
      service.name = "ComputeOptimizerAutomationService"
      service.version = "2025-09-22"
      service.traits = {"aws.api#service" => {"sdkId" => "Compute Optimizer Automation", "arnNamespace" => "compute-optimizer", "endpointPrefix" => "aco-automation"}, "aws.auth#sigv4" => {"name" => "aco-automation"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Compute Optimizer Automation", "smithy.protocols#rpcv2Cbor" => {}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://aco-automation-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://aco-automation-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://aco-automation.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://aco-automation.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:associate_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizerautomation#AssociateAccounts"
        operation.name = "AssociateAccounts"
        operation.input = AssociateAccountsRequest
        operation.output = AssociateAccountsResponse
        operation.errors << AccessDeniedException
        operation.errors << ForbiddenException
        operation.errors << IdempotencyTokenInUseException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << NotManagementAccountException
        operation.errors << OptInRequiredException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_automation_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizerautomation#CreateAutomationRule"
        operation.name = "CreateAutomationRule"
        operation.input = CreateAutomationRuleRequest
        operation.output = CreateAutomationRuleResponse
        operation.errors << AccessDeniedException
        operation.errors << ForbiddenException
        operation.errors << IdempotencyTokenInUseException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << OptInRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_automation_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizerautomation#DeleteAutomationRule"
        operation.name = "DeleteAutomationRule"
        operation.input = DeleteAutomationRuleRequest
        operation.output = DeleteAutomationRuleResponse
        operation.errors << AccessDeniedException
        operation.errors << ForbiddenException
        operation.errors << IdempotencyTokenInUseException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << OptInRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizerautomation#DisassociateAccounts"
        operation.name = "DisassociateAccounts"
        operation.input = DisassociateAccountsRequest
        operation.output = DisassociateAccountsResponse
        operation.errors << AccessDeniedException
        operation.errors << ForbiddenException
        operation.errors << IdempotencyTokenInUseException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << NotManagementAccountException
        operation.errors << OptInRequiredException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_automation_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizerautomation#GetAutomationEvent"
        operation.name = "GetAutomationEvent"
        operation.input = GetAutomationEventRequest
        operation.output = GetAutomationEventResponse
        operation.errors << AccessDeniedException
        operation.errors << ForbiddenException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << OptInRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_automation_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizerautomation#GetAutomationRule"
        operation.name = "GetAutomationRule"
        operation.input = GetAutomationRuleRequest
        operation.output = GetAutomationRuleResponse
        operation.errors << AccessDeniedException
        operation.errors << ForbiddenException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << OptInRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_enrollment_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizerautomation#GetEnrollmentConfiguration"
        operation.name = "GetEnrollmentConfiguration"
        operation.input = GetEnrollmentConfigurationRequest
        operation.output = GetEnrollmentConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ForbiddenException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << OptInRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizerautomation#ListAccounts"
        operation.name = "ListAccounts"
        operation.input = ListAccountsRequest
        operation.output = ListAccountsResponse
        operation.errors << AccessDeniedException
        operation.errors << ForbiddenException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << NotManagementAccountException
        operation.errors << OptInRequiredException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAccounts.new
      end)
      service.add_operation(:list_automation_event_steps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizerautomation#ListAutomationEventSteps"
        operation.name = "ListAutomationEventSteps"
        operation.input = ListAutomationEventStepsRequest
        operation.output = ListAutomationEventStepsResponse
        operation.errors << AccessDeniedException
        operation.errors << ForbiddenException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << OptInRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAutomationEventSteps.new
      end)
      service.add_operation(:list_automation_event_summaries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizerautomation#ListAutomationEventSummaries"
        operation.name = "ListAutomationEventSummaries"
        operation.input = ListAutomationEventSummariesRequest
        operation.output = ListAutomationEventSummariesResponse
        operation.errors << AccessDeniedException
        operation.errors << ForbiddenException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << OptInRequiredException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAutomationEventSummaries.new
      end)
      service.add_operation(:list_automation_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizerautomation#ListAutomationEvents"
        operation.name = "ListAutomationEvents"
        operation.input = ListAutomationEventsRequest
        operation.output = ListAutomationEventsResponse
        operation.errors << AccessDeniedException
        operation.errors << ForbiddenException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << OptInRequiredException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAutomationEvents.new
      end)
      service.add_operation(:list_automation_rule_preview, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizerautomation#ListAutomationRulePreview"
        operation.name = "ListAutomationRulePreview"
        operation.input = ListAutomationRulePreviewRequest
        operation.output = ListAutomationRulePreviewResponse
        operation.errors << AccessDeniedException
        operation.errors << ForbiddenException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << OptInRequiredException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAutomationRulePreview.new
      end)
      service.add_operation(:list_automation_rule_preview_summaries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizerautomation#ListAutomationRulePreviewSummaries"
        operation.name = "ListAutomationRulePreviewSummaries"
        operation.input = ListAutomationRulePreviewSummariesRequest
        operation.output = ListAutomationRulePreviewSummariesResponse
        operation.errors << AccessDeniedException
        operation.errors << ForbiddenException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << OptInRequiredException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAutomationRulePreviewSummaries.new
      end)
      service.add_operation(:list_automation_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizerautomation#ListAutomationRules"
        operation.name = "ListAutomationRules"
        operation.input = ListAutomationRulesRequest
        operation.output = ListAutomationRulesResponse
        operation.errors << AccessDeniedException
        operation.errors << ForbiddenException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << OptInRequiredException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAutomationRules.new
      end)
      service.add_operation(:list_recommended_action_summaries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizerautomation#ListRecommendedActionSummaries"
        operation.name = "ListRecommendedActionSummaries"
        operation.input = ListRecommendedActionSummariesRequest
        operation.output = ListRecommendedActionSummariesResponse
        operation.errors << AccessDeniedException
        operation.errors << ForbiddenException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << OptInRequiredException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::ListRecommendedActionSummaries.new
      end)
      service.add_operation(:list_recommended_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizerautomation#ListRecommendedActions"
        operation.name = "ListRecommendedActions"
        operation.input = ListRecommendedActionsRequest
        operation.output = ListRecommendedActionsResponse
        operation.errors << AccessDeniedException
        operation.errors << ForbiddenException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << OptInRequiredException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::ListRecommendedActions.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizerautomation#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ForbiddenException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << OptInRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:rollback_automation_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizerautomation#RollbackAutomationEvent"
        operation.name = "RollbackAutomationEvent"
        operation.input = RollbackAutomationEventRequest
        operation.output = RollbackAutomationEventResponse
        operation.errors << AccessDeniedException
        operation.errors << ForbiddenException
        operation.errors << IdempotencyTokenInUseException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << OptInRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_automation_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizerautomation#StartAutomationEvent"
        operation.name = "StartAutomationEvent"
        operation.input = StartAutomationEventRequest
        operation.output = StartAutomationEventResponse
        operation.errors << AccessDeniedException
        operation.errors << ForbiddenException
        operation.errors << IdempotencyTokenInUseException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << OptInRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "StartAutomationEvent", "params" => {"recommendedActionId" => "DummyId123456789"}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1", "uri" => "https://aco-automation.us-east-1.amazonaws.com"}}]}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizerautomation#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ForbiddenException
        operation.errors << IdempotencyTokenInUseException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << OptInRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizerautomation#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ForbiddenException
        operation.errors << IdempotencyTokenInUseException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << OptInRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_automation_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizerautomation#UpdateAutomationRule"
        operation.name = "UpdateAutomationRule"
        operation.input = UpdateAutomationRuleRequest
        operation.output = UpdateAutomationRuleResponse
        operation.errors << AccessDeniedException
        operation.errors << ForbiddenException
        operation.errors << IdempotencyTokenInUseException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << OptInRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_enrollment_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizerautomation#UpdateEnrollmentConfiguration"
        operation.name = "UpdateEnrollmentConfiguration"
        operation.input = UpdateEnrollmentConfigurationRequest
        operation.output = UpdateEnrollmentConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ForbiddenException
        operation.errors << IdempotencyTokenInUseException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << NotManagementAccountException
        operation.errors << OptInRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#idempotent" => {}}
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
