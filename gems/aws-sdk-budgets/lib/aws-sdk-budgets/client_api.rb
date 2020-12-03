# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Budgets
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    Action = Shapes::StructureShape.new(name: 'Action')
    ActionHistories = Shapes::ListShape.new(name: 'ActionHistories')
    ActionHistory = Shapes::StructureShape.new(name: 'ActionHistory')
    ActionHistoryDetails = Shapes::StructureShape.new(name: 'ActionHistoryDetails')
    ActionId = Shapes::StringShape.new(name: 'ActionId')
    ActionStatus = Shapes::StringShape.new(name: 'ActionStatus')
    ActionSubType = Shapes::StringShape.new(name: 'ActionSubType')
    ActionThreshold = Shapes::StructureShape.new(name: 'ActionThreshold')
    ActionType = Shapes::StringShape.new(name: 'ActionType')
    Actions = Shapes::ListShape.new(name: 'Actions')
    ApprovalModel = Shapes::StringShape.new(name: 'ApprovalModel')
    Budget = Shapes::StructureShape.new(name: 'Budget')
    BudgetName = Shapes::StringShape.new(name: 'BudgetName')
    BudgetPerformanceHistory = Shapes::StructureShape.new(name: 'BudgetPerformanceHistory')
    BudgetType = Shapes::StringShape.new(name: 'BudgetType')
    BudgetedAndActualAmounts = Shapes::StructureShape.new(name: 'BudgetedAndActualAmounts')
    BudgetedAndActualAmountsList = Shapes::ListShape.new(name: 'BudgetedAndActualAmountsList')
    Budgets = Shapes::ListShape.new(name: 'Budgets')
    CalculatedSpend = Shapes::StructureShape.new(name: 'CalculatedSpend')
    ComparisonOperator = Shapes::StringShape.new(name: 'ComparisonOperator')
    CostFilters = Shapes::MapShape.new(name: 'CostFilters')
    CostTypes = Shapes::StructureShape.new(name: 'CostTypes')
    CreateBudgetActionRequest = Shapes::StructureShape.new(name: 'CreateBudgetActionRequest')
    CreateBudgetActionResponse = Shapes::StructureShape.new(name: 'CreateBudgetActionResponse')
    CreateBudgetRequest = Shapes::StructureShape.new(name: 'CreateBudgetRequest')
    CreateBudgetResponse = Shapes::StructureShape.new(name: 'CreateBudgetResponse')
    CreateNotificationRequest = Shapes::StructureShape.new(name: 'CreateNotificationRequest')
    CreateNotificationResponse = Shapes::StructureShape.new(name: 'CreateNotificationResponse')
    CreateSubscriberRequest = Shapes::StructureShape.new(name: 'CreateSubscriberRequest')
    CreateSubscriberResponse = Shapes::StructureShape.new(name: 'CreateSubscriberResponse')
    CreationLimitExceededException = Shapes::StructureShape.new(name: 'CreationLimitExceededException')
    Definition = Shapes::StructureShape.new(name: 'Definition')
    DeleteBudgetActionRequest = Shapes::StructureShape.new(name: 'DeleteBudgetActionRequest')
    DeleteBudgetActionResponse = Shapes::StructureShape.new(name: 'DeleteBudgetActionResponse')
    DeleteBudgetRequest = Shapes::StructureShape.new(name: 'DeleteBudgetRequest')
    DeleteBudgetResponse = Shapes::StructureShape.new(name: 'DeleteBudgetResponse')
    DeleteNotificationRequest = Shapes::StructureShape.new(name: 'DeleteNotificationRequest')
    DeleteNotificationResponse = Shapes::StructureShape.new(name: 'DeleteNotificationResponse')
    DeleteSubscriberRequest = Shapes::StructureShape.new(name: 'DeleteSubscriberRequest')
    DeleteSubscriberResponse = Shapes::StructureShape.new(name: 'DeleteSubscriberResponse')
    DescribeBudgetActionHistoriesRequest = Shapes::StructureShape.new(name: 'DescribeBudgetActionHistoriesRequest')
    DescribeBudgetActionHistoriesResponse = Shapes::StructureShape.new(name: 'DescribeBudgetActionHistoriesResponse')
    DescribeBudgetActionRequest = Shapes::StructureShape.new(name: 'DescribeBudgetActionRequest')
    DescribeBudgetActionResponse = Shapes::StructureShape.new(name: 'DescribeBudgetActionResponse')
    DescribeBudgetActionsForAccountRequest = Shapes::StructureShape.new(name: 'DescribeBudgetActionsForAccountRequest')
    DescribeBudgetActionsForAccountResponse = Shapes::StructureShape.new(name: 'DescribeBudgetActionsForAccountResponse')
    DescribeBudgetActionsForBudgetRequest = Shapes::StructureShape.new(name: 'DescribeBudgetActionsForBudgetRequest')
    DescribeBudgetActionsForBudgetResponse = Shapes::StructureShape.new(name: 'DescribeBudgetActionsForBudgetResponse')
    DescribeBudgetPerformanceHistoryRequest = Shapes::StructureShape.new(name: 'DescribeBudgetPerformanceHistoryRequest')
    DescribeBudgetPerformanceHistoryResponse = Shapes::StructureShape.new(name: 'DescribeBudgetPerformanceHistoryResponse')
    DescribeBudgetRequest = Shapes::StructureShape.new(name: 'DescribeBudgetRequest')
    DescribeBudgetResponse = Shapes::StructureShape.new(name: 'DescribeBudgetResponse')
    DescribeBudgetsRequest = Shapes::StructureShape.new(name: 'DescribeBudgetsRequest')
    DescribeBudgetsResponse = Shapes::StructureShape.new(name: 'DescribeBudgetsResponse')
    DescribeNotificationsForBudgetRequest = Shapes::StructureShape.new(name: 'DescribeNotificationsForBudgetRequest')
    DescribeNotificationsForBudgetResponse = Shapes::StructureShape.new(name: 'DescribeNotificationsForBudgetResponse')
    DescribeSubscribersForNotificationRequest = Shapes::StructureShape.new(name: 'DescribeSubscribersForNotificationRequest')
    DescribeSubscribersForNotificationResponse = Shapes::StructureShape.new(name: 'DescribeSubscribersForNotificationResponse')
    DimensionValues = Shapes::ListShape.new(name: 'DimensionValues')
    DuplicateRecordException = Shapes::StructureShape.new(name: 'DuplicateRecordException')
    EventType = Shapes::StringShape.new(name: 'EventType')
    ExecuteBudgetActionRequest = Shapes::StructureShape.new(name: 'ExecuteBudgetActionRequest')
    ExecuteBudgetActionResponse = Shapes::StructureShape.new(name: 'ExecuteBudgetActionResponse')
    ExecutionType = Shapes::StringShape.new(name: 'ExecutionType')
    ExpiredNextTokenException = Shapes::StructureShape.new(name: 'ExpiredNextTokenException')
    GenericString = Shapes::StringShape.new(name: 'GenericString')
    GenericTimestamp = Shapes::TimestampShape.new(name: 'GenericTimestamp')
    Group = Shapes::StringShape.new(name: 'Group')
    Groups = Shapes::ListShape.new(name: 'Groups')
    IamActionDefinition = Shapes::StructureShape.new(name: 'IamActionDefinition')
    InstanceId = Shapes::StringShape.new(name: 'InstanceId')
    InstanceIds = Shapes::ListShape.new(name: 'InstanceIds')
    InternalErrorException = Shapes::StructureShape.new(name: 'InternalErrorException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    Notification = Shapes::StructureShape.new(name: 'Notification')
    NotificationState = Shapes::StringShape.new(name: 'NotificationState')
    NotificationThreshold = Shapes::FloatShape.new(name: 'NotificationThreshold')
    NotificationType = Shapes::StringShape.new(name: 'NotificationType')
    NotificationWithSubscribers = Shapes::StructureShape.new(name: 'NotificationWithSubscribers')
    NotificationWithSubscribersList = Shapes::ListShape.new(name: 'NotificationWithSubscribersList')
    Notifications = Shapes::ListShape.new(name: 'Notifications')
    NullableBoolean = Shapes::BooleanShape.new(name: 'NullableBoolean')
    NumericValue = Shapes::StringShape.new(name: 'NumericValue')
    PlannedBudgetLimits = Shapes::MapShape.new(name: 'PlannedBudgetLimits')
    PolicyArn = Shapes::StringShape.new(name: 'PolicyArn')
    PolicyId = Shapes::StringShape.new(name: 'PolicyId')
    Region = Shapes::StringShape.new(name: 'Region')
    ResourceLockedException = Shapes::StructureShape.new(name: 'ResourceLockedException')
    Role = Shapes::StringShape.new(name: 'Role')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    Roles = Shapes::ListShape.new(name: 'Roles')
    ScpActionDefinition = Shapes::StructureShape.new(name: 'ScpActionDefinition')
    Spend = Shapes::StructureShape.new(name: 'Spend')
    SsmActionDefinition = Shapes::StructureShape.new(name: 'SsmActionDefinition')
    Subscriber = Shapes::StructureShape.new(name: 'Subscriber')
    SubscriberAddress = Shapes::StringShape.new(name: 'SubscriberAddress')
    Subscribers = Shapes::ListShape.new(name: 'Subscribers')
    SubscriptionType = Shapes::StringShape.new(name: 'SubscriptionType')
    TargetId = Shapes::StringShape.new(name: 'TargetId')
    TargetIds = Shapes::ListShape.new(name: 'TargetIds')
    ThresholdType = Shapes::StringShape.new(name: 'ThresholdType')
    TimePeriod = Shapes::StructureShape.new(name: 'TimePeriod')
    TimeUnit = Shapes::StringShape.new(name: 'TimeUnit')
    UnitValue = Shapes::StringShape.new(name: 'UnitValue')
    UpdateBudgetActionRequest = Shapes::StructureShape.new(name: 'UpdateBudgetActionRequest')
    UpdateBudgetActionResponse = Shapes::StructureShape.new(name: 'UpdateBudgetActionResponse')
    UpdateBudgetRequest = Shapes::StructureShape.new(name: 'UpdateBudgetRequest')
    UpdateBudgetResponse = Shapes::StructureShape.new(name: 'UpdateBudgetResponse')
    UpdateNotificationRequest = Shapes::StructureShape.new(name: 'UpdateNotificationRequest')
    UpdateNotificationResponse = Shapes::StructureShape.new(name: 'UpdateNotificationResponse')
    UpdateSubscriberRequest = Shapes::StructureShape.new(name: 'UpdateSubscriberRequest')
    UpdateSubscriberResponse = Shapes::StructureShape.new(name: 'UpdateSubscriberResponse')
    User = Shapes::StringShape.new(name: 'User')
    Users = Shapes::ListShape.new(name: 'Users')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Action.add_member(:action_id, Shapes::ShapeRef.new(shape: ActionId, required: true, location_name: "ActionId"))
    Action.add_member(:budget_name, Shapes::ShapeRef.new(shape: BudgetName, required: true, location_name: "BudgetName"))
    Action.add_member(:notification_type, Shapes::ShapeRef.new(shape: NotificationType, required: true, location_name: "NotificationType"))
    Action.add_member(:action_type, Shapes::ShapeRef.new(shape: ActionType, required: true, location_name: "ActionType"))
    Action.add_member(:action_threshold, Shapes::ShapeRef.new(shape: ActionThreshold, required: true, location_name: "ActionThreshold"))
    Action.add_member(:definition, Shapes::ShapeRef.new(shape: Definition, required: true, location_name: "Definition"))
    Action.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "ExecutionRoleArn"))
    Action.add_member(:approval_model, Shapes::ShapeRef.new(shape: ApprovalModel, required: true, location_name: "ApprovalModel"))
    Action.add_member(:status, Shapes::ShapeRef.new(shape: ActionStatus, required: true, location_name: "Status"))
    Action.add_member(:subscribers, Shapes::ShapeRef.new(shape: Subscribers, required: true, location_name: "Subscribers"))
    Action.struct_class = Types::Action

    ActionHistories.member = Shapes::ShapeRef.new(shape: ActionHistory)

    ActionHistory.add_member(:timestamp, Shapes::ShapeRef.new(shape: GenericTimestamp, required: true, location_name: "Timestamp"))
    ActionHistory.add_member(:status, Shapes::ShapeRef.new(shape: ActionStatus, required: true, location_name: "Status"))
    ActionHistory.add_member(:event_type, Shapes::ShapeRef.new(shape: EventType, required: true, location_name: "EventType"))
    ActionHistory.add_member(:action_history_details, Shapes::ShapeRef.new(shape: ActionHistoryDetails, required: true, location_name: "ActionHistoryDetails"))
    ActionHistory.struct_class = Types::ActionHistory

    ActionHistoryDetails.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "Message"))
    ActionHistoryDetails.add_member(:action, Shapes::ShapeRef.new(shape: Action, required: true, location_name: "Action"))
    ActionHistoryDetails.struct_class = Types::ActionHistoryDetails

    ActionThreshold.add_member(:action_threshold_value, Shapes::ShapeRef.new(shape: NotificationThreshold, required: true, location_name: "ActionThresholdValue"))
    ActionThreshold.add_member(:action_threshold_type, Shapes::ShapeRef.new(shape: ThresholdType, required: true, location_name: "ActionThresholdType"))
    ActionThreshold.struct_class = Types::ActionThreshold

    Actions.member = Shapes::ShapeRef.new(shape: Action)

    Budget.add_member(:budget_name, Shapes::ShapeRef.new(shape: BudgetName, required: true, location_name: "BudgetName"))
    Budget.add_member(:budget_limit, Shapes::ShapeRef.new(shape: Spend, location_name: "BudgetLimit"))
    Budget.add_member(:planned_budget_limits, Shapes::ShapeRef.new(shape: PlannedBudgetLimits, location_name: "PlannedBudgetLimits"))
    Budget.add_member(:cost_filters, Shapes::ShapeRef.new(shape: CostFilters, location_name: "CostFilters"))
    Budget.add_member(:cost_types, Shapes::ShapeRef.new(shape: CostTypes, location_name: "CostTypes"))
    Budget.add_member(:time_unit, Shapes::ShapeRef.new(shape: TimeUnit, required: true, location_name: "TimeUnit"))
    Budget.add_member(:time_period, Shapes::ShapeRef.new(shape: TimePeriod, location_name: "TimePeriod"))
    Budget.add_member(:calculated_spend, Shapes::ShapeRef.new(shape: CalculatedSpend, location_name: "CalculatedSpend"))
    Budget.add_member(:budget_type, Shapes::ShapeRef.new(shape: BudgetType, required: true, location_name: "BudgetType"))
    Budget.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: GenericTimestamp, location_name: "LastUpdatedTime"))
    Budget.struct_class = Types::Budget

    BudgetPerformanceHistory.add_member(:budget_name, Shapes::ShapeRef.new(shape: BudgetName, location_name: "BudgetName"))
    BudgetPerformanceHistory.add_member(:budget_type, Shapes::ShapeRef.new(shape: BudgetType, location_name: "BudgetType"))
    BudgetPerformanceHistory.add_member(:cost_filters, Shapes::ShapeRef.new(shape: CostFilters, location_name: "CostFilters"))
    BudgetPerformanceHistory.add_member(:cost_types, Shapes::ShapeRef.new(shape: CostTypes, location_name: "CostTypes"))
    BudgetPerformanceHistory.add_member(:time_unit, Shapes::ShapeRef.new(shape: TimeUnit, location_name: "TimeUnit"))
    BudgetPerformanceHistory.add_member(:budgeted_and_actual_amounts_list, Shapes::ShapeRef.new(shape: BudgetedAndActualAmountsList, location_name: "BudgetedAndActualAmountsList"))
    BudgetPerformanceHistory.struct_class = Types::BudgetPerformanceHistory

    BudgetedAndActualAmounts.add_member(:budgeted_amount, Shapes::ShapeRef.new(shape: Spend, location_name: "BudgetedAmount"))
    BudgetedAndActualAmounts.add_member(:actual_amount, Shapes::ShapeRef.new(shape: Spend, location_name: "ActualAmount"))
    BudgetedAndActualAmounts.add_member(:time_period, Shapes::ShapeRef.new(shape: TimePeriod, location_name: "TimePeriod"))
    BudgetedAndActualAmounts.struct_class = Types::BudgetedAndActualAmounts

    BudgetedAndActualAmountsList.member = Shapes::ShapeRef.new(shape: BudgetedAndActualAmounts)

    Budgets.member = Shapes::ShapeRef.new(shape: Budget)

    CalculatedSpend.add_member(:actual_spend, Shapes::ShapeRef.new(shape: Spend, required: true, location_name: "ActualSpend"))
    CalculatedSpend.add_member(:forecasted_spend, Shapes::ShapeRef.new(shape: Spend, location_name: "ForecastedSpend"))
    CalculatedSpend.struct_class = Types::CalculatedSpend

    CostFilters.key = Shapes::ShapeRef.new(shape: GenericString)
    CostFilters.value = Shapes::ShapeRef.new(shape: DimensionValues)

    CostTypes.add_member(:include_tax, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "IncludeTax"))
    CostTypes.add_member(:include_subscription, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "IncludeSubscription"))
    CostTypes.add_member(:use_blended, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "UseBlended"))
    CostTypes.add_member(:include_refund, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "IncludeRefund"))
    CostTypes.add_member(:include_credit, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "IncludeCredit"))
    CostTypes.add_member(:include_upfront, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "IncludeUpfront"))
    CostTypes.add_member(:include_recurring, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "IncludeRecurring"))
    CostTypes.add_member(:include_other_subscription, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "IncludeOtherSubscription"))
    CostTypes.add_member(:include_support, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "IncludeSupport"))
    CostTypes.add_member(:include_discount, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "IncludeDiscount"))
    CostTypes.add_member(:use_amortized, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "UseAmortized"))
    CostTypes.struct_class = Types::CostTypes

    CreateBudgetActionRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    CreateBudgetActionRequest.add_member(:budget_name, Shapes::ShapeRef.new(shape: BudgetName, required: true, location_name: "BudgetName"))
    CreateBudgetActionRequest.add_member(:notification_type, Shapes::ShapeRef.new(shape: NotificationType, required: true, location_name: "NotificationType"))
    CreateBudgetActionRequest.add_member(:action_type, Shapes::ShapeRef.new(shape: ActionType, required: true, location_name: "ActionType"))
    CreateBudgetActionRequest.add_member(:action_threshold, Shapes::ShapeRef.new(shape: ActionThreshold, required: true, location_name: "ActionThreshold"))
    CreateBudgetActionRequest.add_member(:definition, Shapes::ShapeRef.new(shape: Definition, required: true, location_name: "Definition"))
    CreateBudgetActionRequest.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "ExecutionRoleArn"))
    CreateBudgetActionRequest.add_member(:approval_model, Shapes::ShapeRef.new(shape: ApprovalModel, required: true, location_name: "ApprovalModel"))
    CreateBudgetActionRequest.add_member(:subscribers, Shapes::ShapeRef.new(shape: Subscribers, required: true, location_name: "Subscribers"))
    CreateBudgetActionRequest.struct_class = Types::CreateBudgetActionRequest

    CreateBudgetActionResponse.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    CreateBudgetActionResponse.add_member(:budget_name, Shapes::ShapeRef.new(shape: BudgetName, required: true, location_name: "BudgetName"))
    CreateBudgetActionResponse.add_member(:action_id, Shapes::ShapeRef.new(shape: ActionId, required: true, location_name: "ActionId"))
    CreateBudgetActionResponse.struct_class = Types::CreateBudgetActionResponse

    CreateBudgetRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    CreateBudgetRequest.add_member(:budget, Shapes::ShapeRef.new(shape: Budget, required: true, location_name: "Budget"))
    CreateBudgetRequest.add_member(:notifications_with_subscribers, Shapes::ShapeRef.new(shape: NotificationWithSubscribersList, location_name: "NotificationsWithSubscribers"))
    CreateBudgetRequest.struct_class = Types::CreateBudgetRequest

    CreateBudgetResponse.struct_class = Types::CreateBudgetResponse

    CreateNotificationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    CreateNotificationRequest.add_member(:budget_name, Shapes::ShapeRef.new(shape: BudgetName, required: true, location_name: "BudgetName"))
    CreateNotificationRequest.add_member(:notification, Shapes::ShapeRef.new(shape: Notification, required: true, location_name: "Notification"))
    CreateNotificationRequest.add_member(:subscribers, Shapes::ShapeRef.new(shape: Subscribers, required: true, location_name: "Subscribers"))
    CreateNotificationRequest.struct_class = Types::CreateNotificationRequest

    CreateNotificationResponse.struct_class = Types::CreateNotificationResponse

    CreateSubscriberRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    CreateSubscriberRequest.add_member(:budget_name, Shapes::ShapeRef.new(shape: BudgetName, required: true, location_name: "BudgetName"))
    CreateSubscriberRequest.add_member(:notification, Shapes::ShapeRef.new(shape: Notification, required: true, location_name: "Notification"))
    CreateSubscriberRequest.add_member(:subscriber, Shapes::ShapeRef.new(shape: Subscriber, required: true, location_name: "Subscriber"))
    CreateSubscriberRequest.struct_class = Types::CreateSubscriberRequest

    CreateSubscriberResponse.struct_class = Types::CreateSubscriberResponse

    CreationLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "Message"))
    CreationLimitExceededException.struct_class = Types::CreationLimitExceededException

    Definition.add_member(:iam_action_definition, Shapes::ShapeRef.new(shape: IamActionDefinition, location_name: "IamActionDefinition"))
    Definition.add_member(:scp_action_definition, Shapes::ShapeRef.new(shape: ScpActionDefinition, location_name: "ScpActionDefinition"))
    Definition.add_member(:ssm_action_definition, Shapes::ShapeRef.new(shape: SsmActionDefinition, location_name: "SsmActionDefinition"))
    Definition.struct_class = Types::Definition

    DeleteBudgetActionRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    DeleteBudgetActionRequest.add_member(:budget_name, Shapes::ShapeRef.new(shape: BudgetName, required: true, location_name: "BudgetName"))
    DeleteBudgetActionRequest.add_member(:action_id, Shapes::ShapeRef.new(shape: ActionId, required: true, location_name: "ActionId"))
    DeleteBudgetActionRequest.struct_class = Types::DeleteBudgetActionRequest

    DeleteBudgetActionResponse.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    DeleteBudgetActionResponse.add_member(:budget_name, Shapes::ShapeRef.new(shape: BudgetName, required: true, location_name: "BudgetName"))
    DeleteBudgetActionResponse.add_member(:action, Shapes::ShapeRef.new(shape: Action, required: true, location_name: "Action"))
    DeleteBudgetActionResponse.struct_class = Types::DeleteBudgetActionResponse

    DeleteBudgetRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    DeleteBudgetRequest.add_member(:budget_name, Shapes::ShapeRef.new(shape: BudgetName, required: true, location_name: "BudgetName"))
    DeleteBudgetRequest.struct_class = Types::DeleteBudgetRequest

    DeleteBudgetResponse.struct_class = Types::DeleteBudgetResponse

    DeleteNotificationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    DeleteNotificationRequest.add_member(:budget_name, Shapes::ShapeRef.new(shape: BudgetName, required: true, location_name: "BudgetName"))
    DeleteNotificationRequest.add_member(:notification, Shapes::ShapeRef.new(shape: Notification, required: true, location_name: "Notification"))
    DeleteNotificationRequest.struct_class = Types::DeleteNotificationRequest

    DeleteNotificationResponse.struct_class = Types::DeleteNotificationResponse

    DeleteSubscriberRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    DeleteSubscriberRequest.add_member(:budget_name, Shapes::ShapeRef.new(shape: BudgetName, required: true, location_name: "BudgetName"))
    DeleteSubscriberRequest.add_member(:notification, Shapes::ShapeRef.new(shape: Notification, required: true, location_name: "Notification"))
    DeleteSubscriberRequest.add_member(:subscriber, Shapes::ShapeRef.new(shape: Subscriber, required: true, location_name: "Subscriber"))
    DeleteSubscriberRequest.struct_class = Types::DeleteSubscriberRequest

    DeleteSubscriberResponse.struct_class = Types::DeleteSubscriberResponse

    DescribeBudgetActionHistoriesRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    DescribeBudgetActionHistoriesRequest.add_member(:budget_name, Shapes::ShapeRef.new(shape: BudgetName, required: true, location_name: "BudgetName"))
    DescribeBudgetActionHistoriesRequest.add_member(:action_id, Shapes::ShapeRef.new(shape: ActionId, required: true, location_name: "ActionId"))
    DescribeBudgetActionHistoriesRequest.add_member(:time_period, Shapes::ShapeRef.new(shape: TimePeriod, location_name: "TimePeriod"))
    DescribeBudgetActionHistoriesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeBudgetActionHistoriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    DescribeBudgetActionHistoriesRequest.struct_class = Types::DescribeBudgetActionHistoriesRequest

    DescribeBudgetActionHistoriesResponse.add_member(:action_histories, Shapes::ShapeRef.new(shape: ActionHistories, required: true, location_name: "ActionHistories"))
    DescribeBudgetActionHistoriesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    DescribeBudgetActionHistoriesResponse.struct_class = Types::DescribeBudgetActionHistoriesResponse

    DescribeBudgetActionRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    DescribeBudgetActionRequest.add_member(:budget_name, Shapes::ShapeRef.new(shape: BudgetName, required: true, location_name: "BudgetName"))
    DescribeBudgetActionRequest.add_member(:action_id, Shapes::ShapeRef.new(shape: ActionId, required: true, location_name: "ActionId"))
    DescribeBudgetActionRequest.struct_class = Types::DescribeBudgetActionRequest

    DescribeBudgetActionResponse.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    DescribeBudgetActionResponse.add_member(:budget_name, Shapes::ShapeRef.new(shape: BudgetName, required: true, location_name: "BudgetName"))
    DescribeBudgetActionResponse.add_member(:action, Shapes::ShapeRef.new(shape: Action, required: true, location_name: "Action"))
    DescribeBudgetActionResponse.struct_class = Types::DescribeBudgetActionResponse

    DescribeBudgetActionsForAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    DescribeBudgetActionsForAccountRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeBudgetActionsForAccountRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    DescribeBudgetActionsForAccountRequest.struct_class = Types::DescribeBudgetActionsForAccountRequest

    DescribeBudgetActionsForAccountResponse.add_member(:actions, Shapes::ShapeRef.new(shape: Actions, required: true, location_name: "Actions"))
    DescribeBudgetActionsForAccountResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    DescribeBudgetActionsForAccountResponse.struct_class = Types::DescribeBudgetActionsForAccountResponse

    DescribeBudgetActionsForBudgetRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    DescribeBudgetActionsForBudgetRequest.add_member(:budget_name, Shapes::ShapeRef.new(shape: BudgetName, required: true, location_name: "BudgetName"))
    DescribeBudgetActionsForBudgetRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeBudgetActionsForBudgetRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    DescribeBudgetActionsForBudgetRequest.struct_class = Types::DescribeBudgetActionsForBudgetRequest

    DescribeBudgetActionsForBudgetResponse.add_member(:actions, Shapes::ShapeRef.new(shape: Actions, required: true, location_name: "Actions"))
    DescribeBudgetActionsForBudgetResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    DescribeBudgetActionsForBudgetResponse.struct_class = Types::DescribeBudgetActionsForBudgetResponse

    DescribeBudgetPerformanceHistoryRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    DescribeBudgetPerformanceHistoryRequest.add_member(:budget_name, Shapes::ShapeRef.new(shape: BudgetName, required: true, location_name: "BudgetName"))
    DescribeBudgetPerformanceHistoryRequest.add_member(:time_period, Shapes::ShapeRef.new(shape: TimePeriod, location_name: "TimePeriod"))
    DescribeBudgetPerformanceHistoryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeBudgetPerformanceHistoryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    DescribeBudgetPerformanceHistoryRequest.struct_class = Types::DescribeBudgetPerformanceHistoryRequest

    DescribeBudgetPerformanceHistoryResponse.add_member(:budget_performance_history, Shapes::ShapeRef.new(shape: BudgetPerformanceHistory, location_name: "BudgetPerformanceHistory"))
    DescribeBudgetPerformanceHistoryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    DescribeBudgetPerformanceHistoryResponse.struct_class = Types::DescribeBudgetPerformanceHistoryResponse

    DescribeBudgetRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    DescribeBudgetRequest.add_member(:budget_name, Shapes::ShapeRef.new(shape: BudgetName, required: true, location_name: "BudgetName"))
    DescribeBudgetRequest.struct_class = Types::DescribeBudgetRequest

    DescribeBudgetResponse.add_member(:budget, Shapes::ShapeRef.new(shape: Budget, location_name: "Budget"))
    DescribeBudgetResponse.struct_class = Types::DescribeBudgetResponse

    DescribeBudgetsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    DescribeBudgetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeBudgetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    DescribeBudgetsRequest.struct_class = Types::DescribeBudgetsRequest

    DescribeBudgetsResponse.add_member(:budgets, Shapes::ShapeRef.new(shape: Budgets, location_name: "Budgets"))
    DescribeBudgetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    DescribeBudgetsResponse.struct_class = Types::DescribeBudgetsResponse

    DescribeNotificationsForBudgetRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    DescribeNotificationsForBudgetRequest.add_member(:budget_name, Shapes::ShapeRef.new(shape: BudgetName, required: true, location_name: "BudgetName"))
    DescribeNotificationsForBudgetRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeNotificationsForBudgetRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    DescribeNotificationsForBudgetRequest.struct_class = Types::DescribeNotificationsForBudgetRequest

    DescribeNotificationsForBudgetResponse.add_member(:notifications, Shapes::ShapeRef.new(shape: Notifications, location_name: "Notifications"))
    DescribeNotificationsForBudgetResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    DescribeNotificationsForBudgetResponse.struct_class = Types::DescribeNotificationsForBudgetResponse

    DescribeSubscribersForNotificationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    DescribeSubscribersForNotificationRequest.add_member(:budget_name, Shapes::ShapeRef.new(shape: BudgetName, required: true, location_name: "BudgetName"))
    DescribeSubscribersForNotificationRequest.add_member(:notification, Shapes::ShapeRef.new(shape: Notification, required: true, location_name: "Notification"))
    DescribeSubscribersForNotificationRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeSubscribersForNotificationRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    DescribeSubscribersForNotificationRequest.struct_class = Types::DescribeSubscribersForNotificationRequest

    DescribeSubscribersForNotificationResponse.add_member(:subscribers, Shapes::ShapeRef.new(shape: Subscribers, location_name: "Subscribers"))
    DescribeSubscribersForNotificationResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    DescribeSubscribersForNotificationResponse.struct_class = Types::DescribeSubscribersForNotificationResponse

    DimensionValues.member = Shapes::ShapeRef.new(shape: GenericString)

    DuplicateRecordException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "Message"))
    DuplicateRecordException.struct_class = Types::DuplicateRecordException

    ExecuteBudgetActionRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    ExecuteBudgetActionRequest.add_member(:budget_name, Shapes::ShapeRef.new(shape: BudgetName, required: true, location_name: "BudgetName"))
    ExecuteBudgetActionRequest.add_member(:action_id, Shapes::ShapeRef.new(shape: ActionId, required: true, location_name: "ActionId"))
    ExecuteBudgetActionRequest.add_member(:execution_type, Shapes::ShapeRef.new(shape: ExecutionType, required: true, location_name: "ExecutionType"))
    ExecuteBudgetActionRequest.struct_class = Types::ExecuteBudgetActionRequest

    ExecuteBudgetActionResponse.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    ExecuteBudgetActionResponse.add_member(:budget_name, Shapes::ShapeRef.new(shape: BudgetName, required: true, location_name: "BudgetName"))
    ExecuteBudgetActionResponse.add_member(:action_id, Shapes::ShapeRef.new(shape: ActionId, required: true, location_name: "ActionId"))
    ExecuteBudgetActionResponse.add_member(:execution_type, Shapes::ShapeRef.new(shape: ExecutionType, required: true, location_name: "ExecutionType"))
    ExecuteBudgetActionResponse.struct_class = Types::ExecuteBudgetActionResponse

    ExpiredNextTokenException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "Message"))
    ExpiredNextTokenException.struct_class = Types::ExpiredNextTokenException

    Groups.member = Shapes::ShapeRef.new(shape: Group)

    IamActionDefinition.add_member(:policy_arn, Shapes::ShapeRef.new(shape: PolicyArn, required: true, location_name: "PolicyArn"))
    IamActionDefinition.add_member(:roles, Shapes::ShapeRef.new(shape: Roles, location_name: "Roles"))
    IamActionDefinition.add_member(:groups, Shapes::ShapeRef.new(shape: Groups, location_name: "Groups"))
    IamActionDefinition.add_member(:users, Shapes::ShapeRef.new(shape: Users, location_name: "Users"))
    IamActionDefinition.struct_class = Types::IamActionDefinition

    InstanceIds.member = Shapes::ShapeRef.new(shape: InstanceId)

    InternalErrorException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "Message"))
    InternalErrorException.struct_class = Types::InternalErrorException

    InvalidNextTokenException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "Message"))
    InvalidNextTokenException.struct_class = Types::InvalidNextTokenException

    InvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "Message"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "Message"))
    NotFoundException.struct_class = Types::NotFoundException

    Notification.add_member(:notification_type, Shapes::ShapeRef.new(shape: NotificationType, required: true, location_name: "NotificationType"))
    Notification.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperator, required: true, location_name: "ComparisonOperator"))
    Notification.add_member(:threshold, Shapes::ShapeRef.new(shape: NotificationThreshold, required: true, location_name: "Threshold"))
    Notification.add_member(:threshold_type, Shapes::ShapeRef.new(shape: ThresholdType, location_name: "ThresholdType"))
    Notification.add_member(:notification_state, Shapes::ShapeRef.new(shape: NotificationState, location_name: "NotificationState"))
    Notification.struct_class = Types::Notification

    NotificationWithSubscribers.add_member(:notification, Shapes::ShapeRef.new(shape: Notification, required: true, location_name: "Notification"))
    NotificationWithSubscribers.add_member(:subscribers, Shapes::ShapeRef.new(shape: Subscribers, required: true, location_name: "Subscribers"))
    NotificationWithSubscribers.struct_class = Types::NotificationWithSubscribers

    NotificationWithSubscribersList.member = Shapes::ShapeRef.new(shape: NotificationWithSubscribers)

    Notifications.member = Shapes::ShapeRef.new(shape: Notification)

    PlannedBudgetLimits.key = Shapes::ShapeRef.new(shape: GenericString)
    PlannedBudgetLimits.value = Shapes::ShapeRef.new(shape: Spend)

    ResourceLockedException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "Message"))
    ResourceLockedException.struct_class = Types::ResourceLockedException

    Roles.member = Shapes::ShapeRef.new(shape: Role)

    ScpActionDefinition.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "PolicyId"))
    ScpActionDefinition.add_member(:target_ids, Shapes::ShapeRef.new(shape: TargetIds, required: true, location_name: "TargetIds"))
    ScpActionDefinition.struct_class = Types::ScpActionDefinition

    Spend.add_member(:amount, Shapes::ShapeRef.new(shape: NumericValue, required: true, location_name: "Amount"))
    Spend.add_member(:unit, Shapes::ShapeRef.new(shape: UnitValue, required: true, location_name: "Unit"))
    Spend.struct_class = Types::Spend

    SsmActionDefinition.add_member(:action_sub_type, Shapes::ShapeRef.new(shape: ActionSubType, required: true, location_name: "ActionSubType"))
    SsmActionDefinition.add_member(:region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "Region"))
    SsmActionDefinition.add_member(:instance_ids, Shapes::ShapeRef.new(shape: InstanceIds, required: true, location_name: "InstanceIds"))
    SsmActionDefinition.struct_class = Types::SsmActionDefinition

    Subscriber.add_member(:subscription_type, Shapes::ShapeRef.new(shape: SubscriptionType, required: true, location_name: "SubscriptionType"))
    Subscriber.add_member(:address, Shapes::ShapeRef.new(shape: SubscriberAddress, required: true, location_name: "Address"))
    Subscriber.struct_class = Types::Subscriber

    Subscribers.member = Shapes::ShapeRef.new(shape: Subscriber)

    TargetIds.member = Shapes::ShapeRef.new(shape: TargetId)

    TimePeriod.add_member(:start, Shapes::ShapeRef.new(shape: GenericTimestamp, location_name: "Start"))
    TimePeriod.add_member(:end, Shapes::ShapeRef.new(shape: GenericTimestamp, location_name: "End"))
    TimePeriod.struct_class = Types::TimePeriod

    UpdateBudgetActionRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    UpdateBudgetActionRequest.add_member(:budget_name, Shapes::ShapeRef.new(shape: BudgetName, required: true, location_name: "BudgetName"))
    UpdateBudgetActionRequest.add_member(:action_id, Shapes::ShapeRef.new(shape: ActionId, required: true, location_name: "ActionId"))
    UpdateBudgetActionRequest.add_member(:notification_type, Shapes::ShapeRef.new(shape: NotificationType, location_name: "NotificationType"))
    UpdateBudgetActionRequest.add_member(:action_threshold, Shapes::ShapeRef.new(shape: ActionThreshold, location_name: "ActionThreshold"))
    UpdateBudgetActionRequest.add_member(:definition, Shapes::ShapeRef.new(shape: Definition, location_name: "Definition"))
    UpdateBudgetActionRequest.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "ExecutionRoleArn"))
    UpdateBudgetActionRequest.add_member(:approval_model, Shapes::ShapeRef.new(shape: ApprovalModel, location_name: "ApprovalModel"))
    UpdateBudgetActionRequest.add_member(:subscribers, Shapes::ShapeRef.new(shape: Subscribers, location_name: "Subscribers"))
    UpdateBudgetActionRequest.struct_class = Types::UpdateBudgetActionRequest

    UpdateBudgetActionResponse.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    UpdateBudgetActionResponse.add_member(:budget_name, Shapes::ShapeRef.new(shape: BudgetName, required: true, location_name: "BudgetName"))
    UpdateBudgetActionResponse.add_member(:old_action, Shapes::ShapeRef.new(shape: Action, required: true, location_name: "OldAction"))
    UpdateBudgetActionResponse.add_member(:new_action, Shapes::ShapeRef.new(shape: Action, required: true, location_name: "NewAction"))
    UpdateBudgetActionResponse.struct_class = Types::UpdateBudgetActionResponse

    UpdateBudgetRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    UpdateBudgetRequest.add_member(:new_budget, Shapes::ShapeRef.new(shape: Budget, required: true, location_name: "NewBudget"))
    UpdateBudgetRequest.struct_class = Types::UpdateBudgetRequest

    UpdateBudgetResponse.struct_class = Types::UpdateBudgetResponse

    UpdateNotificationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    UpdateNotificationRequest.add_member(:budget_name, Shapes::ShapeRef.new(shape: BudgetName, required: true, location_name: "BudgetName"))
    UpdateNotificationRequest.add_member(:old_notification, Shapes::ShapeRef.new(shape: Notification, required: true, location_name: "OldNotification"))
    UpdateNotificationRequest.add_member(:new_notification, Shapes::ShapeRef.new(shape: Notification, required: true, location_name: "NewNotification"))
    UpdateNotificationRequest.struct_class = Types::UpdateNotificationRequest

    UpdateNotificationResponse.struct_class = Types::UpdateNotificationResponse

    UpdateSubscriberRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    UpdateSubscriberRequest.add_member(:budget_name, Shapes::ShapeRef.new(shape: BudgetName, required: true, location_name: "BudgetName"))
    UpdateSubscriberRequest.add_member(:notification, Shapes::ShapeRef.new(shape: Notification, required: true, location_name: "Notification"))
    UpdateSubscriberRequest.add_member(:old_subscriber, Shapes::ShapeRef.new(shape: Subscriber, required: true, location_name: "OldSubscriber"))
    UpdateSubscriberRequest.add_member(:new_subscriber, Shapes::ShapeRef.new(shape: Subscriber, required: true, location_name: "NewSubscriber"))
    UpdateSubscriberRequest.struct_class = Types::UpdateSubscriberRequest

    UpdateSubscriberResponse.struct_class = Types::UpdateSubscriberResponse

    Users.member = Shapes::ShapeRef.new(shape: User)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-10-20"

      api.metadata = {
        "apiVersion" => "2016-10-20",
        "endpointPrefix" => "budgets",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "AWSBudgets",
        "serviceFullName" => "AWS Budgets",
        "serviceId" => "Budgets",
        "signatureVersion" => "v4",
        "targetPrefix" => "AWSBudgetServiceGateway",
        "uid" => "budgets-2016-10-20",
      }

      api.add_operation(:create_budget, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBudget"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateBudgetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBudgetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: CreationLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateRecordException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_budget_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBudgetAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateBudgetActionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBudgetActionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: CreationLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateRecordException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_notification, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNotification"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateNotificationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateNotificationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CreationLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateRecordException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_subscriber, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSubscriber"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSubscriberRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSubscriberResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: CreationLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateRecordException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_budget, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBudget"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteBudgetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBudgetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_budget_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBudgetAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteBudgetActionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBudgetActionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLockedException)
      end)

      api.add_operation(:delete_notification, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNotification"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteNotificationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteNotificationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_subscriber, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSubscriber"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSubscriberRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSubscriberResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_budget, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBudget"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeBudgetRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeBudgetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_budget_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBudgetAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeBudgetActionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeBudgetActionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_budget_action_histories, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBudgetActionHistories"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeBudgetActionHistoriesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeBudgetActionHistoriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_budget_actions_for_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBudgetActionsForAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeBudgetActionsForAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeBudgetActionsForAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_budget_actions_for_budget, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBudgetActionsForBudget"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeBudgetActionsForBudgetRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeBudgetActionsForBudgetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_budget_performance_history, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBudgetPerformanceHistory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeBudgetPerformanceHistoryRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeBudgetPerformanceHistoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_budgets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBudgets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeBudgetsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeBudgetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_notifications_for_budget, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeNotificationsForBudget"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeNotificationsForBudgetRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeNotificationsForBudgetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_subscribers_for_notification, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSubscribersForNotification"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSubscribersForNotificationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSubscribersForNotificationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:execute_budget_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExecuteBudgetAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ExecuteBudgetActionRequest)
        o.output = Shapes::ShapeRef.new(shape: ExecuteBudgetActionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLockedException)
      end)

      api.add_operation(:update_budget, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBudget"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateBudgetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBudgetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_budget_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBudgetAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateBudgetActionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBudgetActionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLockedException)
      end)

      api.add_operation(:update_notification, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNotification"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateNotificationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateNotificationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateRecordException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_subscriber, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSubscriber"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSubscriberRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSubscriberResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateRecordException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
