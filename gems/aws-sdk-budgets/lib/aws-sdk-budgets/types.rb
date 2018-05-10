# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Budgets
  module Types

    # Represents the output of the `CreateBudget` operation. The content
    # consists of the detailed metadata and data file information, and the
    # current status of the `budget`.
    #
    # The ARN pattern for a budget is:
    # `arn:aws:budgetservice::AccountId:budget/budgetName`
    #
    # @note When making an API call, you may pass Budget
    #   data as a hash:
    #
    #       {
    #         budget_name: "BudgetName", # required
    #         budget_limit: {
    #           amount: "NumericValue", # required
    #           unit: "UnitValue", # required
    #         },
    #         cost_filters: {
    #           "GenericString" => ["GenericString"],
    #         },
    #         cost_types: {
    #           include_tax: false,
    #           include_subscription: false,
    #           use_blended: false,
    #           include_refund: false,
    #           include_credit: false,
    #           include_upfront: false,
    #           include_recurring: false,
    #           include_other_subscription: false,
    #           include_support: false,
    #           include_discount: false,
    #           use_amortized: false,
    #         },
    #         time_unit: "DAILY", # required, accepts DAILY, MONTHLY, QUARTERLY, ANNUALLY
    #         time_period: {
    #           start: Time.now,
    #           end: Time.now,
    #         },
    #         calculated_spend: {
    #           actual_spend: { # required
    #             amount: "NumericValue", # required
    #             unit: "UnitValue", # required
    #           },
    #           forecasted_spend: {
    #             amount: "NumericValue", # required
    #             unit: "UnitValue", # required
    #           },
    #         },
    #         budget_type: "USAGE", # required, accepts USAGE, COST, RI_UTILIZATION, RI_COVERAGE
    #       }
    #
    # @!attribute [rw] budget_name
    #   The name of a budget. Unique within accounts. `:` and `` characters
    #   are not allowed in the `BudgetName`.
    #   @return [String]
    #
    # @!attribute [rw] budget_limit
    #   The total amount of cost, usage, or RI utilization that you want to
    #   track with your budget.
    #
    #   `BudgetLimit` is required for cost or usage budgets, but optional
    #   for RI utilization budgets. RI utilization budgets default to the
    #   only valid value for RI utilization budgets, which is `100`.
    #   @return [Types::Spend]
    #
    # @!attribute [rw] cost_filters
    #   The cost filters applied to a budget, such as service or region.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] cost_types
    #   The types of costs included in this budget.
    #   @return [Types::CostTypes]
    #
    # @!attribute [rw] time_unit
    #   The length of time until a budget resets the actual and forecasted
    #   spend.
    #   @return [String]
    #
    # @!attribute [rw] time_period
    #   The period of time covered by a budget. Has a start date and an end
    #   date. The start date must come before the end date. There are no
    #   restrictions on the end date.
    #
    #   If you created your budget and didn't specify a start date, AWS
    #   defaults to the start of your chosen time period (i.e. DAILY,
    #   MONTHLY, QUARTERLY, ANNUALLY). For example, if you created your
    #   budget on January 24th 2018, chose `DAILY`, and didn't set a start
    #   date, AWS set your start date to `01/24/18 00:00 UTC`. If you chose
    #   `MONTHLY`, AWS set your start date to `01/01/18 00:00 UTC`. If you
    #   didn't specify an end date, AWS set your end date to `06/15/87
    #   00:00 UTC`. The defaults are the same for the AWS Billing and Cost
    #   Management console and the API.
    #
    #   You can change either date with the `UpdateBudget` operation.
    #
    #   After the end date, AWS deletes the budget and all associated
    #   notifications and subscribers.
    #   @return [Types::TimePeriod]
    #
    # @!attribute [rw] calculated_spend
    #   The actual and forecasted cost or usage being tracked by a budget.
    #   @return [Types::CalculatedSpend]
    #
    # @!attribute [rw] budget_type
    #   Whether this budget tracks monetary costs, usage, or RI utilization.
    #   @return [String]
    #
    class Budget < Struct.new(
      :budget_name,
      :budget_limit,
      :cost_filters,
      :cost_types,
      :time_unit,
      :time_period,
      :calculated_spend,
      :budget_type)
      include Aws::Structure
    end

    # The spend objects associated with this budget. The `actualSpend`
    # tracks how much you've used, cost, usage, or RI units, and the
    # `forecastedSpend` tracks how much you are predicted to spend if your
    # current usage remains steady.
    #
    # For example, if it is the 20th of the month and you have spent `50`
    # dollars on Amazon EC2, your `actualSpend` is `50 USD`, and your
    # `forecastedSpend` is `75 USD`.
    #
    # @note When making an API call, you may pass CalculatedSpend
    #   data as a hash:
    #
    #       {
    #         actual_spend: { # required
    #           amount: "NumericValue", # required
    #           unit: "UnitValue", # required
    #         },
    #         forecasted_spend: {
    #           amount: "NumericValue", # required
    #           unit: "UnitValue", # required
    #         },
    #       }
    #
    # @!attribute [rw] actual_spend
    #   The amount of cost, usage, or RI units that you have used.
    #   @return [Types::Spend]
    #
    # @!attribute [rw] forecasted_spend
    #   The amount of cost, usage, or RI units that you are forecasted to
    #   use.
    #   @return [Types::Spend]
    #
    class CalculatedSpend < Struct.new(
      :actual_spend,
      :forecasted_spend)
      include Aws::Structure
    end

    # The types of cost included in a budget, such as tax and subscriptions.
    #
    # @note When making an API call, you may pass CostTypes
    #   data as a hash:
    #
    #       {
    #         include_tax: false,
    #         include_subscription: false,
    #         use_blended: false,
    #         include_refund: false,
    #         include_credit: false,
    #         include_upfront: false,
    #         include_recurring: false,
    #         include_other_subscription: false,
    #         include_support: false,
    #         include_discount: false,
    #         use_amortized: false,
    #       }
    #
    # @!attribute [rw] include_tax
    #   Specifies whether a budget includes taxes.
    #
    #   The default value is `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_subscription
    #   Specifies whether a budget includes subscriptions.
    #
    #   The default value is `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] use_blended
    #   Specifies whether a budget uses blended rate.
    #
    #   The default value is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_refund
    #   Specifies whether a budget includes refunds.
    #
    #   The default value is `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_credit
    #   Specifies whether a budget includes credits.
    #
    #   The default value is `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_upfront
    #   Specifies whether a budget includes upfront RI costs.
    #
    #   The default value is `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_recurring
    #   Specifies whether a budget includes recurring fees such as monthly
    #   RI fees.
    #
    #   The default value is `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_other_subscription
    #   Specifies whether a budget includes non-RI subscription costs.
    #
    #   The default value is `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_support
    #   Specifies whether a budget includes support subscription fees.
    #
    #   The default value is `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_discount
    #   Specifies whether a budget includes discounts.
    #
    #   The default value is `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] use_amortized
    #   Specifies whether a budget uses the amortized rate.
    #
    #   The default value is `false`.
    #   @return [Boolean]
    #
    class CostTypes < Struct.new(
      :include_tax,
      :include_subscription,
      :use_blended,
      :include_refund,
      :include_credit,
      :include_upfront,
      :include_recurring,
      :include_other_subscription,
      :include_support,
      :include_discount,
      :use_amortized)
      include Aws::Structure
    end

    # Request of CreateBudget
    #
    # @note When making an API call, you may pass CreateBudgetRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         budget: { # required
    #           budget_name: "BudgetName", # required
    #           budget_limit: {
    #             amount: "NumericValue", # required
    #             unit: "UnitValue", # required
    #           },
    #           cost_filters: {
    #             "GenericString" => ["GenericString"],
    #           },
    #           cost_types: {
    #             include_tax: false,
    #             include_subscription: false,
    #             use_blended: false,
    #             include_refund: false,
    #             include_credit: false,
    #             include_upfront: false,
    #             include_recurring: false,
    #             include_other_subscription: false,
    #             include_support: false,
    #             include_discount: false,
    #             use_amortized: false,
    #           },
    #           time_unit: "DAILY", # required, accepts DAILY, MONTHLY, QUARTERLY, ANNUALLY
    #           time_period: {
    #             start: Time.now,
    #             end: Time.now,
    #           },
    #           calculated_spend: {
    #             actual_spend: { # required
    #               amount: "NumericValue", # required
    #               unit: "UnitValue", # required
    #             },
    #             forecasted_spend: {
    #               amount: "NumericValue", # required
    #               unit: "UnitValue", # required
    #             },
    #           },
    #           budget_type: "USAGE", # required, accepts USAGE, COST, RI_UTILIZATION, RI_COVERAGE
    #         },
    #         notifications_with_subscribers: [
    #           {
    #             notification: { # required
    #               notification_type: "ACTUAL", # required, accepts ACTUAL, FORECASTED
    #               comparison_operator: "GREATER_THAN", # required, accepts GREATER_THAN, LESS_THAN, EQUAL_TO
    #               threshold: 1.0, # required
    #               threshold_type: "PERCENTAGE", # accepts PERCENTAGE, ABSOLUTE_VALUE
    #             },
    #             subscribers: [ # required
    #               {
    #                 subscription_type: "SNS", # required, accepts SNS, EMAIL
    #                 address: "SubscriberAddress", # required
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] account_id
    #   The `accountId` that is associated with the budget.
    #   @return [String]
    #
    # @!attribute [rw] budget
    #   The budget object that you want to create.
    #   @return [Types::Budget]
    #
    # @!attribute [rw] notifications_with_subscribers
    #   A notification that you want to associate with a budget. A budget
    #   can have up to five notifications, and each notification can have
    #   one SNS subscriber and up to ten email subscribers. If you include
    #   notifications and subscribers in your `CreateBudget` call, AWS
    #   creates the notifications and subscribers for you.
    #   @return [Array<Types::NotificationWithSubscribers>]
    #
    class CreateBudgetRequest < Struct.new(
      :account_id,
      :budget,
      :notifications_with_subscribers)
      include Aws::Structure
    end

    # Response of CreateBudget
    #
    class CreateBudgetResponse < Aws::EmptyStructure; end

    # Request of CreateNotification
    #
    # @note When making an API call, you may pass CreateNotificationRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         budget_name: "BudgetName", # required
    #         notification: { # required
    #           notification_type: "ACTUAL", # required, accepts ACTUAL, FORECASTED
    #           comparison_operator: "GREATER_THAN", # required, accepts GREATER_THAN, LESS_THAN, EQUAL_TO
    #           threshold: 1.0, # required
    #           threshold_type: "PERCENTAGE", # accepts PERCENTAGE, ABSOLUTE_VALUE
    #         },
    #         subscribers: [ # required
    #           {
    #             subscription_type: "SNS", # required, accepts SNS, EMAIL
    #             address: "SubscriberAddress", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] account_id
    #   The `accountId` that is associated with the budget that you want to
    #   create a notification for.
    #   @return [String]
    #
    # @!attribute [rw] budget_name
    #   The name of the budget that you want AWS to notified you about.
    #   Budget names must be unique within an account.
    #   @return [String]
    #
    # @!attribute [rw] notification
    #   The notification that you want to create.
    #   @return [Types::Notification]
    #
    # @!attribute [rw] subscribers
    #   A list of subscribers that you want to associate with the
    #   notification. Each notification can have one SNS subscriber and up
    #   to ten email subscribers.
    #   @return [Array<Types::Subscriber>]
    #
    class CreateNotificationRequest < Struct.new(
      :account_id,
      :budget_name,
      :notification,
      :subscribers)
      include Aws::Structure
    end

    # Response of CreateNotification
    #
    class CreateNotificationResponse < Aws::EmptyStructure; end

    # Request of CreateSubscriber
    #
    # @note When making an API call, you may pass CreateSubscriberRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         budget_name: "BudgetName", # required
    #         notification: { # required
    #           notification_type: "ACTUAL", # required, accepts ACTUAL, FORECASTED
    #           comparison_operator: "GREATER_THAN", # required, accepts GREATER_THAN, LESS_THAN, EQUAL_TO
    #           threshold: 1.0, # required
    #           threshold_type: "PERCENTAGE", # accepts PERCENTAGE, ABSOLUTE_VALUE
    #         },
    #         subscriber: { # required
    #           subscription_type: "SNS", # required, accepts SNS, EMAIL
    #           address: "SubscriberAddress", # required
    #         },
    #       }
    #
    # @!attribute [rw] account_id
    #   The `accountId` associated with the budget that you want to create a
    #   subscriber for.
    #   @return [String]
    #
    # @!attribute [rw] budget_name
    #   The name of the budget that you want to subscribe to. Budget names
    #   must be unique within an account.
    #   @return [String]
    #
    # @!attribute [rw] notification
    #   The notification that you want to create a subscriber for.
    #   @return [Types::Notification]
    #
    # @!attribute [rw] subscriber
    #   The subscriber that you want to associate with a budget
    #   notification.
    #   @return [Types::Subscriber]
    #
    class CreateSubscriberRequest < Struct.new(
      :account_id,
      :budget_name,
      :notification,
      :subscriber)
      include Aws::Structure
    end

    # Response of CreateSubscriber
    #
    class CreateSubscriberResponse < Aws::EmptyStructure; end

    # Request of DeleteBudget
    #
    # @note When making an API call, you may pass DeleteBudgetRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         budget_name: "BudgetName", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The `accountId` that is associated with the budget that you want to
    #   delete.
    #   @return [String]
    #
    # @!attribute [rw] budget_name
    #   The name of the budget that you want to delete.
    #   @return [String]
    #
    class DeleteBudgetRequest < Struct.new(
      :account_id,
      :budget_name)
      include Aws::Structure
    end

    # Response of DeleteBudget
    #
    class DeleteBudgetResponse < Aws::EmptyStructure; end

    # Request of DeleteNotification
    #
    # @note When making an API call, you may pass DeleteNotificationRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         budget_name: "BudgetName", # required
    #         notification: { # required
    #           notification_type: "ACTUAL", # required, accepts ACTUAL, FORECASTED
    #           comparison_operator: "GREATER_THAN", # required, accepts GREATER_THAN, LESS_THAN, EQUAL_TO
    #           threshold: 1.0, # required
    #           threshold_type: "PERCENTAGE", # accepts PERCENTAGE, ABSOLUTE_VALUE
    #         },
    #       }
    #
    # @!attribute [rw] account_id
    #   The `accountId` that is associated with the budget whose
    #   notification you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] budget_name
    #   The name of the budget whose notification you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] notification
    #   The notification that you want to delete.
    #   @return [Types::Notification]
    #
    class DeleteNotificationRequest < Struct.new(
      :account_id,
      :budget_name,
      :notification)
      include Aws::Structure
    end

    # Response of DeleteNotification
    #
    class DeleteNotificationResponse < Aws::EmptyStructure; end

    # Request of DeleteSubscriber
    #
    # @note When making an API call, you may pass DeleteSubscriberRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         budget_name: "BudgetName", # required
    #         notification: { # required
    #           notification_type: "ACTUAL", # required, accepts ACTUAL, FORECASTED
    #           comparison_operator: "GREATER_THAN", # required, accepts GREATER_THAN, LESS_THAN, EQUAL_TO
    #           threshold: 1.0, # required
    #           threshold_type: "PERCENTAGE", # accepts PERCENTAGE, ABSOLUTE_VALUE
    #         },
    #         subscriber: { # required
    #           subscription_type: "SNS", # required, accepts SNS, EMAIL
    #           address: "SubscriberAddress", # required
    #         },
    #       }
    #
    # @!attribute [rw] account_id
    #   The `accountId` that is associated with the budget whose subscriber
    #   you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] budget_name
    #   The name of the budget whose subscriber you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] notification
    #   The notification whose subscriber you want to delete.
    #   @return [Types::Notification]
    #
    # @!attribute [rw] subscriber
    #   The subscriber that you want to delete.
    #   @return [Types::Subscriber]
    #
    class DeleteSubscriberRequest < Struct.new(
      :account_id,
      :budget_name,
      :notification,
      :subscriber)
      include Aws::Structure
    end

    # Response of DeleteSubscriber
    #
    class DeleteSubscriberResponse < Aws::EmptyStructure; end

    # Request of DescribeBudget
    #
    # @note When making an API call, you may pass DescribeBudgetRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         budget_name: "BudgetName", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The `accountId` that is associated with the budget that you want a
    #   description of.
    #   @return [String]
    #
    # @!attribute [rw] budget_name
    #   The name of the budget that you want a description of.
    #   @return [String]
    #
    class DescribeBudgetRequest < Struct.new(
      :account_id,
      :budget_name)
      include Aws::Structure
    end

    # Response of DescribeBudget
    #
    # @!attribute [rw] budget
    #   The description of the budget.
    #   @return [Types::Budget]
    #
    class DescribeBudgetResponse < Struct.new(
      :budget)
      include Aws::Structure
    end

    # Request of DescribeBudgets
    #
    # @note When making an API call, you may pass DescribeBudgetsRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         max_results: 1,
    #         next_token: "GenericString",
    #       }
    #
    # @!attribute [rw] account_id
    #   The `accountId` that is associated with the budgets that you want
    #   descriptions of.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Optional integer. Specifies the maximum number of results to return
    #   in response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    class DescribeBudgetsRequest < Struct.new(
      :account_id,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Response of DescribeBudgets
    #
    # @!attribute [rw] budgets
    #   A list of budgets.
    #   @return [Array<Types::Budget>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results that you
    #   can retrieve.
    #   @return [String]
    #
    class DescribeBudgetsResponse < Struct.new(
      :budgets,
      :next_token)
      include Aws::Structure
    end

    # Request of DescribeNotificationsForBudget
    #
    # @note When making an API call, you may pass DescribeNotificationsForBudgetRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         budget_name: "BudgetName", # required
    #         max_results: 1,
    #         next_token: "GenericString",
    #       }
    #
    # @!attribute [rw] account_id
    #   The `accountId` that is associated with the budget whose
    #   notifications you want descriptions of.
    #   @return [String]
    #
    # @!attribute [rw] budget_name
    #   The name of the budget whose notifications you want descriptions of.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Optional integer. Specifies the maximum number of results to return
    #   in response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    class DescribeNotificationsForBudgetRequest < Struct.new(
      :account_id,
      :budget_name,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Response of GetNotificationsForBudget
    #
    # @!attribute [rw] notifications
    #   A list of notifications associated with a budget.
    #   @return [Array<Types::Notification>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results that you
    #   can retrieve.
    #   @return [String]
    #
    class DescribeNotificationsForBudgetResponse < Struct.new(
      :notifications,
      :next_token)
      include Aws::Structure
    end

    # Request of DescribeSubscribersForNotification
    #
    # @note When making an API call, you may pass DescribeSubscribersForNotificationRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         budget_name: "BudgetName", # required
    #         notification: { # required
    #           notification_type: "ACTUAL", # required, accepts ACTUAL, FORECASTED
    #           comparison_operator: "GREATER_THAN", # required, accepts GREATER_THAN, LESS_THAN, EQUAL_TO
    #           threshold: 1.0, # required
    #           threshold_type: "PERCENTAGE", # accepts PERCENTAGE, ABSOLUTE_VALUE
    #         },
    #         max_results: 1,
    #         next_token: "GenericString",
    #       }
    #
    # @!attribute [rw] account_id
    #   The `accountId` that is associated with the budget whose subscribers
    #   you want descriptions of.
    #   @return [String]
    #
    # @!attribute [rw] budget_name
    #   The name of the budget whose subscribers you want descriptions of.
    #   @return [String]
    #
    # @!attribute [rw] notification
    #   The notification whose subscribers you want to list.
    #   @return [Types::Notification]
    #
    # @!attribute [rw] max_results
    #   Optional integer. Specifies the maximum number of results to return
    #   in response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    class DescribeSubscribersForNotificationRequest < Struct.new(
      :account_id,
      :budget_name,
      :notification,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Response of DescribeSubscribersForNotification
    #
    # @!attribute [rw] subscribers
    #   A list of subscribers associated with a notification.
    #   @return [Array<Types::Subscriber>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results that you
    #   can retrieve.
    #   @return [String]
    #
    class DescribeSubscribersForNotificationResponse < Struct.new(
      :subscribers,
      :next_token)
      include Aws::Structure
    end

    # A notification associated with a budget. A budget can have up to five
    # notifications.
    #
    # Each notification must have at least one subscriber. A notification
    # can have one SNS subscriber and up to ten email subscribers, for a
    # total of 11 subscribers.
    #
    # For example, if you have a budget for 200 dollars and you want to be
    # notified when you go over 160 dollars, create a notification with the
    # following parameters:
    #
    # * A notificationType of `ACTUAL`
    #
    # * A comparisonOperator of `GREATER_THAN`
    #
    # * A notification threshold of `80`
    #
    # @note When making an API call, you may pass Notification
    #   data as a hash:
    #
    #       {
    #         notification_type: "ACTUAL", # required, accepts ACTUAL, FORECASTED
    #         comparison_operator: "GREATER_THAN", # required, accepts GREATER_THAN, LESS_THAN, EQUAL_TO
    #         threshold: 1.0, # required
    #         threshold_type: "PERCENTAGE", # accepts PERCENTAGE, ABSOLUTE_VALUE
    #       }
    #
    # @!attribute [rw] notification_type
    #   Whether the notification is for how much you have spent (`ACTUAL`)
    #   or for how much you are forecasted to spend (`FORECASTED`).
    #   @return [String]
    #
    # @!attribute [rw] comparison_operator
    #   The comparison used for this notification.
    #   @return [String]
    #
    # @!attribute [rw] threshold
    #   The threshold associated with a notification. Thresholds are always
    #   a percentage.
    #   @return [Float]
    #
    # @!attribute [rw] threshold_type
    #   The type of threshold for a notification. For `ACTUAL` thresholds,
    #   AWS notifies you when you go over the threshold, and for
    #   `FORECASTED` thresholds AWS notifies you when you are forecasted to
    #   go over the threshold.
    #   @return [String]
    #
    class Notification < Struct.new(
      :notification_type,
      :comparison_operator,
      :threshold,
      :threshold_type)
      include Aws::Structure
    end

    # A notification with subscribers. A notification can have one SNS
    # subscriber and up to ten email subscribers, for a total of 11
    # subscribers.
    #
    # @note When making an API call, you may pass NotificationWithSubscribers
    #   data as a hash:
    #
    #       {
    #         notification: { # required
    #           notification_type: "ACTUAL", # required, accepts ACTUAL, FORECASTED
    #           comparison_operator: "GREATER_THAN", # required, accepts GREATER_THAN, LESS_THAN, EQUAL_TO
    #           threshold: 1.0, # required
    #           threshold_type: "PERCENTAGE", # accepts PERCENTAGE, ABSOLUTE_VALUE
    #         },
    #         subscribers: [ # required
    #           {
    #             subscription_type: "SNS", # required, accepts SNS, EMAIL
    #             address: "SubscriberAddress", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] notification
    #   The notification associated with a budget.
    #   @return [Types::Notification]
    #
    # @!attribute [rw] subscribers
    #   A list of subscribers who are subscribed to this notification.
    #   @return [Array<Types::Subscriber>]
    #
    class NotificationWithSubscribers < Struct.new(
      :notification,
      :subscribers)
      include Aws::Structure
    end

    # The amount of cost or usage being measured for a budget.
    #
    # For example, a `Spend` for `3 GB` of S3 usage would have the following
    # parameters:
    #
    # * An `Amount` of `3`
    #
    # * A `unit` of `GB`
    #
    # @note When making an API call, you may pass Spend
    #   data as a hash:
    #
    #       {
    #         amount: "NumericValue", # required
    #         unit: "UnitValue", # required
    #       }
    #
    # @!attribute [rw] amount
    #   The cost or usage amount associated with a budget forecast, actual
    #   spend, or budget threshold.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The unit of measurement used for the budget forecast, actual spend,
    #   or budget threshold, such as dollars or GB.
    #   @return [String]
    #
    class Spend < Struct.new(
      :amount,
      :unit)
      include Aws::Structure
    end

    # The subscriber to a budget notification. The subscriber consists of a
    # subscription type and either an Amazon Simple Notification Service
    # topic or an email address.
    #
    # For example, an email subscriber would have the following parameters:
    #
    # * A `subscriptionType` of `EMAIL`
    #
    # * An `address` of `example@example.com`
    #
    # @note When making an API call, you may pass Subscriber
    #   data as a hash:
    #
    #       {
    #         subscription_type: "SNS", # required, accepts SNS, EMAIL
    #         address: "SubscriberAddress", # required
    #       }
    #
    # @!attribute [rw] subscription_type
    #   The type of notification that AWS sends to a subscriber.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   The address that AWS sends budget notifications to, either an SNS
    #   topic or an email.
    #   @return [String]
    #
    class Subscriber < Struct.new(
      :subscription_type,
      :address)
      include Aws::Structure
    end

    # The period of time covered by a budget. Has a start date and an end
    # date. The start date must come before the end date. There are no
    # restrictions on the end date.
    #
    # @note When making an API call, you may pass TimePeriod
    #   data as a hash:
    #
    #       {
    #         start: Time.now,
    #         end: Time.now,
    #       }
    #
    # @!attribute [rw] start
    #   The start date for a budget. If you created your budget and didn't
    #   specify a start date, AWS defaults to the start of your chosen time
    #   period (i.e. DAILY, MONTHLY, QUARTERLY, ANNUALLY). For example, if
    #   you created your budget on January 24th 2018, chose `DAILY`, and
    #   didn't set a start date, AWS set your start date to `01/24/18 00:00
    #   UTC`. If you chose `MONTHLY`, AWS set your start date to `01/01/18
    #   00:00 UTC`. The defaults are the same for the AWS Billing and Cost
    #   Management console and the API.
    #
    #   You can change your start date with the `UpdateBudget` operation.
    #   @return [Time]
    #
    # @!attribute [rw] end
    #   The end date for a budget. If you didn't specify an end date, AWS
    #   set your end date to `06/15/87 00:00 UTC`. The defaults are the same
    #   for the AWS Billing and Cost Management console and the API.
    #
    #   After the end date, AWS deletes the budget and all associated
    #   notifications and subscribers. You can change your end date with the
    #   `UpdateBudget` operation.
    #   @return [Time]
    #
    class TimePeriod < Struct.new(
      :start,
      :end)
      include Aws::Structure
    end

    # Request of UpdateBudget
    #
    # @note When making an API call, you may pass UpdateBudgetRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         new_budget: { # required
    #           budget_name: "BudgetName", # required
    #           budget_limit: {
    #             amount: "NumericValue", # required
    #             unit: "UnitValue", # required
    #           },
    #           cost_filters: {
    #             "GenericString" => ["GenericString"],
    #           },
    #           cost_types: {
    #             include_tax: false,
    #             include_subscription: false,
    #             use_blended: false,
    #             include_refund: false,
    #             include_credit: false,
    #             include_upfront: false,
    #             include_recurring: false,
    #             include_other_subscription: false,
    #             include_support: false,
    #             include_discount: false,
    #             use_amortized: false,
    #           },
    #           time_unit: "DAILY", # required, accepts DAILY, MONTHLY, QUARTERLY, ANNUALLY
    #           time_period: {
    #             start: Time.now,
    #             end: Time.now,
    #           },
    #           calculated_spend: {
    #             actual_spend: { # required
    #               amount: "NumericValue", # required
    #               unit: "UnitValue", # required
    #             },
    #             forecasted_spend: {
    #               amount: "NumericValue", # required
    #               unit: "UnitValue", # required
    #             },
    #           },
    #           budget_type: "USAGE", # required, accepts USAGE, COST, RI_UTILIZATION, RI_COVERAGE
    #         },
    #       }
    #
    # @!attribute [rw] account_id
    #   The `accountId` that is associated with the budget that you want to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] new_budget
    #   The budget that you want to update your budget to.
    #   @return [Types::Budget]
    #
    class UpdateBudgetRequest < Struct.new(
      :account_id,
      :new_budget)
      include Aws::Structure
    end

    # Response of UpdateBudget
    #
    class UpdateBudgetResponse < Aws::EmptyStructure; end

    # Request of UpdateNotification
    #
    # @note When making an API call, you may pass UpdateNotificationRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         budget_name: "BudgetName", # required
    #         old_notification: { # required
    #           notification_type: "ACTUAL", # required, accepts ACTUAL, FORECASTED
    #           comparison_operator: "GREATER_THAN", # required, accepts GREATER_THAN, LESS_THAN, EQUAL_TO
    #           threshold: 1.0, # required
    #           threshold_type: "PERCENTAGE", # accepts PERCENTAGE, ABSOLUTE_VALUE
    #         },
    #         new_notification: { # required
    #           notification_type: "ACTUAL", # required, accepts ACTUAL, FORECASTED
    #           comparison_operator: "GREATER_THAN", # required, accepts GREATER_THAN, LESS_THAN, EQUAL_TO
    #           threshold: 1.0, # required
    #           threshold_type: "PERCENTAGE", # accepts PERCENTAGE, ABSOLUTE_VALUE
    #         },
    #       }
    #
    # @!attribute [rw] account_id
    #   The `accountId` that is associated with the budget whose
    #   notification you want to update.
    #   @return [String]
    #
    # @!attribute [rw] budget_name
    #   The name of the budget whose notification you want to update.
    #   @return [String]
    #
    # @!attribute [rw] old_notification
    #   The previous notification associated with a budget.
    #   @return [Types::Notification]
    #
    # @!attribute [rw] new_notification
    #   The updated notification to be associated with a budget.
    #   @return [Types::Notification]
    #
    class UpdateNotificationRequest < Struct.new(
      :account_id,
      :budget_name,
      :old_notification,
      :new_notification)
      include Aws::Structure
    end

    # Response of UpdateNotification
    #
    class UpdateNotificationResponse < Aws::EmptyStructure; end

    # Request of UpdateSubscriber
    #
    # @note When making an API call, you may pass UpdateSubscriberRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         budget_name: "BudgetName", # required
    #         notification: { # required
    #           notification_type: "ACTUAL", # required, accepts ACTUAL, FORECASTED
    #           comparison_operator: "GREATER_THAN", # required, accepts GREATER_THAN, LESS_THAN, EQUAL_TO
    #           threshold: 1.0, # required
    #           threshold_type: "PERCENTAGE", # accepts PERCENTAGE, ABSOLUTE_VALUE
    #         },
    #         old_subscriber: { # required
    #           subscription_type: "SNS", # required, accepts SNS, EMAIL
    #           address: "SubscriberAddress", # required
    #         },
    #         new_subscriber: { # required
    #           subscription_type: "SNS", # required, accepts SNS, EMAIL
    #           address: "SubscriberAddress", # required
    #         },
    #       }
    #
    # @!attribute [rw] account_id
    #   The `accountId` that is associated with the budget whose subscriber
    #   you want to update.
    #   @return [String]
    #
    # @!attribute [rw] budget_name
    #   The name of the budget whose subscriber you want to update.
    #   @return [String]
    #
    # @!attribute [rw] notification
    #   The notification whose subscriber you want to update.
    #   @return [Types::Notification]
    #
    # @!attribute [rw] old_subscriber
    #   The previous subscriber associated with a budget notification.
    #   @return [Types::Subscriber]
    #
    # @!attribute [rw] new_subscriber
    #   The updated subscriber associated with a budget notification.
    #   @return [Types::Subscriber]
    #
    class UpdateSubscriberRequest < Struct.new(
      :account_id,
      :budget_name,
      :notification,
      :old_subscriber,
      :new_subscriber)
      include Aws::Structure
    end

    # Response of UpdateSubscriber
    #
    class UpdateSubscriberResponse < Aws::EmptyStructure; end

  end
end
