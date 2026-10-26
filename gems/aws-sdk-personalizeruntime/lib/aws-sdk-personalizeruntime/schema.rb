# frozen_string_literal: true

# This is generated code!

module Aws::PersonalizeRuntime
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ActionID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalizeruntime#ActionID", name: "ActionID", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ActionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalizeruntime#ActionList", name: "ActionList")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalizeruntime#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:([a-z\\d-]+):personalize:.*:.*:.+$"})
    AttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalizeruntime#AttributeName", name: "AttributeName", traits: {"smithy.api#length" => {"min" => 0, "max" => 150}, "smithy.api#pattern" => "^[A-Za-z\\d_]+$"})
    AttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalizeruntime#AttributeValue", name: "AttributeValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#sensitive" => {}})
    ColumnName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalizeruntime#ColumnName", name: "ColumnName", traits: {"smithy.api#length" => {"min" => 0, "max" => 150}})
    ColumnNamesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalizeruntime#ColumnNamesList", name: "ColumnNamesList", traits: {"smithy.api#length" => {"min" => 0, "max" => 99}})
    ColumnValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalizeruntime#ColumnValue", name: "ColumnValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 20000}})
    Context = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.personalizeruntime#Context", name: "Context", traits: {"smithy.api#length" => {"min" => 0, "max" => 150}})
    DatasetType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalizeruntime#DatasetType", name: "DatasetType", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalizeruntime#ErrorMessage", name: "ErrorMessage")
    FilterAttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalizeruntime#FilterAttributeName", name: "FilterAttributeName", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^[A-Za-z0-9_]+$"})
    FilterAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalizeruntime#FilterAttributeValue", name: "FilterAttributeValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#sensitive" => {}})
    FilterValues = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.personalizeruntime#FilterValues", name: "FilterValues", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    GetActionRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalizeruntime#GetActionRecommendationsRequest", name: "GetActionRecommendationsRequest")
    GetActionRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalizeruntime#GetActionRecommendationsResponse", name: "GetActionRecommendationsResponse")
    GetPersonalizedRankingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalizeruntime#GetPersonalizedRankingRequest", name: "GetPersonalizedRankingRequest")
    GetPersonalizedRankingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalizeruntime#GetPersonalizedRankingResponse", name: "GetPersonalizedRankingResponse")
    GetRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalizeruntime#GetRecommendationsRequest", name: "GetRecommendationsRequest")
    GetRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalizeruntime#GetRecommendationsResponse", name: "GetRecommendationsResponse")
    InputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalizeruntime#InputList", name: "InputList")
    InvalidInputException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalizeruntime#InvalidInputException", name: "InvalidInputException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ItemID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalizeruntime#ItemID", name: "ItemID", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalizeruntime#ItemList", name: "ItemList")
    Metadata = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.personalizeruntime#Metadata", name: "Metadata", traits: {"smithy.api#sensitive" => {}})
    MetadataColumns = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.personalizeruntime#MetadataColumns", name: "MetadataColumns", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalizeruntime#Name", name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9\\-_]*$"})
    NumResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.personalizeruntime#NumResults", name: "NumResults", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    PercentPromotedItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.personalizeruntime#PercentPromotedItems", name: "PercentPromotedItems", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    PredictedAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalizeruntime#PredictedAction", name: "PredictedAction")
    PredictedItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalizeruntime#PredictedItem", name: "PredictedItem")
    Promotion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalizeruntime#Promotion", name: "Promotion")
    PromotionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalizeruntime#PromotionList", name: "PromotionList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    Reason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalizeruntime#Reason", name: "Reason", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ReasonList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalizeruntime#ReasonList", name: "ReasonList")
    RecommendationID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalizeruntime#RecommendationID", name: "RecommendationID")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalizeruntime#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Score = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.personalizeruntime#Score", name: "Score")
    UserID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalizeruntime#UserID", name: "UserID", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})

    ActionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictedAction, name: "member"))
    ColumnNamesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnName, name: "member"))
    Context.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "key"))
    Context.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "value"))
    FilterValues.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAttributeName, name: "key"))
    FilterValues.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAttributeValue, name: "value"))
    GetActionRecommendationsRequest.add_member(:campaign_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "campaignArn"))
    GetActionRecommendationsRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserID, name: "userId"))
    GetActionRecommendationsRequest.add_member(:num_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumResults, name: "numResults", traits: {"smithy.api#default" => 0}))
    GetActionRecommendationsRequest.add_member(:filter_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "filterArn"))
    GetActionRecommendationsRequest.add_member(:filter_values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "filterValues"))
    GetActionRecommendationsRequest.type = Types::GetActionRecommendationsRequest
    GetActionRecommendationsResponse.add_member(:action_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionList, name: "actionList"))
    GetActionRecommendationsResponse.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationID, name: "recommendationId"))
    GetActionRecommendationsResponse.type = Types::GetActionRecommendationsResponse
    GetPersonalizedRankingRequest.add_member(:campaign_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "campaignArn", traits: {"smithy.api#required" => {}}))
    GetPersonalizedRankingRequest.add_member(:input_list, ::Smithy::Schema::Shapes::MemberShape.new(target: InputList, name: "inputList", traits: {"smithy.api#required" => {}}))
    GetPersonalizedRankingRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserID, name: "userId", traits: {"smithy.api#required" => {}}))
    GetPersonalizedRankingRequest.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: Context, name: "context"))
    GetPersonalizedRankingRequest.add_member(:filter_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "filterArn"))
    GetPersonalizedRankingRequest.add_member(:filter_values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "filterValues"))
    GetPersonalizedRankingRequest.add_member(:metadata_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataColumns, name: "metadataColumns"))
    GetPersonalizedRankingRequest.type = Types::GetPersonalizedRankingRequest
    GetPersonalizedRankingResponse.add_member(:personalized_ranking, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemList, name: "personalizedRanking"))
    GetPersonalizedRankingResponse.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationID, name: "recommendationId"))
    GetPersonalizedRankingResponse.type = Types::GetPersonalizedRankingResponse
    GetRecommendationsRequest.add_member(:campaign_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "campaignArn"))
    GetRecommendationsRequest.add_member(:item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemID, name: "itemId"))
    GetRecommendationsRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserID, name: "userId"))
    GetRecommendationsRequest.add_member(:num_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumResults, name: "numResults", traits: {"smithy.api#default" => 0}))
    GetRecommendationsRequest.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: Context, name: "context"))
    GetRecommendationsRequest.add_member(:filter_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "filterArn"))
    GetRecommendationsRequest.add_member(:filter_values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "filterValues"))
    GetRecommendationsRequest.add_member(:recommender_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "recommenderArn"))
    GetRecommendationsRequest.add_member(:promotions, ::Smithy::Schema::Shapes::MemberShape.new(target: PromotionList, name: "promotions"))
    GetRecommendationsRequest.add_member(:metadata_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataColumns, name: "metadataColumns"))
    GetRecommendationsRequest.type = Types::GetRecommendationsRequest
    GetRecommendationsResponse.add_member(:item_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemList, name: "itemList"))
    GetRecommendationsResponse.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationID, name: "recommendationId"))
    GetRecommendationsResponse.type = Types::GetRecommendationsResponse
    InputList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemID, name: "member"))
    InvalidInputException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidInputException.type = Types::InvalidInputException
    ItemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictedItem, name: "member"))
    Metadata.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnName, name: "key"))
    Metadata.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnValue, name: "value"))
    MetadataColumns.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetType, name: "key"))
    MetadataColumns.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnNamesList, name: "value"))
    PredictedAction.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionID, name: "actionId"))
    PredictedAction.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Score, name: "score"))
    PredictedAction.type = Types::PredictedAction
    PredictedItem.add_member(:item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemID, name: "itemId"))
    PredictedItem.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Score, name: "score"))
    PredictedItem.add_member(:promotion_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "promotionName"))
    PredictedItem.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "metadata"))
    PredictedItem.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ReasonList, name: "reason"))
    PredictedItem.type = Types::PredictedItem
    Promotion.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    Promotion.add_member(:percent_promoted_items, ::Smithy::Schema::Shapes::MemberShape.new(target: PercentPromotedItems, name: "percentPromotedItems"))
    Promotion.add_member(:filter_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "filterArn"))
    Promotion.add_member(:filter_values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "filterValues"))
    Promotion.type = Types::Promotion
    PromotionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Promotion, name: "member"))
    ReasonList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Reason, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException

    AmazonPersonalizeRuntime = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.personalizeruntime#AmazonPersonalizeRuntime"
      service.name = "AmazonPersonalizeRuntime"
      service.version = "2018-05-22"
      service.traits = {"aws.api#service" => {"sdkId" => "Personalize Runtime", "arnNamespace" => "personalize", "cloudFormationName" => "PersonalizeRuntime", "cloudTrailEventSource" => "personalizeruntime.amazonaws.com", "endpointPrefix" => "personalize-runtime"}, "aws.auth#sigv4" => {"name" => "personalize"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Personalize Runtime", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://personalize-runtime-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://personalize-runtime-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://personalize-runtime.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://personalize-runtime.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:get_action_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalizeruntime#GetActionRecommendations"
        operation.name = "GetActionRecommendations"
        operation.input = GetActionRecommendationsRequest
        operation.output = GetActionRecommendationsResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/action-recommendations", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_personalized_ranking, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalizeruntime#GetPersonalizedRanking"
        operation.name = "GetPersonalizedRanking"
        operation.input = GetPersonalizedRankingRequest
        operation.output = GetPersonalizedRankingResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/personalize-ranking", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalizeruntime#GetRecommendations"
        operation.name = "GetRecommendations"
        operation.input = GetRecommendationsRequest
        operation.output = GetRecommendationsResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
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
