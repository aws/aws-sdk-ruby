# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PersonalizeEvents
  # @api private
  module ClientApi

    include Seahorse::Model

    Arn = Shapes::StringShape.new(name: 'Arn')
    Date = Shapes::TimestampShape.new(name: 'Date')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventList = Shapes::ListShape.new(name: 'EventList')
    EventPropertiesJSON = Shapes::StringShape.new(name: 'EventPropertiesJSON')
    FloatType = Shapes::FloatShape.new(name: 'FloatType')
    Impression = Shapes::ListShape.new(name: 'Impression')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    Item = Shapes::StructureShape.new(name: 'Item')
    ItemId = Shapes::StringShape.new(name: 'ItemId')
    ItemList = Shapes::ListShape.new(name: 'ItemList')
    ItemProperties = Shapes::StringShape.new(name: 'ItemProperties')
    PutEventsRequest = Shapes::StructureShape.new(name: 'PutEventsRequest')
    PutItemsRequest = Shapes::StructureShape.new(name: 'PutItemsRequest')
    PutUsersRequest = Shapes::StructureShape.new(name: 'PutUsersRequest')
    RecommendationId = Shapes::StringShape.new(name: 'RecommendationId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    StringType = Shapes::StringShape.new(name: 'StringType')
    User = Shapes::StructureShape.new(name: 'User')
    UserId = Shapes::StringShape.new(name: 'UserId')
    UserList = Shapes::ListShape.new(name: 'UserList')
    UserProperties = Shapes::StringShape.new(name: 'UserProperties')

    Event.add_member(:event_id, Shapes::ShapeRef.new(shape: StringType, location_name: "eventId"))
    Event.add_member(:event_type, Shapes::ShapeRef.new(shape: StringType, required: true, location_name: "eventType"))
    Event.add_member(:event_value, Shapes::ShapeRef.new(shape: FloatType, location_name: "eventValue"))
    Event.add_member(:item_id, Shapes::ShapeRef.new(shape: ItemId, location_name: "itemId"))
    Event.add_member(:properties, Shapes::ShapeRef.new(shape: EventPropertiesJSON, location_name: "properties", metadata: {"jsonvalue"=>true}))
    Event.add_member(:sent_at, Shapes::ShapeRef.new(shape: Date, required: true, location_name: "sentAt"))
    Event.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: RecommendationId, location_name: "recommendationId"))
    Event.add_member(:impression, Shapes::ShapeRef.new(shape: Impression, location_name: "impression"))
    Event.struct_class = Types::Event

    EventList.member = Shapes::ShapeRef.new(shape: Event)

    Impression.member = Shapes::ShapeRef.new(shape: ItemId)

    InvalidInputException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidInputException.struct_class = Types::InvalidInputException

    Item.add_member(:item_id, Shapes::ShapeRef.new(shape: StringType, required: true, location_name: "itemId"))
    Item.add_member(:properties, Shapes::ShapeRef.new(shape: ItemProperties, location_name: "properties", metadata: {"jsonvalue"=>true}))
    Item.struct_class = Types::Item

    ItemList.member = Shapes::ShapeRef.new(shape: Item)

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
        "endpointPrefix" => "personalize-events",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Personalize Events",
        "serviceId" => "Personalize Events",
        "signatureVersion" => "v4",
        "signingName" => "personalize",
        "uid" => "personalize-events-2018-03-22",
      }

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
      end)

      api.add_operation(:put_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutUsers"
        o.http_method = "POST"
        o.http_request_uri = "/users"
        o.input = Shapes::ShapeRef.new(shape: PutUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
