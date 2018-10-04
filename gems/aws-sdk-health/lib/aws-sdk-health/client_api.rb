# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Health
  # @api private
  module ClientApi

    include Seahorse::Model

    AffectedEntity = Shapes::StructureShape.new(name: 'AffectedEntity')
    DateTimeRange = Shapes::StructureShape.new(name: 'DateTimeRange')
    DescribeAffectedEntitiesRequest = Shapes::StructureShape.new(name: 'DescribeAffectedEntitiesRequest')
    DescribeAffectedEntitiesResponse = Shapes::StructureShape.new(name: 'DescribeAffectedEntitiesResponse')
    DescribeEntityAggregatesRequest = Shapes::StructureShape.new(name: 'DescribeEntityAggregatesRequest')
    DescribeEntityAggregatesResponse = Shapes::StructureShape.new(name: 'DescribeEntityAggregatesResponse')
    DescribeEventAggregatesRequest = Shapes::StructureShape.new(name: 'DescribeEventAggregatesRequest')
    DescribeEventAggregatesResponse = Shapes::StructureShape.new(name: 'DescribeEventAggregatesResponse')
    DescribeEventDetailsFailedSet = Shapes::ListShape.new(name: 'DescribeEventDetailsFailedSet')
    DescribeEventDetailsRequest = Shapes::StructureShape.new(name: 'DescribeEventDetailsRequest')
    DescribeEventDetailsResponse = Shapes::StructureShape.new(name: 'DescribeEventDetailsResponse')
    DescribeEventDetailsSuccessfulSet = Shapes::ListShape.new(name: 'DescribeEventDetailsSuccessfulSet')
    DescribeEventTypesRequest = Shapes::StructureShape.new(name: 'DescribeEventTypesRequest')
    DescribeEventTypesResponse = Shapes::StructureShape.new(name: 'DescribeEventTypesResponse')
    DescribeEventsRequest = Shapes::StructureShape.new(name: 'DescribeEventsRequest')
    DescribeEventsResponse = Shapes::StructureShape.new(name: 'DescribeEventsResponse')
    EntityAggregate = Shapes::StructureShape.new(name: 'EntityAggregate')
    EntityAggregateList = Shapes::ListShape.new(name: 'EntityAggregateList')
    EntityFilter = Shapes::StructureShape.new(name: 'EntityFilter')
    EntityList = Shapes::ListShape.new(name: 'EntityList')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventAggregate = Shapes::StructureShape.new(name: 'EventAggregate')
    EventAggregateList = Shapes::ListShape.new(name: 'EventAggregateList')
    EventArnsList = Shapes::ListShape.new(name: 'EventArnsList')
    EventDescription = Shapes::StructureShape.new(name: 'EventDescription')
    EventDetails = Shapes::StructureShape.new(name: 'EventDetails')
    EventDetailsErrorItem = Shapes::StructureShape.new(name: 'EventDetailsErrorItem')
    EventFilter = Shapes::StructureShape.new(name: 'EventFilter')
    EventList = Shapes::ListShape.new(name: 'EventList')
    EventType = Shapes::StructureShape.new(name: 'EventType')
    EventTypeCategoryList = Shapes::ListShape.new(name: 'EventTypeCategoryList')
    EventTypeCodeList = Shapes::ListShape.new(name: 'EventTypeCodeList')
    EventTypeFilter = Shapes::StructureShape.new(name: 'EventTypeFilter')
    EventTypeList = Shapes::ListShape.new(name: 'EventTypeList')
    InvalidPaginationToken = Shapes::StructureShape.new(name: 'InvalidPaginationToken')
    UnsupportedLocale = Shapes::StructureShape.new(name: 'UnsupportedLocale')
    accountId = Shapes::StringShape.new(name: 'accountId')
    aggregateValue = Shapes::StringShape.new(name: 'aggregateValue')
    availabilityZone = Shapes::StringShape.new(name: 'availabilityZone')
    availabilityZones = Shapes::ListShape.new(name: 'availabilityZones')
    count = Shapes::IntegerShape.new(name: 'count')
    dateTimeRangeList = Shapes::ListShape.new(name: 'dateTimeRangeList')
    entityArn = Shapes::StringShape.new(name: 'entityArn')
    entityArnList = Shapes::ListShape.new(name: 'entityArnList')
    entityStatusCode = Shapes::StringShape.new(name: 'entityStatusCode')
    entityStatusCodeList = Shapes::ListShape.new(name: 'entityStatusCodeList')
    entityValue = Shapes::StringShape.new(name: 'entityValue')
    entityValueList = Shapes::ListShape.new(name: 'entityValueList')
    eventAggregateField = Shapes::StringShape.new(name: 'eventAggregateField')
    eventArn = Shapes::StringShape.new(name: 'eventArn')
    eventArnList = Shapes::ListShape.new(name: 'eventArnList')
    eventDescription = Shapes::StringShape.new(name: 'eventDescription')
    eventMetadata = Shapes::MapShape.new(name: 'eventMetadata')
    eventStatusCode = Shapes::StringShape.new(name: 'eventStatusCode')
    eventStatusCodeList = Shapes::ListShape.new(name: 'eventStatusCodeList')
    eventType = Shapes::StringShape.new(name: 'eventType')
    eventTypeCategory = Shapes::StringShape.new(name: 'eventTypeCategory')
    eventTypeCategoryList = Shapes::ListShape.new(name: 'eventTypeCategoryList')
    eventTypeCode = Shapes::StringShape.new(name: 'eventTypeCode')
    eventTypeList = Shapes::ListShape.new(name: 'eventTypeList')
    locale = Shapes::StringShape.new(name: 'locale')
    maxResults = Shapes::IntegerShape.new(name: 'maxResults')
    metadataKey = Shapes::StringShape.new(name: 'metadataKey')
    metadataValue = Shapes::StringShape.new(name: 'metadataValue')
    nextToken = Shapes::StringShape.new(name: 'nextToken')
    region = Shapes::StringShape.new(name: 'region')
    regionList = Shapes::ListShape.new(name: 'regionList')
    service = Shapes::StringShape.new(name: 'service')
    serviceList = Shapes::ListShape.new(name: 'serviceList')
    string = Shapes::StringShape.new(name: 'string')
    tagFilter = Shapes::ListShape.new(name: 'tagFilter')
    tagKey = Shapes::StringShape.new(name: 'tagKey')
    tagSet = Shapes::MapShape.new(name: 'tagSet')
    tagValue = Shapes::StringShape.new(name: 'tagValue')
    timestamp = Shapes::TimestampShape.new(name: 'timestamp')

    AffectedEntity.add_member(:entity_arn, Shapes::ShapeRef.new(shape: entityArn, location_name: "entityArn"))
    AffectedEntity.add_member(:event_arn, Shapes::ShapeRef.new(shape: eventArn, location_name: "eventArn"))
    AffectedEntity.add_member(:entity_value, Shapes::ShapeRef.new(shape: entityValue, location_name: "entityValue"))
    AffectedEntity.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: accountId, location_name: "awsAccountId"))
    AffectedEntity.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "lastUpdatedTime"))
    AffectedEntity.add_member(:status_code, Shapes::ShapeRef.new(shape: entityStatusCode, location_name: "statusCode"))
    AffectedEntity.add_member(:tags, Shapes::ShapeRef.new(shape: tagSet, location_name: "tags"))
    AffectedEntity.struct_class = Types::AffectedEntity

    DateTimeRange.add_member(:from, Shapes::ShapeRef.new(shape: timestamp, location_name: "from"))
    DateTimeRange.add_member(:to, Shapes::ShapeRef.new(shape: timestamp, location_name: "to"))
    DateTimeRange.struct_class = Types::DateTimeRange

    DescribeAffectedEntitiesRequest.add_member(:filter, Shapes::ShapeRef.new(shape: EntityFilter, required: true, location_name: "filter"))
    DescribeAffectedEntitiesRequest.add_member(:locale, Shapes::ShapeRef.new(shape: locale, location_name: "locale"))
    DescribeAffectedEntitiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    DescribeAffectedEntitiesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxResults, location_name: "maxResults"))
    DescribeAffectedEntitiesRequest.struct_class = Types::DescribeAffectedEntitiesRequest

    DescribeAffectedEntitiesResponse.add_member(:entities, Shapes::ShapeRef.new(shape: EntityList, location_name: "entities"))
    DescribeAffectedEntitiesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    DescribeAffectedEntitiesResponse.struct_class = Types::DescribeAffectedEntitiesResponse

    DescribeEntityAggregatesRequest.add_member(:event_arns, Shapes::ShapeRef.new(shape: EventArnsList, location_name: "eventArns"))
    DescribeEntityAggregatesRequest.struct_class = Types::DescribeEntityAggregatesRequest

    DescribeEntityAggregatesResponse.add_member(:entity_aggregates, Shapes::ShapeRef.new(shape: EntityAggregateList, location_name: "entityAggregates"))
    DescribeEntityAggregatesResponse.struct_class = Types::DescribeEntityAggregatesResponse

    DescribeEventAggregatesRequest.add_member(:filter, Shapes::ShapeRef.new(shape: EventFilter, location_name: "filter"))
    DescribeEventAggregatesRequest.add_member(:aggregate_field, Shapes::ShapeRef.new(shape: eventAggregateField, required: true, location_name: "aggregateField"))
    DescribeEventAggregatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxResults, location_name: "maxResults"))
    DescribeEventAggregatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    DescribeEventAggregatesRequest.struct_class = Types::DescribeEventAggregatesRequest

    DescribeEventAggregatesResponse.add_member(:event_aggregates, Shapes::ShapeRef.new(shape: EventAggregateList, location_name: "eventAggregates"))
    DescribeEventAggregatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    DescribeEventAggregatesResponse.struct_class = Types::DescribeEventAggregatesResponse

    DescribeEventDetailsFailedSet.member = Shapes::ShapeRef.new(shape: EventDetailsErrorItem)

    DescribeEventDetailsRequest.add_member(:event_arns, Shapes::ShapeRef.new(shape: eventArnList, required: true, location_name: "eventArns"))
    DescribeEventDetailsRequest.add_member(:locale, Shapes::ShapeRef.new(shape: locale, location_name: "locale"))
    DescribeEventDetailsRequest.struct_class = Types::DescribeEventDetailsRequest

    DescribeEventDetailsResponse.add_member(:successful_set, Shapes::ShapeRef.new(shape: DescribeEventDetailsSuccessfulSet, location_name: "successfulSet"))
    DescribeEventDetailsResponse.add_member(:failed_set, Shapes::ShapeRef.new(shape: DescribeEventDetailsFailedSet, location_name: "failedSet"))
    DescribeEventDetailsResponse.struct_class = Types::DescribeEventDetailsResponse

    DescribeEventDetailsSuccessfulSet.member = Shapes::ShapeRef.new(shape: EventDetails)

    DescribeEventTypesRequest.add_member(:filter, Shapes::ShapeRef.new(shape: EventTypeFilter, location_name: "filter"))
    DescribeEventTypesRequest.add_member(:locale, Shapes::ShapeRef.new(shape: locale, location_name: "locale"))
    DescribeEventTypesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    DescribeEventTypesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxResults, location_name: "maxResults"))
    DescribeEventTypesRequest.struct_class = Types::DescribeEventTypesRequest

    DescribeEventTypesResponse.add_member(:event_types, Shapes::ShapeRef.new(shape: EventTypeList, location_name: "eventTypes"))
    DescribeEventTypesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    DescribeEventTypesResponse.struct_class = Types::DescribeEventTypesResponse

    DescribeEventsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: EventFilter, location_name: "filter"))
    DescribeEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    DescribeEventsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxResults, location_name: "maxResults"))
    DescribeEventsRequest.add_member(:locale, Shapes::ShapeRef.new(shape: locale, location_name: "locale"))
    DescribeEventsRequest.struct_class = Types::DescribeEventsRequest

    DescribeEventsResponse.add_member(:events, Shapes::ShapeRef.new(shape: EventList, location_name: "events"))
    DescribeEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    DescribeEventsResponse.struct_class = Types::DescribeEventsResponse

    EntityAggregate.add_member(:event_arn, Shapes::ShapeRef.new(shape: eventArn, location_name: "eventArn"))
    EntityAggregate.add_member(:count, Shapes::ShapeRef.new(shape: count, location_name: "count"))
    EntityAggregate.struct_class = Types::EntityAggregate

    EntityAggregateList.member = Shapes::ShapeRef.new(shape: EntityAggregate)

    EntityFilter.add_member(:event_arns, Shapes::ShapeRef.new(shape: eventArnList, required: true, location_name: "eventArns"))
    EntityFilter.add_member(:entity_arns, Shapes::ShapeRef.new(shape: entityArnList, location_name: "entityArns"))
    EntityFilter.add_member(:entity_values, Shapes::ShapeRef.new(shape: entityValueList, location_name: "entityValues"))
    EntityFilter.add_member(:last_updated_times, Shapes::ShapeRef.new(shape: dateTimeRangeList, location_name: "lastUpdatedTimes"))
    EntityFilter.add_member(:tags, Shapes::ShapeRef.new(shape: tagFilter, location_name: "tags"))
    EntityFilter.add_member(:status_codes, Shapes::ShapeRef.new(shape: entityStatusCodeList, location_name: "statusCodes"))
    EntityFilter.struct_class = Types::EntityFilter

    EntityList.member = Shapes::ShapeRef.new(shape: AffectedEntity)

    Event.add_member(:arn, Shapes::ShapeRef.new(shape: eventArn, location_name: "arn"))
    Event.add_member(:service, Shapes::ShapeRef.new(shape: service, location_name: "service"))
    Event.add_member(:event_type_code, Shapes::ShapeRef.new(shape: eventTypeCode, location_name: "eventTypeCode"))
    Event.add_member(:event_type_category, Shapes::ShapeRef.new(shape: eventTypeCategory, location_name: "eventTypeCategory"))
    Event.add_member(:region, Shapes::ShapeRef.new(shape: region, location_name: "region"))
    Event.add_member(:availability_zone, Shapes::ShapeRef.new(shape: availabilityZone, location_name: "availabilityZone"))
    Event.add_member(:start_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "startTime"))
    Event.add_member(:end_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "endTime"))
    Event.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "lastUpdatedTime"))
    Event.add_member(:status_code, Shapes::ShapeRef.new(shape: eventStatusCode, location_name: "statusCode"))
    Event.struct_class = Types::Event

    EventAggregate.add_member(:aggregate_value, Shapes::ShapeRef.new(shape: aggregateValue, location_name: "aggregateValue"))
    EventAggregate.add_member(:count, Shapes::ShapeRef.new(shape: count, location_name: "count"))
    EventAggregate.struct_class = Types::EventAggregate

    EventAggregateList.member = Shapes::ShapeRef.new(shape: EventAggregate)

    EventArnsList.member = Shapes::ShapeRef.new(shape: eventArn)

    EventDescription.add_member(:latest_description, Shapes::ShapeRef.new(shape: eventDescription, location_name: "latestDescription"))
    EventDescription.struct_class = Types::EventDescription

    EventDetails.add_member(:event, Shapes::ShapeRef.new(shape: Event, location_name: "event"))
    EventDetails.add_member(:event_description, Shapes::ShapeRef.new(shape: EventDescription, location_name: "eventDescription"))
    EventDetails.add_member(:event_metadata, Shapes::ShapeRef.new(shape: eventMetadata, location_name: "eventMetadata"))
    EventDetails.struct_class = Types::EventDetails

    EventDetailsErrorItem.add_member(:event_arn, Shapes::ShapeRef.new(shape: eventArn, location_name: "eventArn"))
    EventDetailsErrorItem.add_member(:error_name, Shapes::ShapeRef.new(shape: string, location_name: "errorName"))
    EventDetailsErrorItem.add_member(:error_message, Shapes::ShapeRef.new(shape: string, location_name: "errorMessage"))
    EventDetailsErrorItem.struct_class = Types::EventDetailsErrorItem

    EventFilter.add_member(:event_arns, Shapes::ShapeRef.new(shape: eventArnList, location_name: "eventArns"))
    EventFilter.add_member(:event_type_codes, Shapes::ShapeRef.new(shape: eventTypeList, location_name: "eventTypeCodes"))
    EventFilter.add_member(:services, Shapes::ShapeRef.new(shape: serviceList, location_name: "services"))
    EventFilter.add_member(:regions, Shapes::ShapeRef.new(shape: regionList, location_name: "regions"))
    EventFilter.add_member(:availability_zones, Shapes::ShapeRef.new(shape: availabilityZones, location_name: "availabilityZones"))
    EventFilter.add_member(:start_times, Shapes::ShapeRef.new(shape: dateTimeRangeList, location_name: "startTimes"))
    EventFilter.add_member(:end_times, Shapes::ShapeRef.new(shape: dateTimeRangeList, location_name: "endTimes"))
    EventFilter.add_member(:last_updated_times, Shapes::ShapeRef.new(shape: dateTimeRangeList, location_name: "lastUpdatedTimes"))
    EventFilter.add_member(:entity_arns, Shapes::ShapeRef.new(shape: entityArnList, location_name: "entityArns"))
    EventFilter.add_member(:entity_values, Shapes::ShapeRef.new(shape: entityValueList, location_name: "entityValues"))
    EventFilter.add_member(:event_type_categories, Shapes::ShapeRef.new(shape: eventTypeCategoryList, location_name: "eventTypeCategories"))
    EventFilter.add_member(:tags, Shapes::ShapeRef.new(shape: tagFilter, location_name: "tags"))
    EventFilter.add_member(:event_status_codes, Shapes::ShapeRef.new(shape: eventStatusCodeList, location_name: "eventStatusCodes"))
    EventFilter.struct_class = Types::EventFilter

    EventList.member = Shapes::ShapeRef.new(shape: Event)

    EventType.add_member(:service, Shapes::ShapeRef.new(shape: service, location_name: "service"))
    EventType.add_member(:code, Shapes::ShapeRef.new(shape: eventTypeCode, location_name: "code"))
    EventType.add_member(:category, Shapes::ShapeRef.new(shape: eventTypeCategory, location_name: "category"))
    EventType.struct_class = Types::EventType

    EventTypeCategoryList.member = Shapes::ShapeRef.new(shape: eventTypeCategory)

    EventTypeCodeList.member = Shapes::ShapeRef.new(shape: eventTypeCode)

    EventTypeFilter.add_member(:event_type_codes, Shapes::ShapeRef.new(shape: EventTypeCodeList, location_name: "eventTypeCodes"))
    EventTypeFilter.add_member(:services, Shapes::ShapeRef.new(shape: serviceList, location_name: "services"))
    EventTypeFilter.add_member(:event_type_categories, Shapes::ShapeRef.new(shape: EventTypeCategoryList, location_name: "eventTypeCategories"))
    EventTypeFilter.struct_class = Types::EventTypeFilter

    EventTypeList.member = Shapes::ShapeRef.new(shape: EventType)

    availabilityZones.member = Shapes::ShapeRef.new(shape: availabilityZone)

    dateTimeRangeList.member = Shapes::ShapeRef.new(shape: DateTimeRange)

    entityArnList.member = Shapes::ShapeRef.new(shape: entityArn)

    entityStatusCodeList.member = Shapes::ShapeRef.new(shape: entityStatusCode)

    entityValueList.member = Shapes::ShapeRef.new(shape: entityValue)

    eventArnList.member = Shapes::ShapeRef.new(shape: eventArn)

    eventMetadata.key = Shapes::ShapeRef.new(shape: metadataKey)
    eventMetadata.value = Shapes::ShapeRef.new(shape: metadataValue)

    eventStatusCodeList.member = Shapes::ShapeRef.new(shape: eventStatusCode)

    eventTypeCategoryList.member = Shapes::ShapeRef.new(shape: eventTypeCategory)

    eventTypeList.member = Shapes::ShapeRef.new(shape: eventType)

    regionList.member = Shapes::ShapeRef.new(shape: region)

    serviceList.member = Shapes::ShapeRef.new(shape: service)

    tagFilter.member = Shapes::ShapeRef.new(shape: tagSet)

    tagSet.key = Shapes::ShapeRef.new(shape: tagKey)
    tagSet.value = Shapes::ShapeRef.new(shape: tagValue)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-08-04"

      api.metadata = {
        "apiVersion" => "2016-08-04",
        "endpointPrefix" => "health",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "AWSHealth",
        "serviceFullName" => "AWS Health APIs and Notifications",
        "serviceId" => "Health",
        "signatureVersion" => "v4",
        "targetPrefix" => "AWSHealth_20160804",
        "uid" => "health-2016-08-04",
      }

      api.add_operation(:describe_affected_entities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAffectedEntities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAffectedEntitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAffectedEntitiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationToken)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedLocale)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_entity_aggregates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEntityAggregates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEntityAggregatesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEntityAggregatesResponse)
      end)

      api.add_operation(:describe_event_aggregates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEventAggregates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventAggregatesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEventAggregatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_event_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEventDetails"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventDetailsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEventDetailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedLocale)
      end)

      api.add_operation(:describe_event_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEventTypes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventTypesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEventTypesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationToken)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedLocale)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationToken)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedLocale)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)
    end

  end
end
