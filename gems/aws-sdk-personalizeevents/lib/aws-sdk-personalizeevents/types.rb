# frozen_string_literal: true

# This is generated code!

module Aws::PersonalizeEvents
  # This module contains the types returned by client operations.
  module Types

    # <p>Represents action metadata added to an Action dataset using the 
    #       <code>PutActions</code> API. For more information see 
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/importing-actions.html">Importing actions individually</a>.
    #     </p>
    # @!attribute action_id
    #   <p>The ID associated with the action.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>A string map of action-specific metadata. Each element in the map consists of a key-value pair. 
    #         For example, <code>{"value": "100"}</code>.</p>
    #            <p>The keys use camel case names that match the fields in the schema for the Actions
    #         dataset. In the previous example, the <code>value</code> matches the
    #         'VALUE' field defined in the Actions schema. For categorical string data, to include multiple categories for a single action, 
    #         separate each category with a pipe separator (<code>|</code>). For example, <code>\"Deluxe|Premium\"</code>.</p>
    #   @return [String]
    class Action < Struct.new(
      :action_id,
      :properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an action interaction event sent using the
    #       <code>PutActionInteractions</code> API.</p>
    # @!attribute action_id
    #   <p>The ID of the action the user interacted with. This corresponds to the <code>ACTION_ID</code> 
    #         field of the Action interaction schema.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The ID of the user who interacted with the action. This corresponds to the <code>USER_ID</code> 
    #         field of the Action interaction schema.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The ID associated with the user's visit. 
    #         Your application generates a unique <code>sessionId</code> when a user first visits your website or uses your application. </p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The timestamp for when the action interaction event occurred. Timestamps must be in Unix epoch time format, in seconds.</p>
    #   @return [Time]
    # @!attribute event_type
    #   <p>The type of action interaction event. You can specify <code>Viewed</code>, <code>Taken</code>, and <code>Not Taken</code> event types. For more
    #         information about action interaction event type data, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/action-interaction-event-type-data.html">Event type data</a>. </p>
    #   @return [String]
    # @!attribute event_id
    #   <p>An ID associated with the event. If an event ID is not provided, Amazon Personalize generates
    #         a unique ID for the event. An event ID is not used as an input to the model. Amazon Personalize uses
    #         the event ID to distinguish unique events. Any subsequent events after the first with the
    #         same event ID are not used in model training.</p>
    #   @return [String]
    # @!attribute recommendation_id
    #   <p>The ID of the list of recommendations that contains the action the user interacted with.</p>
    #   @return [String]
    # @!attribute impression
    #   <p>A list of action IDs that represents the sequence of actions you have shown the user. For example, <code>["actionId1", "actionId2", "actionId3"]</code>.
    #         Amazon Personalize doesn't use impressions data from action interaction events. Instead, record multiple events for each action and use the <code>Viewed</code> event type.
    #       </p>
    #   @return [Array<String>]
    # @!attribute properties
    #   <p>A string map of event-specific data that you might choose to record. For example, if a
    #         user takes an action, other than the action ID, you might also send the number of actions taken by the user.</p>
    #            <p>Each item in the map consists of a key-value pair. For example,</p>
    #            <p>
    #               <code>{"numberOfActions": "12"}</code>
    #            </p>
    #            <p>The keys use camel case names that match the fields in the Action interactions
    #         schema. In the above example, the <code>numberOfActions</code> would match the
    #         'NUMBER_OF_ACTIONS' field defined in the Action interactions schema.</p>
    #            <p>
    #         The following can't be included as a keyword for properties (case insensitive). 
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #             userId
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             sessionId
    #           </p>
    #               </li>
    #               <li>
    #                  <p>eventType</p>
    #               </li>
    #               <li>
    #                  <p>timestamp</p>
    #               </li>
    #               <li>
    #                  <p>recommendationId</p>
    #               </li>
    #               <li>
    #                  <p>impression</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ActionInteraction < Struct.new(
      :action_id,
      :user_id,
      :session_id,
      :timestamp,
      :event_type,
      :event_id,
      :recommendation_id,
      :impression,
      :properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents item interaction event information sent using the
    #       <code>PutEvents</code> API.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute event_id
    #   <p>An ID associated with the event. If an event ID is not provided, Amazon Personalize generates
    #         a unique ID for the event. An event ID is not used as an input to the model. Amazon Personalize uses
    #         the event ID to distinguish unique events. Any subsequent events after the first with the
    #         same event ID are not used in model training.</p>
    #   @return [String]
    # @!attribute event_type
    #   <p>The type of event, such as click or download. This property corresponds to the <code>EVENT_TYPE</code>
    #         field of your Item interactions dataset's schema and depends on the types of events you are tracking.</p>
    #   @return [String]
    # @!attribute event_value
    #   <p>The event value that corresponds to the <code>EVENT_VALUE</code> field of the Item interactions schema.</p>
    #   @return [Float]
    # @!attribute item_id
    #   <p>The item ID key that corresponds to the <code>ITEM_ID</code> field of the Item interactions dataset's schema.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>A string map of event-specific data that you might choose to record. For example, if a
    #         user rates a movie on your site, other than movie ID (<code>itemId</code>) and rating (<code>eventValue</code>)
    #         , you might also send the number of movie ratings made by the user.</p>
    #            <p>Each item in the map consists of a key-value pair. For example,</p>
    #            <p>
    #               <code>{"numberOfRatings": "12"}</code>
    #            </p>
    #            <p>The keys use camel case names that match the fields in the Item interactions dataset's
    #         schema. In the above example, the <code>numberOfRatings</code> would match the
    #         'NUMBER_OF_RATINGS' field defined in the Item interactions dataset's schema.</p>
    #            <p>
    #         The following can't be included as a keyword for properties (case insensitive). 
    #         
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #             userId
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             sessionId
    #           </p>
    #               </li>
    #               <li>
    #                  <p>eventType</p>
    #               </li>
    #               <li>
    #                  <p>timestamp</p>
    #               </li>
    #               <li>
    #                  <p>recommendationId</p>
    #               </li>
    #               <li>
    #                  <p>impression</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute sent_at
    #   <p>The timestamp (in Unix time) on the client side when the event occurred.</p>
    #   @return [Time]
    # @!attribute recommendation_id
    #   <p>The ID of the list of recommendations that contains the item the user interacted with. Provide a <code>recommendationId</code> to have Amazon Personalize implicitly record the
    #         recommendations you show your user as impressions data. Or provide a <code>recommendationId</code> if you use a metric attribution to measure the impact of recommendations. 
    #       </p>
    #            <p>
    #         For more information on recording impressions data, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html#putevents-including-impressions-data">Recording impressions data</a>. 
    #         For more information on creating a metric attribution see <a href="https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html">Measuring impact of recommendations</a>.
    #       </p>
    #   @return [String]
    # @!attribute impression
    #   <p>A list of item IDs that represents the sequence of items you have shown the user. For example, <code>["itemId1", "itemId2", "itemId3"]</code>. Provide a list of 
    #         items to manually record impressions data for an event. For more information on recording impressions data, 
    #         see <a href="https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html#putevents-including-impressions-data">Recording impressions data</a>. </p>
    #   @return [Array<String>]
    # @!attribute metric_attribution
    #   <p>Contains information about the metric attribution associated with an event. For more information about metric attributions, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html">Measuring impact of recommendations</a>.</p>
    #   @return [Types::MetricAttribution]
    class Event < Struct.new(
      :event_id,
      :event_type,
      :event_value,
      :item_id,
      :properties,
      :sent_at,
      :recommendation_id,
      :impression,
      :metric_attribution,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provide a valid value for the field or parameter.</p>
    # @!attribute message
    #   @return [String]
    class InvalidInputException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents item metadata added to an Items dataset using the 
    #       <code>PutItems</code> API. For more information see 
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/importing-items.html">Importing items individually</a>.
    #     </p>
    # @!attribute item_id
    #   <p>The ID associated with the item.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>A string map of item-specific metadata. Each element in the map consists of a key-value pair. 
    #         For example, <code>{"numberOfRatings": "12"}</code>.</p>
    #            <p>The keys use camel case names that match the fields in the schema for the Items
    #         dataset. In the previous example, the <code>numberOfRatings</code> matches the
    #         'NUMBER_OF_RATINGS' field defined in the Items schema. For categorical string data, to include multiple categories for a single item, 
    #         separate each category with a pipe separator (<code>|</code>). For example, <code>\"Horror|Action\"</code>.</p>
    #   @return [String]
    class Item < Struct.new(
      :item_id,
      :properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a metric attribution associated with an event. For more information about metric attributions, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html">Measuring impact of recommendations</a>.</p>
    # @!attribute event_attribution_source
    #   <p>The source of the event, such as a third party.</p>
    #   @return [String]
    class MetricAttribution < Struct.new(
      :event_attribution_source,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tracking_id
    #   <p>The ID of your action interaction event tracker. When you create an Action interactions dataset, Amazon Personalize creates an
    #         action interaction event tracker for you. For more information, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/action-interaction-tracker-id.html">Action interaction event tracker ID</a>.</p>
    #   @return [String]
    # @!attribute action_interactions
    #   <p>A list of action interaction events from the session.</p>
    #   @return [Array<Types::ActionInteraction>]
    class PutActionInteractionsRequest < Struct.new(
      :tracking_id,
      :action_interactions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the Actions dataset you are adding the action or actions to.</p>
    #   @return [String]
    # @!attribute actions
    #   <p>A list of action data.</p>
    #   @return [Array<Types::Action>]
    class PutActionsRequest < Struct.new(
      :dataset_arn,
      :actions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tracking_id
    #   <p>The tracking ID for the event.
    #         The ID is generated by a call to the
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html">CreateEventTracker</a> API.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The user associated with the event.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The session ID associated with the user's visit. Your application generates the sessionId when a user first visits your website or uses your application. 
    #         Amazon Personalize uses the sessionId to associate events with the user before they log in. For more information, see 
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/recording-item-interaction-events.html">Recording item interaction events</a>.</p>
    #   @return [String]
    # @!attribute event_list
    #   <p>A list of event data from the session.</p>
    #   @return [Array<Types::Event>]
    class PutEventsRequest < Struct.new(
      :tracking_id,
      :user_id,
      :session_id,
      :event_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the Items dataset you are adding the item or items to.</p>
    #   @return [String]
    # @!attribute items
    #   <p>A list of item data.</p>
    #   @return [Array<Types::Item>]
    class PutItemsRequest < Struct.new(
      :dataset_arn,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the Users dataset you are adding the user or users to.</p>
    #   @return [String]
    # @!attribute users
    #   <p>A list of user data.</p>
    #   @return [Array<Types::User>]
    class PutUsersRequest < Struct.new(
      :dataset_arn,
      :users,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource is in use.</p>
    # @!attribute message
    #   @return [String]
    class ResourceInUseException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Could not find the specified resource.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents user metadata added to a Users dataset using the 
    #       <code>PutUsers</code> API. For more information see 
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/importing-users.html">Importing users individually</a>.</p>
    # @!attribute user_id
    #   <p>The ID associated with the user.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>A string map of user-specific metadata. Each element in the map consists of a key-value pair. 
    #         For example, <code>{"numberOfVideosWatched": "45"}</code>.</p>
    #            <p>The keys use camel case names that match the fields in the schema for the Users
    #         dataset. In the previous example, the <code>numberOfVideosWatched</code> matches the
    #         'NUMBER_OF_VIDEOS_WATCHED' field defined in the Users schema. For categorical string data, 
    #         to include multiple categories for a single user, separate each category with a pipe separator (<code>|</code>). 
    #         For example, <code>\"Member|Frequent shopper\"</code>.</p>
    #   @return [String]
    class User < Struct.new(
      :user_id,
      :properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
