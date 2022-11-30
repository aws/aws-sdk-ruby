# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PersonalizeEvents
  module Types

    # Represents user interaction event information sent using the
    # `PutEvents` API.
    #
    # @!attribute [rw] event_id
    #   An ID associated with the event. If an event ID is not provided,
    #   Amazon Personalize generates a unique ID for the event. An event ID
    #   is not used as an input to the model. Amazon Personalize uses the
    #   event ID to distinquish unique events. Any subsequent events after
    #   the first with the same event ID are not used in model training.
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   The type of event, such as click or download. This property
    #   corresponds to the `EVENT_TYPE` field of your Interactions schema
    #   and depends on the types of events you are tracking.
    #   @return [String]
    #
    # @!attribute [rw] event_value
    #   The event value that corresponds to the `EVENT_VALUE` field of the
    #   Interactions schema.
    #   @return [Float]
    #
    # @!attribute [rw] item_id
    #   The item ID key that corresponds to the `ITEM_ID` field of the
    #   Interactions schema.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   A string map of event-specific data that you might choose to record.
    #   For example, if a user rates a movie on your site, other than movie
    #   ID (`itemId`) and rating (`eventValue`) , you might also send the
    #   number of movie ratings made by the user.
    #
    #   Each item in the map consists of a key-value pair. For example,
    #
    #   `\{"numberOfRatings": "12"\}`
    #
    #   The keys use camel case names that match the fields in the
    #   Interactions schema. In the above example, the `numberOfRatings`
    #   would match the 'NUMBER\_OF\_RATINGS' field defined in the
    #   Interactions schema.
    #   @return [String]
    #
    # @!attribute [rw] sent_at
    #   The timestamp (in Unix time) on the client side when the event
    #   occurred.
    #   @return [Time]
    #
    # @!attribute [rw] recommendation_id
    #   The ID of the list of recommendations that contains the item the
    #   user interacted with. Provide a `recommendationId` to have Amazon
    #   Personalize implicitly record the recommendations you show your user
    #   as impressions data. Or provide a `recommendationId` if you use a
    #   metric attribution to measure the impact of recommendations.
    #
    #   For more information on recording impressions data, see [Recording
    #   impressions data][1]. For more information on creating a metric
    #   attribution see [Measuring impact of recommendations][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html#putevents-including-impressions-data
    #   [2]: https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html
    #   @return [String]
    #
    # @!attribute [rw] impression
    #   A list of item IDs that represents the sequence of items you have
    #   shown the user. For example, `["itemId1", "itemId2", "itemId3"]`.
    #   Provide a list of items to manually record impressions data for an
    #   event. For more information on recording impressions data, see
    #   [Recording impressions data][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html#putevents-including-impressions-data
    #   @return [Array<String>]
    #
    # @!attribute [rw] metric_attribution
    #   Contains information about the metric attribution associated with an
    #   event. For more information about metric attributions, see
    #   [Measuring impact of recommendations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html
    #   @return [Types::MetricAttribution]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-events-2018-03-22/Event AWS API Documentation
    #
    class Event < Struct.new(
      :event_id,
      :event_type,
      :event_value,
      :item_id,
      :properties,
      :sent_at,
      :recommendation_id,
      :impression,
      :metric_attribution)
      SENSITIVE = [:item_id, :properties]
      include Aws::Structure
    end

    # Provide a valid value for the field or parameter.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-events-2018-03-22/InvalidInputException AWS API Documentation
    #
    class InvalidInputException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents item metadata added to an Items dataset using the
    # `PutItems` API. For more information see [Importing Items
    # Incrementally][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/importing-items.html
    #
    # @!attribute [rw] item_id
    #   The ID associated with the item.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   A string map of item-specific metadata. Each element in the map
    #   consists of a key-value pair. For example, `\{"numberOfRatings":
    #   "12"\}`.
    #
    #   The keys use camel case names that match the fields in the schema
    #   for the Items dataset. In the previous example, the
    #   `numberOfRatings` matches the 'NUMBER\_OF\_RATINGS' field defined
    #   in the Items schema. For categorical string data, to include
    #   multiple categories for a single item, separate each category with a
    #   pipe separator (`|`). For example, `"Horror|Action"`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-events-2018-03-22/Item AWS API Documentation
    #
    class Item < Struct.new(
      :item_id,
      :properties)
      SENSITIVE = [:properties]
      include Aws::Structure
    end

    # Contains information about a metric attribution associated with an
    # event. For more information about metric attributions, see [Measuring
    # impact of recommendations][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html
    #
    # @!attribute [rw] event_attribution_source
    #   The source of the event, such as a third party.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-events-2018-03-22/MetricAttribution AWS API Documentation
    #
    class MetricAttribution < Struct.new(
      :event_attribution_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tracking_id
    #   The tracking ID for the event. The ID is generated by a call to the
    #   [CreateEventTracker][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user associated with the event.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The session ID associated with the user's visit. Your application
    #   generates the sessionId when a user first visits your website or
    #   uses your application. Amazon Personalize uses the sessionId to
    #   associate events with the user before they log in. For more
    #   information, see [Recording Events][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html
    #   @return [String]
    #
    # @!attribute [rw] event_list
    #   A list of event data from the session.
    #   @return [Array<Types::Event>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-events-2018-03-22/PutEventsRequest AWS API Documentation
    #
    class PutEventsRequest < Struct.new(
      :tracking_id,
      :user_id,
      :session_id,
      :event_list)
      SENSITIVE = [:user_id]
      include Aws::Structure
    end

    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the Items dataset you are adding
    #   the item or items to.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   A list of item data.
    #   @return [Array<Types::Item>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-events-2018-03-22/PutItemsRequest AWS API Documentation
    #
    class PutItemsRequest < Struct.new(
      :dataset_arn,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the Users dataset you are adding
    #   the user or users to.
    #   @return [String]
    #
    # @!attribute [rw] users
    #   A list of user data.
    #   @return [Array<Types::User>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-events-2018-03-22/PutUsersRequest AWS API Documentation
    #
    class PutUsersRequest < Struct.new(
      :dataset_arn,
      :users)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource is in use.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-events-2018-03-22/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Could not find the specified resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-events-2018-03-22/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents user metadata added to a Users dataset using the `PutUsers`
    # API. For more information see [Importing Users Incrementally][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/importing-users.html
    #
    # @!attribute [rw] user_id
    #   The ID associated with the user.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   A string map of user-specific metadata. Each element in the map
    #   consists of a key-value pair. For example,
    #   `\{"numberOfVideosWatched": "45"\}`.
    #
    #   The keys use camel case names that match the fields in the schema
    #   for the Users dataset. In the previous example, the
    #   `numberOfVideosWatched` matches the 'NUMBER\_OF\_VIDEOS\_WATCHED'
    #   field defined in the Users schema. For categorical string data, to
    #   include multiple categories for a single user, separate each
    #   category with a pipe separator (`|`). For example,
    #   `"Member|Frequent shopper"`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-events-2018-03-22/User AWS API Documentation
    #
    class User < Struct.new(
      :user_id,
      :properties)
      SENSITIVE = [:properties]
      include Aws::Structure
    end

  end
end
