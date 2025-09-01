# frozen_string_literal: true

# This is generated code!

module Aws::FreeTier
  # This module contains the types returned by client operations.
  module Types

    # <p> You don't have sufficient access to perform this action. </p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AccountPlanStatus
      NOT_STARTED = 'NOT_STARTED'
      ACTIVE = 'ACTIVE'
      EXPIRED = 'EXPIRED'
    end

    module AccountPlanType
      FREE = 'FREE'
      PAID = 'PAID'
    end

    # <p> The summary of the rewards granted as a result of activities completed. </p>
    # @!attribute credit
    #   <p> The credits gained by activity rewards. </p>
    #   @return [Types::MonetaryAmount]
    class ActivityReward < Struct.new(
      :credit,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Credit < ActivityReward; end
      class Unknown < ActivityReward; end
    end

    module ActivityStatus
      NOT_STARTED = 'NOT_STARTED'
      IN_PROGRESS = 'IN_PROGRESS'
      COMPLETED = 'COMPLETED'
      EXPIRING = 'EXPIRING'
    end

    # <p> The summary of activities. </p>
    # @!attribute activity_id
    #   <p> A unique identifier that identifies the activity. </p>
    #   @return [String]
    # @!attribute title
    #   <p> The title of the activity. </p>
    #   @return [String]
    # @!attribute reward
    #   <p> The reward for the activity. </p>
    #   @return [Types::ActivityReward]
    # @!attribute status
    #   <p> The current status of the activity. </p>
    #   @return [String]
    class ActivitySummary < Struct.new(
      :activity_id,
      :title,
      :reward,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module CurrencyCode
      USD = 'USD'
    end

    module Dimension
      SERVICE = 'SERVICE'
      OPERATION = 'OPERATION'
      USAGE_TYPE = 'USAGE_TYPE'
      REGION = 'REGION'
      FREE_TIER_TYPE = 'FREE_TIER_TYPE'
      DESCRIPTION = 'DESCRIPTION'
      USAGE_PERCENTAGE = 'USAGE_PERCENTAGE'
    end

    # <p>Contains the specifications for the filters to use for your request.</p>
    # @!attribute key
    #   <p>The name of the dimension that you want to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The metadata values you can specify to filter upon, so that the results all match at least one of the specified values.</p>
    #   @return [Array<String>]
    # @!attribute match_options
    #   <p>The match options that you can use to filter your results. You can specify only one of these values in the array.</p>
    #   @return [Array<String>]
    class DimensionValues < Struct.new(
      :key,
      :values,
      :match_options,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Use <code>Expression</code> to filter in the <code>GetFreeTierUsage</code> API operation.</p> <p>You can use the following patterns:</p> <ul> <li> <p>Simple dimension values (<code>Dimensions</code> root operator)</p> </li> <li> <p>Complex expressions with logical operators (<code>AND</code>, <code>NOT</code>, and <code>OR</code> root operators).</p> </li> </ul> <p>For <i>simple dimension values</i>, you can set the dimension name, values, and match type for the filters that you plan to use.</p> <p> <b>Example for simple dimension values</b> </p> <p>You can filter to match exactly for <code>REGION==us-east-1 OR REGION==us-west-1</code>.</p> <p>The corresponding <code>Expression</code> appears like the following: <code>{ "Dimensions": { "Key": "REGION", "Values": [ "us-east-1", "us-west-1" ], "MatchOptions": ["EQUALS"] } }</code> </p> <p>As shown in the previous example, lists of dimension values are combined with <code>OR</code> when you apply the filter.</p> <p>For <i>complex expressions with logical operators</i>, you can have nested expressions to use the logical operators and specify advanced filtering.</p> <p> <b>Example for complex expressions with logical operators</b> </p> <p>You can filter by <code>((REGION == us-east-1 OR REGION == us-west-1) OR (SERVICE CONTAINS AWSLambda)) AND (USAGE_TYPE !CONTAINS DataTransfer)</code>.</p> <p>The corresponding <code>Expression</code> appears like the following: <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION", "Values": [ "us-east-1", "us-west-1" ], "MatchOptions": ["EQUALS"] }}, {"Dimensions": { "Key": "SERVICE", "Values": ["AWSLambda"], "MatchOptions": ["CONTAINS"] } } ]}, {"Not": {"Dimensions": { "Key": "USAGE_TYPE", "Values": ["DataTransfer"], "MatchOptions": ["CONTAINS"] }}} ] }</code> </p> <p>In the following <b>Contents</b>, you must specify exactly one of the following root operators.</p>
    # @!attribute or
    #   <p>Return results that match any of the <code>Expressions</code> that you specified. in the array.</p>
    #   @return [Array<Types::Expression>]
    # @!attribute and
    #   <p>Return results that match all <code>Expressions</code> that you specified in the array.</p>
    #   @return [Array<Types::Expression>]
    # @!attribute not
    #   <p>Return results that don’t match the <code>Expression</code> that you specified.</p>
    #   @return [Types::Expression]
    # @!attribute dimensions
    #   <p>The specific dimension, values, and match type to filter objects with.</p>
    #   @return [Types::DimensionValues]
    class Expression < Struct.new(
      :or,
      :and,
      :not,
      :dimensions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Consists of a Amazon Web Services Free Tier offer’s metadata and your data usage for the offer.</p>
    # @!attribute service
    #   <p>The name of the Amazon Web Services service providing the Free Tier offer. For example, this can be Amazon Elastic Compute Cloud.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>Describes <code>usageType</code> more granularly with the specific Amazon Web Services service API operation. For example, this can be the <code>RunInstances</code> API operation for Amazon Elastic Compute Cloud.</p>
    #   @return [String]
    # @!attribute usage_type
    #   <p>Describes the usage details of the offer. For example, this might be <code>Global-BoxUsage:freetrial</code>.</p>
    #   @return [String]
    # @!attribute region
    #   <p>Describes the Amazon Web Services Region for which this offer is applicable</p>
    #   @return [String]
    # @!attribute actual_usage_amount
    #   <p>Describes the actual usage accrued month-to-day (MTD) that you've used so far.</p>
    #   @return [Float]
    # @!attribute forecasted_usage_amount
    #   <p>Describes the forecasted usage by the month that you're expected to use.</p>
    #   @return [Float]
    # @!attribute limit
    #   <p>Describes the maximum usage allowed in Free Tier.</p>
    #   @return [Float]
    # @!attribute unit
    #   <p>Describes the unit of the <code>usageType</code>, such as <code>Hrs</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the Free Tier offer.</p>
    #   @return [String]
    # @!attribute free_tier_type
    #   <p>Describes the type of the Free Tier offer. For example, the offer can be <code>"12 Months Free"</code>, <code>"Always Free"</code>, and <code>"Free Trial"</code>.</p>
    #   @return [String]
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
      :free_tier_type,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:actual_usage_amount] = 0 unless options.key?(:actual_usage_amount)
        options[:forecasted_usage_amount] = 0 unless options.key?(:forecasted_usage_amount)
        options[:limit] = 0 unless options.key?(:limit)
        super
      end
    end

    # @!attribute activity_id
    #   <p> A unique identifier that identifies the activity. </p>
    #   @return [String]
    # @!attribute language_code
    #   <p> The language code used to return translated title and description fields. </p>
    #   @return [String]
    class GetAccountActivityRequest < Struct.new(
      :activity_id,
      :language_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute activity_id
    #   <p> A unique identifier that identifies the activity. </p>
    #   @return [String]
    # @!attribute title
    #   <p> A short activity title. </p>
    #   @return [String]
    # @!attribute description
    #   <p> Provides detailed information about the activity and its expected outcomes. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The current activity status. </p>
    #   @return [String]
    # @!attribute instructions_url
    #   <p> The URL resource that provides guidance on activity requirements and completion. </p>
    #   @return [String]
    # @!attribute reward
    #   <p> A reward granted upon activity completion. </p>
    #   @return [Types::ActivityReward]
    # @!attribute estimated_time_to_complete_in_minutes
    #   <p> The estimated time to complete the activity. This is the duration in minutes. </p>
    #   @return [Integer]
    # @!attribute expires_at
    #   <p> The time by which the activity must be completed to receive a reward. </p>
    #   @return [Time]
    # @!attribute started_at
    #   <p> The timestamp when the activity started. This field appears only for activities in the <code>IN_PROGRESS</code> or <code>COMPLETED</code> states. </p>
    #   @return [Time]
    # @!attribute completed_at
    #   <p> The timestamp when the activity is completed. This field appears only for activities in the <code>COMPLETED</code> state. </p>
    #   @return [Time]
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
      :completed_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class GetAccountPlanStateRequest < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p> A unique identifier that identifies the account. </p>
    #   @return [String]
    # @!attribute account_plan_type
    #   <p> The plan type for the account. </p>
    #   @return [String]
    # @!attribute account_plan_status
    #   <p> The current status for the account plan. </p>
    #   @return [String]
    # @!attribute account_plan_remaining_credits
    #   <p> The amount of credits remaining for the account. </p>
    #   @return [Types::MonetaryAmount]
    # @!attribute account_plan_expiration_date
    #   <p> The timestamp for when the current account plan expires. </p>
    #   @return [Time]
    class GetAccountPlanStateResponse < Struct.new(
      :account_id,
      :account_plan_type,
      :account_plan_status,
      :account_plan_remaining_credits,
      :account_plan_expiration_date,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>An expression that specifies the conditions that you want each <code>FreeTierUsage</code> object to meet.</p>
    #   @return [Types::Expression]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. <code>MaxResults</code> means that there can be up to the specified number of values, but there might be fewer results based on your filters.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #   @return [String]
    class GetFreeTierUsageRequest < Struct.new(
      :filter,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute free_tier_usages
    #   <p>The list of Free Tier usage objects that meet your filter expression.</p>
    #   @return [Array<Types::FreeTierUsage>]
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #   @return [String]
    class GetFreeTierUsageResponse < Struct.new(
      :free_tier_usages,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An unexpected error occurred during the processing of your request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module LanguageCode
      EN_US = 'en-US'
      EN_GB = 'en-GB'
      ID_ID = 'id-ID'
      DE_DE = 'de-DE'
      ES_ES = 'es-ES'
      FR_FR = 'fr-FR'
      JA_JP = 'ja-JP'
      IT_IT = 'it-IT'
      PT_PT = 'pt-PT'
      KO_KR = 'ko-KR'
      ZH_CN = 'zh-CN'
      ZH_TW = 'zh-TW'
      TR_TR = 'tr-TR'
    end

    # @!attribute filter_activity_statuses
    #   <p> The activity status filter. This field can be used to filter the response by activities status. </p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p> A token from a previous paginated response. If this is specified, the response includes records beginning from this token (inclusive), up to the number specified by <code>maxResults</code>. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output. </p>
    #   @return [Integer]
    # @!attribute language_code
    #   <p> The language code used to return translated titles. </p>
    #   @return [String]
    class ListAccountActivitiesRequest < Struct.new(
      :filter_activity_statuses,
      :next_token,
      :max_results,
      :language_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute activities
    #   <p> A brief information about the activities. </p>
    #   @return [Array<Types::ActivitySummary>]
    # @!attribute next_token
    #   <p> The token to include in another request to get the next page of items. This value is <code>null</code> when there are no more items to return. </p>
    #   @return [String]
    class ListAccountActivitiesResponse < Struct.new(
      :activities,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module MatchOption
      EQUALS = 'EQUALS'
      STARTS_WITH = 'STARTS_WITH'
      ENDS_WITH = 'ENDS_WITH'
      CONTAINS = 'CONTAINS'
      GREATER_THAN_OR_EQUAL = 'GREATER_THAN_OR_EQUAL'
    end

    # <p> The monetary amount of the credit. </p>
    # @!attribute amount
    #   <p> The aggregated monetary amount of credits earned. </p>
    #   @return [Float]
    # @!attribute unit
    #   <p> The unit that the monetary amount is given in. </p>
    #   @return [String]
    class MonetaryAmount < Struct.new(
      :amount,
      :unit,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:amount] = 0 unless options.key?(:amount)
        super
      end
    end

    # <p> This exception is thrown when the requested resource cannot be found. </p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_plan_type
    #   <p> The target account plan type. This makes it explicit about the change and latest value of the <code>accountPlanType</code>. </p>
    #   @return [String]
    class UpgradeAccountPlanRequest < Struct.new(
      :account_plan_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p> A unique identifier that identifies the account. </p>
    #   @return [String]
    # @!attribute account_plan_type
    #   <p> The type of plan for the account. </p>
    #   @return [String]
    # @!attribute account_plan_status
    #   <p> This indicates the latest state of the account plan within its lifecycle. </p>
    #   @return [String]
    class UpgradeAccountPlanResponse < Struct.new(
      :account_id,
      :account_plan_type,
      :account_plan_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
