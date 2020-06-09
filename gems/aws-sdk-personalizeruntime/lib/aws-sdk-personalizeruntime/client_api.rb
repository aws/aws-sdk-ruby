# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PersonalizeRuntime
  # @api private
  module ClientApi

    include Seahorse::Model

    Arn = Shapes::StringShape.new(name: 'Arn')
    AttributeName = Shapes::StringShape.new(name: 'AttributeName')
    AttributeValue = Shapes::StringShape.new(name: 'AttributeValue')
    Context = Shapes::MapShape.new(name: 'Context')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    GetPersonalizedRankingRequest = Shapes::StructureShape.new(name: 'GetPersonalizedRankingRequest')
    GetPersonalizedRankingResponse = Shapes::StructureShape.new(name: 'GetPersonalizedRankingResponse')
    GetRecommendationsRequest = Shapes::StructureShape.new(name: 'GetRecommendationsRequest')
    GetRecommendationsResponse = Shapes::StructureShape.new(name: 'GetRecommendationsResponse')
    InputList = Shapes::ListShape.new(name: 'InputList')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    ItemID = Shapes::StringShape.new(name: 'ItemID')
    ItemList = Shapes::ListShape.new(name: 'ItemList')
    NumResults = Shapes::IntegerShape.new(name: 'NumResults')
    PredictedItem = Shapes::StructureShape.new(name: 'PredictedItem')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    Score = Shapes::FloatShape.new(name: 'Score')
    UserID = Shapes::StringShape.new(name: 'UserID')

    Context.key = Shapes::ShapeRef.new(shape: AttributeName)
    Context.value = Shapes::ShapeRef.new(shape: AttributeValue)

    GetPersonalizedRankingRequest.add_member(:campaign_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "campaignArn"))
    GetPersonalizedRankingRequest.add_member(:input_list, Shapes::ShapeRef.new(shape: InputList, required: true, location_name: "inputList"))
    GetPersonalizedRankingRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserID, required: true, location_name: "userId"))
    GetPersonalizedRankingRequest.add_member(:context, Shapes::ShapeRef.new(shape: Context, location_name: "context"))
    GetPersonalizedRankingRequest.struct_class = Types::GetPersonalizedRankingRequest

    GetPersonalizedRankingResponse.add_member(:personalized_ranking, Shapes::ShapeRef.new(shape: ItemList, location_name: "personalizedRanking"))
    GetPersonalizedRankingResponse.struct_class = Types::GetPersonalizedRankingResponse

    GetRecommendationsRequest.add_member(:campaign_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "campaignArn"))
    GetRecommendationsRequest.add_member(:item_id, Shapes::ShapeRef.new(shape: ItemID, location_name: "itemId"))
    GetRecommendationsRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserID, location_name: "userId"))
    GetRecommendationsRequest.add_member(:num_results, Shapes::ShapeRef.new(shape: NumResults, location_name: "numResults"))
    GetRecommendationsRequest.add_member(:context, Shapes::ShapeRef.new(shape: Context, location_name: "context"))
    GetRecommendationsRequest.add_member(:filter_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "filterArn"))
    GetRecommendationsRequest.struct_class = Types::GetRecommendationsRequest

    GetRecommendationsResponse.add_member(:item_list, Shapes::ShapeRef.new(shape: ItemList, location_name: "itemList"))
    GetRecommendationsResponse.struct_class = Types::GetRecommendationsResponse

    InputList.member = Shapes::ShapeRef.new(shape: ItemID)

    InvalidInputException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidInputException.struct_class = Types::InvalidInputException

    ItemList.member = Shapes::ShapeRef.new(shape: PredictedItem)

    PredictedItem.add_member(:item_id, Shapes::ShapeRef.new(shape: ItemID, location_name: "itemId"))
    PredictedItem.add_member(:score, Shapes::ShapeRef.new(shape: Score, location_name: "score"))
    PredictedItem.struct_class = Types::PredictedItem

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-22"

      api.metadata = {
        "apiVersion" => "2018-05-22",
        "endpointPrefix" => "personalize-runtime",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Personalize Runtime",
        "serviceId" => "Personalize Runtime",
        "signatureVersion" => "v4",
        "signingName" => "personalize",
        "uid" => "personalize-runtime-2018-05-22",
      }

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
