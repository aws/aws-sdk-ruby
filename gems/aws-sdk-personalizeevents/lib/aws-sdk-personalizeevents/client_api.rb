# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::PersonalizeEvents
  # @api private
  module ClientApi

    include Seahorse::Model

    Action = Shapes::StructureShape.new(name: 'Action')
    ActionId = Shapes::StringShape.new(name: 'ActionId')
    ActionImpression = Shapes::ListShape.new(name: 'ActionImpression')
    ActionInteraction = Shapes::StructureShape.new(name: 'ActionInteraction')
    ActionInteractionProperties = Shapes::StringShape.new(name: 'ActionInteractionProperties')
    ActionInteractionsList = Shapes::ListShape.new(name: 'ActionInteractionsList')
    ActionList = Shapes::ListShape.new(name: 'ActionList')
    ActionProperties = Shapes::StringShape.new(name: 'ActionProperties')
    Arn = Shapes::StringShape.new(name: 'Arn')
    Date = Shapes::TimestampShape.new(name: 'Date')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventAttributionSource = Shapes::StringShape.new(name: 'EventAttributionSource')
    EventList = Shapes::ListShape.new(name: 'EventList')
    EventPropertiesJSON = Shapes::StringShape.new(name: 'EventPropertiesJSON')
    FloatType = Shapes::FloatShape.new(name: 'FloatType')
    Impression = Shapes::ListShape.new(name: 'Impression')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    Item = Shapes::StructureShape.new(name: 'Item')
    ItemId = Shapes::StringShape.new(name: 'ItemId')
    ItemList = Shapes::ListShape.new(name: 'ItemList')
    ItemProperties = Shapes::StringShape.new(name: 'ItemProperties')
    MetricAttribution = Shapes::StructureShape.new(name: 'MetricAttribution')
    PutActionInteractionsRequest = Shapes::StructureShape.new(name: 'PutActionInteractionsRequest')
    PutActionsRequest = Shapes::StructureShape.new(name: 'PutActionsRequest')
    PutEventsRequest = Shapes::StructureShape.new(name: 'PutEventsRequest')
    PutItemsRequest = Shapes::StructureShape.new(name: 'PutItemsRequest')
    PutUsersRequest = Shapes::StructureShape.new(name: 'PutUsersRequest')
    RecommendationId = Shapes::StringShape.new(name: 'RecommendationId')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    StringType = Shapes::StringShape.new(name: 'StringType')
    User = Shapes::StructureShape.new(name: 'User')
    UserId = Shapes::StringShape.new(name: 'UserId')
    UserList = Shapes::ListShape.new(name: 'UserList')
    UserProperties = Shapes::StringShape.new(name: 'UserProperties')

    Action.add_member(:action_id, Shapes::ShapeRef.new(shape: StringType, required: true, location_name: "actionId"))
    Action.add_member(:properties, Shapes::ShapeRef.new(shape: ActionProperties, location_name: "properties", metadata: {"jsonvalue"=>true}))
    Action.struct_class = Types::Action

    ActionImpression.member = Shapes::ShapeRef.new(shape: ActionId)

    ActionInteraction.add_member(:action_id, Shapes::ShapeRef.new(shape: ActionId, required: true, location_name: "actionId"))
    ActionInteraction.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "userId"))
    ActionInteraction.add_member(:session_id, Shapes::ShapeRef.new(shape: StringType, required: true, location_name: "sessionId"))
    ActionInteraction.add_member(:timestamp, Shapes::ShapeRef.new(shape: Date, required: true, location_name: "timestamp"))
    ActionInteraction.add_member(:event_type, Shapes::ShapeRef.new(shape: StringType, required: true, location_name: "eventType"))
    ActionInteraction.add_member(:event_id, Shapes::ShapeRef.new(shape: StringType, location_name: "eventId"))
    ActionInteraction.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: RecommendationId, location_name: "recommendationId"))
    ActionInteraction.add_member(:impression, Shapes::ShapeRef.new(shape: ActionImpression, location_name: "impression"))
    ActionInteraction.add_member(:properties, Shapes::ShapeRef.new(shape: ActionInteractionProperties, location_name: "properties", metadata: {"jsonvalue"=>true}))
    ActionInteraction.struct_class = Types::ActionInteraction

    ActionInteractionsList.member = Shapes::ShapeRef.new(shape: ActionInteraction)

    ActionList.member = Shapes::ShapeRef.new(shape: Action)

    Event.add_member(:event_id, Shapes::ShapeRef.new(shape: StringType, location_name: "eventId"))
    Event.add_member(:event_type, Shapes::ShapeRef.new(shape: StringType, required: true, location_name: "eventType"))
    Event.add_member(:event_value, Shapes::ShapeRef.new(shape: FloatType, location_name: "eventValue"))
    Event.add_member(:item_id, Shapes::ShapeRef.new(shape: ItemId, location_name: "itemId"))
    Event.add_member(:properties, Shapes::ShapeRef.new(shape: EventPropertiesJSON, location_name: "properties", metadata: {"jsonvalue"=>true}))
    Event.add_member(:sent_at, Shapes::ShapeRef.new(shape: Date, required: true, location_name: "sentAt"))
    Event.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: RecommendationId, location_name: "recommendationId"))
    Event.add_member(:impression, Shapes::ShapeRef.new(shape: Impression, location_name: "impression"))
    Event.add_member(:metric_attribution, Shapes::ShapeRef.new(shape: MetricAttribution, location_name: "metricAttribution"))
    Event.struct_class = Types::Event

    EventList.member = Shapes::ShapeRef.new(shape: Event)

    Impression.member = Shapes::ShapeRef.new(shape: ItemId)

    InvalidInputException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidInputException.struct_class = Types::InvalidInputException

    Item.add_member(:item_id, Shapes::ShapeRef.new(shape: StringType, required: true, location_name: "itemId"))
    Item.add_member(:properties, Shapes::ShapeRef.new(shape: ItemProperties, location_name: "properties", metadata: {"jsonvalue"=>true}))
    Item.struct_class = Types::Item

    ItemList.member = Shapes::ShapeRef.new(shape: Item)

    MetricAttribution.add_member(:event_attribution_source, Shapes::ShapeRef.new(shape: EventAttributionSource, required: true, location_name: "eventAttributionSource"))
    MetricAttribution.struct_class = Types::MetricAttribution

    PutActionInteractionsRequest.add_member(:tracking_id, Shapes::ShapeRef.new(shape: StringType, required: true, location_name: "trackingId"))
    PutActionInteractionsRequest.add_member(:action_interactions, Shapes::ShapeRef.new(shape: ActionInteractionsList, required: true, location_name: "actionInteractions"))
    PutActionInteractionsRequest.struct_class = Types::PutActionInteractionsRequest

    PutActionsRequest.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "datasetArn"))
    PutActionsRequest.add_member(:actions, Shapes::ShapeRef.new(shape: ActionList, required: true, location_name: "actions"))
    PutActionsRequest.struct_class = Types::PutActionsRequest

    PutEventsRequest.add_member(:tracking_id, Shapes::ShapeRef.new(shape: StringType, required: true, location_name: "trackingId"))
    PutEventsRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "userId"))
    PutEventsRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: StringType, required: true, location_name: "sessionId"))
    PutEventsRequest.add_member(:event_list, Shapes::ShapeRef.new(shape: EventList, required: true, location_name: "eventList"))
    PutEventsRequest.struct_class = Types::PutEventsRequest

    PutItemsRequest.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "datasetArn"))
    PutItemsRequest.add_member(:items, Shapes::ShapeRef.new(shape: ItemList, required: true, location_name: "items"))
    PutItemsRequest.struct_class = Types::PutItemsRequest

    PutUsersRequest.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "datasetArn"))
    PutUsersRequest.add_member(:users, Shapes::ShapeRef.new(shape: UserList, required: true, location_name: "users"))
    PutUsersRequest.struct_class = Types::PutUsersRequest

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    User.add_member(:user_id, Shapes::ShapeRef.new(shape: StringType, required: true, location_name: "userId"))
    User.add_member(:properties, Shapes::ShapeRef.new(shape: UserProperties, location_name: "properties", metadata: {"jsonvalue"=>true}))
    User.struct_class = Types::User

    UserList.member = Shapes::ShapeRef.new(shape: User)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-03-22"

      api.metadata = {
        "apiVersion" => "2018-03-22",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "personalize-events",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon Personalize Events",
        "serviceId" => "Personalize Events",
        "signatureVersion" => "v4",
        "signingName" => "personalize",
        "uid" => "personalize-events-2018-03-22",
      }

      api.add_operation(:put_action_interactions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutActionInteractions"
        o.http_method = "POST"
        o.http_request_uri = "/action-interactions"
        o.input = Shapes::ShapeRef.new(shape: PutActionInteractionsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:put_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutActions"
        o.http_method = "POST"
        o.http_request_uri = "/actions"
        o.input = Shapes::ShapeRef.new(shape: PutActionsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:put_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutEvents"
        o.http_method = "POST"
        o.http_request_uri = "/events"
        o.input = Shapes::ShapeRef.new(shape: PutEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:put_items, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutItems"
        o.http_method = "POST"
        o.http_request_uri = "/items"
        o.input = Shapes::ShapeRef.new(shape: PutItemsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:put_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutUsers"
        o.http_method = "POST"
        o.http_request_uri = "/users"
        o.input = Shapes::ShapeRef.new(shape: PutUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)
    end

  end
end
