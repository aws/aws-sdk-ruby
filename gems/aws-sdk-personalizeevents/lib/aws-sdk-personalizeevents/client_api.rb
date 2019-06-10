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

    Date = Shapes::TimestampShape.new(name: 'Date')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventList = Shapes::ListShape.new(name: 'EventList')
    EventPropertiesJSON = Shapes::StringShape.new(name: 'EventPropertiesJSON')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    PutEventsRequest = Shapes::StructureShape.new(name: 'PutEventsRequest')
    StringType = Shapes::StringShape.new(name: 'StringType')
    UserId = Shapes::StringShape.new(name: 'UserId')

    Event.add_member(:event_id, Shapes::ShapeRef.new(shape: StringType, location_name: "eventId"))
    Event.add_member(:event_type, Shapes::ShapeRef.new(shape: StringType, required: true, location_name: "eventType"))
    Event.add_member(:properties, Shapes::ShapeRef.new(shape: EventPropertiesJSON, required: true, location_name: "properties", metadata: {"jsonvalue"=>true}))
    Event.add_member(:sent_at, Shapes::ShapeRef.new(shape: Date, required: true, location_name: "sentAt"))
    Event.struct_class = Types::Event

    EventList.member = Shapes::ShapeRef.new(shape: Event)

    InvalidInputException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidInputException.struct_class = Types::InvalidInputException

    PutEventsRequest.add_member(:tracking_id, Shapes::ShapeRef.new(shape: StringType, required: true, location_name: "trackingId"))
    PutEventsRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "userId"))
    PutEventsRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: StringType, required: true, location_name: "sessionId"))
    PutEventsRequest.add_member(:event_list, Shapes::ShapeRef.new(shape: EventList, required: true, location_name: "eventList"))
    PutEventsRequest.struct_class = Types::PutEventsRequest


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
    end

  end
end
