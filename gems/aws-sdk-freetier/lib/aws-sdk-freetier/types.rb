# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::FreeTier
  module Types

    # You don't have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/freetier-2023-09-07/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the rewards granted as a result of activities
    # completed.
    #
    # @note ActivityReward is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ActivityReward corresponding to the set member.
    #
    # @!attribute [rw] credit
    #   The credits gained by activity rewards.
    #   @return [Types::MonetaryAmount]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/freetier-2023-09-07/ActivityReward AWS API Documentation
    #
    class ActivityReward < Struct.new(
      :credit,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Credit < ActivityReward; end
      class Unknown < ActivityReward; end
    end

    # The summary of activities.
    #
    # @!attribute [rw] activity_id
    #   A unique identifier that identifies the activity.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the activity.
    #   @return [String]
    #
    # @!attribute [rw] reward
    #   The reward for the activity.
    #   @return [Types::ActivityReward]
    #
    # @!attribute [rw] status
    #   The current status of the activity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/freetier-2023-09-07/ActivitySummary AWS API Documentation
    #
    class ActivitySummary < Struct.new(
      :activity_id,
      :title,
      :reward,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the specifications for the filters to use for your request.
    #
    # @!attribute [rw] key
    #   The name of the dimension that you want to filter on.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The metadata values you can specify to filter upon, so that the
    #   results all match at least one of the specified values.
    #   @return [Array<String>]
    #
    # @!attribute [rw] match_options
    #   The match options that you can use to filter your results. You can
    #   specify only one of these values in the array.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/freetier-2023-09-07/DimensionValues AWS API Documentation
    #
    class DimensionValues < Struct.new(
      :key,
      :values,
      :match_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use `Expression` to filter in the `GetFreeTierUsage` API operation.
    #
    # You can use the following patterns:
    #
    # * Simple dimension values (`Dimensions` root operator)
    #
    # * Complex expressions with logical operators (`AND`, `NOT`, and `OR`
    #   root operators).
    #
    # For *simple dimension values*, you can set the dimension name, values,
    # and match type for the filters that you plan to use.
    #
    # **Example for simple dimension values**
    #
    # You can filter to match exactly for `REGION==us-east-1 OR
    # REGION==us-west-1`.
    #
    # The corresponding `Expression` appears like the following: `{
    # "Dimensions": { "Key": "REGION", "Values": [ "us-east-1", "us-west-1"
    # ], "MatchOptions": ["EQUALS"] } }`
    #
    # As shown in the previous example, lists of dimension values are
    # combined with `OR` when you apply the filter.
    #
    # For *complex expressions with logical operators*, you can have nested
    # expressions to use the logical operators and specify advanced
    # filtering.
    #
    # **Example for complex expressions with logical operators**
    #
    # You can filter by `((REGION == us-east-1 OR REGION == us-west-1) OR
    # (SERVICE CONTAINS AWSLambda)) AND (USAGE_TYPE !CONTAINS
    # DataTransfer)`.
    #
    # The corresponding `Expression` appears like the following: `{ "And": [
    # {"Or": [ {"Dimensions": { "Key": "REGION", "Values": [ "us-east-1",
    # "us-west-1" ], "MatchOptions": ["EQUALS"] }}, {"Dimensions": { "Key":
    # "SERVICE", "Values": ["AWSLambda"], "MatchOptions": ["CONTAINS"] } }
    # ]}, {"Not": {"Dimensions": { "Key": "USAGE_TYPE", "Values":
    # ["DataTransfer"], "MatchOptions": ["CONTAINS"] }}} ] }`
    #
    # In the following **Contents**, you must specify exactly one of the
    # following root operators.
    #
    # @!attribute [rw] or
    #   Return results that match any of the `Expressions` that you
    #   specified. in the array.
    #   @return [Array<Types::Expression>]
    #
    # @!attribute [rw] and
    #   Return results that match all `Expressions` that you specified in
    #   the array.
    #   @return [Array<Types::Expression>]
    #
    # @!attribute [rw] not
    #   Return results that don’t match the `Expression` that you specified.
    #   @return [Types::Expression]
    #
    # @!attribute [rw] dimensions
    #   The specific dimension, values, and match type to filter objects
    #   with.
    #   @return [Types::DimensionValues]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/freetier-2023-09-07/Expression AWS API Documentation
    #
    class Expression < Struct.new(
      :or,
      :and,
      :not,
      :dimensions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Consists of a Amazon Web Services Free Tier offer’s metadata and your
    # data usage for the offer.
    #
    # @!attribute [rw] service
    #   The name of the Amazon Web Services service providing the Free Tier
    #   offer. For example, this can be Amazon Elastic Compute Cloud.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   Describes `usageType` more granularly with the specific Amazon Web
    #   Services service API operation. For example, this can be the
    #   `RunInstances` API operation for Amazon Elastic Compute Cloud.
    #   @return [String]
    #
    # @!attribute [rw] usage_type
    #   Describes the usage details of the offer. For example, this might be
    #   `Global-BoxUsage:freetrial`.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   Describes the Amazon Web Services Region for which this offer is
    #   applicable
    #   @return [String]
    #
    # @!attribute [rw] actual_usage_amount
    #   Describes the actual usage accrued month-to-day (MTD) that you've
    #   used so far.
    #   @return [Float]
    #
    # @!attribute [rw] forecasted_usage_amount
    #   Describes the forecasted usage by the month that you're expected to
    #   use.
    #   @return [Float]
    #
    # @!attribute [rw] limit
    #   Describes the maximum usage allowed in Free Tier.
    #   @return [Float]
    #
    # @!attribute [rw] unit
    #   Describes the unit of the `usageType`, such as `Hrs`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the Free Tier offer.
    #   @return [String]
    #
    # @!attribute [rw] free_tier_type
    #   Describes the type of the Free Tier offer. For example, the offer
    #   can be `"12 Months Free"`, `"Always Free"`, and `"Free Trial"`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/freetier-2023-09-07/FreeTierUsage AWS API Documentation
    #
    class FreeTierUsage < Struct.new(
      :service,
      :operation,
      :usage_type,
      :region,
      :actual_usage_amount,
      :forecasted_usage_amount,
      :limit,
      :unit,
      :description,
      :free_tier_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] activity_id
    #   A unique identifier that identifies the activity.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code used to return translated title and description
    #   fields.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/freetier-2023-09-07/GetAccountActivityRequest AWS API Documentation
    #
    class GetAccountActivityRequest < Struct.new(
      :activity_id,
      :language_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] activity_id
    #   A unique identifier that identifies the activity.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   A short activity title.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Provides detailed information about the activity and its expected
    #   outcomes.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current activity status.
    #   @return [String]
    #
    # @!attribute [rw] instructions_url
    #   The URL resource that provides guidance on activity requirements and
    #   completion.
    #   @return [String]
    #
    # @!attribute [rw] reward
    #   A reward granted upon activity completion.
    #   @return [Types::ActivityReward]
    #
    # @!attribute [rw] estimated_time_to_complete_in_minutes
    #   The estimated time to complete the activity. This is the duration in
    #   minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] expires_at
    #   The time by which the activity must be completed to receive a
    #   reward.
    #   @return [Time]
    #
    # @!attribute [rw] started_at
    #   The timestamp when the activity started. This field appears only for
    #   activities in the `IN_PROGRESS` or `COMPLETED` states.
    #   @return [Time]
    #
    # @!attribute [rw] completed_at
    #   The timestamp when the activity is completed. This field appears
    #   only for activities in the `COMPLETED` state.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/freetier-2023-09-07/GetAccountActivityResponse AWS API Documentation
    #
    class GetAccountActivityResponse < Struct.new(
      :activity_id,
      :title,
      :description,
      :status,
      :instructions_url,
      :reward,
      :estimated_time_to_complete_in_minutes,
      :expires_at,
      :started_at,
      :completed_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/freetier-2023-09-07/GetAccountPlanStateRequest AWS API Documentation
    #
    class GetAccountPlanStateRequest < Aws::EmptyStructure; end

    # @!attribute [rw] account_id
    #   A unique identifier that identifies the account.
    #   @return [String]
    #
    # @!attribute [rw] account_plan_type
    #   The plan type for the account.
    #   @return [String]
    #
    # @!attribute [rw] account_plan_status
    #   The current status for the account plan.
    #   @return [String]
    #
    # @!attribute [rw] account_plan_remaining_credits
    #   The amount of credits remaining for the account.
    #   @return [Types::MonetaryAmount]
    #
    # @!attribute [rw] account_plan_expiration_date
    #   The timestamp for when the current account plan expires.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/freetier-2023-09-07/GetAccountPlanStateResponse AWS API Documentation
    #
    class GetAccountPlanStateResponse < Struct.new(
      :account_id,
      :account_plan_type,
      :account_plan_status,
      :account_plan_remaining_credits,
      :account_plan_expiration_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   An expression that specifies the conditions that you want each
    #   `FreeTierUsage` object to meet.
    #   @return [Types::Expression]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   `MaxResults` means that there can be up to the specified number of
    #   values, but there might be fewer results based on your filters.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/freetier-2023-09-07/GetFreeTierUsageRequest AWS API Documentation
    #
    class GetFreeTierUsageRequest < Struct.new(
      :filter,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] free_tier_usages
    #   The list of Free Tier usage objects that meet your filter
    #   expression.
    #   @return [Array<Types::FreeTierUsage>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/freetier-2023-09-07/GetFreeTierUsageResponse AWS API Documentation
    #
    class GetFreeTierUsageResponse < Struct.new(
      :free_tier_usages,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # An unexpected error occurred during the processing of your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/freetier-2023-09-07/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter_activity_statuses
    #   The activity status filter. This field can be used to filter the
    #   response by activities status.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A token from a previous paginated response. If this is specified,
    #   the response includes records beginning from this token (inclusive),
    #   up to the number specified by `maxResults`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output.
    #   @return [Integer]
    #
    # @!attribute [rw] language_code
    #   The language code used to return translated titles.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/freetier-2023-09-07/ListAccountActivitiesRequest AWS API Documentation
    #
    class ListAccountActivitiesRequest < Struct.new(
      :filter_activity_statuses,
      :next_token,
      :max_results,
      :language_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] activities
    #   A brief information about the activities.
    #   @return [Array<Types::ActivitySummary>]
    #
    # @!attribute [rw] next_token
    #   The token to include in another request to get the next page of
    #   items. This value is `null` when there are no more items to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/freetier-2023-09-07/ListAccountActivitiesResponse AWS API Documentation
    #
    class ListAccountActivitiesResponse < Struct.new(
      :activities,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The monetary amount of the credit.
    #
    # @!attribute [rw] amount
    #   The aggregated monetary amount of credits earned.
    #   @return [Float]
    #
    # @!attribute [rw] unit
    #   The unit that the monetary amount is given in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/freetier-2023-09-07/MonetaryAmount AWS API Documentation
    #
    class MonetaryAmount < Struct.new(
      :amount,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the requested resource cannot be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/freetier-2023-09-07/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/freetier-2023-09-07/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_plan_type
    #   The target account plan type. This makes it explicit about the
    #   change and latest value of the `accountPlanType`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/freetier-2023-09-07/UpgradeAccountPlanRequest AWS API Documentation
    #
    class UpgradeAccountPlanRequest < Struct.new(
      :account_plan_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   A unique identifier that identifies the account.
    #   @return [String]
    #
    # @!attribute [rw] account_plan_type
    #   The type of plan for the account.
    #   @return [String]
    #
    # @!attribute [rw] account_plan_status
    #   This indicates the latest state of the account plan within its
    #   lifecycle.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/freetier-2023-09-07/UpgradeAccountPlanResponse AWS API Documentation
    #
    class UpgradeAccountPlanResponse < Struct.new(
      :account_id,
      :account_plan_type,
      :account_plan_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an Amazon Web
    # Services service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/freetier-2023-09-07/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

