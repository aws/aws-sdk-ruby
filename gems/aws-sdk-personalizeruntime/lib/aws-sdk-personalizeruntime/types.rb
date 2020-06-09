# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PersonalizeRuntime
  module Types

    # @note When making an API call, you may pass GetPersonalizedRankingRequest
    #   data as a hash:
    #
    #       {
    #         campaign_arn: "Arn", # required
    #         input_list: ["ItemID"], # required
    #         user_id: "UserID", # required
    #         context: {
    #           "AttributeName" => "AttributeValue",
    #         },
    #       }
    #
    # @!attribute [rw] campaign_arn
    #   The Amazon Resource Name (ARN) of the campaign to use for generating
    #   the personalized ranking.
    #   @return [String]
    #
    # @!attribute [rw] input_list
    #   A list of items (itemId's) to rank. If an item was not included in
    #   the training dataset, the item is appended to the end of the
    #   reranked list. The maximum is 500.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_id
    #   The user for which you want the campaign to provide a personalized
    #   ranking.
    #   @return [String]
    #
    # @!attribute [rw] context
    #   The contextual metadata to use when getting recommendations.
    #   Contextual metadata includes any interaction information that might
    #   be relevant when getting a user's recommendations, such as the
    #   user's current location or device type.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-runtime-2018-05-22/GetPersonalizedRankingRequest AWS API Documentation
    #
    class GetPersonalizedRankingRequest < Struct.new(
      :campaign_arn,
      :input_list,
      :user_id,
      :context)
      include Aws::Structure
    end

    # @!attribute [rw] personalized_ranking
    #   A list of items in order of most likely interest to the user. The
    #   maximum is 500.
    #   @return [Array<Types::PredictedItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-runtime-2018-05-22/GetPersonalizedRankingResponse AWS API Documentation
    #
    class GetPersonalizedRankingResponse < Struct.new(
      :personalized_ranking)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRecommendationsRequest
    #   data as a hash:
    #
    #       {
    #         campaign_arn: "Arn", # required
    #         item_id: "ItemID",
    #         user_id: "UserID",
    #         num_results: 1,
    #         context: {
    #           "AttributeName" => "AttributeValue",
    #         },
    #         filter_arn: "Arn",
    #       }
    #
    # @!attribute [rw] campaign_arn
    #   The Amazon Resource Name (ARN) of the campaign to use for getting
    #   recommendations.
    #   @return [String]
    #
    # @!attribute [rw] item_id
    #   The item ID to provide recommendations for.
    #
    #   Required for `RELATED_ITEMS` recipe type.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user ID to provide recommendations for.
    #
    #   Required for `USER_PERSONALIZATION` recipe type.
    #   @return [String]
    #
    # @!attribute [rw] num_results
    #   The number of results to return. The default is 25. The maximum is
    #   500.
    #   @return [Integer]
    #
    # @!attribute [rw] context
    #   The contextual metadata to use when getting recommendations.
    #   Contextual metadata includes any interaction information that might
    #   be relevant when getting a user's recommendations, such as the
    #   user's current location or device type.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] filter_arn
    #   The ARN of the filter to apply to the returned recommendations. For
    #   more information, see Using Filters with Amazon Personalize.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-runtime-2018-05-22/GetRecommendationsRequest AWS API Documentation
    #
    class GetRecommendationsRequest < Struct.new(
      :campaign_arn,
      :item_id,
      :user_id,
      :num_results,
      :context,
      :filter_arn)
      include Aws::Structure
    end

    # @!attribute [rw] item_list
    #   A list of recommendations sorted in ascending order by prediction
    #   score. There can be a maximum of 500 items in the list.
    #   @return [Array<Types::PredictedItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-runtime-2018-05-22/GetRecommendationsResponse AWS API Documentation
    #
    class GetRecommendationsResponse < Struct.new(
      :item_list)
      include Aws::Structure
    end

    # Provide a valid value for the field or parameter.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-runtime-2018-05-22/InvalidInputException AWS API Documentation
    #
    class InvalidInputException < Struct.new(
      :message)
      include Aws::Structure
    end

    # An object that identifies an item.
    #
    # The and APIs return a list of `PredictedItem`s.
    #
    # @!attribute [rw] item_id
    #   The recommended item ID.
    #   @return [String]
    #
    # @!attribute [rw] score
    #   A numeric representation of the model's certainty that the item
    #   will be the next user selection. For more information on scoring
    #   logic, see how-scores-work.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-runtime-2018-05-22/PredictedItem AWS API Documentation
    #
    class PredictedItem < Struct.new(
      :item_id,
      :score)
      include Aws::Structure
    end

    # The specified resource does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-runtime-2018-05-22/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      include Aws::Structure
    end

  end
end
