# frozen_string_literal: true

# This is generated code!

module Aws::PersonalizeEvents
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Action = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalizeevents#Action", name: "Action")
    ActionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalizeevents#ActionId", name: "ActionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#sensitive" => {}})
    ActionImpression = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalizeevents#ActionImpression", name: "ActionImpression", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    ActionInteraction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalizeevents#ActionInteraction", name: "ActionInteraction")
    ActionInteractionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalizeevents#ActionInteractionsList", name: "ActionInteractionsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ActionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalizeevents#ActionList", name: "ActionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalizeevents#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:([a-z\\d-]+):personalize:.*:.*:.+$"})
    Date = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.personalizeevents#Date", name: "Date")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalizeevents#ErrorMessage", name: "ErrorMessage")
    Event = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalizeevents#Event", name: "Event", traits: {"smithy.api#sensitive" => {}})
    EventAttributionSource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalizeevents#EventAttributionSource", name: "EventAttributionSource", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\x20-\\x7E]*[\\x21-\\x7E]+[\\x20-\\x7E]*$"})
    EventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalizeevents#EventList", name: "EventList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    FloatType = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.personalizeevents#FloatType", name: "FloatType")
    Impression = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalizeevents#Impression", name: "Impression", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    InvalidInputException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalizeevents#InvalidInputException", name: "InvalidInputException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Item = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalizeevents#Item", name: "Item")
    ItemId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalizeevents#ItemId", name: "ItemId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#sensitive" => {}})
    ItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalizeevents#ItemList", name: "ItemList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    MetricAttribution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalizeevents#MetricAttribution", name: "MetricAttribution")
    PutActionInteractionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalizeevents#PutActionInteractionsRequest", name: "PutActionInteractionsRequest")
    PutActionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalizeevents#PutActionsRequest", name: "PutActionsRequest")
    PutEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalizeevents#PutEventsRequest", name: "PutEventsRequest")
    PutItemsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalizeevents#PutItemsRequest", name: "PutItemsRequest")
    PutUsersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalizeevents#PutUsersRequest", name: "PutUsersRequest")
    RecommendationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalizeevents#RecommendationId", name: "RecommendationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 40}})
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalizeevents#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalizeevents#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    StringType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalizeevents#StringType", name: "StringType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    SynthesizedJsonActionInteractionProperties = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalizeevents#SynthesizedJsonActionInteractionProperties", name: "SynthesizedJsonActionInteractionProperties", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#mediaType" => "application/json", "smithy.api#sensitive" => {}})
    SynthesizedJsonActionProperties = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalizeevents#SynthesizedJsonActionProperties", name: "SynthesizedJsonActionProperties", traits: {"smithy.api#length" => {"min" => 1, "max" => 32000}, "smithy.api#mediaType" => "application/json", "smithy.api#sensitive" => {}})
    SynthesizedJsonEventPropertiesJSON = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalizeevents#SynthesizedJsonEventPropertiesJSON", name: "SynthesizedJsonEventPropertiesJSON", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#mediaType" => "application/json", "smithy.api#sensitive" => {}})
    SynthesizedJsonItemProperties = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalizeevents#SynthesizedJsonItemProperties", name: "SynthesizedJsonItemProperties", traits: {"smithy.api#length" => {"min" => 1, "max" => 32000}, "smithy.api#mediaType" => "application/json", "smithy.api#sensitive" => {}})
    SynthesizedJsonUserProperties = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalizeevents#SynthesizedJsonUserProperties", name: "SynthesizedJsonUserProperties", traits: {"smithy.api#length" => {"min" => 1, "max" => 24000}, "smithy.api#mediaType" => "application/json", "smithy.api#sensitive" => {}})
    User = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalizeevents#User", name: "User")
    UserId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalizeevents#UserId", name: "UserId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#sensitive" => {}})
    UserList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalizeevents#UserList", name: "UserList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})

    Action.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "actionId", traits: {"smithy.api#required" => {}}))
    Action.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SynthesizedJsonActionProperties, name: "properties"))
    Action.type = Types::Action
    ActionImpression.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionId, name: "member"))
    ActionInteraction.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionId, name: "actionId", traits: {"smithy.api#required" => {}}))
    ActionInteraction.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId"))
    ActionInteraction.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "sessionId", traits: {"smithy.api#required" => {}}))
    ActionInteraction.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "timestamp", traits: {"smithy.api#required" => {}}))
    ActionInteraction.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "eventType", traits: {"smithy.api#required" => {}}))
    ActionInteraction.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "eventId"))
    ActionInteraction.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationId, name: "recommendationId"))
    ActionInteraction.add_member(:impression, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionImpression, name: "impression"))
    ActionInteraction.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SynthesizedJsonActionInteractionProperties, name: "properties"))
    ActionInteraction.type = Types::ActionInteraction
    ActionInteractionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionInteraction, name: "member"))
    ActionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "member"))
    Event.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "eventId"))
    Event.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "eventType", traits: {"smithy.api#required" => {}}))
    Event.add_member(:event_value, ::Smithy::Schema::Shapes::MemberShape.new(target: FloatType, name: "eventValue"))
    Event.add_member(:item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemId, name: "itemId"))
    Event.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SynthesizedJsonEventPropertiesJSON, name: "properties"))
    Event.add_member(:sent_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "sentAt", traits: {"smithy.api#required" => {}}))
    Event.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationId, name: "recommendationId"))
    Event.add_member(:impression, ::Smithy::Schema::Shapes::MemberShape.new(target: Impression, name: "impression"))
    Event.add_member(:metric_attribution, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricAttribution, name: "metricAttribution"))
    Event.type = Types::Event
    EventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Event, name: "member"))
    Impression.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemId, name: "member"))
    InvalidInputException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidInputException.type = Types::InvalidInputException
    Item.add_member(:item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "itemId", traits: {"smithy.api#required" => {}}))
    Item.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SynthesizedJsonItemProperties, name: "properties"))
    Item.type = Types::Item
    ItemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Item, name: "member"))
    MetricAttribution.add_member(:event_attribution_source, ::Smithy::Schema::Shapes::MemberShape.new(target: EventAttributionSource, name: "eventAttributionSource", traits: {"smithy.api#required" => {}}))
    MetricAttribution.type = Types::MetricAttribution
    PutActionInteractionsRequest.add_member(:tracking_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "trackingId", traits: {"smithy.api#required" => {}}))
    PutActionInteractionsRequest.add_member(:action_interactions, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionInteractionsList, name: "actionInteractions", traits: {"smithy.api#required" => {}}))
    PutActionInteractionsRequest.type = Types::PutActionInteractionsRequest
    PutActionsRequest.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "datasetArn", traits: {"smithy.api#required" => {}}))
    PutActionsRequest.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionList, name: "actions", traits: {"smithy.api#required" => {}}))
    PutActionsRequest.type = Types::PutActionsRequest
    PutEventsRequest.add_member(:tracking_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "trackingId", traits: {"smithy.api#required" => {}}))
    PutEventsRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId"))
    PutEventsRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "sessionId", traits: {"smithy.api#required" => {}}))
    PutEventsRequest.add_member(:event_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EventList, name: "eventList", traits: {"smithy.api#required" => {}}))
    PutEventsRequest.type = Types::PutEventsRequest
    PutItemsRequest.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "datasetArn", traits: {"smithy.api#required" => {}}))
    PutItemsRequest.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemList, name: "items", traits: {"smithy.api#required" => {}}))
    PutItemsRequest.type = Types::PutItemsRequest
    PutUsersRequest.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "datasetArn", traits: {"smithy.api#required" => {}}))
    PutUsersRequest.add_member(:users, ::Smithy::Schema::Shapes::MemberShape.new(target: UserList, name: "users", traits: {"smithy.api#required" => {}}))
    PutUsersRequest.type = Types::PutUsersRequest
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    User.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "userId", traits: {"smithy.api#required" => {}}))
    User.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SynthesizedJsonUserProperties, name: "properties"))
    User.type = Types::User
    UserList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: User, name: "member"))

    AmazonPersonalizeEvents = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.personalizeevents#AmazonPersonalizeEvents"
      service.name = "AmazonPersonalizeEvents"
      service.version = "2018-03-22"
      service.traits = {"aws.api#service" => {"sdkId" => "Personalize Events", "arnNamespace" => "personalize", "cloudFormationName" => "PersonalizeEvents", "cloudTrailEventSource" => "personalizeevents.amazonaws.com", "endpointPrefix" => "personalize-events"}, "aws.auth#sigv4" => {"name" => "personalize"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Personalize Events", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://personalize-events-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://personalize-events-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://personalize-events.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://personalize-events.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:put_action_interactions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalizeevents#PutActionInteractions"
        operation.name = "PutActionInteractions"
        operation.input = PutActionInteractionsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/action-interactions", "code" => 200}}
      end)
      service.add_operation(:put_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalizeevents#PutActions"
        operation.name = "PutActions"
        operation.input = PutActionsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/actions", "code" => 200}}
      end)
      service.add_operation(:put_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalizeevents#PutEvents"
        operation.name = "PutEvents"
        operation.input = PutEventsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/events", "code" => 200}}
      end)
      service.add_operation(:put_items, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalizeevents#PutItems"
        operation.name = "PutItems"
        operation.input = PutItemsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/items", "code" => 200}}
      end)
      service.add_operation(:put_users, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalizeevents#PutUsers"
        operation.name = "PutUsers"
        operation.input = PutUsersRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/users", "code" => 200}}
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
