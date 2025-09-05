# frozen_string_literal: true

# This is generated code!

module Aws::Budgets
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.budgets#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    Action = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#Action', name: 'Action')
    ActionHistories = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.budgets#ActionHistories', name: 'ActionHistories', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ActionHistory = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#ActionHistory', name: 'ActionHistory')
    ActionHistoryDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#ActionHistoryDetails', name: 'ActionHistoryDetails')
    ActionId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.budgets#ActionId', name: 'ActionId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$"})
    ActionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.budgets#ActionStatus', name: 'ActionStatus')
    ActionSubType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.budgets#ActionSubType', name: 'ActionSubType')
    ActionThreshold = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#ActionThreshold', name: 'ActionThreshold')
    ActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.budgets#ActionType', name: 'ActionType')
    Actions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.budgets#Actions', name: 'Actions', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    AdjustmentPeriod = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.budgets#AdjustmentPeriod', name: 'AdjustmentPeriod', traits: {"smithy.api#range" => {"min" => 1, "max" => 60}})
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.budgets#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    ApprovalModel = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.budgets#ApprovalModel', name: 'ApprovalModel')
    AutoAdjustData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#AutoAdjustData', name: 'AutoAdjustData')
    AutoAdjustType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.budgets#AutoAdjustType', name: 'AutoAdjustType')
    BillingViewArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.budgets#BillingViewArn', name: 'BillingViewArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-z-]*:(billing)::[0-9]{12}:billingview/[a-zA-Z0-9/:_+=.\\-@]{0,75}[a-zA-Z0-9]$"})
    Budget = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#Budget', name: 'Budget')
    BudgetName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.budgets#BudgetName', name: 'BudgetName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^(?![^:\\\\]*/action/|(?i).*<script>.*</script>.*)[^:\\\\]+$"})
    BudgetNotificationsForAccount = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#BudgetNotificationsForAccount', name: 'BudgetNotificationsForAccount')
    BudgetNotificationsForAccountList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.budgets#BudgetNotificationsForAccountList', name: 'BudgetNotificationsForAccountList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    BudgetPerformanceHistory = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#BudgetPerformanceHistory', name: 'BudgetPerformanceHistory')
    BudgetType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.budgets#BudgetType', name: 'BudgetType')
    BudgetedAndActualAmounts = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#BudgetedAndActualAmounts', name: 'BudgetedAndActualAmounts')
    BudgetedAndActualAmountsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.budgets#BudgetedAndActualAmountsList', name: 'BudgetedAndActualAmountsList')
    Budgets = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.budgets#Budgets', name: 'Budgets')
    CalculatedSpend = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#CalculatedSpend', name: 'CalculatedSpend')
    ComparisonOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.budgets#ComparisonOperator', name: 'ComparisonOperator')
    CostCategoryName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.budgets#CostCategoryName', name: 'CostCategoryName')
    CostCategoryValues = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#CostCategoryValues', name: 'CostCategoryValues')
    CostFilters = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.budgets#CostFilters', name: 'CostFilters')
    CostTypes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#CostTypes', name: 'CostTypes')
    CreateBudgetActionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#CreateBudgetActionRequest', name: 'CreateBudgetActionRequest')
    CreateBudgetActionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#CreateBudgetActionResponse', name: 'CreateBudgetActionResponse')
    CreateBudgetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#CreateBudgetRequest', name: 'CreateBudgetRequest')
    CreateBudgetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#CreateBudgetResponse', name: 'CreateBudgetResponse')
    CreateNotificationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#CreateNotificationRequest', name: 'CreateNotificationRequest')
    CreateNotificationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#CreateNotificationResponse', name: 'CreateNotificationResponse')
    CreateSubscriberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#CreateSubscriberRequest', name: 'CreateSubscriberRequest')
    CreateSubscriberResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#CreateSubscriberResponse', name: 'CreateSubscriberResponse')
    CreationLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#CreationLimitExceededException', name: 'CreationLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 405})
    Definition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#Definition', name: 'Definition')
    DeleteBudgetActionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#DeleteBudgetActionRequest', name: 'DeleteBudgetActionRequest')
    DeleteBudgetActionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#DeleteBudgetActionResponse', name: 'DeleteBudgetActionResponse')
    DeleteBudgetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#DeleteBudgetRequest', name: 'DeleteBudgetRequest')
    DeleteBudgetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#DeleteBudgetResponse', name: 'DeleteBudgetResponse')
    DeleteNotificationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#DeleteNotificationRequest', name: 'DeleteNotificationRequest')
    DeleteNotificationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#DeleteNotificationResponse', name: 'DeleteNotificationResponse')
    DeleteSubscriberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#DeleteSubscriberRequest', name: 'DeleteSubscriberRequest')
    DeleteSubscriberResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#DeleteSubscriberResponse', name: 'DeleteSubscriberResponse')
    DescribeBudgetActionHistoriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#DescribeBudgetActionHistoriesRequest', name: 'DescribeBudgetActionHistoriesRequest')
    DescribeBudgetActionHistoriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#DescribeBudgetActionHistoriesResponse', name: 'DescribeBudgetActionHistoriesResponse')
    DescribeBudgetActionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#DescribeBudgetActionRequest', name: 'DescribeBudgetActionRequest')
    DescribeBudgetActionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#DescribeBudgetActionResponse', name: 'DescribeBudgetActionResponse')
    DescribeBudgetActionsForAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#DescribeBudgetActionsForAccountRequest', name: 'DescribeBudgetActionsForAccountRequest')
    DescribeBudgetActionsForAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#DescribeBudgetActionsForAccountResponse', name: 'DescribeBudgetActionsForAccountResponse')
    DescribeBudgetActionsForBudgetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#DescribeBudgetActionsForBudgetRequest', name: 'DescribeBudgetActionsForBudgetRequest')
    DescribeBudgetActionsForBudgetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#DescribeBudgetActionsForBudgetResponse', name: 'DescribeBudgetActionsForBudgetResponse')
    DescribeBudgetNotificationsForAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#DescribeBudgetNotificationsForAccountRequest', name: 'DescribeBudgetNotificationsForAccountRequest')
    DescribeBudgetNotificationsForAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#DescribeBudgetNotificationsForAccountResponse', name: 'DescribeBudgetNotificationsForAccountResponse')
    DescribeBudgetPerformanceHistoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#DescribeBudgetPerformanceHistoryRequest', name: 'DescribeBudgetPerformanceHistoryRequest')
    DescribeBudgetPerformanceHistoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#DescribeBudgetPerformanceHistoryResponse', name: 'DescribeBudgetPerformanceHistoryResponse')
    DescribeBudgetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#DescribeBudgetRequest', name: 'DescribeBudgetRequest')
    DescribeBudgetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#DescribeBudgetResponse', name: 'DescribeBudgetResponse')
    DescribeBudgetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#DescribeBudgetsRequest', name: 'DescribeBudgetsRequest')
    DescribeBudgetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#DescribeBudgetsResponse', name: 'DescribeBudgetsResponse')
    DescribeNotificationsForBudgetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#DescribeNotificationsForBudgetRequest', name: 'DescribeNotificationsForBudgetRequest')
    DescribeNotificationsForBudgetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#DescribeNotificationsForBudgetResponse', name: 'DescribeNotificationsForBudgetResponse')
    DescribeSubscribersForNotificationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#DescribeSubscribersForNotificationRequest', name: 'DescribeSubscribersForNotificationRequest')
    DescribeSubscribersForNotificationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#DescribeSubscribersForNotificationResponse', name: 'DescribeSubscribersForNotificationResponse')
    Dimension = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.budgets#Dimension', name: 'Dimension')
    DimensionValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.budgets#DimensionValue', name: 'DimensionValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 2147483647}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    DimensionValues = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.budgets#DimensionValues', name: 'DimensionValues')
    DuplicateRecordException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#DuplicateRecordException', name: 'DuplicateRecordException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    EventType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.budgets#EventType', name: 'EventType')
    ExecuteBudgetActionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#ExecuteBudgetActionRequest', name: 'ExecuteBudgetActionRequest')
    ExecuteBudgetActionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#ExecuteBudgetActionResponse', name: 'ExecuteBudgetActionResponse')
    ExecutionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.budgets#ExecutionType', name: 'ExecutionType')
    ExpiredNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#ExpiredNextTokenException', name: 'ExpiredNextTokenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Expression = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#Expression', name: 'Expression')
    ExpressionDimensionValues = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#ExpressionDimensionValues', name: 'ExpressionDimensionValues')
    Expressions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.budgets#Expressions', name: 'Expressions')
    GenericString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.budgets#GenericString', name: 'GenericString', traits: {"smithy.api#length" => {"min" => 0, "max" => 2147483647}, "smithy.api#pattern" => ".*"})
    GenericTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.budgets#GenericTimestamp', name: 'GenericTimestamp')
    Group = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.budgets#Group', name: 'Group', traits: {"smithy.api#length" => {"min" => 1, "max" => 640}, "smithy.api#pattern" => "^([\\u0021-\\u007F]+\\u002F)?[\\w+=,.@-]+$"})
    Groups = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.budgets#Groups', name: 'Groups', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    HealthStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#HealthStatus', name: 'HealthStatus')
    HealthStatusReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.budgets#HealthStatusReason', name: 'HealthStatusReason')
    HealthStatusValue = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.budgets#HealthStatusValue', name: 'HealthStatusValue')
    HistoricalOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#HistoricalOptions', name: 'HistoricalOptions')
    IamActionDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#IamActionDefinition', name: 'IamActionDefinition')
    InstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.budgets#InstanceId', name: 'InstanceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^i-(\\w{8}|\\w{17})$|^[a-zA-Z]([\\w-]{0,61}\\w)?$"})
    InstanceIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.budgets#InstanceIds', name: 'InstanceIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    InternalErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#InternalErrorException', name: 'InternalErrorException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#InvalidNextTokenException', name: 'InvalidNextTokenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#InvalidParameterException', name: 'InvalidParameterException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MatchOption = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.budgets#MatchOption', name: 'MatchOption')
    MatchOptions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.budgets#MatchOptions', name: 'MatchOptions')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.budgets#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResultsBudgetNotifications = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.budgets#MaxResultsBudgetNotifications', name: 'MaxResultsBudgetNotifications', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MaxResultsDescribeBudgets = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.budgets#MaxResultsDescribeBudgets', name: 'MaxResultsDescribeBudgets', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    Metric = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.budgets#Metric', name: 'Metric')
    Metrics = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.budgets#Metrics', name: 'Metrics', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Notification = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#Notification', name: 'Notification')
    NotificationState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.budgets#NotificationState', name: 'NotificationState')
    NotificationThreshold = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.budgets#NotificationThreshold', name: 'NotificationThreshold', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 15000000000000}})
    NotificationType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.budgets#NotificationType', name: 'NotificationType')
    NotificationWithSubscribers = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#NotificationWithSubscribers', name: 'NotificationWithSubscribers')
    NotificationWithSubscribersList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.budgets#NotificationWithSubscribersList', name: 'NotificationWithSubscribersList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    Notifications = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.budgets#Notifications', name: 'Notifications')
    NullableBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.budgets#NullableBoolean', name: 'NullableBoolean')
    NumericValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.budgets#NumericValue', name: 'NumericValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 2147483647}, "smithy.api#pattern" => "^([0-9]*\\.)?[0-9]+$"})
    PlannedBudgetLimits = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.budgets#PlannedBudgetLimits', name: 'PlannedBudgetLimits')
    PolicyArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.budgets#PolicyArn', name: 'PolicyArn', traits: {"smithy.api#length" => {"min" => 25, "max" => 684}, "smithy.api#pattern" => "^arn:aws(-cn|-us-gov|-iso|-iso-[a-z]{1})?:iam::(\\d{12}|aws):policy(\\u002F[\\u0021-\\u007F]+\\u002F|\\u002F)[\\w+=,.@-]+$"})
    PolicyId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.budgets#PolicyId', name: 'PolicyId', traits: {"smithy.api#length" => {"min" => 10, "max" => 130}, "smithy.api#pattern" => "^p-[0-9a-zA-Z_]{8,128}$"})
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.budgets#Region', name: 'Region', traits: {"smithy.api#length" => {"min" => 9, "max" => 20}, "smithy.api#pattern" => "^\\w{2}-\\w+(-\\w+)?-\\d$"})
    ResourceLockedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#ResourceLockedException', name: 'ResourceLockedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 423})
    ResourceTag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#ResourceTag', name: 'ResourceTag')
    ResourceTagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.budgets#ResourceTagKey', name: 'ResourceTagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ResourceTagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.budgets#ResourceTagKeyList', name: 'ResourceTagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ResourceTagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.budgets#ResourceTagList', name: 'ResourceTagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ResourceTagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.budgets#ResourceTagValue', name: 'ResourceTagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Role = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.budgets#Role', name: 'Role', traits: {"smithy.api#length" => {"min" => 1, "max" => 576}, "smithy.api#pattern" => "^([\\u0021-\\u007F]+\\u002F)?[\\w+=,.@-]+$"})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.budgets#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 32, "max" => 618}, "smithy.api#pattern" => "^arn:aws(-cn|-us-gov|-iso|-iso-[a-z]{1})?:iam::\\d{12}:role(\\u002F[\\u0021-\\u007F]+\\u002F|\\u002F)[\\w+=,.@-]+$"})
    Roles = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.budgets#Roles', name: 'Roles', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ScpActionDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#ScpActionDefinition', name: 'ScpActionDefinition')
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Spend = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#Spend', name: 'Spend')
    SsmActionDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#SsmActionDefinition', name: 'SsmActionDefinition')
    Subscriber = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#Subscriber', name: 'Subscriber')
    SubscriberAddress = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.budgets#SubscriberAddress', name: 'SubscriberAddress', traits: {"smithy.api#length" => {"min" => 1, "max" => 2147483647}, "smithy.api#pattern" => "^(.*[\\n\\r\\t\\f\\ ]?)*$", "smithy.api#sensitive" => {}})
    Subscribers = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.budgets#Subscribers', name: 'Subscribers', traits: {"smithy.api#length" => {"min" => 1, "max" => 11}})
    SubscriptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.budgets#SubscriptionType', name: 'SubscriptionType')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.budgets#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#TagResourceResponse', name: 'TagResourceResponse')
    TagValues = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#TagValues', name: 'TagValues')
    TargetId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.budgets#TargetId', name: 'TargetId', traits: {"smithy.api#length" => {"min" => 12, "max" => 68}, "smithy.api#pattern" => "^(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}$)|(\\d{12})$"})
    TargetIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.budgets#TargetIds', name: 'TargetIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ThresholdType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.budgets#ThresholdType', name: 'ThresholdType')
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TimePeriod = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#TimePeriod', name: 'TimePeriod')
    TimeUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.budgets#TimeUnit', name: 'TimeUnit')
    UnitValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.budgets#UnitValue', name: 'UnitValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 2147483647}, "smithy.api#pattern" => ".*"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateBudgetActionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#UpdateBudgetActionRequest', name: 'UpdateBudgetActionRequest')
    UpdateBudgetActionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#UpdateBudgetActionResponse', name: 'UpdateBudgetActionResponse')
    UpdateBudgetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#UpdateBudgetRequest', name: 'UpdateBudgetRequest')
    UpdateBudgetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#UpdateBudgetResponse', name: 'UpdateBudgetResponse')
    UpdateNotificationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#UpdateNotificationRequest', name: 'UpdateNotificationRequest')
    UpdateNotificationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#UpdateNotificationResponse', name: 'UpdateNotificationResponse')
    UpdateSubscriberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#UpdateSubscriberRequest', name: 'UpdateSubscriberRequest')
    UpdateSubscriberResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.budgets#UpdateSubscriberResponse', name: 'UpdateSubscriberResponse')
    User = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.budgets#User', name: 'User', traits: {"smithy.api#length" => {"min" => 1, "max" => 576}, "smithy.api#pattern" => "^([\\u0021-\\u007F]+\\u002F)?[\\w+=,.@-]+$"})
    Users = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.budgets#Users', name: 'Users', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Value = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.budgets#Value', name: 'Value', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    Values = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.budgets#Values', name: 'Values', traits: {"smithy.api#length" => {"min" => 1}})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.budgets#errorMessage', name: 'ErrorMessage')

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    Action.add_member(:action_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionId, location_name: 'ActionId', traits: {"smithy.api#required" => {}}))
    Action.add_member(:budget_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetName, location_name: 'BudgetName', traits: {"smithy.api#required" => {}}))
    Action.add_member(:notification_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationType, location_name: 'NotificationType', traits: {"smithy.api#required" => {}}))
    Action.add_member(:action_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionType, location_name: 'ActionType', traits: {"smithy.api#required" => {}}))
    Action.add_member(:action_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionThreshold, location_name: 'ActionThreshold', traits: {"smithy.api#required" => {}}))
    Action.add_member(:definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Definition, location_name: 'Definition', traits: {"smithy.api#required" => {}}))
    Action.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'ExecutionRoleArn', traits: {"smithy.api#required" => {}}))
    Action.add_member(:approval_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalModel, location_name: 'ApprovalModel', traits: {"smithy.api#required" => {}}))
    Action.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    Action.add_member(:subscribers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subscribers, location_name: 'Subscribers', traits: {"smithy.api#required" => {}}))
    Action.type = Types::Action
    ActionHistories.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionHistory)
    ActionHistory.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericTimestamp, location_name: 'Timestamp', traits: {"smithy.api#required" => {}}))
    ActionHistory.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    ActionHistory.add_member(:event_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventType, location_name: 'EventType', traits: {"smithy.api#required" => {}}))
    ActionHistory.add_member(:action_history_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionHistoryDetails, location_name: 'ActionHistoryDetails', traits: {"smithy.api#required" => {}}))
    ActionHistory.type = Types::ActionHistory
    ActionHistoryDetails.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ActionHistoryDetails.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action', traits: {"smithy.api#required" => {}}))
    ActionHistoryDetails.type = Types::ActionHistoryDetails
    ActionStatus.add_member(:standby, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Standby', traits: {"smithy.api#enumValue" => "STANDBY"}))
    ActionStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pending', traits: {"smithy.api#enumValue" => "PENDING"}))
    ActionStatus.add_member(:execution_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Execution_In_Progress', traits: {"smithy.api#enumValue" => "EXECUTION_IN_PROGRESS"}))
    ActionStatus.add_member(:execution_success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Execution_Success', traits: {"smithy.api#enumValue" => "EXECUTION_SUCCESS"}))
    ActionStatus.add_member(:execution_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Execution_Failure', traits: {"smithy.api#enumValue" => "EXECUTION_FAILURE"}))
    ActionStatus.add_member(:reverse_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Reverse_In_Progress', traits: {"smithy.api#enumValue" => "REVERSE_IN_PROGRESS"}))
    ActionStatus.add_member(:reverse_success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Reverse_Success', traits: {"smithy.api#enumValue" => "REVERSE_SUCCESS"}))
    ActionStatus.add_member(:reverse_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Reverse_Failure', traits: {"smithy.api#enumValue" => "REVERSE_FAILURE"}))
    ActionStatus.add_member(:reset_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Reset_In_Progress', traits: {"smithy.api#enumValue" => "RESET_IN_PROGRESS"}))
    ActionStatus.add_member(:reset_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Reset_Failure', traits: {"smithy.api#enumValue" => "RESET_FAILURE"}))
    ActionSubType.add_member(:stop_ec2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOP_EC2', traits: {"smithy.api#enumValue" => "STOP_EC2_INSTANCES"}))
    ActionSubType.add_member(:stop_rds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOP_RDS', traits: {"smithy.api#enumValue" => "STOP_RDS_INSTANCES"}))
    ActionThreshold.add_member(:action_threshold_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationThreshold, location_name: 'ActionThresholdValue', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ActionThreshold.add_member(:action_threshold_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThresholdType, location_name: 'ActionThresholdType', traits: {"smithy.api#required" => {}}))
    ActionThreshold.type = Types::ActionThreshold
    ActionType.add_member(:iam, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM', traits: {"smithy.api#enumValue" => "APPLY_IAM_POLICY"}))
    ActionType.add_member(:scp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCP', traits: {"smithy.api#enumValue" => "APPLY_SCP_POLICY"}))
    ActionType.add_member(:ssm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSM', traits: {"smithy.api#enumValue" => "RUN_SSM_DOCUMENTS"}))
    Actions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Action)
    ApprovalModel.add_member(:auto, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO', traits: {"smithy.api#enumValue" => "AUTOMATIC"}))
    ApprovalModel.add_member(:manual, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANUAL', traits: {"smithy.api#enumValue" => "MANUAL"}))
    AutoAdjustData.add_member(:auto_adjust_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoAdjustType, location_name: 'AutoAdjustType', traits: {"smithy.api#required" => {}}))
    AutoAdjustData.add_member(:historical_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HistoricalOptions, location_name: 'HistoricalOptions'))
    AutoAdjustData.add_member(:last_auto_adjust_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericTimestamp, location_name: 'LastAutoAdjustTime'))
    AutoAdjustData.type = Types::AutoAdjustData
    AutoAdjustType.add_member(:historical, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HISTORICAL', traits: {"smithy.api#enumValue" => "HISTORICAL"}))
    AutoAdjustType.add_member(:forecast, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FORECAST', traits: {"smithy.api#enumValue" => "FORECAST"}))
    Budget.add_member(:budget_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetName, location_name: 'BudgetName', traits: {"smithy.api#required" => {}}))
    Budget.add_member(:budget_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Spend, location_name: 'BudgetLimit'))
    Budget.add_member(:planned_budget_limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlannedBudgetLimits, location_name: 'PlannedBudgetLimits'))
    Budget.add_member(:cost_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostFilters, location_name: 'CostFilters', traits: {"smithy.api#deprecated" => {"since" => "2025-04-18", "message" => "CostFilters lack support for newer dimensions and filtering options. Please consider using the new 'FilterExpression' field."}}))
    Budget.add_member(:cost_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostTypes, location_name: 'CostTypes', traits: {"smithy.api#deprecated" => {"since" => "2025-04-18", "message" => "CostTypes lack support for newer record type dimensions and filtering options. Please consider using the new 'Metrics' field."}}))
    Budget.add_member(:time_unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeUnit, location_name: 'TimeUnit', traits: {"smithy.api#required" => {}}))
    Budget.add_member(:time_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimePeriod, location_name: 'TimePeriod'))
    Budget.add_member(:calculated_spend, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculatedSpend, location_name: 'CalculatedSpend'))
    Budget.add_member(:budget_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetType, location_name: 'BudgetType', traits: {"smithy.api#required" => {}}))
    Budget.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericTimestamp, location_name: 'LastUpdatedTime'))
    Budget.add_member(:auto_adjust_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoAdjustData, location_name: 'AutoAdjustData'))
    Budget.add_member(:filter_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'FilterExpression'))
    Budget.add_member(:metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Metrics, location_name: 'Metrics'))
    Budget.add_member(:billing_view_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewArn, location_name: 'BillingViewArn'))
    Budget.add_member(:health_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthStatus, location_name: 'HealthStatus'))
    Budget.type = Types::Budget
    BudgetNotificationsForAccount.add_member(:notifications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Notifications, location_name: 'Notifications'))
    BudgetNotificationsForAccount.add_member(:budget_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetName, location_name: 'BudgetName'))
    BudgetNotificationsForAccount.type = Types::BudgetNotificationsForAccount
    BudgetNotificationsForAccountList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetNotificationsForAccount)
    BudgetPerformanceHistory.add_member(:budget_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetName, location_name: 'BudgetName'))
    BudgetPerformanceHistory.add_member(:budget_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetType, location_name: 'BudgetType'))
    BudgetPerformanceHistory.add_member(:cost_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostFilters, location_name: 'CostFilters'))
    BudgetPerformanceHistory.add_member(:cost_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostTypes, location_name: 'CostTypes'))
    BudgetPerformanceHistory.add_member(:time_unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeUnit, location_name: 'TimeUnit'))
    BudgetPerformanceHistory.add_member(:billing_view_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewArn, location_name: 'BillingViewArn'))
    BudgetPerformanceHistory.add_member(:budgeted_and_actual_amounts_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetedAndActualAmountsList, location_name: 'BudgetedAndActualAmountsList'))
    BudgetPerformanceHistory.type = Types::BudgetPerformanceHistory
    BudgetType.add_member(:usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Usage', traits: {"smithy.api#enumValue" => "USAGE"}))
    BudgetType.add_member(:cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Cost', traits: {"smithy.api#enumValue" => "COST"}))
    BudgetType.add_member(:ri_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RIUtilization', traits: {"smithy.api#enumValue" => "RI_UTILIZATION"}))
    BudgetType.add_member(:ri_coverage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RICoverage', traits: {"smithy.api#enumValue" => "RI_COVERAGE"}))
    BudgetType.add_member(:sp_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SPUtilization', traits: {"smithy.api#enumValue" => "SAVINGS_PLANS_UTILIZATION"}))
    BudgetType.add_member(:sp_coverage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SPCoverage', traits: {"smithy.api#enumValue" => "SAVINGS_PLANS_COVERAGE"}))
    BudgetedAndActualAmounts.add_member(:budgeted_amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Spend, location_name: 'BudgetedAmount'))
    BudgetedAndActualAmounts.add_member(:actual_amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Spend, location_name: 'ActualAmount'))
    BudgetedAndActualAmounts.add_member(:time_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimePeriod, location_name: 'TimePeriod'))
    BudgetedAndActualAmounts.type = Types::BudgetedAndActualAmounts
    BudgetedAndActualAmountsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetedAndActualAmounts)
    Budgets.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Budget)
    CalculatedSpend.add_member(:actual_spend, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Spend, location_name: 'ActualSpend', traits: {"smithy.api#required" => {}}))
    CalculatedSpend.add_member(:forecasted_spend, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Spend, location_name: 'ForecastedSpend'))
    CalculatedSpend.type = Types::CalculatedSpend
    ComparisonOperator.add_member(:greater_than, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER_THAN', traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    ComparisonOperator.add_member(:less_than, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LESS_THAN', traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    ComparisonOperator.add_member(:equal_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUAL_TO', traits: {"smithy.api#enumValue" => "EQUAL_TO"}))
    CostCategoryValues.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryName, location_name: 'Key'))
    CostCategoryValues.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Values, location_name: 'Values'))
    CostCategoryValues.add_member(:match_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchOptions, location_name: 'MatchOptions'))
    CostCategoryValues.type = Types::CostCategoryValues
    CostFilters.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString)
    CostFilters.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionValues)
    CostTypes.add_member(:include_tax, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'IncludeTax'))
    CostTypes.add_member(:include_subscription, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'IncludeSubscription'))
    CostTypes.add_member(:use_blended, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'UseBlended'))
    CostTypes.add_member(:include_refund, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'IncludeRefund'))
    CostTypes.add_member(:include_credit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'IncludeCredit'))
    CostTypes.add_member(:include_upfront, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'IncludeUpfront'))
    CostTypes.add_member(:include_recurring, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'IncludeRecurring'))
    CostTypes.add_member(:include_other_subscription, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'IncludeOtherSubscription'))
    CostTypes.add_member(:include_support, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'IncludeSupport'))
    CostTypes.add_member(:include_discount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'IncludeDiscount'))
    CostTypes.add_member(:use_amortized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'UseAmortized'))
    CostTypes.type = Types::CostTypes
    CreateBudgetActionRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    CreateBudgetActionRequest.add_member(:budget_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetName, location_name: 'BudgetName', traits: {"smithy.api#required" => {}}))
    CreateBudgetActionRequest.add_member(:notification_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationType, location_name: 'NotificationType', traits: {"smithy.api#required" => {}}))
    CreateBudgetActionRequest.add_member(:action_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionType, location_name: 'ActionType', traits: {"smithy.api#required" => {}}))
    CreateBudgetActionRequest.add_member(:action_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionThreshold, location_name: 'ActionThreshold', traits: {"smithy.api#required" => {}}))
    CreateBudgetActionRequest.add_member(:definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Definition, location_name: 'Definition', traits: {"smithy.api#required" => {}}))
    CreateBudgetActionRequest.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'ExecutionRoleArn', traits: {"smithy.api#required" => {}}))
    CreateBudgetActionRequest.add_member(:approval_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalModel, location_name: 'ApprovalModel', traits: {"smithy.api#required" => {}}))
    CreateBudgetActionRequest.add_member(:subscribers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subscribers, location_name: 'Subscribers', traits: {"smithy.api#required" => {}}))
    CreateBudgetActionRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagList, location_name: 'ResourceTags'))
    CreateBudgetActionRequest.type = Types::CreateBudgetActionRequest
    CreateBudgetActionResponse.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    CreateBudgetActionResponse.add_member(:budget_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetName, location_name: 'BudgetName', traits: {"smithy.api#required" => {}}))
    CreateBudgetActionResponse.add_member(:action_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionId, location_name: 'ActionId', traits: {"smithy.api#required" => {}}))
    CreateBudgetActionResponse.type = Types::CreateBudgetActionResponse
    CreateBudgetRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    CreateBudgetRequest.add_member(:budget, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Budget, location_name: 'Budget', traits: {"smithy.api#required" => {}}))
    CreateBudgetRequest.add_member(:notifications_with_subscribers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationWithSubscribersList, location_name: 'NotificationsWithSubscribers'))
    CreateBudgetRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagList, location_name: 'ResourceTags'))
    CreateBudgetRequest.type = Types::CreateBudgetRequest
    CreateBudgetResponse.type = Types::CreateBudgetResponse
    CreateNotificationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    CreateNotificationRequest.add_member(:budget_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetName, location_name: 'BudgetName', traits: {"smithy.api#required" => {}}))
    CreateNotificationRequest.add_member(:notification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Notification, location_name: 'Notification', traits: {"smithy.api#required" => {}}))
    CreateNotificationRequest.add_member(:subscribers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subscribers, location_name: 'Subscribers', traits: {"smithy.api#required" => {}}))
    CreateNotificationRequest.type = Types::CreateNotificationRequest
    CreateNotificationResponse.type = Types::CreateNotificationResponse
    CreateSubscriberRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    CreateSubscriberRequest.add_member(:budget_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetName, location_name: 'BudgetName', traits: {"smithy.api#required" => {}}))
    CreateSubscriberRequest.add_member(:notification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Notification, location_name: 'Notification', traits: {"smithy.api#required" => {}}))
    CreateSubscriberRequest.add_member(:subscriber, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subscriber, location_name: 'Subscriber', traits: {"smithy.api#required" => {}}))
    CreateSubscriberRequest.type = Types::CreateSubscriberRequest
    CreateSubscriberResponse.type = Types::CreateSubscriberResponse
    CreationLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    CreationLimitExceededException.type = Types::CreationLimitExceededException
    Definition.add_member(:iam_action_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamActionDefinition, location_name: 'IamActionDefinition'))
    Definition.add_member(:scp_action_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScpActionDefinition, location_name: 'ScpActionDefinition'))
    Definition.add_member(:ssm_action_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SsmActionDefinition, location_name: 'SsmActionDefinition'))
    Definition.type = Types::Definition
    DeleteBudgetActionRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    DeleteBudgetActionRequest.add_member(:budget_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetName, location_name: 'BudgetName', traits: {"smithy.api#required" => {}}))
    DeleteBudgetActionRequest.add_member(:action_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionId, location_name: 'ActionId', traits: {"smithy.api#required" => {}}))
    DeleteBudgetActionRequest.type = Types::DeleteBudgetActionRequest
    DeleteBudgetActionResponse.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    DeleteBudgetActionResponse.add_member(:budget_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetName, location_name: 'BudgetName', traits: {"smithy.api#required" => {}}))
    DeleteBudgetActionResponse.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action', traits: {"smithy.api#required" => {}}))
    DeleteBudgetActionResponse.type = Types::DeleteBudgetActionResponse
    DeleteBudgetRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    DeleteBudgetRequest.add_member(:budget_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetName, location_name: 'BudgetName', traits: {"smithy.api#required" => {}}))
    DeleteBudgetRequest.type = Types::DeleteBudgetRequest
    DeleteBudgetResponse.type = Types::DeleteBudgetResponse
    DeleteNotificationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    DeleteNotificationRequest.add_member(:budget_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetName, location_name: 'BudgetName', traits: {"smithy.api#required" => {}}))
    DeleteNotificationRequest.add_member(:notification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Notification, location_name: 'Notification', traits: {"smithy.api#required" => {}}))
    DeleteNotificationRequest.type = Types::DeleteNotificationRequest
    DeleteNotificationResponse.type = Types::DeleteNotificationResponse
    DeleteSubscriberRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    DeleteSubscriberRequest.add_member(:budget_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetName, location_name: 'BudgetName', traits: {"smithy.api#required" => {}}))
    DeleteSubscriberRequest.add_member(:notification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Notification, location_name: 'Notification', traits: {"smithy.api#required" => {}}))
    DeleteSubscriberRequest.add_member(:subscriber, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subscriber, location_name: 'Subscriber', traits: {"smithy.api#required" => {}}))
    DeleteSubscriberRequest.type = Types::DeleteSubscriberRequest
    DeleteSubscriberResponse.type = Types::DeleteSubscriberResponse
    DescribeBudgetActionHistoriesRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    DescribeBudgetActionHistoriesRequest.add_member(:budget_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetName, location_name: 'BudgetName', traits: {"smithy.api#required" => {}}))
    DescribeBudgetActionHistoriesRequest.add_member(:action_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionId, location_name: 'ActionId', traits: {"smithy.api#required" => {}}))
    DescribeBudgetActionHistoriesRequest.add_member(:time_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimePeriod, location_name: 'TimePeriod'))
    DescribeBudgetActionHistoriesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    DescribeBudgetActionHistoriesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken'))
    DescribeBudgetActionHistoriesRequest.type = Types::DescribeBudgetActionHistoriesRequest
    DescribeBudgetActionHistoriesResponse.add_member(:action_histories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionHistories, location_name: 'ActionHistories', traits: {"smithy.api#required" => {}}))
    DescribeBudgetActionHistoriesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken'))
    DescribeBudgetActionHistoriesResponse.type = Types::DescribeBudgetActionHistoriesResponse
    DescribeBudgetActionRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    DescribeBudgetActionRequest.add_member(:budget_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetName, location_name: 'BudgetName', traits: {"smithy.api#required" => {}}))
    DescribeBudgetActionRequest.add_member(:action_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionId, location_name: 'ActionId', traits: {"smithy.api#required" => {}}))
    DescribeBudgetActionRequest.type = Types::DescribeBudgetActionRequest
    DescribeBudgetActionResponse.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    DescribeBudgetActionResponse.add_member(:budget_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetName, location_name: 'BudgetName', traits: {"smithy.api#required" => {}}))
    DescribeBudgetActionResponse.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action', traits: {"smithy.api#required" => {}}))
    DescribeBudgetActionResponse.type = Types::DescribeBudgetActionResponse
    DescribeBudgetActionsForAccountRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    DescribeBudgetActionsForAccountRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    DescribeBudgetActionsForAccountRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken'))
    DescribeBudgetActionsForAccountRequest.type = Types::DescribeBudgetActionsForAccountRequest
    DescribeBudgetActionsForAccountResponse.add_member(:actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Actions, location_name: 'Actions', traits: {"smithy.api#required" => {}}))
    DescribeBudgetActionsForAccountResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken'))
    DescribeBudgetActionsForAccountResponse.type = Types::DescribeBudgetActionsForAccountResponse
    DescribeBudgetActionsForBudgetRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    DescribeBudgetActionsForBudgetRequest.add_member(:budget_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetName, location_name: 'BudgetName', traits: {"smithy.api#required" => {}}))
    DescribeBudgetActionsForBudgetRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    DescribeBudgetActionsForBudgetRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken'))
    DescribeBudgetActionsForBudgetRequest.type = Types::DescribeBudgetActionsForBudgetRequest
    DescribeBudgetActionsForBudgetResponse.add_member(:actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Actions, location_name: 'Actions', traits: {"smithy.api#required" => {}}))
    DescribeBudgetActionsForBudgetResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken'))
    DescribeBudgetActionsForBudgetResponse.type = Types::DescribeBudgetActionsForBudgetResponse
    DescribeBudgetNotificationsForAccountRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    DescribeBudgetNotificationsForAccountRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsBudgetNotifications, location_name: 'MaxResults'))
    DescribeBudgetNotificationsForAccountRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken'))
    DescribeBudgetNotificationsForAccountRequest.type = Types::DescribeBudgetNotificationsForAccountRequest
    DescribeBudgetNotificationsForAccountResponse.add_member(:budget_notifications_for_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetNotificationsForAccountList, location_name: 'BudgetNotificationsForAccount'))
    DescribeBudgetNotificationsForAccountResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken'))
    DescribeBudgetNotificationsForAccountResponse.type = Types::DescribeBudgetNotificationsForAccountResponse
    DescribeBudgetPerformanceHistoryRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    DescribeBudgetPerformanceHistoryRequest.add_member(:budget_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetName, location_name: 'BudgetName', traits: {"smithy.api#required" => {}}))
    DescribeBudgetPerformanceHistoryRequest.add_member(:time_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimePeriod, location_name: 'TimePeriod'))
    DescribeBudgetPerformanceHistoryRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    DescribeBudgetPerformanceHistoryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken'))
    DescribeBudgetPerformanceHistoryRequest.type = Types::DescribeBudgetPerformanceHistoryRequest
    DescribeBudgetPerformanceHistoryResponse.add_member(:budget_performance_history, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetPerformanceHistory, location_name: 'BudgetPerformanceHistory'))
    DescribeBudgetPerformanceHistoryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken'))
    DescribeBudgetPerformanceHistoryResponse.type = Types::DescribeBudgetPerformanceHistoryResponse
    DescribeBudgetRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    DescribeBudgetRequest.add_member(:budget_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetName, location_name: 'BudgetName', traits: {"smithy.api#required" => {}}))
    DescribeBudgetRequest.add_member(:show_filter_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'ShowFilterExpression'))
    DescribeBudgetRequest.type = Types::DescribeBudgetRequest
    DescribeBudgetResponse.add_member(:budget, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Budget, location_name: 'Budget'))
    DescribeBudgetResponse.type = Types::DescribeBudgetResponse
    DescribeBudgetsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    DescribeBudgetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsDescribeBudgets, location_name: 'MaxResults'))
    DescribeBudgetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken'))
    DescribeBudgetsRequest.add_member(:show_filter_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'ShowFilterExpression'))
    DescribeBudgetsRequest.type = Types::DescribeBudgetsRequest
    DescribeBudgetsResponse.add_member(:budgets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Budgets, location_name: 'Budgets'))
    DescribeBudgetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken'))
    DescribeBudgetsResponse.type = Types::DescribeBudgetsResponse
    DescribeNotificationsForBudgetRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    DescribeNotificationsForBudgetRequest.add_member(:budget_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetName, location_name: 'BudgetName', traits: {"smithy.api#required" => {}}))
    DescribeNotificationsForBudgetRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    DescribeNotificationsForBudgetRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken'))
    DescribeNotificationsForBudgetRequest.type = Types::DescribeNotificationsForBudgetRequest
    DescribeNotificationsForBudgetResponse.add_member(:notifications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Notifications, location_name: 'Notifications'))
    DescribeNotificationsForBudgetResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken'))
    DescribeNotificationsForBudgetResponse.type = Types::DescribeNotificationsForBudgetResponse
    DescribeSubscribersForNotificationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    DescribeSubscribersForNotificationRequest.add_member(:budget_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetName, location_name: 'BudgetName', traits: {"smithy.api#required" => {}}))
    DescribeSubscribersForNotificationRequest.add_member(:notification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Notification, location_name: 'Notification', traits: {"smithy.api#required" => {}}))
    DescribeSubscribersForNotificationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    DescribeSubscribersForNotificationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken'))
    DescribeSubscribersForNotificationRequest.type = Types::DescribeSubscribersForNotificationRequest
    DescribeSubscribersForNotificationResponse.add_member(:subscribers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subscribers, location_name: 'Subscribers'))
    DescribeSubscribersForNotificationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken'))
    DescribeSubscribersForNotificationResponse.type = Types::DescribeSubscribersForNotificationResponse
    Dimension.add_member(:az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AZ', traits: {"smithy.api#enumValue" => "AZ"}))
    Dimension.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE_TYPE', traits: {"smithy.api#enumValue" => "INSTANCE_TYPE"}))
    Dimension.add_member(:linked_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LINKED_ACCOUNT', traits: {"smithy.api#enumValue" => "LINKED_ACCOUNT"}))
    Dimension.add_member(:linked_account_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LINKED_ACCOUNT_NAME', traits: {"smithy.api#enumValue" => "LINKED_ACCOUNT_NAME"}))
    Dimension.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPERATION', traits: {"smithy.api#enumValue" => "OPERATION"}))
    Dimension.add_member(:purchase_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PURCHASE_TYPE', traits: {"smithy.api#enumValue" => "PURCHASE_TYPE"}))
    Dimension.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGION', traits: {"smithy.api#enumValue" => "REGION"}))
    Dimension.add_member(:service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE', traits: {"smithy.api#enumValue" => "SERVICE"}))
    Dimension.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE_CODE', traits: {"smithy.api#enumValue" => "SERVICE_CODE"}))
    Dimension.add_member(:usage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USAGE_TYPE', traits: {"smithy.api#enumValue" => "USAGE_TYPE"}))
    Dimension.add_member(:usage_type_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USAGE_TYPE_GROUP', traits: {"smithy.api#enumValue" => "USAGE_TYPE_GROUP"}))
    Dimension.add_member(:record_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECORD_TYPE', traits: {"smithy.api#enumValue" => "RECORD_TYPE"}))
    Dimension.add_member(:operating_system, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPERATING_SYSTEM', traits: {"smithy.api#enumValue" => "OPERATING_SYSTEM"}))
    Dimension.add_member(:tenancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TENANCY', traits: {"smithy.api#enumValue" => "TENANCY"}))
    Dimension.add_member(:scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCOPE', traits: {"smithy.api#enumValue" => "SCOPE"}))
    Dimension.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PLATFORM', traits: {"smithy.api#enumValue" => "PLATFORM"}))
    Dimension.add_member(:subscription_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBSCRIPTION_ID', traits: {"smithy.api#enumValue" => "SUBSCRIPTION_ID"}))
    Dimension.add_member(:legal_entity_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LEGAL_ENTITY_NAME', traits: {"smithy.api#enumValue" => "LEGAL_ENTITY_NAME"}))
    Dimension.add_member(:invoicing_entity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVOICING_ENTITY', traits: {"smithy.api#enumValue" => "INVOICING_ENTITY"}))
    Dimension.add_member(:deployment_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPLOYMENT_OPTION', traits: {"smithy.api#enumValue" => "DEPLOYMENT_OPTION"}))
    Dimension.add_member(:database_engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATABASE_ENGINE', traits: {"smithy.api#enumValue" => "DATABASE_ENGINE"}))
    Dimension.add_member(:cache_engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CACHE_ENGINE', traits: {"smithy.api#enumValue" => "CACHE_ENGINE"}))
    Dimension.add_member(:instance_type_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE_TYPE_FAMILY', traits: {"smithy.api#enumValue" => "INSTANCE_TYPE_FAMILY"}))
    Dimension.add_member(:billing_entity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BILLING_ENTITY', traits: {"smithy.api#enumValue" => "BILLING_ENTITY"}))
    Dimension.add_member(:reservation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESERVATION_ID', traits: {"smithy.api#enumValue" => "RESERVATION_ID"}))
    Dimension.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_ID', traits: {"smithy.api#enumValue" => "RESOURCE_ID"}))
    Dimension.add_member(:rightsizing_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RIGHTSIZING_TYPE', traits: {"smithy.api#enumValue" => "RIGHTSIZING_TYPE"}))
    Dimension.add_member(:savings_plans_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAVINGS_PLANS_TYPE', traits: {"smithy.api#enumValue" => "SAVINGS_PLANS_TYPE"}))
    Dimension.add_member(:savings_plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAVINGS_PLAN_ARN', traits: {"smithy.api#enumValue" => "SAVINGS_PLAN_ARN"}))
    Dimension.add_member(:payment_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAYMENT_OPTION', traits: {"smithy.api#enumValue" => "PAYMENT_OPTION"}))
    Dimension.add_member(:reservation_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESERVATION_MODIFIED', traits: {"smithy.api#enumValue" => "RESERVATION_MODIFIED"}))
    Dimension.add_member(:tag_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAG_KEY', traits: {"smithy.api#enumValue" => "TAG_KEY"}))
    Dimension.add_member(:cost_category_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COST_CATEGORY_NAME', traits: {"smithy.api#enumValue" => "COST_CATEGORY_NAME"}))
    DimensionValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionValue)
    DuplicateRecordException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    DuplicateRecordException.type = Types::DuplicateRecordException
    EventType.add_member(:system, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'System', traits: {"smithy.api#enumValue" => "SYSTEM"}))
    EventType.add_member(:create_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CreateAction', traits: {"smithy.api#enumValue" => "CREATE_ACTION"}))
    EventType.add_member(:delete_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DeleteAction', traits: {"smithy.api#enumValue" => "DELETE_ACTION"}))
    EventType.add_member(:update_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UpdateAction', traits: {"smithy.api#enumValue" => "UPDATE_ACTION"}))
    EventType.add_member(:execute_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ExecuteAction', traits: {"smithy.api#enumValue" => "EXECUTE_ACTION"}))
    ExecuteBudgetActionRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    ExecuteBudgetActionRequest.add_member(:budget_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetName, location_name: 'BudgetName', traits: {"smithy.api#required" => {}}))
    ExecuteBudgetActionRequest.add_member(:action_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionId, location_name: 'ActionId', traits: {"smithy.api#required" => {}}))
    ExecuteBudgetActionRequest.add_member(:execution_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionType, location_name: 'ExecutionType', traits: {"smithy.api#required" => {}}))
    ExecuteBudgetActionRequest.type = Types::ExecuteBudgetActionRequest
    ExecuteBudgetActionResponse.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    ExecuteBudgetActionResponse.add_member(:budget_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetName, location_name: 'BudgetName', traits: {"smithy.api#required" => {}}))
    ExecuteBudgetActionResponse.add_member(:action_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionId, location_name: 'ActionId', traits: {"smithy.api#required" => {}}))
    ExecuteBudgetActionResponse.add_member(:execution_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionType, location_name: 'ExecutionType', traits: {"smithy.api#required" => {}}))
    ExecuteBudgetActionResponse.type = Types::ExecuteBudgetActionResponse
    ExecutionType.add_member(:approve_budget_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ApproveBudgetAction', traits: {"smithy.api#enumValue" => "APPROVE_BUDGET_ACTION"}))
    ExecutionType.add_member(:retry_budget_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RetryBudgetAction', traits: {"smithy.api#enumValue" => "RETRY_BUDGET_ACTION"}))
    ExecutionType.add_member(:reverse_budget_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReverseBudgetAction', traits: {"smithy.api#enumValue" => "REVERSE_BUDGET_ACTION"}))
    ExecutionType.add_member(:reset_budget_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResetBudgetAction', traits: {"smithy.api#enumValue" => "RESET_BUDGET_ACTION"}))
    ExpiredNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ExpiredNextTokenException.type = Types::ExpiredNextTokenException
    Expression.add_member(:or, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expressions, location_name: 'Or'))
    Expression.add_member(:and, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expressions, location_name: 'And'))
    Expression.add_member(:not, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'Not'))
    Expression.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionDimensionValues, location_name: 'Dimensions'))
    Expression.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValues, location_name: 'Tags'))
    Expression.add_member(:cost_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryValues, location_name: 'CostCategories'))
    Expression.type = Types::Expression
    ExpressionDimensionValues.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dimension, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    ExpressionDimensionValues.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Values, location_name: 'Values', traits: {"smithy.api#required" => {}}))
    ExpressionDimensionValues.add_member(:match_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchOptions, location_name: 'MatchOptions'))
    ExpressionDimensionValues.type = Types::ExpressionDimensionValues
    Expressions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression)
    Groups.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Group)
    HealthStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthStatusValue, location_name: 'Status'))
    HealthStatus.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthStatusReason, location_name: 'StatusReason'))
    HealthStatus.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericTimestamp, location_name: 'LastUpdatedTime'))
    HealthStatus.type = Types::HealthStatus
    HealthStatusReason.add_member(:billing_view_no_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BILLING_VIEW_NO_ACCESS', traits: {"smithy.api#enumValue" => "BILLING_VIEW_NO_ACCESS"}))
    HealthStatusReason.add_member(:billing_view_unhealthy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BILLING_VIEW_UNHEALTHY', traits: {"smithy.api#enumValue" => "BILLING_VIEW_UNHEALTHY"}))
    HealthStatusReason.add_member(:filter_invalid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FILTER_INVALID', traits: {"smithy.api#enumValue" => "FILTER_INVALID"}))
    HealthStatusValue.add_member(:healthy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HEALTHY', traits: {"smithy.api#enumValue" => "HEALTHY"}))
    HealthStatusValue.add_member(:unhealthy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNHEALTHY', traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    HistoricalOptions.add_member(:budget_adjustment_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdjustmentPeriod, location_name: 'BudgetAdjustmentPeriod', traits: {"smithy.api#required" => {}}))
    HistoricalOptions.add_member(:look_back_available_periods, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdjustmentPeriod, location_name: 'LookBackAvailablePeriods'))
    HistoricalOptions.type = Types::HistoricalOptions
    IamActionDefinition.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyArn, location_name: 'PolicyArn', traits: {"smithy.api#required" => {}}))
    IamActionDefinition.add_member(:roles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Roles, location_name: 'Roles'))
    IamActionDefinition.add_member(:groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Groups, location_name: 'Groups'))
    IamActionDefinition.add_member(:users, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Users, location_name: 'Users'))
    IamActionDefinition.type = Types::IamActionDefinition
    InstanceIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId)
    InternalErrorException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalErrorException.type = Types::InternalErrorException
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidParameterException.type = Types::InvalidParameterException
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagList, location_name: 'ResourceTags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MatchOption.add_member(:equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS', traits: {"smithy.api#enumValue" => "EQUALS"}))
    MatchOption.add_member(:absent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ABSENT', traits: {"smithy.api#enumValue" => "ABSENT"}))
    MatchOption.add_member(:starts_with, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTS_WITH', traits: {"smithy.api#enumValue" => "STARTS_WITH"}))
    MatchOption.add_member(:ends_with, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENDS_WITH', traits: {"smithy.api#enumValue" => "ENDS_WITH"}))
    MatchOption.add_member(:contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTAINS', traits: {"smithy.api#enumValue" => "CONTAINS"}))
    MatchOption.add_member(:greater_than_or_equal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER_THAN_OR_EQUAL', traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUAL"}))
    MatchOption.add_member(:case_sensitive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CASE_SENSITIVE', traits: {"smithy.api#enumValue" => "CASE_SENSITIVE"}))
    MatchOption.add_member(:case_insensitive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CASE_INSENSITIVE', traits: {"smithy.api#enumValue" => "CASE_INSENSITIVE"}))
    MatchOptions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchOption)
    Metric.add_member(:blended_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BLENDED_COST', traits: {"smithy.api#enumValue" => "BlendedCost"}))
    Metric.add_member(:unblended_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNBLENDED_COST', traits: {"smithy.api#enumValue" => "UnblendedCost"}))
    Metric.add_member(:amortized_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMORTIZED_COST', traits: {"smithy.api#enumValue" => "AmortizedCost"}))
    Metric.add_member(:net_unblended_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NET_UNBLENDED_COST', traits: {"smithy.api#enumValue" => "NetUnblendedCost"}))
    Metric.add_member(:net_amortized_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NET_AMORTIZED_COST', traits: {"smithy.api#enumValue" => "NetAmortizedCost"}))
    Metric.add_member(:usage_quantity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USAGE_QUANTITY', traits: {"smithy.api#enumValue" => "UsageQuantity"}))
    Metric.add_member(:normalized_usage_amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NORMALIZED_USAGE_AMOUNT', traits: {"smithy.api#enumValue" => "NormalizedUsageAmount"}))
    Metric.add_member(:hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HOURS', traits: {"smithy.api#enumValue" => "Hours"}))
    Metrics.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Metric)
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    NotFoundException.type = Types::NotFoundException
    Notification.add_member(:notification_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationType, location_name: 'NotificationType', traits: {"smithy.api#required" => {}}))
    Notification.add_member(:comparison_operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: 'ComparisonOperator', traits: {"smithy.api#required" => {}}))
    Notification.add_member(:threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationThreshold, location_name: 'Threshold', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    Notification.add_member(:threshold_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThresholdType, location_name: 'ThresholdType'))
    Notification.add_member(:notification_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationState, location_name: 'NotificationState'))
    Notification.type = Types::Notification
    NotificationState.add_member(:ok, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OK', traits: {"smithy.api#enumValue" => "OK"}))
    NotificationState.add_member(:alarm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALARM', traits: {"smithy.api#enumValue" => "ALARM"}))
    NotificationType.add_member(:actual, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTUAL', traits: {"smithy.api#enumValue" => "ACTUAL"}))
    NotificationType.add_member(:forecasted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FORECASTED', traits: {"smithy.api#enumValue" => "FORECASTED"}))
    NotificationWithSubscribers.add_member(:notification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Notification, location_name: 'Notification', traits: {"smithy.api#required" => {}}))
    NotificationWithSubscribers.add_member(:subscribers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subscribers, location_name: 'Subscribers', traits: {"smithy.api#required" => {}}))
    NotificationWithSubscribers.type = Types::NotificationWithSubscribers
    NotificationWithSubscribersList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationWithSubscribers)
    Notifications.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Notification)
    PlannedBudgetLimits.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString)
    PlannedBudgetLimits.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Spend)
    ResourceLockedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceLockedException.type = Types::ResourceLockedException
    ResourceTag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagKey, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    ResourceTag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagValue, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    ResourceTag.type = Types::ResourceTag
    ResourceTagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagKey)
    ResourceTagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTag)
    Roles.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role)
    ScpActionDefinition.add_member(:policy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyId, location_name: 'PolicyId', traits: {"smithy.api#required" => {}}))
    ScpActionDefinition.add_member(:target_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetIds, location_name: 'TargetIds', traits: {"smithy.api#required" => {}}))
    ScpActionDefinition.type = Types::ScpActionDefinition
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Spend.add_member(:amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumericValue, location_name: 'Amount', traits: {"smithy.api#required" => {}}))
    Spend.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnitValue, location_name: 'Unit', traits: {"smithy.api#required" => {}}))
    Spend.type = Types::Spend
    SsmActionDefinition.add_member(:action_sub_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionSubType, location_name: 'ActionSubType', traits: {"smithy.api#required" => {}}))
    SsmActionDefinition.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'Region', traits: {"smithy.api#required" => {}}))
    SsmActionDefinition.add_member(:instance_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceIds, location_name: 'InstanceIds', traits: {"smithy.api#required" => {}}))
    SsmActionDefinition.type = Types::SsmActionDefinition
    Subscriber.add_member(:subscription_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionType, location_name: 'SubscriptionType', traits: {"smithy.api#required" => {}}))
    Subscriber.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriberAddress, location_name: 'Address', traits: {"smithy.api#required" => {}}))
    Subscriber.type = Types::Subscriber
    Subscribers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subscriber)
    SubscriptionType.add_member(:sns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNS', traits: {"smithy.api#enumValue" => "SNS"}))
    SubscriptionType.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL', traits: {"smithy.api#enumValue" => "EMAIL"}))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagList, location_name: 'ResourceTags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TagValues.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key'))
    TagValues.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Values, location_name: 'Values'))
    TagValues.add_member(:match_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchOptions, location_name: 'MatchOptions'))
    TagValues.type = Types::TagValues
    TargetIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId)
    ThresholdType.add_member(:percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PERCENTAGE', traits: {"smithy.api#enumValue" => "PERCENTAGE"}))
    ThresholdType.add_member(:absolute_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ABSOLUTE_VALUE', traits: {"smithy.api#enumValue" => "ABSOLUTE_VALUE"}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ThrottlingException.type = Types::ThrottlingException
    TimePeriod.add_member(:start, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericTimestamp, location_name: 'Start'))
    TimePeriod.add_member(:end, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericTimestamp, location_name: 'End'))
    TimePeriod.type = Types::TimePeriod
    TimeUnit.add_member(:daily, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAILY', traits: {"smithy.api#enumValue" => "DAILY"}))
    TimeUnit.add_member(:monthly, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONTHLY', traits: {"smithy.api#enumValue" => "MONTHLY"}))
    TimeUnit.add_member(:quarterly, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUARTERLY', traits: {"smithy.api#enumValue" => "QUARTERLY"}))
    TimeUnit.add_member(:annually, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANNUALLY', traits: {"smithy.api#enumValue" => "ANNUALLY"}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:resource_tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagKeyList, location_name: 'ResourceTagKeys', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateBudgetActionRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    UpdateBudgetActionRequest.add_member(:budget_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetName, location_name: 'BudgetName', traits: {"smithy.api#required" => {}}))
    UpdateBudgetActionRequest.add_member(:action_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionId, location_name: 'ActionId', traits: {"smithy.api#required" => {}}))
    UpdateBudgetActionRequest.add_member(:notification_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationType, location_name: 'NotificationType'))
    UpdateBudgetActionRequest.add_member(:action_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionThreshold, location_name: 'ActionThreshold'))
    UpdateBudgetActionRequest.add_member(:definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Definition, location_name: 'Definition'))
    UpdateBudgetActionRequest.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'ExecutionRoleArn'))
    UpdateBudgetActionRequest.add_member(:approval_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalModel, location_name: 'ApprovalModel'))
    UpdateBudgetActionRequest.add_member(:subscribers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subscribers, location_name: 'Subscribers'))
    UpdateBudgetActionRequest.type = Types::UpdateBudgetActionRequest
    UpdateBudgetActionResponse.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    UpdateBudgetActionResponse.add_member(:budget_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetName, location_name: 'BudgetName', traits: {"smithy.api#required" => {}}))
    UpdateBudgetActionResponse.add_member(:old_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'OldAction', traits: {"smithy.api#required" => {}}))
    UpdateBudgetActionResponse.add_member(:new_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'NewAction', traits: {"smithy.api#required" => {}}))
    UpdateBudgetActionResponse.type = Types::UpdateBudgetActionResponse
    UpdateBudgetRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    UpdateBudgetRequest.add_member(:new_budget, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Budget, location_name: 'NewBudget', traits: {"smithy.api#required" => {}}))
    UpdateBudgetRequest.type = Types::UpdateBudgetRequest
    UpdateBudgetResponse.type = Types::UpdateBudgetResponse
    UpdateNotificationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    UpdateNotificationRequest.add_member(:budget_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetName, location_name: 'BudgetName', traits: {"smithy.api#required" => {}}))
    UpdateNotificationRequest.add_member(:old_notification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Notification, location_name: 'OldNotification', traits: {"smithy.api#required" => {}}))
    UpdateNotificationRequest.add_member(:new_notification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Notification, location_name: 'NewNotification', traits: {"smithy.api#required" => {}}))
    UpdateNotificationRequest.type = Types::UpdateNotificationRequest
    UpdateNotificationResponse.type = Types::UpdateNotificationResponse
    UpdateSubscriberRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    UpdateSubscriberRequest.add_member(:budget_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetName, location_name: 'BudgetName', traits: {"smithy.api#required" => {}}))
    UpdateSubscriberRequest.add_member(:notification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Notification, location_name: 'Notification', traits: {"smithy.api#required" => {}}))
    UpdateSubscriberRequest.add_member(:old_subscriber, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subscriber, location_name: 'OldSubscriber', traits: {"smithy.api#required" => {}}))
    UpdateSubscriberRequest.add_member(:new_subscriber, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subscriber, location_name: 'NewSubscriber', traits: {"smithy.api#required" => {}}))
    UpdateSubscriberRequest.type = Types::UpdateSubscriberRequest
    UpdateSubscriberResponse.type = Types::UpdateSubscriberResponse
    Users.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: User)
    Values.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Value)

    AWSBudgetServiceGateway = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.budgets#AWSBudgetServiceGateway"
      service.name = "AWSBudgetServiceGateway"
      service.version = "2016-10-20"
      service.traits = {"aws.api#service" => {"sdkId" => "Budgets", "arnNamespace" => "budgets", "cloudFormationName" => "Budgets", "cloudTrailEventSource" => "budgets.amazonaws.com", "endpointPrefix" => "budgets"}, "aws.auth#sigv4" => {"name" => "budgets"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Budgets"}
      service.add_operation(:create_budget, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.budgets#CreateBudget"
        operation.name = "CreateBudget"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBudgetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBudgetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateRecordException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:create_budget_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.budgets#CreateBudgetAction"
        operation.name = "CreateBudgetAction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBudgetActionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBudgetActionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateRecordException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:create_notification, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.budgets#CreateNotification"
        operation.name = "CreateNotification"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNotificationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNotificationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateRecordException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:create_subscriber, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.budgets#CreateSubscriber"
        operation.name = "CreateSubscriber"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSubscriberRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSubscriberResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateRecordException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_budget, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.budgets#DeleteBudget"
        operation.name = "DeleteBudget"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBudgetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBudgetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_budget_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.budgets#DeleteBudgetAction"
        operation.name = "DeleteBudgetAction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBudgetActionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBudgetActionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLockedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_notification, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.budgets#DeleteNotification"
        operation.name = "DeleteNotification"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNotificationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNotificationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_subscriber, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.budgets#DeleteSubscriber"
        operation.name = "DeleteSubscriber"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSubscriberRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSubscriberResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_budget, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.budgets#DescribeBudget"
        operation.name = "DescribeBudget"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBudgetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBudgetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_budget_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.budgets#DescribeBudgetAction"
        operation.name = "DescribeBudgetAction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBudgetActionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBudgetActionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_budget_action_histories, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.budgets#DescribeBudgetActionHistories"
        operation.name = "DescribeBudgetActionHistories"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBudgetActionHistoriesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBudgetActionHistoriesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeBudgetActionHistories.new
      end)
      service.add_operation(:describe_budget_actions_for_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.budgets#DescribeBudgetActionsForAccount"
        operation.name = "DescribeBudgetActionsForAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBudgetActionsForAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBudgetActionsForAccountResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeBudgetActionsForAccount.new
      end)
      service.add_operation(:describe_budget_actions_for_budget, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.budgets#DescribeBudgetActionsForBudget"
        operation.name = "DescribeBudgetActionsForBudget"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBudgetActionsForBudgetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBudgetActionsForBudgetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeBudgetActionsForBudget.new
      end)
      service.add_operation(:describe_budget_notifications_for_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.budgets#DescribeBudgetNotificationsForAccount"
        operation.name = "DescribeBudgetNotificationsForAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBudgetNotificationsForAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBudgetNotificationsForAccountResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiredNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeBudgetNotificationsForAccount.new
      end)
      service.add_operation(:describe_budget_performance_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.budgets#DescribeBudgetPerformanceHistory"
        operation.name = "DescribeBudgetPerformanceHistory"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBudgetPerformanceHistoryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBudgetPerformanceHistoryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiredNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeBudgetPerformanceHistory.new
      end)
      service.add_operation(:describe_budgets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.budgets#DescribeBudgets"
        operation.name = "DescribeBudgets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBudgetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBudgetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiredNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeBudgets.new
      end)
      service.add_operation(:describe_notifications_for_budget, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.budgets#DescribeNotificationsForBudget"
        operation.name = "DescribeNotificationsForBudget"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeNotificationsForBudgetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeNotificationsForBudgetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiredNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeNotificationsForBudget.new
      end)
      service.add_operation(:describe_subscribers_for_notification, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.budgets#DescribeSubscribersForNotification"
        operation.name = "DescribeSubscribersForNotification"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSubscribersForNotificationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSubscribersForNotificationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiredNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeSubscribersForNotification.new
      end)
      service.add_operation(:execute_budget_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.budgets#ExecuteBudgetAction"
        operation.name = "ExecuteBudgetAction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteBudgetActionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteBudgetActionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLockedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.budgets#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.budgets#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.budgets#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_budget, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.budgets#UpdateBudget"
        operation.name = "UpdateBudget"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBudgetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBudgetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_budget_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.budgets#UpdateBudgetAction"
        operation.name = "UpdateBudgetAction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBudgetActionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBudgetActionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLockedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_notification, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.budgets#UpdateNotification"
        operation.name = "UpdateNotification"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNotificationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNotificationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateRecordException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_subscriber, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.budgets#UpdateSubscriber"
        operation.name = "UpdateSubscriber"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSubscriberRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSubscriberResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateRecordException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
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
