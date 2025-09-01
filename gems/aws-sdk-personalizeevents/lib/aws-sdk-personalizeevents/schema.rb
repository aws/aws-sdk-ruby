# frozen_string_literal: true

# This is generated code!

module Aws::PersonalizeEvents
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Action = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeevents#Action', name: 'Action')
    ActionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeevents#ActionId', name: 'ActionId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#sensitive" => {}})
    ActionImpression = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalizeevents#ActionImpression', name: 'ActionImpression', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    ActionInteraction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeevents#ActionInteraction', name: 'ActionInteraction')
    ActionInteractionsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalizeevents#ActionInteractionsList', name: 'ActionInteractionsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ActionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalizeevents#ActionList', name: 'ActionList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeevents#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:([a-z\\d-]+):personalize:.*:.*:.+$"})
    Date = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.personalizeevents#Date', name: 'Date')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeevents#ErrorMessage', name: 'ErrorMessage')
    Event = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeevents#Event', name: 'Event', traits: {"smithy.api#sensitive" => {}})
    EventAttributionSource = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeevents#EventAttributionSource', name: 'EventAttributionSource', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\x20-\\x7E]*[\\x21-\\x7E]+[\\x20-\\x7E]*$"})
    EventList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalizeevents#EventList', name: 'EventList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    FloatType = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.personalizeevents#FloatType', name: 'FloatType')
    Impression = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalizeevents#Impression', name: 'Impression', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    InvalidInputException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeevents#InvalidInputException', name: 'InvalidInputException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Item = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeevents#Item', name: 'Item')
    ItemId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeevents#ItemId', name: 'ItemId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#sensitive" => {}})
    ItemList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalizeevents#ItemList', name: 'ItemList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    MetricAttribution = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeevents#MetricAttribution', name: 'MetricAttribution')
    PutActionInteractionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeevents#PutActionInteractionsRequest', name: 'PutActionInteractionsRequest')
    PutActionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeevents#PutActionsRequest', name: 'PutActionsRequest')
    PutEventsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeevents#PutEventsRequest', name: 'PutEventsRequest')
    PutItemsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeevents#PutItemsRequest', name: 'PutItemsRequest')
    PutUsersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeevents#PutUsersRequest', name: 'PutUsersRequest')
    RecommendationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeevents#RecommendationId', name: 'RecommendationId', traits: {"smithy.api#length" => {"min" => 1, "max" => 40}})
    ResourceInUseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeevents#ResourceInUseException', name: 'ResourceInUseException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeevents#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    StringType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeevents#StringType', name: 'StringType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    SynthesizedJsonActionInteractionProperties = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeevents#SynthesizedJsonActionInteractionProperties', name: 'SynthesizedJsonActionInteractionProperties', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#mediaType" => "application/json", "smithy.api#sensitive" => {}})
    SynthesizedJsonActionProperties = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeevents#SynthesizedJsonActionProperties', name: 'SynthesizedJsonActionProperties', traits: {"smithy.api#length" => {"min" => 1, "max" => 32000}, "smithy.api#mediaType" => "application/json", "smithy.api#sensitive" => {}})
    SynthesizedJsonEventPropertiesJSON = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeevents#SynthesizedJsonEventPropertiesJSON', name: 'SynthesizedJsonEventPropertiesJSON', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#mediaType" => "application/json", "smithy.api#sensitive" => {}})
    SynthesizedJsonItemProperties = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeevents#SynthesizedJsonItemProperties', name: 'SynthesizedJsonItemProperties', traits: {"smithy.api#length" => {"min" => 1, "max" => 32000}, "smithy.api#mediaType" => "application/json", "smithy.api#sensitive" => {}})
    SynthesizedJsonUserProperties = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeevents#SynthesizedJsonUserProperties', name: 'SynthesizedJsonUserProperties', traits: {"smithy.api#length" => {"min" => 1, "max" => 24000}, "smithy.api#mediaType" => "application/json", "smithy.api#sensitive" => {}})
    User = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalizeevents#User', name: 'User')
    UserId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalizeevents#UserId', name: 'UserId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#sensitive" => {}})
    UserList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalizeevents#UserList', name: 'UserList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})

    Action.add_member(:action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'actionId', traits: {"smithy.api#documentation" => "<p>The ID associated with the action.</p>", "smithy.api#required" => {}}))
    Action.add_member(:properties, Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizedJsonActionProperties, location_name: 'properties', traits: {"smithy.api#documentation" => "<p>A string map of action-specific metadata. Each element in the map consists of a key-value pair. \n      For example, <code>{\"value\": \"100\"}</code>.</p>\n         <p>The keys use camel case names that match the fields in the schema for the Actions\n      dataset. In the previous example, the <code>value</code> matches the\n      'VALUE' field defined in the Actions schema. For categorical string data, to include multiple categories for a single action, \n      separate each category with a pipe separator (<code>|</code>). For example, <code>\\\"Deluxe|Premium\\\"</code>.</p>"}))
    Action.type = Types::Action
    ActionImpression.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionId)
    ActionInteraction.add_member(:action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionId, location_name: 'actionId', traits: {"smithy.api#documentation" => "<p>The ID of the action the user interacted with. This corresponds to the <code>ACTION_ID</code> \n      field of the Action interaction schema.</p>", "smithy.api#required" => {}}))
    ActionInteraction.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The ID of the user who interacted with the action. This corresponds to the <code>USER_ID</code> \n      field of the Action interaction schema.</p>"}))
    ActionInteraction.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The ID associated with the user's visit. \n      Your application generates a unique <code>sessionId</code> when a user first visits your website or uses your application. </p>", "smithy.api#required" => {}}))
    ActionInteraction.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'timestamp', traits: {"smithy.api#documentation" => "<p>The timestamp for when the action interaction event occurred. Timestamps must be in Unix epoch time format, in seconds.</p>", "smithy.api#required" => {}}))
    ActionInteraction.add_member(:event_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'eventType', traits: {"smithy.api#documentation" => "<p>The type of action interaction event. You can specify <code>Viewed</code>, <code>Taken</code>, and <code>Not Taken</code> event types. For more\n      information about action interaction event type data, see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/action-interaction-event-type-data.html\">Event type data</a>. </p>", "smithy.api#required" => {}}))
    ActionInteraction.add_member(:event_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'eventId', traits: {"smithy.api#documentation" => "<p>An ID associated with the event. If an event ID is not provided, Amazon Personalize generates\n      a unique ID for the event. An event ID is not used as an input to the model. Amazon Personalize uses\n      the event ID to distinguish unique events. Any subsequent events after the first with the\n      same event ID are not used in model training.</p>"}))
    ActionInteraction.add_member(:recommendation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationId, location_name: 'recommendationId', traits: {"smithy.api#documentation" => "<p>The ID of the list of recommendations that contains the action the user interacted with.</p>"}))
    ActionInteraction.add_member(:impression, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionImpression, location_name: 'impression', traits: {"smithy.api#documentation" => "<p>A list of action IDs that represents the sequence of actions you have shown the user. For example, <code>[\"actionId1\", \"actionId2\", \"actionId3\"]</code>.\n      Amazon Personalize doesn't use impressions data from action interaction events. Instead, record multiple events for each action and use the <code>Viewed</code> event type.\n    </p>"}))
    ActionInteraction.add_member(:properties, Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizedJsonActionInteractionProperties, location_name: 'properties', traits: {"smithy.api#documentation" => "<p>A string map of event-specific data that you might choose to record. For example, if a\n      user takes an action, other than the action ID, you might also send the number of actions taken by the user.</p>\n         <p>Each item in the map consists of a key-value pair. For example,</p>\n         <p>\n            <code>{\"numberOfActions\": \"12\"}</code>\n         </p>\n         <p>The keys use camel case names that match the fields in the Action interactions\n      schema. In the above example, the <code>numberOfActions</code> would match the\n      'NUMBER_OF_ACTIONS' field defined in the Action interactions schema.</p>\n         <p>\n      The following can't be included as a keyword for properties (case insensitive). \n    </p>\n         <ul>\n            <li>\n               <p>\n          userId\n        </p>\n            </li>\n            <li>\n               <p>\n          sessionId\n        </p>\n            </li>\n            <li>\n               <p>eventType</p>\n            </li>\n            <li>\n               <p>timestamp</p>\n            </li>\n            <li>\n               <p>recommendationId</p>\n            </li>\n            <li>\n               <p>impression</p>\n            </li>\n         </ul>"}))
    ActionInteraction.type = Types::ActionInteraction
    ActionInteractionsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionInteraction)
    ActionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Action)
    Event.add_member(:event_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'eventId', traits: {"smithy.api#documentation" => "<p>An ID associated with the event. If an event ID is not provided, Amazon Personalize generates\n      a unique ID for the event. An event ID is not used as an input to the model. Amazon Personalize uses\n      the event ID to distinguish unique events. Any subsequent events after the first with the\n      same event ID are not used in model training.</p>"}))
    Event.add_member(:event_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'eventType', traits: {"smithy.api#documentation" => "<p>The type of event, such as click or download. This property corresponds to the <code>EVENT_TYPE</code>\n      field of your Item interactions dataset's schema and depends on the types of events you are tracking.</p>", "smithy.api#required" => {}}))
    Event.add_member(:event_value, Smithy::Schema::Shapes::ShapeRef.new(shape: FloatType, location_name: 'eventValue', traits: {"smithy.api#documentation" => "<p>The event value that corresponds to the <code>EVENT_VALUE</code> field of the Item interactions schema.</p>"}))
    Event.add_member(:item_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ItemId, location_name: 'itemId', traits: {"smithy.api#documentation" => "<p>The item ID key that corresponds to the <code>ITEM_ID</code> field of the Item interactions dataset's schema.</p>"}))
    Event.add_member(:properties, Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizedJsonEventPropertiesJSON, location_name: 'properties', traits: {"smithy.api#documentation" => "<p>A string map of event-specific data that you might choose to record. For example, if a\n      user rates a movie on your site, other than movie ID (<code>itemId</code>) and rating (<code>eventValue</code>)\n      , you might also send the number of movie ratings made by the user.</p>\n         <p>Each item in the map consists of a key-value pair. For example,</p>\n         <p>\n            <code>{\"numberOfRatings\": \"12\"}</code>\n         </p>\n         <p>The keys use camel case names that match the fields in the Item interactions dataset's\n      schema. In the above example, the <code>numberOfRatings</code> would match the\n      'NUMBER_OF_RATINGS' field defined in the Item interactions dataset's schema.</p>\n         <p>\n      The following can't be included as a keyword for properties (case insensitive). \n      \n    </p>\n         <ul>\n            <li>\n               <p>\n          userId\n        </p>\n            </li>\n            <li>\n               <p>\n          sessionId\n        </p>\n            </li>\n            <li>\n               <p>eventType</p>\n            </li>\n            <li>\n               <p>timestamp</p>\n            </li>\n            <li>\n               <p>recommendationId</p>\n            </li>\n            <li>\n               <p>impression</p>\n            </li>\n         </ul>"}))
    Event.add_member(:sent_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'sentAt', traits: {"smithy.api#documentation" => "<p>The timestamp (in Unix time) on the client side when the event occurred.</p>", "smithy.api#required" => {}}))
    Event.add_member(:recommendation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationId, location_name: 'recommendationId', traits: {"smithy.api#documentation" => "<p>The ID of the list of recommendations that contains the item the user interacted with. Provide a <code>recommendationId</code> to have Amazon Personalize implicitly record the\n      recommendations you show your user as impressions data. Or provide a <code>recommendationId</code> if you use a metric attribution to measure the impact of recommendations. \n    </p>\n         <p>\n      For more information on recording impressions data, see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html#putevents-including-impressions-data\">Recording impressions data</a>. \n      For more information on creating a metric attribution see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html\">Measuring impact of recommendations</a>.\n    </p>"}))
    Event.add_member(:impression, Smithy::Schema::Shapes::ShapeRef.new(shape: Impression, location_name: 'impression', traits: {"smithy.api#documentation" => "<p>A list of item IDs that represents the sequence of items you have shown the user. For example, <code>[\"itemId1\", \"itemId2\", \"itemId3\"]</code>. Provide a list of \n      items to manually record impressions data for an event. For more information on recording impressions data, \n      see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html#putevents-including-impressions-data\">Recording impressions data</a>. </p>"}))
    Event.add_member(:metric_attribution, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricAttribution, location_name: 'metricAttribution', traits: {"smithy.api#documentation" => "<p>Contains information about the metric attribution associated with an event. For more information about metric attributions, see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html\">Measuring impact of recommendations</a>.</p>"}))
    Event.type = Types::Event
    EventList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Event)
    Impression.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ItemId)
    InvalidInputException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidInputException.type = Types::InvalidInputException
    Item.add_member(:item_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'itemId', traits: {"smithy.api#documentation" => "<p>The ID associated with the item.</p>", "smithy.api#required" => {}}))
    Item.add_member(:properties, Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizedJsonItemProperties, location_name: 'properties', traits: {"smithy.api#documentation" => "<p>A string map of item-specific metadata. Each element in the map consists of a key-value pair. \n      For example, <code>{\"numberOfRatings\": \"12\"}</code>.</p>\n         <p>The keys use camel case names that match the fields in the schema for the Items\n      dataset. In the previous example, the <code>numberOfRatings</code> matches the\n      'NUMBER_OF_RATINGS' field defined in the Items schema. For categorical string data, to include multiple categories for a single item, \n      separate each category with a pipe separator (<code>|</code>). For example, <code>\\\"Horror|Action\\\"</code>.</p>"}))
    Item.type = Types::Item
    ItemList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Item)
    MetricAttribution.add_member(:event_attribution_source, Smithy::Schema::Shapes::ShapeRef.new(shape: EventAttributionSource, location_name: 'eventAttributionSource', traits: {"smithy.api#documentation" => "<p>The source of the event, such as a third party.</p>", "smithy.api#required" => {}}))
    MetricAttribution.type = Types::MetricAttribution
    PutActionInteractionsRequest.add_member(:tracking_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'trackingId', traits: {"smithy.api#documentation" => "<p>The ID of your action interaction event tracker. When you create an Action interactions dataset, Amazon Personalize creates an\n      action interaction event tracker for you. For more information, see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/action-interaction-tracker-id.html\">Action interaction event tracker ID</a>.</p>", "smithy.api#required" => {}}))
    PutActionInteractionsRequest.add_member(:action_interactions, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionInteractionsList, location_name: 'actionInteractions', traits: {"smithy.api#documentation" => "<p>A list of action interaction events from the session.</p>", "smithy.api#required" => {}}))
    PutActionInteractionsRequest.type = Types::PutActionInteractionsRequest
    PutActionsRequest.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Actions dataset you are adding the action or actions to.</p>", "smithy.api#required" => {}}))
    PutActionsRequest.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionList, location_name: 'actions', traits: {"smithy.api#documentation" => "<p>A list of action data.</p>", "smithy.api#required" => {}}))
    PutActionsRequest.type = Types::PutActionsRequest
    PutEventsRequest.add_member(:tracking_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'trackingId', traits: {"smithy.api#documentation" => "<p>The tracking ID for the event.\n      The ID is generated by a call to the\n      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html\">CreateEventTracker</a> API.</p>", "smithy.api#required" => {}}))
    PutEventsRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The user associated with the event.</p>"}))
    PutEventsRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The session ID associated with the user's visit. Your application generates the sessionId when a user first visits your website or uses your application. \n      Amazon Personalize uses the sessionId to associate events with the user before they log in. For more information, see \n      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/recording-item-interaction-events.html\">Recording item interaction events</a>.</p>", "smithy.api#required" => {}}))
    PutEventsRequest.add_member(:event_list, Smithy::Schema::Shapes::ShapeRef.new(shape: EventList, location_name: 'eventList', traits: {"smithy.api#documentation" => "<p>A list of event data from the session.</p>", "smithy.api#required" => {}}))
    PutEventsRequest.type = Types::PutEventsRequest
    PutItemsRequest.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Items dataset you are adding the item or items to.</p>", "smithy.api#required" => {}}))
    PutItemsRequest.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ItemList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>A list of item data.</p>", "smithy.api#required" => {}}))
    PutItemsRequest.type = Types::PutItemsRequest
    PutUsersRequest.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Users dataset you are adding the user or users to.</p>", "smithy.api#required" => {}}))
    PutUsersRequest.add_member(:users, Smithy::Schema::Shapes::ShapeRef.new(shape: UserList, location_name: 'users', traits: {"smithy.api#documentation" => "<p>A list of user data.</p>", "smithy.api#required" => {}}))
    PutUsersRequest.type = Types::PutUsersRequest
    ResourceInUseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    User.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The ID associated with the user.</p>", "smithy.api#required" => {}}))
    User.add_member(:properties, Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizedJsonUserProperties, location_name: 'properties', traits: {"smithy.api#documentation" => "<p>A string map of user-specific metadata. Each element in the map consists of a key-value pair. \n      For example, <code>{\"numberOfVideosWatched\": \"45\"}</code>.</p>\n         <p>The keys use camel case names that match the fields in the schema for the Users\n      dataset. In the previous example, the <code>numberOfVideosWatched</code> matches the\n      'NUMBER_OF_VIDEOS_WATCHED' field defined in the Users schema. For categorical string data, \n      to include multiple categories for a single user, separate each category with a pipe separator (<code>|</code>). \n      For example, <code>\\\"Member|Frequent shopper\\\"</code>.</p>"}))
    User.type = Types::User
    UserList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: User)

    AmazonPersonalizeEvents = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.personalizeevents#AmazonPersonalizeEvents"
      service.name = "AmazonPersonalizeEvents"
      service.version = "2018-03-22"
      service.traits = {"aws.api#service" => {"sdkId" => "Personalize Events", "arnNamespace" => "personalize", "cloudFormationName" => "PersonalizeEvents", "cloudTrailEventSource" => "personalizeevents.amazonaws.com", "endpointPrefix" => "personalize-events"}, "aws.auth#sigv4" => {"name" => "personalize"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Personalize Events"}
      service.add_operation(:put_action_interactions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalizeevents#PutActionInteractions"
        operation.name = "PutActionInteractions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutActionInteractionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/action-interactions", "code" => 200}}
      end)
      service.add_operation(:put_actions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalizeevents#PutActions"
        operation.name = "PutActions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutActionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/actions", "code" => 200}}
      end)
      service.add_operation(:put_events, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalizeevents#PutEvents"
        operation.name = "PutEvents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEventsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/events", "code" => 200}}
      end)
      service.add_operation(:put_items, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalizeevents#PutItems"
        operation.name = "PutItems"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutItemsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/items", "code" => 200}}
      end)
      service.add_operation(:put_users, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalizeevents#PutUsers"
        operation.name = "PutUsers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutUsersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/users", "code" => 200}}
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
