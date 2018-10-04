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

    AccountId = Shapes::StringShape.new(name: 'AccountId')
    Budget = Shapes::StructureShape.new(name: 'Budget')
    BudgetName = Shapes::StringShape.new(name: 'BudgetName')
    BudgetType = Shapes::StringShape.new(name: 'BudgetType')
    Budgets = Shapes::ListShape.new(name: 'Budgets')
    CalculatedSpend = Shapes::StructureShape.new(name: 'CalculatedSpend')
    ComparisonOperator = Shapes::StringShape.new(name: 'ComparisonOperator')
    CostFilters = Shapes::MapShape.new(name: 'CostFilters')
    CostTypes = Shapes::StructureShape.new(name: 'CostTypes')
    CreateBudgetRequest = Shapes::StructureShape.new(name: 'CreateBudgetRequest')
    CreateBudgetResponse = Shapes::StructureShape.new(name: 'CreateBudgetResponse')
    CreateNotificationRequest = Shapes::StructureShape.new(name: 'CreateNotificationRequest')
    CreateNotificationResponse = Shapes::StructureShape.new(name: 'CreateNotificationResponse')
    CreateSubscriberRequest = Shapes::StructureShape.new(name: 'CreateSubscriberRequest')
    CreateSubscriberResponse = Shapes::StructureShape.new(name: 'CreateSubscriberResponse')
    CreationLimitExceededException = Shapes::StructureShape.new(name: 'CreationLimitExceededException')
    DeleteBudgetRequest = Shapes::StructureShape.new(name: 'DeleteBudgetRequest')
    DeleteBudgetResponse = Shapes::StructureShape.new(name: 'DeleteBudgetResponse')
    DeleteNotificationRequest = Shapes::StructureShape.new(name: 'DeleteNotificationRequest')
    DeleteNotificationResponse = Shapes::StructureShape.new(name: 'DeleteNotificationResponse')
    DeleteSubscriberRequest = Shapes::StructureShape.new(name: 'DeleteSubscriberRequest')
    DeleteSubscriberResponse = Shapes::StructureShape.new(name: 'DeleteSubscriberResponse')
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
    ExpiredNextTokenException = Shapes::StructureShape.new(name: 'ExpiredNextTokenException')
    GenericString = Shapes::StringShape.new(name: 'GenericString')
    GenericTimestamp = Shapes::TimestampShape.new(name: 'GenericTimestamp')
    InternalErrorException = Shapes::StructureShape.new(name: 'InternalErrorException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    Notification = Shapes::StructureShape.new(name: 'Notification')
    NotificationThreshold = Shapes::FloatShape.new(name: 'NotificationThreshold')
    NotificationType = Shapes::StringShape.new(name: 'NotificationType')
    NotificationWithSubscribers = Shapes::StructureShape.new(name: 'NotificationWithSubscribers')
    NotificationWithSubscribersList = Shapes::ListShape.new(name: 'NotificationWithSubscribersList')
    Notifications = Shapes::ListShape.new(name: 'Notifications')
    NullableBoolean = Shapes::BooleanShape.new(name: 'NullableBoolean')
    NumericValue = Shapes::StringShape.new(name: 'NumericValue')
    Spend = Shapes::StructureShape.new(name: 'Spend')
    Subscriber = Shapes::StructureShape.new(name: 'Subscriber')
    SubscriberAddress = Shapes::StringShape.new(name: 'SubscriberAddress')
    Subscribers = Shapes::ListShape.new(name: 'Subscribers')
    SubscriptionType = Shapes::StringShape.new(name: 'SubscriptionType')
    ThresholdType = Shapes::StringShape.new(name: 'ThresholdType')
    TimePeriod = Shapes::StructureShape.new(name: 'TimePeriod')
    TimeUnit = Shapes::StringShape.new(name: 'TimeUnit')
    UnitValue = Shapes::StringShape.new(name: 'UnitValue')
    UpdateBudgetRequest = Shapes::StructureShape.new(name: 'UpdateBudgetRequest')
    UpdateBudgetResponse = Shapes::StructureShape.new(name: 'UpdateBudgetResponse')
    UpdateNotificationRequest = Shapes::StructureShape.new(name: 'UpdateNotificationRequest')
    UpdateNotificationResponse = Shapes::StructureShape.new(name: 'UpdateNotificationResponse')
    UpdateSubscriberRequest = Shapes::StructureShape.new(name: 'UpdateSubscriberRequest')
    UpdateSubscriberResponse = Shapes::StructureShape.new(name: 'UpdateSubscriberResponse')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')

    Budget.add_member(:budget_name, Shapes::ShapeRef.new(shape: BudgetName, required: true, location_name: "BudgetName"))
    Budget.add_member(:budget_limit, Shapes::ShapeRef.new(shape: Spend, location_name: "BudgetLimit"))
    Budget.add_member(:cost_filters, Shapes::ShapeRef.new(shape: CostFilters, location_name: "CostFilters"))
    Budget.add_member(:cost_types, Shapes::ShapeRef.new(shape: CostTypes, location_name: "CostTypes"))
    Budget.add_member(:time_unit, Shapes::ShapeRef.new(shape: TimeUnit, required: true, location_name: "TimeUnit"))
    Budget.add_member(:time_period, Shapes::ShapeRef.new(shape: TimePeriod, location_name: "TimePeriod"))
    Budget.add_member(:calculated_spend, Shapes::ShapeRef.new(shape: CalculatedSpend, location_name: "CalculatedSpend"))
    Budget.add_member(:budget_type, Shapes::ShapeRef.new(shape: BudgetType, required: true, location_name: "BudgetType"))
    Budget.struct_class = Types::Budget

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

    Notification.add_member(:notification_type, Shapes::ShapeRef.new(shape: NotificationType, required: true, location_name: "NotificationType"))
    Notification.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperator, required: true, location_name: "ComparisonOperator"))
    Notification.add_member(:threshold, Shapes::ShapeRef.new(shape: NotificationThreshold, required: true, location_name: "Threshold"))
    Notification.add_member(:threshold_type, Shapes::ShapeRef.new(shape: ThresholdType, location_name: "ThresholdType"))
    Notification.struct_class = Types::Notification

    NotificationWithSubscribers.add_member(:notification, Shapes::ShapeRef.new(shape: Notification, required: true, location_name: "Notification"))
    NotificationWithSubscribers.add_member(:subscribers, Shapes::ShapeRef.new(shape: Subscribers, required: true, location_name: "Subscribers"))
    NotificationWithSubscribers.struct_class = Types::NotificationWithSubscribers

    NotificationWithSubscribersList.member = Shapes::ShapeRef.new(shape: NotificationWithSubscribers)

    Notifications.member = Shapes::ShapeRef.new(shape: Notification)

    Spend.add_member(:amount, Shapes::ShapeRef.new(shape: NumericValue, required: true, location_name: "Amount"))
    Spend.add_member(:unit, Shapes::ShapeRef.new(shape: UnitValue, required: true, location_name: "Unit"))
    Spend.struct_class = Types::Spend

    Subscriber.add_member(:subscription_type, Shapes::ShapeRef.new(shape: SubscriptionType, required: true, location_name: "SubscriptionType"))
    Subscriber.add_member(:address, Shapes::ShapeRef.new(shape: SubscriberAddress, required: true, location_name: "Address"))
    Subscriber.struct_class = Types::Subscriber

    Subscribers.member = Shapes::ShapeRef.new(shape: Subscriber)

    TimePeriod.add_member(:start, Shapes::ShapeRef.new(shape: GenericTimestamp, location_name: "Start"))
    TimePeriod.add_member(:end, Shapes::ShapeRef.new(shape: GenericTimestamp, location_name: "End"))
    TimePeriod.struct_class = Types::TimePeriod

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
      end)
    end

  end
end
