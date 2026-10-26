# frozen_string_literal: true

# This is generated code!

module Aws::Health
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccountEntityAggregate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#AccountEntityAggregate", name: "AccountEntityAggregate")
    AccountEntityAggregatesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#AccountEntityAggregatesList", name: "AccountEntityAggregatesList")
    AffectedEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#AffectedEntity", name: "AffectedEntity")
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#ConcurrentModificationException", name: "ConcurrentModificationException", traits: {"smithy.api#error" => "client"})
    DateTimeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#DateTimeRange", name: "DateTimeRange")
    DescribeAffectedAccountsForOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#DescribeAffectedAccountsForOrganizationRequest", name: "DescribeAffectedAccountsForOrganizationRequest")
    DescribeAffectedAccountsForOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#DescribeAffectedAccountsForOrganizationResponse", name: "DescribeAffectedAccountsForOrganizationResponse")
    DescribeAffectedEntitiesForOrganizationFailedSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#DescribeAffectedEntitiesForOrganizationFailedSet", name: "DescribeAffectedEntitiesForOrganizationFailedSet")
    DescribeAffectedEntitiesForOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#DescribeAffectedEntitiesForOrganizationRequest", name: "DescribeAffectedEntitiesForOrganizationRequest")
    DescribeAffectedEntitiesForOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#DescribeAffectedEntitiesForOrganizationResponse", name: "DescribeAffectedEntitiesForOrganizationResponse")
    DescribeAffectedEntitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#DescribeAffectedEntitiesRequest", name: "DescribeAffectedEntitiesRequest")
    DescribeAffectedEntitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#DescribeAffectedEntitiesResponse", name: "DescribeAffectedEntitiesResponse")
    DescribeEntityAggregatesForOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#DescribeEntityAggregatesForOrganizationRequest", name: "DescribeEntityAggregatesForOrganizationRequest")
    DescribeEntityAggregatesForOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#DescribeEntityAggregatesForOrganizationResponse", name: "DescribeEntityAggregatesForOrganizationResponse")
    DescribeEntityAggregatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#DescribeEntityAggregatesRequest", name: "DescribeEntityAggregatesRequest")
    DescribeEntityAggregatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#DescribeEntityAggregatesResponse", name: "DescribeEntityAggregatesResponse")
    DescribeEventAggregatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#DescribeEventAggregatesRequest", name: "DescribeEventAggregatesRequest")
    DescribeEventAggregatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#DescribeEventAggregatesResponse", name: "DescribeEventAggregatesResponse")
    DescribeEventDetailsFailedSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#DescribeEventDetailsFailedSet", name: "DescribeEventDetailsFailedSet")
    DescribeEventDetailsForOrganizationFailedSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#DescribeEventDetailsForOrganizationFailedSet", name: "DescribeEventDetailsForOrganizationFailedSet")
    DescribeEventDetailsForOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#DescribeEventDetailsForOrganizationRequest", name: "DescribeEventDetailsForOrganizationRequest")
    DescribeEventDetailsForOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#DescribeEventDetailsForOrganizationResponse", name: "DescribeEventDetailsForOrganizationResponse")
    DescribeEventDetailsForOrganizationSuccessfulSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#DescribeEventDetailsForOrganizationSuccessfulSet", name: "DescribeEventDetailsForOrganizationSuccessfulSet")
    DescribeEventDetailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#DescribeEventDetailsRequest", name: "DescribeEventDetailsRequest")
    DescribeEventDetailsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#DescribeEventDetailsResponse", name: "DescribeEventDetailsResponse")
    DescribeEventDetailsSuccessfulSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#DescribeEventDetailsSuccessfulSet", name: "DescribeEventDetailsSuccessfulSet")
    DescribeEventTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#DescribeEventTypesRequest", name: "DescribeEventTypesRequest")
    DescribeEventTypesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#DescribeEventTypesResponse", name: "DescribeEventTypesResponse")
    DescribeEventsForOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#DescribeEventsForOrganizationRequest", name: "DescribeEventsForOrganizationRequest")
    DescribeEventsForOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#DescribeEventsForOrganizationResponse", name: "DescribeEventsForOrganizationResponse")
    DescribeEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#DescribeEventsRequest", name: "DescribeEventsRequest")
    DescribeEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#DescribeEventsResponse", name: "DescribeEventsResponse")
    DescribeHealthServiceStatusForOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#DescribeHealthServiceStatusForOrganizationResponse", name: "DescribeHealthServiceStatusForOrganizationResponse")
    DescribeServiceLifecycleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#DescribeServiceLifecycleRequest", name: "DescribeServiceLifecycleRequest")
    DescribeServiceLifecycleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#DescribeServiceLifecycleResponse", name: "DescribeServiceLifecycleResponse")
    EntityAccountFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#EntityAccountFilter", name: "EntityAccountFilter")
    EntityAggregate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#EntityAggregate", name: "EntityAggregate")
    EntityAggregateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#EntityAggregateList", name: "EntityAggregateList")
    EntityFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#EntityFilter", name: "EntityFilter")
    EntityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#EntityList", name: "EntityList")
    Event = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#Event", name: "Event")
    EventAccountFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#EventAccountFilter", name: "EventAccountFilter")
    EventActionability = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.health#EventActionability", name: "EventActionability")
    EventActionabilityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#EventActionabilityList", name: "EventActionabilityList", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    EventAggregate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#EventAggregate", name: "EventAggregate")
    EventAggregateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#EventAggregateList", name: "EventAggregateList")
    EventArnsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#EventArnsList", name: "EventArnsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    EventDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#EventDescription", name: "EventDescription")
    EventDescription2 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.health#EventDescription2", name: "EventDescription2")
    EventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#EventDetails", name: "EventDetails")
    EventDetailsErrorItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#EventDetailsErrorItem", name: "EventDetailsErrorItem")
    EventFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#EventFilter", name: "EventFilter")
    EventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#EventList", name: "EventList")
    EventPersona = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.health#EventPersona", name: "EventPersona")
    EventPersonaList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#EventPersonaList", name: "EventPersonaList", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    EventType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#EventType", name: "EventType")
    EventType2 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.health#EventType2", name: "EventType2", traits: {"smithy.api#length" => {"min" => 3, "max" => 100}, "smithy.api#pattern" => "^[^:/]{3,100}$"})
    EventTypeActionability = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.health#EventTypeActionability", name: "EventTypeActionability")
    EventTypeActionabilityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#EventTypeActionabilityList", name: "EventTypeActionabilityList", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    EventTypeCategoryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#EventTypeCategoryList", name: "EventTypeCategoryList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    EventTypeCodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#EventTypeCodeList", name: "EventTypeCodeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    EventTypeFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#EventTypeFilter", name: "EventTypeFilter")
    EventTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#EventTypeList", name: "EventTypeList")
    EventTypePersona = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.health#EventTypePersona", name: "EventTypePersona")
    EventTypePersonaList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#EventTypePersonaList", name: "EventTypePersonaList", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    ImpactRiskList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#ImpactRiskList", name: "ImpactRiskList")
    InvalidPaginationToken = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#InvalidPaginationToken", name: "InvalidPaginationToken", traits: {"smithy.api#error" => "client"})
    LifecycleEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#LifecycleEvent", name: "LifecycleEvent")
    LifecycleEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#LifecycleEventList", name: "LifecycleEventList")
    LifecycleMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.health#LifecycleMaxResults", name: "LifecycleMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    OrganizationAccountIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#OrganizationAccountIdsList", name: "OrganizationAccountIdsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    OrganizationAffectedEntitiesErrorItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#OrganizationAffectedEntitiesErrorItem", name: "OrganizationAffectedEntitiesErrorItem")
    OrganizationEntityAccountFiltersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#OrganizationEntityAccountFiltersList", name: "OrganizationEntityAccountFiltersList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    OrganizationEntityAggregate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#OrganizationEntityAggregate", name: "OrganizationEntityAggregate")
    OrganizationEntityAggregatesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#OrganizationEntityAggregatesList", name: "OrganizationEntityAggregatesList")
    OrganizationEntityFiltersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#OrganizationEntityFiltersList", name: "OrganizationEntityFiltersList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    OrganizationEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#OrganizationEvent", name: "OrganizationEvent")
    OrganizationEventArnsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#OrganizationEventArnsList", name: "OrganizationEventArnsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    OrganizationEventDetailFiltersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#OrganizationEventDetailFiltersList", name: "OrganizationEventDetailFiltersList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    OrganizationEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#OrganizationEventDetails", name: "OrganizationEventDetails")
    OrganizationEventDetailsErrorItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#OrganizationEventDetailsErrorItem", name: "OrganizationEventDetailsErrorItem")
    OrganizationEventFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#OrganizationEventFilter", name: "OrganizationEventFilter")
    OrganizationEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#OrganizationEventList", name: "OrganizationEventList")
    ServiceLifecycle = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#ServiceLifecycle", name: "ServiceLifecycle")
    ServiceLifecycleFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#ServiceLifecycleFilter", name: "ServiceLifecycleFilter")
    ServiceLifecycleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#ServiceLifecycleList", name: "ServiceLifecycleList")
    UnsupportedLocale = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.health#UnsupportedLocale", name: "UnsupportedLocale", traits: {"smithy.api#error" => "client"})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.health#accountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 0, "max" => 12}, "smithy.api#pattern" => "^\\S+$"})
    AffectedAccountsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#affectedAccountsList", name: "AffectedAccountsList")
    AggregateValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.health#aggregateValue", name: "AggregateValue")
    AvailabilityZone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.health#availabilityZone", name: "AvailabilityZone", traits: {"smithy.api#length" => {"min" => 6, "max" => 18}, "smithy.api#pattern" => "^[a-z]{2,4}\\-[0-9a-z\\-]{4,16}$"})
    AvailabilityZones = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#availabilityZones", name: "AvailabilityZones")
    AwsAccountIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#awsAccountIdsList", name: "AwsAccountIdsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    Count = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.health#count", name: "Count", traits: {"smithy.api#default" => 0})
    DateTimeRangeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#dateTimeRangeList", name: "DateTimeRangeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    EntityArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.health#entityArn", name: "EntityArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1600}, "smithy.api#pattern" => "^.{0,1600}$"})
    EntityArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#entityArnList", name: "EntityArnList", traits: {"smithy.api#length" => {"min" => 1, "max" => 99}})
    EntityMetadata = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.health#entityMetadata", name: "EntityMetadata")
    EntityMetadataKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.health#entityMetadataKey", name: "EntityMetadataKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    EntityMetadataValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.health#entityMetadataValue", name: "EntityMetadataValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    EntityStatusCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.health#entityStatusCode", name: "EntityStatusCode")
    EntityStatusCodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#entityStatusCodeList", name: "EntityStatusCodeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    EntityStatuses = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.health#entityStatuses", name: "EntityStatuses")
    EntityUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.health#entityUrl", name: "EntityUrl")
    EntityValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.health#entityValue", name: "EntityValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 1224}, "smithy.api#pattern" => "^.{0,1224}$"})
    EntityValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#entityValueList", name: "EntityValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 99}})
    EventAggregateField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.health#eventAggregateField", name: "EventAggregateField")
    EventArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.health#eventArn", name: "EventArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1600}, "smithy.api#pattern" => "^arn:aws(-[a-z]+(-[a-z]+)?)?:health:[^:]*:[^:]*:event(?:/[\\w-]+){3}$"})
    EventArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#eventArnList", name: "EventArnList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    EventMetadata = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.health#eventMetadata", name: "EventMetadata")
    EventScopeCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.health#eventScopeCode", name: "EventScopeCode")
    EventStatusCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.health#eventStatusCode", name: "EventStatusCode")
    EventStatusCodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#eventStatusCodeList", name: "EventStatusCodeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 6}})
    EventTypeCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.health#eventTypeCategory", name: "EventTypeCategory", traits: {"smithy.api#length" => {"min" => 3, "max" => 255}})
    EventTypeCategoryList2 = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#eventTypeCategoryList2", name: "EventTypeCategoryList2", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    EventTypeCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.health#eventTypeCode", name: "EventTypeCode", traits: {"smithy.api#length" => {"min" => 3, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9\\_\\-]{3,100}$"})
    EventTypeList2 = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#eventTypeList2", name: "EventTypeList2", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    HealthServiceAccessStatusForOrganization = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.health#healthServiceAccessStatusForOrganization", name: "HealthServiceAccessStatusForOrganization")
    Locale = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.health#locale", name: "Locale", traits: {"smithy.api#length" => {"min" => 2, "max" => 256}, "smithy.api#pattern" => "^.{2,256}$"})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.health#maxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 10, "max" => 100}})
    MaxResultsLowerRange = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.health#maxResultsLowerRange", name: "MaxResultsLowerRange", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MetadataKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.health#metadataKey", name: "MetadataKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 32766}})
    MetadataValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.health#metadataValue", name: "MetadataValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 32766}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.health#nextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 4, "max" => 10000}, "smithy.api#pattern" => "^[a-zA-Z0-9=/+_.-]{4,10000}$"})
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.health#region", name: "Region", traits: {"smithy.api#length" => {"min" => 2, "max" => 25}, "smithy.api#pattern" => "^[^:/]{2,25}$"})
    RegionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#regionList", name: "RegionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Service = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.health#service", name: "Service", traits: {"smithy.api#length" => {"min" => 2, "max" => 30}, "smithy.api#pattern" => "^[^:/]{2,30}$"})
    ServiceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#serviceList", name: "ServiceList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.health#string", name: "String")
    TagFilter = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.health#tagFilter", name: "TagFilter", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.health#tagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 127}, "smithy.api#pattern" => "^.{0,127}$"})
    TagSet = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.health#tagSet", name: "TagSet", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.health#tagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^.{0,255}$"})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.health#timestamp", name: "Timestamp")

    AccountEntityAggregate.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventArn, name: "accountId"))
    AccountEntityAggregate.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "count", traits: {"smithy.api#default" => 0}))
    AccountEntityAggregate.add_member(:statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatuses, name: "statuses"))
    AccountEntityAggregate.type = Types::AccountEntityAggregate
    AccountEntityAggregatesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountEntityAggregate, name: "member"))
    AffectedEntity.add_member(:entity_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityArn, name: "entityArn"))
    AffectedEntity.add_member(:event_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventArn, name: "eventArn"))
    AffectedEntity.add_member(:entity_value, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityValue, name: "entityValue"))
    AffectedEntity.add_member(:entity_url, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityUrl, name: "entityUrl"))
    AffectedEntity.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "awsAccountId"))
    AffectedEntity.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedTime"))
    AffectedEntity.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatusCode, name: "statusCode"))
    AffectedEntity.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagSet, name: "tags"))
    AffectedEntity.add_member(:entity_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityMetadata, name: "entityMetadata"))
    AffectedEntity.type = Types::AffectedEntity
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    DateTimeRange.add_member(:from, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "from"))
    DateTimeRange.add_member(:to, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "to"))
    DateTimeRange.type = Types::DateTimeRange
    DescribeAffectedAccountsForOrganizationRequest.add_member(:event_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventArn, name: "eventArn", traits: {"smithy.api#required" => {}}))
    DescribeAffectedAccountsForOrganizationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeAffectedAccountsForOrganizationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    DescribeAffectedAccountsForOrganizationRequest.type = Types::DescribeAffectedAccountsForOrganizationRequest
    DescribeAffectedAccountsForOrganizationResponse.add_member(:affected_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AffectedAccountsList, name: "affectedAccounts"))
    DescribeAffectedAccountsForOrganizationResponse.add_member(:event_scope_code, ::Smithy::Schema::Shapes::MemberShape.new(target: EventScopeCode, name: "eventScopeCode"))
    DescribeAffectedAccountsForOrganizationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeAffectedAccountsForOrganizationResponse.type = Types::DescribeAffectedAccountsForOrganizationResponse
    DescribeAffectedEntitiesForOrganizationFailedSet.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationAffectedEntitiesErrorItem, name: "member"))
    DescribeAffectedEntitiesForOrganizationRequest.add_member(:organization_entity_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationEntityFiltersList, name: "organizationEntityFilters", traits: {"smithy.api#deprecated" => {"message" => "This property is deprecated, use organizationEntityAccountFilters instead."}}))
    DescribeAffectedEntitiesForOrganizationRequest.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "locale"))
    DescribeAffectedEntitiesForOrganizationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeAffectedEntitiesForOrganizationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsLowerRange, name: "maxResults"))
    DescribeAffectedEntitiesForOrganizationRequest.add_member(:organization_entity_account_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationEntityAccountFiltersList, name: "organizationEntityAccountFilters"))
    DescribeAffectedEntitiesForOrganizationRequest.type = Types::DescribeAffectedEntitiesForOrganizationRequest
    DescribeAffectedEntitiesForOrganizationResponse.add_member(:entities, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityList, name: "entities"))
    DescribeAffectedEntitiesForOrganizationResponse.add_member(:failed_set, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeAffectedEntitiesForOrganizationFailedSet, name: "failedSet"))
    DescribeAffectedEntitiesForOrganizationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeAffectedEntitiesForOrganizationResponse.type = Types::DescribeAffectedEntitiesForOrganizationResponse
    DescribeAffectedEntitiesRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityFilter, name: "filter", traits: {"smithy.api#required" => {}}))
    DescribeAffectedEntitiesRequest.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "locale"))
    DescribeAffectedEntitiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeAffectedEntitiesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsLowerRange, name: "maxResults"))
    DescribeAffectedEntitiesRequest.type = Types::DescribeAffectedEntitiesRequest
    DescribeAffectedEntitiesResponse.add_member(:entities, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityList, name: "entities"))
    DescribeAffectedEntitiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeAffectedEntitiesResponse.type = Types::DescribeAffectedEntitiesResponse
    DescribeEntityAggregatesForOrganizationRequest.add_member(:event_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationEventArnsList, name: "eventArns", traits: {"smithy.api#required" => {}}))
    DescribeEntityAggregatesForOrganizationRequest.add_member(:aws_account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationAccountIdsList, name: "awsAccountIds"))
    DescribeEntityAggregatesForOrganizationRequest.type = Types::DescribeEntityAggregatesForOrganizationRequest
    DescribeEntityAggregatesForOrganizationResponse.add_member(:organization_entity_aggregates, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationEntityAggregatesList, name: "organizationEntityAggregates"))
    DescribeEntityAggregatesForOrganizationResponse.type = Types::DescribeEntityAggregatesForOrganizationResponse
    DescribeEntityAggregatesRequest.add_member(:event_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: EventArnsList, name: "eventArns"))
    DescribeEntityAggregatesRequest.type = Types::DescribeEntityAggregatesRequest
    DescribeEntityAggregatesResponse.add_member(:entity_aggregates, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityAggregateList, name: "entityAggregates"))
    DescribeEntityAggregatesResponse.type = Types::DescribeEntityAggregatesResponse
    DescribeEventAggregatesRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: EventFilter, name: "filter"))
    DescribeEventAggregatesRequest.add_member(:aggregate_field, ::Smithy::Schema::Shapes::MemberShape.new(target: EventAggregateField, name: "aggregateField", traits: {"smithy.api#required" => {}}))
    DescribeEventAggregatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    DescribeEventAggregatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeEventAggregatesRequest.type = Types::DescribeEventAggregatesRequest
    DescribeEventAggregatesResponse.add_member(:event_aggregates, ::Smithy::Schema::Shapes::MemberShape.new(target: EventAggregateList, name: "eventAggregates"))
    DescribeEventAggregatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeEventAggregatesResponse.type = Types::DescribeEventAggregatesResponse
    DescribeEventDetailsFailedSet.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDetailsErrorItem, name: "member"))
    DescribeEventDetailsForOrganizationFailedSet.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationEventDetailsErrorItem, name: "member"))
    DescribeEventDetailsForOrganizationRequest.add_member(:organization_event_detail_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationEventDetailFiltersList, name: "organizationEventDetailFilters", traits: {"smithy.api#required" => {}}))
    DescribeEventDetailsForOrganizationRequest.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "locale"))
    DescribeEventDetailsForOrganizationRequest.type = Types::DescribeEventDetailsForOrganizationRequest
    DescribeEventDetailsForOrganizationResponse.add_member(:successful_set, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeEventDetailsForOrganizationSuccessfulSet, name: "successfulSet"))
    DescribeEventDetailsForOrganizationResponse.add_member(:failed_set, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeEventDetailsForOrganizationFailedSet, name: "failedSet"))
    DescribeEventDetailsForOrganizationResponse.type = Types::DescribeEventDetailsForOrganizationResponse
    DescribeEventDetailsForOrganizationSuccessfulSet.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationEventDetails, name: "member"))
    DescribeEventDetailsRequest.add_member(:event_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: EventArnList, name: "eventArns", traits: {"smithy.api#required" => {}}))
    DescribeEventDetailsRequest.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "locale"))
    DescribeEventDetailsRequest.type = Types::DescribeEventDetailsRequest
    DescribeEventDetailsResponse.add_member(:successful_set, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeEventDetailsSuccessfulSet, name: "successfulSet"))
    DescribeEventDetailsResponse.add_member(:failed_set, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeEventDetailsFailedSet, name: "failedSet"))
    DescribeEventDetailsResponse.type = Types::DescribeEventDetailsResponse
    DescribeEventDetailsSuccessfulSet.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDetails, name: "member"))
    DescribeEventTypesRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeFilter, name: "filter"))
    DescribeEventTypesRequest.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "locale"))
    DescribeEventTypesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeEventTypesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    DescribeEventTypesRequest.type = Types::DescribeEventTypesRequest
    DescribeEventTypesResponse.add_member(:event_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeList, name: "eventTypes"))
    DescribeEventTypesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeEventTypesResponse.type = Types::DescribeEventTypesResponse
    DescribeEventsForOrganizationRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationEventFilter, name: "filter"))
    DescribeEventsForOrganizationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeEventsForOrganizationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsLowerRange, name: "maxResults"))
    DescribeEventsForOrganizationRequest.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "locale"))
    DescribeEventsForOrganizationRequest.type = Types::DescribeEventsForOrganizationRequest
    DescribeEventsForOrganizationResponse.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationEventList, name: "events"))
    DescribeEventsForOrganizationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeEventsForOrganizationResponse.type = Types::DescribeEventsForOrganizationResponse
    DescribeEventsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: EventFilter, name: "filter"))
    DescribeEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsLowerRange, name: "maxResults"))
    DescribeEventsRequest.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "locale"))
    DescribeEventsRequest.type = Types::DescribeEventsRequest
    DescribeEventsResponse.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: EventList, name: "events"))
    DescribeEventsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeEventsResponse.type = Types::DescribeEventsResponse
    DescribeHealthServiceStatusForOrganizationResponse.add_member(:health_service_access_status_for_organization, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthServiceAccessStatusForOrganization, name: "healthServiceAccessStatusForOrganization"))
    DescribeHealthServiceStatusForOrganizationResponse.type = Types::DescribeHealthServiceStatusForOrganizationResponse
    DescribeServiceLifecycleRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLifecycleFilter, name: "filter"))
    DescribeServiceLifecycleRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeServiceLifecycleRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleMaxResults, name: "maxResults"))
    DescribeServiceLifecycleRequest.type = Types::DescribeServiceLifecycleRequest
    DescribeServiceLifecycleResponse.add_member(:service_lifecycles, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLifecycleList, name: "serviceLifecycles"))
    DescribeServiceLifecycleResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeServiceLifecycleResponse.type = Types::DescribeServiceLifecycleResponse
    EntityAccountFilter.add_member(:event_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventArn, name: "eventArn", traits: {"smithy.api#required" => {}}))
    EntityAccountFilter.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "awsAccountId"))
    EntityAccountFilter.add_member(:status_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatusCodeList, name: "statusCodes"))
    EntityAccountFilter.type = Types::EntityAccountFilter
    EntityAggregate.add_member(:event_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventArn, name: "eventArn"))
    EntityAggregate.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "count", traits: {"smithy.api#default" => 0}))
    EntityAggregate.add_member(:statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatuses, name: "statuses"))
    EntityAggregate.type = Types::EntityAggregate
    EntityAggregateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityAggregate, name: "member"))
    EntityFilter.add_member(:event_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: EventArnList, name: "eventArns", traits: {"smithy.api#required" => {}}))
    EntityFilter.add_member(:entity_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityArnList, name: "entityArns"))
    EntityFilter.add_member(:entity_values, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityValueList, name: "entityValues"))
    EntityFilter.add_member(:last_updated_times, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeRangeList, name: "lastUpdatedTimes"))
    EntityFilter.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagFilter, name: "tags"))
    EntityFilter.add_member(:status_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatusCodeList, name: "statusCodes"))
    EntityFilter.type = Types::EntityFilter
    EntityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AffectedEntity, name: "member"))
    Event.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventArn, name: "arn"))
    Event.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "service"))
    Event.add_member(:event_type_code, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeCode, name: "eventTypeCode"))
    Event.add_member(:event_type_category, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeCategory, name: "eventTypeCategory"))
    Event.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "region"))
    Event.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "availabilityZone"))
    Event.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime"))
    Event.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime"))
    Event.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedTime"))
    Event.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: EventStatusCode, name: "statusCode"))
    Event.add_member(:event_scope_code, ::Smithy::Schema::Shapes::MemberShape.new(target: EventScopeCode, name: "eventScopeCode"))
    Event.add_member(:actionability, ::Smithy::Schema::Shapes::MemberShape.new(target: EventActionability, name: "actionability"))
    Event.add_member(:personas, ::Smithy::Schema::Shapes::MemberShape.new(target: EventPersonaList, name: "personas"))
    Event.type = Types::Event
    EventAccountFilter.add_member(:event_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventArn, name: "eventArn", traits: {"smithy.api#required" => {}}))
    EventAccountFilter.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "awsAccountId"))
    EventAccountFilter.type = Types::EventAccountFilter
    EventActionability.add_member(:action_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTION_REQUIRED", traits: {"smithy.api#enumValue" => "ACTION_REQUIRED"}))
    EventActionability.add_member(:action_may_be_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTION_MAY_BE_REQUIRED", traits: {"smithy.api#enumValue" => "ACTION_MAY_BE_REQUIRED"}))
    EventActionability.add_member(:informational, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFORMATIONAL", traits: {"smithy.api#enumValue" => "INFORMATIONAL"}))
    EventActionabilityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventActionability, name: "member"))
    EventAggregate.add_member(:aggregate_value, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregateValue, name: "aggregateValue"))
    EventAggregate.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "count", traits: {"smithy.api#default" => 0}))
    EventAggregate.type = Types::EventAggregate
    EventAggregateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventAggregate, name: "member"))
    EventArnsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventArn, name: "member"))
    EventDescription.add_member(:latest_description, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDescription2, name: "latestDescription"))
    EventDescription.type = Types::EventDescription
    EventDetails.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: Event, name: "event"))
    EventDetails.add_member(:event_description, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDescription, name: "eventDescription"))
    EventDetails.add_member(:event_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: EventMetadata, name: "eventMetadata"))
    EventDetails.type = Types::EventDetails
    EventDetailsErrorItem.add_member(:event_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventArn, name: "eventArn"))
    EventDetailsErrorItem.add_member(:error_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "errorName"))
    EventDetailsErrorItem.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "errorMessage"))
    EventDetailsErrorItem.type = Types::EventDetailsErrorItem
    EventFilter.add_member(:actionabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: EventActionabilityList, name: "actionabilities"))
    EventFilter.add_member(:event_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: EventArnList, name: "eventArns"))
    EventFilter.add_member(:event_type_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeList2, name: "eventTypeCodes"))
    EventFilter.add_member(:services, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceList, name: "services"))
    EventFilter.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "regions"))
    EventFilter.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZones, name: "availabilityZones"))
    EventFilter.add_member(:start_times, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeRangeList, name: "startTimes"))
    EventFilter.add_member(:end_times, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeRangeList, name: "endTimes"))
    EventFilter.add_member(:last_updated_times, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeRangeList, name: "lastUpdatedTimes"))
    EventFilter.add_member(:entity_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityArnList, name: "entityArns"))
    EventFilter.add_member(:entity_values, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityValueList, name: "entityValues"))
    EventFilter.add_member(:event_type_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeCategoryList2, name: "eventTypeCategories"))
    EventFilter.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagFilter, name: "tags"))
    EventFilter.add_member(:event_status_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: EventStatusCodeList, name: "eventStatusCodes"))
    EventFilter.add_member(:personas, ::Smithy::Schema::Shapes::MemberShape.new(target: EventPersonaList, name: "personas"))
    EventFilter.type = Types::EventFilter
    EventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Event, name: "member"))
    EventPersona.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATIONS", traits: {"smithy.api#enumValue" => "OPERATIONS"}))
    EventPersona.add_member(:security, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECURITY", traits: {"smithy.api#enumValue" => "SECURITY"}))
    EventPersona.add_member(:billing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BILLING", traits: {"smithy.api#enumValue" => "BILLING"}))
    EventPersonaList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventPersona, name: "member"))
    EventType.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "service"))
    EventType.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeCode, name: "code"))
    EventType.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeCategory, name: "category"))
    EventType.add_member(:actionability, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeActionability, name: "actionability"))
    EventType.add_member(:personas, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypePersonaList, name: "personas"))
    EventType.type = Types::EventType
    EventTypeActionability.add_member(:action_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTION_REQUIRED", traits: {"smithy.api#enumValue" => "ACTION_REQUIRED"}))
    EventTypeActionability.add_member(:action_may_be_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTION_MAY_BE_REQUIRED", traits: {"smithy.api#enumValue" => "ACTION_MAY_BE_REQUIRED"}))
    EventTypeActionability.add_member(:informational, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFORMATIONAL", traits: {"smithy.api#enumValue" => "INFORMATIONAL"}))
    EventTypeActionabilityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeActionability, name: "member"))
    EventTypeCategoryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeCategory, name: "member"))
    EventTypeCodeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeCode, name: "member"))
    EventTypeFilter.add_member(:event_type_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeCodeList, name: "eventTypeCodes"))
    EventTypeFilter.add_member(:services, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceList, name: "services"))
    EventTypeFilter.add_member(:event_type_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeCategoryList, name: "eventTypeCategories"))
    EventTypeFilter.add_member(:actionabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeActionabilityList, name: "actionabilities"))
    EventTypeFilter.add_member(:personas, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypePersonaList, name: "personas"))
    EventTypeFilter.type = Types::EventTypeFilter
    EventTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, name: "member"))
    EventTypePersona.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATIONS", traits: {"smithy.api#enumValue" => "OPERATIONS"}))
    EventTypePersona.add_member(:security, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECURITY", traits: {"smithy.api#enumValue" => "SECURITY"}))
    EventTypePersona.add_member(:billing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BILLING", traits: {"smithy.api#enumValue" => "BILLING"}))
    EventTypePersonaList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypePersona, name: "member"))
    ImpactRiskList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    InvalidPaginationToken.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidPaginationToken.type = Types::InvalidPaginationToken
    LifecycleEvent.add_member(:lifecycle_event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "lifecycleEventType"))
    LifecycleEvent.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "date"))
    LifecycleEvent.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "regions"))
    LifecycleEvent.add_member(:impact_risks, ::Smithy::Schema::Shapes::MemberShape.new(target: ImpactRiskList, name: "impactRisks"))
    LifecycleEvent.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    LifecycleEvent.type = Types::LifecycleEvent
    LifecycleEventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleEvent, name: "member"))
    OrganizationAccountIdsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member"))
    OrganizationAffectedEntitiesErrorItem.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "awsAccountId"))
    OrganizationAffectedEntitiesErrorItem.add_member(:event_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventArn, name: "eventArn"))
    OrganizationAffectedEntitiesErrorItem.add_member(:error_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "errorName"))
    OrganizationAffectedEntitiesErrorItem.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "errorMessage"))
    OrganizationAffectedEntitiesErrorItem.type = Types::OrganizationAffectedEntitiesErrorItem
    OrganizationEntityAccountFiltersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityAccountFilter, name: "member"))
    OrganizationEntityAggregate.add_member(:event_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventArn, name: "eventArn"))
    OrganizationEntityAggregate.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "count", traits: {"smithy.api#default" => 0}))
    OrganizationEntityAggregate.add_member(:statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatuses, name: "statuses"))
    OrganizationEntityAggregate.add_member(:accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountEntityAggregatesList, name: "accounts"))
    OrganizationEntityAggregate.type = Types::OrganizationEntityAggregate
    OrganizationEntityAggregatesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationEntityAggregate, name: "member"))
    OrganizationEntityFiltersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventAccountFilter, name: "member"))
    OrganizationEvent.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventArn, name: "arn"))
    OrganizationEvent.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "service"))
    OrganizationEvent.add_member(:event_type_code, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeCode, name: "eventTypeCode"))
    OrganizationEvent.add_member(:event_type_category, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeCategory, name: "eventTypeCategory"))
    OrganizationEvent.add_member(:event_scope_code, ::Smithy::Schema::Shapes::MemberShape.new(target: EventScopeCode, name: "eventScopeCode"))
    OrganizationEvent.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "region"))
    OrganizationEvent.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime"))
    OrganizationEvent.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime"))
    OrganizationEvent.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedTime"))
    OrganizationEvent.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: EventStatusCode, name: "statusCode"))
    OrganizationEvent.add_member(:actionability, ::Smithy::Schema::Shapes::MemberShape.new(target: EventActionability, name: "actionability"))
    OrganizationEvent.add_member(:personas, ::Smithy::Schema::Shapes::MemberShape.new(target: EventPersonaList, name: "personas"))
    OrganizationEvent.type = Types::OrganizationEvent
    OrganizationEventArnsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventArn, name: "member"))
    OrganizationEventDetailFiltersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventAccountFilter, name: "member"))
    OrganizationEventDetails.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "awsAccountId"))
    OrganizationEventDetails.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: Event, name: "event"))
    OrganizationEventDetails.add_member(:event_description, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDescription, name: "eventDescription"))
    OrganizationEventDetails.add_member(:event_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: EventMetadata, name: "eventMetadata"))
    OrganizationEventDetails.type = Types::OrganizationEventDetails
    OrganizationEventDetailsErrorItem.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "awsAccountId"))
    OrganizationEventDetailsErrorItem.add_member(:event_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventArn, name: "eventArn"))
    OrganizationEventDetailsErrorItem.add_member(:error_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "errorName"))
    OrganizationEventDetailsErrorItem.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "errorMessage"))
    OrganizationEventDetailsErrorItem.type = Types::OrganizationEventDetailsErrorItem
    OrganizationEventFilter.add_member(:actionabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: EventActionabilityList, name: "actionabilities"))
    OrganizationEventFilter.add_member(:event_type_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeList2, name: "eventTypeCodes"))
    OrganizationEventFilter.add_member(:aws_account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountIdsList, name: "awsAccountIds"))
    OrganizationEventFilter.add_member(:services, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceList, name: "services"))
    OrganizationEventFilter.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "regions"))
    OrganizationEventFilter.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeRange, name: "startTime"))
    OrganizationEventFilter.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeRange, name: "endTime"))
    OrganizationEventFilter.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeRange, name: "lastUpdatedTime"))
    OrganizationEventFilter.add_member(:entity_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityArnList, name: "entityArns"))
    OrganizationEventFilter.add_member(:entity_values, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityValueList, name: "entityValues"))
    OrganizationEventFilter.add_member(:event_type_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeCategoryList2, name: "eventTypeCategories"))
    OrganizationEventFilter.add_member(:event_status_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: EventStatusCodeList, name: "eventStatusCodes"))
    OrganizationEventFilter.add_member(:personas, ::Smithy::Schema::Shapes::MemberShape.new(target: EventPersonaList, name: "personas"))
    OrganizationEventFilter.type = Types::OrganizationEventFilter
    OrganizationEventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationEvent, name: "member"))
    ServiceLifecycle.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "service"))
    ServiceLifecycle.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "version"))
    ServiceLifecycle.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "title"))
    ServiceLifecycle.add_member(:recommended_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "recommendedVersion"))
    ServiceLifecycle.add_member(:lifecycle_events, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleEventList, name: "lifecycleEvents"))
    ServiceLifecycle.type = Types::ServiceLifecycle
    ServiceLifecycleFilter.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "service"))
    ServiceLifecycleFilter.type = Types::ServiceLifecycleFilter
    ServiceLifecycleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLifecycle, name: "member"))
    UnsupportedLocale.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    UnsupportedLocale.type = Types::UnsupportedLocale
    AffectedAccountsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member"))
    AvailabilityZones.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "member"))
    AwsAccountIdsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member"))
    DateTimeRangeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeRange, name: "member"))
    EntityArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityArn, name: "member"))
    EntityMetadata.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityMetadataKey, name: "key"))
    EntityMetadata.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityMetadataValue, name: "value"))
    EntityStatusCode.add_member(:impaired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPAIRED", traits: {"smithy.api#enumValue" => "IMPAIRED"}))
    EntityStatusCode.add_member(:unimpaired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNIMPAIRED", traits: {"smithy.api#enumValue" => "UNIMPAIRED"}))
    EntityStatusCode.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    EntityStatusCode.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    EntityStatusCode.add_member(:resolved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOLVED", traits: {"smithy.api#enumValue" => "RESOLVED"}))
    EntityStatusCodeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatusCode, name: "member"))
    EntityStatuses.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatusCode, name: "key"))
    EntityStatuses.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "value"))
    EntityValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityValue, name: "member"))
    EventAggregateField.add_member(:event_type_category, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EventTypeCategory", traits: {"smithy.api#enumValue" => "eventTypeCategory"}))
    EventArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventArn, name: "member"))
    EventMetadata.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataKey, name: "key"))
    EventMetadata.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataValue, name: "value"))
    EventScopeCode.add_member(:public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC", traits: {"smithy.api#enumValue" => "PUBLIC"}))
    EventScopeCode.add_member(:account_specific, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_SPECIFIC", traits: {"smithy.api#enumValue" => "ACCOUNT_SPECIFIC"}))
    EventScopeCode.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    EventStatusCode.add_member(:open, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPEN", traits: {"smithy.api#enumValue" => "open"}))
    EventStatusCode.add_member(:closed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOSED", traits: {"smithy.api#enumValue" => "closed"}))
    EventStatusCode.add_member(:upcoming, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPCOMING", traits: {"smithy.api#enumValue" => "upcoming"}))
    EventStatusCodeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventStatusCode, name: "member"))
    EventTypeCategory.add_member(:issue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISSUE", traits: {"smithy.api#enumValue" => "issue"}))
    EventTypeCategory.add_member(:account_notification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_NOTIFICATION", traits: {"smithy.api#enumValue" => "accountNotification"}))
    EventTypeCategory.add_member(:scheduled_change, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULED_CHANGE", traits: {"smithy.api#enumValue" => "scheduledChange"}))
    EventTypeCategory.add_member(:investigation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVESTIGATION", traits: {"smithy.api#enumValue" => "investigation"}))
    EventTypeCategoryList2.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeCategory, name: "member"))
    EventTypeList2.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventType2, name: "member"))
    RegionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "member"))
    ServiceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "member"))
    TagFilter.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagSet, name: "member"))
    TagSet.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagSet.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))

    AWSHealth20160804 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.health#AWSHealth_20160804"
      service.name = "AWSHealth20160804"
      service.version = "2016-08-04"
      service.traits = {"aws.api#service" => {"sdkId" => "Health", "arnNamespace" => "health", "cloudFormationName" => "Health", "cloudTrailEventSource" => "health.amazonaws.com", "endpointPrefix" => "health"}, "aws.auth#sigv4" => {"name" => "health"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Health APIs and Notifications", "smithy.protocols#rpcv2Cbor" => {}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-us-gov"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-iso"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-iso-b"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-iso-e"]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-iso-f"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-cn"]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}, {"fn" => "stringEquals", "argv" => [{"ref" => "Region"}, "aws-global"]}, {"fn" => "stringEquals", "argv" => [{"ref" => "Region"}, "aws-cn-global"]}], "results" => [{"conditions" => [], "endpoint" => {"url" => "https://health-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://health.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://health-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://global.health.amazonaws.com", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "health", "signingRegion" => "us-east-1"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://global.health.amazonaws.com.cn", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "health", "signingRegion" => "cn-northwest-1"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://health.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 24, "nodes" => "/////wAAAAH/////AAAAAAAAABYAAAADAAAAAQAAAAQF9eENAAAAAgAAAAUF9eENAAAAAwAAABIAAAAGAAAABAAAAA4AAAAHAAAABQAAAA4AAAAIAAAABgAAAA4AAAAJAAAABwAAAA4AAAAKAAAACAAAAA4AAAALAAAACgAAAA4AAAAMAAAACwAAAA4AAAANAAAADAX14QEF9eECAAAADAAAABEAAAAPAAAADgX14QoAAAAQAAAADwX14QsF9eEMAAAADQX14QcF9eEIAAAACQAAABQAAAATAAAADAX14QYF9eEJAAAADAAAABUF9eECAAAADQX14QEF9eEGAAAAAwAAABgAAAAXAAAADAX14QMF9eEFAAAADAX14QMF9eEE"}}
      service.add_operation(:describe_affected_accounts_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.health#DescribeAffectedAccountsForOrganization"
        operation.name = "DescribeAffectedAccountsForOrganization"
        operation.input = DescribeAffectedAccountsForOrganizationRequest
        operation.output = DescribeAffectedAccountsForOrganizationResponse
        operation.errors << InvalidPaginationToken
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::DescribeAffectedAccountsForOrganization.new
      end)
      service.add_operation(:describe_affected_entities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.health#DescribeAffectedEntities"
        operation.name = "DescribeAffectedEntities"
        operation.input = DescribeAffectedEntitiesRequest
        operation.output = DescribeAffectedEntitiesResponse
        operation.errors << InvalidPaginationToken
        operation.errors << UnsupportedLocale
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::DescribeAffectedEntities.new
      end)
      service.add_operation(:describe_affected_entities_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.health#DescribeAffectedEntitiesForOrganization"
        operation.name = "DescribeAffectedEntitiesForOrganization"
        operation.input = DescribeAffectedEntitiesForOrganizationRequest
        operation.output = DescribeAffectedEntitiesForOrganizationResponse
        operation.errors << InvalidPaginationToken
        operation.errors << UnsupportedLocale
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::DescribeAffectedEntitiesForOrganization.new
      end)
      service.add_operation(:describe_entity_aggregates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.health#DescribeEntityAggregates"
        operation.name = "DescribeEntityAggregates"
        operation.input = DescribeEntityAggregatesRequest
        operation.output = DescribeEntityAggregatesResponse
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_entity_aggregates_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.health#DescribeEntityAggregatesForOrganization"
        operation.name = "DescribeEntityAggregatesForOrganization"
        operation.input = DescribeEntityAggregatesForOrganizationRequest
        operation.output = DescribeEntityAggregatesForOrganizationResponse
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_event_aggregates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.health#DescribeEventAggregates"
        operation.name = "DescribeEventAggregates"
        operation.input = DescribeEventAggregatesRequest
        operation.output = DescribeEventAggregatesResponse
        operation.errors << InvalidPaginationToken
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::DescribeEventAggregates.new
      end)
      service.add_operation(:describe_event_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.health#DescribeEventDetails"
        operation.name = "DescribeEventDetails"
        operation.input = DescribeEventDetailsRequest
        operation.output = DescribeEventDetailsResponse
        operation.errors << UnsupportedLocale
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_event_details_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.health#DescribeEventDetailsForOrganization"
        operation.name = "DescribeEventDetailsForOrganization"
        operation.input = DescribeEventDetailsForOrganizationRequest
        operation.output = DescribeEventDetailsForOrganizationResponse
        operation.errors << UnsupportedLocale
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_event_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.health#DescribeEventTypes"
        operation.name = "DescribeEventTypes"
        operation.input = DescribeEventTypesRequest
        operation.output = DescribeEventTypesResponse
        operation.errors << InvalidPaginationToken
        operation.errors << UnsupportedLocale
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::DescribeEventTypes.new
      end)
      service.add_operation(:describe_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.health#DescribeEvents"
        operation.name = "DescribeEvents"
        operation.input = DescribeEventsRequest
        operation.output = DescribeEventsResponse
        operation.errors << InvalidPaginationToken
        operation.errors << UnsupportedLocale
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::DescribeEvents.new
      end)
      service.add_operation(:describe_events_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.health#DescribeEventsForOrganization"
        operation.name = "DescribeEventsForOrganization"
        operation.input = DescribeEventsForOrganizationRequest
        operation.output = DescribeEventsForOrganizationResponse
        operation.errors << InvalidPaginationToken
        operation.errors << UnsupportedLocale
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::DescribeEventsForOrganization.new
      end)
      service.add_operation(:describe_health_service_status_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.health#DescribeHealthServiceStatusForOrganization"
        operation.name = "DescribeHealthServiceStatusForOrganization"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = DescribeHealthServiceStatusForOrganizationResponse
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_service_lifecycle, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.health#DescribeServiceLifecycle"
        operation.name = "DescribeServiceLifecycle"
        operation.input = DescribeServiceLifecycleRequest
        operation.output = DescribeServiceLifecycleResponse
        operation.errors << InvalidPaginationToken
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::DescribeServiceLifecycle.new
      end)
      service.add_operation(:disable_health_service_access_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.health#DisableHealthServiceAccessForOrganization"
        operation.name = "DisableHealthServiceAccessForOrganization"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:enable_health_service_access_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.health#EnableHealthServiceAccessForOrganization"
        operation.name = "EnableHealthServiceAccessForOrganization"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
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
