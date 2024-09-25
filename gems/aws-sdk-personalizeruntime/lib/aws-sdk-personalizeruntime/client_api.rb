# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::PersonalizeRuntime
  # @api private
  module ClientApi

    include Seahorse::Model

    ActionID = Shapes::StringShape.new(name: 'ActionID')
    ActionList = Shapes::ListShape.new(name: 'ActionList')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AttributeName = Shapes::StringShape.new(name: 'AttributeName')
    AttributeValue = Shapes::StringShape.new(name: 'AttributeValue')
    ColumnName = Shapes::StringShape.new(name: 'ColumnName')
    ColumnNamesList = Shapes::ListShape.new(name: 'ColumnNamesList')
    ColumnValue = Shapes::StringShape.new(name: 'ColumnValue')
    Context = Shapes::MapShape.new(name: 'Context')
    DatasetType = Shapes::StringShape.new(name: 'DatasetType')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FilterAttributeName = Shapes::StringShape.new(name: 'FilterAttributeName')
    FilterAttributeValue = Shapes::StringShape.new(name: 'FilterAttributeValue')
    FilterValues = Shapes::MapShape.new(name: 'FilterValues')
    GetActionRecommendationsRequest = Shapes::StructureShape.new(name: 'GetActionRecommendationsRequest')
    GetActionRecommendationsResponse = Shapes::StructureShape.new(name: 'GetActionRecommendationsResponse')
    GetPersonalizedRankingRequest = Shapes::StructureShape.new(name: 'GetPersonalizedRankingRequest')
    GetPersonalizedRankingResponse = Shapes::StructureShape.new(name: 'GetPersonalizedRankingResponse')
    GetRecommendationsRequest = Shapes::StructureShape.new(name: 'GetRecommendationsRequest')
    GetRecommendationsResponse = Shapes::StructureShape.new(name: 'GetRecommendationsResponse')
    InputList = Shapes::ListShape.new(name: 'InputList')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    ItemID = Shapes::StringShape.new(name: 'ItemID')
    ItemList = Shapes::ListShape.new(name: 'ItemList')
    Metadata = Shapes::MapShape.new(name: 'Metadata')
    MetadataColumns = Shapes::MapShape.new(name: 'MetadataColumns')
    Name = Shapes::StringShape.new(name: 'Name')
    NumResults = Shapes::IntegerShape.new(name: 'NumResults')
    PercentPromotedItems = Shapes::IntegerShape.new(name: 'PercentPromotedItems')
    PredictedAction = Shapes::StructureShape.new(name: 'PredictedAction')
    PredictedItem = Shapes::StructureShape.new(name: 'PredictedItem')
    Promotion = Shapes::StructureShape.new(name: 'Promotion')
    PromotionList = Shapes::ListShape.new(name: 'PromotionList')
    Reason = Shapes::StringShape.new(name: 'Reason')
    ReasonList = Shapes::ListShape.new(name: 'ReasonList')
    RecommendationID = Shapes::StringShape.new(name: 'RecommendationID')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    Score = Shapes::FloatShape.new(name: 'Score')
    UserID = Shapes::StringShape.new(name: 'UserID')

    ActionList.member = Shapes::ShapeRef.new(shape: PredictedAction)

    ColumnNamesList.member = Shapes::ShapeRef.new(shape: ColumnName)

    Context.key = Shapes::ShapeRef.new(shape: AttributeName)
    Context.value = Shapes::ShapeRef.new(shape: AttributeValue)

    FilterValues.key = Shapes::ShapeRef.new(shape: FilterAttributeName)
    FilterValues.value = Shapes::ShapeRef.new(shape: FilterAttributeValue)

    GetActionRecommendationsRequest.add_member(:campaign_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "campaignArn"))
    GetActionRecommendationsRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserID, location_name: "userId"))
    GetActionRecommendationsRequest.add_member(:num_results, Shapes::ShapeRef.new(shape: NumResults, location_name: "numResults"))
    GetActionRecommendationsRequest.add_member(:filter_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "filterArn"))
    GetActionRecommendationsRequest.add_member(:filter_values, Shapes::ShapeRef.new(shape: FilterValues, location_name: "filterValues"))
    GetActionRecommendationsRequest.struct_class = Types::GetActionRecommendationsRequest

    GetActionRecommendationsResponse.add_member(:action_list, Shapes::ShapeRef.new(shape: ActionList, location_name: "actionList"))
    GetActionRecommendationsResponse.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: RecommendationID, location_name: "recommendationId"))
    GetActionRecommendationsResponse.struct_class = Types::GetActionRecommendationsResponse

    GetPersonalizedRankingRequest.add_member(:campaign_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "campaignArn"))
    GetPersonalizedRankingRequest.add_member(:input_list, Shapes::ShapeRef.new(shape: InputList, required: true, location_name: "inputList"))
    GetPersonalizedRankingRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserID, required: true, location_name: "userId"))
    GetPersonalizedRankingRequest.add_member(:context, Shapes::ShapeRef.new(shape: Context, location_name: "context"))
    GetPersonalizedRankingRequest.add_member(:filter_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "filterArn"))
    GetPersonalizedRankingRequest.add_member(:filter_values, Shapes::ShapeRef.new(shape: FilterValues, location_name: "filterValues"))
    GetPersonalizedRankingRequest.add_member(:metadata_columns, Shapes::ShapeRef.new(shape: MetadataColumns, location_name: "metadataColumns"))
    GetPersonalizedRankingRequest.struct_class = Types::GetPersonalizedRankingRequest

    GetPersonalizedRankingResponse.add_member(:personalized_ranking, Shapes::ShapeRef.new(shape: ItemList, location_name: "personalizedRanking"))
    GetPersonalizedRankingResponse.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: RecommendationID, location_name: "recommendationId"))
    GetPersonalizedRankingResponse.struct_class = Types::GetPersonalizedRankingResponse

    GetRecommendationsRequest.add_member(:campaign_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "campaignArn"))
    GetRecommendationsRequest.add_member(:item_id, Shapes::ShapeRef.new(shape: ItemID, location_name: "itemId"))
    GetRecommendationsRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserID, location_name: "userId"))
    GetRecommendationsRequest.add_member(:num_results, Shapes::ShapeRef.new(shape: NumResults, location_name: "numResults"))
    GetRecommendationsRequest.add_member(:context, Shapes::ShapeRef.new(shape: Context, location_name: "context"))
    GetRecommendationsRequest.add_member(:filter_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "filterArn"))
    GetRecommendationsRequest.add_member(:filter_values, Shapes::ShapeRef.new(shape: FilterValues, location_name: "filterValues"))
    GetRecommendationsRequest.add_member(:recommender_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "recommenderArn"))
    GetRecommendationsRequest.add_member(:promotions, Shapes::ShapeRef.new(shape: PromotionList, location_name: "promotions"))
    GetRecommendationsRequest.add_member(:metadata_columns, Shapes::ShapeRef.new(shape: MetadataColumns, location_name: "metadataColumns"))
    GetRecommendationsRequest.struct_class = Types::GetRecommendationsRequest

    GetRecommendationsResponse.add_member(:item_list, Shapes::ShapeRef.new(shape: ItemList, location_name: "itemList"))
    GetRecommendationsResponse.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: RecommendationID, location_name: "recommendationId"))
    GetRecommendationsResponse.struct_class = Types::GetRecommendationsResponse

    InputList.member = Shapes::ShapeRef.new(shape: ItemID)

    InvalidInputException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidInputException.struct_class = Types::InvalidInputException

    ItemList.member = Shapes::ShapeRef.new(shape: PredictedItem)

    Metadata.key = Shapes::ShapeRef.new(shape: ColumnName)
    Metadata.value = Shapes::ShapeRef.new(shape: ColumnValue)

    MetadataColumns.key = Shapes::ShapeRef.new(shape: DatasetType)
    MetadataColumns.value = Shapes::ShapeRef.new(shape: ColumnNamesList)

    PredictedAction.add_member(:action_id, Shapes::ShapeRef.new(shape: ActionID, location_name: "actionId"))
    PredictedAction.add_member(:score, Shapes::ShapeRef.new(shape: Score, location_name: "score"))
    PredictedAction.struct_class = Types::PredictedAction

    PredictedItem.add_member(:item_id, Shapes::ShapeRef.new(shape: ItemID, location_name: "itemId"))
    PredictedItem.add_member(:score, Shapes::ShapeRef.new(shape: Score, location_name: "score"))
    PredictedItem.add_member(:promotion_name, Shapes::ShapeRef.new(shape: Name, location_name: "promotionName"))
    PredictedItem.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "metadata"))
    PredictedItem.add_member(:reason, Shapes::ShapeRef.new(shape: ReasonList, location_name: "reason"))
    PredictedItem.struct_class = Types::PredictedItem

    Promotion.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    Promotion.add_member(:percent_promoted_items, Shapes::ShapeRef.new(shape: PercentPromotedItems, location_name: "percentPromotedItems"))
    Promotion.add_member(:filter_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "filterArn"))
    Promotion.add_member(:filter_values, Shapes::ShapeRef.new(shape: FilterValues, location_name: "filterValues"))
    Promotion.struct_class = Types::Promotion

    PromotionList.member = Shapes::ShapeRef.new(shape: Promotion)

    ReasonList.member = Shapes::ShapeRef.new(shape: Reason)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-22"

      api.metadata = {
        "apiVersion" => "2018-05-22",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "personalize-runtime",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon Personalize Runtime",
        "serviceId" => "Personalize Runtime",
        "signatureVersion" => "v4",
        "signingName" => "personalize",
        "uid" => "personalize-runtime-2018-05-22",
      }

      api.add_operation(:get_action_recommendations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetActionRecommendations"
        o.http_method = "POST"
        o.http_request_uri = "/action-recommendations"
        o.input = Shapes::ShapeRef.new(shape: GetActionRecommendationsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetActionRecommendationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_personalized_ranking, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPersonalizedRanking"
        o.http_method = "POST"
        o.http_request_uri = "/personalize-ranking"
        o.input = Shapes::ShapeRef.new(shape: GetPersonalizedRankingRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPersonalizedRankingResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_recommendations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRecommendations"
        o.http_method = "POST"
        o.http_request_uri = "/recommendations"
        o.input = Shapes::ShapeRef.new(shape: GetRecommendationsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRecommendationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
