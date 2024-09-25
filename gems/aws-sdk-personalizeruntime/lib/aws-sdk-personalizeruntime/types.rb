# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PersonalizeRuntime
  module Types

    # @!attribute [rw] campaign_arn
    #   The Amazon Resource Name (ARN) of the campaign to use for getting
    #   action recommendations. This campaign must deploy a solution version
    #   trained with a PERSONALIZED\_ACTIONS recipe.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user ID of the user to provide action recommendations for.
    #   @return [String]
    #
    # @!attribute [rw] num_results
    #   The number of results to return. The default is 5. The maximum is
    #   100.
    #   @return [Integer]
    #
    # @!attribute [rw] filter_arn
    #   The ARN of the filter to apply to the returned recommendations. For
    #   more information, see [Filtering Recommendations][1].
    #
    #   When using this parameter, be sure the filter resource is `ACTIVE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/filter.html
    #   @return [String]
    #
    # @!attribute [rw] filter_values
    #   The values to use when filtering recommendations. For each
    #   placeholder parameter in your filter expression, provide the
    #   parameter name (in matching case) as a key and the filter value(s)
    #   as the corresponding value. Separate multiple values for one
    #   parameter with a comma.
    #
    #   For filter expressions that use an `INCLUDE` element to include
    #   actions, you must provide values for all parameters that are defined
    #   in the expression. For filters with expressions that use an
    #   `EXCLUDE` element to exclude actions, you can omit the
    #   `filter-values`. In this case, Amazon Personalize doesn't use that
    #   portion of the expression to filter recommendations.
    #
    #   For more information, see [Filtering recommendations and user
    #   segments][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/filter.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-runtime-2018-05-22/GetActionRecommendationsRequest AWS API Documentation
    #
    class GetActionRecommendationsRequest < Struct.new(
      :campaign_arn,
      :user_id,
      :num_results,
      :filter_arn,
      :filter_values)
      SENSITIVE = [:filter_values]
      include Aws::Structure
    end

    # @!attribute [rw] action_list
    #   A list of action recommendations sorted in descending order by
    #   prediction score. There can be a maximum of 100 actions in the list.
    #   For information about action scores, see [How action recommendation
    #   scoring works][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/how-action-recommendation-scoring-works.html
    #   @return [Array<Types::PredictedAction>]
    #
    # @!attribute [rw] recommendation_id
    #   The ID of the recommendation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-runtime-2018-05-22/GetActionRecommendationsResponse AWS API Documentation
    #
    class GetActionRecommendationsResponse < Struct.new(
      :action_list,
      :recommendation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] campaign_arn
    #   The Amazon Resource Name (ARN) of the campaign to use for generating
    #   the personalized ranking.
    #   @return [String]
    #
    # @!attribute [rw] input_list
    #   A list of items (by `itemId`) to rank. If an item was not included
    #   in the training dataset, the item is appended to the end of the
    #   reranked list. If you are including metadata in recommendations, the
    #   maximum is 50. Otherwise, the maximum is 500.
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
    # @!attribute [rw] filter_arn
    #   The Amazon Resource Name (ARN) of a filter you created to include
    #   items or exclude items from recommendations for a given user. For
    #   more information, see [Filtering Recommendations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/filter.html
    #   @return [String]
    #
    # @!attribute [rw] filter_values
    #   The values to use when filtering recommendations. For each
    #   placeholder parameter in your filter expression, provide the
    #   parameter name (in matching case) as a key and the filter value(s)
    #   as the corresponding value. Separate multiple values for one
    #   parameter with a comma.
    #
    #   For filter expressions that use an `INCLUDE` element to include
    #   items, you must provide values for all parameters that are defined
    #   in the expression. For filters with expressions that use an
    #   `EXCLUDE` element to exclude items, you can omit the
    #   `filter-values`.In this case, Amazon Personalize doesn't use that
    #   portion of the expression to filter recommendations.
    #
    #   For more information, see [Filtering Recommendations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/filter.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] metadata_columns
    #   If you enabled metadata in recommendations when you created or
    #   updated the campaign, specify metadata columns from your Items
    #   dataset to include in the personalized ranking. The map key is
    #   `ITEMS` and the value is a list of column names from your Items
    #   dataset. The maximum number of columns you can provide is 10.
    #
    #   For information about enabling metadata for a campaign, see
    #   [Enabling metadata in recommendations for a campaign][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/campaigns.html#create-campaign-return-metadata
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-runtime-2018-05-22/GetPersonalizedRankingRequest AWS API Documentation
    #
    class GetPersonalizedRankingRequest < Struct.new(
      :campaign_arn,
      :input_list,
      :user_id,
      :context,
      :filter_arn,
      :filter_values,
      :metadata_columns)
      SENSITIVE = [:context, :filter_values]
      include Aws::Structure
    end

    # @!attribute [rw] personalized_ranking
    #   A list of items in order of most likely interest to the user. The
    #   maximum is 500.
    #   @return [Array<Types::PredictedItem>]
    #
    # @!attribute [rw] recommendation_id
    #   The ID of the recommendation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-runtime-2018-05-22/GetPersonalizedRankingResponse AWS API Documentation
    #
    class GetPersonalizedRankingResponse < Struct.new(
      :personalized_ranking,
      :recommendation_id)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The number of results to return. The default is 25. If you are
    #   including metadata in recommendations, the maximum is 50. Otherwise,
    #   the maximum is 500.
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
    #   more information, see [Filtering Recommendations][1].
    #
    #   When using this parameter, be sure the filter resource is `ACTIVE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/filter.html
    #   @return [String]
    #
    # @!attribute [rw] filter_values
    #   The values to use when filtering recommendations. For each
    #   placeholder parameter in your filter expression, provide the
    #   parameter name (in matching case) as a key and the filter value(s)
    #   as the corresponding value. Separate multiple values for one
    #   parameter with a comma.
    #
    #   For filter expressions that use an `INCLUDE` element to include
    #   items, you must provide values for all parameters that are defined
    #   in the expression. For filters with expressions that use an
    #   `EXCLUDE` element to exclude items, you can omit the
    #   `filter-values`.In this case, Amazon Personalize doesn't use that
    #   portion of the expression to filter recommendations.
    #
    #   For more information, see [Filtering recommendations and user
    #   segments][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/filter.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] recommender_arn
    #   The Amazon Resource Name (ARN) of the recommender to use to get
    #   recommendations. Provide a recommender ARN if you created a Domain
    #   dataset group with a recommender for a domain use case.
    #   @return [String]
    #
    # @!attribute [rw] promotions
    #   The promotions to apply to the recommendation request. A promotion
    #   defines additional business rules that apply to a configurable
    #   subset of recommended items.
    #   @return [Array<Types::Promotion>]
    #
    # @!attribute [rw] metadata_columns
    #   If you enabled metadata in recommendations when you created or
    #   updated the campaign or recommender, specify the metadata columns
    #   from your Items dataset to include in item recommendations. The map
    #   key is `ITEMS` and the value is a list of column names from your
    #   Items dataset. The maximum number of columns you can provide is 10.
    #
    #   For information about enabling metadata for a campaign, see
    #   [Enabling metadata in recommendations for a campaign][1]. For
    #   information about enabling metadata for a recommender, see [Enabling
    #   metadata in recommendations for a recommender][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/campaigns.html#create-campaign-return-metadata
    #   [2]: https://docs.aws.amazon.com/personalize/latest/dg/creating-recommenders.html#create-recommender-return-metadata
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-runtime-2018-05-22/GetRecommendationsRequest AWS API Documentation
    #
    class GetRecommendationsRequest < Struct.new(
      :campaign_arn,
      :item_id,
      :user_id,
      :num_results,
      :context,
      :filter_arn,
      :filter_values,
      :recommender_arn,
      :promotions,
      :metadata_columns)
      SENSITIVE = [:context, :filter_values]
      include Aws::Structure
    end

    # @!attribute [rw] item_list
    #   A list of recommendations sorted in descending order by prediction
    #   score. There can be a maximum of 500 items in the list.
    #   @return [Array<Types::PredictedItem>]
    #
    # @!attribute [rw] recommendation_id
    #   The ID of the recommendation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-runtime-2018-05-22/GetRecommendationsResponse AWS API Documentation
    #
    class GetRecommendationsResponse < Struct.new(
      :item_list,
      :recommendation_id)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that identifies an action.
    #
    # The API returns a list of `PredictedAction`s.
    #
    # @!attribute [rw] action_id
    #   The ID of the recommended action.
    #   @return [String]
    #
    # @!attribute [rw] score
    #   The score of the recommended action. For information about action
    #   scores, see [How action recommendation scoring works][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/how-action-recommendation-scoring-works.html
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-runtime-2018-05-22/PredictedAction AWS API Documentation
    #
    class PredictedAction < Struct.new(
      :action_id,
      :score)
      SENSITIVE = []
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
    # @!attribute [rw] promotion_name
    #   The name of the promotion that included the predicted item.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Metadata about the item from your Items dataset.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] reason
    #   If you use User-Personalization-v2, a list of reasons for why the
    #   item was included in recommendations. Possible reasons include the
    #   following:
    #
    #   * Promoted item - Indicates the item was included as part of a
    #     promotion that you applied in your recommendation request.
    #
    #   * Exploration - Indicates the item was included with exploration.
    #     With exploration, recommendations include items with less
    #     interactions data or relevance for the user. For more information
    #     about exploration, see [Exploration][1].
    #
    #   * Popular item - Indicates the item was included as a placeholder
    #     popular item. If you use a filter, depending on how many
    #     recommendations the filter removes, Amazon Personalize might add
    #     placeholder items to meet the `numResults` for your recommendation
    #     request. These items are popular items, based on interactions
    #     data, that satisfy your filter criteria. They don't have a
    #     relevance score for the user.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/use-case-recipe-features.html#about-exploration
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-runtime-2018-05-22/PredictedItem AWS API Documentation
    #
    class PredictedItem < Struct.new(
      :item_id,
      :score,
      :promotion_name,
      :metadata,
      :reason)
      SENSITIVE = [:metadata]
      include Aws::Structure
    end

    # Contains information on a promotion. A promotion defines additional
    # business rules that apply to a configurable subset of recommended
    # items.
    #
    # @!attribute [rw] name
    #   The name of the promotion.
    #   @return [String]
    #
    # @!attribute [rw] percent_promoted_items
    #   The percentage of recommended items to apply the promotion to.
    #   @return [Integer]
    #
    # @!attribute [rw] filter_arn
    #   The Amazon Resource Name (ARN) of the filter used by the promotion.
    #   This filter defines the criteria for promoted items. For more
    #   information, see [Promotion filters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/promoting-items.html#promotion-filters
    #   @return [String]
    #
    # @!attribute [rw] filter_values
    #   The values to use when promoting items. For each placeholder
    #   parameter in your promotion's filter expression, provide the
    #   parameter name (in matching case) as a key and the filter value(s)
    #   as the corresponding value. Separate multiple values for one
    #   parameter with a comma.
    #
    #   For filter expressions that use an `INCLUDE` element to include
    #   items, you must provide values for all parameters that are defined
    #   in the expression. For filters with expressions that use an
    #   `EXCLUDE` element to exclude items, you can omit the
    #   `filter-values`. In this case, Amazon Personalize doesn't use that
    #   portion of the expression to filter recommendations.
    #
    #   For more information on creating filters, see [Filtering
    #   recommendations and user segments][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/filter.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-runtime-2018-05-22/Promotion AWS API Documentation
    #
    class Promotion < Struct.new(
      :name,
      :percent_promoted_items,
      :filter_arn,
      :filter_values)
      SENSITIVE = [:filter_values]
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
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

