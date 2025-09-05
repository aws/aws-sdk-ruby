# frozen_string_literal: true

# This is generated code!

module Aws::PersonalizeRuntime
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ActionID = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeruntime#ActionID', name: 'ActionID', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ActionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalizeruntime#ActionList', name: 'ActionList')
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeruntime#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:([a-z\\d-]+):personalize:.*:.*:.+$"})
    AttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeruntime#AttributeName', name: 'AttributeName', traits: {"smithy.api#length" => {"min" => 0, "max" => 150}, "smithy.api#pattern" => "^[A-Za-z\\d_]+$"})
    AttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeruntime#AttributeValue', name: 'AttributeValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#sensitive" => {}})
    ColumnName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeruntime#ColumnName', name: 'ColumnName', traits: {"smithy.api#length" => {"min" => 0, "max" => 150}})
    ColumnNamesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalizeruntime#ColumnNamesList', name: 'ColumnNamesList', traits: {"smithy.api#length" => {"min" => 0, "max" => 99}})
    ColumnValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeruntime#ColumnValue', name: 'ColumnValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 20000}})
    Context = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.personalizeruntime#Context', name: 'Context', traits: {"smithy.api#length" => {"min" => 0, "max" => 150}})
    DatasetType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeruntime#DatasetType', name: 'DatasetType', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeruntime#ErrorMessage', name: 'ErrorMessage')
    FilterAttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeruntime#FilterAttributeName', name: 'FilterAttributeName', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^[A-Za-z0-9_]+$"})
    FilterAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeruntime#FilterAttributeValue', name: 'FilterAttributeValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#sensitive" => {}})
    FilterValues = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.personalizeruntime#FilterValues', name: 'FilterValues', traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    GetActionRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeruntime#GetActionRecommendationsRequest', name: 'GetActionRecommendationsRequest')
    GetActionRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeruntime#GetActionRecommendationsResponse', name: 'GetActionRecommendationsResponse')
    GetPersonalizedRankingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeruntime#GetPersonalizedRankingRequest', name: 'GetPersonalizedRankingRequest')
    GetPersonalizedRankingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeruntime#GetPersonalizedRankingResponse', name: 'GetPersonalizedRankingResponse')
    GetRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeruntime#GetRecommendationsRequest', name: 'GetRecommendationsRequest')
    GetRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeruntime#GetRecommendationsResponse', name: 'GetRecommendationsResponse')
    InputList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalizeruntime#InputList', name: 'InputList')
    InvalidInputException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeruntime#InvalidInputException', name: 'InvalidInputException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ItemID = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeruntime#ItemID', name: 'ItemID', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ItemList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalizeruntime#ItemList', name: 'ItemList')
    Metadata = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.personalizeruntime#Metadata', name: 'Metadata', traits: {"smithy.api#sensitive" => {}})
    MetadataColumns = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.personalizeruntime#MetadataColumns', name: 'MetadataColumns', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeruntime#Name', name: 'Name', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9\\-_]*$"})
    NumResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.personalizeruntime#NumResults', name: 'NumResults', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    PercentPromotedItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.personalizeruntime#PercentPromotedItems', name: 'PercentPromotedItems', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    PredictedAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeruntime#PredictedAction', name: 'PredictedAction')
    PredictedItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeruntime#PredictedItem', name: 'PredictedItem')
    Promotion = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeruntime#Promotion', name: 'Promotion')
    PromotionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalizeruntime#PromotionList', name: 'PromotionList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    Reason = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeruntime#Reason', name: 'Reason', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ReasonList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalizeruntime#ReasonList', name: 'ReasonList')
    RecommendationID = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeruntime#RecommendationID', name: 'RecommendationID')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeruntime#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Score = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.personalizeruntime#Score', name: 'Score')
    UserID = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeruntime#UserID', name: 'UserID', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})

    ActionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PredictedAction)
    ColumnNamesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName)
    Context.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName)
    Context.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue)
    FilterValues.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterAttributeName)
    FilterValues.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterAttributeValue)
    GetActionRecommendationsRequest.add_member(:campaign_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'campaignArn'))
    GetActionRecommendationsRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserID, location_name: 'userId'))
    GetActionRecommendationsRequest.add_member(:num_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumResults, location_name: 'numResults', traits: {"smithy.api#default" => 0}))
    GetActionRecommendationsRequest.add_member(:filter_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'filterArn'))
    GetActionRecommendationsRequest.add_member(:filter_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValues, location_name: 'filterValues'))
    GetActionRecommendationsRequest.type = Types::GetActionRecommendationsRequest
    GetActionRecommendationsResponse.add_member(:action_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionList, location_name: 'actionList'))
    GetActionRecommendationsResponse.add_member(:recommendation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationID, location_name: 'recommendationId'))
    GetActionRecommendationsResponse.type = Types::GetActionRecommendationsResponse
    GetPersonalizedRankingRequest.add_member(:campaign_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'campaignArn', traits: {"smithy.api#required" => {}}))
    GetPersonalizedRankingRequest.add_member(:input_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputList, location_name: 'inputList', traits: {"smithy.api#required" => {}}))
    GetPersonalizedRankingRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserID, location_name: 'userId', traits: {"smithy.api#required" => {}}))
    GetPersonalizedRankingRequest.add_member(:context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Context, location_name: 'context'))
    GetPersonalizedRankingRequest.add_member(:filter_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'filterArn'))
    GetPersonalizedRankingRequest.add_member(:filter_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValues, location_name: 'filterValues'))
    GetPersonalizedRankingRequest.add_member(:metadata_columns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataColumns, location_name: 'metadataColumns'))
    GetPersonalizedRankingRequest.type = Types::GetPersonalizedRankingRequest
    GetPersonalizedRankingResponse.add_member(:personalized_ranking, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemList, location_name: 'personalizedRanking'))
    GetPersonalizedRankingResponse.add_member(:recommendation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationID, location_name: 'recommendationId'))
    GetPersonalizedRankingResponse.type = Types::GetPersonalizedRankingResponse
    GetRecommendationsRequest.add_member(:campaign_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'campaignArn'))
    GetRecommendationsRequest.add_member(:item_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemID, location_name: 'itemId'))
    GetRecommendationsRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserID, location_name: 'userId'))
    GetRecommendationsRequest.add_member(:num_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumResults, location_name: 'numResults', traits: {"smithy.api#default" => 0}))
    GetRecommendationsRequest.add_member(:context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Context, location_name: 'context'))
    GetRecommendationsRequest.add_member(:filter_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'filterArn'))
    GetRecommendationsRequest.add_member(:filter_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValues, location_name: 'filterValues'))
    GetRecommendationsRequest.add_member(:recommender_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'recommenderArn'))
    GetRecommendationsRequest.add_member(:promotions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromotionList, location_name: 'promotions'))
    GetRecommendationsRequest.add_member(:metadata_columns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataColumns, location_name: 'metadataColumns'))
    GetRecommendationsRequest.type = Types::GetRecommendationsRequest
    GetRecommendationsResponse.add_member(:item_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemList, location_name: 'itemList'))
    GetRecommendationsResponse.add_member(:recommendation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationID, location_name: 'recommendationId'))
    GetRecommendationsResponse.type = Types::GetRecommendationsResponse
    InputList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemID)
    InvalidInputException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidInputException.type = Types::InvalidInputException
    ItemList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PredictedItem)
    Metadata.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName)
    Metadata.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnValue)
    MetadataColumns.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetType)
    MetadataColumns.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnNamesList)
    PredictedAction.add_member(:action_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionID, location_name: 'actionId'))
    PredictedAction.add_member(:score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Score, location_name: 'score'))
    PredictedAction.type = Types::PredictedAction
    PredictedItem.add_member(:item_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemID, location_name: 'itemId'))
    PredictedItem.add_member(:score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Score, location_name: 'score'))
    PredictedItem.add_member(:promotion_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'promotionName'))
    PredictedItem.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'metadata'))
    PredictedItem.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReasonList, location_name: 'reason'))
    PredictedItem.type = Types::PredictedItem
    Promotion.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    Promotion.add_member(:percent_promoted_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PercentPromotedItems, location_name: 'percentPromotedItems'))
    Promotion.add_member(:filter_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'filterArn'))
    Promotion.add_member(:filter_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValues, location_name: 'filterValues'))
    Promotion.type = Types::Promotion
    PromotionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Promotion)
    ReasonList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Reason)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException

    AmazonPersonalizeRuntime = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.personalizeruntime#AmazonPersonalizeRuntime"
      service.name = "AmazonPersonalizeRuntime"
      service.version = "2018-05-22"
      service.traits = {"aws.api#service" => {"sdkId" => "Personalize Runtime", "arnNamespace" => "personalize", "cloudFormationName" => "PersonalizeRuntime", "cloudTrailEventSource" => "personalizeruntime.amazonaws.com", "endpointPrefix" => "personalize-runtime"}, "aws.auth#sigv4" => {"name" => "personalize"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Personalize Runtime"}
      service.add_operation(:get_action_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalizeruntime#GetActionRecommendations"
        operation.name = "GetActionRecommendations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetActionRecommendationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetActionRecommendationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/action-recommendations", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_personalized_ranking, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalizeruntime#GetPersonalizedRanking"
        operation.name = "GetPersonalizedRanking"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPersonalizedRankingRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPersonalizedRankingResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/personalize-ranking", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalizeruntime#GetRecommendations"
        operation.name = "GetRecommendations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecommendationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecommendationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/recommendations", "code" => 200}, "smithy.api#idempotent" => {}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
