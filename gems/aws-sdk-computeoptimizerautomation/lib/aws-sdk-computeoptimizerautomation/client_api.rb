# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ComputeOptimizerAutomation
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountIdList = Shapes::ListShape.new(name: 'AccountIdList')
    AccountInfo = Shapes::StructureShape.new(name: 'AccountInfo')
    AccountInfoList = Shapes::ListShape.new(name: 'AccountInfoList')
    AssociateAccountsRequest = Shapes::StructureShape.new(name: 'AssociateAccountsRequest')
    AssociateAccountsResponse = Shapes::StructureShape.new(name: 'AssociateAccountsResponse')
    AutomationEvent = Shapes::StructureShape.new(name: 'AutomationEvent')
    AutomationEventFilter = Shapes::StructureShape.new(name: 'AutomationEventFilter')
    AutomationEventFilterList = Shapes::ListShape.new(name: 'AutomationEventFilterList')
    AutomationEventFilterName = Shapes::StringShape.new(name: 'AutomationEventFilterName')
    AutomationEventStep = Shapes::StructureShape.new(name: 'AutomationEventStep')
    AutomationEventSteps = Shapes::ListShape.new(name: 'AutomationEventSteps')
    AutomationEventSummary = Shapes::StructureShape.new(name: 'AutomationEventSummary')
    AutomationEventSummaryList = Shapes::ListShape.new(name: 'AutomationEventSummaryList')
    AutomationEvents = Shapes::ListShape.new(name: 'AutomationEvents')
    AutomationRule = Shapes::StructureShape.new(name: 'AutomationRule')
    AutomationRuleFilterName = Shapes::StringShape.new(name: 'AutomationRuleFilterName')
    AutomationRules = Shapes::ListShape.new(name: 'AutomationRules')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ComparisonOperator = Shapes::StringShape.new(name: 'ComparisonOperator')
    CreateAutomationRuleRequest = Shapes::StructureShape.new(name: 'CreateAutomationRuleRequest')
    CreateAutomationRuleResponse = Shapes::StructureShape.new(name: 'CreateAutomationRuleResponse')
    Criteria = Shapes::StructureShape.new(name: 'Criteria')
    DeleteAutomationRuleRequest = Shapes::StructureShape.new(name: 'DeleteAutomationRuleRequest')
    DeleteAutomationRuleResponse = Shapes::StructureShape.new(name: 'DeleteAutomationRuleResponse')
    DisassociateAccountsRequest = Shapes::StructureShape.new(name: 'DisassociateAccountsRequest')
    DisassociateAccountsResponse = Shapes::StructureShape.new(name: 'DisassociateAccountsResponse')
    Double = Shapes::FloatShape.new(name: 'Double')
    DoubleCriteriaCondition = Shapes::StructureShape.new(name: 'DoubleCriteriaCondition')
    DoubleCriteriaConditionList = Shapes::ListShape.new(name: 'DoubleCriteriaConditionList')
    DoubleList = Shapes::ListShape.new(name: 'DoubleList')
    EbsVolume = Shapes::StructureShape.new(name: 'EbsVolume')
    EbsVolumeConfiguration = Shapes::StructureShape.new(name: 'EbsVolumeConfiguration')
    EnrollmentStatus = Shapes::StringShape.new(name: 'EnrollmentStatus')
    EstimatedMonthlySavings = Shapes::StructureShape.new(name: 'EstimatedMonthlySavings')
    EventId = Shapes::StringShape.new(name: 'EventId')
    EventStatus = Shapes::StringShape.new(name: 'EventStatus')
    EventType = Shapes::StringShape.new(name: 'EventType')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    FilterValues = Shapes::ListShape.new(name: 'FilterValues')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    GetAutomationEventRequest = Shapes::StructureShape.new(name: 'GetAutomationEventRequest')
    GetAutomationEventResponse = Shapes::StructureShape.new(name: 'GetAutomationEventResponse')
    GetAutomationRuleRequest = Shapes::StructureShape.new(name: 'GetAutomationRuleRequest')
    GetAutomationRuleResponse = Shapes::StructureShape.new(name: 'GetAutomationRuleResponse')
    GetEnrollmentConfigurationRequest = Shapes::StructureShape.new(name: 'GetEnrollmentConfigurationRequest')
    GetEnrollmentConfigurationResponse = Shapes::StructureShape.new(name: 'GetEnrollmentConfigurationResponse')
    IdempotencyTokenInUseException = Shapes::StructureShape.new(name: 'IdempotencyTokenInUseException')
    IdempotentParameterMismatchException = Shapes::StructureShape.new(name: 'IdempotentParameterMismatchException')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegerCriteriaCondition = Shapes::StructureShape.new(name: 'IntegerCriteriaCondition')
    IntegerCriteriaConditionList = Shapes::ListShape.new(name: 'IntegerCriteriaConditionList')
    IntegerList = Shapes::ListShape.new(name: 'IntegerList')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidParameterValueException = Shapes::StructureShape.new(name: 'InvalidParameterValueException')
    ListAccountsRequest = Shapes::StructureShape.new(name: 'ListAccountsRequest')
    ListAccountsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAccountsRequestMaxResultsInteger')
    ListAccountsResponse = Shapes::StructureShape.new(name: 'ListAccountsResponse')
    ListAutomationEventStepsRequest = Shapes::StructureShape.new(name: 'ListAutomationEventStepsRequest')
    ListAutomationEventStepsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAutomationEventStepsRequestMaxResultsInteger')
    ListAutomationEventStepsResponse = Shapes::StructureShape.new(name: 'ListAutomationEventStepsResponse')
    ListAutomationEventSummariesRequest = Shapes::StructureShape.new(name: 'ListAutomationEventSummariesRequest')
    ListAutomationEventSummariesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAutomationEventSummariesRequestMaxResultsInteger')
    ListAutomationEventSummariesResponse = Shapes::StructureShape.new(name: 'ListAutomationEventSummariesResponse')
    ListAutomationEventsRequest = Shapes::StructureShape.new(name: 'ListAutomationEventsRequest')
    ListAutomationEventsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAutomationEventsRequestMaxResultsInteger')
    ListAutomationEventsResponse = Shapes::StructureShape.new(name: 'ListAutomationEventsResponse')
    ListAutomationRulePreviewRequest = Shapes::StructureShape.new(name: 'ListAutomationRulePreviewRequest')
    ListAutomationRulePreviewRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAutomationRulePreviewRequestMaxResultsInteger')
    ListAutomationRulePreviewResponse = Shapes::StructureShape.new(name: 'ListAutomationRulePreviewResponse')
    ListAutomationRulePreviewSummariesRequest = Shapes::StructureShape.new(name: 'ListAutomationRulePreviewSummariesRequest')
    ListAutomationRulePreviewSummariesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAutomationRulePreviewSummariesRequestMaxResultsInteger')
    ListAutomationRulePreviewSummariesResponse = Shapes::StructureShape.new(name: 'ListAutomationRulePreviewSummariesResponse')
    ListAutomationRulesRequest = Shapes::StructureShape.new(name: 'ListAutomationRulesRequest')
    ListAutomationRulesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAutomationRulesRequestMaxResultsInteger')
    ListAutomationRulesResponse = Shapes::StructureShape.new(name: 'ListAutomationRulesResponse')
    ListRecommendedActionSummariesRequest = Shapes::StructureShape.new(name: 'ListRecommendedActionSummariesRequest')
    ListRecommendedActionSummariesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRecommendedActionSummariesRequestMaxResultsInteger')
    ListRecommendedActionSummariesResponse = Shapes::StructureShape.new(name: 'ListRecommendedActionSummariesResponse')
    ListRecommendedActionsRequest = Shapes::StructureShape.new(name: 'ListRecommendedActionsRequest')
    ListRecommendedActionsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRecommendedActionsRequestMaxResultsInteger')
    ListRecommendedActionsResponse = Shapes::StructureShape.new(name: 'ListRecommendedActionsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotManagementAccountException = Shapes::StructureShape.new(name: 'NotManagementAccountException')
    OptInRequiredException = Shapes::StructureShape.new(name: 'OptInRequiredException')
    OrganizationConfiguration = Shapes::StructureShape.new(name: 'OrganizationConfiguration')
    OrganizationConfigurationAccountIds = Shapes::ListShape.new(name: 'OrganizationConfigurationAccountIds')
    OrganizationRuleMode = Shapes::StringShape.new(name: 'OrganizationRuleMode')
    OrganizationScope = Shapes::StructureShape.new(name: 'OrganizationScope')
    PreviewResult = Shapes::StructureShape.new(name: 'PreviewResult')
    PreviewResultSummaries = Shapes::ListShape.new(name: 'PreviewResultSummaries')
    PreviewResultSummary = Shapes::StructureShape.new(name: 'PreviewResultSummary')
    PreviewResults = Shapes::ListShape.new(name: 'PreviewResults')
    RecommendedAction = Shapes::StructureShape.new(name: 'RecommendedAction')
    RecommendedActionFilter = Shapes::StructureShape.new(name: 'RecommendedActionFilter')
    RecommendedActionFilterList = Shapes::ListShape.new(name: 'RecommendedActionFilterList')
    RecommendedActionFilterName = Shapes::StringShape.new(name: 'RecommendedActionFilterName')
    RecommendedActionId = Shapes::StringShape.new(name: 'RecommendedActionId')
    RecommendedActionSummaries = Shapes::ListShape.new(name: 'RecommendedActionSummaries')
    RecommendedActionSummary = Shapes::StructureShape.new(name: 'RecommendedActionSummary')
    RecommendedActionTotal = Shapes::StructureShape.new(name: 'RecommendedActionTotal')
    RecommendedActionType = Shapes::StringShape.new(name: 'RecommendedActionType')
    RecommendedActionTypeList = Shapes::ListShape.new(name: 'RecommendedActionTypeList')
    RecommendedActions = Shapes::ListShape.new(name: 'RecommendedActions')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceDetails = Shapes::UnionShape.new(name: 'ResourceDetails')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceTagsCriteriaCondition = Shapes::StructureShape.new(name: 'ResourceTagsCriteriaCondition')
    ResourceTagsCriteriaConditionList = Shapes::ListShape.new(name: 'ResourceTagsCriteriaConditionList')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    RollbackAutomationEventRequest = Shapes::StructureShape.new(name: 'RollbackAutomationEventRequest')
    RollbackAutomationEventResponse = Shapes::StructureShape.new(name: 'RollbackAutomationEventResponse')
    RuleApplyOrder = Shapes::StringShape.new(name: 'RuleApplyOrder')
    RuleArn = Shapes::StringShape.new(name: 'RuleArn')
    RuleDescription = Shapes::StringShape.new(name: 'RuleDescription')
    RuleId = Shapes::StringShape.new(name: 'RuleId')
    RuleName = Shapes::StringShape.new(name: 'RuleName')
    RulePreviewTotal = Shapes::StructureShape.new(name: 'RulePreviewTotal')
    RuleStatus = Shapes::StringShape.new(name: 'RuleStatus')
    RuleType = Shapes::StringShape.new(name: 'RuleType')
    SavingsEstimationMode = Shapes::StringShape.new(name: 'SavingsEstimationMode')
    Schedule = Shapes::StructureShape.new(name: 'Schedule')
    ScheduleExecutionWindowInMinutesInteger = Shapes::IntegerShape.new(name: 'ScheduleExecutionWindowInMinutesInteger')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    StartAutomationEventRequest = Shapes::StructureShape.new(name: 'StartAutomationEventRequest')
    StartAutomationEventResponse = Shapes::StructureShape.new(name: 'StartAutomationEventResponse')
    StepId = Shapes::StringShape.new(name: 'StepId')
    StepStatus = Shapes::StringShape.new(name: 'StepStatus')
    StepType = Shapes::StringShape.new(name: 'StepType')
    String = Shapes::StringShape.new(name: 'String')
    StringCriteriaCondition = Shapes::StructureShape.new(name: 'StringCriteriaCondition')
    StringCriteriaConditionList = Shapes::ListShape.new(name: 'StringCriteriaConditionList')
    StringCriteriaValue = Shapes::StringShape.new(name: 'StringCriteriaValue')
    StringCriteriaValues = Shapes::ListShape.new(name: 'StringCriteriaValues')
    StringList = Shapes::ListShape.new(name: 'StringList')
    SummaryDimension = Shapes::StructureShape.new(name: 'SummaryDimension')
    SummaryDimensionKey = Shapes::StringShape.new(name: 'SummaryDimensionKey')
    SummaryDimensions = Shapes::ListShape.new(name: 'SummaryDimensions')
    SummaryTotals = Shapes::StructureShape.new(name: 'SummaryTotals')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimePeriod = Shapes::StructureShape.new(name: 'TimePeriod')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAutomationRuleRequest = Shapes::StructureShape.new(name: 'UpdateAutomationRuleRequest')
    UpdateAutomationRuleResponse = Shapes::StructureShape.new(name: 'UpdateAutomationRuleResponse')
    UpdateEnrollmentConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateEnrollmentConfigurationRequest')
    UpdateEnrollmentConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateEnrollmentConfigurationResponse')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountIdList.member = Shapes::ShapeRef.new(shape: AccountId)

    AccountInfo.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    AccountInfo.add_member(:status, Shapes::ShapeRef.new(shape: EnrollmentStatus, required: true, location_name: "status"))
    AccountInfo.add_member(:organization_rule_mode, Shapes::ShapeRef.new(shape: OrganizationRuleMode, required: true, location_name: "organizationRuleMode"))
    AccountInfo.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    AccountInfo.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedTimestamp"))
    AccountInfo.struct_class = Types::AccountInfo

    AccountInfoList.member = Shapes::ShapeRef.new(shape: AccountInfo)

    AssociateAccountsRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, required: true, location_name: "accountIds"))
    AssociateAccountsRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    AssociateAccountsRequest.struct_class = Types::AssociateAccountsRequest

    AssociateAccountsResponse.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "accountIds"))
    AssociateAccountsResponse.add_member(:errors, Shapes::ShapeRef.new(shape: StringList, location_name: "errors"))
    AssociateAccountsResponse.struct_class = Types::AssociateAccountsResponse

    AutomationEvent.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "eventId"))
    AutomationEvent.add_member(:event_description, Shapes::ShapeRef.new(shape: String, location_name: "eventDescription"))
    AutomationEvent.add_member(:event_type, Shapes::ShapeRef.new(shape: EventType, location_name: "eventType"))
    AutomationEvent.add_member(:event_status, Shapes::ShapeRef.new(shape: EventStatus, location_name: "eventStatus"))
    AutomationEvent.add_member(:event_status_reason, Shapes::ShapeRef.new(shape: String, location_name: "eventStatusReason"))
    AutomationEvent.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn"))
    AutomationEvent.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "resourceId"))
    AutomationEvent.add_member(:recommended_action_id, Shapes::ShapeRef.new(shape: RecommendedActionId, location_name: "recommendedActionId"))
    AutomationEvent.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    AutomationEvent.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "region"))
    AutomationEvent.add_member(:rule_id, Shapes::ShapeRef.new(shape: RuleId, location_name: "ruleId"))
    AutomationEvent.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    AutomationEvent.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTimestamp"))
    AutomationEvent.add_member(:completed_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "completedTimestamp"))
    AutomationEvent.add_member(:estimated_monthly_savings, Shapes::ShapeRef.new(shape: EstimatedMonthlySavings, location_name: "estimatedMonthlySavings"))
    AutomationEvent.struct_class = Types::AutomationEvent

    AutomationEventFilter.add_member(:name, Shapes::ShapeRef.new(shape: AutomationEventFilterName, required: true, location_name: "name"))
    AutomationEventFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, required: true, location_name: "values"))
    AutomationEventFilter.struct_class = Types::AutomationEventFilter

    AutomationEventFilterList.member = Shapes::ShapeRef.new(shape: AutomationEventFilter)

    AutomationEventStep.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "eventId"))
    AutomationEventStep.add_member(:step_id, Shapes::ShapeRef.new(shape: StepId, location_name: "stepId"))
    AutomationEventStep.add_member(:step_type, Shapes::ShapeRef.new(shape: StepType, location_name: "stepType"))
    AutomationEventStep.add_member(:step_status, Shapes::ShapeRef.new(shape: StepStatus, location_name: "stepStatus"))
    AutomationEventStep.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "resourceId"))
    AutomationEventStep.add_member(:start_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTimestamp"))
    AutomationEventStep.add_member(:completed_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "completedTimestamp"))
    AutomationEventStep.add_member(:estimated_monthly_savings, Shapes::ShapeRef.new(shape: EstimatedMonthlySavings, location_name: "estimatedMonthlySavings"))
    AutomationEventStep.struct_class = Types::AutomationEventStep

    AutomationEventSteps.member = Shapes::ShapeRef.new(shape: AutomationEventStep)

    AutomationEventSummary.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "key"))
    AutomationEventSummary.add_member(:dimensions, Shapes::ShapeRef.new(shape: SummaryDimensions, location_name: "dimensions"))
    AutomationEventSummary.add_member(:time_period, Shapes::ShapeRef.new(shape: TimePeriod, location_name: "timePeriod"))
    AutomationEventSummary.add_member(:total, Shapes::ShapeRef.new(shape: SummaryTotals, location_name: "total"))
    AutomationEventSummary.struct_class = Types::AutomationEventSummary

    AutomationEventSummaryList.member = Shapes::ShapeRef.new(shape: AutomationEventSummary)

    AutomationEvents.member = Shapes::ShapeRef.new(shape: AutomationEvent)

    AutomationRule.add_member(:rule_arn, Shapes::ShapeRef.new(shape: RuleArn, location_name: "ruleArn"))
    AutomationRule.add_member(:rule_id, Shapes::ShapeRef.new(shape: RuleId, location_name: "ruleId"))
    AutomationRule.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, location_name: "name"))
    AutomationRule.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    AutomationRule.add_member(:rule_type, Shapes::ShapeRef.new(shape: RuleType, location_name: "ruleType"))
    AutomationRule.add_member(:rule_revision, Shapes::ShapeRef.new(shape: Long, location_name: "ruleRevision"))
    AutomationRule.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    AutomationRule.add_member(:organization_configuration, Shapes::ShapeRef.new(shape: OrganizationConfiguration, location_name: "organizationConfiguration"))
    AutomationRule.add_member(:priority, Shapes::ShapeRef.new(shape: String, location_name: "priority"))
    AutomationRule.add_member(:recommended_action_types, Shapes::ShapeRef.new(shape: RecommendedActionTypeList, location_name: "recommendedActionTypes"))
    AutomationRule.add_member(:schedule, Shapes::ShapeRef.new(shape: Schedule, location_name: "schedule"))
    AutomationRule.add_member(:status, Shapes::ShapeRef.new(shape: RuleStatus, location_name: "status"))
    AutomationRule.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTimestamp"))
    AutomationRule.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedTimestamp"))
    AutomationRule.struct_class = Types::AutomationRule

    AutomationRules.member = Shapes::ShapeRef.new(shape: AutomationRule)

    CreateAutomationRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "name"))
    CreateAutomationRuleRequest.add_member(:description, Shapes::ShapeRef.new(shape: RuleDescription, location_name: "description"))
    CreateAutomationRuleRequest.add_member(:rule_type, Shapes::ShapeRef.new(shape: RuleType, required: true, location_name: "ruleType"))
    CreateAutomationRuleRequest.add_member(:organization_configuration, Shapes::ShapeRef.new(shape: OrganizationConfiguration, location_name: "organizationConfiguration"))
    CreateAutomationRuleRequest.add_member(:priority, Shapes::ShapeRef.new(shape: String, location_name: "priority"))
    CreateAutomationRuleRequest.add_member(:recommended_action_types, Shapes::ShapeRef.new(shape: RecommendedActionTypeList, required: true, location_name: "recommendedActionTypes"))
    CreateAutomationRuleRequest.add_member(:criteria, Shapes::ShapeRef.new(shape: Criteria, location_name: "criteria"))
    CreateAutomationRuleRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: Schedule, required: true, location_name: "schedule"))
    CreateAutomationRuleRequest.add_member(:status, Shapes::ShapeRef.new(shape: RuleStatus, required: true, location_name: "status"))
    CreateAutomationRuleRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateAutomationRuleRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateAutomationRuleRequest.struct_class = Types::CreateAutomationRuleRequest

    CreateAutomationRuleResponse.add_member(:rule_arn, Shapes::ShapeRef.new(shape: RuleArn, location_name: "ruleArn"))
    CreateAutomationRuleResponse.add_member(:rule_id, Shapes::ShapeRef.new(shape: RuleId, location_name: "ruleId"))
    CreateAutomationRuleResponse.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, location_name: "name"))
    CreateAutomationRuleResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    CreateAutomationRuleResponse.add_member(:rule_type, Shapes::ShapeRef.new(shape: RuleType, location_name: "ruleType"))
    CreateAutomationRuleResponse.add_member(:rule_revision, Shapes::ShapeRef.new(shape: Long, location_name: "ruleRevision"))
    CreateAutomationRuleResponse.add_member(:organization_configuration, Shapes::ShapeRef.new(shape: OrganizationConfiguration, location_name: "organizationConfiguration"))
    CreateAutomationRuleResponse.add_member(:priority, Shapes::ShapeRef.new(shape: String, location_name: "priority"))
    CreateAutomationRuleResponse.add_member(:recommended_action_types, Shapes::ShapeRef.new(shape: RecommendedActionTypeList, location_name: "recommendedActionTypes"))
    CreateAutomationRuleResponse.add_member(:criteria, Shapes::ShapeRef.new(shape: Criteria, location_name: "criteria"))
    CreateAutomationRuleResponse.add_member(:schedule, Shapes::ShapeRef.new(shape: Schedule, location_name: "schedule"))
    CreateAutomationRuleResponse.add_member(:status, Shapes::ShapeRef.new(shape: RuleStatus, location_name: "status"))
    CreateAutomationRuleResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateAutomationRuleResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTimestamp"))
    CreateAutomationRuleResponse.struct_class = Types::CreateAutomationRuleResponse

    Criteria.add_member(:region, Shapes::ShapeRef.new(shape: StringCriteriaConditionList, location_name: "region"))
    Criteria.add_member(:resource_arn, Shapes::ShapeRef.new(shape: StringCriteriaConditionList, location_name: "resourceArn"))
    Criteria.add_member(:ebs_volume_type, Shapes::ShapeRef.new(shape: StringCriteriaConditionList, location_name: "ebsVolumeType"))
    Criteria.add_member(:ebs_volume_size_in_gib, Shapes::ShapeRef.new(shape: IntegerCriteriaConditionList, location_name: "ebsVolumeSizeInGib"))
    Criteria.add_member(:estimated_monthly_savings, Shapes::ShapeRef.new(shape: DoubleCriteriaConditionList, location_name: "estimatedMonthlySavings"))
    Criteria.add_member(:resource_tag, Shapes::ShapeRef.new(shape: ResourceTagsCriteriaConditionList, location_name: "resourceTag"))
    Criteria.add_member(:look_back_period_in_days, Shapes::ShapeRef.new(shape: IntegerCriteriaConditionList, location_name: "lookBackPeriodInDays"))
    Criteria.add_member(:restart_needed, Shapes::ShapeRef.new(shape: StringCriteriaConditionList, location_name: "restartNeeded"))
    Criteria.struct_class = Types::Criteria

    DeleteAutomationRuleRequest.add_member(:rule_arn, Shapes::ShapeRef.new(shape: RuleArn, required: true, location_name: "ruleArn"))
    DeleteAutomationRuleRequest.add_member(:rule_revision, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "ruleRevision"))
    DeleteAutomationRuleRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteAutomationRuleRequest.struct_class = Types::DeleteAutomationRuleRequest

    DeleteAutomationRuleResponse.struct_class = Types::DeleteAutomationRuleResponse

    DisassociateAccountsRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, required: true, location_name: "accountIds"))
    DisassociateAccountsRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DisassociateAccountsRequest.struct_class = Types::DisassociateAccountsRequest

    DisassociateAccountsResponse.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "accountIds"))
    DisassociateAccountsResponse.add_member(:errors, Shapes::ShapeRef.new(shape: StringList, location_name: "errors"))
    DisassociateAccountsResponse.struct_class = Types::DisassociateAccountsResponse

    DoubleCriteriaCondition.add_member(:comparison, Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: "comparison"))
    DoubleCriteriaCondition.add_member(:values, Shapes::ShapeRef.new(shape: DoubleList, location_name: "values"))
    DoubleCriteriaCondition.struct_class = Types::DoubleCriteriaCondition

    DoubleCriteriaConditionList.member = Shapes::ShapeRef.new(shape: DoubleCriteriaCondition)

    DoubleList.member = Shapes::ShapeRef.new(shape: Double)

    EbsVolume.add_member(:configuration, Shapes::ShapeRef.new(shape: EbsVolumeConfiguration, location_name: "configuration"))
    EbsVolume.struct_class = Types::EbsVolume

    EbsVolumeConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    EbsVolumeConfiguration.add_member(:size_in_gib, Shapes::ShapeRef.new(shape: Integer, location_name: "sizeInGib"))
    EbsVolumeConfiguration.add_member(:iops, Shapes::ShapeRef.new(shape: Integer, location_name: "iops"))
    EbsVolumeConfiguration.add_member(:throughput, Shapes::ShapeRef.new(shape: Integer, location_name: "throughput"))
    EbsVolumeConfiguration.struct_class = Types::EbsVolumeConfiguration

    EstimatedMonthlySavings.add_member(:currency, Shapes::ShapeRef.new(shape: String, required: true, location_name: "currency"))
    EstimatedMonthlySavings.add_member(:before_discount_savings, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "beforeDiscountSavings"))
    EstimatedMonthlySavings.add_member(:after_discount_savings, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "afterDiscountSavings"))
    EstimatedMonthlySavings.add_member(:savings_estimation_mode, Shapes::ShapeRef.new(shape: SavingsEstimationMode, required: true, location_name: "savingsEstimationMode"))
    EstimatedMonthlySavings.struct_class = Types::EstimatedMonthlySavings

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: AutomationRuleFilterName, required: true, location_name: "name"))
    Filter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, required: true, location_name: "values"))
    Filter.struct_class = Types::Filter

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    FilterValues.member = Shapes::ShapeRef.new(shape: FilterValue)

    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ForbiddenException.struct_class = Types::ForbiddenException

    GetAutomationEventRequest.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "eventId"))
    GetAutomationEventRequest.struct_class = Types::GetAutomationEventRequest

    GetAutomationEventResponse.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "eventId"))
    GetAutomationEventResponse.add_member(:event_description, Shapes::ShapeRef.new(shape: String, location_name: "eventDescription"))
    GetAutomationEventResponse.add_member(:event_type, Shapes::ShapeRef.new(shape: EventType, location_name: "eventType"))
    GetAutomationEventResponse.add_member(:event_status, Shapes::ShapeRef.new(shape: EventStatus, location_name: "eventStatus"))
    GetAutomationEventResponse.add_member(:event_status_reason, Shapes::ShapeRef.new(shape: String, location_name: "eventStatusReason"))
    GetAutomationEventResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn"))
    GetAutomationEventResponse.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "resourceId"))
    GetAutomationEventResponse.add_member(:recommended_action_id, Shapes::ShapeRef.new(shape: RecommendedActionId, location_name: "recommendedActionId"))
    GetAutomationEventResponse.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    GetAutomationEventResponse.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "region"))
    GetAutomationEventResponse.add_member(:rule_id, Shapes::ShapeRef.new(shape: RuleId, location_name: "ruleId"))
    GetAutomationEventResponse.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    GetAutomationEventResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTimestamp"))
    GetAutomationEventResponse.add_member(:completed_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "completedTimestamp"))
    GetAutomationEventResponse.add_member(:estimated_monthly_savings, Shapes::ShapeRef.new(shape: EstimatedMonthlySavings, location_name: "estimatedMonthlySavings"))
    GetAutomationEventResponse.struct_class = Types::GetAutomationEventResponse

    GetAutomationRuleRequest.add_member(:rule_arn, Shapes::ShapeRef.new(shape: RuleArn, required: true, location_name: "ruleArn"))
    GetAutomationRuleRequest.struct_class = Types::GetAutomationRuleRequest

    GetAutomationRuleResponse.add_member(:rule_arn, Shapes::ShapeRef.new(shape: RuleArn, location_name: "ruleArn"))
    GetAutomationRuleResponse.add_member(:rule_id, Shapes::ShapeRef.new(shape: RuleId, location_name: "ruleId"))
    GetAutomationRuleResponse.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, location_name: "name"))
    GetAutomationRuleResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    GetAutomationRuleResponse.add_member(:rule_type, Shapes::ShapeRef.new(shape: RuleType, location_name: "ruleType"))
    GetAutomationRuleResponse.add_member(:rule_revision, Shapes::ShapeRef.new(shape: Long, location_name: "ruleRevision"))
    GetAutomationRuleResponse.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    GetAutomationRuleResponse.add_member(:organization_configuration, Shapes::ShapeRef.new(shape: OrganizationConfiguration, location_name: "organizationConfiguration"))
    GetAutomationRuleResponse.add_member(:priority, Shapes::ShapeRef.new(shape: String, location_name: "priority"))
    GetAutomationRuleResponse.add_member(:recommended_action_types, Shapes::ShapeRef.new(shape: RecommendedActionTypeList, location_name: "recommendedActionTypes"))
    GetAutomationRuleResponse.add_member(:criteria, Shapes::ShapeRef.new(shape: Criteria, location_name: "criteria"))
    GetAutomationRuleResponse.add_member(:schedule, Shapes::ShapeRef.new(shape: Schedule, location_name: "schedule"))
    GetAutomationRuleResponse.add_member(:status, Shapes::ShapeRef.new(shape: RuleStatus, location_name: "status"))
    GetAutomationRuleResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    GetAutomationRuleResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTimestamp"))
    GetAutomationRuleResponse.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedTimestamp"))
    GetAutomationRuleResponse.struct_class = Types::GetAutomationRuleResponse

    GetEnrollmentConfigurationRequest.struct_class = Types::GetEnrollmentConfigurationRequest

    GetEnrollmentConfigurationResponse.add_member(:status, Shapes::ShapeRef.new(shape: EnrollmentStatus, required: true, location_name: "status"))
    GetEnrollmentConfigurationResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    GetEnrollmentConfigurationResponse.add_member(:organization_rule_mode, Shapes::ShapeRef.new(shape: OrganizationRuleMode, location_name: "organizationRuleMode"))
    GetEnrollmentConfigurationResponse.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedTimestamp"))
    GetEnrollmentConfigurationResponse.struct_class = Types::GetEnrollmentConfigurationResponse

    IdempotencyTokenInUseException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    IdempotencyTokenInUseException.struct_class = Types::IdempotencyTokenInUseException

    IdempotentParameterMismatchException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    IdempotentParameterMismatchException.struct_class = Types::IdempotentParameterMismatchException

    IntegerCriteriaCondition.add_member(:comparison, Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: "comparison"))
    IntegerCriteriaCondition.add_member(:values, Shapes::ShapeRef.new(shape: IntegerList, location_name: "values"))
    IntegerCriteriaCondition.struct_class = Types::IntegerCriteriaCondition

    IntegerCriteriaConditionList.member = Shapes::ShapeRef.new(shape: IntegerCriteriaCondition)

    IntegerList.member = Shapes::ShapeRef.new(shape: Integer)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidParameterValueException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidParameterValueException.struct_class = Types::InvalidParameterValueException

    ListAccountsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAccountsRequestMaxResultsInteger, location_name: "maxResults"))
    ListAccountsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAccountsRequest.struct_class = Types::ListAccountsRequest

    ListAccountsResponse.add_member(:accounts, Shapes::ShapeRef.new(shape: AccountInfoList, required: true, location_name: "accounts"))
    ListAccountsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAccountsResponse.struct_class = Types::ListAccountsResponse

    ListAutomationEventStepsRequest.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "eventId"))
    ListAutomationEventStepsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAutomationEventStepsRequestMaxResultsInteger, location_name: "maxResults"))
    ListAutomationEventStepsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAutomationEventStepsRequest.struct_class = Types::ListAutomationEventStepsRequest

    ListAutomationEventStepsResponse.add_member(:automation_event_steps, Shapes::ShapeRef.new(shape: AutomationEventSteps, location_name: "automationEventSteps"))
    ListAutomationEventStepsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAutomationEventStepsResponse.struct_class = Types::ListAutomationEventStepsResponse

    ListAutomationEventSummariesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: AutomationEventFilterList, location_name: "filters"))
    ListAutomationEventSummariesRequest.add_member(:start_date_inclusive, Shapes::ShapeRef.new(shape: String, location_name: "startDateInclusive"))
    ListAutomationEventSummariesRequest.add_member(:end_date_exclusive, Shapes::ShapeRef.new(shape: String, location_name: "endDateExclusive"))
    ListAutomationEventSummariesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAutomationEventSummariesRequestMaxResultsInteger, location_name: "maxResults"))
    ListAutomationEventSummariesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAutomationEventSummariesRequest.struct_class = Types::ListAutomationEventSummariesRequest

    ListAutomationEventSummariesResponse.add_member(:automation_event_summaries, Shapes::ShapeRef.new(shape: AutomationEventSummaryList, location_name: "automationEventSummaries"))
    ListAutomationEventSummariesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAutomationEventSummariesResponse.struct_class = Types::ListAutomationEventSummariesResponse

    ListAutomationEventsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: AutomationEventFilterList, location_name: "filters"))
    ListAutomationEventsRequest.add_member(:start_time_inclusive, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTimeInclusive"))
    ListAutomationEventsRequest.add_member(:end_time_exclusive, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTimeExclusive"))
    ListAutomationEventsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAutomationEventsRequestMaxResultsInteger, location_name: "maxResults"))
    ListAutomationEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAutomationEventsRequest.struct_class = Types::ListAutomationEventsRequest

    ListAutomationEventsResponse.add_member(:automation_events, Shapes::ShapeRef.new(shape: AutomationEvents, location_name: "automationEvents"))
    ListAutomationEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAutomationEventsResponse.struct_class = Types::ListAutomationEventsResponse

    ListAutomationRulePreviewRequest.add_member(:rule_type, Shapes::ShapeRef.new(shape: RuleType, required: true, location_name: "ruleType"))
    ListAutomationRulePreviewRequest.add_member(:organization_scope, Shapes::ShapeRef.new(shape: OrganizationScope, location_name: "organizationScope"))
    ListAutomationRulePreviewRequest.add_member(:recommended_action_types, Shapes::ShapeRef.new(shape: RecommendedActionTypeList, required: true, location_name: "recommendedActionTypes"))
    ListAutomationRulePreviewRequest.add_member(:criteria, Shapes::ShapeRef.new(shape: Criteria, location_name: "criteria"))
    ListAutomationRulePreviewRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAutomationRulePreviewRequestMaxResultsInteger, location_name: "maxResults"))
    ListAutomationRulePreviewRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAutomationRulePreviewRequest.struct_class = Types::ListAutomationRulePreviewRequest

    ListAutomationRulePreviewResponse.add_member(:preview_results, Shapes::ShapeRef.new(shape: PreviewResults, location_name: "previewResults"))
    ListAutomationRulePreviewResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAutomationRulePreviewResponse.struct_class = Types::ListAutomationRulePreviewResponse

    ListAutomationRulePreviewSummariesRequest.add_member(:rule_type, Shapes::ShapeRef.new(shape: RuleType, required: true, location_name: "ruleType"))
    ListAutomationRulePreviewSummariesRequest.add_member(:organization_scope, Shapes::ShapeRef.new(shape: OrganizationScope, location_name: "organizationScope"))
    ListAutomationRulePreviewSummariesRequest.add_member(:recommended_action_types, Shapes::ShapeRef.new(shape: RecommendedActionTypeList, required: true, location_name: "recommendedActionTypes"))
    ListAutomationRulePreviewSummariesRequest.add_member(:criteria, Shapes::ShapeRef.new(shape: Criteria, location_name: "criteria"))
    ListAutomationRulePreviewSummariesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAutomationRulePreviewSummariesRequestMaxResultsInteger, location_name: "maxResults"))
    ListAutomationRulePreviewSummariesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAutomationRulePreviewSummariesRequest.struct_class = Types::ListAutomationRulePreviewSummariesRequest

    ListAutomationRulePreviewSummariesResponse.add_member(:preview_result_summaries, Shapes::ShapeRef.new(shape: PreviewResultSummaries, location_name: "previewResultSummaries"))
    ListAutomationRulePreviewSummariesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAutomationRulePreviewSummariesResponse.struct_class = Types::ListAutomationRulePreviewSummariesResponse

    ListAutomationRulesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "filters"))
    ListAutomationRulesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAutomationRulesRequestMaxResultsInteger, location_name: "maxResults"))
    ListAutomationRulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAutomationRulesRequest.struct_class = Types::ListAutomationRulesRequest

    ListAutomationRulesResponse.add_member(:automation_rules, Shapes::ShapeRef.new(shape: AutomationRules, location_name: "automationRules"))
    ListAutomationRulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAutomationRulesResponse.struct_class = Types::ListAutomationRulesResponse

    ListRecommendedActionSummariesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: RecommendedActionFilterList, location_name: "filters"))
    ListRecommendedActionSummariesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRecommendedActionSummariesRequestMaxResultsInteger, location_name: "maxResults"))
    ListRecommendedActionSummariesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRecommendedActionSummariesRequest.struct_class = Types::ListRecommendedActionSummariesRequest

    ListRecommendedActionSummariesResponse.add_member(:recommended_action_summaries, Shapes::ShapeRef.new(shape: RecommendedActionSummaries, location_name: "recommendedActionSummaries"))
    ListRecommendedActionSummariesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRecommendedActionSummariesResponse.struct_class = Types::ListRecommendedActionSummariesResponse

    ListRecommendedActionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: RecommendedActionFilterList, location_name: "filters"))
    ListRecommendedActionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRecommendedActionsRequestMaxResultsInteger, location_name: "maxResults"))
    ListRecommendedActionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRecommendedActionsRequest.struct_class = Types::ListRecommendedActionsRequest

    ListRecommendedActionsResponse.add_member(:recommended_actions, Shapes::ShapeRef.new(shape: RecommendedActions, location_name: "recommendedActions"))
    ListRecommendedActionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRecommendedActionsResponse.struct_class = Types::ListRecommendedActionsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: RuleArn, required: true, location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    NotManagementAccountException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    NotManagementAccountException.struct_class = Types::NotManagementAccountException

    OptInRequiredException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    OptInRequiredException.struct_class = Types::OptInRequiredException

    OrganizationConfiguration.add_member(:rule_apply_order, Shapes::ShapeRef.new(shape: RuleApplyOrder, location_name: "ruleApplyOrder"))
    OrganizationConfiguration.add_member(:account_ids, Shapes::ShapeRef.new(shape: OrganizationConfigurationAccountIds, location_name: "accountIds"))
    OrganizationConfiguration.struct_class = Types::OrganizationConfiguration

    OrganizationConfigurationAccountIds.member = Shapes::ShapeRef.new(shape: AccountId)

    OrganizationScope.add_member(:account_ids, Shapes::ShapeRef.new(shape: OrganizationConfigurationAccountIds, location_name: "accountIds"))
    OrganizationScope.struct_class = Types::OrganizationScope

    PreviewResult.add_member(:recommended_action_id, Shapes::ShapeRef.new(shape: RecommendedActionId, location_name: "recommendedActionId"))
    PreviewResult.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn"))
    PreviewResult.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "resourceId"))
    PreviewResult.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    PreviewResult.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "region"))
    PreviewResult.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    PreviewResult.add_member(:look_back_period_in_days, Shapes::ShapeRef.new(shape: Integer, location_name: "lookBackPeriodInDays"))
    PreviewResult.add_member(:recommended_action_type, Shapes::ShapeRef.new(shape: RecommendedActionType, location_name: "recommendedActionType"))
    PreviewResult.add_member(:current_resource_summary, Shapes::ShapeRef.new(shape: String, location_name: "currentResourceSummary"))
    PreviewResult.add_member(:current_resource_details, Shapes::ShapeRef.new(shape: ResourceDetails, location_name: "currentResourceDetails"))
    PreviewResult.add_member(:recommended_resource_summary, Shapes::ShapeRef.new(shape: String, location_name: "recommendedResourceSummary"))
    PreviewResult.add_member(:recommended_resource_details, Shapes::ShapeRef.new(shape: ResourceDetails, location_name: "recommendedResourceDetails"))
    PreviewResult.add_member(:restart_needed, Shapes::ShapeRef.new(shape: Boolean, location_name: "restartNeeded"))
    PreviewResult.add_member(:estimated_monthly_savings, Shapes::ShapeRef.new(shape: EstimatedMonthlySavings, location_name: "estimatedMonthlySavings"))
    PreviewResult.add_member(:resource_tags, Shapes::ShapeRef.new(shape: TagList, location_name: "resourceTags"))
    PreviewResult.struct_class = Types::PreviewResult

    PreviewResultSummaries.member = Shapes::ShapeRef.new(shape: PreviewResultSummary)

    PreviewResultSummary.add_member(:key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "key"))
    PreviewResultSummary.add_member(:total, Shapes::ShapeRef.new(shape: RulePreviewTotal, required: true, location_name: "total"))
    PreviewResultSummary.struct_class = Types::PreviewResultSummary

    PreviewResults.member = Shapes::ShapeRef.new(shape: PreviewResult)

    RecommendedAction.add_member(:recommended_action_id, Shapes::ShapeRef.new(shape: RecommendedActionId, location_name: "recommendedActionId"))
    RecommendedAction.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn"))
    RecommendedAction.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "resourceId"))
    RecommendedAction.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    RecommendedAction.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "region"))
    RecommendedAction.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    RecommendedAction.add_member(:look_back_period_in_days, Shapes::ShapeRef.new(shape: Integer, location_name: "lookBackPeriodInDays"))
    RecommendedAction.add_member(:recommended_action_type, Shapes::ShapeRef.new(shape: RecommendedActionType, location_name: "recommendedActionType"))
    RecommendedAction.add_member(:current_resource_summary, Shapes::ShapeRef.new(shape: String, location_name: "currentResourceSummary"))
    RecommendedAction.add_member(:current_resource_details, Shapes::ShapeRef.new(shape: ResourceDetails, location_name: "currentResourceDetails"))
    RecommendedAction.add_member(:recommended_resource_summary, Shapes::ShapeRef.new(shape: String, location_name: "recommendedResourceSummary"))
    RecommendedAction.add_member(:recommended_resource_details, Shapes::ShapeRef.new(shape: ResourceDetails, location_name: "recommendedResourceDetails"))
    RecommendedAction.add_member(:restart_needed, Shapes::ShapeRef.new(shape: Boolean, location_name: "restartNeeded"))
    RecommendedAction.add_member(:estimated_monthly_savings, Shapes::ShapeRef.new(shape: EstimatedMonthlySavings, location_name: "estimatedMonthlySavings"))
    RecommendedAction.add_member(:resource_tags, Shapes::ShapeRef.new(shape: TagList, location_name: "resourceTags"))
    RecommendedAction.struct_class = Types::RecommendedAction

    RecommendedActionFilter.add_member(:name, Shapes::ShapeRef.new(shape: RecommendedActionFilterName, required: true, location_name: "name"))
    RecommendedActionFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, required: true, location_name: "values"))
    RecommendedActionFilter.struct_class = Types::RecommendedActionFilter

    RecommendedActionFilterList.member = Shapes::ShapeRef.new(shape: RecommendedActionFilter)

    RecommendedActionSummaries.member = Shapes::ShapeRef.new(shape: RecommendedActionSummary)

    RecommendedActionSummary.add_member(:key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "key"))
    RecommendedActionSummary.add_member(:total, Shapes::ShapeRef.new(shape: RecommendedActionTotal, required: true, location_name: "total"))
    RecommendedActionSummary.struct_class = Types::RecommendedActionSummary

    RecommendedActionTotal.add_member(:recommended_action_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "recommendedActionCount"))
    RecommendedActionTotal.add_member(:estimated_monthly_savings, Shapes::ShapeRef.new(shape: EstimatedMonthlySavings, required: true, location_name: "estimatedMonthlySavings"))
    RecommendedActionTotal.struct_class = Types::RecommendedActionTotal

    RecommendedActionTypeList.member = Shapes::ShapeRef.new(shape: RecommendedActionType)

    RecommendedActions.member = Shapes::ShapeRef.new(shape: RecommendedAction)

    ResourceDetails.add_member(:ebs_volume, Shapes::ShapeRef.new(shape: EbsVolume, location_name: "ebsVolume"))
    ResourceDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ResourceDetails.add_member_subclass(:ebs_volume, Types::ResourceDetails::EbsVolume)
    ResourceDetails.add_member_subclass(:unknown, Types::ResourceDetails::Unknown)
    ResourceDetails.struct_class = Types::ResourceDetails

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceTagsCriteriaCondition.add_member(:comparison, Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: "comparison"))
    ResourceTagsCriteriaCondition.add_member(:key, Shapes::ShapeRef.new(shape: StringCriteriaValue, location_name: "key"))
    ResourceTagsCriteriaCondition.add_member(:values, Shapes::ShapeRef.new(shape: StringCriteriaValues, location_name: "values"))
    ResourceTagsCriteriaCondition.struct_class = Types::ResourceTagsCriteriaCondition

    ResourceTagsCriteriaConditionList.member = Shapes::ShapeRef.new(shape: ResourceTagsCriteriaCondition)

    RollbackAutomationEventRequest.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "eventId"))
    RollbackAutomationEventRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    RollbackAutomationEventRequest.struct_class = Types::RollbackAutomationEventRequest

    RollbackAutomationEventResponse.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "eventId"))
    RollbackAutomationEventResponse.add_member(:event_status, Shapes::ShapeRef.new(shape: EventStatus, location_name: "eventStatus"))
    RollbackAutomationEventResponse.struct_class = Types::RollbackAutomationEventResponse

    RulePreviewTotal.add_member(:recommended_action_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "recommendedActionCount"))
    RulePreviewTotal.add_member(:estimated_monthly_savings, Shapes::ShapeRef.new(shape: EstimatedMonthlySavings, required: true, location_name: "estimatedMonthlySavings"))
    RulePreviewTotal.struct_class = Types::RulePreviewTotal

    Schedule.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: String, location_name: "scheduleExpression"))
    Schedule.add_member(:schedule_expression_timezone, Shapes::ShapeRef.new(shape: String, location_name: "scheduleExpressionTimezone"))
    Schedule.add_member(:execution_window_in_minutes, Shapes::ShapeRef.new(shape: ScheduleExecutionWindowInMinutesInteger, location_name: "executionWindowInMinutes"))
    Schedule.struct_class = Types::Schedule

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    StartAutomationEventRequest.add_member(:recommended_action_id, Shapes::ShapeRef.new(shape: RecommendedActionId, required: true, location_name: "recommendedActionId"))
    StartAutomationEventRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    StartAutomationEventRequest.struct_class = Types::StartAutomationEventRequest

    StartAutomationEventResponse.add_member(:recommended_action_id, Shapes::ShapeRef.new(shape: RecommendedActionId, location_name: "recommendedActionId"))
    StartAutomationEventResponse.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "eventId"))
    StartAutomationEventResponse.add_member(:event_status, Shapes::ShapeRef.new(shape: EventStatus, location_name: "eventStatus"))
    StartAutomationEventResponse.struct_class = Types::StartAutomationEventResponse

    StringCriteriaCondition.add_member(:comparison, Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: "comparison"))
    StringCriteriaCondition.add_member(:values, Shapes::ShapeRef.new(shape: StringCriteriaValues, location_name: "values"))
    StringCriteriaCondition.struct_class = Types::StringCriteriaCondition

    StringCriteriaConditionList.member = Shapes::ShapeRef.new(shape: StringCriteriaCondition)

    StringCriteriaValues.member = Shapes::ShapeRef.new(shape: StringCriteriaValue)

    StringList.member = Shapes::ShapeRef.new(shape: String)

    SummaryDimension.add_member(:key, Shapes::ShapeRef.new(shape: SummaryDimensionKey, required: true, location_name: "key"))
    SummaryDimension.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "value"))
    SummaryDimension.struct_class = Types::SummaryDimension

    SummaryDimensions.member = Shapes::ShapeRef.new(shape: SummaryDimension)

    SummaryTotals.add_member(:automation_event_count, Shapes::ShapeRef.new(shape: Integer, location_name: "automationEventCount"))
    SummaryTotals.add_member(:estimated_monthly_savings, Shapes::ShapeRef.new(shape: EstimatedMonthlySavings, location_name: "estimatedMonthlySavings"))
    SummaryTotals.struct_class = Types::SummaryTotals

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: String)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: RuleArn, required: true, location_name: "resourceArn"))
    TagResourceRequest.add_member(:rule_revision, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "ruleRevision"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    TagResourceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TimePeriod.add_member(:start_time_inclusive, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTimeInclusive"))
    TimePeriod.add_member(:end_time_exclusive, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTimeExclusive"))
    TimePeriod.struct_class = Types::TimePeriod

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: RuleArn, required: true, location_name: "resourceArn"))
    UntagResourceRequest.add_member(:rule_revision, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "ruleRevision"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAutomationRuleRequest.add_member(:rule_arn, Shapes::ShapeRef.new(shape: RuleArn, required: true, location_name: "ruleArn"))
    UpdateAutomationRuleRequest.add_member(:rule_revision, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "ruleRevision"))
    UpdateAutomationRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, location_name: "name"))
    UpdateAutomationRuleRequest.add_member(:description, Shapes::ShapeRef.new(shape: RuleDescription, location_name: "description"))
    UpdateAutomationRuleRequest.add_member(:rule_type, Shapes::ShapeRef.new(shape: RuleType, location_name: "ruleType"))
    UpdateAutomationRuleRequest.add_member(:organization_configuration, Shapes::ShapeRef.new(shape: OrganizationConfiguration, location_name: "organizationConfiguration"))
    UpdateAutomationRuleRequest.add_member(:priority, Shapes::ShapeRef.new(shape: String, location_name: "priority"))
    UpdateAutomationRuleRequest.add_member(:recommended_action_types, Shapes::ShapeRef.new(shape: RecommendedActionTypeList, location_name: "recommendedActionTypes"))
    UpdateAutomationRuleRequest.add_member(:criteria, Shapes::ShapeRef.new(shape: Criteria, location_name: "criteria"))
    UpdateAutomationRuleRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: Schedule, location_name: "schedule"))
    UpdateAutomationRuleRequest.add_member(:status, Shapes::ShapeRef.new(shape: RuleStatus, location_name: "status"))
    UpdateAutomationRuleRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateAutomationRuleRequest.struct_class = Types::UpdateAutomationRuleRequest

    UpdateAutomationRuleResponse.add_member(:rule_arn, Shapes::ShapeRef.new(shape: RuleArn, location_name: "ruleArn"))
    UpdateAutomationRuleResponse.add_member(:rule_revision, Shapes::ShapeRef.new(shape: Long, location_name: "ruleRevision"))
    UpdateAutomationRuleResponse.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, location_name: "name"))
    UpdateAutomationRuleResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateAutomationRuleResponse.add_member(:rule_type, Shapes::ShapeRef.new(shape: RuleType, location_name: "ruleType"))
    UpdateAutomationRuleResponse.add_member(:organization_configuration, Shapes::ShapeRef.new(shape: OrganizationConfiguration, location_name: "organizationConfiguration"))
    UpdateAutomationRuleResponse.add_member(:priority, Shapes::ShapeRef.new(shape: String, location_name: "priority"))
    UpdateAutomationRuleResponse.add_member(:recommended_action_types, Shapes::ShapeRef.new(shape: RecommendedActionTypeList, location_name: "recommendedActionTypes"))
    UpdateAutomationRuleResponse.add_member(:criteria, Shapes::ShapeRef.new(shape: Criteria, location_name: "criteria"))
    UpdateAutomationRuleResponse.add_member(:schedule, Shapes::ShapeRef.new(shape: Schedule, location_name: "schedule"))
    UpdateAutomationRuleResponse.add_member(:status, Shapes::ShapeRef.new(shape: RuleStatus, location_name: "status"))
    UpdateAutomationRuleResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTimestamp"))
    UpdateAutomationRuleResponse.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedTimestamp"))
    UpdateAutomationRuleResponse.struct_class = Types::UpdateAutomationRuleResponse

    UpdateEnrollmentConfigurationRequest.add_member(:status, Shapes::ShapeRef.new(shape: EnrollmentStatus, required: true, location_name: "status"))
    UpdateEnrollmentConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateEnrollmentConfigurationRequest.struct_class = Types::UpdateEnrollmentConfigurationRequest

    UpdateEnrollmentConfigurationResponse.add_member(:status, Shapes::ShapeRef.new(shape: EnrollmentStatus, required: true, location_name: "status"))
    UpdateEnrollmentConfigurationResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    UpdateEnrollmentConfigurationResponse.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedTimestamp"))
    UpdateEnrollmentConfigurationResponse.struct_class = Types::UpdateEnrollmentConfigurationResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2025-09-22"

      api.metadata = {
        "apiVersion" => "2025-09-22",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "aco-automation",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "Compute Optimizer Automation",
        "serviceId" => "Compute Optimizer Automation",
        "signatureVersion" => "v4",
        "signingName" => "aco-automation",
        "targetPrefix" => "ComputeOptimizerAutomationService",
        "uid" => "compute-optimizer-automation-2025-09-22",
      }

      api.add_operation(:associate_accounts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateAccounts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateAccountsRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateAccountsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: OptInRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: NotManagementAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyTokenInUseException)
      end)

      api.add_operation(:create_automation_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAutomationRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAutomationRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAutomationRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: OptInRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyTokenInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_automation_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAutomationRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAutomationRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAutomationRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: OptInRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyTokenInUseException)
      end)

      api.add_operation(:disassociate_accounts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateAccounts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateAccountsRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateAccountsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: OptInRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: NotManagementAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyTokenInUseException)
      end)

      api.add_operation(:get_automation_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAutomationEvent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAutomationEventRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAutomationEventResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: OptInRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_automation_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAutomationRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAutomationRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAutomationRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: OptInRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_enrollment_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEnrollmentConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetEnrollmentConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEnrollmentConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: OptInRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:list_accounts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccounts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAccountsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccountsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: OptInRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: NotManagementAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_automation_event_steps, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAutomationEventSteps"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAutomationEventStepsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAutomationEventStepsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: OptInRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_automation_event_summaries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAutomationEventSummaries"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAutomationEventSummariesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAutomationEventSummariesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: OptInRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_automation_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAutomationEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAutomationEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAutomationEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: OptInRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_automation_rule_preview, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAutomationRulePreview"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAutomationRulePreviewRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAutomationRulePreviewResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: OptInRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_automation_rule_preview_summaries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAutomationRulePreviewSummaries"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAutomationRulePreviewSummariesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAutomationRulePreviewSummariesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: OptInRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_automation_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAutomationRules"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAutomationRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAutomationRulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: OptInRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_recommended_action_summaries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRecommendedActionSummaries"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRecommendedActionSummariesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRecommendedActionSummariesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: OptInRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_recommended_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRecommendedActions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRecommendedActionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRecommendedActionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: OptInRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
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
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: OptInRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:rollback_automation_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RollbackAutomationEvent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RollbackAutomationEventRequest)
        o.output = Shapes::ShapeRef.new(shape: RollbackAutomationEventResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: OptInRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyTokenInUseException)
      end)

      api.add_operation(:start_automation_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartAutomationEvent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartAutomationEventRequest)
        o.output = Shapes::ShapeRef.new(shape: StartAutomationEventResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: OptInRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyTokenInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: OptInRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyTokenInUseException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: OptInRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyTokenInUseException)
      end)

      api.add_operation(:update_automation_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAutomationRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAutomationRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAutomationRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: OptInRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyTokenInUseException)
      end)

      api.add_operation(:update_enrollment_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEnrollmentConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEnrollmentConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEnrollmentConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: OptInRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: NotManagementAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyTokenInUseException)
      end)
    end

  end
end
