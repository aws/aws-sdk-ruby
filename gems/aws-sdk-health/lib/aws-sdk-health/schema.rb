# frozen_string_literal: true

# This is generated code!

module Aws::Health
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccountEntityAggregate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#AccountEntityAggregate', name: 'AccountEntityAggregate')
    AccountEntityAggregatesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#AccountEntityAggregatesList', name: 'AccountEntityAggregatesList')
    AffectedEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#AffectedEntity', name: 'AffectedEntity')
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#ConcurrentModificationException', name: 'ConcurrentModificationException', traits: {"smithy.api#error" => "client"})
    DateTimeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#DateTimeRange', name: 'DateTimeRange')
    DescribeAffectedAccountsForOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#DescribeAffectedAccountsForOrganizationRequest', name: 'DescribeAffectedAccountsForOrganizationRequest')
    DescribeAffectedAccountsForOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#DescribeAffectedAccountsForOrganizationResponse', name: 'DescribeAffectedAccountsForOrganizationResponse')
    DescribeAffectedEntitiesForOrganizationFailedSet = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#DescribeAffectedEntitiesForOrganizationFailedSet', name: 'DescribeAffectedEntitiesForOrganizationFailedSet')
    DescribeAffectedEntitiesForOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#DescribeAffectedEntitiesForOrganizationRequest', name: 'DescribeAffectedEntitiesForOrganizationRequest')
    DescribeAffectedEntitiesForOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#DescribeAffectedEntitiesForOrganizationResponse', name: 'DescribeAffectedEntitiesForOrganizationResponse')
    DescribeAffectedEntitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#DescribeAffectedEntitiesRequest', name: 'DescribeAffectedEntitiesRequest')
    DescribeAffectedEntitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#DescribeAffectedEntitiesResponse', name: 'DescribeAffectedEntitiesResponse')
    DescribeEntityAggregatesForOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#DescribeEntityAggregatesForOrganizationRequest', name: 'DescribeEntityAggregatesForOrganizationRequest')
    DescribeEntityAggregatesForOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#DescribeEntityAggregatesForOrganizationResponse', name: 'DescribeEntityAggregatesForOrganizationResponse')
    DescribeEntityAggregatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#DescribeEntityAggregatesRequest', name: 'DescribeEntityAggregatesRequest')
    DescribeEntityAggregatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#DescribeEntityAggregatesResponse', name: 'DescribeEntityAggregatesResponse')
    DescribeEventAggregatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#DescribeEventAggregatesRequest', name: 'DescribeEventAggregatesRequest')
    DescribeEventAggregatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#DescribeEventAggregatesResponse', name: 'DescribeEventAggregatesResponse')
    DescribeEventDetailsFailedSet = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#DescribeEventDetailsFailedSet', name: 'DescribeEventDetailsFailedSet')
    DescribeEventDetailsForOrganizationFailedSet = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#DescribeEventDetailsForOrganizationFailedSet', name: 'DescribeEventDetailsForOrganizationFailedSet')
    DescribeEventDetailsForOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#DescribeEventDetailsForOrganizationRequest', name: 'DescribeEventDetailsForOrganizationRequest')
    DescribeEventDetailsForOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#DescribeEventDetailsForOrganizationResponse', name: 'DescribeEventDetailsForOrganizationResponse')
    DescribeEventDetailsForOrganizationSuccessfulSet = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#DescribeEventDetailsForOrganizationSuccessfulSet', name: 'DescribeEventDetailsForOrganizationSuccessfulSet')
    DescribeEventDetailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#DescribeEventDetailsRequest', name: 'DescribeEventDetailsRequest')
    DescribeEventDetailsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#DescribeEventDetailsResponse', name: 'DescribeEventDetailsResponse')
    DescribeEventDetailsSuccessfulSet = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#DescribeEventDetailsSuccessfulSet', name: 'DescribeEventDetailsSuccessfulSet')
    DescribeEventTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#DescribeEventTypesRequest', name: 'DescribeEventTypesRequest')
    DescribeEventTypesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#DescribeEventTypesResponse', name: 'DescribeEventTypesResponse')
    DescribeEventsForOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#DescribeEventsForOrganizationRequest', name: 'DescribeEventsForOrganizationRequest')
    DescribeEventsForOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#DescribeEventsForOrganizationResponse', name: 'DescribeEventsForOrganizationResponse')
    DescribeEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#DescribeEventsRequest', name: 'DescribeEventsRequest')
    DescribeEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#DescribeEventsResponse', name: 'DescribeEventsResponse')
    DescribeHealthServiceStatusForOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#DescribeHealthServiceStatusForOrganizationResponse', name: 'DescribeHealthServiceStatusForOrganizationResponse')
    EntityAccountFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#EntityAccountFilter', name: 'EntityAccountFilter')
    EntityAggregate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#EntityAggregate', name: 'EntityAggregate')
    EntityAggregateList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#EntityAggregateList', name: 'EntityAggregateList')
    EntityFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#EntityFilter', name: 'EntityFilter')
    EntityList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#EntityList', name: 'EntityList')
    Event = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#Event', name: 'Event')
    EventAccountFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#EventAccountFilter', name: 'EventAccountFilter')
    EventAggregate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#EventAggregate', name: 'EventAggregate')
    EventAggregateList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#EventAggregateList', name: 'EventAggregateList')
    EventArnsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#EventArnsList', name: 'EventArnsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    EventDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#EventDescription', name: 'EventDescription')
    EventDescription2 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.health#EventDescription2', name: 'EventDescription2')
    EventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#EventDetails', name: 'EventDetails')
    EventDetailsErrorItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#EventDetailsErrorItem', name: 'EventDetailsErrorItem')
    EventFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#EventFilter', name: 'EventFilter')
    EventList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#EventList', name: 'EventList')
    EventType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#EventType', name: 'EventType')
    EventType2 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.health#EventType2', name: 'EventType2', traits: {"smithy.api#length" => {"min" => 3, "max" => 100}, "smithy.api#pattern" => "^[^:/]{3,100}$"})
    EventTypeCategoryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#EventTypeCategoryList', name: 'EventTypeCategoryList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    EventTypeCodeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#EventTypeCodeList', name: 'EventTypeCodeList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    EventTypeFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#EventTypeFilter', name: 'EventTypeFilter')
    EventTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#EventTypeList', name: 'EventTypeList')
    InvalidPaginationToken = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#InvalidPaginationToken', name: 'InvalidPaginationToken', traits: {"smithy.api#error" => "client"})
    OrganizationAccountIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#OrganizationAccountIdsList', name: 'OrganizationAccountIdsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    OrganizationAffectedEntitiesErrorItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#OrganizationAffectedEntitiesErrorItem', name: 'OrganizationAffectedEntitiesErrorItem')
    OrganizationEntityAccountFiltersList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#OrganizationEntityAccountFiltersList', name: 'OrganizationEntityAccountFiltersList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    OrganizationEntityAggregate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#OrganizationEntityAggregate', name: 'OrganizationEntityAggregate')
    OrganizationEntityAggregatesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#OrganizationEntityAggregatesList', name: 'OrganizationEntityAggregatesList')
    OrganizationEntityFiltersList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#OrganizationEntityFiltersList', name: 'OrganizationEntityFiltersList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    OrganizationEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#OrganizationEvent', name: 'OrganizationEvent')
    OrganizationEventArnsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#OrganizationEventArnsList', name: 'OrganizationEventArnsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    OrganizationEventDetailFiltersList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#OrganizationEventDetailFiltersList', name: 'OrganizationEventDetailFiltersList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    OrganizationEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#OrganizationEventDetails', name: 'OrganizationEventDetails')
    OrganizationEventDetailsErrorItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#OrganizationEventDetailsErrorItem', name: 'OrganizationEventDetailsErrorItem')
    OrganizationEventFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#OrganizationEventFilter', name: 'OrganizationEventFilter')
    OrganizationEventList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#OrganizationEventList', name: 'OrganizationEventList')
    UnsupportedLocale = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.health#UnsupportedLocale', name: 'UnsupportedLocale', traits: {"smithy.api#error" => "client"})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.health#accountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 0, "max" => 12}, "smithy.api#pattern" => "^\\S+$"})
    AffectedAccountsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#affectedAccountsList', name: 'AffectedAccountsList')
    AggregateValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.health#aggregateValue', name: 'AggregateValue')
    AvailabilityZone = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.health#availabilityZone', name: 'AvailabilityZone', traits: {"smithy.api#length" => {"min" => 6, "max" => 18}, "smithy.api#pattern" => "^[a-z]{2}\\-[0-9a-z\\-]{4,16}$"})
    AvailabilityZones = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#availabilityZones', name: 'AvailabilityZones')
    AwsAccountIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#awsAccountIdsList', name: 'AwsAccountIdsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    Count = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.health#count', name: 'Count', traits: {"smithy.api#default" => 0})
    DateTimeRangeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#dateTimeRangeList', name: 'DateTimeRangeList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    EntityArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.health#entityArn', name: 'EntityArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1600}, "smithy.api#pattern" => "^.{0,1600}$"})
    EntityArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#entityArnList', name: 'EntityArnList', traits: {"smithy.api#length" => {"min" => 1, "max" => 99}})
    EntityMetadata = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.health#entityMetadata', name: 'EntityMetadata')
    EntityMetadataKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.health#entityMetadataKey', name: 'EntityMetadataKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    EntityMetadataValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.health#entityMetadataValue', name: 'EntityMetadataValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    EntityStatusCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.health#entityStatusCode', name: 'EntityStatusCode')
    EntityStatusCodeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#entityStatusCodeList', name: 'EntityStatusCodeList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    EntityStatuses = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.health#entityStatuses', name: 'EntityStatuses')
    EntityUrl = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.health#entityUrl', name: 'EntityUrl')
    EntityValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.health#entityValue', name: 'EntityValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 1224}, "smithy.api#pattern" => "^.{0,1224}$"})
    EntityValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#entityValueList', name: 'EntityValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 99}})
    EventAggregateField = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.health#eventAggregateField', name: 'EventAggregateField')
    EventArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.health#eventArn', name: 'EventArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1600}, "smithy.api#pattern" => "^arn:aws(-[a-z]+(-[a-z]+)?)?:health:[^:]*:[^:]*:event(?:/[\\w-]+){3}$"})
    EventArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#eventArnList', name: 'EventArnList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    EventMetadata = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.health#eventMetadata', name: 'EventMetadata')
    EventScopeCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.health#eventScopeCode', name: 'EventScopeCode')
    EventStatusCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.health#eventStatusCode', name: 'EventStatusCode')
    EventStatusCodeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#eventStatusCodeList', name: 'EventStatusCodeList', traits: {"smithy.api#length" => {"min" => 1, "max" => 6}})
    EventTypeCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.health#eventTypeCategory', name: 'EventTypeCategory', traits: {"smithy.api#length" => {"min" => 3, "max" => 255}})
    EventTypeCategoryList2 = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#eventTypeCategoryList2', name: 'EventTypeCategoryList2', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    EventTypeCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.health#eventTypeCode', name: 'EventTypeCode', traits: {"smithy.api#length" => {"min" => 3, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9\\_\\-]{3,100}$"})
    EventTypeList2 = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#eventTypeList2', name: 'EventTypeList2', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    HealthServiceAccessStatusForOrganization = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.health#healthServiceAccessStatusForOrganization', name: 'HealthServiceAccessStatusForOrganization')
    Locale = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.health#locale', name: 'Locale', traits: {"smithy.api#length" => {"min" => 2, "max" => 256}, "smithy.api#pattern" => "^.{2,256}$"})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.health#maxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 10, "max" => 100}})
    MaxResultsLowerRange = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.health#maxResultsLowerRange', name: 'MaxResultsLowerRange', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MetadataKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.health#metadataKey', name: 'MetadataKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 32766}})
    MetadataValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.health#metadataValue', name: 'MetadataValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 32766}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.health#nextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 4, "max" => 10000}, "smithy.api#pattern" => "^[a-zA-Z0-9=/+_.-]{4,10000}$"})
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.health#region', name: 'Region', traits: {"smithy.api#length" => {"min" => 2, "max" => 25}, "smithy.api#pattern" => "^[^:/]{2,25}$"})
    RegionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#regionList', name: 'RegionList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Service = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.health#service', name: 'Service', traits: {"smithy.api#length" => {"min" => 2, "max" => 30}, "smithy.api#pattern" => "^[^:/]{2,30}$"})
    ServiceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#serviceList', name: 'ServiceList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.health#string', name: 'String')
    TagFilter = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.health#tagFilter', name: 'TagFilter', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.health#tagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 127}, "smithy.api#pattern" => "^.{0,127}$"})
    TagSet = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.health#tagSet', name: 'TagSet', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.health#tagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^.{0,255}$"})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.health#timestamp', name: 'Timestamp')

    AccountEntityAggregate.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventArn, location_name: 'accountId'))
    AccountEntityAggregate.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: 'count', traits: {"smithy.api#default" => 0}))
    AccountEntityAggregate.add_member(:statuses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStatuses, location_name: 'statuses'))
    AccountEntityAggregate.type = Types::AccountEntityAggregate
    AccountEntityAggregatesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountEntityAggregate)
    AffectedEntity.add_member(:entity_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityArn, location_name: 'entityArn'))
    AffectedEntity.add_member(:event_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventArn, location_name: 'eventArn'))
    AffectedEntity.add_member(:entity_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityValue, location_name: 'entityValue'))
    AffectedEntity.add_member(:entity_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityUrl, location_name: 'entityUrl'))
    AffectedEntity.add_member(:aws_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'awsAccountId'))
    AffectedEntity.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedTime'))
    AffectedEntity.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStatusCode, location_name: 'statusCode'))
    AffectedEntity.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagSet, location_name: 'tags'))
    AffectedEntity.add_member(:entity_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityMetadata, location_name: 'entityMetadata'))
    AffectedEntity.type = Types::AffectedEntity
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    DateTimeRange.add_member(:from, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'from'))
    DateTimeRange.add_member(:to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'to'))
    DateTimeRange.type = Types::DateTimeRange
    DescribeAffectedAccountsForOrganizationRequest.add_member(:event_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventArn, location_name: 'eventArn', traits: {"smithy.api#required" => {}}))
    DescribeAffectedAccountsForOrganizationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeAffectedAccountsForOrganizationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    DescribeAffectedAccountsForOrganizationRequest.type = Types::DescribeAffectedAccountsForOrganizationRequest
    DescribeAffectedAccountsForOrganizationResponse.add_member(:affected_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AffectedAccountsList, location_name: 'affectedAccounts'))
    DescribeAffectedAccountsForOrganizationResponse.add_member(:event_scope_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventScopeCode, location_name: 'eventScopeCode'))
    DescribeAffectedAccountsForOrganizationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeAffectedAccountsForOrganizationResponse.type = Types::DescribeAffectedAccountsForOrganizationResponse
    DescribeAffectedEntitiesForOrganizationFailedSet.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationAffectedEntitiesErrorItem)
    DescribeAffectedEntitiesForOrganizationRequest.add_member(:organization_entity_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationEntityFiltersList, location_name: 'organizationEntityFilters', traits: {"smithy.api#deprecated" => {"message" => "This property is deprecated, use organizationEntityAccountFilters instead."}}))
    DescribeAffectedEntitiesForOrganizationRequest.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: 'locale'))
    DescribeAffectedEntitiesForOrganizationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeAffectedEntitiesForOrganizationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsLowerRange, location_name: 'maxResults'))
    DescribeAffectedEntitiesForOrganizationRequest.add_member(:organization_entity_account_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationEntityAccountFiltersList, location_name: 'organizationEntityAccountFilters'))
    DescribeAffectedEntitiesForOrganizationRequest.type = Types::DescribeAffectedEntitiesForOrganizationRequest
    DescribeAffectedEntitiesForOrganizationResponse.add_member(:entities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityList, location_name: 'entities'))
    DescribeAffectedEntitiesForOrganizationResponse.add_member(:failed_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAffectedEntitiesForOrganizationFailedSet, location_name: 'failedSet'))
    DescribeAffectedEntitiesForOrganizationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeAffectedEntitiesForOrganizationResponse.type = Types::DescribeAffectedEntitiesForOrganizationResponse
    DescribeAffectedEntitiesRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityFilter, location_name: 'filter', traits: {"smithy.api#required" => {}}))
    DescribeAffectedEntitiesRequest.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: 'locale'))
    DescribeAffectedEntitiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeAffectedEntitiesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    DescribeAffectedEntitiesRequest.type = Types::DescribeAffectedEntitiesRequest
    DescribeAffectedEntitiesResponse.add_member(:entities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityList, location_name: 'entities'))
    DescribeAffectedEntitiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeAffectedEntitiesResponse.type = Types::DescribeAffectedEntitiesResponse
    DescribeEntityAggregatesForOrganizationRequest.add_member(:event_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationEventArnsList, location_name: 'eventArns', traits: {"smithy.api#required" => {}}))
    DescribeEntityAggregatesForOrganizationRequest.add_member(:aws_account_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationAccountIdsList, location_name: 'awsAccountIds'))
    DescribeEntityAggregatesForOrganizationRequest.type = Types::DescribeEntityAggregatesForOrganizationRequest
    DescribeEntityAggregatesForOrganizationResponse.add_member(:organization_entity_aggregates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationEntityAggregatesList, location_name: 'organizationEntityAggregates'))
    DescribeEntityAggregatesForOrganizationResponse.type = Types::DescribeEntityAggregatesForOrganizationResponse
    DescribeEntityAggregatesRequest.add_member(:event_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventArnsList, location_name: 'eventArns'))
    DescribeEntityAggregatesRequest.type = Types::DescribeEntityAggregatesRequest
    DescribeEntityAggregatesResponse.add_member(:entity_aggregates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityAggregateList, location_name: 'entityAggregates'))
    DescribeEntityAggregatesResponse.type = Types::DescribeEntityAggregatesResponse
    DescribeEventAggregatesRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventFilter, location_name: 'filter'))
    DescribeEventAggregatesRequest.add_member(:aggregate_field, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventAggregateField, location_name: 'aggregateField', traits: {"smithy.api#required" => {}}))
    DescribeEventAggregatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    DescribeEventAggregatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeEventAggregatesRequest.type = Types::DescribeEventAggregatesRequest
    DescribeEventAggregatesResponse.add_member(:event_aggregates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventAggregateList, location_name: 'eventAggregates'))
    DescribeEventAggregatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeEventAggregatesResponse.type = Types::DescribeEventAggregatesResponse
    DescribeEventDetailsFailedSet.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventDetailsErrorItem)
    DescribeEventDetailsForOrganizationFailedSet.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationEventDetailsErrorItem)
    DescribeEventDetailsForOrganizationRequest.add_member(:organization_event_detail_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationEventDetailFiltersList, location_name: 'organizationEventDetailFilters', traits: {"smithy.api#required" => {}}))
    DescribeEventDetailsForOrganizationRequest.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: 'locale'))
    DescribeEventDetailsForOrganizationRequest.type = Types::DescribeEventDetailsForOrganizationRequest
    DescribeEventDetailsForOrganizationResponse.add_member(:successful_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventDetailsForOrganizationSuccessfulSet, location_name: 'successfulSet'))
    DescribeEventDetailsForOrganizationResponse.add_member(:failed_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventDetailsForOrganizationFailedSet, location_name: 'failedSet'))
    DescribeEventDetailsForOrganizationResponse.type = Types::DescribeEventDetailsForOrganizationResponse
    DescribeEventDetailsForOrganizationSuccessfulSet.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationEventDetails)
    DescribeEventDetailsRequest.add_member(:event_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventArnList, location_name: 'eventArns', traits: {"smithy.api#required" => {}}))
    DescribeEventDetailsRequest.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: 'locale'))
    DescribeEventDetailsRequest.type = Types::DescribeEventDetailsRequest
    DescribeEventDetailsResponse.add_member(:successful_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventDetailsSuccessfulSet, location_name: 'successfulSet'))
    DescribeEventDetailsResponse.add_member(:failed_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventDetailsFailedSet, location_name: 'failedSet'))
    DescribeEventDetailsResponse.type = Types::DescribeEventDetailsResponse
    DescribeEventDetailsSuccessfulSet.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventDetails)
    DescribeEventTypesRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeFilter, location_name: 'filter'))
    DescribeEventTypesRequest.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: 'locale'))
    DescribeEventTypesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeEventTypesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    DescribeEventTypesRequest.type = Types::DescribeEventTypesRequest
    DescribeEventTypesResponse.add_member(:event_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeList, location_name: 'eventTypes'))
    DescribeEventTypesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeEventTypesResponse.type = Types::DescribeEventTypesResponse
    DescribeEventsForOrganizationRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationEventFilter, location_name: 'filter'))
    DescribeEventsForOrganizationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeEventsForOrganizationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsLowerRange, location_name: 'maxResults'))
    DescribeEventsForOrganizationRequest.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: 'locale'))
    DescribeEventsForOrganizationRequest.type = Types::DescribeEventsForOrganizationRequest
    DescribeEventsForOrganizationResponse.add_member(:events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationEventList, location_name: 'events'))
    DescribeEventsForOrganizationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeEventsForOrganizationResponse.type = Types::DescribeEventsForOrganizationResponse
    DescribeEventsRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventFilter, location_name: 'filter'))
    DescribeEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    DescribeEventsRequest.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: 'locale'))
    DescribeEventsRequest.type = Types::DescribeEventsRequest
    DescribeEventsResponse.add_member(:events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventList, location_name: 'events'))
    DescribeEventsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeEventsResponse.type = Types::DescribeEventsResponse
    DescribeHealthServiceStatusForOrganizationResponse.add_member(:health_service_access_status_for_organization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthServiceAccessStatusForOrganization, location_name: 'healthServiceAccessStatusForOrganization'))
    DescribeHealthServiceStatusForOrganizationResponse.type = Types::DescribeHealthServiceStatusForOrganizationResponse
    EntityAccountFilter.add_member(:event_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventArn, location_name: 'eventArn', traits: {"smithy.api#required" => {}}))
    EntityAccountFilter.add_member(:aws_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'awsAccountId'))
    EntityAccountFilter.add_member(:status_codes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStatusCodeList, location_name: 'statusCodes'))
    EntityAccountFilter.type = Types::EntityAccountFilter
    EntityAggregate.add_member(:event_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventArn, location_name: 'eventArn'))
    EntityAggregate.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: 'count', traits: {"smithy.api#default" => 0}))
    EntityAggregate.add_member(:statuses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStatuses, location_name: 'statuses'))
    EntityAggregate.type = Types::EntityAggregate
    EntityAggregateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityAggregate)
    EntityFilter.add_member(:event_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventArnList, location_name: 'eventArns', traits: {"smithy.api#required" => {}}))
    EntityFilter.add_member(:entity_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityArnList, location_name: 'entityArns'))
    EntityFilter.add_member(:entity_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityValueList, location_name: 'entityValues'))
    EntityFilter.add_member(:last_updated_times, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeRangeList, location_name: 'lastUpdatedTimes'))
    EntityFilter.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagFilter, location_name: 'tags'))
    EntityFilter.add_member(:status_codes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStatusCodeList, location_name: 'statusCodes'))
    EntityFilter.type = Types::EntityFilter
    EntityList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AffectedEntity)
    Event.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventArn, location_name: 'arn'))
    Event.add_member(:service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: 'service'))
    Event.add_member(:event_type_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeCode, location_name: 'eventTypeCode'))
    Event.add_member(:event_type_category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeCategory, location_name: 'eventTypeCategory'))
    Event.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region'))
    Event.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: 'availabilityZone'))
    Event.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime'))
    Event.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endTime'))
    Event.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedTime'))
    Event.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventStatusCode, location_name: 'statusCode'))
    Event.add_member(:event_scope_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventScopeCode, location_name: 'eventScopeCode'))
    Event.type = Types::Event
    EventAccountFilter.add_member(:event_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventArn, location_name: 'eventArn', traits: {"smithy.api#required" => {}}))
    EventAccountFilter.add_member(:aws_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'awsAccountId'))
    EventAccountFilter.type = Types::EventAccountFilter
    EventAggregate.add_member(:aggregate_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AggregateValue, location_name: 'aggregateValue'))
    EventAggregate.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: 'count', traits: {"smithy.api#default" => 0}))
    EventAggregate.type = Types::EventAggregate
    EventAggregateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventAggregate)
    EventArnsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventArn)
    EventDescription.add_member(:latest_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventDescription2, location_name: 'latestDescription'))
    EventDescription.type = Types::EventDescription
    EventDetails.add_member(:event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Event, location_name: 'event'))
    EventDetails.add_member(:event_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventDescription, location_name: 'eventDescription'))
    EventDetails.add_member(:event_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventMetadata, location_name: 'eventMetadata'))
    EventDetails.type = Types::EventDetails
    EventDetailsErrorItem.add_member(:event_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventArn, location_name: 'eventArn'))
    EventDetailsErrorItem.add_member(:error_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'errorName'))
    EventDetailsErrorItem.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'errorMessage'))
    EventDetailsErrorItem.type = Types::EventDetailsErrorItem
    EventFilter.add_member(:event_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventArnList, location_name: 'eventArns'))
    EventFilter.add_member(:event_type_codes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeList2, location_name: 'eventTypeCodes'))
    EventFilter.add_member(:services, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceList, location_name: 'services'))
    EventFilter.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionList, location_name: 'regions'))
    EventFilter.add_member(:availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: 'availabilityZones'))
    EventFilter.add_member(:start_times, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeRangeList, location_name: 'startTimes'))
    EventFilter.add_member(:end_times, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeRangeList, location_name: 'endTimes'))
    EventFilter.add_member(:last_updated_times, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeRangeList, location_name: 'lastUpdatedTimes'))
    EventFilter.add_member(:entity_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityArnList, location_name: 'entityArns'))
    EventFilter.add_member(:entity_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityValueList, location_name: 'entityValues'))
    EventFilter.add_member(:event_type_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeCategoryList2, location_name: 'eventTypeCategories'))
    EventFilter.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagFilter, location_name: 'tags'))
    EventFilter.add_member(:event_status_codes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventStatusCodeList, location_name: 'eventStatusCodes'))
    EventFilter.type = Types::EventFilter
    EventList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Event)
    EventType.add_member(:service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: 'service'))
    EventType.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeCode, location_name: 'code'))
    EventType.add_member(:category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeCategory, location_name: 'category'))
    EventType.type = Types::EventType
    EventTypeCategoryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeCategory)
    EventTypeCodeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeCode)
    EventTypeFilter.add_member(:event_type_codes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeCodeList, location_name: 'eventTypeCodes'))
    EventTypeFilter.add_member(:services, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceList, location_name: 'services'))
    EventTypeFilter.add_member(:event_type_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeCategoryList, location_name: 'eventTypeCategories'))
    EventTypeFilter.type = Types::EventTypeFilter
    EventTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventType)
    InvalidPaginationToken.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InvalidPaginationToken.type = Types::InvalidPaginationToken
    OrganizationAccountIdsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    OrganizationAffectedEntitiesErrorItem.add_member(:aws_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'awsAccountId'))
    OrganizationAffectedEntitiesErrorItem.add_member(:event_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventArn, location_name: 'eventArn'))
    OrganizationAffectedEntitiesErrorItem.add_member(:error_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'errorName'))
    OrganizationAffectedEntitiesErrorItem.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'errorMessage'))
    OrganizationAffectedEntitiesErrorItem.type = Types::OrganizationAffectedEntitiesErrorItem
    OrganizationEntityAccountFiltersList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityAccountFilter)
    OrganizationEntityAggregate.add_member(:event_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventArn, location_name: 'eventArn'))
    OrganizationEntityAggregate.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: 'count', traits: {"smithy.api#default" => 0}))
    OrganizationEntityAggregate.add_member(:statuses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStatuses, location_name: 'statuses'))
    OrganizationEntityAggregate.add_member(:accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountEntityAggregatesList, location_name: 'accounts'))
    OrganizationEntityAggregate.type = Types::OrganizationEntityAggregate
    OrganizationEntityAggregatesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationEntityAggregate)
    OrganizationEntityFiltersList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventAccountFilter)
    OrganizationEvent.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventArn, location_name: 'arn'))
    OrganizationEvent.add_member(:service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: 'service'))
    OrganizationEvent.add_member(:event_type_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeCode, location_name: 'eventTypeCode'))
    OrganizationEvent.add_member(:event_type_category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeCategory, location_name: 'eventTypeCategory'))
    OrganizationEvent.add_member(:event_scope_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventScopeCode, location_name: 'eventScopeCode'))
    OrganizationEvent.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region'))
    OrganizationEvent.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime'))
    OrganizationEvent.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endTime'))
    OrganizationEvent.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedTime'))
    OrganizationEvent.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventStatusCode, location_name: 'statusCode'))
    OrganizationEvent.type = Types::OrganizationEvent
    OrganizationEventArnsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventArn)
    OrganizationEventDetailFiltersList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventAccountFilter)
    OrganizationEventDetails.add_member(:aws_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'awsAccountId'))
    OrganizationEventDetails.add_member(:event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Event, location_name: 'event'))
    OrganizationEventDetails.add_member(:event_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventDescription, location_name: 'eventDescription'))
    OrganizationEventDetails.add_member(:event_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventMetadata, location_name: 'eventMetadata'))
    OrganizationEventDetails.type = Types::OrganizationEventDetails
    OrganizationEventDetailsErrorItem.add_member(:aws_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'awsAccountId'))
    OrganizationEventDetailsErrorItem.add_member(:event_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventArn, location_name: 'eventArn'))
    OrganizationEventDetailsErrorItem.add_member(:error_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'errorName'))
    OrganizationEventDetailsErrorItem.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'errorMessage'))
    OrganizationEventDetailsErrorItem.type = Types::OrganizationEventDetailsErrorItem
    OrganizationEventFilter.add_member(:event_type_codes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeList2, location_name: 'eventTypeCodes'))
    OrganizationEventFilter.add_member(:aws_account_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountIdsList, location_name: 'awsAccountIds'))
    OrganizationEventFilter.add_member(:services, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceList, location_name: 'services'))
    OrganizationEventFilter.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionList, location_name: 'regions'))
    OrganizationEventFilter.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeRange, location_name: 'startTime'))
    OrganizationEventFilter.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeRange, location_name: 'endTime'))
    OrganizationEventFilter.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeRange, location_name: 'lastUpdatedTime'))
    OrganizationEventFilter.add_member(:entity_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityArnList, location_name: 'entityArns'))
    OrganizationEventFilter.add_member(:entity_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityValueList, location_name: 'entityValues'))
    OrganizationEventFilter.add_member(:event_type_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeCategoryList2, location_name: 'eventTypeCategories'))
    OrganizationEventFilter.add_member(:event_status_codes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventStatusCodeList, location_name: 'eventStatusCodes'))
    OrganizationEventFilter.type = Types::OrganizationEventFilter
    OrganizationEventList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationEvent)
    UnsupportedLocale.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    UnsupportedLocale.type = Types::UnsupportedLocale
    AffectedAccountsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    AvailabilityZones.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone)
    AwsAccountIdsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    DateTimeRangeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeRange)
    EntityArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityArn)
    EntityMetadata.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityMetadataKey)
    EntityMetadata.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityMetadataValue)
    EntityStatusCode.add_member(:impaired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPAIRED', traits: {"smithy.api#enumValue" => "IMPAIRED"}))
    EntityStatusCode.add_member(:unimpaired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNIMPAIRED', traits: {"smithy.api#enumValue" => "UNIMPAIRED"}))
    EntityStatusCode.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    EntityStatusCode.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    EntityStatusCode.add_member(:resolved, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOLVED', traits: {"smithy.api#enumValue" => "RESOLVED"}))
    EntityStatusCodeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStatusCode)
    EntityStatuses.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStatusCode)
    EntityStatuses.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Count)
    EntityValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityValue)
    EventAggregateField.add_member(:event_type_category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EventTypeCategory', traits: {"smithy.api#enumValue" => "eventTypeCategory"}))
    EventArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventArn)
    EventMetadata.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataKey)
    EventMetadata.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataValue)
    EventScopeCode.add_member(:public, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLIC', traits: {"smithy.api#enumValue" => "PUBLIC"}))
    EventScopeCode.add_member(:account_specific, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_SPECIFIC', traits: {"smithy.api#enumValue" => "ACCOUNT_SPECIFIC"}))
    EventScopeCode.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    EventStatusCode.add_member(:open, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPEN', traits: {"smithy.api#enumValue" => "open"}))
    EventStatusCode.add_member(:closed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOSED', traits: {"smithy.api#enumValue" => "closed"}))
    EventStatusCode.add_member(:upcoming, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPCOMING', traits: {"smithy.api#enumValue" => "upcoming"}))
    EventStatusCodeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventStatusCode)
    EventTypeCategory.add_member(:issue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ISSUE', traits: {"smithy.api#enumValue" => "issue"}))
    EventTypeCategory.add_member(:account_notification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_NOTIFICATION', traits: {"smithy.api#enumValue" => "accountNotification"}))
    EventTypeCategory.add_member(:scheduled_change, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCHEDULED_CHANGE', traits: {"smithy.api#enumValue" => "scheduledChange"}))
    EventTypeCategory.add_member(:investigation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVESTIGATION', traits: {"smithy.api#enumValue" => "investigation"}))
    EventTypeCategoryList2.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeCategory)
    EventTypeList2.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventType2)
    RegionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region)
    ServiceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Service)
    TagFilter.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagSet)
    TagSet.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagSet.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)

    AWSHealth20160804 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.health#AWSHealth_20160804"
      service.name = "AWSHealth20160804"
      service.version = "2016-08-04"
      service.traits = {"aws.api#service" => {"sdkId" => "Health", "arnNamespace" => "health", "cloudFormationName" => "Health", "cloudTrailEventSource" => "health.amazonaws.com", "endpointPrefix" => "health"}, "aws.auth#sigv4" => {"name" => "health"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Health APIs and Notifications"}
      service.add_operation(:describe_affected_accounts_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.health#DescribeAffectedAccountsForOrganization"
        operation.name = "DescribeAffectedAccountsForOrganization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAffectedAccountsForOrganizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAffectedAccountsForOrganizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationToken)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::DescribeAffectedAccountsForOrganization.new
      end)
      service.add_operation(:describe_affected_entities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.health#DescribeAffectedEntities"
        operation.name = "DescribeAffectedEntities"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAffectedEntitiesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAffectedEntitiesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationToken)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedLocale)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::DescribeAffectedEntities.new
      end)
      service.add_operation(:describe_affected_entities_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.health#DescribeAffectedEntitiesForOrganization"
        operation.name = "DescribeAffectedEntitiesForOrganization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAffectedEntitiesForOrganizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAffectedEntitiesForOrganizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationToken)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedLocale)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::DescribeAffectedEntitiesForOrganization.new
      end)
      service.add_operation(:describe_entity_aggregates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.health#DescribeEntityAggregates"
        operation.name = "DescribeEntityAggregates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEntityAggregatesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEntityAggregatesResponse)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_entity_aggregates_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.health#DescribeEntityAggregatesForOrganization"
        operation.name = "DescribeEntityAggregatesForOrganization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEntityAggregatesForOrganizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEntityAggregatesForOrganizationResponse)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_event_aggregates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.health#DescribeEventAggregates"
        operation.name = "DescribeEventAggregates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventAggregatesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventAggregatesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationToken)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::DescribeEventAggregates.new
      end)
      service.add_operation(:describe_event_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.health#DescribeEventDetails"
        operation.name = "DescribeEventDetails"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventDetailsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventDetailsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedLocale)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_event_details_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.health#DescribeEventDetailsForOrganization"
        operation.name = "DescribeEventDetailsForOrganization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventDetailsForOrganizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventDetailsForOrganizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedLocale)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_event_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.health#DescribeEventTypes"
        operation.name = "DescribeEventTypes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventTypesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventTypesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationToken)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedLocale)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::DescribeEventTypes.new
      end)
      service.add_operation(:describe_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.health#DescribeEvents"
        operation.name = "DescribeEvents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationToken)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedLocale)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::DescribeEvents.new
      end)
      service.add_operation(:describe_events_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.health#DescribeEventsForOrganization"
        operation.name = "DescribeEventsForOrganization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventsForOrganizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventsForOrganizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationToken)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedLocale)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::DescribeEventsForOrganization.new
      end)
      service.add_operation(:describe_health_service_status_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.health#DescribeHealthServiceStatusForOrganization"
        operation.name = "DescribeHealthServiceStatusForOrganization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeHealthServiceStatusForOrganizationResponse)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disable_health_service_access_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.health#DisableHealthServiceAccessForOrganization"
        operation.name = "DisableHealthServiceAccessForOrganization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:enable_health_service_access_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.health#EnableHealthServiceAccessForOrganization"
        operation.name = "EnableHealthServiceAccessForOrganization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.traits = {"smithy.api#idempotent" => {}}
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
