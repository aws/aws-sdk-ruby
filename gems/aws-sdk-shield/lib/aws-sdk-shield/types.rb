# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Shield
  module Types

    # The details of a DDoS attack.
    #
    # @!attribute [rw] attack_id
    #   The unique identifier (ID) of the attack.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN (Amazon Resource Name) of the resource that was attacked.
    #   @return [String]
    #
    # @!attribute [rw] sub_resources
    #   If applicable, additional detail about the resource being attacked,
    #   for example, IP address or URL.
    #   @return [Array<Types::SubResourceSummary>]
    #
    # @!attribute [rw] start_time
    #   The time the attack started, in the format 2016-12-16T13:50Z.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time the attack ended, in the format 2016-12-16T13:50Z.
    #   @return [Time]
    #
    # @!attribute [rw] attack_counters
    #   List of counters that describe the attack for the specified time
    #   period.
    #   @return [Array<Types::SummarizedCounter>]
    #
    # @!attribute [rw] mitigations
    #   List of mitigation actions taken for the attack.
    #   @return [Array<Types::Mitigation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AttackDetail AWS API Documentation
    #
    class AttackDetail < Struct.new(
      :attack_id,
      :resource_arn,
      :sub_resources,
      :start_time,
      :end_time,
      :attack_counters,
      :mitigations)
      include Aws::Structure
    end

    # Summarizes all DDoS attacks for a specified time period.
    #
    # @!attribute [rw] attack_id
    #   The unique identifier (ID) of the attack.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN (Amazon Resource Name) of the resource that was attacked.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time of the attack, in the format 2016-12-16T13:50Z.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the attack, in the format 2016-12-16T13:50Z.
    #   @return [Time]
    #
    # @!attribute [rw] attack_vectors
    #   The list of attacks for a specified time period.
    #   @return [Array<Types::AttackVectorDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AttackSummary AWS API Documentation
    #
    class AttackSummary < Struct.new(
      :attack_id,
      :resource_arn,
      :start_time,
      :end_time,
      :attack_vectors)
      include Aws::Structure
    end

    # Describes the attack.
    #
    # @!attribute [rw] vector_type
    #   The attack type, for example, SNMP reflection or SYN flood.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AttackVectorDescription AWS API Documentation
    #
    class AttackVectorDescription < Struct.new(
      :vector_type)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateProtectionRequest
    #   data as a hash:
    #
    #       {
    #         name: "ProtectionName", # required
    #         resource_arn: "ResourceArn", # required
    #       }
    #
    # @!attribute [rw] name
    #   Friendly name for the `Protection` you are creating.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN (Amazon Resource Name) of the resource to be protected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/CreateProtectionRequest AWS API Documentation
    #
    class CreateProtectionRequest < Struct.new(
      :name,
      :resource_arn)
      include Aws::Structure
    end

    # @!attribute [rw] protection_id
    #   The unique identifier (ID) for the Protection object that is
    #   created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/CreateProtectionResponse AWS API Documentation
    #
    class CreateProtectionResponse < Struct.new(
      :protection_id)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/CreateSubscriptionRequest AWS API Documentation
    #
    class CreateSubscriptionRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/CreateSubscriptionResponse AWS API Documentation
    #
    class CreateSubscriptionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteProtectionRequest
    #   data as a hash:
    #
    #       {
    #         protection_id: "ProtectionId", # required
    #       }
    #
    # @!attribute [rw] protection_id
    #   The unique identifier (ID) for the Protection object to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DeleteProtectionRequest AWS API Documentation
    #
    class DeleteProtectionRequest < Struct.new(
      :protection_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DeleteProtectionResponse AWS API Documentation
    #
    class DeleteProtectionResponse < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DeleteSubscriptionRequest AWS API Documentation
    #
    class DeleteSubscriptionRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DeleteSubscriptionResponse AWS API Documentation
    #
    class DeleteSubscriptionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeAttackRequest
    #   data as a hash:
    #
    #       {
    #         attack_id: "AttackId", # required
    #       }
    #
    # @!attribute [rw] attack_id
    #   The unique identifier (ID) for the attack that to be described.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeAttackRequest AWS API Documentation
    #
    class DescribeAttackRequest < Struct.new(
      :attack_id)
      include Aws::Structure
    end

    # @!attribute [rw] attack
    #   The attack that is described.
    #   @return [Types::AttackDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeAttackResponse AWS API Documentation
    #
    class DescribeAttackResponse < Struct.new(
      :attack)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeProtectionRequest
    #   data as a hash:
    #
    #       {
    #         protection_id: "ProtectionId", # required
    #       }
    #
    # @!attribute [rw] protection_id
    #   The unique identifier (ID) for the Protection object that is
    #   described.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeProtectionRequest AWS API Documentation
    #
    class DescribeProtectionRequest < Struct.new(
      :protection_id)
      include Aws::Structure
    end

    # @!attribute [rw] protection
    #   The Protection object that is described.
    #   @return [Types::Protection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeProtectionResponse AWS API Documentation
    #
    class DescribeProtectionResponse < Struct.new(
      :protection)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeSubscriptionRequest AWS API Documentation
    #
    class DescribeSubscriptionRequest < Aws::EmptyStructure; end

    # @!attribute [rw] subscription
    #   The AWS Shield Advanced subscription details for an account.
    #   @return [Types::Subscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeSubscriptionResponse AWS API Documentation
    #
    class DescribeSubscriptionResponse < Struct.new(
      :subscription)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAttacksRequest
    #   data as a hash:
    #
    #       {
    #         resource_arns: ["ResourceArn"],
    #         start_time: {
    #           from_inclusive: Time.now,
    #           to_exclusive: Time.now,
    #         },
    #         end_time: {
    #           from_inclusive: Time.now,
    #           to_exclusive: Time.now,
    #         },
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] resource_arns
    #   The ARN (Amazon Resource Name) of the resource that was attacked. If
    #   this is left blank, all applicable resources for this account will
    #   be included.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_time
    #   The time period for the attacks.
    #   @return [Types::TimeRange]
    #
    # @!attribute [rw] end_time
    #   The end of the time period for the attacks.
    #   @return [Types::TimeRange]
    #
    # @!attribute [rw] next_token
    #   The `ListAttacksRequest.NextMarker` value from a previous call to
    #   `ListAttacksRequest`. Pass null if this is the first call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of AttackSummary objects to be returned. If this
    #   is left blank, the first 20 results will be returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ListAttacksRequest AWS API Documentation
    #
    class ListAttacksRequest < Struct.new(
      :resource_arns,
      :start_time,
      :end_time,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] attack_summaries
    #   The attack information for the specified time range.
    #   @return [Array<Types::AttackSummary>]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to indicate that there is more
    #   data available. If not null, more results are available. Pass this
    #   value for the `NextMarker` parameter in a subsequent call to
    #   `ListAttacks` to retrieve the next set of items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ListAttacksResponse AWS API Documentation
    #
    class ListAttacksResponse < Struct.new(
      :attack_summaries,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListProtectionsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The `ListProtectionsRequest.NextToken` value from a previous call to
    #   `ListProtections`. Pass null if this is the first call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of Protection objects to be returned. If this is
    #   left blank the first 20 results will be returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ListProtectionsRequest AWS API Documentation
    #
    class ListProtectionsRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] protections
    #   The array of enabled Protection objects.
    #   @return [Array<Types::Protection>]
    #
    # @!attribute [rw] next_token
    #   If you specify a value for `MaxResults` and you have more
    #   Protections than the value of MaxResults, AWS Shield Advanced
    #   returns a NextToken value in the response that allows you to list
    #   another group of Protections. For the second and subsequent
    #   ListProtections requests, specify the value of NextToken from the
    #   previous response to get information about another batch of
    #   Protections.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ListProtectionsResponse AWS API Documentation
    #
    class ListProtectionsResponse < Struct.new(
      :protections,
      :next_token)
      include Aws::Structure
    end

    # The mitigation applied to a DDoS attack.
    #
    # @!attribute [rw] mitigation_name
    #   The name of the mitigation taken for this attack.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/Mitigation AWS API Documentation
    #
    class Mitigation < Struct.new(
      :mitigation_name)
      include Aws::Structure
    end

    # An object that represents a resource that is under DDoS protection.
    #
    # @!attribute [rw] id
    #   The unique identifier (ID) of the protection.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name of the protection. For example, `My CloudFront
    #   distributions`.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN (Amazon Resource Name) of the AWS resource that is
    #   protected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/Protection AWS API Documentation
    #
    class Protection < Struct.new(
      :id,
      :name,
      :resource_arn)
      include Aws::Structure
    end

    # The attack information for the specified SubResource.
    #
    # @!attribute [rw] type
    #   The `SubResource` type.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier (ID) of the `SubResource`.
    #   @return [String]
    #
    # @!attribute [rw] attack_vectors
    #   The list of attack types and associated counters.
    #   @return [Array<Types::SummarizedAttackVector>]
    #
    # @!attribute [rw] counters
    #   The counters that describe the details of the attack.
    #   @return [Array<Types::SummarizedCounter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/SubResourceSummary AWS API Documentation
    #
    class SubResourceSummary < Struct.new(
      :type,
      :id,
      :attack_vectors,
      :counters)
      include Aws::Structure
    end

    # Information about the AWS Shield Advanced subscription for an account.
    #
    # @!attribute [rw] start_time
    #   The start time of the subscription, in the format
    #   "2016-12-16T13:50Z".
    #   @return [Time]
    #
    # @!attribute [rw] time_commitment_in_seconds
    #   The length, in seconds, of the AWS Shield Advanced subscription for
    #   the account.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/Subscription AWS API Documentation
    #
    class Subscription < Struct.new(
      :start_time,
      :time_commitment_in_seconds)
      include Aws::Structure
    end

    # A summary of information about the attack.
    #
    # @!attribute [rw] vector_type
    #   The attack type, for example, SNMP reflection or SYN flood.
    #   @return [String]
    #
    # @!attribute [rw] vector_counters
    #   The list of counters that describe the details of the attack.
    #   @return [Array<Types::SummarizedCounter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/SummarizedAttackVector AWS API Documentation
    #
    class SummarizedAttackVector < Struct.new(
      :vector_type,
      :vector_counters)
      include Aws::Structure
    end

    # The counter that describes a DDoS attack.
    #
    # @!attribute [rw] name
    #   The counter name.
    #   @return [String]
    #
    # @!attribute [rw] max
    #   The maximum value of the counter for a specified time period.
    #   @return [Float]
    #
    # @!attribute [rw] average
    #   The average value of the counter for a specified time period.
    #   @return [Float]
    #
    # @!attribute [rw] sum
    #   The total of counter values for a specified time period.
    #   @return [Float]
    #
    # @!attribute [rw] n
    #   The number of counters for a specified time period.
    #   @return [Integer]
    #
    # @!attribute [rw] unit
    #   The unit of the counters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/SummarizedCounter AWS API Documentation
    #
    class SummarizedCounter < Struct.new(
      :name,
      :max,
      :average,
      :sum,
      :n,
      :unit)
      include Aws::Structure
    end

    # The time range.
    #
    # @note When making an API call, you may pass TimeRange
    #   data as a hash:
    #
    #       {
    #         from_inclusive: Time.now,
    #         to_exclusive: Time.now,
    #       }
    #
    # @!attribute [rw] from_inclusive
    #   The start time, in the format 2016-12-16T13:50Z.
    #   @return [Time]
    #
    # @!attribute [rw] to_exclusive
    #   The end time, in the format 2016-12-16T15:50Z.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/TimeRange AWS API Documentation
    #
    class TimeRange < Struct.new(
      :from_inclusive,
      :to_exclusive)
      include Aws::Structure
    end

  end
end
