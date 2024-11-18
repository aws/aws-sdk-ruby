# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::FreeTier
  module Types

    # Contains the specifications for the filters to use for your request.
    #
    # @!attribute [rw] key
    #   The name of the dimension that you want to filter on.
    #   @return [String]
    #
    # @!attribute [rw] match_options
    #   The match options that you can use to filter your results. You can
    #   specify only one of these values in the array.
    #   @return [Array<String>]
    #
    # @!attribute [rw] values
    #   The metadata values you can specify to filter upon, so that the
    #   results all match at least one of the specified values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/freetier-2023-09-07/DimensionValues AWS API Documentation
    #
    class DimensionValues < Struct.new(
      :key,
      :match_options,
      :values)
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
    # @!attribute [rw] and
    #   Return results that match all `Expressions` that you specified in
    #   the array.
    #   @return [Array<Types::Expression>]
    #
    # @!attribute [rw] dimensions
    #   The specific dimension, values, and match type to filter objects
    #   with.
    #   @return [Types::DimensionValues]
    #
    # @!attribute [rw] not
    #   Return results that don’t match the `Expression` that you specified.
    #   @return [Types::Expression]
    #
    # @!attribute [rw] or
    #   Return results that match any of the `Expressions` that you
    #   specified. in the array.
    #   @return [Array<Types::Expression>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/freetier-2023-09-07/Expression AWS API Documentation
    #
    class Expression < Struct.new(
      :and,
      :dimensions,
      :not,
      :or)
      SENSITIVE = []
      include Aws::Structure
    end

    # Consists of a Amazon Web Services Free Tier offer’s metadata and your
    # data usage for the offer.
    #
    # @!attribute [rw] actual_usage_amount
    #   Describes the actual usage accrued month-to-day (MTD) that you've
    #   used so far.
    #   @return [Float]
    #
    # @!attribute [rw] description
    #   The description of the Free Tier offer.
    #   @return [String]
    #
    # @!attribute [rw] forecasted_usage_amount
    #   Describes the forecasted usage by the month that you're expected to
    #   use.
    #   @return [Float]
    #
    # @!attribute [rw] free_tier_type
    #   Describes the type of the Free Tier offer. For example, the offer
    #   can be `"12 Months Free"`, `"Always Free"`, and `"Free Trial"`.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Describes the maximum usage allowed in Free Tier.
    #   @return [Float]
    #
    # @!attribute [rw] operation
    #   Describes `usageType` more granularly with the specific Amazon Web
    #   Service API operation. For example, this can be the `RunInstances`
    #   API operation for Amazon Elastic Compute Cloud.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   Describes the Amazon Web Services Region for which this offer is
    #   applicable
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The name of the Amazon Web Service providing the Free Tier offer.
    #   For example, this can be Amazon Elastic Compute Cloud.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   Describes the unit of the `usageType`, such as `Hrs`.
    #   @return [String]
    #
    # @!attribute [rw] usage_type
    #   Describes the usage details of the offer. For example, this might be
    #   `Global-BoxUsage:freetrial`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/freetier-2023-09-07/FreeTierUsage AWS API Documentation
    #
    class FreeTierUsage < Struct.new(
      :actual_usage_amount,
      :description,
      :forecasted_usage_amount,
      :free_tier_type,
      :limit,
      :operation,
      :region,
      :service,
      :unit,
      :usage_type)
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

    # The input fails to satisfy the constraints specified by an Amazon Web
    # Service.
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

