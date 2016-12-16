# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Health
  module Types

    # Information about an entity that is affected by a Health event.
    #
    # @!attribute [rw] entity_arn
    #   The unique identifier for the entity. Format:
    #   `arn:aws:health:entity-region:aws-account:entity/entity-id `.
    #   Example:
    #   `arn:aws:health:us-east-1:111222333444:entity/AVh5GGT7ul1arKr1sE1K`
    #   @return [String]
    #
    # @!attribute [rw] event_arn
    #   The unique identifier for the event. Format:
    #   `arn:aws:health:event-region::event/EVENT_TYPE_PLUS_ID `. Example:
    #   `arn:aws:health:us-east-1::event/AWS_EC2_MAINTENANCE_5331`
    #   @return [String]
    #
    # @!attribute [rw] entity_value
    #   The ID of the affected entity.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The 12-digit AWS account number that contains the affected entity.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   The most recent time that the entity was updated.
    #   @return [Time]
    #
    # @!attribute [rw] status_code
    #   The most recent status of the entity affected by the event. The
    #   possible values are `IMPAIRED`, `UNIMPAIRED`, and `UNKNOWN`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of entity tags attached to the affected entity.
    #   @return [Hash<String,String>]
    #
    class AffectedEntity < Struct.new(
      :entity_arn,
      :event_arn,
      :entity_value,
      :aws_account_id,
      :last_updated_time,
      :status_code,
      :tags)
      include Aws::Structure
    end

    # A range of dates and times that is used by the EventFilter and
    # EntityFilter objects. If `from` is set and `to` is set: match items
    # where the timestamp (`startTime`, `endTime`, or `lastUpdatedTime`) is
    # between `from` and `to` inclusive. If `from` is set and `to` is not
    # set: match items where the timestamp value is equal to or after
    # `from`. If `from` is not set and `to` is set: match items where the
    # timestamp value is equal to or before `to`.
    #
    # @note When making an API call, you may pass DateTimeRange
    #   data as a hash:
    #
    #       {
    #         from: Time.now,
    #         to: Time.now,
    #       }
    #
    # @!attribute [rw] from
    #   The starting date and time of a time range.
    #   @return [Time]
    #
    # @!attribute [rw] to
    #   The ending date and time of a time range.
    #   @return [Time]
    #
    class DateTimeRange < Struct.new(
      :from,
      :to)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAffectedEntitiesRequest
    #   data as a hash:
    #
    #       {
    #         filter: { # required
    #           event_arns: ["eventArn"], # required
    #           entity_arns: ["entityArn"],
    #           entity_values: ["entityValue"],
    #           last_updated_times: [
    #             {
    #               from: Time.now,
    #               to: Time.now,
    #             },
    #           ],
    #           tags: [
    #             {
    #               "tagKey" => "tagValue",
    #             },
    #           ],
    #           status_codes: ["IMPAIRED"], # accepts IMPAIRED, UNIMPAIRED, UNKNOWN
    #         },
    #         locale: "locale",
    #         next_token: "nextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filter
    #   Values to narrow the results returned. At least one event ARN is
    #   required.
    #   @return [Types::EntityFilter]
    #
    # @!attribute [rw] locale
    #   The locale (language) to return information in. The default is
    #   English.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in one batch.
    #   @return [Integer]
    #
    class DescribeAffectedEntitiesRequest < Struct.new(
      :filter,
      :locale,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] entities
    #   The entities that match the filter criteria.
    #   @return [Array<Types::AffectedEntity>]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    class DescribeAffectedEntitiesResponse < Struct.new(
      :entities,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEntityAggregatesRequest
    #   data as a hash:
    #
    #       {
    #         event_arns: ["eventArn"],
    #       }
    #
    # @!attribute [rw] event_arns
    #   A list of event ARNs (unique identifiers). For example:
    #   `"arn:aws:health:us-east-1::event/AWS_EC2_MAINTENANCE_5331",
    #   "arn:aws:health:us-west-1::event/AWS_EBS_LOST_VOLUME_xyz"`
    #   @return [Array<String>]
    #
    class DescribeEntityAggregatesRequest < Struct.new(
      :event_arns)
      include Aws::Structure
    end

    # @!attribute [rw] entity_aggregates
    #   The number of entities that are affected by each of the specified
    #   events.
    #   @return [Array<Types::EntityAggregate>]
    #
    class DescribeEntityAggregatesResponse < Struct.new(
      :entity_aggregates)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEventAggregatesRequest
    #   data as a hash:
    #
    #       {
    #         filter: {
    #           event_arns: ["eventArn"],
    #           event_type_codes: ["eventType"],
    #           services: ["service"],
    #           regions: ["region"],
    #           availability_zones: ["availabilityZone"],
    #           start_times: [
    #             {
    #               from: Time.now,
    #               to: Time.now,
    #             },
    #           ],
    #           end_times: [
    #             {
    #               from: Time.now,
    #               to: Time.now,
    #             },
    #           ],
    #           last_updated_times: [
    #             {
    #               from: Time.now,
    #               to: Time.now,
    #             },
    #           ],
    #           entity_arns: ["entityArn"],
    #           entity_values: ["entityValue"],
    #           event_type_categories: ["issue"], # accepts issue, accountNotification, scheduledChange
    #           tags: [
    #             {
    #               "tagKey" => "tagValue",
    #             },
    #           ],
    #           event_status_codes: ["open"], # accepts open, closed, upcoming
    #         },
    #         aggregate_field: "eventTypeCategory", # required, accepts eventTypeCategory
    #         max_results: 1,
    #         next_token: "nextToken",
    #       }
    #
    # @!attribute [rw] filter
    #   Values to narrow the results returned.
    #   @return [Types::EventFilter]
    #
    # @!attribute [rw] aggregate_field
    #   The only currently supported value is `eventTypeCategory`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in one batch.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    class DescribeEventAggregatesRequest < Struct.new(
      :filter,
      :aggregate_field,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] event_aggregates
    #   The number of events in each category that meet the optional filter
    #   criteria.
    #   @return [Array<Types::EventAggregate>]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    class DescribeEventAggregatesResponse < Struct.new(
      :event_aggregates,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEventDetailsRequest
    #   data as a hash:
    #
    #       {
    #         event_arns: ["eventArn"], # required
    #         locale: "locale",
    #       }
    #
    # @!attribute [rw] event_arns
    #   A list of event ARNs (unique identifiers). For example:
    #   `"arn:aws:health:us-east-1::event/AWS_EC2_MAINTENANCE_5331",
    #   "arn:aws:health:us-west-1::event/AWS_EBS_LOST_VOLUME_xyz"`
    #   @return [Array<String>]
    #
    # @!attribute [rw] locale
    #   The locale (language) to return information in. The default is
    #   English.
    #   @return [String]
    #
    class DescribeEventDetailsRequest < Struct.new(
      :event_arns,
      :locale)
      include Aws::Structure
    end

    # @!attribute [rw] successful_set
    #   Information about the events that could be retrieved.
    #   @return [Array<Types::EventDetails>]
    #
    # @!attribute [rw] failed_set
    #   Error messages for any events that could not be retrieved.
    #   @return [Array<Types::EventDetailsErrorItem>]
    #
    class DescribeEventDetailsResponse < Struct.new(
      :successful_set,
      :failed_set)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEventTypesRequest
    #   data as a hash:
    #
    #       {
    #         filter: {
    #           event_type_codes: ["eventTypeCode"],
    #           services: ["service"],
    #           event_type_categories: ["issue"], # accepts issue, accountNotification, scheduledChange
    #         },
    #         locale: "locale",
    #         next_token: "nextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filter
    #   Values to narrow the results returned.
    #   @return [Types::EventTypeFilter]
    #
    # @!attribute [rw] locale
    #   The locale (language) to return information in. The default is
    #   English.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in one batch.
    #   @return [Integer]
    #
    class DescribeEventTypesRequest < Struct.new(
      :filter,
      :locale,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] event_types
    #   List of event types to be matched with.
    #   @return [Array<Types::EventType>]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    class DescribeEventTypesResponse < Struct.new(
      :event_types,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEventsRequest
    #   data as a hash:
    #
    #       {
    #         filter: {
    #           event_arns: ["eventArn"],
    #           event_type_codes: ["eventType"],
    #           services: ["service"],
    #           regions: ["region"],
    #           availability_zones: ["availabilityZone"],
    #           start_times: [
    #             {
    #               from: Time.now,
    #               to: Time.now,
    #             },
    #           ],
    #           end_times: [
    #             {
    #               from: Time.now,
    #               to: Time.now,
    #             },
    #           ],
    #           last_updated_times: [
    #             {
    #               from: Time.now,
    #               to: Time.now,
    #             },
    #           ],
    #           entity_arns: ["entityArn"],
    #           entity_values: ["entityValue"],
    #           event_type_categories: ["issue"], # accepts issue, accountNotification, scheduledChange
    #           tags: [
    #             {
    #               "tagKey" => "tagValue",
    #             },
    #           ],
    #           event_status_codes: ["open"], # accepts open, closed, upcoming
    #         },
    #         next_token: "nextToken",
    #         max_results: 1,
    #         locale: "locale",
    #       }
    #
    # @!attribute [rw] filter
    #   Values to narrow the results returned.
    #   @return [Types::EventFilter]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in one batch.
    #   @return [Integer]
    #
    # @!attribute [rw] locale
    #   The locale (language) to return information in. The default is
    #   English.
    #   @return [String]
    #
    class DescribeEventsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results,
      :locale)
      include Aws::Structure
    end

    # @!attribute [rw] events
    #   The events that match the specified filter criteria.
    #   @return [Array<Types::Event>]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    class DescribeEventsResponse < Struct.new(
      :events,
      :next_token)
      include Aws::Structure
    end

    # The number of entities that are affected by one or more events.
    # Returned by the DescribeEntityAggregates operation.
    #
    # @!attribute [rw] event_arn
    #   The unique identifier for the event. Format:
    #   `arn:aws:health:event-region::event/EVENT_TYPE_PLUS_ID `. Example:
    #   `arn:aws:health:us-east-1::event/AWS_EC2_MAINTENANCE_5331`
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The number entities that match the criteria for the specified
    #   events.
    #   @return [Integer]
    #
    class EntityAggregate < Struct.new(
      :event_arn,
      :count)
      include Aws::Structure
    end

    # The values to use to filter results from the DescribeAffectedEntities
    # operation.
    #
    # @note When making an API call, you may pass EntityFilter
    #   data as a hash:
    #
    #       {
    #         event_arns: ["eventArn"], # required
    #         entity_arns: ["entityArn"],
    #         entity_values: ["entityValue"],
    #         last_updated_times: [
    #           {
    #             from: Time.now,
    #             to: Time.now,
    #           },
    #         ],
    #         tags: [
    #           {
    #             "tagKey" => "tagValue",
    #           },
    #         ],
    #         status_codes: ["IMPAIRED"], # accepts IMPAIRED, UNIMPAIRED, UNKNOWN
    #       }
    #
    # @!attribute [rw] event_arns
    #   A list of event ARNs (unique identifiers). For example:
    #   `"arn:aws:health:us-east-1::event/AWS_EC2_MAINTENANCE_5331",
    #   "arn:aws:health:us-west-1::event/AWS_EBS_LOST_VOLUME_xyz"`
    #   @return [Array<String>]
    #
    # @!attribute [rw] entity_arns
    #   A list of entity ARNs (unique identifiers).
    #   @return [Array<String>]
    #
    # @!attribute [rw] entity_values
    #   A list of IDs for affected entities.
    #   @return [Array<String>]
    #
    # @!attribute [rw] last_updated_times
    #   A list of the most recent dates and times that the entity was
    #   updated.
    #   @return [Array<Types::DateTimeRange>]
    #
    # @!attribute [rw] tags
    #   A map of entity tags attached to the affected entity.
    #   @return [Array<Hash<String,String>>]
    #
    # @!attribute [rw] status_codes
    #   A list of entity status codes (`IMPAIRED`, `UNIMPAIRED`, or
    #   `UNKNOWN`).
    #   @return [Array<String>]
    #
    class EntityFilter < Struct.new(
      :event_arns,
      :entity_arns,
      :entity_values,
      :last_updated_times,
      :tags,
      :status_codes)
      include Aws::Structure
    end

    # Summary information about an event, returned by the DescribeEvents
    # operation. The DescribeEventDetails operation also returns this
    # information, as well as the EventDescription and additional event
    # metadata.
    #
    # @!attribute [rw] arn
    #   The unique identifier for the event. Format:
    #   `arn:aws:health:event-region::event/EVENT_TYPE_PLUS_ID `. Example:
    #   `arn:aws:health:us-east-1::event/AWS_EC2_MAINTENANCE_5331`
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The AWS service that is affected by the event. For example, `EC2`,
    #   `RDS`.
    #   @return [String]
    #
    # @!attribute [rw] event_type_code
    #   The unique identifier for the event type. The format is
    #   `AWS_SERVICE_DESCRIPTION `; for example,
    #   `AWS_EC2_SYSTEM_MAINTENANCE_EVENT`.
    #   @return [String]
    #
    # @!attribute [rw] event_type_category
    #   The
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The AWS region name of the event.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The AWS Availability Zone of the event. For example, us-east-1a.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The date and time that the event began.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time that the event ended.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The most recent date and time that the event was updated.
    #   @return [Time]
    #
    # @!attribute [rw] status_code
    #   The most recent status of the event. Possible values are `open`,
    #   `closed`, and `upcoming`.
    #   @return [String]
    #
    class Event < Struct.new(
      :arn,
      :service,
      :event_type_code,
      :event_type_category,
      :region,
      :availability_zone,
      :start_time,
      :end_time,
      :last_updated_time,
      :status_code)
      include Aws::Structure
    end

    # The number of events of each issue type. Returned by the
    # DescribeEventAggregates operation.
    #
    # @!attribute [rw] aggregate_value
    #   The issue type for the associated count.
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The number of events of the associated issue type.
    #   @return [Integer]
    #
    class EventAggregate < Struct.new(
      :aggregate_value,
      :count)
      include Aws::Structure
    end

    # The detailed description of the event. Included in the information
    # returned by the DescribeEventDetails operation.
    #
    # @!attribute [rw] latest_description
    #   The most recent description of the event.
    #   @return [String]
    #
    class EventDescription < Struct.new(
      :latest_description)
      include Aws::Structure
    end

    # Detailed information about an event. A combination of an Event object,
    # an EventDescription object, and additional metadata about the event.
    # Returned by the DescribeEventDetails operation.
    #
    # @!attribute [rw] event
    #   Summary information about the event.
    #   @return [Types::Event]
    #
    # @!attribute [rw] event_description
    #   The most recent description of the event.
    #   @return [Types::EventDescription]
    #
    # @!attribute [rw] event_metadata
    #   Additional metadata about the event.
    #   @return [Hash<String,String>]
    #
    class EventDetails < Struct.new(
      :event,
      :event_description,
      :event_metadata)
      include Aws::Structure
    end

    # Error information returned when a DescribeEventDetails operation
    # cannot find a specified event.
    #
    # @!attribute [rw] event_arn
    #   The unique identifier for the event. Format:
    #   `arn:aws:health:event-region::event/EVENT_TYPE_PLUS_ID `. Example:
    #   `arn:aws:health:us-east-1::event/AWS_EC2_MAINTENANCE_5331`
    #   @return [String]
    #
    # @!attribute [rw] error_name
    #   The name of the error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A message that describes the error.
    #   @return [String]
    #
    class EventDetailsErrorItem < Struct.new(
      :event_arn,
      :error_name,
      :error_message)
      include Aws::Structure
    end

    # The values to use to filter results from the DescribeEvents and
    # DescribeEventAggregates operations.
    #
    # @note When making an API call, you may pass EventFilter
    #   data as a hash:
    #
    #       {
    #         event_arns: ["eventArn"],
    #         event_type_codes: ["eventType"],
    #         services: ["service"],
    #         regions: ["region"],
    #         availability_zones: ["availabilityZone"],
    #         start_times: [
    #           {
    #             from: Time.now,
    #             to: Time.now,
    #           },
    #         ],
    #         end_times: [
    #           {
    #             from: Time.now,
    #             to: Time.now,
    #           },
    #         ],
    #         last_updated_times: [
    #           {
    #             from: Time.now,
    #             to: Time.now,
    #           },
    #         ],
    #         entity_arns: ["entityArn"],
    #         entity_values: ["entityValue"],
    #         event_type_categories: ["issue"], # accepts issue, accountNotification, scheduledChange
    #         tags: [
    #           {
    #             "tagKey" => "tagValue",
    #           },
    #         ],
    #         event_status_codes: ["open"], # accepts open, closed, upcoming
    #       }
    #
    # @!attribute [rw] event_arns
    #   A list of event ARNs (unique identifiers). For example:
    #   `"arn:aws:health:us-east-1::event/AWS_EC2_MAINTENANCE_5331",
    #   "arn:aws:health:us-west-1::event/AWS_EBS_LOST_VOLUME_xyz"`
    #   @return [Array<String>]
    #
    # @!attribute [rw] event_type_codes
    #   A list of unique identifiers for event types. For example,
    #   `"AWS_EC2_SYSTEM_MAINTENANCE_EVENT","AWS_RDS_MAINTENANCE_SCHEDULED"`
    #   @return [Array<String>]
    #
    # @!attribute [rw] services
    #   The AWS services associated with the event. For example, `EC2`,
    #   `RDS`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] regions
    #   A list of AWS regions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] availability_zones
    #   A list of AWS availability zones.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_times
    #   A list of dates and times that the event began.
    #   @return [Array<Types::DateTimeRange>]
    #
    # @!attribute [rw] end_times
    #   A list of dates and times that the event ended.
    #   @return [Array<Types::DateTimeRange>]
    #
    # @!attribute [rw] last_updated_times
    #   A list of dates and times that the event was last updated.
    #   @return [Array<Types::DateTimeRange>]
    #
    # @!attribute [rw] entity_arns
    #   A list of entity ARNs (unique identifiers).
    #   @return [Array<String>]
    #
    # @!attribute [rw] entity_values
    #   A list of entity identifiers, such as EC2 instance IDs
    #   (`i-34ab692e`) or EBS volumes (`vol-426ab23e`).
    #   @return [Array<String>]
    #
    # @!attribute [rw] event_type_categories
    #   A list of event type category codes (`issue`, `scheduledChange`, or
    #   `accountNotification`).
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A map of entity tags attached to the affected entity.
    #   @return [Array<Hash<String,String>>]
    #
    # @!attribute [rw] event_status_codes
    #   A list of event status codes.
    #   @return [Array<String>]
    #
    class EventFilter < Struct.new(
      :event_arns,
      :event_type_codes,
      :services,
      :regions,
      :availability_zones,
      :start_times,
      :end_times,
      :last_updated_times,
      :entity_arns,
      :entity_values,
      :event_type_categories,
      :tags,
      :event_status_codes)
      include Aws::Structure
    end

    # Metadata about a type of event that is reported by AWS Health. Data
    # consists of the category (for example, `issue`, the service (for
    # example, `EC2`), and the event type code (for example,
    # `AWS_EC2_SYSTEM_MAINTENANCE_EVENT`).
    #
    # @!attribute [rw] service
    #   The AWS service that is affected by the event. For example, `EC2`,
    #   `RDS`.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The unique identifier for the event type. The format is
    #   `AWS_SERVICE_DESCRIPTION `; for example,
    #   `AWS_EC2_SYSTEM_MAINTENANCE_EVENT`.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   A list of event type category codes (`issue`, `scheduledChange`, or
    #   `accountNotification`).
    #   @return [String]
    #
    class EventType < Struct.new(
      :service,
      :code,
      :category)
      include Aws::Structure
    end

    # The values to use to filter results from the DescribeEventTypes
    # operation.
    #
    # @note When making an API call, you may pass EventTypeFilter
    #   data as a hash:
    #
    #       {
    #         event_type_codes: ["eventTypeCode"],
    #         services: ["service"],
    #         event_type_categories: ["issue"], # accepts issue, accountNotification, scheduledChange
    #       }
    #
    # @!attribute [rw] event_type_codes
    #   A list of event type codes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] services
    #   The AWS services associated with the event. For example, `EC2`,
    #   `RDS`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] event_type_categories
    #   A list of event type category codes (`issue`, `scheduledChange`, or
    #   `accountNotification`).
    #   @return [Array<String>]
    #
    class EventTypeFilter < Struct.new(
      :event_type_codes,
      :services,
      :event_type_categories)
      include Aws::Structure
    end

  end
end
