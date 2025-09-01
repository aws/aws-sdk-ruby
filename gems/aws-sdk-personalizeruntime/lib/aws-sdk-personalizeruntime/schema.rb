# frozen_string_literal: true

# This is generated code!

module Aws::PersonalizeRuntime
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ActionID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeruntime#ActionID', name: 'ActionID', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ActionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalizeruntime#ActionList', name: 'ActionList')
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeruntime#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:([a-z\\d-]+):personalize:.*:.*:.+$"})
    AttributeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeruntime#AttributeName', name: 'AttributeName', traits: {"smithy.api#length" => {"min" => 0, "max" => 150}, "smithy.api#pattern" => "^[A-Za-z\\d_]+$"})
    AttributeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeruntime#AttributeValue', name: 'AttributeValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#sensitive" => {}})
    ColumnName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeruntime#ColumnName', name: 'ColumnName', traits: {"smithy.api#length" => {"min" => 0, "max" => 150}})
    ColumnNamesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalizeruntime#ColumnNamesList', name: 'ColumnNamesList', traits: {"smithy.api#length" => {"min" => 0, "max" => 99}})
    ColumnValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeruntime#ColumnValue', name: 'ColumnValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 20000}})
    Context = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.personalizeruntime#Context', name: 'Context', traits: {"smithy.api#length" => {"min" => 0, "max" => 150}})
    DatasetType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeruntime#DatasetType', name: 'DatasetType', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeruntime#ErrorMessage', name: 'ErrorMessage')
    FilterAttributeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeruntime#FilterAttributeName', name: 'FilterAttributeName', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^[A-Za-z0-9_]+$"})
    FilterAttributeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeruntime#FilterAttributeValue', name: 'FilterAttributeValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#sensitive" => {}})
    FilterValues = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.personalizeruntime#FilterValues', name: 'FilterValues', traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    GetActionRecommendationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeruntime#GetActionRecommendationsRequest', name: 'GetActionRecommendationsRequest')
    GetActionRecommendationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeruntime#GetActionRecommendationsResponse', name: 'GetActionRecommendationsResponse')
    GetPersonalizedRankingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeruntime#GetPersonalizedRankingRequest', name: 'GetPersonalizedRankingRequest')
    GetPersonalizedRankingResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeruntime#GetPersonalizedRankingResponse', name: 'GetPersonalizedRankingResponse')
    GetRecommendationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeruntime#GetRecommendationsRequest', name: 'GetRecommendationsRequest')
    GetRecommendationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeruntime#GetRecommendationsResponse', name: 'GetRecommendationsResponse')
    InputList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalizeruntime#InputList', name: 'InputList')
    InvalidInputException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeruntime#InvalidInputException', name: 'InvalidInputException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ItemID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeruntime#ItemID', name: 'ItemID', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ItemList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalizeruntime#ItemList', name: 'ItemList')
    Metadata = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.personalizeruntime#Metadata', name: 'Metadata', traits: {"smithy.api#sensitive" => {}})
    MetadataColumns = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.personalizeruntime#MetadataColumns', name: 'MetadataColumns', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    Name = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeruntime#Name', name: 'Name', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9\\-_]*$"})
    NumResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.personalizeruntime#NumResults', name: 'NumResults', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    PercentPromotedItems = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.personalizeruntime#PercentPromotedItems', name: 'PercentPromotedItems', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    PredictedAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeruntime#PredictedAction', name: 'PredictedAction')
    PredictedItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeruntime#PredictedItem', name: 'PredictedItem')
    Promotion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeruntime#Promotion', name: 'Promotion')
    PromotionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalizeruntime#PromotionList', name: 'PromotionList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    Reason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeruntime#Reason', name: 'Reason', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ReasonList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalizeruntime#ReasonList', name: 'ReasonList')
    RecommendationID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeruntime#RecommendationID', name: 'RecommendationID')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeruntime#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Score = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.personalizeruntime#Score', name: 'Score')
    UserID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeruntime#UserID', name: 'UserID', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})

    ActionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PredictedAction)
    ColumnNamesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName)
    Context.key = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName)
    Context.value = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue)
    FilterValues.key = Smithy::Schema::Shapes::ShapeRef.new(shape: FilterAttributeName)
    FilterValues.value = Smithy::Schema::Shapes::ShapeRef.new(shape: FilterAttributeValue)
    GetActionRecommendationsRequest.add_member(:campaign_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'campaignArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the campaign to use for getting action recommendations. This campaign must deploy a solution version trained with a PERSONALIZED_ACTIONS recipe.</p>"}))
    GetActionRecommendationsRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserID, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The user ID of the user to provide action recommendations for.</p>"}))
    GetActionRecommendationsRequest.add_member(:num_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumResults, location_name: 'numResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of results to return. The default is 5. The maximum is 100.</p>"}))
    GetActionRecommendationsRequest.add_member(:filter_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'filterArn', traits: {"smithy.api#documentation" => "<p>The ARN of the filter to apply to the returned recommendations. For more information, see\n      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/filter.html\">Filtering Recommendations</a>.</p>\n         <p>When using this parameter, be sure the filter resource is <code>ACTIVE</code>.</p>"}))
    GetActionRecommendationsRequest.add_member(:filter_values, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValues, location_name: 'filterValues', traits: {"smithy.api#documentation" => "<p>The values to use when filtering recommendations. For each placeholder parameter in your filter expression, provide the parameter name (in matching case)\n      as a key and the filter value(s) as the corresponding value. Separate multiple values for one parameter with a comma.\n    </p>\n         <p>For filter expressions that use an <code>INCLUDE</code> element to include actions,\n    you must provide values for all parameters that are defined in the expression. For\n    filters with expressions that use an <code>EXCLUDE</code> element to exclude actions, you\n      can omit the <code>filter-values</code>. In this case, Amazon Personalize doesn't use that portion of\n    the expression to filter recommendations.</p>\n         <p>For more information, see\n      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/filter.html\">Filtering recommendations and user segments</a>.</p>"}))
    GetActionRecommendationsRequest.type = Types::GetActionRecommendationsRequest
    GetActionRecommendationsResponse.add_member(:action_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionList, location_name: 'actionList', traits: {"smithy.api#documentation" => "<p>A list of action recommendations sorted in descending order by prediction score. There can be a maximum of 100 actions\n      in the list. For information about action scores, see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/how-action-recommendation-scoring-works.html\">How action recommendation scoring\n      works</a>.</p>"}))
    GetActionRecommendationsResponse.add_member(:recommendation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationID, location_name: 'recommendationId', traits: {"smithy.api#documentation" => "<p>The ID of the recommendation.</p>"}))
    GetActionRecommendationsResponse.type = Types::GetActionRecommendationsResponse
    GetPersonalizedRankingRequest.add_member(:campaign_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'campaignArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the campaign to use for generating the personalized\n      ranking.</p>", "smithy.api#required" => {}}))
    GetPersonalizedRankingRequest.add_member(:input_list, Smithy::Schema::Shapes::ShapeRef.new(shape: InputList, location_name: 'inputList', traits: {"smithy.api#documentation" => "<p>A list of items (by <code>itemId</code>) to rank. If an item was not included in the training dataset,\n      the item is appended to the end of the reranked list. If you are including \n      metadata in recommendations, the maximum is 50. Otherwise, the maximum is 500.</p>", "smithy.api#required" => {}}))
    GetPersonalizedRankingRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserID, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The user for which you want the campaign to provide a personalized ranking.</p>", "smithy.api#required" => {}}))
    GetPersonalizedRankingRequest.add_member(:context, Smithy::Schema::Shapes::ShapeRef.new(shape: Context, location_name: 'context', traits: {"smithy.api#documentation" => "<p>The contextual metadata to use when getting recommendations. Contextual metadata includes\n      any interaction information that might be relevant when getting a user's recommendations, such\n      as the user's current location or device type.</p>"}))
    GetPersonalizedRankingRequest.add_member(:filter_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'filterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a filter you created to include items or exclude items from recommendations for a given user. \n      For more information, see\n      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/filter.html\">Filtering Recommendations</a>.</p>"}))
    GetPersonalizedRankingRequest.add_member(:filter_values, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValues, location_name: 'filterValues', traits: {"smithy.api#documentation" => "<p>The values to use when filtering recommendations. For each placeholder parameter in your filter expression, provide the parameter name (in matching case)\n      as a key and the filter value(s) as the corresponding value. Separate multiple values for one parameter with a comma.\n    </p>\n         <p>For filter expressions that use an <code>INCLUDE</code> element to include items,\n      you must provide values for all parameters that are defined in the expression. For\n      filters with expressions that use an <code>EXCLUDE</code> element to exclude items, you\n      can omit the <code>filter-values</code>.In this case, Amazon Personalize doesn't use that portion of\n      the expression to filter recommendations.</p>\n         <p>For more information, see\n      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/filter.html\">Filtering Recommendations</a>.</p>"}))
    GetPersonalizedRankingRequest.add_member(:metadata_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataColumns, location_name: 'metadataColumns', traits: {"smithy.api#documentation" => "<p>If you enabled metadata in recommendations when you created or updated the campaign, specify metadata columns from your Items dataset to include\n      in the personalized ranking.\n      The map key is <code>ITEMS</code> and the value is a list of column names from your Items dataset.\n      The maximum number of columns you can provide is 10.</p>\n         <p>\n      For information about enabling metadata for a campaign, see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/campaigns.html#create-campaign-return-metadata\">Enabling metadata in recommendations for a campaign</a>.\n    </p>"}))
    GetPersonalizedRankingRequest.type = Types::GetPersonalizedRankingRequest
    GetPersonalizedRankingResponse.add_member(:personalized_ranking, Smithy::Schema::Shapes::ShapeRef.new(shape: ItemList, location_name: 'personalizedRanking', traits: {"smithy.api#documentation" => "<p>A list of items in order of most likely interest to the user. The maximum is 500.</p>"}))
    GetPersonalizedRankingResponse.add_member(:recommendation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationID, location_name: 'recommendationId', traits: {"smithy.api#documentation" => "<p>The ID of the recommendation.</p>"}))
    GetPersonalizedRankingResponse.type = Types::GetPersonalizedRankingResponse
    GetRecommendationsRequest.add_member(:campaign_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'campaignArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the campaign to use for getting recommendations.</p>"}))
    GetRecommendationsRequest.add_member(:item_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ItemID, location_name: 'itemId', traits: {"smithy.api#documentation" => "<p>The item ID to provide recommendations for.</p>\n         <p>Required for <code>RELATED_ITEMS</code> recipe type.</p>"}))
    GetRecommendationsRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserID, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The user ID to provide recommendations for.</p>\n         <p>Required for <code>USER_PERSONALIZATION</code> recipe type.</p>"}))
    GetRecommendationsRequest.add_member(:num_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumResults, location_name: 'numResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of results to return. The default is 25. If you are including \n      metadata in recommendations, the maximum is 50. Otherwise, the maximum is 500.</p>"}))
    GetRecommendationsRequest.add_member(:context, Smithy::Schema::Shapes::ShapeRef.new(shape: Context, location_name: 'context', traits: {"smithy.api#documentation" => "<p>The contextual metadata to use when getting recommendations. Contextual metadata includes\n      any interaction information that might be relevant when getting a user's recommendations, such\n      as the user's current location or device type.</p>"}))
    GetRecommendationsRequest.add_member(:filter_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'filterArn', traits: {"smithy.api#documentation" => "<p>The ARN of the filter to apply to the returned recommendations. For more information, see\n      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/filter.html\">Filtering Recommendations</a>.</p>\n         <p>When using this parameter, be sure the filter resource is <code>ACTIVE</code>.</p>"}))
    GetRecommendationsRequest.add_member(:filter_values, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValues, location_name: 'filterValues', traits: {"smithy.api#documentation" => "<p>The values to use when filtering recommendations. For each placeholder parameter in your filter expression, provide the parameter name (in matching case)\n      as a key and the filter value(s) as the corresponding value. Separate multiple values for one parameter with a comma.\n    </p>\n         <p>For filter expressions that use an <code>INCLUDE</code> element to include items,\n    you must provide values for all parameters that are defined in the expression. For\n    filters with expressions that use an <code>EXCLUDE</code> element to exclude items, you\n      can omit the <code>filter-values</code>.In this case, Amazon Personalize doesn't use that portion of\n    the expression to filter recommendations.</p>\n         <p>For more information, see\n      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/filter.html\">Filtering recommendations and user segments</a>.</p>"}))
    GetRecommendationsRequest.add_member(:recommender_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'recommenderArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the recommender to use to get recommendations. Provide a recommender ARN if you\n    created a Domain dataset group with a recommender for a domain use case.</p>"}))
    GetRecommendationsRequest.add_member(:promotions, Smithy::Schema::Shapes::ShapeRef.new(shape: PromotionList, location_name: 'promotions', traits: {"smithy.api#documentation" => "<p>The promotions to apply to the recommendation request. \n      A promotion defines additional business rules that apply to a configurable subset of recommended items.</p>"}))
    GetRecommendationsRequest.add_member(:metadata_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataColumns, location_name: 'metadataColumns', traits: {"smithy.api#documentation" => "<p>If you enabled metadata in recommendations when you created or updated the campaign or recommender, specify the metadata columns from your Items dataset to include in item recommendations. \n      The map key is <code>ITEMS</code> and the value is a list of column names from your Items dataset.\n    The maximum number of columns you can provide is 10.</p>\n         <p>\n      For information about enabling metadata for a campaign, see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/campaigns.html#create-campaign-return-metadata\">Enabling metadata in recommendations for a campaign</a>.\n      For information about enabling metadata for a recommender, see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/creating-recommenders.html#create-recommender-return-metadata\">Enabling metadata in recommendations for a recommender</a>.\n    </p>"}))
    GetRecommendationsRequest.type = Types::GetRecommendationsRequest
    GetRecommendationsResponse.add_member(:item_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ItemList, location_name: 'itemList', traits: {"smithy.api#documentation" => "<p>A list of recommendations sorted in descending order by prediction score. There can be a\n      maximum of 500 items in the list.</p>"}))
    GetRecommendationsResponse.add_member(:recommendation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationID, location_name: 'recommendationId', traits: {"smithy.api#documentation" => "<p>The ID of the recommendation.</p>"}))
    GetRecommendationsResponse.type = Types::GetRecommendationsResponse
    InputList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ItemID)
    InvalidInputException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidInputException.type = Types::InvalidInputException
    ItemList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PredictedItem)
    Metadata.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName)
    Metadata.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnValue)
    MetadataColumns.key = Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetType)
    MetadataColumns.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnNamesList)
    PredictedAction.add_member(:action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionID, location_name: 'actionId', traits: {"smithy.api#documentation" => "<p>The ID of the recommended action.</p>"}))
    PredictedAction.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Score, location_name: 'score', traits: {"smithy.api#documentation" => "<p>The score of the recommended action. For information about action scores, see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/how-action-recommendation-scoring-works.html\">How action recommendation scoring works</a>.</p>"}))
    PredictedAction.type = Types::PredictedAction
    PredictedItem.add_member(:item_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ItemID, location_name: 'itemId', traits: {"smithy.api#documentation" => "<p>The recommended item ID.</p>"}))
    PredictedItem.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Score, location_name: 'score', traits: {"smithy.api#documentation" => "<p>A numeric representation of the model's certainty that the item will be the next user\n      selection. For more information on scoring logic, see <a>how-scores-work</a>.</p>"}))
    PredictedItem.add_member(:promotion_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'promotionName', traits: {"smithy.api#documentation" => "<p>The name of the promotion that included the predicted item.</p>"}))
    PredictedItem.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>Metadata about the item from your Items dataset.</p>"}))
    PredictedItem.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ReasonList, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>If you use User-Personalization-v2, a list of reasons for why the item was included in recommendations. Possible reasons include the following:</p>\n         <ul>\n            <li>\n               <p>Promoted item - Indicates the item was included as part of a promotion that you applied in your recommendation request.</p>\n            </li>\n            <li>\n               <p>Exploration - Indicates the item was included with exploration.\n          With exploration, recommendations include items with less interactions data or relevance for the user.\n          For more information about exploration, see \n          <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/use-case-recipe-features.html#about-exploration\">Exploration</a>.</p>\n            </li>\n            <li>\n               <p> \n          Popular item - Indicates the item was included as a placeholder popular item.\n          If you use a filter, depending on how many recommendations the filter removes, \n           Amazon Personalize might add placeholder items to meet the <code>numResults</code> for your \n          recommendation request. These items are popular items, based on interactions data, that satisfy your filter criteria.\n          They don't have a relevance score for the user.\n        </p>\n            </li>\n         </ul>"}))
    PredictedItem.type = Types::PredictedItem
    Promotion.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the promotion.</p>"}))
    Promotion.add_member(:percent_promoted_items, Smithy::Schema::Shapes::ShapeRef.new(shape: PercentPromotedItems, location_name: 'percentPromotedItems', traits: {"smithy.api#documentation" => "<p>The percentage of recommended items to apply the promotion to.</p>"}))
    Promotion.add_member(:filter_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'filterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the filter used by the promotion. This filter defines the criteria for promoted items. For more information, see \n      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/promoting-items.html#promotion-filters\">Promotion filters</a>.</p>"}))
    Promotion.add_member(:filter_values, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValues, location_name: 'filterValues', traits: {"smithy.api#documentation" => "<p>The values to use when promoting items.\n      For each placeholder parameter in your promotion's filter expression, provide the parameter name (in matching case) as a key and the filter value(s) as the corresponding value. Separate multiple values for one parameter with a comma. \n    </p>\n         <p>For filter expressions that use an <code>INCLUDE</code> element to include items,\n      you must provide values for all parameters that are defined in the expression. For\n      filters with expressions that use an <code>EXCLUDE</code> element to exclude items, you\n      can omit the <code>filter-values</code>. In this case, Amazon Personalize doesn't use that portion of\n      the expression to filter recommendations.</p>\n         <p>For more information on creating filters, see\n      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/filter.html\">Filtering recommendations and user segments</a>.</p>"}))
    Promotion.type = Types::Promotion
    PromotionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Promotion)
    ReasonList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Reason)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException

    AmazonPersonalizeRuntime = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.personalizeruntime#AmazonPersonalizeRuntime"
      service.name = "AmazonPersonalizeRuntime"
      service.version = "2018-05-22"
      service.traits = {"aws.api#service" => {"sdkId" => "Personalize Runtime", "arnNamespace" => "personalize", "cloudFormationName" => "PersonalizeRuntime", "cloudTrailEventSource" => "personalizeruntime.amazonaws.com", "endpointPrefix" => "personalize-runtime"}, "aws.auth#sigv4" => {"name" => "personalize"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Personalize Runtime"}
      service.add_operation(:get_action_recommendations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalizeruntime#GetActionRecommendations"
        operation.name = "GetActionRecommendations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetActionRecommendationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetActionRecommendationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/action-recommendations", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_personalized_ranking, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalizeruntime#GetPersonalizedRanking"
        operation.name = "GetPersonalizedRanking"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPersonalizedRankingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPersonalizedRankingResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/personalize-ranking", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_recommendations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalizeruntime#GetRecommendations"
        operation.name = "GetRecommendations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecommendationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecommendationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/recommendations", "code" => 200}, "smithy.api#idempotent" => {}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
