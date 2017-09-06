# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Budgets
  module Types

    # AWS Budget model
    #
    # @note When making an API call, you may pass Budget
    #   data as a hash:
    #
    #       {
    #         budget_name: "BudgetName", # required
    #         budget_limit: { # required
    #           amount: "NumericValue", # required
    #           unit: "UnitValue", # required
    #         },
    #         cost_filters: {
    #           "GenericString" => ["GenericString"],
    #         },
    #         cost_types: { # required
    #           include_tax: false, # required
    #           include_subscription: false, # required
    #           use_blended: false, # required
    #         },
    #         time_unit: "DAILY", # required, accepts DAILY, MONTHLY, QUARTERLY, ANNUALLY
    #         time_period: { # required
    #           start: Time.now, # required
    #           end: Time.now, # required
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
    #         budget_type: "USAGE", # required, accepts USAGE, COST, RI_UTILIZATION
    #       }
    #
    # @!attribute [rw] budget_name
    #   A string represents the budget name. No ":" and "\\" character
    #   is allowed.
    #   @return [String]
    #
    # @!attribute [rw] budget_limit
    #   A structure that represents either a cost spend or usage spend.
    #   Contains an amount and a unit.
    #   @return [Types::Spend]
    #
    # @!attribute [rw] cost_filters
    #   A map that represents the cost filters applied to the budget.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] cost_types
    #   This includes the options for getting the cost of a budget.
    #   @return [Types::CostTypes]
    #
    # @!attribute [rw] time_unit
    #   The time unit of the budget. e.g. MONTHLY, QUARTERLY, etc.
    #   @return [String]
    #
    # @!attribute [rw] time_period
    #   A time period indicating the start date and end date of a budget.
    #   @return [Types::TimePeriod]
    #
    # @!attribute [rw] calculated_spend
    #   A structure that holds the actual and forecasted spend for a budget.
    #   @return [Types::CalculatedSpend]
    #
    # @!attribute [rw] budget_type
    #   The type of a budget. It should be COST, USAGE, or RI\_UTILIZATION.
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

    # A structure that holds the actual and forecasted spend for a budget.
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
    #   A structure that represents either a cost spend or usage spend.
    #   Contains an amount and a unit.
    #   @return [Types::Spend]
    #
    # @!attribute [rw] forecasted_spend
    #   A structure that represents either a cost spend or usage spend.
    #   Contains an amount and a unit.
    #   @return [Types::Spend]
    #
    class CalculatedSpend < Struct.new(
      :actual_spend,
      :forecasted_spend)
      include Aws::Structure
    end

    # This includes the options for getting the cost of a budget.
    #
    # @note When making an API call, you may pass CostTypes
    #   data as a hash:
    #
    #       {
    #         include_tax: false, # required
    #         include_subscription: false, # required
    #         use_blended: false, # required
    #       }
    #
    # @!attribute [rw] include_tax
    #   A generic boolean value.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_subscription
    #   A generic boolean value.
    #   @return [Boolean]
    #
    # @!attribute [rw] use_blended
    #   A generic boolean value.
    #   @return [Boolean]
    #
    class CostTypes < Struct.new(
      :include_tax,
      :include_subscription,
      :use_blended)
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
    #           budget_limit: { # required
    #             amount: "NumericValue", # required
    #             unit: "UnitValue", # required
    #           },
    #           cost_filters: {
    #             "GenericString" => ["GenericString"],
    #           },
    #           cost_types: { # required
    #             include_tax: false, # required
    #             include_subscription: false, # required
    #             use_blended: false, # required
    #           },
    #           time_unit: "DAILY", # required, accepts DAILY, MONTHLY, QUARTERLY, ANNUALLY
    #           time_period: { # required
    #             start: Time.now, # required
    #             end: Time.now, # required
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
    #           budget_type: "USAGE", # required, accepts USAGE, COST, RI_UTILIZATION
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
    #                 address: "GenericString", # required
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] account_id
    #   Account Id of the customer. It should be a 12 digit number.
    #   @return [String]
    #
    # @!attribute [rw] budget
    #   AWS Budget model
    #   @return [Types::Budget]
    #
    # @!attribute [rw] notifications_with_subscribers
    #   A list of Notifications, each with a list of subscribers.
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
    #             address: "GenericString", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] account_id
    #   Account Id of the customer. It should be a 12 digit number.
    #   @return [String]
    #
    # @!attribute [rw] budget_name
    #   A string represents the budget name. No ":" and "\\" character
    #   is allowed.
    #   @return [String]
    #
    # @!attribute [rw] notification
    #   Notification model. Each budget may contain multiple notifications
    #   with different settings.
    #   @return [Types::Notification]
    #
    # @!attribute [rw] subscribers
    #   A list of subscribers.
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
    #           address: "GenericString", # required
    #         },
    #       }
    #
    # @!attribute [rw] account_id
    #   Account Id of the customer. It should be a 12 digit number.
    #   @return [String]
    #
    # @!attribute [rw] budget_name
    #   A string represents the budget name. No ":" and "\\" character
    #   is allowed.
    #   @return [String]
    #
    # @!attribute [rw] notification
    #   Notification model. Each budget may contain multiple notifications
    #   with different settings.
    #   @return [Types::Notification]
    #
    # @!attribute [rw] subscriber
    #   Subscriber model. Each notification may contain multiple subscribers
    #   with different addresses.
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
    #   Account Id of the customer. It should be a 12 digit number.
    #   @return [String]
    #
    # @!attribute [rw] budget_name
    #   A string represents the budget name. No ":" and "\\" character
    #   is allowed.
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
    #   Account Id of the customer. It should be a 12 digit number.
    #   @return [String]
    #
    # @!attribute [rw] budget_name
    #   A string represents the budget name. No ":" and "\\" character
    #   is allowed.
    #   @return [String]
    #
    # @!attribute [rw] notification
    #   Notification model. Each budget may contain multiple notifications
    #   with different settings.
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
    #           address: "GenericString", # required
    #         },
    #       }
    #
    # @!attribute [rw] account_id
    #   Account Id of the customer. It should be a 12 digit number.
    #   @return [String]
    #
    # @!attribute [rw] budget_name
    #   A string represents the budget name. No ":" and "\\" character
    #   is allowed.
    #   @return [String]
    #
    # @!attribute [rw] notification
    #   Notification model. Each budget may contain multiple notifications
    #   with different settings.
    #   @return [Types::Notification]
    #
    # @!attribute [rw] subscriber
    #   Subscriber model. Each notification may contain multiple subscribers
    #   with different addresses.
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
    #   Account Id of the customer. It should be a 12 digit number.
    #   @return [String]
    #
    # @!attribute [rw] budget_name
    #   A string represents the budget name. No ":" and "\\" character
    #   is allowed.
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
    #   AWS Budget model
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
    #   Account Id of the customer. It should be a 12 digit number.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   An integer to represent how many entries a paginated response
    #   contains. Maximum is set to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A generic String.
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
    #   A list of budgets
    #   @return [Array<Types::Budget>]
    #
    # @!attribute [rw] next_token
    #   A generic String.
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
    #   Account Id of the customer. It should be a 12 digit number.
    #   @return [String]
    #
    # @!attribute [rw] budget_name
    #   A string represents the budget name. No ":" and "\\" character
    #   is allowed.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   An integer to represent how many entries a paginated response
    #   contains. Maximum is set to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A generic String.
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
    #   A list of notifications.
    #   @return [Array<Types::Notification>]
    #
    # @!attribute [rw] next_token
    #   A generic String.
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
    #   Account Id of the customer. It should be a 12 digit number.
    #   @return [String]
    #
    # @!attribute [rw] budget_name
    #   A string represents the budget name. No ":" and "\\" character
    #   is allowed.
    #   @return [String]
    #
    # @!attribute [rw] notification
    #   Notification model. Each budget may contain multiple notifications
    #   with different settings.
    #   @return [Types::Notification]
    #
    # @!attribute [rw] max_results
    #   An integer to represent how many entries a paginated response
    #   contains. Maximum is set to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A generic String.
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
    #   A list of subscribers.
    #   @return [Array<Types::Subscriber>]
    #
    # @!attribute [rw] next_token
    #   A generic String.
    #   @return [String]
    #
    class DescribeSubscribersForNotificationResponse < Struct.new(
      :subscribers,
      :next_token)
      include Aws::Structure
    end

    # Notification model. Each budget may contain multiple notifications
    # with different settings.
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
    #   The type of a notification. It should be ACTUAL or FORECASTED.
    #   @return [String]
    #
    # @!attribute [rw] comparison_operator
    #   The comparison operator of a notification. Currently we support less
    #   than, equal to and greater than.
    #   @return [String]
    #
    # @!attribute [rw] threshold
    #   The threshold of a notification. It should be a number between 0 and
    #   1,000,000,000.
    #   @return [Float]
    #
    # @!attribute [rw] threshold_type
    #   The type of threshold for a notification. It can be PERCENTAGE or
    #   ABSOLUTE\_VALUE.
    #   @return [String]
    #
    class Notification < Struct.new(
      :notification_type,
      :comparison_operator,
      :threshold,
      :threshold_type)
      include Aws::Structure
    end

    # A structure to relate notification and a list of subscribers who
    # belong to the notification.
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
    #             address: "GenericString", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] notification
    #   Notification model. Each budget may contain multiple notifications
    #   with different settings.
    #   @return [Types::Notification]
    #
    # @!attribute [rw] subscribers
    #   A list of subscribers.
    #   @return [Array<Types::Subscriber>]
    #
    class NotificationWithSubscribers < Struct.new(
      :notification,
      :subscribers)
      include Aws::Structure
    end

    # A structure that represents either a cost spend or usage spend.
    # Contains an amount and a unit.
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
    #   A string to represent NumericValue.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   A string to represent budget spend unit. It should be not null and
    #   not empty.
    #   @return [String]
    #
    class Spend < Struct.new(
      :amount,
      :unit)
      include Aws::Structure
    end

    # Subscriber model. Each notification may contain multiple subscribers
    # with different addresses.
    #
    # @note When making an API call, you may pass Subscriber
    #   data as a hash:
    #
    #       {
    #         subscription_type: "SNS", # required, accepts SNS, EMAIL
    #         address: "GenericString", # required
    #       }
    #
    # @!attribute [rw] subscription_type
    #   The subscription type of the subscriber. It can be SMS or EMAIL.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   A generic String.
    #   @return [String]
    #
    class Subscriber < Struct.new(
      :subscription_type,
      :address)
      include Aws::Structure
    end

    # A time period indicating the start date and end date of a budget.
    #
    # @note When making an API call, you may pass TimePeriod
    #   data as a hash:
    #
    #       {
    #         start: Time.now, # required
    #         end: Time.now, # required
    #       }
    #
    # @!attribute [rw] start
    #   A generic timestamp. In Java it is transformed to a Date object.
    #   @return [Time]
    #
    # @!attribute [rw] end
    #   A generic timestamp. In Java it is transformed to a Date object.
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
    #           budget_limit: { # required
    #             amount: "NumericValue", # required
    #             unit: "UnitValue", # required
    #           },
    #           cost_filters: {
    #             "GenericString" => ["GenericString"],
    #           },
    #           cost_types: { # required
    #             include_tax: false, # required
    #             include_subscription: false, # required
    #             use_blended: false, # required
    #           },
    #           time_unit: "DAILY", # required, accepts DAILY, MONTHLY, QUARTERLY, ANNUALLY
    #           time_period: { # required
    #             start: Time.now, # required
    #             end: Time.now, # required
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
    #           budget_type: "USAGE", # required, accepts USAGE, COST, RI_UTILIZATION
    #         },
    #       }
    #
    # @!attribute [rw] account_id
    #   Account Id of the customer. It should be a 12 digit number.
    #   @return [String]
    #
    # @!attribute [rw] new_budget
    #   AWS Budget model
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
    #   Account Id of the customer. It should be a 12 digit number.
    #   @return [String]
    #
    # @!attribute [rw] budget_name
    #   A string represents the budget name. No ":" and "\\" character
    #   is allowed.
    #   @return [String]
    #
    # @!attribute [rw] old_notification
    #   Notification model. Each budget may contain multiple notifications
    #   with different settings.
    #   @return [Types::Notification]
    #
    # @!attribute [rw] new_notification
    #   Notification model. Each budget may contain multiple notifications
    #   with different settings.
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
    #           address: "GenericString", # required
    #         },
    #         new_subscriber: { # required
    #           subscription_type: "SNS", # required, accepts SNS, EMAIL
    #           address: "GenericString", # required
    #         },
    #       }
    #
    # @!attribute [rw] account_id
    #   Account Id of the customer. It should be a 12 digit number.
    #   @return [String]
    #
    # @!attribute [rw] budget_name
    #   A string represents the budget name. No ":" and "\\" character
    #   is allowed.
    #   @return [String]
    #
    # @!attribute [rw] notification
    #   Notification model. Each budget may contain multiple notifications
    #   with different settings.
    #   @return [Types::Notification]
    #
    # @!attribute [rw] old_subscriber
    #   Subscriber model. Each notification may contain multiple subscribers
    #   with different addresses.
    #   @return [Types::Subscriber]
    #
    # @!attribute [rw] new_subscriber
    #   Subscriber model. Each notification may contain multiple subscribers
    #   with different addresses.
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
